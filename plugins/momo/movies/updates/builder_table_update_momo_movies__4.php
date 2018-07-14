<?php namespace momo\Movies\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateMomoMovies4 extends Migration
{
    public function up()
    {
        Schema::table('momo_movies_', function($table)
        {
            $table->string('name', 191)->nullable(false)->change();
        });
    }
    
    public function down()
    {
        Schema::table('momo_movies_', function($table)
        {
            $table->string('name', 191)->nullable()->change();
        });
    }
}
