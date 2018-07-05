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

  public function onRun() {
    $this->addCss('assets/css/style.css');
  }

  public function onSend() {

    $data = post();

    $rules = [
      'name'    => 'required|min:3',
      'email'   => 'required|email',
      'content' => 'required|min:5'
    ];

    /*
     * Exemple de personnalisation d'un validator
     public function boot()
    {
        Validator::extend('bigger', function($attribute, $value, $parameters, $validator) {
            $min_field = $parameters[0];
            $data = $validator->getData();
            $min_value = $data[$min_field];
            return $value > $min_value;
        });
    }

    public $rules = [
        'min' => 'required',
        'max' => 'required|bigger:min'
    ];
     *
     */

    $validator = Validator::make($data, $rules);

    if ($validator->fails()) {
      /*
            return [
              '#result' => $this->renderPartial('contactform::messages', [
                'fieldMsgs' => $validator->messages(),
              ])
            ];
      */
      throw new ValidationException($validator);
    }
    else {
      $vars = [
        'name'    => Input::get('name'),
        'email'   => Input::get('email'),
        'content' => Input::get('content'),
        'owner'   => env('OWNER', 'You as Owner'),
        'origin'  => 'Form page Contact'
      ];
      Flash::success('Jobs done!');

      // Envoi de l'email en réel

      Mail::send('grcote7.contact::mail.message', $vars, function ($message) {

        $message->to(env('MAIL_USERNAME', 'Your email'), env('OWNER', 'Me'));
        $message->subject('New message from my contact form.');
      });
    }

  }
}
