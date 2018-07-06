<?php namespace Grcote7\Dptdb\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateGrcote7DptdbDpts extends Migration
{
    public function up()
    {
        Schema::create('grcote7_dptlist_dpts', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->integer('num')->unsigned();
            $table->text('nom');
            $table->date('created_at');
            $table->date('updated_at');
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('grcote7_dptlist_dpts');
    }
}
