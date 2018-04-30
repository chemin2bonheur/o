<?php

use Grcote7\Movies\Models\Actor;

//use Grcote7\Movies\Models\Movie;

Route::get('seed-actors', function () {
//  return 'Hello World !';
//  return Movie::orderBy('year','desc')->paginate(2);

  $faker = Faker\Factory::create();

  for ($i = 0; $i < 100; $i++) {

    Actor::create(
      [
        'name'     => $faker->firstName,
        'lastname' => $faker->lastName
      ]
    );
  }

  return 'Actors created!';

});
