<?php namespace momo\Contact\Components;

use Cms\Classes\ComponentBase;

use Input;

use Mail;

use Validator;

use Redirect;


Class ContactForm extends ComponentBase{


    public function componentDetails() {

        return [
            'name' => 'ContactForm',
            'description' => 'Simple contact form'
        ];

    }


    public function onSend() {

        $validator = Validator::make(
            [
                'name' => input::get('name'),
                'email' => input::get('email')
            ],
            [
                'name' => 'required',
                'email' => 'required|email'
            ]
        );


        if($validator -> fails()){
            return Redirect::back()->withErrors($validator);
        }else{

            $vars = ['name' => input::get('name'), 'email' => input::get('email'), 'content' => input::get('content')];

            Mail::send('momo.contact::mail.message', $vars, function($message) {

                $message->to('seckndanane16@gmail.com', 'Admin Person');
                $message->subject('New message from contact page');

            });

        }


    }


}