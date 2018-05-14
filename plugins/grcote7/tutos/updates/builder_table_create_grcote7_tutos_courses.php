<?php namespace Grcote7\Tutos\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateGrcote7TutosCourses extends Migration
{
    public function up()
    {
        Schema::create('grcote7_tutos_courses', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->string('title');
            $table->text('description')->nullable();
            $table->string('slug')->nullable();
            $table->time('duration')->nullable();
            $table->integer('tuto_id')->nullable();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('grcote7_tutos_courses');
    }
}
