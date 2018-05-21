<?php
namespace Grcote7\Books\Components;

use Cms\Classes\ComponentBase;

class Tests extends ComponentBase {

  public $aVar;

  public function componentDetails() {
    return [
      'name'        => 'test',
      'description' => 'A simple component for various tests.'
    ];
  }

  public function onRun() {
    $this->aVar = 789;
  }

}
