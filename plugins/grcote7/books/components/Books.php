<?php
namespace Grcote7\Books\Components;

use Cms\Classes\ComponentBase;
use Grcote7\Books\Models\Book;
use Illuminate\Support\Facades\Lang;

class Books extends ComponentBase {

  public $fakebooks, $books, $aVar;

  public function componentDetails() {
    return [
      'name'        => 'Books list',
      'description' => 'Displays a collection of books.'
    ];
  }

  public function onRun() {
    $this->aVar = 789;
    $this->books = $this->loadBooks();
    trace_log('The books are loaded');
  }

  protected function loadBooks() {
    $query = Book::all();
    // dd($query);
    return $query;
  }

  // This array becomes available on the page as {{ component.books }}
  public function getbooks() {
    return ['First Book', 'Second Book', 'Third Book'];
  }
}
