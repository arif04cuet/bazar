<?php

namespace App;


use Illuminate\Database\Eloquent\Model;

class EntryItem extends Model
{
    protected $fillable = ['product_id', 'unit_price', 'amount', 'total', 'bazar_id', 'entry_id'];
}