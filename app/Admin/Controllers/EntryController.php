<?php

namespace App\Admin\Controllers;

use App\Entry;

use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;
use App\Product;
use App\Bazar;

class EntryController extends Controller
{
    use ModelForm;

    /**
     * Index interface.
     *
     * @return Content
     */
    public function index()
    {
        return Admin::content(function (Content $content) {

            $content->header('Entry Managements');
            $content->description('description');

            $content->body($this->grid());
        });
    }

    /**
     * Edit interface.
     *
     * @param $id
     * @return Content
     */
    public function edit($id)
    {
        return Admin::content(function (Content $content) use ($id) {

            $content->header('Entry');

            $content->body($this->form()->edit($id));
        });
    }

    /**
     * Create interface.
     *
     * @return Content
     */
    public function create()
    {
        return Admin::content(function (Content $content) {

            $content->header('Entry');

            $content->body($this->form());
        });
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Admin::grid(Entry::class, function (Grid $grid) {

            if(!Admin::user()->isAdministrator())
                $grid->model()->where('user_id',Admin::user()->id);
            
            $grid->model()->orderBy('id', 'desc');
            $grid->id('ID')->sortable();
            $grid->entry_date();
            $grid->items('Item Purchased')->display(function ($items) {
                $count = count($items);
                return "<span class='label label-success'>{$count}</span>";
            });
            $grid->column('total_sum','Total Spent ( TK )')->display(function () {
                $sum = collect($this->items)->sum('total');
                return "<span class='label label-success'>{$sum}</span>";
            });

            $grid->filter(function($filter){

                $filter->disableIdFilter();
                $filter->between('entry_date', 'Entry Date Range')->date();
                //$filter->equal('entry_date','By Month')->month();
            
            });

            
        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Admin::form(Entry::class, function (Form $form) {
           
            Admin::css('css/custom.css');
            Admin::js('js/custom.js');
            
        
            $form->date('entry_date')->default(now())->rules('required');
            $form->hidden('user_id')->value(Admin::user()->id);
            $form->hasmanyinline('items','Add Items', function (Form\NestedForm $form) {

                // get bazar list
                $user = Admin::user();
                $latitude = $user->latitude;
                $longitude = $user->longitude;
                $no_bazar = config('app.user_bazar_count');
                $query = Bazar::distance($latitude, $longitude);
                $bazars = $query->limit($no_bazar)->orderBy('distance', 'ASC')->get();

                $form->select('product_id','Product')->options(Product::all()->pluck('title', 'id'))->rules('required')->setWidth(12,12);
                $form->number('unit_price')->rules('required')->setWidth(7,7);
                $form->number('amount')->rules('required')->setWidth(7,7);
                $form->select('bazar_id','Bazar')->options($bazars->pluck('name', 'id'))->rules('required')->setWidth(12,12);
                $form->display('total_html','Total')->placeholder(' ')->attribute('readonly','readonly')->setWidth(7,7);
                $form->hidden('total')->attribute('id','total');
                
            })->rules('required');


             //before save
             $form->saving(function(Form $form){
                
            });


        });
    }
}