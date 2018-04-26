<?php namespace Grcote7\Contact\Components;


use Mail;
use Input;
use October\Rain\Support\Facades\Flash;
use ValidationException;
use Redirect;
use Validator;
use Cms\Classes\ComponentBase;


class ContactForm extends ComponentBase {

  public function componentDetails() {

    return [
      'name'        => 'Contact Form',
      'description' => 'Simple contact form'
    ];
  }


  public function onSend() {

    $data = post();

    $rules = [
      'name'    => 'required|min:3',
      'email'   => 'required|email',
      'message' => 'required|min:5'
    ];

    $validator = Validator::make($data, $rules);

    if ($validator->fails()) {
      throw new ValidationException($validator);
    } else {
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

  }
}
