<?php namespace Grcote7\Movies\Components;

use Input;
use October\Rain\Exception\ValidationException;
use Redirect;
use System\Models\File;
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

  public function onSubmit() {

    $data = Input::all();
    $rules = [
      'name'     => 'required',
      'lastname' => 'required'
    ];
    $validator = Validator::make($data, $rules);

    if ($validator->fails()) {
      throw new ValidationException($validator);
    }


    $actor = new Actor();
    $actor->name = Input::get('name');
    $actor->lastname = Input::get('lastname');
    $actor->actorimage = Input::file('actorimage');
    $actor->save();

    Flash::success('Actor added!');

  }

  public function onImageUpload() {
    $image = Input::all();

    $file = (new File())->fromPost($image['actorimage']);


    return [
      '#imageResult' => '<img src="' . $file->getThumb(200, 200, ['mode' => 'crop']) . '" >'
    ];
  }
}
