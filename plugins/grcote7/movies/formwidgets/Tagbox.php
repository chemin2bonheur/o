<?php namespace Grcote7\Movies\FormWidgets;

use Config;
use Grcote7\Movies\Models\Tag;
use Backend\Classes\FormWidgetBase;

/**
 * Tag List Form Widget
 */
class TagBox extends FormWidgetBase {
  public function widgetDetails() {
    return [
      'name'        => 'Tagbox',
      'description' => 'Field for adding tag'
    ];
  }

  public function render() {
    $this->prepareVars();
    dump($this->vars['id']);
    dump($this->vars['tags']);
    dump($this->vars['name']);
    dump($this->vars['selectedValues']);

    return $this->makePartial('tagbox');
  }

  public function loadAssets() {
    $this->addCss('css/select2.css');
    $this->addJs('js/select2.js');
  }

  public function prepareVars() {
    $this->vars['id'] = $this->model->id;
    //    $this->vars['tags']           = Tag::all()->lists('name', 'id');
    $this->vars['tags']           = Tag::all()->lists('formatted_name', 'id');
    $this->vars['name']           = $this->formField->getName() . '[]';
    $this->vars['selectedValues'] = (!empty($this->getLoadValue())) ? $this->getLoadValue() : [];
  }

  public function getSaveValue($tags) {

    // get values
    // compare values
    // save to model
    // create new array
    // dd($tags); // Visible dans console ds Network -> record (save dans backend avec Inception) puis Saisir et valider saisie => cf dans preview

    //    dd('arr tags',$tags);

    $newArray = [];

    foreach ($tags as $tagID) {
      if (!is_numeric($tagID)) {
        $newTag = new Tag;

        //        $name   = explode(' ', $tagID);
        //        $newTag->name = $name[0];
        $newTag->name = $tagID;


        //        dd($name);
        //        $newTag->lastname = ucfirst($nameLastname[1]);
        $newTag->save();
        $newArray[] = $newTag->id;
      }
      else {
        $newArray[] = $tagID;
      }
    }
//    dd($tags);

    return $newArray;
  }
}
