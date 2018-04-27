<?php namespace Grcote7\Movies\Components;

use Input;
use Redirect;
use Validator;
use Cms\Classes\ComponentBase;
use Grcote7\Movies\Models\Actor;
use October\Rain\Support\Facades\Flash;


class ActorForm extends ComponentBase {

  public function componentDetails() {

    return [
      'name'        => 'Actor Form',
      'description' => 'Enter actors'
    ];
  }

  public function onRun() {
    $this->addCss('assets/css/style.css');
  }

  public function onSave() {

    $actor = new Actor();
    $actor->name = Input::get('name');
    $actor->lastname = Input::get('lastname');
    $actor->save();

    Flash::success('Actor added!');
    return Redirect::back();

  }
}
