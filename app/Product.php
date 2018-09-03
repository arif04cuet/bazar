<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Encore\Admin\Traits\ModelTree;
use Encore\Admin\Traits\AdminBuilder;

class Product extends Model
{
    use ModelTree,AdminBuilder;

    public function unit()
    {
        return $this->belongsTo('App\Unit');
    }
}