<?php
namespace Grcote7\Books\Components;

use Cms\Classes\ComponentBase;
use Grcote7\Books\Models\Book;
use Grcote7\Books\Models\Owner;
use Illuminate\Support\Facades\DB;
use League\Flysystem\Exception;
use October\Rain\Support\Str;
use RainLab\User\Models\User;

class Tests extends ComponentBase {

  public $books, $owners, $var;

  public function componentDetails() {
    return [
      'name'        => 'test',
      'description' => 'A simple component for various tests.'
    ];
  }

  public function onRun() {
    // $this->populateOwners();
    // $this->populateBooks();

    $books = Book::with('owner')->get();

    $owners = Owner::all();

//    $owners = Owner::has('books', '<', 1)->get();
//    $owners = Owner::has('books')->get();

//    dd(Owner::find(2)->books[0]->title);
//    dd(Book::find(2)->owner->firstname);

//    $this->var = '1st title of the second owner (' . Owner::find(2)->lastname . ') : ' . Owner::find(2)->books[0]->title;

    $book = $books->find(3);

    $owner = $owners->first();
    $owner->firstname = 'lionel';
//    $owner->save();


    $history = Owner::find(1)->revision_history;

    foreach ($history as $record) {
      echo $record->field . ' updated ';
      echo 'from ' . $record->old_value;
      echo ' to ' . $record->new_value;
      echo ' at ' . $record->updated_at .
           '<br>';
    }


    $this->var = $owner->toArray();
//    $book->title = 'De la Terre à la Lune';
//    $book->save();

//    $owner = $owners->find(3);

//    dd($books);
//    dd($firstname);
    dd($this->var);

//    $this->var = $book->title . ' (' . $book->owner->firstname . ' ' . $book->owner->lastname . ')';

//    $owners = Owner::podium(2)->get();
//    $this->getOwners($owners);

//    $users = User::all();
//    var_dump($users[1]);


//    exit();

//    dd($books);

  }


  /**
   * Re-initialize table owners and seeds data
   *
   */
  protected function populateOwners() {
    trace_log('Table owners re-initialized');
    Db::table('grcote7_books_owners')->truncate();
    Owner::firstOrCreate(['firstname' => 'lioNel', 'lastname' => 'CÔte']);
    Owner::firstOrCreate(['firstname' => 'Lio181', 'lastname' => 'Yahoo']);
    Owner::firstOrCreate(['firstname' => 'NonInclus', 'lastname' => '']);
    Owner::firstOrCreate(['firstname' => 'Michel', 'lastname' => 'COLUCCI']);
    Owner::firstOrCreate(['firstname' => 'Pierre', 'lastname' => 'RICHARD']);
  }

  public function populateBooks() {
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

  }

  protected function getOwners($owners) {
    // $owners = Owner::all();
    foreach ($owners as $owner) {
      echo $owner->id . ' - ' . $owner->firstname . ' ' . $owner->lastname . '<br>';
    }
  }

}
