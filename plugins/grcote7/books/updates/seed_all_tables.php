<?php namespace Grcote7\Books\Updates;

use Grcote7\Books\Models\Book;
use Grcote7\Books\Models\Owner;
use Illuminate\Support\Facades\DB;
use October\Rain\Database\Updates\Seeder;
use October\Rain\Support\Str;

class SeedAllTables extends Seeder {

  public function run() {

    trace_log('Table books re-initialized');
    Db::table('grcote7_books_')->truncate();

    $books = [
      [
        'title'       => '20 000 lieues sous les mers',
        'description' => '<p>Un voyage extraordinaire...</p>',
        'owner_id'    => 1
      ],
      [
        'title'       => 'Le Monde des A',
        'description' => '<p>SF de référence</p>',
        'owner_id'    => 2
      ],
      [
        'title'       => 'De la Terre à la lune',
        'description' => '<p>Une autre voyage extraordinaire</p>',
        'owner_id'    => 1
      ],

    ];

    foreach ($books as $book) {
      Book::firstOrCreate(
        [
          'title'       => $book['title'],
          'description' => $book['description'],
          'slug'        => str::slug($book['title']),
          'published'   => 1,
          'owner_id'    => $book['owner_id']
        ]);
    }


    trace_log('Table owners re-initialized');
    Db::table('grcote7_books_owners')->truncate();

    Owner::firstOrCreate(['firstname' => 'lioNel', 'lastname' => 'CÔte', 'parr' => 0]);
    Owner::firstOrCreate(['firstname' => 'Lio181', 'lastname' => 'Yahoo', 'parr' => 1]);
    Owner::firstOrCreate(['firstname' => 'NonInclus', 'lastname' => '', 'parr' => 0]);
    Owner::firstOrCreate(['firstname' => 'Michel', 'lastname' => 'COLUCCI', 'parr' => 2]);
    Owner::firstOrCreate(['firstname' => 'Pierre', 'lastname' => 'RICHARD', 'parr' => 3]);
    Owner::firstOrCreate(['firstname' => 'PieRre', 'lastname' => 'palmAde', 'parr' => 3]);
  }

}
