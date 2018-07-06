<?php namespace Grcote7\Library\Controllers;

use Backend\Classes\Controller;
use BackendMenu;

class Books extends Controller
{
    public $implement = ['Backend\Behaviors\ListController','Backend\Behaviors\FormController'];

    public $listConfig = 'config_list.yaml';
    public $formConfig = 'config_form.yaml';

    public $requiredPermissions = [
        'grcote7.library.manage_book'
    ];

    public function __construct()
    {
        parent::__construct();
        BackendMenu::setContext('Grcote7.Library', 'library', 'books');
    }
}