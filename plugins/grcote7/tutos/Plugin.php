<?php namespace Grcote7\Tutos;

use System\Classes\PluginBase;

class Plugin extends PluginBase
{
        /**
     * @var array Plugin dependencies
     */
    public $require = ['RainLab.User'];

        public function pluginDetails()
    {
        return [
            'name' => 'Tutos Plugin',
            'description' => 'Provides a feature to follow mastery of tutos.',
            'author' => 'GrCote7',
            'icon' => 'icon-graduation-cap'
        ];
    }

    /*
    ToDoLi: Relation - Pour étendre User pour auto-évaluation (des cours)
    (Qd table 'suivis' sera faite)

    public function boot()
        {
        User::extend(function($model) {
            $model->hasOne['author'] = ['Acme\Blog\Models\Author'];
        });
    }
    */

    public function registerComponents()
    {
    }

    public function registerSettings()
    {
    }
}
