<?php namespace momo\Contact;

use System\Classes\PluginBase;

class Plugin extends PluginBase
{
    public function registerComponents()
    {

        return [
            'momo\Contact\Components\ContactForm' => 'contactform',
        ];

    }

    public function registerSettings()
    {
    }
}
