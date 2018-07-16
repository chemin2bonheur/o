<?php namespace momo\Movies\Components;

use Cms\Classes\ComponentBase;

use Input;

use Validator;

use Redirect;

use momo\Movies\Models\Actor;

use Flash;

Class ActorForm extends ComponentBase{


    public function componentDetails() {

        return [
            'name' => 'Actor Form',
            'description' => 'Enter actors'
        ];

    }


    public function onRun(){
//        $this->actors = $this->loadActors();
    }


    public function onSave(){

        $actor = new Actor();
        $actor -> name = input::get('name');
        $actor -> lastname = input::get('lastname');
        $actor -> save();
        Flash::success("Actor Added!");
        return Redirect::back();

    }


}