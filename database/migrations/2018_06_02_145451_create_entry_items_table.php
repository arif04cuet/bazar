<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEntryItemsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('entry_items', function (Blueprint $table) {
            $table->increments('id');
            

            $table->float('unit_price');
            $table->float('amount');
            $table->float('total');

            $table->integer('product_id')->unsigned();
            $table->foreign('product_id')->references('id')->on('products');
            
            $table->integer('bazar_id')->unsigned();
            $table->foreign('bazar_id')->references('id')->on('bazars');

            $table->integer('entry_id')->unsigned();
            $table->foreign('entry_id')->references('id')->on('entries');

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('entry_items');
    }
}