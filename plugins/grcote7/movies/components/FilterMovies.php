<?php namespace Grcote7\Movies\Components;

use Input;
use Cms\Classes\ComponentBase;
use Grcote7\Movies\Models\Movie;
use Grcote7\Movies\Models\Genre;

class FilterMovies extends ComponentBase {

  public $movies, $years, $genres;

  /**
   * Returns information about this component, including name and description.
   */
  public function componentDetails() {
    return [
      'name'        => 'Filter Movies',
      'description' => 'Filter movies'
    ];
  }

  public function onRun() {
    $this->years = $this->filterYears();
    $this->movies = $this->filtermovies();
    $this->genres = Genre::all();
  }

  public function filterYears() {
    $query = Movie::all();

    $years = [];

    foreach ($query as $movie) {
      $years[] = $movie->year;
    }
    $years = array_unique($years);

    return $years;
  }


  protected function filtermovies() {

    $year = Input::get('year');
    $genre = Input::get('genre');

    $query = Movie::all();

    if ($year) {
      $query = Movie::where('year', '=', $year)->get();
    }

    if ($genre) {
      $query = Movie::whereHas('genres', function ($filter) use ($genre) {
        $filter->where('slug', '=', $genre);
      })->get();
    }

    if ($genre && $year) {
      $query = Movie::whereHas('genres', function ($filter) use ($genre) {
        $filter->where('slug', '=', $genre);
      })->where('year', '=', $year)->get();
    }

    return $query;
  }

}
