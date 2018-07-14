<?php namespace momo\Movies\FormWidgets;

use Backend\Classes\FormWidgetBase;

use Config;

use momo\Movies\Models\Actor;

class ActorBox extends FormWidgetBase {

  public function widgetDetails() {
    return [
      'name'=> 'Actorbox',
      'description' => 'Field for adding actors'
    ];
  }


  public function render() {
    $this->prepareVars();
    //dump($this->vars['selectedValues']);
    return $this->makePartial('widget');
  }


  public function prepareVars(){
    $this->vars['id'] = $this->model->id;
    $this->vars['actors'] = Actor::All()->lists('fullname', 'id');
    $this->vars['name'] = $this->formField->getName().'[]';

    if(!empty($this->getLoadValue())){

      $this->vars['selectedValues'] = $this->getLoadValue();

    }
    else{
      $this->vars['selectedValues'] = [];
    }
    
  }


  public function getSaveValue($actors) {
    // get values
    // compare values
    // save to model
    // create new array
    // dd($actors); // Visible dans console ds Network -> record (save dans backup - Inception) puis cf dans preview
    $newArray = [];
    foreach ($actors as $actorID) {
      if (!is_numeric($actorID)) {
        $newActor = new Actor;
        $nameLastname = explode(' ', $actorID);
        $newActor->name = ucfirst($nameLastname[0]);
        $newActor->lastname = ucfirst($nameLastname[1]);
        $newActor->save();
        $newArray[] = $newActor->id;
      } else {
        $newArray[] = $actorID;
      }
    }
    return $newArray;
  }

  
  
  public function loadAssets() {
    $this->addCss('css/select2.css');
    $this->addJs('js/select2.js');
  }


}