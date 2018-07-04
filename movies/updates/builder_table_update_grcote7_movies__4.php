<?php namespace Grcote7\Movies\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateGrcote7Movies4 extends Migration
{
    public function up()
    {
        Schema::table('grcote7_movies_', function($table)
        {
            $table->timestamp('created_at')->nullable();
            $table->boolean('published')->nullable();
        });
    }
    
    public function down()
    {
        Schema::table('grcote7_movies_', function($table)
        {
            $table->dropColumn('created_at');
            $table->dropColumn('published');
        });
    }
}
