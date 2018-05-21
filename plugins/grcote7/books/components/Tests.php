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
     $this->populateOwners();

    $owners = Owner::podium(2)->get();
    $this->getOwners($owners);

    exit();

    dd($books);
  }

  /**
   * Re-initialize table owners and seeds data
   *
   */
  protected function populateOwners() {
    Db::table('grcote7_books_owners')->truncate();
    Owner::firstOrCreate(['firstname' => 'lioNel', 'lastname' => 'CÔte']);
    Owner::firstOrCreate(['firstname' => 'Lio181', 'lastname' => 'Yahoo']);
    Owner::firstOrCreate(['firstname' => 'NonInclus', 'lastname' => '']);
    Owner::firstOrCreate(['firstname' => 'Michel', 'lastname' => 'COLUCCI']);
    Owner::firstOrCreate(['firstname' => 'Pierre', 'lastname' => 'RICHARD']);
  }

  protected function getOwners($owners) {
    // $owners = Owner::all();
    foreach ($owners as $owner) {
      echo $owner->id . ' - ' . $owner->firstname . ' ' . $owner->lastname . '<br>';
    }
  }

}
