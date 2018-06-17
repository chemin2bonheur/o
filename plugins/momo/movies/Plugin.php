<?php namespace momo\Movies;

use System\Classes\PluginBase;

class Plugin extends PluginBase
{
    public function registerComponents()
    {
        return[
            'momo\Movies\Components\Actors' => 'actors'
        ];
        
    }


    public function registerFormwidgets()
    {
        return[
            'momo\Movies\Formwidgets\Actorbox' => [
                'label' => 'ActorBox field',
                'code' => 'actorbox'
            ]
        ];
    }


    public function registerSettings()
    {
    }
}
