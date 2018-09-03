<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Entry extends Model
{
    
    public function items(){
        return $this->hasMany('App\EntryItem');
    }

    public function user(){
        return $this->belongsTo('App\User');
    }
    
    public static function getMonthlyExpenseByUser($user_id)
    {
        return self::join('entry_items', 'entries.id', '=', 'entry_items.entry_id')
        ->selectRaw('sum(entry_items.total) total')
        ->where('entries.user_id',$user_id)
        ->groupBy('entries.user_id')
        ->get();
    }
}