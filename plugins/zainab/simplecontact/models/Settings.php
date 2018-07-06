<?php
namespace Zainab\SimpleContact\Models;

use Model;
use Cms\Classes\Page;
use Cms\Classes\Theme;

class Settings extends Model {

  public $implement = ['System.Behaviors.SettingsModel'];

  // A unique code
  public $settingsCode = 'zainab_simple_contact_settings';

  // Reference to field configuration
  public $settingsFields = 'fields.yaml';


  public function getRedirectToUrlOptions($keyValue = null) {

    $currentTheme = Theme::getEditTheme();
    $allPages     = Page::listInTheme($currentTheme, true);

    $pages     = [];
    $pages[""] = "--Select--";

    foreach ($allPages as $pg) {
      $pages[$pg->url] = $pg->title;
    }

    return $pages;
  }
}