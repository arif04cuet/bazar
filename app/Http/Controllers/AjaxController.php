<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;

class AjaxController extends Controller
{
    public function product($id)
    {
        
        $product = Product::find($id);
        $product->unit->name;
        return response()->json($product);
    }
}