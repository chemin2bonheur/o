<?php namespace Grcote7\Movies;

use System\Classes\PluginBase;

class Plugin extends PluginBase {

  public function registerComponents() {
    return [
      'Grcote7\Movies\Components\ActorForm' => 'actorform',
      'Grcote7\Movies\Components\Actors'    => 'actors',
      'Grcote7\Movies\Components\FilterMovies'    => 'filtermovies'
    ];
  }

  public function registerFormWidgets() {
    return [
      'Grcote7\Movies\FormWidgets\Actorbox' => [
        'label' => 'Actorbox field',
        'code'  => 'actorbox'
      ]
    ];
  }

  public function registerSettings() {
  }

  public function boot() {
    \Event::listen('offline.sitesearch.query', function ($query) {

      // Search your plugin's contents
      $items = Models\Movie::where('name', 'like', "%${query}%")
        ->orWhere('description', 'like', "%${query}%")
        ->get();

      // Now build a results array
      $results = $items->map(function ($item) use ($query) {

        // If the query is found in the title, set a relevance of 2
        $relevance = mb_stripos($item->name, $query) !== FALSE ? 2 : 1;

        // Optional: Add an age penalty to older results. This makes sure that
        // never results are listed first.
        // if ($relevance > 1 && $item->published_at) {
        //     $relevance -= $this->getAgePenalty($item->published_at->diffInDays(Carbon::now()));
        // }

        if ($item->poster) {

          return [
            'title'     => $item->name,
            'text'      => $item->description,
            'url'       => '/movies/movie/' . $item->slug,
            'thumb'     => $item->poster->first(), // Instance of System\Models\File
            'relevance' => $relevance, // higher relevance results in a higher
            // position in the results listing
            // 'meta' => 'data',       // optional, any other information you want
            // to associate with this result
            // 'model' => $item,       // optional, pass along the original model
          ];
        } else {
          return [
            'title'     => $item->name,
            'text'      => $item->description,
            'url'       => '/movies/movie/' . $item->slug,
            'relevance' => $relevance
          ];
        }
      });

      return [
        'provider' => 'Movie', // The badge to display for this result
        'results'  => $results,
      ];
    });
  }

}
