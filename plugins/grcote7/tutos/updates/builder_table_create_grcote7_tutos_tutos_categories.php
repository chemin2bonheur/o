<?php namespace Grcote7\Tutos\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateGrcote7TutosTutosCategories extends Migration
{
    public function up()
    {
        Schema::create('grcote7_tutos_tutos_categories', function($table)
        {
            $table->engine = 'InnoDB';
            $table->integer('tuto_id');
            $table->integer('categorie_id');
            $table->primary(['tuto_id','categorie_id']);
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('grcote7_tutos_tutos_categories');
    }
}
