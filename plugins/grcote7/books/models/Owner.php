<?php namespace Grcote7\Books\Models;

use Model;

/**
 * Model
 */
class Owner extends Model {
  use \October\Rain\Database\Traits\Sluggable;
  use \October\Rain\Database\Traits\Validation;
  use \October\Rain\Database\Traits\Revisionable;
  use \October\Rain\Database\Traits\SimpleTree;

  const PARENT_ID = 'parr';

  protected $fillable = ['firstname', 'lastname', 'parr'];

  protected $slugs = [
    'slug' => ['firstname', 'lastname']
  ];

  protected $revisionable = ['firstname', 'lastname'];

  public $morphMany = [
    'revision_history' => ['System\Models\Revision', 'name' => 'revisionable']
  ];

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

  public function beforeCreate() {

    if (empty($this->firstname) || empty($this->lastname)) {
      return FALSE;
    }

  }

  /**
   * @var string The database table used by the model.
   */
  public $table = 'grcote7_books_owners';

  public function getFullNameAttribute() {
    return $this->firstname . ' ' . $this->lastname;
  }

  public function setFirstNameAttribute($value) {
    $this->attributes['firstname'] = ucfirst(strtolower($value));
  }

  public function setLastNameAttribute($value) {
    $this->attributes['lastname'] = strtoupper($value);
  }

  public function scopePodium($query, $number = 3) {
    return $query->where('id', '<=', $number);
  }

  public $hasMany = [
    'books' => 'Grcote7\Books\Models\Book'
  ];

}
