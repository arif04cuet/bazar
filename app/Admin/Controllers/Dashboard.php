<?php

namespace App\Admin\Controllers;

use Encore\Admin\Facades\Admin;
use App\Charts\MonthlyExpense;
use App\Entry;
use App\User;

class Dashboard
{
    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public static function title()
    {
        return view('admin::dashboard.title');
    }

    public static function entries($no = 10)
    {
        $items = Entry::where('user_id', Admin::user()->id)->orderBy('id', 'desc')->take($no)->get();
        return view('admin.dashboard.entries', compact('items'));
    }

    public static function barchart($mo = 6)
    {
        $dataset = [];

        $months = User::getMonthlyExpenseByUser(Admin::user()->id);

        foreach ($months->toArray() as $month => $items) {
            $key = date('F', mktime(0, 0, 0, $month, 10));
            $dataset[$key] = collect($items)->sum('total');
        }

        $chart = new MonthlyExpense();
        $chart->labels(array_keys($dataset));
        $chart->dataset('Monthly Expense', 'bar', array_values($dataset));
        return view('admin.dashboard.barchart', compact('chart'));
    }


    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public static function environment()
    {
        $envs = [
            ['name' => 'PHP version', 'value' => 'PHP/' . PHP_VERSION],
            ['name' => 'Laravel version', 'value' => app()->version()],
            ['name' => 'CGI', 'value' => php_sapi_name()],
            ['name' => 'Uname', 'value' => php_uname()],
            ['name' => 'Server', 'value' => array_get($_SERVER, 'SERVER_SOFTWARE')],

            ['name' => 'Cache driver', 'value' => config('cache.default')],
            ['name' => 'Session driver', 'value' => config('session.driver')],
            ['name' => 'Queue driver', 'value' => config('queue.default')],

            ['name' => 'Timezone', 'value' => config('app.timezone')],
            ['name' => 'Locale', 'value' => config('app.locale')],
            ['name' => 'Env', 'value' => config('app.env')],
            ['name' => 'URL', 'value' => config('app.url')],
        ];

        return view('admin::dashboard.environment', compact('envs'));
    }


}