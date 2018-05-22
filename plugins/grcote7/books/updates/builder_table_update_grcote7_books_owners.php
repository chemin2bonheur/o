<?php namespace Grcote7\Books\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateGrcote7BooksOwners extends Migration
{
    public function up()
    {
        Schema::table('grcote7_books_owners', function($table)
        {
            $table->text('slug');
        });
    }
    
    public function down()
    {
        Schema::table('grcote7_books_owners', function($table)
        {
            $table->dropColumn('slug');
        });
    }
}
