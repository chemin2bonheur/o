<?php namespace momo\Movies\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateMomoMoviesGenres extends Migration
{
    public function up()
    {
        Schema::create('momo_movies_genres', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->string('genre_title');
            $table->string('slug');
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('momo_movies_genres');
    }
}
