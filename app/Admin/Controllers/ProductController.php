<?php

namespace App\Admin\Controllers;

use App\Product;

use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;
use Encore\Admin\Widgets\Box;
use App\Unit;

class ProductController extends Controller
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

            $content->header('Products');
            $content->description(trans('admin.list'));

            $content->row(function ($row) {
                $row->column(6, Product::tree(function($tree){
                    $tree->disableCreate();
                }));

                $row->column(6, function ($column) {
                    $form = new \Encore\Admin\Widgets\Form();
                    $form->action(admin_base_path('products'));

                    $form->select('parent_id', trans('admin.parent_id'))->options(Product::selectOptions());
                    $form->text('title', trans('admin.title'))->rules('required');
                    $form->select('unit_id','Unit')->options(Unit::all()->pluck('name', 'id'))->rules('required');
                    $form->number('default_price','Default Price');
                    $form->switch('active')->default(1);
                    $form->hidden('_token')->default(csrf_token());

                    $column->append((new Box(trans('admin.new'), $form))->style('success'));
                });
            });
            

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

            $content->header('Product');
            

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

            $content->header('header');
            $content->description('description');

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
        return Admin::grid(Product::class, function (Grid $grid) {

            $grid->id('ID')->sortable();

            $grid->created_at();
            $grid->updated_at();
        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Admin::form(Product::class, function (Form $form) {

            $form->select('parent_id')->options(Product::selectOptions());
            $form->text('title','Name');
            $form->select('unit_id','Unit')->options(Unit::all()->pluck('name', 'id'))->rules('required');
            $form->number('default_price','Default Price');
            $form->switch('active');

        });
    }
}