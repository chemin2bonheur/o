<?php namespace Grcote7\Books;

use Illuminate\Support\Facades\Event;
use System\Classes\PluginBase;

class Plugin extends PluginBase {

  public function pluginDetails() {
    return [
      'name'        => 'Books Plugin',
      'description' => 'Just to entirely code all.',
      'author'      => 'Grcote7',
      'icon'        => 'icon-book',
      'homepage'    => 'https://github.com/chemin2bonheur/o'
    ];
  }

  public function registerComponents() {
    return [
      'Grcote7\Books\Components\Books'                           => 'Books',
      'Grcote7\Books\Components\Tests'                           => 'Tests',
      'Grcote7\Books\Components\MoreSimpleComponentForBooksList' => 'fakeBooks',
      'Grcote7\Books\Components\Clicks'                          => 'Clicks',
    ];
  }

  public function registerSettings() {
  }

  public function boot() {
  }

  public function registerSchedule($schedule) {
    $schedule->call(function () {
      $this['page']->theHour = time();
    })->everyFiveMinutes();
  }

}
