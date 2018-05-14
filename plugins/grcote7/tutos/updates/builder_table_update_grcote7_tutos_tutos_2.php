<?php namespace Grcote7\Tutos\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateGrcote7TutosTutos2 extends Migration
{
    public function up()
    {
        Schema::table('grcote7_tutos_tutos', function($table)
        {
            $table->text('slug')->nullable();
        });
    }
    
    public function down()
    {
        Schema::table('grcote7_tutos_tutos', function($table)
        {
            $table->dropColumn('slug');
        });
    }
}
