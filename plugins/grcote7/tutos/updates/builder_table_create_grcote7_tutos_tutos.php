<?php namespace Grcote7\Tutos\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateGrcote7TutosTutos extends Migration
{
    public function up()
    {
        Schema::create('grcote7_tutos_tutos', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->string('title');
            $table->string('author')->nullable();
            $table->string('url')->nullable();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('grcote7_tutos_tutos');
    }
}
