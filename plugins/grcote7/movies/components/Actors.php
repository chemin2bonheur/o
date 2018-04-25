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
      'results' => [
        'title'             => 'Number of Actors',
        'description'       => 'How many actors do you want to display?',
        'default'           => 0,
        'type'              => 'string',
        'validationPattern' => '^[0-9]+$',
        'validationMessage' => 'Only numbers allowed'
      ]
    ];
  }

  public function onRun() {
    $this->actors = $this->loadActors();
  }

  protected function loadActors() {
    return Actor::all();
  }

}
