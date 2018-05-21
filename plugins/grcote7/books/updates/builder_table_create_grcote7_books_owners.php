<?php namespace Grcote7\Books\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateGrcote7BooksOwners extends Migration
{
    public function up()
    {
        Schema::create('grcote7_books_owners', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->string('firstname');
            $table->string('lastname');
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('grcote7_books_owners');
    }
}
