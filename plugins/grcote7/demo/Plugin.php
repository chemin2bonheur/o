<?php namespace GrCOTE7\Demo;

/**
 * The plugin.php file (called the plugin initialization script) defines the plugin information class.
 */

use System\Classes\PluginBase;

class Plugin extends PluginBase {

  public function pluginDetails() {
    return [
      'name'        => 'DemoAff',
      'description' => 'Provides and display an information.',
      'author'      => 'LC',
      'icon'        => 'icon-hand-o-up'
    ];
  }

  public function registerComponents() {
    return [
      '\GrCOTE7\Demo\Components\Aff' => 'demoAff'
    ];
  }
}
