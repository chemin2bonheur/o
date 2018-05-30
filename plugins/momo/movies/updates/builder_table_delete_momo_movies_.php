<?php namespace momo\Movies\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableDeleteMomoMovies extends Migration
{
    public function up()
    {
        Schema::dropIfExists('momo_movies_');
    }
    
    public function down()
    {
        Schema::create('momo_movies_', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->string('name', 191);
            $table->text('description')->nullable();
            $table->integer('year')->nullable();
            $table->string('slug', 191)->nullable();
            $table->text('actors')->nullable();
        });
    }
}
