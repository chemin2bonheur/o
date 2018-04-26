<?php namespace Grcote7\Contact\Components;


use Mail;
use ValidationException;
use Redirect;
use Validator;
use Cms\Classes\ComponentBase;


class SendOneMail extends ComponentBase {

  public $mavar;

  public function componentDetails() {

    return [
      'name'        => 'Send One Mail',
      'description' => 'Simple sending of one email'
    ];
  }


  public function onRun() {

    $this->mavar = [123, 'abc', 789];
    $params = [
      'name'    => 'Lionel',
      'email'   => 'mon@email.com',
      'content' => 'Du contenu ici....'
    ];
//    Mail::rawTo('grcote7@gmail.com', 'Hello friend'); //Ok
    Mail::sendTo('grcote7@gmail.com', 'grcote7.contact::mail.message',
                 $params);

    // Fonctionne en local
//    mail('grcote7@gmail.com', 'Sujet', 'contenu');

//    $this->mavar = 123456;

//    return $this->maVar;


    /*
        $data = post();

        $rules = [
          'name'    => 'required|min:3',
          'email'   => 'required|email',
          'message' => 'required|min:5'
        ];

        $validator = Validator::make($data, $rules);

        if ($validator->fails()) {
          throw new ValidationException($validator);
        }
        else {
          $vars = [
            'name'    => Input::get('name'),
            'email'   => Input::get('email'),
            'content' => Input::get('content')
          ];
          Flash::success('Jobs done!');

          // Envoi de l'email en réel

          Mail::send('grcote7.contact::mail.message', $vars, function ($message) {

            $message->to('grcote7@gmail.com', 'Lionel COTE');
            $message->subject('New message from my contact form.');
          });
        }
    */
  }
}
