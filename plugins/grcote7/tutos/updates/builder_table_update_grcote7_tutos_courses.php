<?php namespace Grcote7\Tutos\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateGrcote7TutosCourses extends Migration
{
    public function up()
    {
        Schema::table('grcote7_tutos_courses', function($table)
        {
            $table->string('url')->nullable();
            $table->string('title')->change();
            $table->string('slug')->change();
        });
    }
    
    public function down()
    {
        Schema::table('grcote7_tutos_courses', function($table)
        {
            $table->dropColumn('url');
            $table->string('title', 191)->change();
            $table->string('slug', 191)->change();
        });
    }
}
