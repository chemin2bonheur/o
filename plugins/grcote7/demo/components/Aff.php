<?php namespace GrCOTE7\Demo\Components;

use ApplicationException;
use Cms\Classes\ComponentBase;

class Aff extends ComponentBase {

    public function componentDetails() {

        return [
            'name'        => 'Aff Info',
            'description' => 'Implements a simple Display.'
        ];
    }


    public function defineProperties() {

        return [
        ];
    }


    public function onAffItem() {

        $items               = [
            'Pomme',
            'Pêche',
            'Poire'
        ];
        $this->page['items'] = $items;
    }


    public function onSortList() {

        $items = [
            'Tortelinis',
            'Pennes',
            'Nouilles',
            'Spaghettis'
        ];
        sort($items);
        $this->page['items'] = $items;
    }
}
