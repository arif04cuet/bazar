<?php

namespace App;


use Illuminate\Database\Eloquent\Model;

class Entry extends Model
{

    public function items()
    {
        return $this->hasMany('App\EntryItem');
    }

    public function user()
    {
        return $this->belongsTo('App\User');
    }


}