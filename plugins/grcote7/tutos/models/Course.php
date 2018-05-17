<?php namespace Grcote7\Tutos\Models;

use Model;

/**
 * Model
 */
class Course extends Model {
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
  public $table = 'grcote7_tutos_courses';

  public $belongsTo = [
    'tutos' => 'Grcote7\Tutos\Models\Tuto'
  ];
}
