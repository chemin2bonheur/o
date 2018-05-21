<?php namespace Grcote7\Books\Models;

use Model;

/**
 * Model
 */
class Book extends Model {
  use \October\Rain\Database\Traits\Validation;

  /**
   * @var array Validation rules
   */
  public $rules = [
  ];

  /**
   * @var string The database table used by the model.
   */
  public $table = 'grcote7_books_';

  public $belongsTo = ['owner' => 'Grcote7\Books\Models\Owner'];

  public function owner() {
    return 'dudu';
  }
}
