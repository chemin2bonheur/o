<?php
namespace Grcote7\Books\Components;

use Cms\Classes\ComponentBase;
use Grcote7\Books\Models\Book;
use Grcote7\Books\Models\Owner;
use Illuminate\Support\Facades\DB;
use League\Flysystem\Exception;

class Tests extends ComponentBase {

  public $books, $owners;

  public function componentDetails() {
    return [
      'name'        => 'test',
      'description' => 'A simple component for various tests.'
    ];
  }

  public function onRun() {

//    $this->populateOwners();

    $this->getOwners();

    exit();
    /*
    foreach($books as $book){
      echo '- '.$book->title.'<br>';
    }
*/
    dd($books);
  }

  /**
   * Re-initialize table owners and seeds data
   *
   */
  protected function populateOwners() {
    Db::table('grcote7_books_owners')->truncate();
    Owner::firstOrCreate(['firstname' => 'Lionel', 'lastname' => 'CÔTE']);
    Owner::firstOrCreate(['firstname' => 'Lio181', 'lastname' => 'YAHOO']);
    Owner::firstOrCreate(['firstname' => 'Michel', 'lastname' => 'COLUCCI']);
    Owner::firstOrCreate(['firstname' => 'Pierre', 'lastname' => 'RICHARD']);
  }

  protected function getOwners() {
    $owners = Owner::all();
    foreach ($owners as $owner) {
      echo $owner->id . ' - ' . $owner->firstname . ' ' . $owner->lastname . '<br>';
    }
  }

}
