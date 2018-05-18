<?php
namespace Grcote7\Books\Components;

use Cms\Classes\ComponentBase;

class MoreSimpleComponentForBooksList extends ComponentBase {

  public function componentDetails() {
    return [
      'name'        => 'More Simple Component For Books List',
      'description' => 'Displays a collection of 3 fake books.'
    ];
  }

  // This array becomes available on the page as {{ component.books }}
  public function listing() {
    return serialize(['First Book', 'Second Book', 'Third Book']);
  }
}
