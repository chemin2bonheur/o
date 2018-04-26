<?php namespace Grcote7\Contact;

use System\Classes\PluginBase;

class Plugin extends PluginBase {
  public function registerComponents() {
    return [
      'Grcote7\Contact\Components\ContactForm' => 'contactform',
      'Grcote7\Contact\Components\SendOneMail' => 'sendonemail'
    ];
  }

  public function registerSettings() {
  }
}
