<?php namespace Grcote7\Tutos\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateGrcote7TutosCategories extends Migration
{
    public function up()
    {
        Schema::create('grcote7_tutos_categories', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->string('name');
            $table->string('slug');
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('grcote7_tutos_categories');
    }
}
