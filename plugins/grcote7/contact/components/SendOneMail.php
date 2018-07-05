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

    $this->mavar = [123, 'abc', 789, ''];

    $params = [
      'owner'   => env('OWNER', 'You'),
      'origin'  => 'Test avec component SendOneMail',
      'name'    => 'Lionel',
      'email'   => 'expediteur@email.com',
      'content' => 'Du contenu ici....'
    ];

    //ToDoLi replace by   env('MAIL_USERNAME', 'Your email') & env('OWNER', 'You')

    mail(env('MAIL_USERNAME', 'Your email'), 'Sujet', 'contenu');

    //Mail::rawTo(env('MAIL_USERNAME', 'Your email'), 'Hello friend');

    //Mail::sendTo(env('MAIL_USERNAME', 'Your email'), 'grcote7.contact::mail.message', $params);

    $this->mavar [] = 'Script éxécuté !';

  }
}
