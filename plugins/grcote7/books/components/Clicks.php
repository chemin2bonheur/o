<?php
namespace Grcote7\Books\Components;

use Cms\Classes\ComponentBase;

class Clicks extends ComponentBase {

  public $counter;

  public function componentDetails() {
    return [
      'name'        => 'Clicks',
      'description' => 'Count clicks on a button.'
    ];
  }


  public function onRun() {
    // Réc valuer du compteur
    $this->counter = $this->loadCounter();
    // return ['#someDiv' => $this->renderPartial('component-partial.htm')];
  }

  public function incrementCounter() {


  }


  protected function loadCounter() {

    $val = 123;
    // dd($query);
    return $val;
  }


}
