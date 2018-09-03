<?php

use Illuminate\Routing\Router;

Admin::registerAuthRoutes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {

    $router->get('/', 'HomeController@index');
    
    
    $router->resource('/bazars', 'BazarController');
    $router->resource('/products', 'ProductController');
    $router->resource('/entries', 'EntryController');
    $router->resource('/units', 'UnitController');
    $router->resource('/auth/users', 'UserController');

});