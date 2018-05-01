<?php namespace Grcote7\Contact\Components;

use Mail;
use Cms\Classes\ComponentBase;


class SendOneMail extends ComponentBase {

  public $mavar;

  public function componentDetails() {

    return [
      'name'        => 'Send One Mail',
      'description' => 'Simple sending of one email for test'
    ];
  }


  public function onRun() {

    $this->mavar = [123, 'abc', 789];

    $params = [
      'name'    => 'Lionel',
      'email'   => 'expediteur@email.com',
      'content' => 'Du contenu ici....'
    ];

// mail('grcote7@gmail.com', 'Sujet', 'contenu');

// Mail::rawTo('grcote7@gmail.com', 'Hello friend');

// Mail::sendTo('grcote7@gmail.com', 'grcote7.contact::mail.message', $params);

    $this->mavar [] = 'Script éxécuté !';

  }
}
