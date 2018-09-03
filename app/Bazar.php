<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Malhal\Geographical\Geographical;

class Bazar extends Model
{
    use Geographical;
    protected static $kilometers = true;
}