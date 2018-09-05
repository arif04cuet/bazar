<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
 */
use App\User;
use App\Bazar;
use App\Entry;

Route::get('/test', function () {

    return Entry::getMonthlyExpenseByUser(5);

});

Route::redirect('/', '/admin', 301);
Route::redirect('/login', '/admin', 301);

Route::get('/ajax/product/{id}', [
    'as' => 'ajax.product',
    'uses' => 'AjaxController@product',
]);
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');