<?php namespace Grcote7\Movies\Models;

use Model;

/**
 * Model
 */
class Actor extends Model {
  use \October\Rain\Database\Traits\Validation;

  /*
   * Disable timestamps by default.
   * Remove this line if timestamps are defined in the database table.
   */
  public $timestamps = FALSE;

  /**
   * @var array Validation rules
   */
  public $rules = [
  ];

  /**
   * @var string The database table used by the model.
   */
  public $table = 'grcote7_movies_actors';

  protected $fillable = ['name', 'lastname'];

  public $belongsToMany = [
    'movies' => [
      'Grcote7\Movies\Models\Movie',
      'table' => 'grcote7_movies_actors_movies',
      'order' => 'name'
    ]
  ];

  public $attachOne = [
    'actorimage' => 'System\Models\File'
  ];

  public function getFullNameAttribute() {
    return $this->name . ' ' . $this->lastname;
  }

}
