<?php namespace Grcote7\Books\Models;

use Model;

/**
 * Model
 */
class Book extends Model {
  use \October\Rain\Database\Traits\Validation;

  protected $fillable = ['title', 'description', 'slug', 'published', 'owner_id'];

  protected $appends = ['is_published'];

  protected $casts = [
    'published' => 'boolean'
  ];

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

  public function getIsPublishedAttribute() {
    return $this->attributes['published'] === 1;
  }
}
