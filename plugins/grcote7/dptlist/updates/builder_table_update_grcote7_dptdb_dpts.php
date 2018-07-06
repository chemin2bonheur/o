<?php namespace Grcote7\Dptdb\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateGrcote7DptdbDpts extends Migration
{
    public function up()
    {
        Schema::table('grcote7_dptlist_dpts', function($table)
        {
            $table->string('nom', 255)->nullable();
            $table->string('slug', 255)->nullable();
            $table->date('update_at');
            $table->date('created_at');
            $table->renameColumn('departement_id', 'id');
            $table->renameColumn('departement_code', 'code');
            $table->dropColumn('departement_nom');
            $table->dropColumn('departement_nom_uppercase');
            $table->dropColumn('departement_slug');
            $table->dropColumn('departement_nom_soundex');
        });
    }
    
    public function down()
    {
        Schema::table('grcote7_dptlist_dpts', function($table)
        {
            $table->dropColumn('nom');
            $table->dropColumn('slug');
            $table->dropColumn('update_at');
            $table->dropColumn('created_at');
            $table->renameColumn('id', 'departement_id');
            $table->renameColumn('code', 'departement_code');
            $table->string('departement_nom', 255)->nullable();
            $table->string('departement_nom_uppercase', 255)->nullable();
            $table->string('departement_slug', 255)->nullable();
            $table->string('departement_nom_soundex', 20)->nullable();
        });
    }
}
