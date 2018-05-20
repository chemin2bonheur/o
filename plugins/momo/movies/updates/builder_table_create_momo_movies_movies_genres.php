<?php namespace momo\Movies\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateMomoMoviesMoviesGenres extends Migration
{
    public function up()
    {
        Schema::create('momo_movies_movies_genres', function($table)
        {
            $table->engine = 'InnoDB';
            $table->integer('movie_id');
            $table->integer('genre_d');
            $table->primary(['movie_id','genre_d']);
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('momo_movies_movies_genres');
    }
}
