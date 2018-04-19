<?php namespace Grcote7\Movies\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateGrcote7Movies extends Migration
{
    public function up()
    {
        Schema::create('grcote7_movies_', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->string('name');
            $table->text('description')->nullable();
            $table->integer('year');
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('grcote7_movies_');
    }
}
