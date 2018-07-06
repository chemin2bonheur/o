<?php namespace Grcote7\Library\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateGrcote7LibraryBooks extends Migration
{
    public function up()
    {
        Schema::create('grcote7_library_books', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->string('title')->nullable();
            $table->string('slug')->nullable();
            $table->string('author')->nullable();
            $table->string('year')->nullable();
            $table->text('short_description')->nullable();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('grcote7_library_books');
    }
}
