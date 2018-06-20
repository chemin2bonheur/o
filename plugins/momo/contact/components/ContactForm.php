<?php namespace momo\Contact\Components;

use Cms\Classes\ComponentBase;

use Input;

use Mail;


Class ContactForm extends ComponentBase{


    public function componentDetails() {

        return [
            'name' => 'ContactForm',
            'description' => 'Simple contact form'
        ];

    }


    public function onSend() {


        $vars = ['name' => input::get('name'), 'email' => input::get('email'), 'content' => input::get('content')];

        Mail::send('momo.contact::mail.message', $vars, function($message) {

            $message->to('seckndanane16@gmail.com', 'Admin Person');
            $message->subject('New message from contact page');

        });


    }


}