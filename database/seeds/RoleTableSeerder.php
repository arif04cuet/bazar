<?php

use Illuminate\Database\Seeder;
use Encore\Admin\Auth\Database\Role;

class RoleTableSeerder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Role::create([
            'name' => 'Consumer',
            'slug' => 'consumer',
        ]);
    }
}