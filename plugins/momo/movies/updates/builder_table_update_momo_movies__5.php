<?php namespace momo\Movies\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateMomoMovies5 extends Migration
{
    public function up()
    {
        Schema::table('momo_movies_', function($table)
        {
            $table->dropColumn('actors');
        });
    }
    
    public function down()
    {
        Schema::table('momo_movies_', function($table)
        {
            $table->text('actors')->nullable();
        });
    }
}
