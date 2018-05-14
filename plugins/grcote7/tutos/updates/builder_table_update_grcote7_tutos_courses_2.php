<?php namespace Grcote7\Tutos\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateGrcote7TutosCourses2 extends Migration
{
    public function up()
    {
        Schema::table('grcote7_tutos_courses', function($table)
        {
            $table->text('notes')->nullable();
            $table->smallInteger('mastery')->nullable()->default(0);
            $table->string('title')->change();
            $table->string('slug')->change();
            $table->string('url')->change();
        });
    }
    
    public function down()
    {
        Schema::table('grcote7_tutos_courses', function($table)
        {
            $table->dropColumn('notes');
            $table->dropColumn('mastery');
            $table->string('title', 191)->change();
            $table->string('slug', 191)->change();
            $table->string('url', 191)->change();
        });
    }
}
