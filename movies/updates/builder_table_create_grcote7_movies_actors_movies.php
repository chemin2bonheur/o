<?php namespace Grcote7\Movies\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateGrcote7MoviesActorsMovies extends Migration
{
    public function up()
    {
        Schema::create('grcote7_movies_actors_movies', function($table)
        {
            $table->engine = 'InnoDB';
            $table->integer('actor_id')->unsigned();
            $table->integer('movie_id')->unsigned();
            $table->primary(['actor_id','movie_id']);
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('grcote7_movies_actors_movies');
    }
}
