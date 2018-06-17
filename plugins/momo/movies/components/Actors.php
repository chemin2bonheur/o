<?php namespace momo\Movies\Components;

use Cms\Classes\ComponentBase;

use momo\Movies\Models\Actor;

class Actors extends ComponentBase
{

    public function componentdetails() {

        return [
            'name' => 'Actor list',
            'description' => 'List of actors'
        ];
    }

    public function onRun(){
        $this->actors = $this->loadActors();
    }

    protected function loadActors(){
        return Actor::all();
    }

    public $actors;

}