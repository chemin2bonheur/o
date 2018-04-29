<?php namespace Grcote7\Profile\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class AddNewFields extends Migration {

  public function up() {
    Schema::table('users', function ($table) {
      $table->string('facebook')->nullable();
      $table->text('bio')->nullable();
    });
  }

  public function down() {
    $tabvle->dropDown([
                        'facebook',
                        'bio'
                      ]);
  }

}
