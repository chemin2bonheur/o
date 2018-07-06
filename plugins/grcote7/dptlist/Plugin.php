<?php namespace Grcote7\Dptlist;

use System\Classes\PluginBase;

class Plugin extends PluginBase {

  public function pluginDetails() {

    return [
      'name'        => 'DptList',
      'description' => 'Liste des départements.',
      'author'      => 'LC',
      'icon'        => 'oc-icon-list-ol'
    ];
  }


  public function registerComponents() {

    return [
      //      '\GrCOTE7\Dptlist\Components\Dpt' => 'dptList'
    ];
  }


  public function registerSettings() {
  }
}
