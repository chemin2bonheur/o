<?php namespace momo\Movies\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateMomoMoviesMoviesGenres extends Migration
{
    public function up()
    {
        Schema::table('momo_movies_movies_genres', function($table)
        {
            $table->dropPrimary(['movie_id','genre_d']);
            $table->renameColumn('genre_d', 'genre_id');
            $table->primary(['movie_id','genre_id']);
        });
    }
    
    public function down()
    {
        Schema::table('momo_movies_movies_genres', function($table)
        {
            $table->dropPrimary(['movie_id','genre_id']);
            $table->renameColumn('genre_id', 'genre_d');
            $table->primary(['movie_id','genre_d']);
        });
    }
}
