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


    public function defineProperties() {

        return [
            'results' => [
                'title' => 'number of actors',
                'description' => 'how many actors do you want to display',
                'default' => 0,
                'validationPattern' => '^[0-9]+$',
                'validationMessage' => 'Only numbers allowed'
            ],

            'sortOrder' => [
                'title' => 'sort Actors',
                'description' => 'sort those actors',
                'type' => 'dropdown',
                'default' => 'name asc'

            ]
       ];
    }

    public function getSortOrderOptions() {

        return[
            'name asc' => 'name ascending',
            'name desc' => 'name descending'
        ];
    }

    public function onRun(){
        $this->actors = $this->loadActors();
    }



    protected function loadActors(){

        $query = Actor::all();

            if($this->property('sortOrder') == 'name asc'){
                $query = $query ->sortBy('name');
            }

            if($this->property('sortOrder') == 'name desc'){
                $query = $query ->sortByDesc('name');
            }


            if( $this->property('results') > 0 ){

                $query = $query -> take($this->property('results'));
            }

        return $query;
    }




    public $actors;

}