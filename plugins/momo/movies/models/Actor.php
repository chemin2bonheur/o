<?php namespace momo\Movies\Models;

use Model;

/**
 * Model
 */
class Actor extends Model
{
    use \October\Rain\Database\Traits\Validation;
    
    /*
     * Disable timestamps by default.
     * Remove this line if timestamps are defined in the database table.
     */
    public $timestamps = false;

    /**
     * @var array Validation rules
     */
    public $rules = [
    ];

    /**
     * @var string The database table used by the model.
     */
    public $table = 'momo_movies_actors';


    public $belongsToMany = [
        'movies' =>[
            'momo\Movies\Models\Movie',
            'table'=>'momo_movies_actors_movies',
            'order'=>'name'
        ]
    ];


    public function getFullNameAttribute(){

        return $this->name. " " .$this->lastname;
    }
}
