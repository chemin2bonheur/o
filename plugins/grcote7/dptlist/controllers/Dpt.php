<?php namespace Grcote7\Dptlist\Controllers;

use Backend\Classes\Controller;
use BackendMenu;

class Dpt extends Controller {

    public $implement = ['Backend\Behaviors\ListController'];

    public $listConfig = 'config_list.yaml';


    public function __construct() {

        parent::__construct();
    }
}
