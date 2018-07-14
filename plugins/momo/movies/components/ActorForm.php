<?php namespace momo\Movies\Components;

use Cms\Classes\ComponentBase;

use Input;

use Validator;

use Redirect;


Class ActorForm extends ComponentBase{


    public function componentDetails() {

        return [
            'name' => 'Actor Form',
            'description' => 'Enter actors'
        ];

    }


    public function onSave(){

        


    }


}