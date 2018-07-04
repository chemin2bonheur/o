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
    //     dump($this->vars['id']);
    //     dump($this->vars['tags']);
    //     dump($this->vars['name']);
    //     dump($this->vars['selectedValues']);
    return $this->makePartial('tagbox');
  }

  public function loadAssets() {
    $this->addCss('css/select2.css');
    $this->addJs('js/select2.js');
  }

  public function prepareVars() {
    $this->vars['id']             = $this->model->id;
    $this->vars['tags']           = Tag::all()->lists('formatted_name');
    $this->vars['name']           = $this->formField->getName() . '[]';
    $this->vars['selectedValues'] = (!empty($this->getLoadValue())) ? $this->getLoadValue() : [];
  }
}
