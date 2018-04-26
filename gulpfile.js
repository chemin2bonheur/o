var elixir = require('laravel-elixir');
require('laravel-elixir-livereload');

elixir.config.assetsPath = 'themes/momo/assets/';
elixir.config.publicPath = 'themes/momo/assets/compiled/';

elixir(function (mix) {

    mix.sass('style.scss');

    mix.scripts([
        'jquery.js',
        'app.js'
    ]);

    mix.livereload([
        'themes/momo/assets/compiled/css/style.css',
        'themes/momo/**/*.htm',
        'themes/momo/assets/compiled/js/*.js'
    ]);

});
