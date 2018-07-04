<?php namespace Grcote7\Movies\Models;

use Model;

/**
 * Model
 */
class Tag extends Model {
  use \October\Rain\Database\Traits\Validation;

  /*
   * Disable timestamps by default.
   * Remove this line if timestamps are defined in the database table.
   */
  public $timestamps = FALSE;

  /**
   * @var array Validation rules
   */
  public $rules
    = [
    ];

  /**
   * @var string The database table used by the model.
   */
  public $table = 'grcote7_movies_tags';

  public $belongsToMany = [
    'movies' => [
      'Grcote7\Movies\Models\Movie',
      'table' => 'grcote7_movies_tags_movies',
      'order' => 'name'
    ]
  ];

  public function getFormattedNameAttribute() {
    return ucfirst(strtolower($this->name));
  }
}
