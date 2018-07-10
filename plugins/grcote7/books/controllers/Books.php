<?php namespace Grcote7\Books\Controllers;

use BackendMenu;
use Backend\Classes\Controller;

class Books extends Controller {
  public $implement = [
    'Backend\Behaviors\ListController',
    'Backend\Behaviors\FormController',
    'Backend\Behaviors\ReorderController'
  ];

  public $listConfig    = 'config_list.yaml';
  public $formConfig    = 'config_form.yaml';
  public $reorderConfig = 'config_reorder.yaml';

  public function __construct() {
    parent::__construct();
    BackendMenu::setContext('Grcote7.Books', 'main-menu-item');
  }
}
