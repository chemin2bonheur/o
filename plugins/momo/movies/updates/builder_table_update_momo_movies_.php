<?php namespace momo\Movies\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateMomoMovies extends Migration
{
    public function up()
    {
        Schema::table('momo_movies_', function($table)
        {
            $table->string('slug')->nullable();
        });
    }
    
    public function down()
    {
        Schema::table('momo_movies_', function($table)
        {
            $table->dropColumn('slug');
        });
    }
}
