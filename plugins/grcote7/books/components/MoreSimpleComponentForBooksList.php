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

  public function defineProperties() {
    return [
      'typeString' => [
        'title'       => 'Serialized / String',
        'description' => 'Choice of type of stringback (0 - Serialized, or 1 - Comma separated)',
        'type'        => 'checkbox',
        'default'     => 0
      ]
    ];
  }


  // This array becomes available on the page as {{ component.books }}
  public function listing() {
    $listing = ['First Book', 'Second Book', 'Third Book', $this->property('typeString')];
    return ($this->property('typeString')) ? implode(', ', $listing) : serialize($listing);
  }

}
