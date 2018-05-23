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
    // php artisan plugin:refresh Grcote7.books


    $books = Book::with('owner')->get();

    $this->var = Owner::all()->toNested();
    
    dd($this->var->toArray());



//    $owners = Owner::has('books', '<', 1)->get();
//    $owners = Owner::has('books')->get();

//    dd(Owner::find(2)->books[0]->title);
//    dd(Book::find(2)->owner->firstname);

//    $this->var = '1st title of the second owner (' . Owner::find(2)->lastname . ') : ' . Owner::find(2)->books[0]->title;

//    $book = $books->find(3);

//    $owner = $owners;
//    $owner->save();

//    $this->var = $owners;
//    $book->title = 'De la Terre à la Lune';
//    $book->save();

//    $owner = $owners->find(3);

//    dd($books);
//    dd($firstname);
//    dd($this->var);

//    $this->var = $book->title . ' (' . $book->owner->firstname . ' ' . $book->owner->lastname . ')';

//    $owners = Owner::podium(2)->get();
//    $this->getOwners($owners);

//    $users = User::all();
//    var_dump($users[1]);


//    exit();

//    dd($books);

  }

  protected
  function getOwners($owners) {
    // $owners = Owner::all();
    foreach ($owners as $owner) {
      echo $owner->id . ' - ' . $owner->firstname . ' ' . $owner->lastname . '<br>';
    }
  }

}
