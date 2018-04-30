<?php namespace Grcote7\Movies\Models;

use Model;

/**
 * Model
 */
class Movie extends Model {
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
  public $table = 'grcote7_movies_';

//  protected $jsonable = ['actors'];

//  protected $fillable = ['created_at', 'published'];

  /* Relations */

  public $belongsToMany = [
    'genres' => [
      'Grcote7\Movies\Models\Genre',
      'table' => 'grcote7_movies_movies_genres',
      'order' => 'genre_title'
    ],
    'actors' => [
      'Grcote7\Movies\Models\Actor',
      'table' => 'grcote7_movies_actors_movies',
      'order' => 'name'
    ]
  ];

  public $attachOne = [
    'poster' => 'System\Models\File'
  ];

  public $attachMany = [
    'movie_gallery' => 'System\Models\File'
  ];
}
