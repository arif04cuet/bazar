<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use App\EntryItem;
use Carbon\Carbon;

class User extends Authenticatable
{
    use Notifiable;


    protected $table = 'admin_users';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password', 'username', 'latitude', 'longitude'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];


    public function entries()
    {
        return $this->hasMany('App\Entry');
    }

    public static function getMonthlyExpenseByUser($user_id, $month = 6)
    {
        return EntryItem::join('entries', 'entries.id', '=', 'entry_items.entry_id')
            ->where('entries.user_id', $user_id)
            ->orderBy('entry_items.created_at', 'desc')
            ->get(['entry_items.id', 'total', 'entry_items.created_at', 'user_id'])
            ->take($month)
            ->groupBy(function ($d) {
                return Carbon::parse($d->created_at)->format('m');
            });

    }

}