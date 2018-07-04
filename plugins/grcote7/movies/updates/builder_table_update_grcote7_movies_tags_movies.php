<?php namespace Grcote7\Movies\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateGrcote7MoviesTagsMovies extends Migration
{
    public function up()
    {
        Schema::table('grcote7_movies_tags_movies', function($table)
        {
            $table->primary(['movie_id','tag_id']);
        });
    }
    
    public function down()
    {
        Schema::table('grcote7_movies_tags_movies', function($table)
        {
            $table->dropPrimary(['movie_id','tag_id']);
        });
    }
}
