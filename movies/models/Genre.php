<?php namespace Grcote7\Movies\Models;

use Model;

/**
 * Model
 */
class Genre extends Model
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
    public $table = 'grcote7_movies_genres';

    public $belongsToMany = [
    'movies' => [
      'Grcote7\Movies\Models\Movie',
      'table' => 'grcote7_movies_movies_genres',
      'order' => 'name'
    ]
  ];

}
