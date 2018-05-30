<?php namespace momo\Movies\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateMomoMovies2 extends Migration
{
    public function up()
    {
        Schema::create('momo_movies_', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->string('name')->nullable();
            $table->text('description')->nullable();
            $table->integer('year')->nullable();
            $table->string('slug')->nullable();
            $table->text('actors')->nullable();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('momo_movies_');
    }
}
