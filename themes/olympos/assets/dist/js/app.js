/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId])
/******/ 			return installedModules[moduleId].exports;
/******/
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// identity function for calling harmony imports with the correct context
/******/ 	__webpack_require__.i = function(value) { return value; };
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, {
/******/ 				configurable: false,
/******/ 				enumerable: true,
/******/ 				get: getter
/******/ 			});
/******/ 		}
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "";
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = 3);
/******/ })
/************************************************************************/
/******/ ([
/* 0 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__homepagemsg_js__ = __webpack_require__(2);

__webpack_require__.i(__WEBPACK_IMPORTED_MODULE_0__homepagemsg_js__["a" /* default */])();

/*
 * Application
 */

/*
 $(document).tooltip({
 selector: "[data-toggle=tooltip]"
 })
 */

jQuery(document).ready(function ($) {

  /*
   * Auto hide navbar
   */
  var $header = $('.navbar-autohide'),
      scrolling = false,
      previousTop = 0,
      currentTop = 0,
      scrollDelta = 10,
      scrollOffset = 150;

  $(window).on('scroll', function () {
    if (!scrolling) {
      scrolling = true;

      if (!window.requestAnimationFrame) {
        setTimeout(autoHideHeader, 250);
      } else {
        requestAnimationFrame(autoHideHeader);
      }
    }
  });

  function autoHideHeader() {
    var currentTop = $(window).scrollTop();

    // Scrolling up
    if (previousTop - currentTop > scrollDelta) {
      $header.removeClass('is-hidden');
    } else if (currentTop - previousTop > scrollDelta && currentTop > scrollOffset) {
      // Scrolling down
      $header.addClass('is-hidden');
    }

    previousTop = currentTop;
    scrolling = false;
  }
});

(function ($) {

  $('#maCase').html('<strong>Salut</strong> le Monde !');
  $('#MoviesFilter').on('change', 'input, select', function () {
    var $form = $(this).closest('form');
    $form.request();
  });
})(jQuery);

