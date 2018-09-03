<?php

namespace App\Helpers;
 
use Illuminate\Support\Facades\DB;
 
class Utils {
    /**
     * @param int $user_id User-id
     * 
     * @return string
     */
    public static function get_product($id) {
        $product = DB::table('products')->where('id', $id)->first();
         
        return $product;
    }
}