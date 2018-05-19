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
    $this->counter = $this->nf($this->loadCounter());
    // return ['#someDiv' => $this->renderPartial('component-partial.htm')];
  }

  public function onIncrementCounter() {
    $this->page['counter'] = $this->loadCounter() + 1;
  }

  protected function loadCounter() {
    $val = 1234;
    // dd($val);
    return $val;
  }

  protected function saveCounter($val = 777) {
    echo('Save the new value of the counter.');
    // dd($query);
    return $this->nf($val);
  }

  protected function nf($n) {
    return number_format($n, 0, ',', ' ');
  }

}
