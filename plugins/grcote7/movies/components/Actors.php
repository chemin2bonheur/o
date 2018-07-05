<?php namespace Grcote7\Movies\Components;

use Cms\Classes\ComponentBase;
use Grcote7\Movies\Models\Actor;

class Actors extends ComponentBase {

  public $actors;

  public function componentDetails() {
    return [
      'name'        => 'Actors list',
      'description' => 'List of actors'
    ];
  }

  public function defineProperties() {
    return [
      'results'   => [
        'title'             => 'Number of Actors',
        'description'       => 'How many actors do you want to display?',
        'default'           => 3,
        'validationPattern' => '^[0-9]+$',
        'validationMessage' => 'Only numbers allowed'
      ],
      'sortOrder' => [
        'title'       => 'Sort Actors',
        'description' => 'Sort those actors',
        'type'        => 'dropdown',
        'default'     => 'lastname asc'
      ]
    ];
  }

  public function getSortOrderOptions() {
    return [
      'name asc'      => 'Name (Ascending)',
      'name desc'     => 'Name (Descending)',
      'lastname asc'  => 'Lastname (Ascending)',
      'lastname desc' => 'Lastname (Descending)'
    ];
  }

  public function onRun() {
    $this->actors = $this->loadActors();
  }

  protected function loadActors() {

    $query = Actor::all();

    if ($this->property('sortOrder') === 'name asc') {
      $query = $query->sortBy('name');
    }
    else if ($this->property('sortOrder') === 'name desc') {
      $query = $query->sortByDesc('name');
    }
    else if ($this->property('sortOrder') === 'lastname asc') {
      $query = $query->sortBy('lastname');
    }
    else {
      $query = $query->sortByDesc('lastname');
    }

    if ($this->property('results') > 0) {
      $query = $query->take($this->property('results'));
    }

    return $query;
  }

}
