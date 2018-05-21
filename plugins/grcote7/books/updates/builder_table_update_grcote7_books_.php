<?php namespace Grcote7\Books\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateGrcote7Books extends Migration
{
    public function up()
    {
        Schema::table('grcote7_books_', function($table)
        {
            $table->renameColumn('owner', 'owner_id');
        });
    }
    
    public function down()
    {
        Schema::table('grcote7_books_', function($table)
        {
            $table->renameColumn('owner_id', 'owner');
        });
    }
}