/***/ }),
/* 1 */
/***/ (function(module, exports) {

throw new Error("Module build failed: ModuleBuildError: Module build failed: Error: Node Sass does not yet support your current environment: Windows 64-bit with Unsupported runtime (64)\nFor more information on which environments are supported please see:\nhttps://github.com/sass/node-sass/releases/tag/v4.8.3\n    at module.exports (C:\\laragon\\www\\t\\o\\node_modules\\node-sass\\lib\\binding.js:13:13)\n    at Object.<anonymous> (C:\\laragon\\www\\t\\o\\node_modules\\node-sass\\lib\\index.js:14:35)\n    at Module._compile (internal/modules/cjs/loader.js:702:30)\n    at Object.Module._extensions..js (internal/modules/cjs/loader.js:713:10)\n    at Module.load (internal/modules/cjs/loader.js:612:32)\n    at tryModuleLoad (internal/modules/cjs/loader.js:551:12)\n    at Function.Module._load (internal/modules/cjs/loader.js:543:3)\n    at Module.require (internal/modules/cjs/loader.js:650:17)\n    at require (internal/modules/cjs/helpers.js:20:18)\n    at Object.<anonymous> (C:\\laragon\\www\\t\\o\\node_modules\\sass-loader\\lib\\loader.js:3:14)\n    at Module._compile (internal/modules/cjs/loader.js:702:30)\n    at Object.Module._extensions..js (internal/modules/cjs/loader.js:713:10)\n    at Module.load (internal/modules/cjs/loader.js:612:32)\n    at tryModuleLoad (internal/modules/cjs/loader.js:551:12)\n    at Function.Module._load (internal/modules/cjs/loader.js:543:3)\n    at Module.require (internal/modules/cjs/loader.js:650:17)\n    at require (internal/modules/cjs/helpers.js:20:18)\n    at loadLoader (C:\\laragon\\www\\t\\o\\node_modules\\loader-runner\\lib\\loadLoader.js:13:17)\n    at iteratePitchingLoaders (C:\\laragon\\www\\t\\o\\node_modules\\loader-runner\\lib\\LoaderRunner.js:169:2)\n    at iteratePitchingLoaders (C:\\laragon\\www\\t\\o\\node_modules\\loader-runner\\lib\\LoaderRunner.js:165:10)\n    at C:\\laragon\\www\\t\\o\\node_modules\\loader-runner\\lib\\LoaderRunner.js:173:18\n    at loadLoader (C:\\laragon\\www\\t\\o\\node_modules\\loader-runner\\lib\\loadLoader.js:36:3)\n    at iteratePitchingLoaders (C:\\laragon\\www\\t\\o\\node_modules\\loader-runner\\lib\\LoaderRunner.js:169:2)\n    at iteratePitchingLoaders (C:\\laragon\\www\\t\\o\\node_modules\\loader-runner\\lib\\LoaderRunner.js:165:10)\n    at C:\\laragon\\www\\t\\o\\node_modules\\loader-runner\\lib\\LoaderRunner.js:173:18\n    at loadLoader (C:\\laragon\\www\\t\\o\\node_modules\\loader-runner\\lib\\loadLoader.js:36:3)\n    at iteratePitchingLoaders (C:\\laragon\\www\\t\\o\\node_modules\\loader-runner\\lib\\LoaderRunner.js:169:2)\n    at iteratePitchingLoaders (C:\\laragon\\www\\t\\o\\node_modules\\loader-runner\\lib\\LoaderRunner.js:165:10)\n    at C:\\laragon\\www\\t\\o\\node_modules\\loader-runner\\lib\\LoaderRunner.js:173:18\n    at loadLoader (C:\\laragon\\www\\t\\o\\node_modules\\loader-runner\\lib\\loadLoader.js:36:3)\n    at runLoaders (C:\\laragon\\www\\t\\o\\node_modules\\webpack\\lib\\NormalModule.js:192:19)\n    at C:\\laragon\\www\\t\\o\\node_modules\\loader-runner\\lib\\LoaderRunner.js:364:11\n    at C:\\laragon\\www\\t\\o\\node_modules\\loader-runner\\lib\\LoaderRunner.js:170:18\n    at loadLoader (C:\\laragon\\www\\t\\o\\node_modules\\loader-runner\\lib\\loadLoader.js:27:11)\n    at iteratePitchingLoaders (C:\\laragon\\www\\t\\o\\node_modules\\loader-runner\\lib\\LoaderRunner.js:169:2)\n    at iteratePitchingLoaders (C:\\laragon\\www\\t\\o\\node_modules\\loader-runner\\lib\\LoaderRunner.js:165:10)\n    at C:\\laragon\\www\\t\\o\\node_modules\\loader-runner\\lib\\LoaderRunner.js:173:18\n    at loadLoader (C:\\laragon\\www\\t\\o\\node_modules\\loader-runner\\lib\\loadLoader.js:36:3)\n    at iteratePitchingLoaders (C:\\laragon\\www\\t\\o\\node_modules\\loader-runner\\lib\\LoaderRunner.js:169:2)\n    at iteratePitchingLoaders (C:\\laragon\\www\\t\\o\\node_modules\\loader-runner\\lib\\LoaderRunner.js:165:10)\n    at C:\\laragon\\www\\t\\o\\node_modules\\loader-runner\\lib\\LoaderRunner.js:173:18\n    at loadLoader (C:\\laragon\\www\\t\\o\\node_modules\\loader-runner\\lib\\loadLoader.js:36:3)\n    at iteratePitchingLoaders (C:\\laragon\\www\\t\\o\\node_modules\\loader-runner\\lib\\LoaderRunner.js:169:2)\n    at iteratePitchingLoaders (C:\\laragon\\www\\t\\o\\node_modules\\loader-runner\\lib\\LoaderRunner.js:165:10)\n    at C:\\laragon\\www\\t\\o\\node_modules\\loader-runner\\lib\\LoaderRunner.js:173:18\n    at loadLoader (C:\\laragon\\www\\t\\o\\node_modules\\loader-runner\\lib\\loadLoader.js:36:3)\n    at iteratePitchingLoaders (C:\\laragon\\www\\t\\o\\node_modules\\loader-runner\\lib\\LoaderRunner.js:169:2)\n    at runLoaders (C:\\laragon\\www\\t\\o\\node_modules\\loader-runner\\lib\\LoaderRunner.js:362:2)\n    at NormalModule.doBuild (C:\\laragon\\www\\t\\o\\node_modules\\webpack\\lib\\NormalModule.js:179:3)\n    at NormalModule.build (C:\\laragon\\www\\t\\o\\node_modules\\webpack\\lib\\NormalModule.js:268:15)\n    at Compilation.buildModule (C:\\laragon\\www\\t\\o\\node_modules\\webpack\\lib\\Compilation.js:142:10)\n    at moduleFactory.create (C:\\laragon\\www\\t\\o\\node_modules\\webpack\\lib\\Compilation.js:429:9)\n    at C:\\laragon\\www\\t\\o\\node_modules\\webpack\\lib\\NormalModuleFactory.js:251:4\n    at C:\\laragon\\www\\t\\o\\node_modules\\webpack\\lib\\NormalModuleFactory.js:93:13\n    at C:\\laragon\\www\\t\\o\\node_modules\\tapable\\lib\\Tapable.js:268:11\n    at NormalModuleFactory.params.normalModuleFactory.plugin (C:\\laragon\\www\\t\\o\\node_modules\\webpack\\lib\\CompatibilityPlugin.js:52:5)\n    at NormalModuleFactory.applyPluginsAsyncWaterfall (C:\\laragon\\www\\t\\o\\node_modules\\tapable\\lib\\Tapable.js:272:13)\n    at onDoneResolving (C:\\laragon\\www\\t\\o\\node_modules\\webpack\\lib\\NormalModuleFactory.js:68:11)\n    at onDoneResolving (C:\\laragon\\www\\t\\o\\node_modules\\webpack\\lib\\NormalModuleFactory.js:197:6)\n    at process._tickCallback (internal/process/next_tick.js:61:11)");

/***/ }),
/* 2 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (immutable) */ __webpack_exports__["a"] = ajoutParImport;
function ajoutParImport() {
            $('#testlihp').html('Ok posé par un fichier importé en jQ.');
            $('#testlihp').css('border', '1px solid red').css('border-radius', '4px').css('padding', '5px 10px').css('background-color', '#fff');
            $('#testlihp').append(' <span style="font-size:.8em; font-style:italic; color:red">(Et chargé par webpack.)</span>');
}

/***/ }),
/* 3 */
/***/ (function(module, exports, __webpack_require__) {

__webpack_require__(0);
module.exports = __webpack_require__(1);


/***/ })
/******/ ]);