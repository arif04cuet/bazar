<?php

namespace App;

use Carbon\Carbon;
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

    public static function getMonthlyExpenseByUser($user_id)
    {
        return self::join('entry_items', 'entries.id', '=', 'entry_items.entry_id')
            ->where('entries.user_id', $user_id)
            ->get()
            ->groupBy(function ($d) {
                return Carbon::parse($d->created_at)->format('m');
            });

    }
}