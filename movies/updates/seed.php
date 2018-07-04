<?php namespace Grcote7\Movies\Updates;

use Grcote7\Movies\Models\Movie;
use October\Rain\Database\Updates\Seeder;
use Faker;

class SeedAllTables extends Seeder {

  public function run() {

    $faker = Faker\Factory::create();


    for ($i = 0; $i < 100; $i++) {

      $title = $faker->sentence($nbWords = 3, $variableNbWords = TRUE);

      Movie::create(
        [
          'name'        => $title,
          'slug'        => str_slug($title, '-'),
          'description' => $faker->paragraph($nbSentences = 3, $variableNbSentences = TRUE),
          'year'        => $faker->year($max = 'now')
        ]
      );

    }
  }
}

