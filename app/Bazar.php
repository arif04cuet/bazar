<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Malhal\Geographical\Geographical;

class Bazar extends Model
{
    use Geographical;
    protected static $kilometers = true;

    public static function closestBazarbyUser($user, $no_bazar = 6)
    {
        $latitude = $user->latitude;
        $longitude = $user->longitude;
        $query = self::distance($latitude, $longitude);
        $bazars = $query->limit($no_bazar)->orderBy('distance', 'ASC')->get();

        return $bazars;
    }
}