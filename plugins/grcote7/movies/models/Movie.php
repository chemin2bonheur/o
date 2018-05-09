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

  public static $allowedSortingOptions = [
    'name asc' => 'Name - Asc',
    'name desc' => 'Name - Desc',
    'year asc' => 'Year - Asc',
    'year desc' => 'Year - Desc'
  ];

  public function scopeListFrontEnd($query, $options = []) {

    extract(array_merge([
                          'page'    => 1,
                          'perPage' => 3,
                          'sort'    => 'created_at desc',
                          'genres'  => 'null',
                          'year'    => ''
                        ], $options));

    if (!is_array($sort)) {
      $sort = [$sort];
    }

    foreach ($sort as $_sort) {
      if (in_array($_sort, array_keys(self::$allowedSortingOptions))) {
        $parts = explode(' ', $_sort);

        if (count($parts) < 2) {
          array_push($parts, 'desc');
        };

        list($sortField, $sortDirection) = $parts;

        $query->orderBy($sortField, $sortDirection);

      }
    }

    if ($genres !== "null") {

      if (!is_array($genres)) {
        $genres = [$genres];
      }

      foreach ($genres as $genre) {
        $query->whereHas('genres', function ($q) use ($genre) {
          $q->where('id', '=', $genre);
        });
      }
    }

    $lastPage = $query->paginate($perPage, $page)->lastPage();

    if ($lastPage < $page) {
      $page = 1;
    }

    if ($year) {
      $query->where('year', '=', $year);
    }

    return $query->paginate($perPage, $page);
  }

}
