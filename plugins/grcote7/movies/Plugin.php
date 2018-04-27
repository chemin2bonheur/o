<?php namespace Grcote7\Movies;

use System\Classes\PluginBase;

class Plugin extends PluginBase {
  public function registerComponents() {
    return [
      'Grcote7\Movies\Components\ActorForm' => 'actorform',
      'Grcote7\Movies\Components\Actors'    => 'actors'
    ];
  }


  public function registerFormWidgets() {
    return [
      'Grcote7\Movies\FormWidgets\Actorbox' => [
        'label' => 'Actorbox field',
        'code'  => 'actorbox'
      ]
    ];
  }

  public function registerSettings() {
  }
}
