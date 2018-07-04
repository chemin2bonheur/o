<?php namespace Grcote7\Movies\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateGrcote7Movies5 extends Migration
{
    public function up()
    {
        Schema::table('grcote7_movies_', function($table)
        {
            $table->text('techteam')->nullable();
        });
    }
    
    public function down()
    {
        Schema::table('grcote7_movies_', function($table)
        {
            $table->dropColumn('techteam');
        });
    }
}
