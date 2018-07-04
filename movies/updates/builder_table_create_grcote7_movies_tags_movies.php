<?php namespace Grcote7\Movies\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateGrcote7MoviesTagsMovies extends Migration
{
    public function up()
    {
        Schema::create('grcote7_movies_tags_movies', function($table)
        {
            $table->engine = 'InnoDB';
            $table->integer('movie_id')->unsigned();
            $table->integer('tag_id')->unsigned();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('grcote7_movies_tags_movies');
    }
}
