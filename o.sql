-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le :  jeu. 12 juil. 2018 à 09:01
-- Version du serveur :  5.7.19
-- Version de PHP :  7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `o`
--

-- --------------------------------------------------------

--
-- Structure de la table `backend_access_log`
--

CREATE TABLE `backend_access_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `backend_access_log`
--

INSERT INTO `backend_access_log` (`id`, `user_id`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 1, '127.0.0.1', '2018-04-18 09:54:31', '2018-04-18 09:54:31'),
(2, 1, '127.0.0.1', '2018-04-19 12:01:22', '2018-04-19 12:01:22'),
(3, 2, '127.0.0.1', '2018-04-30 08:58:37', '2018-04-30 08:58:37'),
(4, 1, '127.0.0.1', '2018-04-30 09:00:29', '2018-04-30 09:00:29'),
(5, 2, '127.0.0.1', '2018-04-30 09:03:35', '2018-04-30 09:03:35'),
(6, 1, '127.0.0.1', '2018-05-07 00:46:27', '2018-05-07 00:46:27'),
(7, 1, '127.0.0.1', '2018-05-09 07:20:45', '2018-05-09 07:20:45'),
(8, 1, '127.0.0.1', '2018-05-14 08:18:08', '2018-05-14 08:18:08'),
(9, 1, '127.0.0.1', '2018-05-16 20:22:37', '2018-05-16 20:22:37'),
(10, 1, '127.0.0.1', '2018-06-08 16:36:00', '2018-06-08 16:36:00'),
(11, 1, '127.0.0.1', '2018-06-17 17:41:04', '2018-06-17 17:41:04'),
(12, 1, '127.0.0.1', '2018-06-18 13:15:08', '2018-06-18 13:15:08'),
(13, 1, '127.0.0.1', '2018-07-01 11:15:41', '2018-07-01 11:15:41');

-- --------------------------------------------------------

--
-- Structure de la table `backend_users`
--

CREATE TABLE `backend_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `persist_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `is_activated` tinyint(1) NOT NULL DEFAULT '0',
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `backend_users`
--

INSERT INTO `backend_users` (`id`, `first_name`, `last_name`, `login`, `email`, `password`, `activation_code`, `persist_code`, `reset_password_code`, `permissions`, `is_activated`, `role_id`, `activated_at`, `last_login`, `created_at`, `updated_at`, `is_superuser`) VALUES
(1, 'Admin', 'Person', 'admin', 'grcote7@gmail.com', '$2y$10$XfrZnduzmCpdcl1DwxSWYe/mYDBXvYRh8vNAdW.AqQV1wucQdHW8a', NULL, '$2y$10$viEIlzgMJhu3vviCBA7Zi.hkc/UKnROMOi7m/oCor4ob4nkGO.XZq', NULL, '', 1, 2, NULL, '2018-07-01 11:15:40', '2018-04-18 09:53:43', '2018-07-01 11:15:40', 1),
(2, 'editor', '', 'editor', 'editor@test.com', '$2y$10$OSqDqp2NQH4Ff6Thqvu/BuCHh2LKJQzTWwUCPqk.nCVp0an1mWDE2', NULL, '$2y$10$fTKhhHKo8evYYfKub0xbluz0Cugs27ZZpQsdKI1fIl.nI97UjyKom', NULL, '', 0, 3, NULL, '2018-04-30 09:03:34', '2018-04-30 08:56:17', '2018-04-30 09:03:34', 0);

-- --------------------------------------------------------

--
-- Structure de la table `backend_users_groups`
--

CREATE TABLE `backend_users_groups` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `backend_users_groups`
--

INSERT INTO `backend_users_groups` (`user_id`, `user_group_id`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `backend_user_groups`
--

CREATE TABLE `backend_user_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_new_user_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `backend_user_groups`
--

INSERT INTO `backend_user_groups` (`id`, `name`, `created_at`, `updated_at`, `code`, `description`, `is_new_user_default`) VALUES
(1, 'Owners', '2018-04-18 09:53:43', '2018-04-18 09:53:43', 'owners', 'Default group for website owners.', 0),
(2, 'Editors', '2018-04-30 08:52:02', '2018-04-30 08:55:08', '', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `backend_user_preferences`
--

CREATE TABLE `backend_user_preferences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `backend_user_roles`
--

CREATE TABLE `backend_user_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `is_system` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `backend_user_roles`
--

INSERT INTO `backend_user_roles` (`id`, `name`, `code`, `description`, `permissions`, `is_system`, `created_at`, `updated_at`) VALUES
(1, 'Publisher', 'publisher', 'Site editor with access to publishing tools.', '', 1, '2018-04-18 09:53:43', '2018-04-18 09:53:43'),
(2, 'Developer', 'developer', 'Site administrator with access to developer tools.', '', 1, '2018-04-18 09:53:43', '2018-04-18 09:53:43'),
(3, 'Editors', '', '', '{\"rainlab.blog.access_publish\":\"1\",\"rainlab.blog.access_posts\":\"1\",\"rainlab.blog.access_categories\":\"1\",\"manage_movies\":\"1\"}', 0, '2018-04-30 08:54:34', '2018-04-30 09:05:40');

-- --------------------------------------------------------

--
-- Structure de la table `backend_user_throttle`
--

CREATE TABLE `backend_user_throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `is_suspended` tinyint(1) NOT NULL DEFAULT '0',
  `suspended_at` timestamp NULL DEFAULT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT '0',
  `banned_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `backend_user_throttle`
--

INSERT INTO `backend_user_throttle` (`id`, `user_id`, `ip_address`, `attempts`, `last_attempt_at`, `is_suspended`, `suspended_at`, `is_banned`, `banned_at`) VALUES
(1, 1, '127.0.0.1', 0, NULL, 0, NULL, 0, NULL),
(2, 2, '127.0.0.1', 0, NULL, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('octobercms-php-file-data', 's:816:\"YToyOntzOjUxOiJDOlxsYXJhZ29uXHd3d1xvL3RoZW1lcy9vbHltcG9zL2xheW91dHMvZGVmYXVsdC5odG0iO2E6NTp7czo4OiJmaWxlUGF0aCI7czo1NjoiQzpcbGFyYWdvblx3d3dcb1xzdG9yYWdlL2Ntcy9jYWNoZS9hZi82Mi9kZWZhdWx0Lmh0bS5waHAiO3M6OToiY2xhc3NOYW1lIjtzOjYzOiJDbXM1YWRlOTA5ZjQ5MjZhMDUzMDM1NzUzX2UzNzYzZjU3Mzc5MzM2OWRhNTVlYjBlYTVkMGJmZTRiQ2xhc3MiO3M6Njoic291cmNlIjtzOjEwOiJmaWxlLWNhY2hlIjtzOjY6Im9mZnNldCI7aTowO3M6NToibXRpbWUiO2k6MTUyNDE3Mjg3NTt9czo0ODoiQzpcbGFyYWdvblx3d3dcby90aGVtZXMvb2x5bXBvcy9wYWdlcy9nZW5yZXMuaHRtIjthOjU6e3M6ODoiZmlsZVBhdGgiO3M6NTU6IkM6XGxhcmFnb25cd3d3XG9cc3RvcmFnZS9jbXMvY2FjaGUvYzIvYjcvZ2VucmVzLmh0bS5waHAiO3M6OToiY2xhc3NOYW1lIjtzOjYzOiJDbXM1YWRlOTA5ZjRlYTlhMTAzNjk2MTI5X2UzMzI4ZGY3M2VlYjQ2YjA4NjI2ODhhOWRhYzQzMjJjQ2xhc3MiO3M6Njoic291cmNlIjtzOjEwOiJmaWxlLWNhY2hlIjtzOjY6Im9mZnNldCI7aTowO3M6NToibXRpbWUiO2k6MTUyNDUzNTMwMzt9fQ==\";', 1524621947),
('octobercms::theme.active', 's:7:\"olympos\";', 1524621946),
('octoberlayouts381587816', 'a:1:{s:11:\"default.htm\";a:6:{s:8:\"fileName\";s:11:\"default.htm\";s:7:\"content\";s:1097:\"description = \"Default layout\"\r\n==\r\n<!DOCTYPE html>\r\n<html>\r\n    <head>\r\n        <meta charset=\"utf-8\">\r\n        <title>Olympos - {{ this.page.title }}</title>\r\n        <meta name=\"description\" content=\"{{ this.page.meta_description }}\">\r\n        <meta name=\"title\" content=\"{{ this.page.meta_title }}\">\r\n        <meta name=\"author\" content=\"OctoberCMS\">\r\n        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n        <meta name=\"generator\" content=\"OctoberCMS\">\r\n        <link rel=\"icon\" type=\"image/png\" href=\"{{ \'assets/images/october.png\'|theme }}\">\r\n        <link href=\"{{ \'assets/compiled/css/style.css\'|theme }}\" rel=\"stylesheet\">\r\n        {% styles %}\r\n    </head>\r\n    <body>\r\n\r\n        {% partial \"header\" %}\r\n\r\n        <!-- Content -->\r\n        <section id=\"layout-content\" class=\"container clearfix\">\r\n            {% page %}\r\n        </section>\r\n\r\n         {% partial \"footer\" %}\r\n\r\n        <!-- Scripts -->\r\n        <script src=\"{{ \'assets/compiled/js/all.js\'|theme }}\"></script>\r\n        {% framework extras %}\r\n        {% scripts %}\r\n\r\n    </body>\r\n</html>\";s:5:\"mtime\";i:1524172875;s:6:\"markup\";s:1061:\"<!DOCTYPE html>\r\n<html>\r\n    <head>\r\n        <meta charset=\"utf-8\">\r\n        <title>Olympos - {{ this.page.title }}</title>\r\n        <meta name=\"description\" content=\"{{ this.page.meta_description }}\">\r\n        <meta name=\"title\" content=\"{{ this.page.meta_title }}\">\r\n        <meta name=\"author\" content=\"OctoberCMS\">\r\n        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n        <meta name=\"generator\" content=\"OctoberCMS\">\r\n        <link rel=\"icon\" type=\"image/png\" href=\"{{ \'assets/images/october.png\'|theme }}\">\r\n        <link href=\"{{ \'assets/compiled/css/style.css\'|theme }}\" rel=\"stylesheet\">\r\n        {% styles %}\r\n    </head>\r\n    <body>\r\n\r\n        {% partial \"header\" %}\r\n\r\n        <!-- Content -->\r\n        <section id=\"layout-content\" class=\"container clearfix\">\r\n            {% page %}\r\n        </section>\r\n\r\n         {% partial \"footer\" %}\r\n\r\n        <!-- Scripts -->\r\n        <script src=\"{{ \'assets/compiled/js/all.js\'|theme }}\"></script>\r\n        {% framework extras %}\r\n        {% scripts %}\r\n\r\n    </body>\r\n</html>\";s:4:\"code\";N;s:11:\"description\";s:14:\"Default layout\";}}', 1524536146),
('octoberpages1902372146', 'a:1:{s:10:\"genres.htm\";a:10:{s:8:\"fileName\";s:10:\"genres.htm\";s:7:\"content\";s:628:\"title = \"Genres\"\r\nurl = \"/genres/:slug\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[builderDetails]\r\nmodelClass = \"Grcote7\\Movies\\Models\\Genre\"\r\nidentifierValue = \"{{ :slug }}\"\r\nmodelKeyColumn = \"slug\"\r\ndisplayColumn = \"genre_title\"\r\nnotFoundMessage = \"Record not found\"\r\n==\r\n{% set record = builderDetails.record %}\r\n{% set displayColumn = builderDetails.displayColumn %}\r\n{% set notFoundMessage = builderDetails.notFoundMessage %}\r\n\r\n{% if record %}\r\n    <h2>{{ attribute(record, displayColumn) }}</h2>\r\n\r\n    {% for movie in record.movies %}\r\n       Test<br>\r\n    {% endfor %}\r\n\r\n{% else %}\r\n    {{ notFoundMessage }}\r\n{% endif %}\";s:5:\"mtime\";i:1524535303;s:6:\"markup\";s:357:\"{% set record = builderDetails.record %}\r\n{% set displayColumn = builderDetails.displayColumn %}\r\n{% set notFoundMessage = builderDetails.notFoundMessage %}\r\n\r\n{% if record %}\r\n    <h2>{{ attribute(record, displayColumn) }}</h2>\r\n\r\n    {% for movie in record.movies %}\r\n       Test<br>\r\n    {% endfor %}\r\n\r\n{% else %}\r\n    {{ notFoundMessage }}\r\n{% endif %}\";s:4:\"code\";N;s:5:\"title\";s:6:\"Genres\";s:3:\"url\";s:13:\"/genres/:slug\";s:6:\"layout\";s:7:\"default\";s:9:\"is_hidden\";s:1:\"0\";s:14:\"builderDetails\";a:5:{s:10:\"modelClass\";s:27:\"Grcote7\\Movies\\Models\\Genre\";s:15:\"identifierValue\";s:11:\"{{ :slug }}\";s:14:\"modelKeyColumn\";s:4:\"slug\";s:13:\"displayColumn\";s:11:\"genre_title\";s:15:\"notFoundMessage\";s:16:\"Record not found\";}}}', 1524536146),
('octoberpages2908187412', 'a:1:{s:12:\"homepage.htm\";a:9:{s:8:\"fileName\";s:12:\"homepage.htm\";s:7:\"content\";s:1435:\"title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n==\r\n<h2>This is our homepage ! Yay !</h2>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Ab accusantium aliquid aperiam at, atque delectus et ex explicabo iusto laboriosam maxime modi neque omnis\r\n  quibusdamquis, ratione repellat repellendus sint sit soluta tempore velit veritatis voluptates? Laborum,\r\n  voluptate.</p>\r\n<p>Libero, molestias omnis optio provident quia quisquam quod unde vero? Ad architecto iste odio officia quia!</p>\r\n<p>Animi architecto at est explicabo maiores, quibusdam repellat? Alias dolor error, exercitationem odio odit officia\r\n  optio placeat quod similique voluptates! Explicabo ipsa minus natus necessitatibus neque nihil odio, ratione\r\n  delectus, doloribus et fugit quae sapiente velit veritatis! Cum, ex, voluptatum! Suscipit, tempore?</p><p>Blanditiis\r\n  dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium reiciendis\r\n  sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint voluptatem.\r\n  Cupiditate, optio!</p>\r\n\";s:5:\"mtime\";i:1524527037;s:6:\"markup\";s:1363:\"<h2>This is our homepage ! Yay !</h2>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Ab accusantium aliquid aperiam at, atque delectus et ex explicabo iusto laboriosam maxime modi neque omnis\r\n  quibusdamquis, ratione repellat repellendus sint sit soluta tempore velit veritatis voluptates? Laborum,\r\n  voluptate.</p>\r\n<p>Libero, molestias omnis optio provident quia quisquam quod unde vero? Ad architecto iste odio officia quia!</p>\r\n<p>Animi architecto at est explicabo maiores, quibusdam repellat? Alias dolor error, exercitationem odio odit officia\r\n  optio placeat quod similique voluptates! Explicabo ipsa minus natus necessitatibus neque nihil odio, ratione\r\n  delectus, doloribus et fugit quae sapiente velit veritatis! Cum, ex, voluptatum! Suscipit, tempore?</p><p>Blanditiis\r\n  dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium reiciendis\r\n  sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint voluptatem.\r\n  Cupiditate, optio!</p>\";s:4:\"code\";N;s:5:\"title\";s:8:\"Homepage\";s:3:\"url\";s:1:\"/\";s:6:\"layout\";s:7:\"default\";s:9:\"is_hidden\";s:1:\"0\";}}', 1524536146),
('octoberpages3005272367', 'a:1:{s:16:\"movie-single.htm\";a:10:{s:8:\"fileName\";s:16:\"movie-single.htm\";s:7:\"content\";s:1018:\"title = \"Movie single\"\r\nurl = \"/movies/movie/:slug\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[builderDetails]\r\nmodelClass = \"Grcote7\\Movies\\Models\\Movie\"\r\nidentifierValue = \"{{ :slug }}\"\r\nmodelKeyColumn = \"slug\"\r\ndisplayColumn = \"name\"\r\nnotFoundMessage = \"Record not found\"\r\n==\r\n{% set record = builderDetails.record %}\r\n{% set displayColumn = builderDetails.displayColumn %}\r\n{% set notFoundMessage = builderDetails.notFoundMessage %}\r\n\r\n{% if record %}\r\n\r\n<h2>{{ record.name }}</h2>\r\n\r\n<img src=\"{{record.poster.thumb(200,auto) }}\">\r\n\r\n<h4>{{ record.year }}</h4>\r\n\r\n<h3>Genres</h3>\r\n{% for genre in record.genres %}\r\n<a href=\"/genres/{{ genre.slug }}\">{{genre.genre_title}}</a><br>\r\n{% endfor %}\r\n\r\n\r\n<h3>Description</h3>\r\n{{ record.description|raw }}\r\n\r\n<ul class=\"gallery clearfix\">\r\n  {% for image in record.movie_gallery %}\r\n  <li>\r\n    <a href=\"{{image.path}}\">\r\n      <img src=\"{{image.thumb(80,80,{\'mode\':\'crop\'}) }}\">\r\n    </a>\r\n  </li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n{% else %}\r\n{{ notFoundMessage }}\r\n{% endif %}\r\n\";s:5:\"mtime\";i:1524534287;s:6:\"markup\";s:740:\"{% set record = builderDetails.record %}\r\n{% set displayColumn = builderDetails.displayColumn %}\r\n{% set notFoundMessage = builderDetails.notFoundMessage %}\r\n\r\n{% if record %}\r\n\r\n<h2>{{ record.name }}</h2>\r\n\r\n<img src=\"{{record.poster.thumb(200,auto) }}\">\r\n\r\n<h4>{{ record.year }}</h4>\r\n\r\n<h3>Genres</h3>\r\n{% for genre in record.genres %}\r\n<a href=\"/genres/{{ genre.slug }}\">{{genre.genre_title}}</a><br>\r\n{% endfor %}\r\n\r\n\r\n<h3>Description</h3>\r\n{{ record.description|raw }}\r\n\r\n<ul class=\"gallery clearfix\">\r\n  {% for image in record.movie_gallery %}\r\n  <li>\r\n    <a href=\"{{image.path}}\">\r\n      <img src=\"{{image.thumb(80,80,{\'mode\':\'crop\'}) }}\">\r\n    </a>\r\n  </li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n{% else %}\r\n{{ notFoundMessage }}\r\n{% endif %}\";s:4:\"code\";N;s:5:\"title\";s:12:\"Movie single\";s:3:\"url\";s:19:\"/movies/movie/:slug\";s:6:\"layout\";s:7:\"default\";s:9:\"is_hidden\";s:1:\"0\";s:14:\"builderDetails\";a:5:{s:10:\"modelClass\";s:27:\"Grcote7\\Movies\\Models\\Movie\";s:15:\"identifierValue\";s:11:\"{{ :slug }}\";s:14:\"modelKeyColumn\";s:4:\"slug\";s:13:\"displayColumn\";s:4:\"name\";s:15:\"notFoundMessage\";s:16:\"Record not found\";}}}', 1524536146),
('octoberpages3493126425', 'a:1:{s:10:\"movies.htm\";a:10:{s:8:\"fileName\";s:10:\"movies.htm\";s:7:\"content\";s:1970:\"title = \"Movies\"\r\nurl = \"/movies/:page?\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Movies\\Models\\Movie\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"name\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"movie-single\"\r\ndetailsKeyColumn = \"slug\"\r\ndetailsUrlParameter = \"slug\"\r\nrecordsPerPage = 7\r\npageNumber = \"{{ :page }}\"\r\n==\r\n{% set records = builderList.records %}\r\n{% set displayColumn = builderList.displayColumn %}\r\n{% set noRecordsMessage = builderList.noRecordsMessage %}\r\n{% set detailsPage = builderList.detailsPage %}\r\n{% set detailsKeyColumn = builderList.detailsKeyColumn %}\r\n{% set detailsUrlParameter = builderList.detailsUrlParameter %}\r\n\r\n<ul class=\"record-list\">\r\n  {% for record in records %}\r\n  <li>\r\n    {# Use spaceless tag to remove spaces inside the A tag. #}\r\n    <h3>\r\n      {% spaceless %}\r\n      {% if detailsPage %}\r\n      <a href=\"{{ detailsPage|page({ (detailsUrlParameter): attribute(record, detailsKeyColumn) }) }}\">\r\n        {% endif %}\r\n\r\n        {{ record.name }} - {{ record.year }}\r\n\r\n        {% if detailsPage %}\r\n      </a>\r\n      {% endif %}\r\n      {% endspaceless %}\r\n    </h3>\r\n\r\n    {{html_limit(record.description,150)|raw}}\r\n\r\n  </li>\r\n  {% else %}\r\n  <li class=\"no-data\">{{ noRecordsMessage }}</li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n{% if records.lastPage > 1 %}\r\n<ul class=\"pagination\">\r\n  {% if records.currentPage > 1 %}\r\n  <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage-1) }) }}\">&larr; Prev</a></li>\r\n  {% endif %}\r\n\r\n  {% for page in 1..records.lastPage %}\r\n  <li class=\"{{ records.currentPage == page ? \'active\' : null }}\">\r\n    <a href=\"{{ this.page.baseFileName|page({ (pageParam): page }) }}\">{{ page }}</a>\r\n  </li>\r\n  {% endfor %}\r\n\r\n  {% if records.lastPage > records.currentPage %}\r\n  <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage+1) }) }}\">Next &rarr;</a></li>\r\n  {% endif %}\r\n</ul>\r\n{% endif %}\";s:5:\"mtime\";i:1524529189;s:6:\"markup\";s:1588:\"{% set records = builderList.records %}\r\n{% set displayColumn = builderList.displayColumn %}\r\n{% set noRecordsMessage = builderList.noRecordsMessage %}\r\n{% set detailsPage = builderList.detailsPage %}\r\n{% set detailsKeyColumn = builderList.detailsKeyColumn %}\r\n{% set detailsUrlParameter = builderList.detailsUrlParameter %}\r\n\r\n<ul class=\"record-list\">\r\n  {% for record in records %}\r\n  <li>\r\n    {# Use spaceless tag to remove spaces inside the A tag. #}\r\n    <h3>\r\n      {% spaceless %}\r\n      {% if detailsPage %}\r\n      <a href=\"{{ detailsPage|page({ (detailsUrlParameter): attribute(record, detailsKeyColumn) }) }}\">\r\n        {% endif %}\r\n\r\n        {{ record.name }} - {{ record.year }}\r\n\r\n        {% if detailsPage %}\r\n      </a>\r\n      {% endif %}\r\n      {% endspaceless %}\r\n    </h3>\r\n\r\n    {{html_limit(record.description,150)|raw}}\r\n\r\n  </li>\r\n  {% else %}\r\n  <li class=\"no-data\">{{ noRecordsMessage }}</li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n{% if records.lastPage > 1 %}\r\n<ul class=\"pagination\">\r\n  {% if records.currentPage > 1 %}\r\n  <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage-1) }) }}\">&larr; Prev</a></li>\r\n  {% endif %}\r\n\r\n  {% for page in 1..records.lastPage %}\r\n  <li class=\"{{ records.currentPage == page ? \'active\' : null }}\">\r\n    <a href=\"{{ this.page.baseFileName|page({ (pageParam): page }) }}\">{{ page }}</a>\r\n  </li>\r\n  {% endfor %}\r\n\r\n  {% if records.lastPage > records.currentPage %}\r\n  <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage+1) }) }}\">Next &rarr;</a></li>\r\n  {% endif %}\r\n</ul>\r\n{% endif %}\";s:4:\"code\";N;s:5:\"title\";s:6:\"Movies\";s:3:\"url\";s:14:\"/movies/:page?\";s:6:\"layout\";s:7:\"default\";s:9:\"is_hidden\";s:1:\"0\";s:11:\"builderList\";a:10:{s:10:\"modelClass\";s:27:\"Grcote7\\Movies\\Models\\Movie\";s:5:\"scope\";s:1:\"-\";s:10:\"scopeValue\";s:12:\"{{ :scope }}\";s:13:\"displayColumn\";s:4:\"name\";s:16:\"noRecordsMessage\";s:16:\"No records found\";s:11:\"detailsPage\";s:12:\"movie-single\";s:16:\"detailsKeyColumn\";s:4:\"slug\";s:19:\"detailsUrlParameter\";s:4:\"slug\";s:14:\"recordsPerPage\";s:1:\"7\";s:10:\"pageNumber\";s:11:\"{{ :page }}\";}}}', 1524536146),
('octobersystem::settings.cms_maintenance_settings', 'a:0:{}', 1524621946),
('octobersystem::settings.system_log_settings', 'a:1:{i:0;O:8:\"stdClass\":3:{s:2:\"id\";i:2;s:4:\"item\";s:19:\"system_log_settings\";s:5:\"value\";s:53:\"{\"log_events\":\"1\",\"log_requests\":\"1\",\"log_theme\":\"1\"}\";}}', 1524621947);

-- --------------------------------------------------------

--
-- Structure de la table `cms_theme_data`
--

CREATE TABLE `cms_theme_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cms_theme_data`
--

INSERT INTO `cms_theme_data` (`id`, `theme`, `data`, `created_at`, `updated_at`) VALUES
(1, 'olympos', '{\"site_name\":\"O Tuto\",\"site_color\":\"tomato \\/ cornsilk\",\"link_color\":\"#d35400\"}', '2018-05-17 22:15:25', '2018-05-17 22:35:46'),
(2, 'jumplink-viola', '{\"color\":\"blue\",\"site_name\":\"Healthy Teeth\",\"company_name\":\"Healthy Teeth\",\"phone_number\":\"+01 101 01 01 01 01\",\"email_address\":\"info@domain.ltd\",\"bs4-white\":\"#fff\",\"bs4-black\":\"#000\",\"bs4-red\":\"#d9534f\",\"bs4-orange\":\"#f0ad4e\",\"bs4-yellow\":\"#ffd500\",\"bs4-green\":\"#5cb85c\",\"bs4-blue\":\"#0275d8\",\"bs4-teal\":\"#5bc0de\",\"bs4-pink\":\"#ff5b77\",\"bs4-purple\":\"#613d7c\",\"bs4-gray-dark\":\"#292b2c\",\"bs4-gray\":\"#464a4c\",\"bs4-gray-light\":\"#636c72\",\"bs4-gray-lighter\":\"#eceeef\",\"bs4-gray-lightest\":\"#f7f7f9\",\"bs4-brand-primary\":\"$blue\",\"bs4-brand-success\":\"$green\",\"bs4-brand-info\":\"$teal\",\"bs4-brand-warning\":\"$orange\",\"bs4-brand-danger\":\"$red\",\"bs4-brand-inverse\":\"$gray-dark\",\"bs4-enable-rounded\":true,\"bs4-enable-shadows\":false,\"bs4-enable-gradients\":false,\"bs4-enable-transitions\":true,\"bs4-enable-hover-media-query\":false,\"bs4-enable-grid-classes\":true,\"bs4-enable-print-styles\":true,\"bs4-spacer\":\"1rem\",\"bs4-spacer-x\":\"$spacer\",\"bs4-spacer-y\":\"$spacer\",\"bs4-spacers-x-0\":\"0\",\"bs4-spacers-y-0\":\"0\",\"bs4-spacers-x-1\":\"$spacer-x * .25\",\"bs4-spacers-y-1\":\"$spacer-y * .25\",\"bs4-spacers-x-2\":\"($spacer-x * .5)\",\"bs4-spacers-y-2\":\"($spacer-y * .5)\",\"bs4-spacers-x-3\":\"($spacer-x)\",\"bs4-spacers-y-3\":\"($spacer-y)\",\"bs4-spacers-x-4\":\"($spacer-x * 1.5)\",\"bs4-spacers-y-4\":\"($spacer-y * 1.5)\",\"bs4-spacers-x-5\":\"($spacer-x * 3)\",\"bs4-spacers-y-5\":\"($spacer-y * 3)\",\"bs4-border-width\":\"1px\",\"bs4-body-bg\":\"$white\",\"bs4-body-color\":\"$gray-dark\",\"bs4-inverse-bg\":\"$gray-dark\",\"bs4-inverse-color\":\"$gray-lighter\",\"bs4-link-color\":\"$brand-primary\",\"bs4-link-decoration\":\"none\",\"bs4-link-hover-color\":\"darken($link-color, 15%)\",\"bs4-link-hover-decoration\":\"underline\",\"bs4-grid-breakpoints-xs\":\"0\",\"bs4-grid-breakpoints-sm\":\"576px\",\"bs4-grid-breakpoints-md\":\"768px\",\"bs4-grid-breakpoints-lg\":\"992px\",\"bs4-grid-breakpoints-xl\":\"1200px\",\"bs4-container-max-widths-xs\":\"null\",\"bs4-container-max-widths-sm\":\"540px\",\"bs4-container-max-widths-md\":\"720px\",\"bs4-container-max-widths-lg\":\"960px\",\"bs4-container-max-widths-xl\":\"1140px\",\"bs4-grid-columns\":\"12\",\"bs4-grid-gutter-width-base\":\"30px\",\"bs4-grid-gutter-widths-xs\":\"$grid-gutter-width-base\",\"bs4-grid-gutter-widths-sm\":\"$grid-gutter-width-base\",\"bs4-grid-gutter-widths-md\":\"$grid-gutter-width-base\",\"bs4-grid-gutter-widths-lg\":\"$grid-gutter-width-base\",\"bs4-grid-gutter-widths-xl\":\"$grid-gutter-width-base\",\"bs4-font-family-sans-serif\":\"-apple-system, system-ui, BlinkMacSystemFont, \\\"Segoe UI\\\", Roboto, \\\"Helvetica Neue\\\", Arial, sans-serif\",\"bs4-font-family-serif\":\"Georgia, \\\"Times New Roman\\\", Times, serif\",\"bs4-font-family-monospace\":\"Menlo, Monaco, Consolas, \\\"Liberation Mono\\\", \\\"Courier New\\\", monospace\",\"bs4-font-family-base\":\"$font-family-sans-serif\",\"bs4-font-size-root\":\"16px\",\"bs4-font-size-base\":\"1rem\",\"bs4-font-size-lg\":\"1.25rem\",\"bs4-font-size-sm\":\".875rem\",\"bs4-font-size-xs\":\".75rem\",\"bs4-font-weight-normal\":\"normal\",\"bs4-font-weight-bold\":\"bold\",\"bs4-font-weight-base\":\"$font-weight-normal\",\"bs4-line-height-base\":\"1.5\",\"bs4-font-size-h1\":\"2.5rem\",\"bs4-font-size-h2\":\"2rem\",\"bs4-font-size-h3\":\"1.75rem\",\"bs4-font-size-h4\":\"1.5rem\",\"bs4-font-size-h5\":\"1.25rem\",\"bs4-font-size-h6\":\"1rem\",\"bs4-headings-margin-bottom\":\"($spacer \\/ 2)\",\"bs4-headings-font-family\":\"inherit\",\"bs4-headings-font-weight\":\"500\",\"bs4-headings-line-height\":\"1.1\",\"bs4-headings-color\":\"inherit\",\"bs4-display1-size\":\"6rem\",\"bs4-display2-size\":\"5.5rem\",\"bs4-display3-size\":\"4.5rem\",\"bs4-display4-size\":\"3.5rem\",\"bs4-display1-weight\":\"300\",\"bs4-display2-weight\":\"300\",\"bs4-display3-weight\":\"300\",\"bs4-display4-weight\":\"300\",\"bs4-display-line-height\":\"$headings-line-height\",\"bs4-lead-font-size\":\"1.25rem\",\"bs4-lead-font-weight\":\"300\",\"bs4-small-font-size\":\"80%\",\"bs4-text-muted\":\"$gray-light\",\"bs4-abbr-border-color\":\"$gray-light\",\"bs4-blockquote-small-color\":\"$gray-light\",\"bs4-blockquote-font-size\":\"($font-size-base * 1.25)\",\"bs4-blockquote-border-color\":\"$gray-lighter\",\"bs4-blockquote-border-width\":\".25rem\",\"bs4-hr-border-color\":\"rgba($black,.1)\",\"bs4-hr-border-width\":\"$border-width\",\"bs4-mark-padding\":\".2em\",\"bs4-dt-font-weight\":\"$font-weight-bold\",\"bs4-kbd-box-shadow\":\"inset 0 -.1rem 0 rgba($black,.25)\",\"bs4-nested-kbd-font-weight\":\"$font-weight-bold\",\"bs4-list-inline-padding\":\"5px\",\"bs4-line-height-lg\":\"(4 \\/ 3)\",\"bs4-line-height-sm\":\"1.5\",\"bs4-border-radius\":\".25rem\",\"bs4-border-radius-lg\":\".3rem\",\"bs4-border-radius-sm\":\".2rem\",\"bs4-component-active-color\":\"$white\",\"bs4-component-active-bg\":\"$brand-primary\",\"bs4-caret-width\":\".3em\",\"bs4-caret-width-lg\":\"$caret-width\",\"bs4-transition-base\":\"all .2s ease-in-out\",\"bs4-transition-fade\":\"opacity .15s linear\",\"bs4-transition-collapse\":\"height .35s ease\",\"bs4-table-cell-padding\":\".75rem\",\"bs4-table-sm-cell-padding\":\".3rem\",\"bs4-table-bg\":\"transparent\",\"bs4-table-inverse-bg\":\"$gray-dark\",\"bs4-table-inverse-color\":\"$body-bg\",\"bs4-table-bg-accent\":\"rgba($black,.05)\",\"bs4-table-bg-hover\":\"rgba($black,.075)\",\"bs4-table-bg-active\":\"$table-bg-hover\",\"bs4-table-head-bg\":\"$gray-lighter\",\"bs4-table-head-color\":\"$gray\",\"bs4-table-border-width\":\"$border-width\",\"bs4-table-border-color\":\"$gray-lighter\",\"bs4-btn-padding-x\":\"1rem\",\"bs4-btn-padding-y\":\".5rem\",\"bs4-btn-line-height\":\"1.25\",\"bs4-btn-font-weight\":\"$font-weight-normal\",\"bs4-btn-box-shadow\":\"inset 0 1px 0 rgba($white,.15), 0 1px 1px rgba($black,.075)\",\"bs4-btn-focus-box-shadow\":\"0 0 0 2px rgba($brand-primary, .25)\",\"bs4-btn-active-box-shadow\":\"inset 0 3px 5px rgba($black,.125)\",\"bs4-btn-primary-color\":\"$white\",\"bs4-btn-primary-bg\":\"$brand-primary\",\"bs4-btn-primary-border\":\"$btn-primary-bg\",\"bs4-btn-secondary-color\":\"$gray-dark\",\"bs4-btn-secondary-bg\":\"$white\",\"bs4-btn-secondary-border\":\"#ccc\",\"bs4-btn-info-color\":\"$white\",\"bs4-btn-info-bg\":\"$brand-info\",\"bs4-btn-info-border\":\"$btn-info-bg\",\"bs4-btn-success-color\":\"$white\",\"bs4-btn-success-bg\":\"$brand-success\",\"bs4-btn-success-border\":\"$btn-success-bg\",\"bs4-btn-warning-color\":\"$white\",\"bs4-btn-warning-bg\":\"$brand-warning\",\"bs4-btn-warning-border\":\"$btn-warning-bg\",\"bs4-btn-danger-color\":\"$white\",\"bs4-btn-danger-bg\":\"$brand-danger\",\"bs4-btn-danger-border\":\"$btn-danger-bg\",\"bs4-btn-link-disabled-color\":\"$gray-light\",\"bs4-btn-padding-x-sm\":\".5rem\",\"bs4-btn-padding-y-sm\":\".25rem\",\"bs4-btn-padding-x-lg\":\"1.5rem\",\"bs4-btn-padding-y-lg\":\".75rem\",\"bs4-btn-block-spacing-y\":\".5rem\",\"bs4-btn-toolbar-margin\":\".5rem\",\"bs4-btn-border-radius\":\"$border-radius\",\"bs4-btn-border-radius-lg\":\"$border-radius-lg\",\"bs4-btn-border-radius-sm\":\"$border-radius-sm\",\"bs4-btn-transition\":\"all .2s ease-in-out\",\"bs4-input-padding-x\":\".75rem\",\"bs4-input-padding-y\":\".5rem\",\"bs4-input-line-height\":\"1.25\",\"bs4-input-bg\":\"$white\",\"bs4-input-bg-disabled\":\"$gray-lighter\",\"bs4-input-color\":\"$gray\",\"bs4-input-border-color\":\"rgba($black,.15)\",\"bs4-input-btn-border-width\":\"$border-width\",\"bs4-input-box-shadow\":\"inset 0 1px 1px rgba($black,.075)\",\"bs4-input-border-radius\":\"$border-radius\",\"bs4-input-border-radius-lg\":\"$border-radius-lg\",\"bs4-input-border-radius-sm\":\"$border-radius-sm\",\"bs4-input-bg-focus\":\"$input-bg\",\"bs4-input-border-focus\":\"lighten($brand-primary, 25%)\",\"bs4-input-box-shadow-focus\":\"$input-box-shadow, rgba($input-border-focus, .6)\",\"bs4-input-color-focus\":\"$input-color\",\"bs4-input-color-placeholder\":\"$gray-light\",\"bs4-input-padding-x-sm\":\".5rem\",\"bs4-input-padding-y-sm\":\".25rem\",\"bs4-input-padding-x-lg\":\"1.5rem\",\"bs4-input-padding-y-lg\":\".75rem\",\"bs4-input-height\":\"(($font-size-base * $input-line-height) + ($input-padding-y * 2))\",\"bs4-input-height-lg\":\"(($font-size-lg * $line-height-lg) + ($input-padding-y-lg * 2))\",\"bs4-input-height-sm\":\"(($font-size-sm * $line-height-sm) + ($input-padding-y-sm * 2))\",\"bs4-input-transition\":\"border-color ease-in-out .15s, box-shadow ease-in-out .15s\",\"bs4-form-text-margin-top\":\".25rem\",\"bs4-form-feedback-margin-top\":\"$form-text-margin-top\",\"bs4-form-check-margin-bottom\":\".5rem\",\"bs4-form-check-input-gutter\":\"1.25rem\",\"bs4-form-check-input-margin-y\":\".25rem\",\"bs4-form-check-input-margin-x\":\".25rem\",\"bs4-form-check-inline-margin-x\":\".75rem\",\"bs4-form-group-margin-bottom\":\"$spacer-y\",\"bs4-input-group-addon-bg\":\"$gray-lighter\",\"bs4-input-group-addon-border-color\":\"$input-border-color\",\"bs4-cursor-disabled\":\"not-allowed\",\"bs4-custom-control-gutter\":\"1.5rem\",\"bs4-custom-control-spacer-x\":\"1rem\",\"bs4-custom-control-spacer-y\":\".25rem\",\"bs4-custom-control-indicator-size\":\"1rem\",\"bs4-custom-control-indicator-margin-y\":\"(($line-height-base * 1rem) - $custom-control-indicator-size) \\/ -2\",\"bs4-custom-control-indicator-bg\":\"#ddd\",\"bs4-custom-control-indicator-bg-size\":\"50% 50%\",\"bs4-custom-control-indicator-box-shadow\":\"inset 0 .25rem .25rem rgba($black,.1)\",\"bs4-custom-control-disabled-cursor\":\"$cursor-disabled\",\"bs4-custom-control-disabled-indicator-bg\":\"$gray-lighter\",\"bs4-custom-control-disabled-description-color\":\"$gray-light\",\"bs4-custom-control-checked-indicator-color\":\"$white\",\"bs4-custom-control-checked-indicator-bg\":\"$brand-primary\",\"bs4-custom-control-checked-indicator-box-shadow\":\"none\",\"bs4-custom-control-focus-indicator-box-shadow\":\"0 0 0 1px $body-bg, 0 0 0 3px $brand-primary\",\"bs4-custom-control-active-indicator-color\":\"$white\",\"bs4-custom-control-active-indicator-bg\":\"lighten($brand-primary, 35%)\",\"bs4-custom-control-active-indicator-box-shadow\":\"none\",\"bs4-custom-checkbox-radius\":\"$border-radius\",\"bs4-custom-checkbox-indeterminate-bg\":\"$brand-primary\",\"bs4-custom-checkbox-indeterminate-indicator-color\":\"$custom-control-checked-indicator-color\",\"bs4-custom-checkbox-indeterminate-box-shadow\":\"none\",\"bs4-custom-radio-radius\":\"50%\",\"bs4-custom-select-padding-x\":\".75rem\",\"bs4-custom-select-padding-y\":\".375rem\",\"bs4-custom-select-indicator-padding\":\"1rem\",\"bs4-custom-select-line-height\":\"$input-line-height\",\"bs4-custom-select-color\":\"$input-color\",\"bs4-custom-select-disabled-color\":\"$gray-light\",\"bs4-custom-select-bg\":\"$white\",\"bs4-custom-select-disabled-bg\":\"$gray-lighter\",\"bs4-custom-select-bg-size\":\"8px 10px\",\"bs4-custom-select-indicator-color\":\"#333\",\"bs4-custom-select-border-width\":\"$input-btn-border-width\",\"bs4-custom-select-border-color\":\"$input-border-color\",\"bs4-custom-select-border-radius\":\"$border-radius\",\"bs4-custom-select-focus-border-color\":\"lighten($brand-primary, 25%)\",\"bs4-custom-select-focus-box-shadow\":\"inset 0 1px 2px rgba($black, .075), 0 0 5px rgba($custom-select-focus-border-color, .5)\",\"bs4-custom-select-sm-padding-y\":\".2rem\",\"bs4-custom-select-sm-font-size\":\"75%\",\"bs4-custom-file-height\":\"2.5rem\",\"bs4-custom-file-width\":\"14rem\",\"bs4-custom-file-focus-box-shadow\":\"0 0 0 .075rem $white, 0 0 0 .2rem $brand-primary\",\"bs4-custom-file-padding-x\":\".5rem\",\"bs4-custom-file-padding-y\":\"1rem\",\"bs4-custom-file-line-height\":\"1.5\",\"bs4-custom-file-color\":\"$gray\",\"bs4-custom-file-bg\":\"$white\",\"bs4-custom-file-border-width\":\"$border-width\",\"bs4-custom-file-border-color\":\"$input-border-color\",\"bs4-custom-file-border-radius\":\"$border-radius\",\"bs4-custom-file-box-shadow\":\"inset 0 .2rem .4rem rgba($black,.05)\",\"bs4-custom-file-button-color\":\"$custom-file-color\",\"bs4-custom-file-button-bg\":\"$gray-lighter\",\"bs4-custom-file-text-placeholder-en\":\"\\\"Choose file...\\\"\",\"bs4-custom-file-text-placeholder-de\":\"\\\"Datei ausw\\u00e4hlen...\\\"\",\"bs4-custom-file-text-button-label-en\":\"\\\"Browse\\\"\",\"bs4-custom-file-text-button-label-de\":\"\\\"Durchsuchen\\\"\",\"bs4-form-icon-success-color\":\"$brand-success\",\"bs4-form-icon-warning-color\":\"$brand-warning\",\"bs4-form-icon-danger-color\":\"$brand-danger\",\"bs4-dropdown-min-width\":\"10rem\",\"bs4-dropdown-padding-y\":\".5rem\",\"bs4-dropdown-margin-top\":\".125rem\",\"bs4-dropdown-bg\":\"$white\",\"bs4-dropdown-border-color\":\"rgba($black,.15)\",\"bs4-dropdown-border-width\":\"$border-width\",\"bs4-dropdown-divider-bg\":\"$gray-lighter\",\"bs4-dropdown-box-shadow\":\"0 .5rem 1rem rgba($black,.175)\",\"bs4-dropdown-link-color\":\"$gray-dark\",\"bs4-dropdown-link-hover-color\":\"darken($gray-dark, 5%)\",\"bs4-dropdown-link-hover-bg\":\"$gray-lightest\",\"bs4-dropdown-link-active-color\":\"$component-active-color\",\"bs4-dropdown-link-active-bg\":\"$component-active-bg\",\"bs4-dropdown-link-disabled-color\":\"$gray-light\",\"bs4-dropdown-item-padding-x\":\"1.5rem\",\"bs4-dropdown-header-color\":\"$gray-light\",\"bs4-zindex-dropdown-backdrop\":\"990\",\"bs4-zindex-navbar\":\"1000\",\"bs4-zindex-dropdown\":\"1000\",\"bs4-zindex-fixed\":\"1030\",\"bs4-zindex-sticky\":\"1030\",\"bs4-zindex-modal-backdrop\":\"1040\",\"bs4-zindex-modal\":\"1050\",\"bs4-zindex-popover\":\"1060\",\"bs4-zindex-tooltip\":\"1070\",\"bs4-navbar-border-radius\":\"$border-radius\",\"bs4-navbar-padding-x\":\"$spacer\",\"bs4-navbar-padding-y\":\"($spacer \\/ 2)\",\"bs4-navbar-brand-padding-y\":\".25rem\",\"bs4-navbar-toggler-padding-x\":\".75rem\",\"bs4-navbar-toggler-padding-y\":\".25rem\",\"bs4-navbar-toggler-font-size\":\"$font-size-lg\",\"bs4-navbar-toggler-border-radius\":\"$btn-border-radius\",\"bs4-navbar-inverse-color\":\"rgba($white,.5)\",\"bs4-navbar-inverse-hover-color\":\"rgba($white,.75)\",\"bs4-navbar-inverse-active-color\":\"rgba($white,1)\",\"bs4-navbar-inverse-disabled-color\":\"rgba($white,.25)\",\"bs4-navbar-inverse-toggler-border\":\"rgba($white,.1)\",\"bs4-navbar-light-color\":\"rgba($black,.5)\",\"bs4-navbar-light-hover-color\":\"rgba($black,.7)\",\"bs4-navbar-light-active-color\":\"rgba($black,.9)\",\"bs4-navbar-light-disabled-color\":\"rgba($black,.3)\",\"bs4-navbar-light-toggler-border\":\"rgba($black,.1)\",\"bs4-nav-item-margin\":\".2rem\",\"bs4-nav-item-inline-spacer\":\"1rem\",\"bs4-nav-link-padding\":\".5em 1em\",\"bs4-nav-link-hover-bg\":\"$gray-lighter\",\"bs4-nav-disabled-link-color\":\"$gray-light\",\"bs4-nav-disabled-link-hover-color\":\"$gray-light\",\"bs4-nav-disabled-link-hover-bg\":\"transparent\",\"bs4-nav-tabs-border-color\":\"#ddd\",\"bs4-nav-tabs-border-width\":\"$border-width\",\"bs4-nav-tabs-border-radius\":\"$border-radius\",\"bs4-nav-tabs-link-hover-border-color\":\"$gray-lighter\",\"bs4-nav-tabs-active-link-hover-color\":\"$gray\",\"bs4-nav-tabs-active-link-hover-bg\":\"$body-bg\",\"bs4-nav-tabs-active-link-hover-border-color\":\"#ddd\",\"bs4-nav-tabs-justified-link-border-color\":\"#ddd\",\"bs4-nav-tabs-justified-active-link-border-color\":\"$body-bg\",\"bs4-nav-pills-border-radius\":\"$border-radius\",\"bs4-nav-pills-active-link-color\":\"$component-active-color\",\"bs4-nav-pills-active-link-bg\":\"$component-active-bg\",\"bs4-pagination-padding-x\":\".75rem\",\"bs4-pagination-padding-y\":\".5rem\",\"bs4-pagination-padding-x-sm\":\".5rem\",\"bs4-pagination-padding-y-sm\":\".25rem\",\"bs4-pagination-padding-x-lg\":\"1.5rem\",\"bs4-pagination-padding-y-lg\":\".75rem\",\"bs4-pagination-line-height\":\"1.25\",\"bs4-pagination-color\":\"$link-color\",\"bs4-pagination-bg\":\"$white\",\"bs4-pagination-border-width\":\"$border-width\",\"bs4-pagination-border-color\":\"#ddd\",\"bs4-pagination-hover-color\":\"$link-hover-color\",\"bs4-pagination-hover-bg\":\"$gray-lighter\",\"bs4-pagination-hover-border\":\"#ddd\",\"bs4-pagination-active-color\":\"$white\",\"bs4-pagination-active-bg\":\"$brand-primary\",\"bs4-pagination-active-border\":\"$brand-primary\",\"bs4-pagination-disabled-color\":\"$gray-light\",\"bs4-pagination-disabled-bg\":\"$white\",\"bs4-pagination-disabled-border\":\"#ddd\",\"bs4-jumbotron-padding\":\"2rem\",\"bs4-jumbotron-bg\":\"$gray-lighter\",\"bs4-state-success-text\":\"#3c763d\",\"bs4-state-success-bg\":\"#dff0d8\",\"bs4-state-success-border\":\"darken($state-success-bg, 5%)\",\"bs4-state-info-text\":\"#31708f\",\"bs4-state-info-bg\":\"#d9edf7\",\"bs4-state-info-border\":\"darken($state-info-bg, 7%)\",\"bs4-state-warning-text\":\"#8a6d3b\",\"bs4-state-warning-bg\":\"#fcf8e3\",\"bs4-mark-bg\":\"$state-warning-bg\",\"bs4-state-warning-border\":\"darken($state-warning-bg, 5%)\",\"bs4-state-danger-text\":\"#a94442\",\"bs4-state-danger-bg\":\"#f2dede\",\"bs4-state-danger-border\":\"darken($state-danger-bg, 5%)\",\"bs4-card-spacer-x\":\"1.25rem\",\"bs4-card-spacer-y\":\".75rem\",\"bs4-card-border-width\":\"1px\",\"bs4-card-border-radius\":\"$border-radius\",\"bs4-card-border-color\":\"rgba($black,.125)\",\"bs4-card-border-radius-inner\":\"calc(#{$card-border-radius} - #{$card-border-width})\",\"bs4-card-cap-bg\":\"$gray-lightest\",\"bs4-card-bg\":\"$white\",\"bs4-card-link-hover-color\":\"$white\",\"bs4-card-img-overlay-padding\":\"1.25rem\",\"bs4-card-deck-margin\":\"($grid-gutter-width-base \\/ 2)\",\"bs4-card-columns-sm-up-column-gap\":\"1.25rem\",\"bs4-card-columns-count\":\"3\",\"bs4-card-columns-gap\":\"1.25rem\",\"bs4-card-columns-margin\":\"$card-spacer-y\",\"bs4-tooltip-max-width\":\"200px\",\"bs4-tooltip-color\":\"$white\",\"bs4-tooltip-bg\":\"$black\",\"bs4-tooltip-opacity\":\".9\",\"bs4-tooltip-padding-y\":\"3px\",\"bs4-tooltip-padding-x\":\"8px\",\"bs4-tooltip-margin\":\"3px\",\"bs4-tooltip-arrow-width\":\"5px\",\"bs4-tooltip-arrow-color\":\"$tooltip-bg\",\"bs4-popover-inner-padding\":\"1px\",\"bs4-popover-bg\":\"$white\",\"bs4-popover-max-width\":\"276px\",\"bs4-popover-border-width\":\"$border-width\",\"bs4-popover-border-color\":\"rgba($black,.2)\",\"bs4-popover-box-shadow\":\"0 5px 10px rgba($black,.2)\",\"bs4-popover-title-bg\":\"darken($popover-bg, 3%)\",\"bs4-popover-title-padding-x\":\"14px\",\"bs4-popover-title-padding-y\":\"8px\",\"bs4-popover-content-padding-x\":\"14px\",\"bs4-popover-content-padding-y\":\"9px\",\"bs4-popover-arrow-width\":\"10px\",\"bs4-popover-arrow-color\":\"$popover-bg\",\"bs4-popover-arrow-outer-width\":\"($popover-arrow-width + 1px)\",\"bs4-popover-arrow-outer-color\":\"fade-in($popover-border-color, .05)\",\"bs4-badge-default-bg\":\"$gray-light\",\"bs4-badge-primary-bg\":\"$brand-primary\",\"bs4-badge-success-bg\":\"$brand-success\",\"bs4-badge-info-bg\":\"$brand-info\",\"bs4-badge-warning-bg\":\"$brand-warning\",\"bs4-badge-danger-bg\":\"$brand-danger\",\"bs4-badge-color\":\"$white\",\"bs4-badge-link-hover-color\":\"$white\",\"bs4-badge-font-size\":\"75%\",\"bs4-badge-font-weight\":\"bold\",\"bs4-badge-padding-x\":\".4em\",\"bs4-badge-padding-y\":\".25em\",\"bs4-badge-pill-padding-x\":\".6em\",\"bs4-badge-pill-border-radius\":\"10rem\",\"bs4-modal-inner-padding\":\"15px\",\"bs4-modal-dialog-margin\":\"10px\",\"bs4-modal-dialog-sm-up-margin-y\":\"30px\",\"bs4-modal-title-line-height\":\"$line-height-base\",\"bs4-modal-content-bg\":\"$white\",\"bs4-modal-content-border-color\":\"rgba($black,.2)\",\"bs4-modal-content-border-width\":\"$border-width\",\"bs4-modal-content-xs-box-shadow\":\"0 3px 9px rgba($black,.5)\",\"bs4-modal-content-sm-up-box-shadow\":\"0 5px 15px rgba($black,.5)\",\"bs4-modal-backdrop-bg\":\"$black\",\"bs4-modal-backdrop-opacity\":\".5\",\"bs4-modal-header-border-color\":\"$gray-lighter\",\"bs4-modal-footer-border-color\":\"$modal-header-border-color\",\"bs4-modal-header-border-width\":\"$modal-content-border-width\",\"bs4-modal-footer-border-width\":\"$modal-header-border-width\",\"bs4-modal-header-padding\":\"15px\",\"bs4-modal-lg\":\"800px\",\"bs4-modal-md\":\"500px\",\"bs4-modal-sm\":\"300px\",\"bs4-modal-transition\":\"transform .3s ease-out\",\"bs4-alert-padding-x\":\"1.25rem\",\"bs4-alert-padding-y\":\".75rem\",\"bs4-alert-margin-bottom\":\"$spacer-y\",\"bs4-alert-border-radius\":\"$border-radius\",\"bs4-alert-link-font-weight\":\"$font-weight-bold\",\"bs4-alert-border-width\":\"$border-width\",\"bs4-alert-success-bg\":\"$state-success-bg\",\"bs4-alert-success-text\":\"$state-success-text\",\"bs4-alert-success-border\":\"$state-success-border\",\"bs4-alert-info-bg\":\"$state-info-bg\",\"bs4-alert-info-text\":\"$state-info-text\",\"bs4-alert-info-border\":\"$state-info-border\",\"bs4-alert-warning-bg\":\"$state-warning-bg\",\"bs4-alert-warning-text\":\"$state-warning-text\",\"bs4-alert-warning-border\":\"$state-warning-border\",\"bs4-alert-danger-bg\":\"$state-danger-bg\",\"bs4-alert-danger-text\":\"$state-danger-text\",\"bs4-alert-danger-border\":\"$state-danger-border\",\"bs4-progress-height\":\"1rem\",\"bs4-progress-font-size\":\".75rem\",\"bs4-progress-bg\":\"$gray-lighter\",\"bs4-progress-border-radius\":\"$border-radius\",\"bs4-progress-box-shadow\":\"inset 0 .1rem .1rem rgba($black,.1)\",\"bs4-progress-bar-color\":\"$white\",\"bs4-progress-bar-bg\":\"$brand-primary\",\"bs4-progress-bar-animation-timing\":\"1s linear infinite\",\"bs4-list-group-color\":\"$body-color\",\"bs4-list-group-bg\":\"$white\",\"bs4-list-group-border-color\":\"rgba($black,.125)\",\"bs4-list-group-border-width\":\"$border-width\",\"bs4-list-group-border-radius\":\"$border-radius\",\"bs4-list-group-item-padding-x\":\"1.25rem\",\"bs4-list-group-item-padding-y\":\".75rem\",\"bs4-list-group-hover-bg\":\"$gray-lightest\",\"bs4-list-group-active-color\":\"$component-active-color\",\"bs4-list-group-active-bg\":\"$component-active-bg\",\"bs4-list-group-active-border\":\"$list-group-active-bg\",\"bs4-list-group-active-text-color\":\"lighten($list-group-active-bg, 50%)\",\"bs4-list-group-disabled-color\":\"$gray-light\",\"bs4-list-group-disabled-bg\":\"$list-group-bg\",\"bs4-list-group-disabled-text-color\":\"$list-group-disabled-color\",\"bs4-list-group-link-color\":\"$gray\",\"bs4-list-group-link-heading-color\":\"$gray-dark\",\"bs4-list-group-link-hover-color\":\"$list-group-link-color\",\"bs4-list-group-link-active-color\":\"$list-group-color\",\"bs4-list-group-link-active-bg\":\"$gray-lighter\",\"bs4-thumbnail-padding\":\".25rem\",\"bs4-thumbnail-bg\":\"$body-bg\",\"bs4-thumbnail-border-width\":\"$border-width\",\"bs4-thumbnail-border-color\":\"#ddd\",\"bs4-thumbnail-border-radius\":\"$border-radius\",\"bs4-thumbnail-box-shadow\":\"0 1px 2px rgba($black,.075)\",\"bs4-thumbnail-transition\":\"all .2s ease-in-out\",\"bs4-figure-caption-font-size\":\"90%\",\"bs4-figure-caption-color\":\"$gray-light\",\"bs4-breadcrumb-padding-y\":\".75rem\",\"bs4-breadcrumb-padding-x\":\"1rem\",\"bs4-breadcrumb-item-padding\":\".5rem\",\"bs4-breadcrumb-bg\":\"$gray-lighter\",\"bs4-breadcrumb-divider-color\":\"$gray-light\",\"bs4-breadcrumb-active-color\":\"$gray-light\",\"bs4-breadcrumb-divider\":\"\\\"\\/\\\"\",\"bs4-media-margin-top\":\"15px\",\"bs4-media-heading-margin-bottom\":\"5px\",\"bs4-media-alignment-padding-x\":\"10px\",\"bs4-carousel-control-color\":\"$white\",\"bs4-carousel-control-width\":\"15%\",\"bs4-carousel-control-opacity\":\".5\",\"bs4-carousel-indicator-width\":\"30px\",\"bs4-carousel-indicator-height\":\"3px\",\"bs4-carousel-indicator-spacer\":\"3px\",\"bs4-carousel-indicator-active-bg\":\"$white\",\"bs4-carousel-caption-width\":\"70%\",\"bs4-carousel-caption-color\":\"$white\",\"bs4-carousel-control-icon-width\":\"20px\",\"bs4-carousel-transition\":\"transform .6s ease-in-out\",\"bs4-close-font-size\":\"$font-size-base * 1.5\",\"bs4-close-font-weight\":\"$font-weight-bold\",\"bs4-close-color\":\"$black\",\"bs4-close-text-shadow\":\"0 1px 0 $white\",\"bs4-code-font-size\":\"90%\",\"bs4-code-padding-x\":\".4rem\",\"bs4-code-padding-y\":\".2rem\",\"bs4-code-color\":\"#bd4147\",\"bs4-code-bg\":\"$gray-lightest\",\"bs4-kbd-color\":\"$white\",\"bs4-kbd-bg\":\"$gray-dark\",\"bs4-pre-bg\":\"$gray-lightest\",\"bs4-pre-color\":\"$gray-dark\",\"bs4-pre-border-color\":\"#ccc\",\"bs4-pre-scrollable-max-height\":\"340px\",\"contact_succeess_text\":\"Sent message successfully\",\"contact_regard\":\"New request from {{name}}: {{regard}}\",\"mail_template\":\"viola::contact-notification\"}', '2018-07-05 10:13:41', '2018-07-05 10:13:41'),
(3, 'responsiv-clean', '{\"site_name\":\"October CMS\",\"site_motto\":\"Get back to basics\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/\",\"twitter_url\":\"https:\\/\\/www.twitter.com\\/\"}', '2018-07-05 10:31:53', '2018-07-05 10:31:53'),
(4, 'vojtasvoboda-newage', '{\"site_title\":\"My new websites\",\"site_locale\":\"en\",\"footer\":\"\\u00a9 2016 My new websites. All Rights Reserved.\",\"footer_menu\":true,\"intro_enabled\":true,\"intro_headline\":\"New Age is an app landing page that will help you beautifully showcase your new mobile app, or anything else!\",\"intro_button\":\"Start Now for Free!\",\"intro_button_link\":\"#download\",\"download_enabled\":true,\"download_headline\":\"Discover what all the buzz is about!\",\"download_content\":\"<p>Our app is available on any mobile device! Download now to get started!<\\/p>\",\"download_google_link\":\"https:\\/\\/play.google.com\",\"download_appstore_link\":\"https:\\/\\/appstore.com\",\"features_enabled\":true,\"features_headline\":\"Unlimited Features, Unlimited Fun\",\"features_subheadline\":\"Check out what you can do with this app theme!\",\"cta_enabled\":true,\"cta_headline\":\"Stop waiting.<br>Start building.\",\"cta_button\":\"Let\'s Get Started!\",\"cta_button_link\":\"#contact\",\"contact_enabled\":true,\"contact_headline\":\"We <i class=\\\"fa fa-heart\\\"><\\/i> new friends!\",\"contact_twitter\":\"https:\\/\\/twitter.com\",\"contact_facebook\":\"https:\\/\\/facebook.com\",\"contact_google\":\"https:\\/\\/plus.google.com\"}', '2018-07-05 10:47:28', '2018-07-05 10:47:28'),
(5, 'zwiebl-zwiebl_stellar', '{\"website_name\":\"HTML5UP Stellar\",\"website_author\":\"Zwiebl.xyz\",\"website_url\":\"http:\\/\\/demo.zwiebl.xyz\\/html5up_stellar\",\"description\":\"Modern and Clean One Page OctoberCMS Theme\",\"keywords\":\"october,octobercms,themes,templates,free octobercms themes\",\"load_google_fonts\":true,\"google_font_family\":\"Roboto+Slab:300,400,700|Raleway:300,300i,400,400i,700,700i\",\"load_fontawesome\":true,\"load_jQuery\":true,\"jQuery_version\":\"2.2.4\",\"load_octobercms_framework\":false,\"show_section_one\":true,\"show_section_two\":true,\"show_section_three\":true,\"show_section_four\":true,\"zw-bg-color-bg-one\":\"#a89cc8\",\"zw-bg-color-bg-two\":\"#5f4d93\",\"zw-bg-color-buttons\":\"8cc9f0\"}', '2018-07-05 10:52:43', '2018-07-05 10:52:43'),
(6, 'gc000', '{\"site_name\":\"Mon Site d\'\\u00c9tude !\"}', '2018-07-05 22:29:07', '2018-07-05 22:49:58');

-- --------------------------------------------------------

--
-- Structure de la table `cms_theme_logs`
--

CREATE TABLE `cms_theme_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `old_content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cms_theme_logs`
--

INSERT INTO `cms_theme_logs` (`id`, `type`, `theme`, `template`, `old_template`, `content`, `old_content`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'create', 'olympos', 'pages/movies.htm', '', 'title = \"Movies\"\r\nurl = \"/movies\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Movies\\Models\\Movie\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"name\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"-\"\r\ndetailsUrlParameter = \"id\"\r\npageNumber = \"{{ :page }}\"\r\n==\r\n{% component \'builderList\' %}', NULL, 1, '2018-04-19 19:07:26', '2018-04-19 19:07:26'),
(2, 'update', 'olympos', 'pages/movies.htm', 'pages/movies.htm', 'title = \"Movies\"\r\nurl = \"/movies\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Movies\\Models\\Movie\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"name\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"-\"\r\ndetailsUrlParameter = \"id\"\r\npageNumber = \"{{ :page }}\"\r\n==\r\n{% component \'builderList\' %}', 'title = \"Movies\"\r\nurl = \"/movies\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Movies\\Models\\Movie\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"name\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"-\"\r\ndetailsUrlParameter = \"id\"\r\npageNumber = \"{{ :page }}\"\r\n==\r\n{% component \'builderList\' %}', 1, '2018-04-19 19:07:47', '2018-04-19 19:07:47'),
(3, 'update', 'olympos', 'pages/movies.htm', 'pages/movies.htm', 'title = \"Movies\"\r\nurl = \"/movies\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Movies\\Models\\Movie\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"name\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"-\"\r\ndetailsUrlParameter = \"id\"\r\npageNumber = \"{{ :page }}\"\r\n==\r\n{% set records = builderList.records %}\r\n{% set displayColumn = builderList.displayColumn %}\r\n{% set noRecordsMessage = builderList.noRecordsMessage %}\r\n{% set detailsPage = builderList.detailsPage %}\r\n{% set detailsKeyColumn = builderList.detailsKeyColumn %}\r\n{% set detailsUrlParameter = builderList.detailsUrlParameter %}\r\n\r\n<ul class=\"record-list\">\r\n    {% for record in records %}\r\n        <li>\r\n            {# Use spaceless tag to remove spaces inside the A tag. #}\r\n            {% spaceless %}\r\n                {% if detailsPage %}\r\n                    <a href=\"{{ detailsPage|page({ (detailsUrlParameter): attribute(record, detailsKeyColumn) }) }}\">\r\n                {% endif %}\r\n\r\n                {{ attribute(record, displayColumn) }}\r\n\r\n                {% if detailsPage %}\r\n                    </a>\r\n                {% endif %}\r\n            {% endspaceless %}\r\n        </li>\r\n    {% else %}\r\n        <li class=\"no-data\">{{ noRecordsMessage }}</li>\r\n    {% endfor %}\r\n</ul>\r\n\r\n{% if records.lastPage > 1 %}\r\n    <ul class=\"pagination\">\r\n        {% if records.currentPage > 1 %}\r\n            <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage-1) }) }}\">&larr; Prev</a></li>\r\n        {% endif %}\r\n\r\n        {% for page in 1..records.lastPage %}\r\n            <li class=\"{{ records.currentPage == page ? \'active\' : null }}\">\r\n                <a href=\"{{ this.page.baseFileName|page({ (pageParam): page }) }}\">{{ page }}</a>\r\n            </li>\r\n        {% endfor %}\r\n\r\n        {% if records.lastPage > records.currentPage %}\r\n            <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage+1) }) }}\">Next &rarr;</a></li>\r\n        {% endif %}\r\n    </ul>\r\n{% endif %}', 'title = \"Movies\"\r\nurl = \"/movies\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Movies\\Models\\Movie\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"name\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"-\"\r\ndetailsUrlParameter = \"id\"\r\npageNumber = \"{{ :page }}\"\r\n==\r\n{% component \'builderList\' %}', 1, '2018-04-19 19:10:20', '2018-04-19 19:10:20'),
(4, 'create', 'olympos', 'pages/movie-single.htm', '', 'title = \"Movie single\"\r\nurl = \"/movie/:id\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[builderDetails]\r\nmodelClass = \"Grcote7\\Movies\\Models\\Movie\"\r\nidentifierValue = \"{{ :id }}\"\r\nmodelKeyColumn = \"id\"\r\ndisplayColumn = \"name\"\r\nnotFoundMessage = \"Record not found\"\r\n==\r\n{% component \'builderDetails\' %}', NULL, 1, '2018-04-19 19:47:36', '2018-04-19 19:47:36'),
(5, 'update', 'olympos', 'pages/movie-single.htm', 'pages/movie-single.htm', 'title = \"Movie single\"\r\nurl = \"/movie/:id\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[builderDetails]\r\nmodelClass = \"Grcote7\\Movies\\Models\\Movie\"\r\nidentifierValue = \"{{ :id }}\"\r\nmodelKeyColumn = \"id\"\r\ndisplayColumn = \"name\"\r\nnotFoundMessage = \"Record not found\"\r\n==\r\n{% set record = builderDetails.record %}\r\n{% set displayColumn = builderDetails.displayColumn %}\r\n{% set notFoundMessage = builderDetails.notFoundMessage %}\r\n\r\n{% if record %}\r\n    {{ attribute(record, displayColumn) }}\r\n{% else %}\r\n    {{ notFoundMessage }}\r\n{% endif %}', 'title = \"Movie single\"\r\nurl = \"/movie/:id\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[builderDetails]\r\nmodelClass = \"Grcote7\\Movies\\Models\\Movie\"\r\nidentifierValue = \"{{ :id }}\"\r\nmodelKeyColumn = \"id\"\r\ndisplayColumn = \"name\"\r\nnotFoundMessage = \"Record not found\"\r\n==\r\n{% component \'builderDetails\' %}', 1, '2018-04-19 19:48:08', '2018-04-19 19:48:08'),
(6, 'update', 'olympos', 'pages/movies.htm', 'pages/movies.htm', 'title = \"Movies\"\r\nurl = \"/movies\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Movies\\Models\\Movie\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"name\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"movie-single\"\r\ndetailsKeyColumn = \"id\"\r\ndetailsUrlParameter = \"id\"\r\npageNumber = \"{{ :page }}\"\r\n==\r\n{% set records = builderList.records %}\r\n{% set displayColumn = builderList.displayColumn %}\r\n{% set noRecordsMessage = builderList.noRecordsMessage %}\r\n{% set detailsPage = builderList.detailsPage %}\r\n{% set detailsKeyColumn = builderList.detailsKeyColumn %}\r\n{% set detailsUrlParameter = builderList.detailsUrlParameter %}\r\n\r\n<ul class=\"record-list\">\r\n    {% for record in records %}\r\n    <li>\r\n        {# Use spaceless tag to remove spaces inside the A tag. #}\r\n        <h3>\r\n            {% spaceless %}\r\n            {% if detailsPage %}\r\n            <a href=\"{{ detailsPage|page({ (detailsUrlParameter): attribute(record, detailsKeyColumn) }) }}\">\r\n                {% endif %}\r\n\r\n                {{ record.name }} - {{ record.year }}\r\n\r\n                {% if detailsPage %}\r\n            </a>\r\n            {% endif %}\r\n            {% endspaceless %}\r\n        </h3>\r\n\r\n        {{html_limit(record.description,150)|raw}}\r\n\r\n    </li>\r\n    {% else %}\r\n    <li class=\"no-data\">{{ noRecordsMessage }}</li>\r\n    {% endfor %}\r\n</ul>\r\n\r\n{% if records.lastPage > 1 %}\r\n<ul class=\"pagination\">\r\n    {% if records.currentPage > 1 %}\r\n    <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage-1) }) }}\">&larr; Prev</a></li>\r\n    {% endif %}\r\n\r\n    {% for page in 1..records.lastPage %}\r\n    <li class=\"{{ records.currentPage == page ? \'active\' : null }}\">\r\n        <a href=\"{{ this.page.baseFileName|page({ (pageParam): page }) }}\">{{ page }}</a>\r\n    </li>\r\n    {% endfor %}\r\n\r\n    {% if records.lastPage > records.currentPage %}\r\n    <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage+1) }) }}\">Next &rarr;</a></li>\r\n    {% endif %}\r\n</ul>\r\n{% endif %}', 'title = \"Movies\"\r\nurl = \"/movies\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Movies\\Models\\Movie\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"name\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"-\"\r\ndetailsUrlParameter = \"id\"\r\npageNumber = \"{{ :page }}\"\r\n==\r\n{% set records = builderList.records %}\r\n{% set displayColumn = builderList.displayColumn %}\r\n{% set noRecordsMessage = builderList.noRecordsMessage %}\r\n{% set detailsPage = builderList.detailsPage %}\r\n{% set detailsKeyColumn = builderList.detailsKeyColumn %}\r\n{% set detailsUrlParameter = builderList.detailsUrlParameter %}\r\n\r\n<ul class=\"record-list\">\r\n    {% for record in records %}\r\n    <li>\r\n        {# Use spaceless tag to remove spaces inside the A tag. #}\r\n        <h3>\r\n            {% spaceless %}\r\n            {% if detailsPage %}\r\n            <a href=\"{{ detailsPage|page({ (detailsUrlParameter): attribute(record, detailsKeyColumn) }) }}\">\r\n                {% endif %}\r\n\r\n                {{ record.name }} - {{ record.year }}\r\n\r\n                {% if detailsPage %}\r\n            </a>\r\n            {% endif %}\r\n            {% endspaceless %}\r\n        </h3>\r\n\r\n        {{html_limit(record.description,150)|raw}}\r\n\r\n    </li>\r\n    {% else %}\r\n    <li class=\"no-data\">{{ noRecordsMessage }}</li>\r\n    {% endfor %}\r\n</ul>\r\n\r\n{% if records.lastPage > 1 %}\r\n<ul class=\"pagination\">\r\n    {% if records.currentPage > 1 %}\r\n    <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage-1) }) }}\">&larr; Prev</a></li>\r\n    {% endif %}\r\n\r\n    {% for page in 1..records.lastPage %}\r\n    <li class=\"{{ records.currentPage == page ? \'active\' : null }}\">\r\n        <a href=\"{{ this.page.baseFileName|page({ (pageParam): page }) }}\">{{ page }}</a>\r\n    </li>\r\n    {% endfor %}\r\n\r\n    {% if records.lastPage > records.currentPage %}\r\n    <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage+1) }) }}\">Next &rarr;</a></li>\r\n    {% endif %}\r\n</ul>\r\n{% endif %}', 1, '2018-04-19 19:49:14', '2018-04-19 19:49:14'),
(7, 'update', 'olympos', 'pages/movie-single.htm', 'pages/movie-single.htm', 'title = \"Movie single\"\r\nurl = \"/movies/:slug\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[builderDetails]\r\nmodelClass = \"Grcote7\\Movies\\Models\\Movie\"\r\nidentifierValue = \"{{ :slug }}\"\r\nmodelKeyColumn = \"slug\"\r\ndisplayColumn = \"name\"\r\nnotFoundMessage = \"Record not found\"\r\n==\r\n{% set record = builderDetails.record %}\r\n{% set displayColumn = builderDetails.displayColumn %}\r\n{% set notFoundMessage = builderDetails.notFoundMessage %}\r\n\r\n{% if record %}\r\n<h2>{{ record.name }}</h2>\r\n<h4>{{ record.year }}</h4>\r\n<h3>Description</h3>\r\n{{ record.description|raw }}\r\n{% else %}\r\n{{ notFoundMessage }}\r\n{% endif %}', 'title = \"Movie single\"\r\nurl = \"/movie/:id\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[builderDetails]\r\nmodelClass = \"Grcote7\\Movies\\Models\\Movie\"\r\nidentifierValue = \"{{ :id }}\"\r\nmodelKeyColumn = \"id\"\r\ndisplayColumn = \"name\"\r\nnotFoundMessage = \"Record not found\"\r\n==\r\n{% set record = builderDetails.record %}\r\n{% set displayColumn = builderDetails.displayColumn %}\r\n{% set notFoundMessage = builderDetails.notFoundMessage %}\r\n\r\n{% if record %}\r\n<h2>{{ record.name }}</h2>\r\n<h4>{{ record.year }}</h4>\r\n<h3>Description</h3>\r\n{{ record.description|raw }}\r\n{% else %}\r\n{{ notFoundMessage }}\r\n{% endif %}', 1, '2018-04-19 20:04:57', '2018-04-19 20:04:57'),
(8, 'update', 'olympos', 'pages/movies.htm', 'pages/movies.htm', 'title = \"Movies\"\r\nurl = \"/movies\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Movies\\Models\\Movie\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"name\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"movie-single\"\r\ndetailsKeyColumn = \"slug\"\r\ndetailsUrlParameter = \"slug\"\r\npageNumber = \"{{ :page }}\"\r\n==\r\n{% set records = builderList.records %}\r\n{% set displayColumn = builderList.displayColumn %}\r\n{% set noRecordsMessage = builderList.noRecordsMessage %}\r\n{% set detailsPage = builderList.detailsPage %}\r\n{% set detailsKeyColumn = builderList.detailsKeyColumn %}\r\n{% set detailsUrlParameter = builderList.detailsUrlParameter %}\r\n\r\n<ul class=\"record-list\">\r\n    {% for record in records %}\r\n    <li>\r\n        {# Use spaceless tag to remove spaces inside the A tag. #}\r\n        <h3>\r\n            {% spaceless %}\r\n            {% if detailsPage %}\r\n            <a href=\"{{ detailsPage|page({ (detailsUrlParameter): attribute(record, detailsKeyColumn) }) }}\">\r\n                {% endif %}\r\n\r\n                {{ record.name }} - {{ record.year }}\r\n\r\n                {% if detailsPage %}\r\n            </a>\r\n            {% endif %}\r\n            {% endspaceless %}\r\n        </h3>\r\n\r\n        {{html_limit(record.description,150)|raw}}\r\n\r\n    </li>\r\n    {% else %}\r\n    <li class=\"no-data\">{{ noRecordsMessage }}</li>\r\n    {% endfor %}\r\n</ul>\r\n\r\n{% if records.lastPage > 1 %}\r\n<ul class=\"pagination\">\r\n    {% if records.currentPage > 1 %}\r\n    <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage-1) }) }}\">&larr; Prev</a></li>\r\n    {% endif %}\r\n\r\n    {% for page in 1..records.lastPage %}\r\n    <li class=\"{{ records.currentPage == page ? \'active\' : null }}\">\r\n        <a href=\"{{ this.page.baseFileName|page({ (pageParam): page }) }}\">{{ page }}</a>\r\n    </li>\r\n    {% endfor %}\r\n\r\n    {% if records.lastPage > records.currentPage %}\r\n    <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage+1) }) }}\">Next &rarr;</a></li>\r\n    {% endif %}\r\n</ul>\r\n{% endif %}', 'title = \"Movies\"\r\nurl = \"/movies\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Movies\\Models\\Movie\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"name\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"movie-single\"\r\ndetailsKeyColumn = \"id\"\r\ndetailsUrlParameter = \"id\"\r\npageNumber = \"{{ :page }}\"\r\n==\r\n{% set records = builderList.records %}\r\n{% set displayColumn = builderList.displayColumn %}\r\n{% set noRecordsMessage = builderList.noRecordsMessage %}\r\n{% set detailsPage = builderList.detailsPage %}\r\n{% set detailsKeyColumn = builderList.detailsKeyColumn %}\r\n{% set detailsUrlParameter = builderList.detailsUrlParameter %}\r\n\r\n<ul class=\"record-list\">\r\n    {% for record in records %}\r\n    <li>\r\n        {# Use spaceless tag to remove spaces inside the A tag. #}\r\n        <h3>\r\n            {% spaceless %}\r\n            {% if detailsPage %}\r\n            <a href=\"{{ detailsPage|page({ (detailsUrlParameter): attribute(record, detailsKeyColumn) }) }}\">\r\n                {% endif %}\r\n\r\n                {{ record.name }} - {{ record.year }}\r\n\r\n                {% if detailsPage %}\r\n            </a>\r\n            {% endif %}\r\n            {% endspaceless %}\r\n        </h3>\r\n\r\n        {{html_limit(record.description,150)|raw}}\r\n\r\n    </li>\r\n    {% else %}\r\n    <li class=\"no-data\">{{ noRecordsMessage }}</li>\r\n    {% endfor %}\r\n</ul>\r\n\r\n{% if records.lastPage > 1 %}\r\n<ul class=\"pagination\">\r\n    {% if records.currentPage > 1 %}\r\n    <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage-1) }) }}\">&larr; Prev</a></li>\r\n    {% endif %}\r\n\r\n    {% for page in 1..records.lastPage %}\r\n    <li class=\"{{ records.currentPage == page ? \'active\' : null }}\">\r\n        <a href=\"{{ this.page.baseFileName|page({ (pageParam): page }) }}\">{{ page }}</a>\r\n    </li>\r\n    {% endfor %}\r\n\r\n    {% if records.lastPage > records.currentPage %}\r\n    <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage+1) }) }}\">Next &rarr;</a></li>\r\n    {% endif %}\r\n</ul>\r\n{% endif %}', 1, '2018-04-19 20:05:51', '2018-04-19 20:05:51'),
(9, 'update', 'olympos', 'pages/movies.htm', 'pages/movies.htm', 'title = \"Movies\"\r\nurl = \"/movies\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Movies\\Models\\Movie\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"name\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"movie-single\"\r\ndetailsKeyColumn = \"slug\"\r\ndetailsUrlParameter = \"slug\"\r\nrecordsPerPage = 1\r\npageNumber = \"{{ :page }}\"\r\n==\r\n{% set records = builderList.records %}\r\n{% set displayColumn = builderList.displayColumn %}\r\n{% set noRecordsMessage = builderList.noRecordsMessage %}\r\n{% set detailsPage = builderList.detailsPage %}\r\n{% set detailsKeyColumn = builderList.detailsKeyColumn %}\r\n{% set detailsUrlParameter = builderList.detailsUrlParameter %}\r\n\r\n<ul class=\"record-list\">\r\n    {% for record in records %}\r\n    <li>\r\n        {# Use spaceless tag to remove spaces inside the A tag. #}\r\n        <h3>\r\n            {% spaceless %}\r\n            {% if detailsPage %}\r\n            <a href=\"{{ detailsPage|page({ (detailsUrlParameter): attribute(record, detailsKeyColumn) }) }}\">\r\n                {% endif %}\r\n\r\n                {{ record.name }} - {{ record.year }}\r\n\r\n                {% if detailsPage %}\r\n            </a>\r\n            {% endif %}\r\n            {% endspaceless %}\r\n        </h3>\r\n\r\n        {{html_limit(record.description,150)|raw}}\r\n\r\n    </li>\r\n    {% else %}\r\n    <li class=\"no-data\">{{ noRecordsMessage }}</li>\r\n    {% endfor %}\r\n</ul>\r\n\r\n{% if records.lastPage > 1 %}\r\n<ul class=\"pagination\">\r\n    {% if records.currentPage > 1 %}\r\n    <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage-1) }) }}\">&larr; Prev</a></li>\r\n    {% endif %}\r\n\r\n    {% for page in 1..records.lastPage %}\r\n    <li class=\"{{ records.currentPage == page ? \'active\' : null }}\">\r\n        <a href=\"{{ this.page.baseFileName|page({ (pageParam): page }) }}\">{{ page }}</a>\r\n    </li>\r\n    {% endfor %}\r\n\r\n    {% if records.lastPage > records.currentPage %}\r\n    <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage+1) }) }}\">Next &rarr;</a></li>\r\n    {% endif %}\r\n</ul>\r\n{% endif %}', 'title = \"Movies\"\r\nurl = \"/movies\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Movies\\Models\\Movie\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"name\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"movie-single\"\r\ndetailsKeyColumn = \"slug\"\r\ndetailsUrlParameter = \"slug\"\r\npageNumber = \"{{ :page }}\"\r\n==\r\n{% set records = builderList.records %}\r\n{% set displayColumn = builderList.displayColumn %}\r\n{% set noRecordsMessage = builderList.noRecordsMessage %}\r\n{% set detailsPage = builderList.detailsPage %}\r\n{% set detailsKeyColumn = builderList.detailsKeyColumn %}\r\n{% set detailsUrlParameter = builderList.detailsUrlParameter %}\r\n\r\n<ul class=\"record-list\">\r\n    {% for record in records %}\r\n    <li>\r\n        {# Use spaceless tag to remove spaces inside the A tag. #}\r\n        <h3>\r\n            {% spaceless %}\r\n            {% if detailsPage %}\r\n            <a href=\"{{ detailsPage|page({ (detailsUrlParameter): attribute(record, detailsKeyColumn) }) }}\">\r\n                {% endif %}\r\n\r\n                {{ record.name }} - {{ record.year }}\r\n\r\n                {% if detailsPage %}\r\n            </a>\r\n            {% endif %}\r\n            {% endspaceless %}\r\n        </h3>\r\n\r\n        {{html_limit(record.description,150)|raw}}\r\n\r\n    </li>\r\n    {% else %}\r\n    <li class=\"no-data\">{{ noRecordsMessage }}</li>\r\n    {% endfor %}\r\n</ul>\r\n\r\n{% if records.lastPage > 1 %}\r\n<ul class=\"pagination\">\r\n    {% if records.currentPage > 1 %}\r\n    <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage-1) }) }}\">&larr; Prev</a></li>\r\n    {% endif %}\r\n\r\n    {% for page in 1..records.lastPage %}\r\n    <li class=\"{{ records.currentPage == page ? \'active\' : null }}\">\r\n        <a href=\"{{ this.page.baseFileName|page({ (pageParam): page }) }}\">{{ page }}</a>\r\n    </li>\r\n    {% endfor %}\r\n\r\n    {% if records.lastPage > records.currentPage %}\r\n    <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage+1) }) }}\">Next &rarr;</a></li>\r\n    {% endif %}\r\n</ul>\r\n{% endif %}', 1, '2018-04-19 20:07:41', '2018-04-19 20:07:41'),
(10, 'update', 'olympos', 'pages/movies.htm', 'pages/movies.htm', 'title = \"Movies\"\r\nurl = \"/movies/:page\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Movies\\Models\\Movie\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"name\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"movie-single\"\r\ndetailsKeyColumn = \"slug\"\r\ndetailsUrlParameter = \"slug\"\r\nrecordsPerPage = 1\r\npageNumber = \"{{ :page }}\"\r\n==\r\n{% set records = builderList.records %}\r\n{% set displayColumn = builderList.displayColumn %}\r\n{% set noRecordsMessage = builderList.noRecordsMessage %}\r\n{% set detailsPage = builderList.detailsPage %}\r\n{% set detailsKeyColumn = builderList.detailsKeyColumn %}\r\n{% set detailsUrlParameter = builderList.detailsUrlParameter %}\r\n\r\n<ul class=\"record-list\">\r\n    {% for record in records %}\r\n    <li>\r\n        {# Use spaceless tag to remove spaces inside the A tag. #}\r\n        <h3>\r\n            {% spaceless %}\r\n            {% if detailsPage %}\r\n            <a href=\"{{ detailsPage|page({ (detailsUrlParameter): attribute(record, detailsKeyColumn) }) }}\">\r\n                {% endif %}\r\n\r\n                {{ record.name }} - {{ record.year }}\r\n\r\n                {% if detailsPage %}\r\n            </a>\r\n            {% endif %}\r\n            {% endspaceless %}\r\n        </h3>\r\n\r\n        {{html_limit(record.description,150)|raw}}\r\n\r\n    </li>\r\n    {% else %}\r\n    <li class=\"no-data\">{{ noRecordsMessage }}</li>\r\n    {% endfor %}\r\n</ul>\r\n\r\n{% if records.lastPage > 1 %}\r\n<ul class=\"pagination\">\r\n    {% if records.currentPage > 1 %}\r\n    <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage-1) }) }}\">&larr; Prev</a></li>\r\n    {% endif %}\r\n\r\n    {% for page in 1..records.lastPage %}\r\n    <li class=\"{{ records.currentPage == page ? \'active\' : null }}\">\r\n        <a href=\"{{ this.page.baseFileName|page({ (pageParam): page }) }}\">{{ page }}</a>\r\n    </li>\r\n    {% endfor %}\r\n\r\n    {% if records.lastPage > records.currentPage %}\r\n    <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage+1) }) }}\">Next &rarr;</a></li>\r\n    {% endif %}\r\n</ul>\r\n{% endif %}', 'title = \"Movies\"\r\nurl = \"/movies\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Movies\\Models\\Movie\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"name\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"movie-single\"\r\ndetailsKeyColumn = \"slug\"\r\ndetailsUrlParameter = \"slug\"\r\nrecordsPerPage = 1\r\npageNumber = \"{{ :page }}\"\r\n==\r\n{% set records = builderList.records %}\r\n{% set displayColumn = builderList.displayColumn %}\r\n{% set noRecordsMessage = builderList.noRecordsMessage %}\r\n{% set detailsPage = builderList.detailsPage %}\r\n{% set detailsKeyColumn = builderList.detailsKeyColumn %}\r\n{% set detailsUrlParameter = builderList.detailsUrlParameter %}\r\n\r\n<ul class=\"record-list\">\r\n    {% for record in records %}\r\n    <li>\r\n        {# Use spaceless tag to remove spaces inside the A tag. #}\r\n        <h3>\r\n            {% spaceless %}\r\n            {% if detailsPage %}\r\n            <a href=\"{{ detailsPage|page({ (detailsUrlParameter): attribute(record, detailsKeyColumn) }) }}\">\r\n                {% endif %}\r\n\r\n                {{ record.name }} - {{ record.year }}\r\n\r\n                {% if detailsPage %}\r\n            </a>\r\n            {% endif %}\r\n            {% endspaceless %}\r\n        </h3>\r\n\r\n        {{html_limit(record.description,150)|raw}}\r\n\r\n    </li>\r\n    {% else %}\r\n    <li class=\"no-data\">{{ noRecordsMessage }}</li>\r\n    {% endfor %}\r\n</ul>\r\n\r\n{% if records.lastPage > 1 %}\r\n<ul class=\"pagination\">\r\n    {% if records.currentPage > 1 %}\r\n    <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage-1) }) }}\">&larr; Prev</a></li>\r\n    {% endif %}\r\n\r\n    {% for page in 1..records.lastPage %}\r\n    <li class=\"{{ records.currentPage == page ? \'active\' : null }}\">\r\n        <a href=\"{{ this.page.baseFileName|page({ (pageParam): page }) }}\">{{ page }}</a>\r\n    </li>\r\n    {% endfor %}\r\n\r\n    {% if records.lastPage > records.currentPage %}\r\n    <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage+1) }) }}\">Next &rarr;</a></li>\r\n    {% endif %}\r\n</ul>\r\n{% endif %}', 1, '2018-04-19 20:08:17', '2018-04-19 20:08:17'),
(11, 'update', 'olympos', 'pages/movies.htm', 'pages/movies.htm', 'title = \"Movies\"\r\nurl = \"/movies/:page?\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Movies\\Models\\Movie\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"name\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"movie-single\"\r\ndetailsKeyColumn = \"slug\"\r\ndetailsUrlParameter = \"slug\"\r\nrecordsPerPage = 1\r\npageNumber = \"{{ :page }}\"\r\n==\r\n{% set records = builderList.records %}\r\n{% set displayColumn = builderList.displayColumn %}\r\n{% set noRecordsMessage = builderList.noRecordsMessage %}\r\n{% set detailsPage = builderList.detailsPage %}\r\n{% set detailsKeyColumn = builderList.detailsKeyColumn %}\r\n{% set detailsUrlParameter = builderList.detailsUrlParameter %}\r\n\r\n<ul class=\"record-list\">\r\n    {% for record in records %}\r\n    <li>\r\n        {# Use spaceless tag to remove spaces inside the A tag. #}\r\n        <h3>\r\n            {% spaceless %}\r\n            {% if detailsPage %}\r\n            <a href=\"{{ detailsPage|page({ (detailsUrlParameter): attribute(record, detailsKeyColumn) }) }}\">\r\n                {% endif %}\r\n\r\n                {{ record.name }} - {{ record.year }}\r\n\r\n                {% if detailsPage %}\r\n            </a>\r\n            {% endif %}\r\n            {% endspaceless %}\r\n        </h3>\r\n\r\n        {{html_limit(record.description,150)|raw}}\r\n\r\n    </li>\r\n    {% else %}\r\n    <li class=\"no-data\">{{ noRecordsMessage }}</li>\r\n    {% endfor %}\r\n</ul>\r\n\r\n{% if records.lastPage > 1 %}\r\n<ul class=\"pagination\">\r\n    {% if records.currentPage > 1 %}\r\n    <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage-1) }) }}\">&larr; Prev</a></li>\r\n    {% endif %}\r\n\r\n    {% for page in 1..records.lastPage %}\r\n    <li class=\"{{ records.currentPage == page ? \'active\' : null }}\">\r\n        <a href=\"{{ this.page.baseFileName|page({ (pageParam): page }) }}\">{{ page }}</a>\r\n    </li>\r\n    {% endfor %}\r\n\r\n    {% if records.lastPage > records.currentPage %}\r\n    <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage+1) }) }}\">Next &rarr;</a></li>\r\n    {% endif %}\r\n</ul>\r\n{% endif %}', 'title = \"Movies\"\r\nurl = \"/movies/:page\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Movies\\Models\\Movie\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"name\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"movie-single\"\r\ndetailsKeyColumn = \"slug\"\r\ndetailsUrlParameter = \"slug\"\r\nrecordsPerPage = 1\r\npageNumber = \"{{ :page }}\"\r\n==\r\n{% set records = builderList.records %}\r\n{% set displayColumn = builderList.displayColumn %}\r\n{% set noRecordsMessage = builderList.noRecordsMessage %}\r\n{% set detailsPage = builderList.detailsPage %}\r\n{% set detailsKeyColumn = builderList.detailsKeyColumn %}\r\n{% set detailsUrlParameter = builderList.detailsUrlParameter %}\r\n\r\n<ul class=\"record-list\">\r\n    {% for record in records %}\r\n    <li>\r\n        {# Use spaceless tag to remove spaces inside the A tag. #}\r\n        <h3>\r\n            {% spaceless %}\r\n            {% if detailsPage %}\r\n            <a href=\"{{ detailsPage|page({ (detailsUrlParameter): attribute(record, detailsKeyColumn) }) }}\">\r\n                {% endif %}\r\n\r\n                {{ record.name }} - {{ record.year }}\r\n\r\n                {% if detailsPage %}\r\n            </a>\r\n            {% endif %}\r\n            {% endspaceless %}\r\n        </h3>\r\n\r\n        {{html_limit(record.description,150)|raw}}\r\n\r\n    </li>\r\n    {% else %}\r\n    <li class=\"no-data\">{{ noRecordsMessage }}</li>\r\n    {% endfor %}\r\n</ul>\r\n\r\n{% if records.lastPage > 1 %}\r\n<ul class=\"pagination\">\r\n    {% if records.currentPage > 1 %}\r\n    <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage-1) }) }}\">&larr; Prev</a></li>\r\n    {% endif %}\r\n\r\n    {% for page in 1..records.lastPage %}\r\n    <li class=\"{{ records.currentPage == page ? \'active\' : null }}\">\r\n        <a href=\"{{ this.page.baseFileName|page({ (pageParam): page }) }}\">{{ page }}</a>\r\n    </li>\r\n    {% endfor %}\r\n\r\n    {% if records.lastPage > records.currentPage %}\r\n    <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage+1) }) }}\">Next &rarr;</a></li>\r\n    {% endif %}\r\n</ul>\r\n{% endif %}', 1, '2018-04-19 20:08:28', '2018-04-19 20:08:28'),
(12, 'update', 'olympos', 'pages/movies.htm', 'pages/movies.htm', 'title = \"Movies\"\r\nurl = \"/movies/:page?\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Movies\\Models\\Movie\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"name\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"movie-single\"\r\ndetailsKeyColumn = \"slug\"\r\ndetailsUrlParameter = \"slug\"\r\nrecordsPerPage = 2\r\npageNumber = \"{{ :page }}\"\r\n==\r\n{% set records = builderList.records %}\r\n{% set displayColumn = builderList.displayColumn %}\r\n{% set noRecordsMessage = builderList.noRecordsMessage %}\r\n{% set detailsPage = builderList.detailsPage %}\r\n{% set detailsKeyColumn = builderList.detailsKeyColumn %}\r\n{% set detailsUrlParameter = builderList.detailsUrlParameter %}\r\n\r\n<ul class=\"record-list\">\r\n    {% for record in records %}\r\n    <li>\r\n        {# Use spaceless tag to remove spaces inside the A tag. #}\r\n        <h3>\r\n            {% spaceless %}\r\n            {% if detailsPage %}\r\n            <a href=\"{{ detailsPage|page({ (detailsUrlParameter): attribute(record, detailsKeyColumn) }) }}\">\r\n                {% endif %}\r\n\r\n                {{ record.name }} - {{ record.year }}\r\n\r\n                {% if detailsPage %}\r\n            </a>\r\n            {% endif %}\r\n            {% endspaceless %}\r\n        </h3>\r\n\r\n        {{html_limit(record.description,150)|raw}}\r\n\r\n    </li>\r\n    {% else %}\r\n    <li class=\"no-data\">{{ noRecordsMessage }}</li>\r\n    {% endfor %}\r\n</ul>\r\n\r\n{% if records.lastPage > 1 %}\r\n<ul class=\"pagination\">\r\n    {% if records.currentPage > 1 %}\r\n    <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage-1) }) }}\">&larr; Prev</a></li>\r\n    {% endif %}\r\n\r\n    {% for page in 1..records.lastPage %}\r\n    <li class=\"{{ records.currentPage == page ? \'active\' : null }}\">\r\n        <a href=\"{{ this.page.baseFileName|page({ (pageParam): page }) }}\">{{ page }}</a>\r\n    </li>\r\n    {% endfor %}\r\n\r\n    {% if records.lastPage > records.currentPage %}\r\n    <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage+1) }) }}\">Next &rarr;</a></li>\r\n    {% endif %}\r\n</ul>\r\n{% endif %}', 'title = \"Movies\"\r\nurl = \"/movies/:page?\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Movies\\Models\\Movie\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"name\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"movie-single\"\r\ndetailsKeyColumn = \"slug\"\r\ndetailsUrlParameter = \"slug\"\r\nrecordsPerPage = 1\r\npageNumber = \"{{ :page }}\"\r\n==\r\n{% set records = builderList.records %}\r\n{% set displayColumn = builderList.displayColumn %}\r\n{% set noRecordsMessage = builderList.noRecordsMessage %}\r\n{% set detailsPage = builderList.detailsPage %}\r\n{% set detailsKeyColumn = builderList.detailsKeyColumn %}\r\n{% set detailsUrlParameter = builderList.detailsUrlParameter %}\r\n\r\n<ul class=\"record-list\">\r\n    {% for record in records %}\r\n    <li>\r\n        {# Use spaceless tag to remove spaces inside the A tag. #}\r\n        <h3>\r\n            {% spaceless %}\r\n            {% if detailsPage %}\r\n            <a href=\"{{ detailsPage|page({ (detailsUrlParameter): attribute(record, detailsKeyColumn) }) }}\">\r\n                {% endif %}\r\n\r\n                {{ record.name }} - {{ record.year }}\r\n\r\n                {% if detailsPage %}\r\n            </a>\r\n            {% endif %}\r\n            {% endspaceless %}\r\n        </h3>\r\n\r\n        {{html_limit(record.description,150)|raw}}\r\n\r\n    </li>\r\n    {% else %}\r\n    <li class=\"no-data\">{{ noRecordsMessage }}</li>\r\n    {% endfor %}\r\n</ul>\r\n\r\n{% if records.lastPage > 1 %}\r\n<ul class=\"pagination\">\r\n    {% if records.currentPage > 1 %}\r\n    <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage-1) }) }}\">&larr; Prev</a></li>\r\n    {% endif %}\r\n\r\n    {% for page in 1..records.lastPage %}\r\n    <li class=\"{{ records.currentPage == page ? \'active\' : null }}\">\r\n        <a href=\"{{ this.page.baseFileName|page({ (pageParam): page }) }}\">{{ page }}</a>\r\n    </li>\r\n    {% endfor %}\r\n\r\n    {% if records.lastPage > records.currentPage %}\r\n    <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage+1) }) }}\">Next &rarr;</a></li>\r\n    {% endif %}\r\n</ul>\r\n{% endif %}', 1, '2018-04-19 20:11:01', '2018-04-19 20:11:01'),
(13, 'update', 'olympos', 'pages/movie-single.htm', 'pages/movie-single.htm', 'title = \"Movie single\"\r\nurl = \"/movies/movie/:slug\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[builderDetails]\r\nmodelClass = \"Grcote7\\Movies\\Models\\Movie\"\r\nidentifierValue = \"{{ :slug }}\"\r\nmodelKeyColumn = \"slug\"\r\ndisplayColumn = \"name\"\r\nnotFoundMessage = \"Record not found\"\r\n==\r\n{% set record = builderDetails.record %}\r\n{% set displayColumn = builderDetails.displayColumn %}\r\n{% set notFoundMessage = builderDetails.notFoundMessage %}\r\n\r\n{% if record %}\r\n<h2>{{ record.name }}</h2>\r\n<h4>{{ record.year }}</h4>\r\n<h3>Description</h3>\r\n{{ record.description|raw }}\r\n{% else %}\r\n{{ notFoundMessage }}\r\n{% endif %}', 'title = \"Movie single\"\r\nurl = \"/movies/:slug\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[builderDetails]\r\nmodelClass = \"Grcote7\\Movies\\Models\\Movie\"\r\nidentifierValue = \"{{ :slug }}\"\r\nmodelKeyColumn = \"slug\"\r\ndisplayColumn = \"name\"\r\nnotFoundMessage = \"Record not found\"\r\n==\r\n{% set record = builderDetails.record %}\r\n{% set displayColumn = builderDetails.displayColumn %}\r\n{% set notFoundMessage = builderDetails.notFoundMessage %}\r\n\r\n{% if record %}\r\n<h2>{{ record.name }}</h2>\r\n<h4>{{ record.year }}</h4>\r\n<h3>Description</h3>\r\n{{ record.description|raw }}\r\n{% else %}\r\n{{ notFoundMessage }}\r\n{% endif %}', 1, '2018-04-19 20:13:18', '2018-04-19 20:13:18'),
(14, 'update', 'olympos', 'pages/movies.htm', 'pages/movies.htm', 'title = \"Movies\"\r\nurl = \"/movies/:page?\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Movies\\Models\\Movie\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"name\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"movie-single\"\r\ndetailsKeyColumn = \"slug\"\r\ndetailsUrlParameter = \"slug\"\r\nrecordsPerPage = 7\r\npageNumber = \"{{ :page }}\"\r\n==\r\n{% set records = builderList.records %}\r\n{% set displayColumn = builderList.displayColumn %}\r\n{% set noRecordsMessage = builderList.noRecordsMessage %}\r\n{% set detailsPage = builderList.detailsPage %}\r\n{% set detailsKeyColumn = builderList.detailsKeyColumn %}\r\n{% set detailsUrlParameter = builderList.detailsUrlParameter %}\r\n\r\n<ul class=\"record-list\">\r\n    {% for record in records %}\r\n    <li>\r\n        {# Use spaceless tag to remove spaces inside the A tag. #}\r\n        <h3>\r\n            {% spaceless %}\r\n            {% if detailsPage %}\r\n            <a href=\"{{ detailsPage|page({ (detailsUrlParameter): attribute(record, detailsKeyColumn) }) }}\">\r\n                {% endif %}\r\n\r\n                {{ record.name }} - {{ record.year }}\r\n\r\n                {% if detailsPage %}\r\n            </a>\r\n            {% endif %}\r\n            {% endspaceless %}\r\n        </h3>\r\n\r\n        {{html_limit(record.description,150)|raw}}\r\n\r\n    </li>\r\n    {% else %}\r\n    <li class=\"no-data\">{{ noRecordsMessage }}</li>\r\n    {% endfor %}\r\n</ul>\r\n\r\n{% if records.lastPage > 1 %}\r\n<ul class=\"pagination\">\r\n    {% if records.currentPage > 1 %}\r\n    <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage-1) }) }}\">&larr; Prev</a></li>\r\n    {% endif %}\r\n\r\n    {% for page in 1..records.lastPage %}\r\n    <li class=\"{{ records.currentPage == page ? \'active\' : null }}\">\r\n        <a href=\"{{ this.page.baseFileName|page({ (pageParam): page }) }}\">{{ page }}</a>\r\n    </li>\r\n    {% endfor %}\r\n\r\n    {% if records.lastPage > records.currentPage %}\r\n    <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage+1) }) }}\">Next &rarr;</a></li>\r\n    {% endif %}\r\n</ul>\r\n{% endif %}', 'title = \"Movies\"\r\nurl = \"/movies/:page?\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Movies\\Models\\Movie\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"name\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"movie-single\"\r\ndetailsKeyColumn = \"slug\"\r\ndetailsUrlParameter = \"slug\"\r\nrecordsPerPage = 2\r\npageNumber = \"{{ :page }}\"\r\n==\r\n{% set records = builderList.records %}\r\n{% set displayColumn = builderList.displayColumn %}\r\n{% set noRecordsMessage = builderList.noRecordsMessage %}\r\n{% set detailsPage = builderList.detailsPage %}\r\n{% set detailsKeyColumn = builderList.detailsKeyColumn %}\r\n{% set detailsUrlParameter = builderList.detailsUrlParameter %}\r\n\r\n<ul class=\"record-list\">\r\n    {% for record in records %}\r\n    <li>\r\n        {# Use spaceless tag to remove spaces inside the A tag. #}\r\n        <h3>\r\n            {% spaceless %}\r\n            {% if detailsPage %}\r\n            <a href=\"{{ detailsPage|page({ (detailsUrlParameter): attribute(record, detailsKeyColumn) }) }}\">\r\n                {% endif %}\r\n\r\n                {{ record.name }} - {{ record.year }}\r\n\r\n                {% if detailsPage %}\r\n            </a>\r\n            {% endif %}\r\n            {% endspaceless %}\r\n        </h3>\r\n\r\n        {{html_limit(record.description,150)|raw}}\r\n\r\n    </li>\r\n    {% else %}\r\n    <li class=\"no-data\">{{ noRecordsMessage }}</li>\r\n    {% endfor %}\r\n</ul>\r\n\r\n{% if records.lastPage > 1 %}\r\n<ul class=\"pagination\">\r\n    {% if records.currentPage > 1 %}\r\n    <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage-1) }) }}\">&larr; Prev</a></li>\r\n    {% endif %}\r\n\r\n    {% for page in 1..records.lastPage %}\r\n    <li class=\"{{ records.currentPage == page ? \'active\' : null }}\">\r\n        <a href=\"{{ this.page.baseFileName|page({ (pageParam): page }) }}\">{{ page }}</a>\r\n    </li>\r\n    {% endfor %}\r\n\r\n    {% if records.lastPage > records.currentPage %}\r\n    <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage+1) }) }}\">Next &rarr;</a></li>\r\n    {% endif %}\r\n</ul>\r\n{% endif %}', 1, '2018-04-19 20:15:09', '2018-04-19 20:15:09'),
(15, 'update', 'olympos', 'pages/movies.htm', 'pages/movies.htm', 'title = \"Movies\"\r\nurl = \"/movies/:page?\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Movies\\Models\\Movie\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"name\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"movie-single\"\r\ndetailsKeyColumn = \"slug\"\r\ndetailsUrlParameter = \"slug\"\r\nrecordsPerPage = 2\r\npageNumber = \"{{ :page }}\"\r\n==\r\n{% set records = builderList.records %}\r\n{% set displayColumn = builderList.displayColumn %}\r\n{% set noRecordsMessage = builderList.noRecordsMessage %}\r\n{% set detailsPage = builderList.detailsPage %}\r\n{% set detailsKeyColumn = builderList.detailsKeyColumn %}\r\n{% set detailsUrlParameter = builderList.detailsUrlParameter %}\r\n\r\n<ul class=\"record-list\">\r\n    {% for record in records %}\r\n    <li>\r\n        {# Use spaceless tag to remove spaces inside the A tag. #}\r\n        <h3>\r\n            {% spaceless %}\r\n            {% if detailsPage %}\r\n            <a href=\"{{ detailsPage|page({ (detailsUrlParameter): attribute(record, detailsKeyColumn) }) }}\">\r\n                {% endif %}\r\n\r\n                {{ record.name }} - {{ record.year }}\r\n\r\n                {% if detailsPage %}\r\n            </a>\r\n            {% endif %}\r\n            {% endspaceless %}\r\n        </h3>\r\n\r\n        {{html_limit(record.description,150)|raw}}\r\n\r\n    </li>\r\n    {% else %}\r\n    <li class=\"no-data\">{{ noRecordsMessage }}</li>\r\n    {% endfor %}\r\n</ul>\r\n\r\n{% if records.lastPage > 1 %}\r\n<ul class=\"pagination\">\r\n    {% if records.currentPage > 1 %}\r\n    <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage-1) }) }}\">&larr; Prev</a></li>\r\n    {% endif %}\r\n\r\n    {% for page in 1..records.lastPage %}\r\n    <li class=\"{{ records.currentPage == page ? \'active\' : null }}\">\r\n        <a href=\"{{ this.page.baseFileName|page({ (pageParam): page }) }}\">{{ page }}</a>\r\n    </li>\r\n    {% endfor %}\r\n\r\n    {% if records.lastPage > records.currentPage %}\r\n    <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage+1) }) }}\">Next &rarr;</a></li>\r\n    {% endif %}\r\n</ul>\r\n{% endif %}', 'title = \"Movies\"\r\nurl = \"/movies/:page?\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Movies\\Models\\Movie\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"name\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"movie-single\"\r\ndetailsKeyColumn = \"slug\"\r\ndetailsUrlParameter = \"slug\"\r\nrecordsPerPage = 7\r\npageNumber = \"{{ :page }}\"\r\n==\r\n{% set records = builderList.records %}\r\n{% set displayColumn = builderList.displayColumn %}\r\n{% set noRecordsMessage = builderList.noRecordsMessage %}\r\n{% set detailsPage = builderList.detailsPage %}\r\n{% set detailsKeyColumn = builderList.detailsKeyColumn %}\r\n{% set detailsUrlParameter = builderList.detailsUrlParameter %}\r\n\r\n<ul class=\"record-list\">\r\n    {% for record in records %}\r\n    <li>\r\n        {# Use spaceless tag to remove spaces inside the A tag. #}\r\n        <h3>\r\n            {% spaceless %}\r\n            {% if detailsPage %}\r\n            <a href=\"{{ detailsPage|page({ (detailsUrlParameter): attribute(record, detailsKeyColumn) }) }}\">\r\n                {% endif %}\r\n\r\n                {{ record.name }} - {{ record.year }}\r\n\r\n                {% if detailsPage %}\r\n            </a>\r\n            {% endif %}\r\n            {% endspaceless %}\r\n        </h3>\r\n\r\n        {{html_limit(record.description,150)|raw}}\r\n\r\n    </li>\r\n    {% else %}\r\n    <li class=\"no-data\">{{ noRecordsMessage }}</li>\r\n    {% endfor %}\r\n</ul>\r\n\r\n{% if records.lastPage > 1 %}\r\n<ul class=\"pagination\">\r\n    {% if records.currentPage > 1 %}\r\n    <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage-1) }) }}\">&larr; Prev</a></li>\r\n    {% endif %}\r\n\r\n    {% for page in 1..records.lastPage %}\r\n    <li class=\"{{ records.currentPage == page ? \'active\' : null }}\">\r\n        <a href=\"{{ this.page.baseFileName|page({ (pageParam): page }) }}\">{{ page }}</a>\r\n    </li>\r\n    {% endfor %}\r\n\r\n    {% if records.lastPage > records.currentPage %}\r\n    <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage+1) }) }}\">Next &rarr;</a></li>\r\n    {% endif %}\r\n</ul>\r\n{% endif %}', 1, '2018-04-23 21:26:39', '2018-04-23 21:26:39');
INSERT INTO `cms_theme_logs` (`id`, `type`, `theme`, `template`, `old_template`, `content`, `old_content`, `user_id`, `created_at`, `updated_at`) VALUES
(16, 'update', 'olympos', 'pages/movies.htm', 'pages/movies.htm', 'title = \"Movies\"\r\nurl = \"/movies/:page?\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Movies\\Models\\Movie\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"name\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"movie-single\"\r\ndetailsKeyColumn = \"slug\"\r\ndetailsUrlParameter = \"slug\"\r\nrecordsPerPage = 7\r\npageNumber = \"{{ :page }}\"\r\n==\r\n{% set records = builderList.records %}\r\n{% set displayColumn = builderList.displayColumn %}\r\n{% set noRecordsMessage = builderList.noRecordsMessage %}\r\n{% set detailsPage = builderList.detailsPage %}\r\n{% set detailsKeyColumn = builderList.detailsKeyColumn %}\r\n{% set detailsUrlParameter = builderList.detailsUrlParameter %}\r\n\r\n<ul class=\"record-list\">\r\n    {% for record in records %}\r\n    <li>\r\n        {# Use spaceless tag to remove spaces inside the A tag. #}\r\n        <h3>\r\n            {% spaceless %}\r\n            {% if detailsPage %}\r\n            <a href=\"{{ detailsPage|page({ (detailsUrlParameter): attribute(record, detailsKeyColumn) }) }}\">\r\n                {% endif %}\r\n\r\n                {{ record.name }} - {{ record.year }}\r\n\r\n                {% if detailsPage %}\r\n            </a>\r\n            {% endif %}\r\n            {% endspaceless %}\r\n        </h3>\r\n\r\n        {{html_limit(record.description,150)|raw}}\r\n\r\n    </li>\r\n    {% else %}\r\n    <li class=\"no-data\">{{ noRecordsMessage }}</li>\r\n    {% endfor %}\r\n</ul>\r\n\r\n{% if records.lastPage > 1 %}\r\n<ul class=\"pagination\">\r\n    {% if records.currentPage > 1 %}\r\n    <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage-1) }) }}\">&larr; Prev</a></li>\r\n    {% endif %}\r\n\r\n    {% for page in 1..records.lastPage %}\r\n    <li class=\"{{ records.currentPage == page ? \'active\' : null }}\">\r\n        <a href=\"{{ this.page.baseFileName|page({ (pageParam): page }) }}\">{{ page }}</a>\r\n    </li>\r\n    {% endfor %}\r\n\r\n    {% if records.lastPage > records.currentPage %}\r\n    <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage+1) }) }}\">Next &rarr;</a></li>\r\n    {% endif %}\r\n</ul>\r\n{% endif %}', 'title = \"Movies\"\r\nurl = \"/movies/:page?\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Movies\\Models\\Movie\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"name\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"movie-single\"\r\ndetailsKeyColumn = \"slug\"\r\ndetailsUrlParameter = \"slug\"\r\nrecordsPerPage = 2\r\npageNumber = \"{{ :page }}\"\r\n==\r\n{% set records = builderList.records %}\r\n{% set displayColumn = builderList.displayColumn %}\r\n{% set noRecordsMessage = builderList.noRecordsMessage %}\r\n{% set detailsPage = builderList.detailsPage %}\r\n{% set detailsKeyColumn = builderList.detailsKeyColumn %}\r\n{% set detailsUrlParameter = builderList.detailsUrlParameter %}\r\n\r\n<ul class=\"record-list\">\r\n    {% for record in records %}\r\n    <li>\r\n        {# Use spaceless tag to remove spaces inside the A tag. #}\r\n        <h3>\r\n            {% spaceless %}\r\n            {% if detailsPage %}\r\n            <a href=\"{{ detailsPage|page({ (detailsUrlParameter): attribute(record, detailsKeyColumn) }) }}\">\r\n                {% endif %}\r\n\r\n                {{ record.name }} - {{ record.year }}\r\n\r\n                {% if detailsPage %}\r\n            </a>\r\n            {% endif %}\r\n            {% endspaceless %}\r\n        </h3>\r\n\r\n        {{html_limit(record.description,150)|raw}}\r\n\r\n    </li>\r\n    {% else %}\r\n    <li class=\"no-data\">{{ noRecordsMessage }}</li>\r\n    {% endfor %}\r\n</ul>\r\n\r\n{% if records.lastPage > 1 %}\r\n<ul class=\"pagination\">\r\n    {% if records.currentPage > 1 %}\r\n    <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage-1) }) }}\">&larr; Prev</a></li>\r\n    {% endif %}\r\n\r\n    {% for page in 1..records.lastPage %}\r\n    <li class=\"{{ records.currentPage == page ? \'active\' : null }}\">\r\n        <a href=\"{{ this.page.baseFileName|page({ (pageParam): page }) }}\">{{ page }}</a>\r\n    </li>\r\n    {% endfor %}\r\n\r\n    {% if records.lastPage > records.currentPage %}\r\n    <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage+1) }) }}\">Next &rarr;</a></li>\r\n    {% endif %}\r\n</ul>\r\n{% endif %}', 1, '2018-04-23 21:30:42', '2018-04-23 21:30:42'),
(17, 'update', 'olympos', 'pages/movies.htm', 'pages/movies.htm', 'title = \"Movies\"\r\nurl = \"/movies/:page?\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Movies\\Models\\Movie\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"name\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"movie-single\"\r\ndetailsKeyColumn = \"slug\"\r\ndetailsUrlParameter = \"slug\"\r\nrecordsPerPage = 1\r\npageNumber = \"{{ :page }}\"\r\n==\r\n{% set records = builderList.records %}\r\n{% set displayColumn = builderList.displayColumn %}\r\n{% set noRecordsMessage = builderList.noRecordsMessage %}\r\n{% set detailsPage = builderList.detailsPage %}\r\n{% set detailsKeyColumn = builderList.detailsKeyColumn %}\r\n{% set detailsUrlParameter = builderList.detailsUrlParameter %}\r\n\r\n<ul class=\"record-list\">\r\n  {% for record in records %}\r\n  <li>\r\n    {# Use spaceless tag to remove spaces inside the A tag. #}\r\n    <h3>\r\n      {% spaceless %}\r\n      {% if detailsPage %}\r\n      <a href=\"{{ detailsPage|page({ (detailsUrlParameter): attribute(record, detailsKeyColumn) }) }}\">\r\n        {% endif %}\r\n\r\n        {{ record.name }} - {{ record.year }}\r\n\r\n        {% if detailsPage %}\r\n      </a>\r\n      {% endif %}\r\n      {% endspaceless %}\r\n    </h3>\r\n\r\n    {{html_limit(record.description,150)|raw}}\r\n\r\n  </li>\r\n  {% else %}\r\n  <li class=\"no-data\">{{ noRecordsMessage }}</li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n{% if records.lastPage > 1 %}\r\n<ul class=\"pagination\">\r\n  {% if records.currentPage > 1 %}\r\n  <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage-1) }) }}\">&larr; Prev</a></li>\r\n  {% endif %}\r\n\r\n  {% for page in 1..records.lastPage %}\r\n  <li class=\"{{ records.currentPage == page ? \'active\' : null }}\">\r\n    <a href=\"{{ this.page.baseFileName|page({ (pageParam): page }) }}\">{{ page }}</a>\r\n  </li>\r\n  {% endfor %}\r\n\r\n  {% if records.lastPage > records.currentPage %}\r\n  <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage+1) }) }}\">Next &rarr;</a></li>\r\n  {% endif %}\r\n</ul>\r\n{% endif %}', 'title = \"Movies\"\r\nurl = \"/movies/:page?\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Movies\\Models\\Movie\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"name\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"movie-single\"\r\ndetailsKeyColumn = \"slug\"\r\ndetailsUrlParameter = \"slug\"\r\nrecordsPerPage = 7\r\npageNumber = \"{{ :page }}\"\r\n==\r\n{% set records = builderList.records %}\r\n{% set displayColumn = builderList.displayColumn %}\r\n{% set noRecordsMessage = builderList.noRecordsMessage %}\r\n{% set detailsPage = builderList.detailsPage %}\r\n{% set detailsKeyColumn = builderList.detailsKeyColumn %}\r\n{% set detailsUrlParameter = builderList.detailsUrlParameter %}\r\n\r\n<ul class=\"record-list\">\r\n  {% for record in records %}\r\n  <li>\r\n    {# Use spaceless tag to remove spaces inside the A tag. #}\r\n    <h3>\r\n      {% spaceless %}\r\n      {% if detailsPage %}\r\n      <a href=\"{{ detailsPage|page({ (detailsUrlParameter): attribute(record, detailsKeyColumn) }) }}\">\r\n        {% endif %}\r\n\r\n        {{ record.name }} - {{ record.year }}\r\n\r\n        {% if detailsPage %}\r\n      </a>\r\n      {% endif %}\r\n      {% endspaceless %}\r\n    </h3>\r\n\r\n    {{html_limit(record.description,150)|raw}}\r\n\r\n  </li>\r\n  {% else %}\r\n  <li class=\"no-data\">{{ noRecordsMessage }}</li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n{% if records.lastPage > 1 %}\r\n<ul class=\"pagination\">\r\n  {% if records.currentPage > 1 %}\r\n  <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage-1) }) }}\">&larr; Prev</a></li>\r\n  {% endif %}\r\n\r\n  {% for page in 1..records.lastPage %}\r\n  <li class=\"{{ records.currentPage == page ? \'active\' : null }}\">\r\n    <a href=\"{{ this.page.baseFileName|page({ (pageParam): page }) }}\">{{ page }}</a>\r\n  </li>\r\n  {% endfor %}\r\n\r\n  {% if records.lastPage > records.currentPage %}\r\n  <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage+1) }) }}\">Next &rarr;</a></li>\r\n  {% endif %}\r\n</ul>\r\n{% endif %}', 1, '2018-04-23 22:18:31', '2018-04-23 22:18:31'),
(18, 'update', 'olympos', 'pages/movies.htm', 'pages/movies.htm', 'title = \"Movies\"\r\nurl = \"/movies/:page?\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Movies\\Models\\Movie\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"name\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"movie-single\"\r\ndetailsKeyColumn = \"slug\"\r\ndetailsUrlParameter = \"slug\"\r\nrecordsPerPage = 7\r\npageNumber = \"{{ :page }}\"\r\n==\r\n{% set records = builderList.records %}\r\n{% set displayColumn = builderList.displayColumn %}\r\n{% set noRecordsMessage = builderList.noRecordsMessage %}\r\n{% set detailsPage = builderList.detailsPage %}\r\n{% set detailsKeyColumn = builderList.detailsKeyColumn %}\r\n{% set detailsUrlParameter = builderList.detailsUrlParameter %}\r\n\r\n<ul class=\"record-list\">\r\n  {% for record in records %}\r\n  <li>\r\n    {# Use spaceless tag to remove spaces inside the A tag. #}\r\n    <h3>\r\n      {% spaceless %}\r\n      {% if detailsPage %}\r\n      <a href=\"{{ detailsPage|page({ (detailsUrlParameter): attribute(record, detailsKeyColumn) }) }}\">\r\n        {% endif %}\r\n\r\n        {{ record.name }} - {{ record.year }}\r\n\r\n        {% if detailsPage %}\r\n      </a>\r\n      {% endif %}\r\n      {% endspaceless %}\r\n    </h3>\r\n\r\n    {{html_limit(record.description,150)|raw}}\r\n\r\n  </li>\r\n  {% else %}\r\n  <li class=\"no-data\">{{ noRecordsMessage }}</li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n{% if records.lastPage > 1 %}\r\n<ul class=\"pagination\">\r\n  {% if records.currentPage > 1 %}\r\n  <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage-1) }) }}\">&larr; Prev</a></li>\r\n  {% endif %}\r\n\r\n  {% for page in 1..records.lastPage %}\r\n  <li class=\"{{ records.currentPage == page ? \'active\' : null }}\">\r\n    <a href=\"{{ this.page.baseFileName|page({ (pageParam): page }) }}\">{{ page }}</a>\r\n  </li>\r\n  {% endfor %}\r\n\r\n  {% if records.lastPage > records.currentPage %}\r\n  <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage+1) }) }}\">Next &rarr;</a></li>\r\n  {% endif %}\r\n</ul>\r\n{% endif %}', 'title = \"Movies\"\r\nurl = \"/movies/:page?\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Movies\\Models\\Movie\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"name\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"movie-single\"\r\ndetailsKeyColumn = \"slug\"\r\ndetailsUrlParameter = \"slug\"\r\nrecordsPerPage = 1\r\npageNumber = \"{{ :page }}\"\r\n==\r\n{% set records = builderList.records %}\r\n{% set displayColumn = builderList.displayColumn %}\r\n{% set noRecordsMessage = builderList.noRecordsMessage %}\r\n{% set detailsPage = builderList.detailsPage %}\r\n{% set detailsKeyColumn = builderList.detailsKeyColumn %}\r\n{% set detailsUrlParameter = builderList.detailsUrlParameter %}\r\n\r\n<ul class=\"record-list\">\r\n  {% for record in records %}\r\n  <li>\r\n    {# Use spaceless tag to remove spaces inside the A tag. #}\r\n    <h3>\r\n      {% spaceless %}\r\n      {% if detailsPage %}\r\n      <a href=\"{{ detailsPage|page({ (detailsUrlParameter): attribute(record, detailsKeyColumn) }) }}\">\r\n        {% endif %}\r\n\r\n        {{ record.name }} - {{ record.year }}\r\n\r\n        {% if detailsPage %}\r\n      </a>\r\n      {% endif %}\r\n      {% endspaceless %}\r\n    </h3>\r\n\r\n    {{html_limit(record.description,150)|raw}}\r\n\r\n  </li>\r\n  {% else %}\r\n  <li class=\"no-data\">{{ noRecordsMessage }}</li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n{% if records.lastPage > 1 %}\r\n<ul class=\"pagination\">\r\n  {% if records.currentPage > 1 %}\r\n  <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage-1) }) }}\">&larr; Prev</a></li>\r\n  {% endif %}\r\n\r\n  {% for page in 1..records.lastPage %}\r\n  <li class=\"{{ records.currentPage == page ? \'active\' : null }}\">\r\n    <a href=\"{{ this.page.baseFileName|page({ (pageParam): page }) }}\">{{ page }}</a>\r\n  </li>\r\n  {% endfor %}\r\n\r\n  {% if records.lastPage > records.currentPage %}\r\n  <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (records.currentPage+1) }) }}\">Next &rarr;</a></li>\r\n  {% endif %}\r\n</ul>\r\n{% endif %}', 1, '2018-04-23 22:19:49', '2018-04-23 22:19:49'),
(19, 'create', 'olympos', 'pages/genres.htm', '', 'title = \"Genres\"\r\nurl = \"/genres/:slug\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n==', NULL, 1, '2018-04-23 23:40:33', '2018-04-23 23:40:33'),
(20, 'update', 'olympos', 'pages/genres.htm', 'pages/genres.htm', 'title = \"Genres\"\r\nurl = \"/genres/:slug\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[builderDetails]\r\nmodelClass = \"Grcote7\\Movies\\Models\\Genre\"\r\nidentifierValue = \"{{ :slug }}\"\r\nmodelKeyColumn = \"slug\"\r\ndisplayColumn = \"genre_title\"\r\nnotFoundMessage = \"Record not found\"\r\n==\r\n{% component \'builderDetails\' %}', 'title = \"Genres\"\r\nurl = \"/genres/:slug\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n==', 1, '2018-04-23 23:41:36', '2018-04-23 23:41:36'),
(21, 'update', 'olympos', 'pages/genres.htm', 'pages/genres.htm', 'title = \"Genres\"\r\nurl = \"/genres/:slug\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[builderDetails]\r\nmodelClass = \"Grcote7\\Movies\\Models\\Genre\"\r\nidentifierValue = \"{{ :slug }}\"\r\nmodelKeyColumn = \"slug\"\r\ndisplayColumn = \"genre_title\"\r\nnotFoundMessage = \"Record not found\"\r\n==\r\n{% set record = builderDetails.record %}\r\n{% set displayColumn = builderDetails.displayColumn %}\r\n{% set notFoundMessage = builderDetails.notFoundMessage %}\r\n\r\n{% if record %}\r\n    {{ attribute(record, displayColumn) }}\r\n{% else %}\r\n    {{ notFoundMessage }}\r\n{% endif %}', 'title = \"Genres\"\r\nurl = \"/genres/:slug\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[builderDetails]\r\nmodelClass = \"Grcote7\\Movies\\Models\\Genre\"\r\nidentifierValue = \"{{ :slug }}\"\r\nmodelKeyColumn = \"slug\"\r\ndisplayColumn = \"genre_title\"\r\nnotFoundMessage = \"Record not found\"\r\n==\r\n{% component \'builderDetails\' %}', 1, '2018-04-23 23:42:07', '2018-04-23 23:42:07'),
(22, 'update', 'olympos', 'pages/homepage.htm', 'pages/homepage.htm', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[blogPosts]\r\npageNumber = \"{{ :page }}\"\r\npostsPerPage = 10\r\nnoPostsMessage = \"No posts found\"\r\nsortOrder = \"published_at desc\"\r\ncategoryPage = \"blog/category\"\r\npostPage = \"blog/post\"\r\n==\r\n<h2>This is our homepage ! Yay !</h2>\r\n\r\n{% component \'blogPosts\' %}\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Ab accusantium aliquid aperiam at, atque delectus et ex explicabo iusto laboriosam maxime modi neque omnis\r\n  quibusdamquis, ratione repellat repellendus sint sit soluta tempore velit veritatis voluptates? Laborum,\r\n  voluptate.</p>\r\n<p>Libero, molestias omnis optio provident quia quisquam quod unde vero? Ad architecto iste odio officia quia!</p>\r\n<p>Animi architecto at est explicabo maiores, quibusdam repellat? Alias dolor error, exercitationem odio odit officia\r\n  optio placeat quod similique voluptates! Explicabo ipsa minus natus necessitatibus neque nihil odio, ratione\r\n  delectus, doloribus et fugit quae sapiente velit veritatis! Cum, ex, voluptatum! Suscipit, tempore?</p><p>Blanditiis\r\n  dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium reiciendis\r\n  sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint voluptatem.\r\n  Cupiditate, optio!</p>', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n==\r\n<h2>This is our homepage ! Yay !</h2>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Ab accusantium aliquid aperiam at, atque delectus et ex explicabo iusto laboriosam maxime modi neque omnis\r\n  quibusdamquis, ratione repellat repellendus sint sit soluta tempore velit veritatis voluptates? Laborum,\r\n  voluptate.</p>\r\n<p>Libero, molestias omnis optio provident quia quisquam quod unde vero? Ad architecto iste odio officia quia!</p>\r\n<p>Animi architecto at est explicabo maiores, quibusdam repellat? Alias dolor error, exercitationem odio odit officia\r\n  optio placeat quod similique voluptates! Explicabo ipsa minus natus necessitatibus neque nihil odio, ratione\r\n  delectus, doloribus et fugit quae sapiente velit veritatis! Cum, ex, voluptatum! Suscipit, tempore?</p><p>Blanditiis\r\n  dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium reiciendis\r\n  sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint voluptatem.\r\n  Cupiditate, optio!</p>', 1, '2018-04-24 08:34:58', '2018-04-24 08:34:58'),
(23, 'update', 'olympos', 'pages/homepage.htm', 'pages/homepage.htm', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n==\r\n<h2>This is our homepage ! Yay !</h2>\r\n\r\n\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Ab accusantium aliquid aperiam at, atque delectus et ex explicabo iusto laboriosam maxime modi neque omnis\r\n  quibusdamquis, ratione repellat repellendus sint sit soluta tempore velit veritatis voluptates? Laborum,\r\n  voluptate.</p>\r\n<p>Libero, molestias omnis optio provident quia quisquam quod unde vero? Ad architecto iste odio officia quia!</p>\r\n<p>Animi architecto at est explicabo maiores, quibusdam repellat? Alias dolor error, exercitationem odio odit officia\r\n  optio placeat quod similique voluptates! Explicabo ipsa minus natus necessitatibus neque nihil odio, ratione\r\n  delectus, doloribus et fugit quae sapiente velit veritatis! Cum, ex, voluptatum! Suscipit, tempore?</p><p>Blanditiis\r\n  dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium reiciendis\r\n  sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint voluptatem.\r\n  Cupiditate, optio!</p>', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[blogPosts]\r\npageNumber = \"{{ :page }}\"\r\npostsPerPage = 10\r\nnoPostsMessage = \"No posts found\"\r\nsortOrder = \"published_at desc\"\r\ncategoryPage = \"blog/category\"\r\npostPage = \"blog/post\"\r\n==\r\n<h2>This is our homepage ! Yay !</h2>\r\n\r\n{% component \'blogPosts\' %}\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Ab accusantium aliquid aperiam at, atque delectus et ex explicabo iusto laboriosam maxime modi neque omnis\r\n  quibusdamquis, ratione repellat repellendus sint sit soluta tempore velit veritatis voluptates? Laborum,\r\n  voluptate.</p>\r\n<p>Libero, molestias omnis optio provident quia quisquam quod unde vero? Ad architecto iste odio officia quia!</p>\r\n<p>Animi architecto at est explicabo maiores, quibusdam repellat? Alias dolor error, exercitationem odio odit officia\r\n  optio placeat quod similique voluptates! Explicabo ipsa minus natus necessitatibus neque nihil odio, ratione\r\n  delectus, doloribus et fugit quae sapiente velit veritatis! Cum, ex, voluptatum! Suscipit, tempore?</p><p>Blanditiis\r\n  dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium reiciendis\r\n  sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint voluptatem.\r\n  Cupiditate, optio!</p>', 1, '2018-04-24 08:37:43', '2018-04-24 08:37:43'),
(24, 'update', 'olympos', 'pages/homepage.htm', 'pages/homepage.htm', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n==\r\n<h2>This is our homepage ! Yay !</h2>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Ab accusantium aliquid aperiam at, atque delectus et ex explicabo iusto laboriosam maxime modi neque omnis\r\n  quibusdamquis, ratione repellat repellendus sint sit soluta tempore velit veritatis voluptates? Laborum,\r\n  voluptate.</p>\r\n<p>Libero, molestias omnis optio provident quia quisquam quod unde vero? Ad architecto iste odio officia quia!</p>\r\n<p>Animi architecto at est explicabo maiores, quibusdam repellat? Alias dolor error, exercitationem odio odit officia\r\n  optio placeat quod similique voluptates! Explicabo ipsa minus natus necessitatibus neque nihil odio, ratione\r\n  delectus, doloribus et fugit quae sapiente velit veritatis! Cum, ex, voluptatum! Suscipit, tempore?</p><p>Blanditiis\r\n  dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium reiciendis\r\n  sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint voluptatem.\r\n  Cupiditate, optio!</p>', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n==\r\n<h2>This is our homepage ! Yay !</h2>\r\n\r\n\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Ab accusantium aliquid aperiam at, atque delectus et ex explicabo iusto laboriosam maxime modi neque omnis\r\n  quibusdamquis, ratione repellat repellendus sint sit soluta tempore velit veritatis voluptates? Laborum,\r\n  voluptate.</p>\r\n<p>Libero, molestias omnis optio provident quia quisquam quod unde vero? Ad architecto iste odio officia quia!</p>\r\n<p>Animi architecto at est explicabo maiores, quibusdam repellat? Alias dolor error, exercitationem odio odit officia\r\n  optio placeat quod similique voluptates! Explicabo ipsa minus natus necessitatibus neque nihil odio, ratione\r\n  delectus, doloribus et fugit quae sapiente velit veritatis! Cum, ex, voluptatum! Suscipit, tempore?</p><p>Blanditiis\r\n  dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium reiciendis\r\n  sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint voluptatem.\r\n  Cupiditate, optio!</p>', 1, '2018-04-24 08:37:55', '2018-04-24 08:37:55'),
(25, 'update', 'olympos', 'pages/homepage.htm', 'pages/homepage.htm', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n==\r\n<h2>This is our homepage ! Yay !</h2>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Ab accusantium aliquid aperiam at, atque delectus et ex explicabo iusto laboriosam maxime modi neque omnis\r\n  quibusdamquis, ratione repellat repellendus sint sit soluta tempore velit veritatis voluptates? Laborum,\r\n  voluptate.</p>\r\n<p>Blanditiis\r\n  dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium reiciendis\r\n  sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint voluptatem.\r\n  Cupiditate, optio!</p>', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n==\r\n<h2>This is our homepage ! Yay !</h2>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Ab accusantium aliquid aperiam at, atque delectus et ex explicabo iusto laboriosam maxime modi neque omnis\r\n  quibusdamquis, ratione repellat repellendus sint sit soluta tempore velit veritatis voluptates? Laborum,\r\n  voluptate.</p>\r\n<p>Libero, molestias omnis optio provident quia quisquam quod unde vero? Ad architecto iste odio officia quia!</p>\r\n<p>Animi architecto at est explicabo maiores, quibusdam repellat? Alias dolor error, exercitationem odio odit officia\r\n  optio placeat quod similique voluptates! Explicabo ipsa minus natus necessitatibus neque nihil odio, ratione\r\n  delectus, doloribus et fugit quae sapiente velit veritatis! Cum, ex, voluptatum! Suscipit, tempore?</p><p>Blanditiis\r\n  dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium reiciendis\r\n  sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint voluptatem.\r\n  Cupiditate, optio!</p>', 1, '2018-04-24 08:38:23', '2018-04-24 08:38:23'),
(26, 'update', 'olympos', 'pages/homepage.htm', 'pages/homepage.htm', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\n==\r\n<h2>This is our homepage ! Yay !</h2>\r\n\r\n{% component \'actors\' %}\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Ab accusantium aliquid aperiam at, atque delectus et ex explicabo iusto laboriosam maxime modi neque omnis\r\n  quibusdamquis, ratione repellat repellendus sint sit soluta tempore velit veritatis voluptates? Laborum,\r\n  voluptate.</p>\r\n<p>Blanditiis\r\n  dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium reiciendis\r\n  sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint voluptatem.\r\n  Cupiditate, optio!</p>', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n==\r\n<h2>This is our homepage ! Yay !</h2>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Ab accusantium aliquid aperiam at, atque delectus et ex explicabo iusto laboriosam maxime modi neque omnis\r\n  quibusdamquis, ratione repellat repellendus sint sit soluta tempore velit veritatis voluptates? Laborum,\r\n  voluptate.</p>\r\n<p>Blanditiis\r\n  dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium reiciendis\r\n  sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint voluptatem.\r\n  Cupiditate, optio!</p>', 1, '2018-04-24 08:46:21', '2018-04-24 08:46:21'),
(27, 'update', 'olympos', 'pages/homepage.htm', 'pages/homepage.htm', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\n==\r\n<h2>This is our homepage ! Yay !</h2>\r\n\r\n{% set actors = actors.actors %}\r\n\r\n<h3>Actors list</h3>\r\n\r\n<ul>\r\n  {% for actor in actors%}\r\n  <li>{{actor.name}} {{actor.lastname}}</li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Ab accusantium aliquid aperiam at, atque delectus et ex explicabo iusto laboriosam maxime modi neque omnis\r\n  quibusdamquis, ratione repellat repellendus sint sit soluta tempore velit veritatis voluptates? Laborum,\r\n  voluptate.</p>\r\n<p>Blanditiis\r\n  dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium reiciendis\r\n  sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint voluptatem.\r\n  Cupiditate, option!</p>', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\n==\r\n<h2>This is our homepage ! Yay !</h2>\r\n\r\n{% component \'actors\' %}\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Ab accusantium aliquid aperiam at, atque delectus et ex explicabo iusto laboriosam maxime modi neque omnis\r\n  quibusdamquis, ratione repellat repellendus sint sit soluta tempore velit veritatis voluptates? Laborum,\r\n  voluptate.</p>\r\n<p>Blanditiis\r\n  dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium reiciendis\r\n  sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint voluptatem.\r\n  Cupiditate, optio!</p>', 1, '2018-04-24 08:50:57', '2018-04-24 08:50:57'),
(28, 'update', 'olympos', 'pages/homepage.htm', 'pages/homepage.htm', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\n==\r\n<h2>This is our homepage ! Yay !</h2>\r\n\r\n{% component \'actors\' %}\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Ab accusantium aliquid aperiam at, atque delectus et ex explicabo iusto laboriosam maxime modi neque omnis\r\n  quibusdamquis, ratione repellat repellendus sint sit soluta tempore velit veritatis voluptates? Laborum,\r\n  voluptate.</p>\r\n<p>Blanditiis\r\n  dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium reiciendis\r\n  sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint voluptatem.\r\n  Cupiditate, option!</p>', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\n==\r\n<h2>This is our homepage ! Yay !</h2>\r\n\r\n{% set actors = actors.actors %}\r\n\r\n<h3>Actors list</h3>\r\n\r\n<ul>\r\n  {% for actor in actors%}\r\n  <li>{{actor.name}} {{actor.lastname}}</li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Ab accusantium aliquid aperiam at, atque delectus et ex explicabo iusto laboriosam maxime modi neque omnis\r\n  quibusdamquis, ratione repellat repellendus sint sit soluta tempore velit veritatis voluptates? Laborum,\r\n  voluptate.</p>\r\n<p>Blanditiis\r\n  dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium reiciendis\r\n  sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint voluptatem.\r\n  Cupiditate, option!</p>', 1, '2018-04-24 14:18:36', '2018-04-24 14:18:36'),
(29, 'update', 'olympos', 'pages/homepage.htm', 'pages/homepage.htm', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = \"ab\"\r\n==\r\n<h2>This is our homepage ! Yay !</h2>\r\n\r\n{% component \'actors\' %}\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Ab accusantium aliquid aperiam at, atque delectus et ex explicabo iusto laboriosam maxime modi neque omnis\r\n  quibusdamquis, ratione repellat repellendus sint sit soluta tempore velit veritatis voluptates? Laborum,\r\n  voluptate.</p>\r\n<p>Blanditiis\r\n  dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium reiciendis\r\n  sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint voluptatem.\r\n  Cupiditate, option!</p>', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\n==\r\n<h2>This is our homepage ! Yay !</h2>\r\n\r\n{% component \'actors\' %}\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Ab accusantium aliquid aperiam at, atque delectus et ex explicabo iusto laboriosam maxime modi neque omnis\r\n  quibusdamquis, ratione repellat repellendus sint sit soluta tempore velit veritatis voluptates? Laborum,\r\n  voluptate.</p>\r\n<p>Blanditiis\r\n  dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium reiciendis\r\n  sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint voluptatem.\r\n  Cupiditate, option!</p>', 1, '2018-04-24 15:11:35', '2018-04-24 15:11:35'),
(30, 'update', 'olympos', 'pages/homepage.htm', 'pages/homepage.htm', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = \"abc\"\r\n==\r\n<h2>This is our homepage ! Yay !</h2>\r\n\r\n{% component \'actors\' %}\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Ab accusantium aliquid aperiam at, atque delectus et ex explicabo iusto laboriosam maxime modi neque omnis\r\n  quibusdamquis, ratione repellat repellendus sint sit soluta tempore velit veritatis voluptates? Laborum,\r\n  voluptate.</p>\r\n<p>Blanditiis\r\n  dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium reiciendis\r\n  sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint voluptatem.\r\n  Cupiditate, option!</p>', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = \"ab\"\r\n==\r\n<h2>This is our homepage ! Yay !</h2>\r\n\r\n{% component \'actors\' %}\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Ab accusantium aliquid aperiam at, atque delectus et ex explicabo iusto laboriosam maxime modi neque omnis\r\n  quibusdamquis, ratione repellat repellendus sint sit soluta tempore velit veritatis voluptates? Laborum,\r\n  voluptate.</p>\r\n<p>Blanditiis\r\n  dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium reiciendis\r\n  sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint voluptatem.\r\n  Cupiditate, option!</p>', 1, '2018-04-24 15:12:00', '2018-04-24 15:12:00'),
(31, 'update', 'olympos', 'pages/homepage.htm', 'pages/homepage.htm', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = \"hi\"\r\n==\r\n<h2>This is our homepage ! Yay !</h2>\r\n\r\n{% component \'actors\' %}\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Ab accusantium aliquid aperiam at, atque delectus et ex explicabo iusto laboriosam maxime modi neque omnis\r\n  quibusdamquis, ratione repellat repellendus sint sit soluta tempore velit veritatis voluptates? Laborum,\r\n  voluptate.</p>\r\n<p>Blanditiis\r\n  dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium reiciendis\r\n  sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint voluptatem.\r\n  Cupiditate, option!</p>', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = \"abc\"\r\n==\r\n<h2>This is our homepage ! Yay !</h2>\r\n\r\n{% component \'actors\' %}\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Ab accusantium aliquid aperiam at, atque delectus et ex explicabo iusto laboriosam maxime modi neque omnis\r\n  quibusdamquis, ratione repellat repellendus sint sit soluta tempore velit veritatis voluptates? Laborum,\r\n  voluptate.</p>\r\n<p>Blanditiis\r\n  dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium reiciendis\r\n  sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint voluptatem.\r\n  Cupiditate, option!</p>', 1, '2018-04-24 15:21:18', '2018-04-24 15:21:18'),
(32, 'update', 'olympos', 'pages/homepage.htm', 'pages/homepage.htm', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 12\r\n==\r\n<h2>This is our homepage ! Yay !</h2>\r\n\r\n{% component \'actors\' %}\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Ab accusantium aliquid aperiam at, atque delectus et ex explicabo iusto laboriosam maxime modi neque omnis\r\n  quibusdamquis, ratione repellat repellendus sint sit soluta tempore velit veritatis voluptates? Laborum,\r\n  voluptate.</p>\r\n<p>Blanditiis\r\n  dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium reiciendis\r\n  sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint voluptatem.\r\n  Cupiditate, option!</p>', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = \"hi\"\r\n==\r\n<h2>This is our homepage ! Yay !</h2>\r\n\r\n{% component \'actors\' %}\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Ab accusantium aliquid aperiam at, atque delectus et ex explicabo iusto laboriosam maxime modi neque omnis\r\n  quibusdamquis, ratione repellat repellendus sint sit soluta tempore velit veritatis voluptates? Laborum,\r\n  voluptate.</p>\r\n<p>Blanditiis\r\n  dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium reiciendis\r\n  sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint voluptatem.\r\n  Cupiditate, option!</p>', 1, '2018-04-24 15:24:46', '2018-04-24 15:24:46'),
(33, 'update', 'olympos', 'pages/homepage.htm', 'pages/homepage.htm', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 2\r\n==\r\n<h2>This is our homepage ! Yay !</h2>\r\n\r\n{% component \'actors\' %}\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Ab accusantium aliquid aperiam at, atque delectus et ex explicabo iusto laboriosam maxime modi neque omnis\r\n  quibusdamquis, ratione repellat repellendus sint sit soluta tempore velit veritatis voluptates? Laborum,\r\n  voluptate.</p>\r\n<p>Blanditiis\r\n  dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium reiciendis\r\n  sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint voluptatem.\r\n  Cupiditate, option!</p>', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 12\r\n==\r\n<h2>This is our homepage ! Yay !</h2>\r\n\r\n{% component \'actors\' %}\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Ab accusantium aliquid aperiam at, atque delectus et ex explicabo iusto laboriosam maxime modi neque omnis\r\n  quibusdamquis, ratione repellat repellendus sint sit soluta tempore velit veritatis voluptates? Laborum,\r\n  voluptate.</p>\r\n<p>Blanditiis\r\n  dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium reiciendis\r\n  sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint voluptatem.\r\n  Cupiditate, option!</p>', 1, '2018-04-24 15:24:52', '2018-04-24 15:24:52'),
(34, 'update', 'olympos', 'pages/homepage.htm', 'pages/homepage.htm', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 2\r\n==\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 2\r\n==\r\n\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 1, '2018-04-25 20:05:35', '2018-04-25 20:05:35');
INSERT INTO `cms_theme_logs` (`id`, `type`, `theme`, `template`, `old_template`, `content`, `old_content`, `user_id`, `created_at`, `updated_at`) VALUES
(35, 'update', 'olympos', 'pages/homepage.htm', 'pages/homepage.htm', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 2\r\n\r\n[actors actors2]\r\nresults = 0\r\n==\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 2\r\n==\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 1, '2018-04-25 20:07:33', '2018-04-25 20:07:33'),
(36, 'update', 'olympos', 'pages/homepage.htm', 'pages/homepage.htm', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 2\r\n==\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 2\r\n\r\n[actors actors2]\r\nresults = 0\r\n==\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 1, '2018-04-25 20:09:00', '2018-04-25 20:09:00'),
(37, 'update', 'olympos', 'pages/homepage.htm', 'pages/homepage.htm', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 4\r\n==\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 2\r\n==\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 1, '2018-04-25 21:02:44', '2018-04-25 21:02:44'),
(38, 'update', 'olympos', 'pages/homepage.htm', 'pages/homepage.htm', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 4\r\nsortOrder = \"name asc\"\r\n==\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 4\r\n==\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 1, '2018-04-25 21:11:03', '2018-04-25 21:11:03'),
(39, 'update', 'olympos', 'pages/homepage.htm', 'pages/homepage.htm', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 4\r\nsortOrder = \"name desc\"\r\n==\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 4\r\nsortOrder = \"name asc\"\r\n==\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 1, '2018-04-25 21:11:17', '2018-04-25 21:11:17'),
(40, 'update', 'olympos', 'pages/homepage.htm', 'pages/homepage.htm', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 0\r\nsortOrder = \"name desc\"\r\n==\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 4\r\nsortOrder = \"name desc\"\r\n==\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 1, '2018-04-25 21:13:51', '2018-04-25 21:13:51'),
(41, 'update', 'olympos', 'pages/homepage.htm', 'pages/homepage.htm', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 0\r\nsortOrder = \"name asc\"\r\n==\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 0\r\nsortOrder = \"name desc\"\r\n==\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 1, '2018-04-25 21:16:33', '2018-04-25 21:16:33'),
(42, 'update', 'olympos', 'pages/homepage.htm', 'pages/homepage.htm', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors actors21]\r\nresults = 0\r\nsortOrder = \"name asc\"\r\n==\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 0\r\nsortOrder = \"name asc\"\r\n==\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 1, '2018-04-25 21:20:04', '2018-04-25 21:20:04'),
(43, 'update', 'olympos', 'pages/homepage.htm', 'pages/homepage.htm', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 0\r\nsortOrder = \"name asc\"\r\n==\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors actors21]\r\nresults = 0\r\nsortOrder = \"name asc\"\r\n==\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 1, '2018-04-25 21:21:04', '2018-04-25 21:21:04'),
(44, 'create', 'olympos', 'pages/contact.htm', '', 'title = \"Contact\"\r\nurl = \"/contact\"\r\nis_hidden = 0\r\n==\r\n<h1>Contact</h1>', NULL, 1, '2018-04-25 21:27:21', '2018-04-25 21:27:21'),
(45, 'update', 'olympos', 'pages/contact.htm', 'pages/contact.htm', 'title = \"Contact\"\r\nurl = \"/contact\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n==\r\n<h1>Contact</h1>', 'title = \"Contact\"\r\nurl = \"/contact\"\r\nis_hidden = 0\r\n==\r\n<h1>Contact</h1>', 1, '2018-04-25 21:27:48', '2018-04-25 21:27:48'),
(46, 'update', 'olympos', 'pages/homepage.htm', 'pages/homepage.htm', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 0\r\nsortOrder = \"name desc\"\r\n==\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 0\r\nsortOrder = \"name asc\"\r\n==\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 1, '2018-04-25 21:50:27', '2018-04-25 21:50:27'),
(47, 'update', 'olympos', 'pages/homepage.htm', 'pages/homepage.htm', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 0\r\nsortOrder = \"name asc\"\r\n==\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 0\r\nsortOrder = \"name desc\"\r\n==\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 1, '2018-04-25 21:51:00', '2018-04-25 21:51:00'),
(48, 'update', 'olympos', 'pages/homepage.htm', 'pages/homepage.htm', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 5\r\nsortOrder = \"name asc\"\r\n==\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 0\r\nsortOrder = \"name asc\"\r\n==\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 1, '2018-04-25 21:53:24', '2018-04-25 21:53:24'),
(49, 'update', 'olympos', 'pages/homepage.htm', 'pages/homepage.htm', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 0\r\nsortOrder = \"name asc\"\r\n==\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 5\r\nsortOrder = \"name asc\"\r\n==\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 1, '2018-04-25 21:53:34', '2018-04-25 21:53:34'),
(50, 'update', 'olympos', 'pages/homepage.htm', 'pages/homepage.htm', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 0\r\nsortOrder = \"name desc\"\r\n==\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 0\r\nsortOrder = \"name asc\"\r\n==\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 1, '2018-04-25 22:04:21', '2018-04-25 22:04:21'),
(51, 'update', 'olympos', 'pages/homepage.htm', 'pages/homepage.htm', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 0\r\nsortOrder = \"name asc\"\r\n==\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 0\r\nsortOrder = \"name desc\"\r\n==\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 1, '2018-04-25 22:04:43', '2018-04-25 22:04:43'),
(52, 'update', 'olympos', 'pages/contact.htm', 'pages/contact.htm', 'title = \"Contact\"\r\nurl = \"/contact\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n==', 'title = \"Contact\"\r\nurl = \"/contact\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n==\r\n<h1>Contact</h1>', 1, '2018-04-25 22:22:13', '2018-04-25 22:22:13'),
(53, 'update', 'olympos', 'pages/contact.htm', 'pages/contact.htm', 'title = \"Contact\"\r\nurl = \"/contact\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[contactform]\r\n==\r\n{% component \'contactform\' %}', 'title = \"Contact\"\r\nurl = \"/contact\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n==', 1, '2018-04-25 22:25:49', '2018-04-25 22:25:49'),
(54, 'create', 'olympos', 'pages/Test.htm', '', 'title = \"Test\"\r\nurl = \"/test\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n==\r\n<h1>Page pour tests divers</h1>', NULL, 1, '2018-04-26 01:40:42', '2018-04-26 01:40:42'),
(55, 'update', 'olympos', 'pages/test.htm', 'pages/test.htm', 'title = \"Test\"\r\nurl = \"/test\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n==\r\n<h1>Page pour tests divers</h1>\r\n\r\n<p>Ok</p>', 'title = \"Test\"\r\nurl = \"/test\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n==\r\n<h1>Page pour tests divers</h1>', 1, '2018-04-26 01:41:31', '2018-04-26 01:41:31'),
(56, 'update', 'olympos', 'pages/test.htm', 'pages/test.htm', 'title = \"Test\"\r\nurl = \"/test\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n==\r\n<h1>Page pour tests divers</h1>', 'title = \"Test\"\r\nurl = \"/test\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n==\r\n<h1>Page pour tests divers</h1>\r\n\r\n<p>Ok 21</p>', 1, '2018-04-26 01:46:22', '2018-04-26 01:46:22'),
(57, 'update', 'olympos', 'pages/test.htm', 'pages/test.htm', 'title = \"Test\"\r\nurl = \"/test\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[sendonemail]\r\n==\r\n<h1>Page pour tests divers</h1>\r\n\r\n{% component \'sendonemail\' %}', 'title = \"Test\"\r\nurl = \"/test\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n==\r\n<h1>Page pour tests divers</h1>', 1, '2018-04-26 01:52:04', '2018-04-26 01:52:04'),
(58, 'update', 'olympos', 'pages/contact.htm', 'pages/contact.htm', 'title = \"Contact\"\r\nurl = \"/contact\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[contactform]\r\n==\r\n<h2>Contact Form</h2>\r\n\r\n{% component \'contactform\' %}', 'title = \"Contact\"\r\nurl = \"/contact\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[contactform]\r\n==\r\n{% component \'contactform\' %}', 1, '2018-04-26 13:45:23', '2018-04-26 13:45:23'),
(59, 'update', 'olympos', 'pages/contact.htm', 'pages/contact.htm', 'title = \"Contact\"\r\nurl = \"/contact\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[contactform]\r\n==\r\n<h2>Contact Page</h2>\r\n\r\n{% component \'contactform\' %}', 'title = \"Contact\"\r\nurl = \"/contact\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[contactform]\r\n==\r\n<h2>Contact Form</h2>\r\n\r\n{% component \'contactform\' %}', 1, '2018-04-26 13:45:34', '2018-04-26 13:45:34'),
(60, 'update', 'olympos', 'pages/movie-single.htm', 'pages/movie-single.htm', 'title = \"Movie single\"\r\nurl = \"/movies/movie/:slug\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[builderDetails]\r\nmodelClass = \"Grcote7\\Movies\\Models\\Movie\"\r\nidentifierValue = \"{{ :slug }}\"\r\nmodelKeyColumn = \"slug\"\r\ndisplayColumn = \"name\"\r\nnotFoundMessage = \"Record not found\"\r\n==\r\n{% set record = builderDetails.record %}\r\n{% set displayColumn = builderDetails.displayColumn %}\r\n{% set notFoundMessage = builderDetails.notFoundMessage %}\r\n\r\n{% if record %}\r\n\r\n<h2>{{ record.name }}</h2>\r\n\r\n<img src=\"{{record.poster.thumb(200,auto) }}\">\r\n\r\n<h4>{{ record.year }}</h4>\r\n\r\n<h3>Genres</h3>\r\n{% for genre in record.genres %}\r\n<a href=\"/genres/{{ genre.slug }}\">{{genre.genre_title}}</a><br>\r\n{% endfor %}\r\n\r\n<h3>Acteurs</h3>\r\n{% for actor in record.actors %}\r\n{{actor.name}} {{actor.lastname}}<br>\r\n{% endfor%}\r\n\r\n<h3>Description</h3>\r\n{{ record.description|raw }}\r\n\r\n<ul class=\"gallery clearfix\">\r\n  {% for image in record.movie_gallery %}\r\n  <li>\r\n    <a href=\"{{image.path}}\">\r\n      <img src=\"{{image.thumb(80,80,{\'mode\':\'crop\'}) }}\">\r\n    </a>\r\n  </li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n{% else %}\r\n{{ notFoundMessage }}\r\n{% endif %}', 'title = \"Movie single\"\r\nurl = \"/movies/movie/:slug\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[builderDetails]\r\nmodelClass = \"Grcote7\\Movies\\Models\\Movie\"\r\nidentifierValue = \"{{ :slug }}\"\r\nmodelKeyColumn = \"slug\"\r\ndisplayColumn = \"name\"\r\nnotFoundMessage = \"Record not found\"\r\n==\r\n{% set record = builderDetails.record %}\r\n{% set displayColumn = builderDetails.displayColumn %}\r\n{% set notFoundMessage = builderDetails.notFoundMessage %}\r\n\r\n{% if record %}\r\n\r\n<h2>{{ record.name }}</h2>\r\n\r\n<img src=\"{{record.poster.thumb(200,auto) }}\">\r\n\r\n<h4>{{ record.year }}</h4>\r\n\r\n<h3>Genres</h3>\r\n{% for genre in record.genres %}\r\n<a href=\"/genres/{{ genre.slug }}\">{{genre.genre_title}}</a><br>\r\n{% endfor %}\r\n\r\n\r\n<h3>Acteurs</h3>\r\n{% for actor in record.actors %}\r\n{{actor.name}} {{actor.lastname}}<br>\r\n{% endfor%}\r\n\r\n<h3>Description</h3>\r\n{{ record.description|raw }}\r\n\r\n<ul class=\"gallery clearfix\">\r\n  {% for image in record.movie_gallery %}\r\n  <li>\r\n    <a href=\"{{image.path}}\">\r\n      <img src=\"{{image.thumb(80,80,{\'mode\':\'crop\'}) }}\">\r\n    </a>\r\n  </li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n{% else %}\r\n{{ notFoundMessage }}\r\n{% endif %}', 1, '2018-04-27 09:39:16', '2018-04-27 09:39:16'),
(61, 'create', 'olympos', 'pages/add-actors.htm', '', 'title = \"Add actors\"\r\nurl = \"/add-actors\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actorform]\r\n==\r\n<h1>Add actor</h1>\r\n\r\n{% component \'actorform\' %}', NULL, 1, '2018-04-27 09:48:23', '2018-04-27 09:48:23'),
(62, 'update', 'olympos', 'pages/add-actors.htm', 'pages/add-actors.htm', 'title = \"Add actors\"\r\nurl = \"/add-actors\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actorform]\r\n==\r\n<h2>Add actor</h2>\r\n\r\n{% component \'actorform\' %}', 'title = \"Add actors\"\r\nurl = \"/add-actors\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actorform]\r\n==\r\n<h1>Add actor</h1>\r\n\r\n{% component \'actorform\' %}', 1, '2018-04-27 09:48:58', '2018-04-27 09:48:58'),
(63, 'update', 'olympos', 'pages/add-actors.htm', 'pages/add-actors.htm', 'title = \"Add actors\"\r\nurl = \"/add-actors\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actorform]\r\n\r\n[session]\r\nsecurity = \"all\"\r\n==\r\n<h2>Add actor</h2>\r\n\r\n{% component \'actorform\' %}', 'title = \"Add actors\"\r\nurl = \"/add-actors\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actorform]\r\n==\r\n<h2>Add actor</h2>\r\n\r\n{% component \'actorform\' %}', 1, '2018-04-27 13:18:08', '2018-04-27 13:18:08'),
(64, 'create', 'olympos', 'pages/login.htm', '', 'title = \"Login\"\r\nurl = \"/login\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[account]\r\nparamCode = \"code\"\r\nforceSecure = 0\r\n==\r\n{% component \'account\' %}', NULL, 1, '2018-04-27 13:20:34', '2018-04-27 13:20:34'),
(65, 'update', 'olympos', 'pages/login.htm', 'pages/login.htm', 'title = \"Login\"\r\nurl = \"/login\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[account]\r\nparamCode = \"code\"\r\nforceSecure = 0\r\n==\r\n{% if not user %}\r\n\r\n    <div class=\"row\">\r\n\r\n        <div class=\"col-md-6\">\r\n            <h3>Sign in</h3>\r\n            {% partial account ~ \'::signin\' %}\r\n        </div>\r\n\r\n        <div class=\"col-md-6\">\r\n            <h3>Register</h3>\r\n            {% partial account ~ \'::register\' %}\r\n        </div>\r\n\r\n    </div>\r\n\r\n{% else %}\r\n\r\n    {% partial account ~ \'::activation_check\' %}\r\n\r\n    {% partial account ~ \'::update\' %}\r\n\r\n    {% partial account ~ \'::deactivate_link\' %}\r\n\r\n{% endif %}', 'title = \"Login\"\r\nurl = \"/login\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[account]\r\nparamCode = \"code\"\r\nforceSecure = 0\r\n==\r\n{% component \'account\' %}', 1, '2018-04-27 13:25:06', '2018-04-27 13:25:06'),
(66, 'update', 'olympos', 'pages/login.htm', 'pages/login.htm', 'title = \"Login\"\r\nurl = \"/login\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[account]\r\nparamCode = \"code\"\r\nforceSecure = 0\r\n==\r\n{% if not user %}\r\n\r\n    <div class=\"row\">\r\n\r\n        <div class=\"col-md-6\">\r\n            <h3>Sign in</h3>\r\n            {% partial account ~ \'::signin\' %}\r\n        </div>\r\n\r\n        <div class=\"col-md-6\">\r\n            <h3>Register</h3>\r\n            {% partial account ~ \'::register\' %}\r\n        </div>\r\n\r\n    </div>\r\n\r\n{% else %}\r\n\r\n    <div class=\"row\">\r\n    \r\n        {% partial account ~ \'::activation_check\' %}\r\n    \r\n        {% partial account ~ \'::update\' %}\r\n    \r\n        {% partial account ~ \'::deactivate_link\' %}\r\n\r\n    </div>\r\n    \r\n{% endif %}', 'title = \"Login\"\r\nurl = \"/login\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[account]\r\nparamCode = \"code\"\r\nforceSecure = 0\r\n==\r\n{% if not user %}\r\n\r\n    <div class=\"row\">\r\n\r\n        <div class=\"col-md-6\">\r\n            <h3>Sign in</h3>\r\n            {% partial account ~ \'::signin\' %}\r\n        </div>\r\n\r\n        <div class=\"col-md-6\">\r\n            <h3>Register</h3>\r\n            {% partial account ~ \'::register\' %}\r\n        </div>\r\n\r\n    </div>\r\n\r\n{% else %}\r\n\r\n    {% partial account ~ \'::activation_check\' %}\r\n\r\n    {% partial account ~ \'::update\' %}\r\n\r\n    {% partial account ~ \'::deactivate_link\' %}\r\n\r\n{% endif %}', 1, '2018-04-27 13:28:59', '2018-04-27 13:28:59'),
(67, 'update', 'olympos', 'pages/add-actors.htm', 'pages/add-actors.htm', 'title = \"Add actors\"\r\nurl = \"/add-actors\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actorform]\r\n\r\n[session]\r\nsecurity = \"user\"\r\n==\r\n<h2>Add actor</h2>\r\n\r\n{% component \'actorform\' %}', 'title = \"Add actors\"\r\nurl = \"/add-actors\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actorform]\r\n==\r\n<h2>Add actor</h2>\r\n\r\n{% component \'actorform\' %}', 1, '2018-04-27 14:27:58', '2018-04-27 14:27:58'),
(68, 'update', 'olympos', 'pages/add-actors.htm', 'pages/add-actors.htm', 'title = \"Add actors\"\r\nurl = \"/add-actors\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actorform]\r\n\r\n[session]\r\nsecurity = \"user\"\r\nredirect = \"login\"\r\n==\r\n<h2>Add actor</h2>\r\n\r\n{% component \'actorform\' %}', 'title = \"Add actors\"\r\nurl = \"/add-actors\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actorform]\r\n\r\n[session]\r\nsecurity = \"user\"\r\n==\r\n<h2>Add actor</h2>\r\n\r\n{% component \'actorform\' %}', 1, '2018-04-27 14:28:25', '2018-04-27 14:28:25'),
(69, 'update', 'olympos', 'partials/header.htm', 'partials/header.htm', '==\r\n<header class=\"main-header\">\r\n\r\n  <div class=\"container clearfix\">\r\n    <h1 class=\"logo\">Movies</h1>\r\n\r\n    <mav class=\"main-nav\">\r\n      <ul>\r\n        <li class=\"{% if this.page.id == \'homepage\' %} active {% endif %}\"><a href=\"{{ \'homepage\'|page }}\">Home</a></li>\r\n        <li class=\"{% if this.page.id == \'movies\' %} active {% endif %}\"><a href=\"{{ \'movies\'|page }}\">Movies</a></li>\r\n        <li class=\"{% if this.page.id == \'add-actors\' %} active {% endif %}\"><a href=\"{{ \'add-actors\'|page }}\">Add\r\n          actors</a></li>\r\n        <li class=\"{% if this.page.id == \'contact\' %} active {% endif %}\"><a href=\"{{ \'contact\'|page }}\">Contact</a>\r\n        <li class=\"{% if this.page.id == \'test\' %} active {% endif %}\"><a href=\"{{ \'test\'|page }}\">Test</a>\r\n\r\n          {% if not user %}\r\n        <li class=\"{% if this.page.id == \'login\' %} active {% endif %}\"><a href=\"{{ \'login\'|page }}\">Login</a>\r\n        </li>\r\n        {% else %}\r\n        <li class=\"{% if this.page.id == \'login\' %} active {% endif %}\"><a href=\"{{ \'login\'|page }}\">Profile</a></li>\r\n        <li><a data-request=\"onLogout\" data-request-data=\"redirect: \'/\'\">Sign\r\n          out</a>\r\n        </li>\r\n        {% endif %}\r\n\r\n      </ul>\r\n    </mav>\r\n\r\n  </div>\r\n\r\n</header>', '<header class=\"main-header\">\r\n\r\n  <div class=\"container clearfix\">\r\n    <h1 class=\"logo\">Movies</h1>\r\n\r\n    <mav class=\"main-nav\">\r\n      <ul>\r\n        <li class=\"{% if this.page.id == \'homepage\' %} active {% endif %}\"><a href=\"{{ \'homepage\'|page }}\">Home</a></li>\r\n        <li class=\"{% if this.page.id == \'movies\' %} active {% endif %}\"><a href=\"{{ \'movies\'|page }}\">Movies</a></li>\r\n        <li class=\"{% if this.page.id == \'add-actors\' %} active {% endif %}\"><a href=\"{{ \'add-actors\'|page }}\">Add\r\n          actors</a></li>\r\n        <li class=\"{% if this.page.id == \'contact\' %} active {% endif %}\"><a href=\"{{ \'contact\'|page }}\">Contact</a>\r\n        <li class=\"{% if this.page.id == \'test\' %} active {% endif %}\"><a href=\"{{ \'test\'|page }}\">Test</a>\r\n\r\n          {% if not user %}\r\n        <li class=\"{% if this.page.id == \'login\' %} active {% endif %}\"><a href=\"{{ \'login\'|page }}\">Login</a>\r\n        </li>\r\n        {% else %}\r\n        <li class=\"{% if this.page.id == \'login\' %} active {% endif %}\"><a>Profile</a></li>\r\n        <li><a data-request=\"onLogout\" data-request-data=\"redirect: \'/\'\">Sign\r\n          out</a>\r\n        </li>\r\n        {% endif %}\r\n\r\n      </ul>\r\n    </mav>\r\n\r\n  </div>\r\n\r\n</header>', 1, '2018-04-29 14:25:24', '2018-04-29 14:25:24'),
(70, 'update', 'olympos', 'layouts/static-layout.htm', 'layouts/static-layout.htm', 'description = \"Default layout\"\r\n\r\n[session]\r\nsecurity = \"all\"\r\n\r\n[staticPage]\r\nuseContent = 1\r\ndefault = 0\r\n==\r\n<!DOCTYPE html>\r\n<html>\r\n<head>\r\n  <meta charset=\"utf-8\">\r\n  <title>Olympos - {{ this.page.title }}</title>\r\n  <meta name=\"description\" content=\"{{ this.page.meta_description }}\">\r\n  <meta name=\"title\" content=\"{{ this.page.meta_title }}\">\r\n  <meta name=\"author\" content=\"OctoberCMS\">\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <meta name=\"generator\" content=\"OctoberCMS\">\r\n  <link rel=\"icon\" type=\"image/png\" href=\"{{ \'assets/images/october.png\'|theme }}\">\r\n  <link href=\"{{ \'assets/compiled/css/style.css\'|theme }}\" rel=\"stylesheet\">\r\n  {% styles %}\r\n</head>\r\n<body>\r\n\r\n<header class=\"main-header\">\r\n\r\n  <div class=\"container clearfix\">\r\n    <h1 class=\"logo\">Movies</h1>\r\n\r\n    <mav class=\"main-nav\">\r\n\r\n    </mav>\r\n\r\n  </div>\r\n\r\n</header>\r\n\r\n<!-- Content -->\r\n<section id=\"layout-content\" class=\"container clearfix\">\r\n  {% page %}\r\n</section>\r\n\r\n<footer class=\"main-footer\">\r\n\r\n  <div class=\"container\">\r\n\r\n    <nav class=\"footer-menu\">\r\n      \r\n      <h1>Our static footer</h1>\r\n\r\n    </nav>\r\n\r\n\r\n  </div>\r\n\r\n</footer>\r\n\r\n\r\n<!-- Scripts -->\r\n<script src=\"{{ \'assets/compiled/js/all.js\'|theme }}\"></script>\r\n{% framework extras %}\r\n{% scripts %}\r\n\r\n<script type=\"text/javascript\">\r\n\r\n  jQuery(document).ready(function ($) {\r\n\r\n    $(\'.contact-form\').on(\'ajaxError\', function (event, message) {\r\n      $(\'.flash\').removeClass(\'active\');\r\n      $(\'.flash.error\').addClass(\'active\');\r\n    });\r\n\r\n    $(\'.contact-form\').on(\'ajaxSuccess\', function (event, message) {\r\n      $(\'.flash\').removeClass(\'active\');\r\n      $(\'.flash.success\').addClass(\'active\');\r\n    });\r\n  });\r\n\r\n</script>\r\n\r\n</body>\r\n</html>', 'description = \"Default layout\"\r\n\r\n[session]\r\nsecurity = \"all\"\r\n==\r\n<!DOCTYPE html>\r\n<html>\r\n<head>\r\n  <meta charset=\"utf-8\">\r\n  <title>Olympos - {{ this.page.title }}</title>\r\n  <meta name=\"description\" content=\"{{ this.page.meta_description }}\">\r\n  <meta name=\"title\" content=\"{{ this.page.meta_title }}\">\r\n  <meta name=\"author\" content=\"OctoberCMS\">\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <meta name=\"generator\" content=\"OctoberCMS\">\r\n  <link rel=\"icon\" type=\"image/png\" href=\"{{ \'assets/images/october.png\'|theme }}\">\r\n  <link href=\"{{ \'assets/compiled/css/style.css\'|theme }}\" rel=\"stylesheet\">\r\n  {% styles %}\r\n</head>\r\n<body>\r\n\r\n<header class=\"main-header\">\r\n\r\n  <div class=\"container clearfix\">\r\n    <h1 class=\"logo\">Movies</h1>\r\n\r\n    <mav class=\"main-nav\">\r\n\r\n    </mav>\r\n\r\n  </div>\r\n\r\n</header>\r\n\r\n<!-- Content -->\r\n<section id=\"layout-content\" class=\"container clearfix\">\r\n  {% page %}\r\n</section>\r\n\r\n<footer class=\"main-footer\">\r\n\r\n  <div class=\"container\">\r\n\r\n    <nav class=\"footer-menu\">\r\n      \r\n      <h1>Our static footer</h1>\r\n\r\n    </nav>\r\n\r\n\r\n  </div>\r\n\r\n</footer>\r\n\r\n\r\n<!-- Scripts -->\r\n<script src=\"{{ \'assets/compiled/js/all.js\'|theme }}\"></script>\r\n{% framework extras %}\r\n{% scripts %}\r\n\r\n<script type=\"text/javascript\">\r\n\r\n  jQuery(document).ready(function ($) {\r\n\r\n    $(\'.contact-form\').on(\'ajaxError\', function (event, message) {\r\n      $(\'.flash\').removeClass(\'active\');\r\n      $(\'.flash.error\').addClass(\'active\');\r\n    });\r\n\r\n    $(\'.contact-form\').on(\'ajaxSuccess\', function (event, message) {\r\n      $(\'.flash\').removeClass(\'active\');\r\n      $(\'.flash.success\').addClass(\'active\');\r\n    });\r\n  });\r\n\r\n</script>\r\n\r\n</body>\r\n</html>', 1, '2018-04-30 09:38:38', '2018-04-30 09:38:38'),
(71, 'create', 'olympos', 'content/static-pages/', '', '[viewBag]\r\ntitle = \"About\"\r\nurl = \"/about\"\r\nlayout = \"static-layout\"\r\nis_hidden = 0\r\nnavigation_hidden = 0\r\n==', NULL, 1, '2018-04-30 09:39:29', '2018-04-30 09:39:29'),
(72, 'update', 'olympos', 'content/static-pages/about.htm', 'content/static-pages/about.htm', '[viewBag]\r\ntitle = \"About\"\r\nurl = \"/about\"\r\nlayout = \"static-layout\"\r\nis_hidden = 0\r\nnavigation_hidden = 0\r\n==\r\n<p>This is our about page.</p>', '[viewBag]\r\ntitle = \"About\"\r\nurl = \"/about\"\r\nlayout = \"static-layout\"\r\nis_hidden = 0\r\nnavigation_hidden = 0\r\n==', 1, '2018-04-30 09:41:02', '2018-04-30 09:41:02'),
(73, 'update', 'olympos', 'content/static-pages/about.htm', 'content/static-pages/about.htm', '[viewBag]\r\ntitle = \"About\"\r\nurl = \"/about\"\r\nlayout = \"static-layout\"\r\nis_hidden = 0\r\nnavigation_hidden = 0\r\n==\r\n<p>This is our About page.</p>', '[viewBag]\r\ntitle = \"About\"\r\nurl = \"/about\"\r\nlayout = \"static-layout\"\r\nis_hidden = 0\r\nnavigation_hidden = 0\r\n==\r\n<p>This is our about page.</p>', 1, '2018-04-30 09:41:19', '2018-04-30 09:41:19'),
(74, 'create', 'olympos', 'content/static-pages/', '', '[viewBag]\r\ntitle = \"About us\"\r\nurl = \"/about/about-us\"\r\nlayout = \"static-layout\"\r\nis_hidden = 0\r\nnavigation_hidden = 0\r\n==', NULL, 1, '2018-04-30 09:42:49', '2018-04-30 09:42:49');
INSERT INTO `cms_theme_logs` (`id`, `type`, `theme`, `template`, `old_template`, `content`, `old_content`, `user_id`, `created_at`, `updated_at`) VALUES
(75, 'update', 'olympos', 'layouts/static-layout.htm', 'layouts/static-layout.htm', 'description = \"Static layout\"\r\n\r\n[session]\r\nsecurity = \"all\"\r\n\r\n[staticPage]\r\nuseContent = 1\r\ndefault = 0\r\n==\r\n<!DOCTYPE html>\r\n<html>\r\n<head>\r\n  <meta charset=\"utf-8\">\r\n  <title>Olympos - {{ this.page.title }}</title>\r\n  <meta name=\"description\" content=\"{{ this.page.meta_description }}\">\r\n  <meta name=\"title\" content=\"{{ this.page.meta_title }}\">\r\n  <meta name=\"author\" content=\"OctoberCMS\">\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <meta name=\"generator\" content=\"OctoberCMS\">\r\n  <link rel=\"icon\" type=\"image/png\" href=\"{{ \'assets/images/october.png\'|theme }}\">\r\n  <link href=\"{{ \'assets/compiled/css/style.css\'|theme }}\" rel=\"stylesheet\">\r\n  {% styles %}\r\n</head>\r\n<body>\r\n\r\n<header class=\"main-header\">\r\n\r\n  <div class=\"container clearfix\">\r\n    <h1 class=\"logo\">Movies</h1>\r\n\r\n    <mav class=\"main-nav\">\r\n\r\n    </mav>\r\n\r\n  </div>\r\n\r\n</header>\r\n\r\n<!-- Content -->\r\n<section id=\"layout-content\" class=\"container clearfix\">\r\n  {% page %}\r\n</section>\r\n\r\n<footer class=\"main-footer\">\r\n\r\n  <div class=\"container\">\r\n\r\n    <nav class=\"footer-menu\">\r\n\r\n      <h1>Our static footer</h1>\r\n\r\n    </nav>\r\n\r\n\r\n  </div>\r\n\r\n</footer>\r\n\r\n\r\n<!-- Scripts -->\r\n<script src=\"{{ \'assets/compiled/js/all.js\'|theme }}\"></script>\r\n{% framework extras %}\r\n{% scripts %}\r\n\r\n<script type=\"text/javascript\">\r\n\r\n  jQuery(document).ready(function ($) {\r\n\r\n    $(\'.contact-form\').on(\'ajaxError\', function (event, message) {\r\n      $(\'.flash\').removeClass(\'active\');\r\n      $(\'.flash.error\').addClass(\'active\');\r\n    });\r\n\r\n    $(\'.contact-form\').on(\'ajaxSuccess\', function (event, message) {\r\n      $(\'.flash\').removeClass(\'active\');\r\n      $(\'.flash.success\').addClass(\'active\');\r\n    });\r\n  });\r\n\r\n</script>\r\n\r\n</body>\r\n</html>', 'description = \"Default layout\"\r\n\r\n[session]\r\nsecurity = \"all\"\r\n\r\n[staticPage]\r\nuseContent = 1\r\ndefault = 0\r\n==\r\n<!DOCTYPE html>\r\n<html>\r\n<head>\r\n  <meta charset=\"utf-8\">\r\n  <title>Olympos - {{ this.page.title }}</title>\r\n  <meta name=\"description\" content=\"{{ this.page.meta_description }}\">\r\n  <meta name=\"title\" content=\"{{ this.page.meta_title }}\">\r\n  <meta name=\"author\" content=\"OctoberCMS\">\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <meta name=\"generator\" content=\"OctoberCMS\">\r\n  <link rel=\"icon\" type=\"image/png\" href=\"{{ \'assets/images/october.png\'|theme }}\">\r\n  <link href=\"{{ \'assets/compiled/css/style.css\'|theme }}\" rel=\"stylesheet\">\r\n  {% styles %}\r\n</head>\r\n<body>\r\n\r\n<header class=\"main-header\">\r\n\r\n  <div class=\"container clearfix\">\r\n    <h1 class=\"logo\">Movies</h1>\r\n\r\n    <mav class=\"main-nav\">\r\n\r\n    </mav>\r\n\r\n  </div>\r\n\r\n</header>\r\n\r\n<!-- Content -->\r\n<section id=\"layout-content\" class=\"container clearfix\">\r\n  {% page %}\r\n</section>\r\n\r\n<footer class=\"main-footer\">\r\n\r\n  <div class=\"container\">\r\n\r\n    <nav class=\"footer-menu\">\r\n\r\n      <h1>Our static footer</h1>\r\n\r\n    </nav>\r\n\r\n\r\n  </div>\r\n\r\n</footer>\r\n\r\n\r\n<!-- Scripts -->\r\n<script src=\"{{ \'assets/compiled/js/all.js\'|theme }}\"></script>\r\n{% framework extras %}\r\n{% scripts %}\r\n\r\n<script type=\"text/javascript\">\r\n\r\n  jQuery(document).ready(function ($) {\r\n\r\n    $(\'.contact-form\').on(\'ajaxError\', function (event, message) {\r\n      $(\'.flash\').removeClass(\'active\');\r\n      $(\'.flash.error\').addClass(\'active\');\r\n    });\r\n\r\n    $(\'.contact-form\').on(\'ajaxSuccess\', function (event, message) {\r\n      $(\'.flash\').removeClass(\'active\');\r\n      $(\'.flash.success\').addClass(\'active\');\r\n    });\r\n  });\r\n\r\n</script>\r\n\r\n</body>\r\n</html>', 1, '2018-04-30 09:43:22', '2018-04-30 09:43:22'),
(76, 'update', 'olympos', 'content/static-pages/about-about-us.htm', 'content/static-pages/about-about-us.htm', '[viewBag]\r\ntitle = \"About us\"\r\nurl = \"/about/about-us\"\r\nlayout = \"static-layout\"\r\nis_hidden = 0\r\nnavigation_hidden = 0\r\n==\r\n<p>This is About us page.</p>', '[viewBag]\r\ntitle = \"About us\"\r\nurl = \"/about/about-us\"\r\nlayout = \"static-layout\"\r\nis_hidden = 0\r\nnavigation_hidden = 0\r\n==', 1, '2018-04-30 09:44:28', '2018-04-30 09:44:28'),
(77, 'create', 'olympos', 'content/static-pages/', '', '[viewBag]\r\ntitle = \"About them\"\r\nurl = \"/about/about-them\"\r\nlayout = \"static-layout\"\r\nis_hidden = 0\r\nnavigation_hidden = 0\r\n==\r\n<p>This is About them page.</p>', NULL, 1, '2018-04-30 09:45:10', '2018-04-30 09:45:10'),
(78, 'create', 'olympos', 'meta/menus/new-menu.yaml', '', 'name: \'New menu\'\nitems: {  }', NULL, 1, '2018-04-30 09:46:48', '2018-04-30 09:46:48'),
(79, 'update', 'olympos', 'meta/menus/headermenu.yaml', 'meta/menus/new-menu.yaml', 'name: \'Header menu\'\nitems:\n    -\n        title: \'All pages\'\n        type: all-static-pages\n        code: \'\'\n        replace: \'1\'\n        viewBag:\n            isHidden: \'0\'\n            cssClass: \'\'\n            isExternal: \'0\'', 'name: \'New menu\'\nitems: {  }', 1, '2018-04-30 09:48:58', '2018-04-30 09:48:58'),
(80, 'update', 'olympos', 'layouts/static-layout.htm', 'layouts/static-layout.htm', 'description = \"Static layout\"\r\n\r\n[session]\r\nsecurity = \"all\"\r\n\r\n[staticPage]\r\nuseContent = 1\r\ndefault = 0\r\n\r\n[staticMenu]\r\n==\r\n<!DOCTYPE html>\r\n<html>\r\n<head>\r\n  <meta charset=\"utf-8\">\r\n  <title>Olympos - {{ this.page.title }}</title>\r\n  <meta name=\"description\" content=\"{{ this.page.meta_description }}\">\r\n  <meta name=\"title\" content=\"{{ this.page.meta_title }}\">\r\n  <meta name=\"author\" content=\"OctoberCMS\">\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <meta name=\"generator\" content=\"OctoberCMS\">\r\n  <link rel=\"icon\" type=\"image/png\" href=\"{{ \'assets/images/october.png\'|theme }}\">\r\n  <link href=\"{{ \'assets/compiled/css/style.css\'|theme }}\" rel=\"stylesheet\">\r\n  {% styles %}\r\n</head>\r\n<body>\r\n\r\n<header class=\"main-header\">\r\n\r\n  <div class=\"container clearfix\">\r\n    <h1 class=\"logo\">Movies</h1>\r\n\r\n    <mav class=\"main-nav\">\r\n{% component \'staticMenu\' %}\r\n    </mav>\r\n\r\n  </div>\r\n\r\n</header>\r\n\r\n<!-- Content -->\r\n<section id=\"layout-content\" class=\"container clearfix\">\r\n  {% page %}\r\n</section>\r\n\r\n<footer class=\"main-footer\">\r\n\r\n  <div class=\"container\">\r\n\r\n    <nav class=\"footer-menu\">\r\n\r\n      <h1>Our static footer</h1>\r\n\r\n    </nav>\r\n\r\n\r\n  </div>\r\n\r\n</footer>\r\n\r\n\r\n<!-- Scripts -->\r\n<script src=\"{{ \'assets/compiled/js/all.js\'|theme }}\"></script>\r\n{% framework extras %}\r\n{% scripts %}\r\n\r\n<script type=\"text/javascript\">\r\n\r\n  jQuery(document).ready(function ($) {\r\n\r\n    $(\'.contact-form\').on(\'ajaxError\', function (event, message) {\r\n      $(\'.flash\').removeClass(\'active\');\r\n      $(\'.flash.error\').addClass(\'active\');\r\n    });\r\n\r\n    $(\'.contact-form\').on(\'ajaxSuccess\', function (event, message) {\r\n      $(\'.flash\').removeClass(\'active\');\r\n      $(\'.flash.success\').addClass(\'active\');\r\n    });\r\n  });\r\n\r\n</script>\r\n\r\n</body>\r\n</html>', 'description = \"Static layout\"\r\n\r\n[session]\r\nsecurity = \"all\"\r\n\r\n[staticPage]\r\nuseContent = 1\r\ndefault = 0\r\n==\r\n<!DOCTYPE html>\r\n<html>\r\n<head>\r\n  <meta charset=\"utf-8\">\r\n  <title>Olympos - {{ this.page.title }}</title>\r\n  <meta name=\"description\" content=\"{{ this.page.meta_description }}\">\r\n  <meta name=\"title\" content=\"{{ this.page.meta_title }}\">\r\n  <meta name=\"author\" content=\"OctoberCMS\">\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <meta name=\"generator\" content=\"OctoberCMS\">\r\n  <link rel=\"icon\" type=\"image/png\" href=\"{{ \'assets/images/october.png\'|theme }}\">\r\n  <link href=\"{{ \'assets/compiled/css/style.css\'|theme }}\" rel=\"stylesheet\">\r\n  {% styles %}\r\n</head>\r\n<body>\r\n\r\n<header class=\"main-header\">\r\n\r\n  <div class=\"container clearfix\">\r\n    <h1 class=\"logo\">Movies</h1>\r\n\r\n    <mav class=\"main-nav\">\r\n\r\n    </mav>\r\n\r\n  </div>\r\n\r\n</header>\r\n\r\n<!-- Content -->\r\n<section id=\"layout-content\" class=\"container clearfix\">\r\n  {% page %}\r\n</section>\r\n\r\n<footer class=\"main-footer\">\r\n\r\n  <div class=\"container\">\r\n\r\n    <nav class=\"footer-menu\">\r\n\r\n      <h1>Our static footer</h1>\r\n\r\n    </nav>\r\n\r\n\r\n  </div>\r\n\r\n</footer>\r\n\r\n\r\n<!-- Scripts -->\r\n<script src=\"{{ \'assets/compiled/js/all.js\'|theme }}\"></script>\r\n{% framework extras %}\r\n{% scripts %}\r\n\r\n<script type=\"text/javascript\">\r\n\r\n  jQuery(document).ready(function ($) {\r\n\r\n    $(\'.contact-form\').on(\'ajaxError\', function (event, message) {\r\n      $(\'.flash\').removeClass(\'active\');\r\n      $(\'.flash.error\').addClass(\'active\');\r\n    });\r\n\r\n    $(\'.contact-form\').on(\'ajaxSuccess\', function (event, message) {\r\n      $(\'.flash\').removeClass(\'active\');\r\n      $(\'.flash.success\').addClass(\'active\');\r\n    });\r\n  });\r\n\r\n</script>\r\n\r\n</body>\r\n</html>', 1, '2018-04-30 09:49:50', '2018-04-30 09:49:50'),
(81, 'update', 'olympos', 'layouts/static-layout.htm', 'layouts/static-layout.htm', 'description = \"Static layout\"\r\n\r\n[session]\r\nsecurity = \"all\"\r\n\r\n[staticPage]\r\nuseContent = 1\r\ndefault = 0\r\n\r\n[staticMenu]\r\ncode = \"headermenu\"\r\n==\r\n<!DOCTYPE html>\r\n<html>\r\n<head>\r\n  <meta charset=\"utf-8\">\r\n  <title>Olympos - {{ this.page.title }}</title>\r\n  <meta name=\"description\" content=\"{{ this.page.meta_description }}\">\r\n  <meta name=\"title\" content=\"{{ this.page.meta_title }}\">\r\n  <meta name=\"author\" content=\"OctoberCMS\">\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <meta name=\"generator\" content=\"OctoberCMS\">\r\n  <link rel=\"icon\" type=\"image/png\" href=\"{{ \'assets/images/october.png\'|theme }}\">\r\n  <link href=\"{{ \'assets/compiled/css/style.css\'|theme }}\" rel=\"stylesheet\">\r\n  {% styles %}\r\n</head>\r\n<body>\r\n\r\n<header class=\"main-header\">\r\n\r\n  <div class=\"container clearfix\">\r\n    <h1 class=\"logo\">Movies</h1>\r\n\r\n    <mav class=\"main-nav\">\r\n{% component \'staticMenu\' %}\r\n    </mav>\r\n\r\n  </div>\r\n\r\n</header>\r\n\r\n<!-- Content -->\r\n<section id=\"layout-content\" class=\"container clearfix\">\r\n  {% page %}\r\n</section>\r\n\r\n<footer class=\"main-footer\">\r\n\r\n  <div class=\"container\">\r\n\r\n    <nav class=\"footer-menu\">\r\n\r\n      <h1>Our static footer</h1>\r\n\r\n    </nav>\r\n\r\n\r\n  </div>\r\n\r\n</footer>\r\n\r\n\r\n<!-- Scripts -->\r\n<script src=\"{{ \'assets/compiled/js/all.js\'|theme }}\"></script>\r\n{% framework extras %}\r\n{% scripts %}\r\n\r\n<script type=\"text/javascript\">\r\n\r\n  jQuery(document).ready(function ($) {\r\n\r\n    $(\'.contact-form\').on(\'ajaxError\', function (event, message) {\r\n      $(\'.flash\').removeClass(\'active\');\r\n      $(\'.flash.error\').addClass(\'active\');\r\n    });\r\n\r\n    $(\'.contact-form\').on(\'ajaxSuccess\', function (event, message) {\r\n      $(\'.flash\').removeClass(\'active\');\r\n      $(\'.flash.success\').addClass(\'active\');\r\n    });\r\n  });\r\n\r\n</script>\r\n\r\n</body>\r\n</html>', 'description = \"Static layout\"\r\n\r\n[session]\r\nsecurity = \"all\"\r\n\r\n[staticPage]\r\nuseContent = 1\r\ndefault = 0\r\n\r\n[staticMenu]\r\n==\r\n<!DOCTYPE html>\r\n<html>\r\n<head>\r\n  <meta charset=\"utf-8\">\r\n  <title>Olympos - {{ this.page.title }}</title>\r\n  <meta name=\"description\" content=\"{{ this.page.meta_description }}\">\r\n  <meta name=\"title\" content=\"{{ this.page.meta_title }}\">\r\n  <meta name=\"author\" content=\"OctoberCMS\">\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <meta name=\"generator\" content=\"OctoberCMS\">\r\n  <link rel=\"icon\" type=\"image/png\" href=\"{{ \'assets/images/october.png\'|theme }}\">\r\n  <link href=\"{{ \'assets/compiled/css/style.css\'|theme }}\" rel=\"stylesheet\">\r\n  {% styles %}\r\n</head>\r\n<body>\r\n\r\n<header class=\"main-header\">\r\n\r\n  <div class=\"container clearfix\">\r\n    <h1 class=\"logo\">Movies</h1>\r\n\r\n    <mav class=\"main-nav\">\r\n{% component \'staticMenu\' %}\r\n    </mav>\r\n\r\n  </div>\r\n\r\n</header>\r\n\r\n<!-- Content -->\r\n<section id=\"layout-content\" class=\"container clearfix\">\r\n  {% page %}\r\n</section>\r\n\r\n<footer class=\"main-footer\">\r\n\r\n  <div class=\"container\">\r\n\r\n    <nav class=\"footer-menu\">\r\n\r\n      <h1>Our static footer</h1>\r\n\r\n    </nav>\r\n\r\n\r\n  </div>\r\n\r\n</footer>\r\n\r\n\r\n<!-- Scripts -->\r\n<script src=\"{{ \'assets/compiled/js/all.js\'|theme }}\"></script>\r\n{% framework extras %}\r\n{% scripts %}\r\n\r\n<script type=\"text/javascript\">\r\n\r\n  jQuery(document).ready(function ($) {\r\n\r\n    $(\'.contact-form\').on(\'ajaxError\', function (event, message) {\r\n      $(\'.flash\').removeClass(\'active\');\r\n      $(\'.flash.error\').addClass(\'active\');\r\n    });\r\n\r\n    $(\'.contact-form\').on(\'ajaxSuccess\', function (event, message) {\r\n      $(\'.flash\').removeClass(\'active\');\r\n      $(\'.flash.success\').addClass(\'active\');\r\n    });\r\n  });\r\n\r\n</script>\r\n\r\n</body>\r\n</html>', 1, '2018-04-30 09:50:18', '2018-04-30 09:50:18'),
(82, 'create', 'olympos', 'meta/menus/footermenu.yaml', '', 'name: \'Footer menu\'\nitems:\n    -\n        title: Movies\n        type: cms-page\n        code: \'\'\n        reference: movies\n        viewBag:\n            isHidden: \'0\'\n            cssClass: \'\'\n            isExternal: \'0\'\n    -\n        title: Login\n        type: cms-page\n        code: \'\'\n        reference: login\n        viewBag:\n            isHidden: \'0\'\n            cssClass: \'\'\n            isExternal: \'0\'\n    -\n        title: \'Add actors\'\n        type: url\n        url: /add-actors\n        code: \'\'\n        viewBag:\n            isHidden: \'0\'\n            cssClass: \'\'\n            isExternal: \'0\'', NULL, 1, '2018-04-30 09:54:27', '2018-04-30 09:54:27'),
(83, 'update', 'olympos', 'layouts/static-layout.htm', 'layouts/static-layout.htm', 'description = \"Static layout\"\r\n\r\n[session]\r\nsecurity = \"all\"\r\n\r\n[staticPage]\r\nuseContent = 1\r\ndefault = 0\r\n\r\n[staticMenu]\r\ncode = \"headermenu\"\r\n\r\n[staticMenu staticMenu2]\r\ncode = \"footermenu\"\r\n==\r\n<!DOCTYPE html>\r\n<html>\r\n<head>\r\n  <meta charset=\"utf-8\">\r\n  <title>Olympos - {{ this.page.title }}</title>\r\n  <meta name=\"description\" content=\"{{ this.page.meta_description }}\">\r\n  <meta name=\"title\" content=\"{{ this.page.meta_title }}\">\r\n  <meta name=\"author\" content=\"OctoberCMS\">\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <meta name=\"generator\" content=\"OctoberCMS\">\r\n  <link rel=\"icon\" type=\"image/png\" href=\"{{ \'assets/images/october.png\'|theme }}\">\r\n  <link href=\"{{ \'assets/compiled/css/style.css\'|theme }}\" rel=\"stylesheet\">\r\n  {% styles %}\r\n</head>\r\n<body>\r\n\r\n<header class=\"main-header\">\r\n\r\n  <div class=\"container clearfix\">\r\n    <h1 class=\"logo\">Movies</h1>\r\n\r\n    <mav class=\"main-nav\">\r\n      {% component \'staticMenu\' %}\r\n    </mav>\r\n\r\n  </div>\r\n\r\n</header>\r\n\r\n<!-- Content -->\r\n<section id=\"layout-content\" class=\"container clearfix\">\r\n  <h1>{{this.page.title}}</h1>\r\n  {% page %}\r\n</section>\r\n\r\n<footer class=\"main-footer\">\r\n\r\n  <div class=\"container\">\r\n\r\n    <nav class=\"footer-menu\">\r\n\r\n      <h1>Our static footer</h1>\r\n      \r\n      {% component \'staticMenu2\' %}\r\n\r\n    </nav>\r\n\r\n\r\n  </div>\r\n\r\n</footer>\r\n\r\n\r\n<!-- Scripts -->\r\n<script src=\"{{ \'assets/compiled/js/all.js\'|theme }}\"></script>\r\n{% framework extras %}\r\n{% scripts %}\r\n\r\n<script type=\"text/javascript\">\r\n\r\n  jQuery(document).ready(function ($) {\r\n\r\n    $(\'.contact-form\').on(\'ajaxError\', function (event, message) {\r\n      $(\'.flash\').removeClass(\'active\');\r\n      $(\'.flash.error\').addClass(\'active\');\r\n    });\r\n\r\n    $(\'.contact-form\').on(\'ajaxSuccess\', function (event, message) {\r\n      $(\'.flash\').removeClass(\'active\');\r\n      $(\'.flash.success\').addClass(\'active\');\r\n    });\r\n  });\r\n\r\n</script>\r\n\r\n</body>\r\n</html>', 'description = \"Static layout\"\r\n\r\n[session]\r\nsecurity = \"all\"\r\n\r\n[staticPage]\r\nuseContent = 1\r\ndefault = 0\r\n\r\n[staticMenu]\r\ncode = \"headermenu\"\r\n==\r\n<!DOCTYPE html>\r\n<html>\r\n<head>\r\n  <meta charset=\"utf-8\">\r\n  <title>Olympos - {{ this.page.title }}</title>\r\n  <meta name=\"description\" content=\"{{ this.page.meta_description }}\">\r\n  <meta name=\"title\" content=\"{{ this.page.meta_title }}\">\r\n  <meta name=\"author\" content=\"OctoberCMS\">\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <meta name=\"generator\" content=\"OctoberCMS\">\r\n  <link rel=\"icon\" type=\"image/png\" href=\"{{ \'assets/images/october.png\'|theme }}\">\r\n  <link href=\"{{ \'assets/compiled/css/style.css\'|theme }}\" rel=\"stylesheet\">\r\n  {% styles %}\r\n</head>\r\n<body>\r\n\r\n<header class=\"main-header\">\r\n\r\n  <div class=\"container clearfix\">\r\n    <h1 class=\"logo\">Movies</h1>\r\n\r\n    <mav class=\"main-nav\">\r\n      {% component \'staticMenu\' %}\r\n    </mav>\r\n\r\n  </div>\r\n\r\n</header>\r\n\r\n<!-- Content -->\r\n<section id=\"layout-content\" class=\"container clearfix\">\r\n  <h1>{{this.page.title}}</h1>\r\n  {% page %}\r\n</section>\r\n\r\n<footer class=\"main-footer\">\r\n\r\n  <div class=\"container\">\r\n\r\n    <nav class=\"footer-menu\">\r\n\r\n      <h1>Our static footer</h1>\r\n\r\n    </nav>\r\n\r\n\r\n  </div>\r\n\r\n</footer>\r\n\r\n\r\n<!-- Scripts -->\r\n<script src=\"{{ \'assets/compiled/js/all.js\'|theme }}\"></script>\r\n{% framework extras %}\r\n{% scripts %}\r\n\r\n<script type=\"text/javascript\">\r\n\r\n  jQuery(document).ready(function ($) {\r\n\r\n    $(\'.contact-form\').on(\'ajaxError\', function (event, message) {\r\n      $(\'.flash\').removeClass(\'active\');\r\n      $(\'.flash.error\').addClass(\'active\');\r\n    });\r\n\r\n    $(\'.contact-form\').on(\'ajaxSuccess\', function (event, message) {\r\n      $(\'.flash\').removeClass(\'active\');\r\n      $(\'.flash.success\').addClass(\'active\');\r\n    });\r\n  });\r\n\r\n</script>\r\n\r\n</body>\r\n</html>', 1, '2018-04-30 09:55:10', '2018-04-30 09:55:10'),
(84, 'update', 'olympos', 'meta/menus/headermenu.yaml', 'meta/menus/headermenu.yaml', 'name: \'Header menu\'\nitems:\n    -\n        title: Homepage\n        type: cms-page\n        code: \'\'\n        reference: homepage\n        viewBag:\n            isHidden: \'0\'\n            cssClass: \'\'\n            isExternal: \'0\'\n    -\n        title: \'All pages\'\n        nesting: \'\'\n        type: all-static-pages\n        url: \'\'\n        code: \'\'\n        reference: \'\'\n        cmsPage: \'\'\n        replace: \'1\'\n        viewBag:\n            isHidden: \'0\'\n            cssClass: \'\'\n            isExternal: \'0\'', 'name: \'Header menu\'\nitems:\n    -\n        title: \'All pages\'\n        type: all-static-pages\n        code: \'\'\n        replace: \'1\'\n        viewBag:\n            isHidden: \'0\'\n            cssClass: \'\'\n            isExternal: \'0\'', 1, '2018-04-30 10:02:31', '2018-04-30 10:02:31'),
(85, 'update', 'olympos', 'pages/add-actors.htm', 'pages/add-actors.htm', 'title = \"Add actors\"\r\nurl = \"/add-actors\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actorform]\r\n==\r\n<h2>Add an actor</h2>\r\n\r\n{% component \'actorform\' %}', 'title = \"Add actors\"\r\nurl = \"/add-actors\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actorform]\r\n\r\n[session]\r\nsecurity = \"user\"\r\nredirect = \"login\"\r\n==\r\n<h2>Add an actor</h2>\r\n\r\n{% component \'actorform\' %}', 1, '2018-05-09 06:53:15', '2018-05-09 06:53:15'),
(86, 'update', 'olympos', 'pages/add-actors.htm', 'pages/add-actors.htm', 'title = \"Add actors\"\r\nurl = \"/add-actors\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actorform]\r\n==\r\n<h2>Add an actor 21</h2>\r\n\r\n{% component \'actorform\' %}', 'title = \"Add actors\"\r\nurl = \"/add-actors\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actorform]\r\n==\r\n<h2>Add an actor</h2>\r\n\r\n{% component \'actorform\' %}', 1, '2018-05-09 06:53:50', '2018-05-09 06:53:50'),
(87, 'create', 'olympos', 'pages/tutos.htm', '', 'title = \"Tutos\"\r\nurl = \"/tutos\"\r\nlayout = \"tutos\"\r\nis_hidden = 0\r\n==', NULL, 1, '2018-05-14 09:46:14', '2018-05-14 09:46:14'),
(88, 'update', 'olympos', 'pages/tutos.htm', 'pages/tutos.htm', 'title = \"Tutos\"\r\nurl = \"/tutos\"\r\nlayout = \"tutos\"\r\nis_hidden = 0\r\n==\r\n<h1>Tutos</h1>', 'title = \"Tutos\"\r\nurl = \"/tutos\"\r\nlayout = \"tutos\"\r\nis_hidden = 0\r\n==', 1, '2018-05-14 09:46:23', '2018-05-14 09:46:23'),
(89, 'update', 'olympos', 'layouts/tutos.htm', 'layouts/tutos.htm', 'description = \"Default layout\"\r\n\r\n[session]\r\nsecurity = \"all\"\r\n==\r\n<!DOCTYPE html>\r\n<html>\r\n<head>\r\n  <meta charset=\"utf-8\">\r\n  <title>Olympos - {{ this.page.title }}</title>\r\n  <meta name=\"description\" content=\"{{ this.page.meta_description }}\">\r\n  <meta name=\"title\" content=\"{{ this.page.meta_title }}\">\r\n  <meta name=\"author\" content=\"OctoberCMS\">\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <meta name=\"generator\" content=\"OctoberCMS\">\r\n  <link rel=\"icon\" type=\"image/png\" href=\"{{ \'assets/images/october.png\'|theme }}\">\r\n  <link href=\"{{ \'assets/dist/css/style.css\'|theme }}\" rel=\"stylesheet\">\r\n  {% styles %}\r\n</head>\r\n<body>\r\n\r\n{% partial \"tutos/header\" %}\r\n\r\n<!-- Content -->\r\n<section id=\"layout-content\" class=\"container clearfix\">\r\n  {% page %}\r\n</section>\r\n\r\n{% partial \"footer\" %}\r\n\r\n<!-- Scripts -->\r\n<script src=\"{{ \r\n  [\r\n    \'assets/js/jquery.js\',\r\n    \'assets/dist/js/app.js\'\r\n  ]\r\n  |theme }}\"></script>\r\n{% framework extras %}\r\n{% scripts %}\r\n\r\n<script type=\"text/javascript\">\r\n\r\n  jQuery(document).ready(function ($) {\r\n\r\n    $(\'.contact-form\').on(\'ajaxError\', function (event, message) {\r\n      $(\'.flash\').removeClass(\'active\');\r\n      $(\'.flash.error\').addClass(\'active\');\r\n    });\r\n\r\n    $(\'.contact-form\').on(\'ajaxSuccess\', function (event, message) {\r\n      $(\'.flash\').removeClass(\'active\');\r\n      $(\'.flash.success\').addClass(\'active\');\r\n    });\r\n  });\r\n\r\n</script>\r\n\r\n</body>\r\n</html>', 'description = \"Default layout\"\r\n\r\n[session]\r\nsecurity = \"all\"\r\n==\r\n<!DOCTYPE html>\r\n<html>\r\n<head>\r\n  <meta charset=\"utf-8\">\r\n  <title>Olympos - {{ this.page.title }}</title>\r\n  <meta name=\"description\" content=\"{{ this.page.meta_description }}\">\r\n  <meta name=\"title\" content=\"{{ this.page.meta_title }}\">\r\n  <meta name=\"author\" content=\"OctoberCMS\">\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <meta name=\"generator\" content=\"OctoberCMS\">\r\n  <link rel=\"icon\" type=\"image/png\" href=\"{{ \'assets/images/october.png\'|theme }}\">\r\n  <link href=\"{{ \'assets/dist/css/style.css\'|theme }}\" rel=\"stylesheet\">\r\n  {% styles %}\r\n</head>\r\n<body>\r\n\r\n{% partial \"tutos.header\" %}\r\n\r\n<!-- Content -->\r\n<section id=\"layout-content\" class=\"container clearfix\">\r\n  {% page %}\r\n</section>\r\n\r\n{% partial \"footer\" %}\r\n\r\n<!-- Scripts -->\r\n<script src=\"{{ \r\n  [\r\n    \'assets/js/jquery.js\',\r\n    \'assets/dist/js/app.js\'\r\n  ]\r\n  |theme }}\"></script>\r\n{% framework extras %}\r\n{% scripts %}\r\n\r\n<script type=\"text/javascript\">\r\n\r\n  jQuery(document).ready(function ($) {\r\n\r\n    $(\'.contact-form\').on(\'ajaxError\', function (event, message) {\r\n      $(\'.flash\').removeClass(\'active\');\r\n      $(\'.flash.error\').addClass(\'active\');\r\n    });\r\n\r\n    $(\'.contact-form\').on(\'ajaxSuccess\', function (event, message) {\r\n      $(\'.flash\').removeClass(\'active\');\r\n      $(\'.flash.success\').addClass(\'active\');\r\n    });\r\n  });\r\n\r\n</script>\r\n\r\n</body>\r\n</html>', 1, '2018-05-14 09:46:52', '2018-05-14 09:46:52'),
(90, 'create', 'olympos', 'pages/blog.htm', '', 'title = \"Blog\"\r\nurl = \"/blog\"\r\nlayout = \"tutos\"\r\nis_hidden = 0\r\n==', NULL, 1, '2018-05-17 19:54:19', '2018-05-17 19:54:19'),
(91, 'update', 'olympos', 'pages/blog.htm', 'pages/blog.htm', 'title = \"Blog\"\r\nurl = \"/blog\"\r\nlayout = \"tutos\"\r\nis_hidden = 0\r\n==\r\n<h1>Blog</h1>', 'title = \"Blog\"\r\nurl = \"/blog\"\r\nlayout = \"tutos\"\r\nis_hidden = 0\r\n==', 1, '2018-05-17 19:54:28', '2018-05-17 19:54:28'),
(92, 'update', 'olympos', 'pages/blog/blog.htm', 'pages/blog/blog.htm', 'title = \"Blog\"\r\nurl = \"/blog\"\r\nlayout = \"tutos\"\r\nis_hidden = 0\r\n\r\n[blogPosts]\r\npageNumber = \"{{ :page }}\"\r\npostsPerPage = 10\r\nnoPostsMessage = \"No posts found\"\r\nsortOrder = \"published_at desc\"\r\ncategoryPage = \"add-actors\"\r\npostPage = \"add-actors\"\r\n==\r\n{% set posts = blogPosts.posts %}\r\n\r\n<ul class=\"post-list\">\r\n    {% for post in posts %}\r\n        <li>\r\n            <h3><a href=\"{{ post.url }}\">{{ post.title }}</a></h3>\r\n\r\n            <p class=\"info\">\r\n                Posted\r\n                {% if post.categories.count %} in {% endif %}\r\n                {% for category in post.categories %}\r\n                    <a href=\"{{ category.url }}\">{{ category.name }}</a>{% if not loop.last %}, {% endif %}\r\n                {% endfor %}\r\n                on {{ post.published_at|date(\'M d, Y\') }}\r\n            </p>\r\n\r\n            <p class=\"excerpt\">{{ post.summary|raw }}</p>\r\n        </li>\r\n    {% else %}\r\n        <li class=\"no-data\">{{ noPostsMessage }}</li>\r\n    {% endfor %}\r\n</ul>\r\n\r\n{% if posts.lastPage > 1 %}\r\n    <ul class=\"pagination\">\r\n        {% if posts.currentPage > 1 %}\r\n            <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (posts.currentPage-1) }) }}\">&larr; Prev</a></li>\r\n        {% endif %}\r\n\r\n        {% for page in 1..posts.lastPage %}\r\n            <li class=\"{{ posts.currentPage == page ? \'active\' : null }}\">\r\n                <a href=\"{{ this.page.baseFileName|page({ (pageParam): page }) }}\">{{ page }}</a>\r\n            </li>\r\n        {% endfor %}\r\n\r\n        {% if posts.lastPage > posts.currentPage %}\r\n            <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (posts.currentPage+1) }) }}\">Next &rarr;</a></li>\r\n        {% endif %}\r\n    </ul>\r\n{% endif %}sts %}\r\n\r\n<ul class=\"post-list\">\r\n    {% for post in posts %}\r\n        <li>\r\n            <h3><a href=\"{{ post.url }}\">{{ post.title }}</a></h3>\r\n\r\n            <p class=\"info\">\r\n                Posted\r\n                {% if post.categories.count %} in {% endif %}\r\n                {% for category in post.categories %}\r\n                    <a href=\"{{ category.url }}\">{{ category.name }}</a>{% if not loop.last %}, {% endif %}\r\n                {% endfor %}\r\n                on {{ post.published_at|date(\'M d, Y\') }}\r\n            </p>\r\n\r\n            <p class=\"excerpt\">{{ post.summary|raw }}</p>\r\n        </li>\r\n    {% else %}\r\n        <li class=\"no-data\">{{ noPostsMessage }}</li>\r\n    {% endfor %}\r\n</ul>\r\n\r\n{% if posts.lastPage > 1 %}\r\n    <ul class=\"pagination\">\r\n        {% if posts.currentPage > 1 %}\r\n            <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (posts.currentPage-1) }) }}\">&larr; Prev</a></li>\r\n        {% endif %}\r\n\r\n        {% for page in 1..posts.lastPage %}\r\n            <li class=\"{{ posts.currentPage == page ? \'active\' : null }}\">\r\n                <a href=\"{{ this.page.baseFileName|page({ (pageParam): page }) }}\">{{ page }}</a>\r\n            </li>\r\n        {% endfor %}\r\n\r\n        {% if posts.lastPage > posts.currentPage %}\r\n            <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (posts.currentPage+1) }) }}\">Next &rarr;</a></li>\r\n        {% endif %}\r\n    </ul>\r\n{% endif %}', 'title = \"Blog\"\r\nurl = \"/blog\"\r\nlayout = \"tutos\"\r\nis_hidden = 0\r\n\r\n[blogPosts]\r\npageNumber = \"{{ :page }}\"\r\npostsPerPage = 10\r\nnoPostsMessage = \"No posts found\"\r\nsortOrder = \"published_at desc\"\r\ncategoryPage = 404\r\npostPage = \"blog-post\"\r\n==\r\n<h1 class=\"main\">Posts</h1>\r\n{% component \'blogPosts\' %}', 1, '2018-05-17 20:13:12', '2018-05-17 20:13:12'),
(93, 'update', 'olympos', 'pages/blog/blog.htm', 'pages/blog/blog.htm', 'title = \"Blog\"\r\nurl = \"/blog\"\r\nlayout = \"tutos\"\r\nis_hidden = 0\r\n==', 'title = \"Blog\"\r\nurl = \"/blog\"\r\nlayout = \"tutos\"\r\nis_hidden = 0\r\n\r\n[blogPosts]\r\npageNumber = \"{{ :page }}\"\r\npostsPerPage = 10\r\nnoPostsMessage = \"No posts found\"\r\nsortOrder = \"published_at desc\"\r\ncategoryPage = \"add-actors\"\r\npostPage = \"add-actors\"\r\n==\r\n{% set posts = blogPosts.posts %}\r\n\r\n<ul class=\"post-list\">\r\n  {% for post in posts %}\r\n  <li>\r\n    <h3><a href=\"blog/{{ post.url }}\">{{ post.title }}</a></h3>\r\n\r\n    <p class=\"info\">\r\n      Posted\r\n      {% if post.categories.count %} in {% endif %}\r\n      {% for category in post.categories %}\r\n      <a href=\"{{ category.url }}\">{{ category.name }}</a>{% if not loop.last %}, {% endif %}\r\n      {% endfor %}\r\n      on {{ post.published_at|date(\'M d, Y\') }}\r\n    </p>\r\n\r\n    <p class=\"excerpt\">{{ post.summary|raw }}</p>\r\n  </li>\r\n  {% else %}\r\n  <li class=\"no-data\">{{ noPostsMessage }}</li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n{% if posts.lastPage > 1 %}\r\n<ul class=\"pagination\">\r\n  {% if posts.currentPage > 1 %}\r\n  <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (posts.currentPage-1) }) }}\">&larr; Prev</a></li>\r\n  {% endif %}\r\n\r\n  {% for page in 1..posts.lastPage %}\r\n  <li class=\"{{ posts.currentPage == page ? \'active\' : null }}\">\r\n    <a href=\"{{ this.page.baseFileName|page({ (pageParam): page }) }}\">{{ page }}</a>\r\n  </li>\r\n  {% endfor %}\r\n\r\n  {% if posts.lastPage > posts.currentPage %}\r\n  <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (posts.currentPage+1) }) }}\">Next &rarr;</a></li>\r\n  {% endif %}\r\n</ul>\r\n{% endif %}', 1, '2018-05-17 20:15:08', '2018-05-17 20:15:08'),
(94, 'update', 'olympos', 'pages/blog/blog.htm', 'pages/blog/blog.htm', 'title = \"Blog\"\r\nurl = \"/blog\"\r\nlayout = \"tutos\"\r\nis_hidden = 0\r\n\r\n[blogPosts]\r\npageNumber = \"{{ :page }}\"\r\npostsPerPage = 10\r\nnoPostsMessage = \"No posts found\"\r\nsortOrder = \"published_at desc\"\r\ncategoryPage = \"blog/category\"\r\npostPage = \"blog/post\"\r\n==\r\n{% set posts = blogPosts.posts %}\r\n\r\n<ul class=\"post-list\">\r\n    {% for post in posts %}\r\n        <li>\r\n            <h3><a href=\"{{ post.url }}\">{{ post.title }}</a></h3>\r\n\r\n            <p class=\"info\">\r\n                Posted\r\n                {% if post.categories.count %} in {% endif %}\r\n                {% for category in post.categories %}\r\n                    <a href=\"{{ category.url }}\">{{ category.name }}</a>{% if not loop.last %}, {% endif %}\r\n                {% endfor %}\r\n                on {{ post.published_at|date(\'M d, Y\') }}\r\n            </p>\r\n\r\n            <p class=\"excerpt\">{{ post.summary|raw }}</p>\r\n        </li>\r\n    {% else %}\r\n        <li class=\"no-data\">{{ noPostsMessage }}</li>\r\n    {% endfor %}\r\n</ul>\r\n\r\n{% if posts.lastPage > 1 %}\r\n    <ul class=\"pagination\">\r\n        {% if posts.currentPage > 1 %}\r\n            <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (posts.currentPage-1) }) }}\">&larr; Prev</a></li>\r\n        {% endif %}\r\n\r\n        {% for page in 1..posts.lastPage %}\r\n            <li class=\"{{ posts.currentPage == page ? \'active\' : null }}\">\r\n                <a href=\"{{ this.page.baseFileName|page({ (pageParam): page }) }}\">{{ page }}</a>\r\n            </li>\r\n        {% endfor %}\r\n\r\n        {% if posts.lastPage > posts.currentPage %}\r\n            <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (posts.currentPage+1) }) }}\">Next &rarr;</a></li>\r\n        {% endif %}\r\n    </ul>\r\n{% endif %}', 'title = \"Blog\"\r\nurl = \"/blog\"\r\nlayout = \"tutos\"\r\nis_hidden = 0\r\n==', 1, '2018-05-17 20:15:28', '2018-05-17 20:15:28'),
(95, 'update', 'olympos', 'pages/blog/blog.htm', 'pages/blog/blog.htm', 'title = \"Blog\"\r\nurl = \"/blog\"\r\nlayout = \"tutos\"\r\nis_hidden = 0\r\n\r\n[blogPosts]\r\npageNumber = \"{{ :page }}\"\r\npostsPerPage = 10\r\nnoPostsMessage = \"No posts found\"\r\nsortOrder = \"published_at desc\"\r\ncategoryPage = \"blog/blog-post\"\r\npostPage = \"blog/blog-post\"\r\n==\r\n{% set posts = blogPosts.posts %}\r\n\r\n<ul class=\"post-list\">\r\n    {% for post in posts %}\r\n        <li>\r\n            <h3><a href=\"{{ post.url }}\">{{ post.title }}</a></h3>\r\n\r\n            <p class=\"info\">\r\n                Posted\r\n                {% if post.categories.count %} in {% endif %}\r\n                {% for category in post.categories %}\r\n                    <a href=\"{{ category.url }}\">{{ category.name }}</a>{% if not loop.last %}, {% endif %}\r\n                {% endfor %}\r\n                on {{ post.published_at|date(\'M d, Y\') }}\r\n            </p>\r\n\r\n            <p class=\"excerpt\">{{ post.summary|raw }}</p>\r\n        </li>\r\n    {% else %}\r\n        <li class=\"no-data\">{{ noPostsMessage }}</li>\r\n    {% endfor %}\r\n</ul>\r\n\r\n{% if posts.lastPage > 1 %}\r\n    <ul class=\"pagination\">\r\n        {% if posts.currentPage > 1 %}\r\n            <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (posts.currentPage-1) }) }}\">&larr; Prev</a></li>\r\n        {% endif %}\r\n\r\n        {% for page in 1..posts.lastPage %}\r\n            <li class=\"{{ posts.currentPage == page ? \'active\' : null }}\">\r\n                <a href=\"{{ this.page.baseFileName|page({ (pageParam): page }) }}\">{{ page }}</a>\r\n            </li>\r\n        {% endfor %}\r\n\r\n        {% if posts.lastPage > posts.currentPage %}\r\n            <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (posts.currentPage+1) }) }}\">Next &rarr;</a></li>\r\n        {% endif %}\r\n    </ul>\r\n{% endif %}', 'title = \"Blog\"\r\nurl = \"/blog\"\r\nlayout = \"tutos\"\r\nis_hidden = 0\r\n\r\n[blogPosts]\r\npageNumber = \"{{ :page }}\"\r\npostsPerPage = 10\r\nnoPostsMessage = \"No posts found\"\r\nsortOrder = \"published_at desc\"\r\ncategoryPage = \"blog/category\"\r\npostPage = \"blog/post\"\r\n==\r\n{% set posts = blogPosts.posts %}\r\n\r\n<ul class=\"post-list\">\r\n    {% for post in posts %}\r\n        <li>\r\n            <h3><a href=\"{{ post.url }}\">{{ post.title }}</a></h3>\r\n\r\n            <p class=\"info\">\r\n                Posted\r\n                {% if post.categories.count %} in {% endif %}\r\n                {% for category in post.categories %}\r\n                    <a href=\"{{ category.url }}\">{{ category.name }}</a>{% if not loop.last %}, {% endif %}\r\n                {% endfor %}\r\n                on {{ post.published_at|date(\'M d, Y\') }}\r\n            </p>\r\n\r\n            <p class=\"excerpt\">{{ post.summary|raw }}</p>\r\n        </li>\r\n    {% else %}\r\n        <li class=\"no-data\">{{ noPostsMessage }}</li>\r\n    {% endfor %}\r\n</ul>\r\n\r\n{% if posts.lastPage > 1 %}\r\n    <ul class=\"pagination\">\r\n        {% if posts.currentPage > 1 %}\r\n            <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (posts.currentPage-1) }) }}\">&larr; Prev</a></li>\r\n        {% endif %}\r\n\r\n        {% for page in 1..posts.lastPage %}\r\n            <li class=\"{{ posts.currentPage == page ? \'active\' : null }}\">\r\n                <a href=\"{{ this.page.baseFileName|page({ (pageParam): page }) }}\">{{ page }}</a>\r\n            </li>\r\n        {% endfor %}\r\n\r\n        {% if posts.lastPage > posts.currentPage %}\r\n            <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (posts.currentPage+1) }) }}\">Next &rarr;</a></li>\r\n        {% endif %}\r\n    </ul>\r\n{% endif %}', 1, '2018-05-17 20:16:43', '2018-05-17 20:16:43'),
(96, 'update', 'olympos', 'pages/blog/blog.htm', 'pages/blog/blog.htm', 'title = \"Blog\"\r\nurl = \"/blog\"\r\nlayout = \"tutos\"\r\nis_hidden = 0\r\n\r\n[blogPosts]\r\npageNumber = \"{{ :page }}\"\r\npostsPerPage = 10\r\nnoPostsMessage = \"No posts found\"\r\nsortOrder = \"published_at desc\"\r\ncategoryPage = 404\r\npostPage = \"blog/blog-post\"\r\n==\r\n{% set posts = blogPosts.posts %}\r\n\r\n<ul class=\"post-list\">\r\n  {% for post in posts %}\r\n  <li>\r\n    <h3><a href=\"{{ post.url }}\">{{ post.title }}</a></h3>\r\n\r\n    <p class=\"info\">\r\n      Posted\r\n      {% if post.categories.count %} in {% endif %}\r\n      {% for category in post.categories %}\r\n      <a href=\"{{ category.url }}\">{{ category.name }}</a>{% if not loop.last %}, {% endif %}\r\n      {% endfor %}\r\n      on {{ post.published_at|date(\'M d, Y\') }}\r\n    </p>\r\n\r\n    <p class=\"excerpt\">{{ post.summary|raw }}</p>\r\n  </li>\r\n  {% else %}\r\n  <li class=\"no-data\">{{ noPostsMessage }}</li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n{% if posts.lastPage > 1 %}\r\n<ul class=\"pagination\">\r\n  {% if posts.currentPage > 1 %}\r\n  <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (posts.currentPage-1) }) }}\">&larr; Prev</a></li>\r\n  {% endif %}\r\n\r\n  {% for page in 1..posts.lastPage %}\r\n  <li class=\"{{ posts.currentPage == page ? \'active\' : null }}\">\r\n    <a href=\"{{ this.page.baseFileName|page({ (pageParam): page }) }}\">{{ page }}</a>\r\n  </li>\r\n  {% endfor %}\r\n\r\n  {% if posts.lastPage > posts.currentPage %}\r\n  <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (posts.currentPage+1) }) }}\">Next &rarr;</a></li>\r\n  {% endif %}\r\n</ul>\r\n{% endif %}', 'title = \"Blog\"\r\nurl = \"/blog\"\r\nlayout = \"tutos\"\r\nis_hidden = 0\r\n\r\n[blogPosts]\r\npageNumber = \"{{ :page }}\"\r\npostsPerPage = 10\r\nnoPostsMessage = \"No posts found\"\r\nsortOrder = \"published_at desc\"\r\ncategoryPage = \"blog\"\r\npostPage = \"blog/blog-post\"\r\n==\r\n{% set posts = blogPosts.posts %}\r\n\r\n<ul class=\"post-list\">\r\n  {% for post in posts %}\r\n  <li>\r\n    <h3><a href=\"{{ post.url }}\">{{ post.title }}</a></h3>\r\n\r\n    <p class=\"info\">\r\n      Posted\r\n      {% if post.categories.count %} in {% endif %}\r\n      {% for category in post.categories %}\r\n      <a href=\"{{ category.url }}\">{{ category.name }}</a>{% if not loop.last %}, {% endif %}\r\n      {% endfor %}\r\n      on {{ post.published_at|date(\'M d, Y\') }}\r\n    </p>\r\n\r\n    <p class=\"excerpt\">{{ post.summary|raw }}</p>\r\n  </li>\r\n  {% else %}\r\n  <li class=\"no-data\">{{ noPostsMessage }}</li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n{% if posts.lastPage > 1 %}\r\n<ul class=\"pagination\">\r\n  {% if posts.currentPage > 1 %}\r\n  <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (posts.currentPage-1) }) }}\">&larr; Prev</a></li>\r\n  {% endif %}\r\n\r\n  {% for page in 1..posts.lastPage %}\r\n  <li class=\"{{ posts.currentPage == page ? \'active\' : null }}\">\r\n    <a href=\"{{ this.page.baseFileName|page({ (pageParam): page }) }}\">{{ page }}</a>\r\n  </li>\r\n  {% endfor %}\r\n\r\n  {% if posts.lastPage > posts.currentPage %}\r\n  <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (posts.currentPage+1) }) }}\">Next &rarr;</a></li>\r\n  {% endif %}\r\n</ul>\r\n{% endif %}', 1, '2018-05-17 20:24:11', '2018-05-17 20:24:11'),
(97, 'update', 'olympos', 'pages/blog/blog-post.htm', 'pages/blog/blog-post.htm', 'title = \"Blog post\"\r\nurl = \"/blog-post/:slug\"\r\nlayout = \"tutos\"\r\nis_hidden = 0\r\n\r\n[blogPost]\r\nslug = \"{{ :slug }}\"\r\ncategoryPage = 404\r\n==\r\n{% component \'blogPost\' %}', 'title = \"Blog post\"\r\nurl = \"/blog-post/:slug\"\r\nlayout = \"tutos\"\r\nis_hidden = 0\r\n\r\n[blogPost]\r\nslug = \"{{ :slug }}\"\r\ncategoryPage = \"blog/category\"\r\n==\r\n{% component \'blogPost\' %}', 1, '2018-05-17 20:24:23', '2018-05-17 20:24:23'),
(98, 'update', 'olympos', 'pages/blog.htm', 'pages/blog.htm', 'title = \"Blog\"\r\nurl = \"/blog\"\r\nlayout = \"tutos\"\r\nis_hidden = 0\r\n\r\n[blogPosts]\r\npageNumber = \"{{ :page }}\"\r\npostsPerPage = 10\r\nnoPostsMessage = \"No posts found\"\r\nsortOrder = \"published_at desc\"\r\ncategoryPage = 404\r\npostPage = \"blog-post\"\r\n==\r\n{% component \'blogPosts\' %}', 'title = \"Blog\"\r\nurl = \"/blog\"\r\nlayout = \"tutos\"\r\nis_hidden = 0\r\n\r\n[blogPosts]\r\npageNumber = \"{{ :page }}\"\r\npostsPerPage = 10\r\nnoPostsMessage = \"No posts found\"\r\nsortOrder = \"published_at desc\"\r\ncategoryPage = 404\r\npostPage = \"blog/blog-post\"\r\n==\r\n{% set posts = blogPosts.posts %}\r\n\r\n<ul class=\"post-list\">\r\n  {% for post in posts %}\r\n  <li>\r\n    <h3><a href=\"{{ post.url }}\">{{ post.title }}</a></h3>\r\n\r\n    <p class=\"info\">\r\n      Posted\r\n      {% if post.categories.count %} in {% endif %}\r\n      {% for category in post.categories %}\r\n      <a href=\"{{ category.url }}\">{{ category.name }}</a>{% if not loop.last %}, {% endif %}\r\n      {% endfor %}\r\n      on {{ post.published_at|date(\'M d, Y\') }}\r\n    </p>\r\n\r\n    <p class=\"excerpt\">{{ post.summary|raw }}</p>\r\n  </li>\r\n  {% else %}\r\n  <li class=\"no-data\">{{ noPostsMessage }}</li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n{% if posts.lastPage > 1 %}\r\n<ul class=\"pagination\">\r\n  {% if posts.currentPage > 1 %}\r\n  <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (posts.currentPage-1) }) }}\">&larr; Prev</a></li>\r\n  {% endif %}\r\n\r\n  {% for page in 1..posts.lastPage %}\r\n  <li class=\"{{ posts.currentPage == page ? \'active\' : null }}\">\r\n    <a href=\"{{ this.page.baseFileName|page({ (pageParam): page }) }}\">{{ page }}</a>\r\n  </li>\r\n  {% endfor %}\r\n\r\n  {% if posts.lastPage > posts.currentPage %}\r\n  <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (posts.currentPage+1) }) }}\">Next &rarr;</a></li>\r\n  {% endif %}\r\n</ul>\r\n{% endif %}', 1, '2018-05-17 20:28:00', '2018-05-17 20:28:00'),
(99, 'update', 'olympos', 'pages/blog-post.htm', 'pages/blog-post.htm', 'title = \"Blog post\"\r\nurl = \"/blog-post/:slug\"\r\nlayout = \"tutos\"\r\nis_hidden = 0\r\n\r\n[blogPost]\r\nslug = \"{{ :slug }}\"\r\ncategoryPage = 404\r\n==\r\n{% set post = blogPost.post %}\r\n\r\n<div class=\"content\">{{ post.content_html|raw }}</div>\r\n\r\n{% if post.featured_images.count %}\r\n    <div class=\"featured-images text-center\">\r\n        {% for image in post.featured_images %}\r\n            <p>\r\n                <img\r\n                    data-src=\"{{ image.filename }}\"\r\n                    src=\"{{ image.path }}\"\r\n                    alt=\"{{ image.description }}\"\r\n                    style=\"max-width: 100%\" />\r\n            </p>\r\n        {% endfor %}\r\n    </div>\r\n{% endif %}\r\n\r\n<p class=\"info\">\r\n    Posted\r\n    {% if post.categories.count %} in\r\n        {% for category in post.categories %}\r\n            <a href=\"{{ category.url }}\">{{ category.name }}</a>{% if not loop.last %}, {% endif %}\r\n        {% endfor %}\r\n    {% endif %}\r\n    on {{ post.published_at|date(\'M d, Y\') }}\r\n</p>', 'title = \"Blog post\"\r\nurl = \"/blog-post/:slug\"\r\nlayout = \"tutos\"\r\nis_hidden = 0\r\n\r\n[blogPost]\r\nslug = \"{{ :slug }}\"\r\ncategoryPage = 404\r\n==\r\n{% component \'blogPost\' %}', 1, '2018-05-17 20:29:28', '2018-05-17 20:29:28'),
(100, 'create', 'olympos', 'pages/books.htm', '', 'title = \"Books\"\r\nurl = \"/books\"\r\nlayout = \"tutos\"\r\ndescription = \"List of books\"\r\nis_hidden = 0\r\n==\r\nBooks', NULL, 1, '2018-05-18 10:23:42', '2018-05-18 10:23:42'),
(101, 'update', 'olympos', 'pages/books.htm', 'pages/books.htm', 'title = \"Books\"\r\nurl = \"/books\"\r\nlayout = \"tutos\"\r\ndescription = \"List of books\"\r\nis_hidden = 0\r\n==\r\n<h1>Books</h1>', 'title = \"Books\"\r\nurl = \"/books\"\r\nlayout = \"tutos\"\r\ndescription = \"List of books\"\r\nis_hidden = 0\r\n==\r\nBooks', 1, '2018-05-18 10:23:54', '2018-05-18 10:23:54'),
(102, 'update', 'olympos', 'pages/books.htm', 'pages/books.htm', 'title = \"Books\"\r\nurl = \"/books\"\r\nlayout = \"tutos\"\r\ndescription = \"List of books\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Books\\Models\\Book\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"title\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"-\"\r\ndetailsUrlParameter = \"id\"\r\npageNumber = \"{{ :page }}\"\r\n==\r\n<h1>Books</h1>\r\n\r\n{% component \'builderList\' %}', 'title = \"Books\"\r\nurl = \"/books\"\r\nlayout = \"tutos\"\r\ndescription = \"List of books\"\r\nis_hidden = 0\r\n==\r\n<h1>Books</h1>', 1, '2018-05-18 10:59:05', '2018-05-18 10:59:05'),
(103, 'update', 'olympos', 'pages/books.htm', 'pages/books.htm', 'title = \"Books\"\r\nurl = \"/books\"\r\nlayout = \"tutos\"\r\ndescription = \"List of books\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Books\\Models\\Book\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"title\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"-\"\r\ndetailsUrlParameter = \"id\"\r\npageNumber = \"{{ :page }}\"\r\n\r\n[Books List]\r\n==\r\n<h1>Books</h1>\r\n\r\n{% component \'builderList\' %}\r\n\r\n<hr>\r\n\r\n{% component \'Books List\' %}', 'title = \"Books\"\r\nurl = \"/books\"\r\nlayout = \"tutos\"\r\ndescription = \"List of books\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Books\\Models\\Book\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"title\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"-\"\r\ndetailsUrlParameter = \"id\"\r\npageNumber = \"{{ :page }}\"\r\n==\r\n<h1>Books</h1>\r\n\r\n{% component \'builderList\' %}', 1, '2018-05-18 12:57:15', '2018-05-18 12:57:15'),
(104, 'update', 'olympos', 'pages/books.htm', 'pages/books.htm', 'title = \"Books\"\r\nurl = \"/books\"\r\nlayout = \"tutos\"\r\ndescription = \"List of books\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Books\\Models\\Book\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"title\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"-\"\r\ndetailsUrlParameter = \"id\"\r\npageNumber = \"{{ :page }}\"\r\n\r\n[Books List BooksList]\r\n==\r\n<h1>Books</h1>\r\n\r\n{% component \'builderList\' %}\r\n\r\n<hr>\r\n\r\n{% component \'Books List\' %}', 'title = \"Books\"\r\nurl = \"/books\"\r\nlayout = \"tutos\"\r\ndescription = \"List of books\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Books\\Models\\Book\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"title\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"-\"\r\ndetailsUrlParameter = \"id\"\r\npageNumber = \"{{ :page }}\"\r\n\r\n[Books List]\r\n==\r\n<h1>Books</h1>\r\n\r\n{% component \'builderList\' %}\r\n\r\n<hr>\r\n\r\n{% component \'Books List\' %}', 1, '2018-05-18 13:01:26', '2018-05-18 13:01:26'),
(105, 'update', 'olympos', 'pages/books.htm', 'pages/books.htm', 'title = \"Books\"\r\nurl = \"/books\"\r\nlayout = \"tutos\"\r\ndescription = \"List of books\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Books\\Models\\Book\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"title\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"-\"\r\ndetailsUrlParameter = \"id\"\r\npageNumber = \"{{ :page }}\"\r\n\r\n[Books List BooksList]\r\n==\r\n<h1>Books</h1>\r\n\r\n{% component \'builderList\' %}\r\n\r\n<hr>\r\n\r\n{% component \'BooksList\' %}', 'title = \"Books\"\r\nurl = \"/books\"\r\nlayout = \"tutos\"\r\ndescription = \"List of books\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Books\\Models\\Book\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"title\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"-\"\r\ndetailsUrlParameter = \"id\"\r\npageNumber = \"{{ :page }}\"\r\n\r\n[Books List BooksList]\r\n==\r\n<h1>Books</h1>\r\n\r\n{% component \'builderList\' %}\r\n\r\n<hr>\r\n\r\n{% component \'Books List\' %}', 1, '2018-05-18 13:02:30', '2018-05-18 13:02:30');
INSERT INTO `cms_theme_logs` (`id`, `type`, `theme`, `template`, `old_template`, `content`, `old_content`, `user_id`, `created_at`, `updated_at`) VALUES
(106, 'update', 'olympos', 'pages/books.htm', 'pages/books.htm', 'title = \"Books\"\r\nurl = \"/books\"\r\nlayout = \"tutos\"\r\ndescription = \"List of books\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Books\\Models\\Book\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"title\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"-\"\r\ndetailsUrlParameter = \"id\"\r\npageNumber = \"{{ :page }}\"\r\n\r\n[BooksList]\r\n==\r\n<h1>Books</h1>\r\n\r\n{% component \'builderList\' %}\r\n\r\n<hr>\r\n\r\n{% component \'BooksList\' %}', 'title = \"Books\"\r\nurl = \"/books\"\r\nlayout = \"tutos\"\r\ndescription = \"List of books\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Books\\Models\\Book\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"title\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"-\"\r\ndetailsUrlParameter = \"id\"\r\npageNumber = \"{{ :page }}\"\r\n\r\n[BooksList]\r\n==\r\n<h1>Books</h1>\r\n\r\n{% component \'builderList\' %}\r\n\r\n<hr>\r\n\r\n{% component \'BooksList\' %}', 1, '2018-05-18 13:09:11', '2018-05-18 13:09:11'),
(107, 'update', 'olympos', 'pages/books.htm', 'pages/books.htm', 'title = \"Books\"\r\nurl = \"/books\"\r\nlayout = \"tutos\"\r\ndescription = \"List of books\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Books\\Models\\Book\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"title\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"-\"\r\ndetailsUrlParameter = \"id\"\r\npageNumber = \"{{ :page }}\"\r\n\r\n[BooksList]\r\n==\r\n<h1>Books</h1>\r\n\r\n{% component \'builderList\' %}\r\n\r\n<hr>\r\n\r\n{% component \'BooksList\' %}\r\n\r\n{% for post in blogPosts.posts %}\r\n    {{ post }}\r\n{% endfor %}', 'title = \"Books\"\r\nurl = \"/books\"\r\nlayout = \"tutos\"\r\ndescription = \"List of books\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Books\\Models\\Book\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"title\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"-\"\r\ndetailsUrlParameter = \"id\"\r\npageNumber = \"{{ :page }}\"\r\n\r\n[BooksList]\r\n==\r\n<h1>Books</h1>\r\n\r\n{% component \'builderList\' %}\r\n\r\n<hr>\r\n\r\n{% component \'BooksList\' %}', 1, '2018-05-18 13:09:54', '2018-05-18 13:09:54'),
(108, 'update', 'olympos', 'pages/books.htm', 'pages/books.htm', 'title = \"Books\"\r\nurl = \"/books\"\r\nlayout = \"tutos\"\r\ndescription = \"List of books\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Books\\Models\\Book\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"title\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"-\"\r\ndetailsUrlParameter = \"id\"\r\npageNumber = \"{{ :page }}\"\r\n\r\n[BooksList]\r\n==\r\n<h1>Books</h1>\r\n\r\n{% component \'builderList\' %}\r\n\r\n<hr>\r\n\r\n{% component \'BooksList\' %}\r\n\r\n{% for book in booksList.books %}\r\n    {{ book }}\r\n{% endfor %}', 'title = \"Books\"\r\nurl = \"/books\"\r\nlayout = \"tutos\"\r\ndescription = \"List of books\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Books\\Models\\Book\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"title\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"-\"\r\ndetailsUrlParameter = \"id\"\r\npageNumber = \"{{ :page }}\"\r\n\r\n[BooksList]\r\n==\r\n<h1>Books</h1>\r\n\r\n{% component \'builderList\' %}\r\n\r\n<hr>\r\n\r\n{% component \'BooksList\' %}\r\n\r\n{% for post in blogPosts.posts %}\r\n    {{ post }}\r\n{% endfor %}', 1, '2018-05-18 13:10:21', '2018-05-18 13:10:21'),
(109, 'update', 'olympos', 'pages/fake-books.htm', 'pages/fake-books.htm', 'title = \"Fake Books\"\r\nurl = \"/fbooks\"\r\nlayout = \"tutos\"\r\ndescription = \"List of fake books\"\r\nis_hidden = 0\r\n\r\n[moreSimpleComponentForBooksList]\r\n==\r\n<h1>3 fake Books</h1>\r\n\r\n(Directly from one of the more simple component)\r\n\r\n<hr><br>\r\n\r\n<strong>Here, hard coded in the component:</strong><br>\r\n\r\n{{ component.books }}', 'title = \"Fake Books\"\r\nurl = \"/fbooks\"\r\nlayout = \"tutos\"\r\ndescription = \"List of fake books\"\r\nis_hidden = 0\r\n\r\n[moreSimpleComponentForBooksList]\r\n==\r\n<h1>3 fake Books</h1>\r\n\r\n(Directly from one of the more simple component)\r\n\r\n<hr><br>\r\n\r\n<strong>Here, hard coded in the component:</strong><br>\r\n\r\n{{ component.books }}', 1, '2018-05-18 15:52:55', '2018-05-18 15:52:55'),
(110, 'update', 'olympos', 'pages/books.htm', 'pages/books.htm', 'title = \"Books\"\r\nurl = \"/books\"\r\nlayout = \"tutos\"\r\ndescription = \"List of books\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Books\\Models\\Book\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"title\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"-\"\r\ndetailsUrlParameter = \"id\"\r\npageNumber = \"{{ :page }}\"\r\n\r\n[Books]\r\n\r\n[fakeBooks]\r\ntypeString = 1\r\n==\r\n<h1>Books</h1>\r\n\r\n{% component \'builderList\' %}\r\n\r\n<hr>\r\n<br>\r\n\r\n{% component \'Books\' %}\r\n\r\n<hr><br>\r\n<strong>Here to see 3 fake books hardcoded, directly générate in the component class.</strong><br>\r\n{{ fakeBooks.listing }}', 'title = \"Books\"\r\nurl = \"/books\"\r\nlayout = \"tutos\"\r\ndescription = \"List of books\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Books\\Models\\Book\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"title\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"-\"\r\ndetailsUrlParameter = \"id\"\r\npageNumber = \"{{ :page }}\"\r\n\r\n[Books]\r\n[fakeBooks]\r\n==\r\n<h1>Books</h1>\r\n\r\n{% component \'builderList\' %}\r\n\r\n<hr>\r\n<br>\r\n\r\n{% component \'Books\' %}\r\n\r\n<hr><br>\r\n<strong>Here to see 3 fake books hardcoded, directly générate in the component class.</strong><br>\r\n{{ fakeBooks.listing }}', 1, '2018-05-18 16:51:40', '2018-05-18 16:51:40'),
(111, 'update', 'olympos', 'pages/books.htm', 'pages/books.htm', 'title = \"Books\"\r\nurl = \"/books\"\r\nlayout = \"tutos\"\r\ndescription = \"List of books\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Books\\Models\\Book\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"title\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"-\"\r\ndetailsUrlParameter = \"id\"\r\npageNumber = \"{{ :page }}\"\r\n\r\n[Books]\r\n\r\n[fakeBooks]\r\ntypeString = 0\r\n==\r\n<h1>Books</h1>\r\n\r\n{% component \'builderList\' %}\r\n\r\n<hr>\r\n<br>\r\n\r\n{% component \'Books\' %}\r\n\r\n<hr><br>\r\n<strong>Here to see 3 fake books hardcoded, directly générate in the component class.</strong><br>\r\n{{ fakeBooks.listing }}', 'title = \"Books\"\r\nurl = \"/books\"\r\nlayout = \"tutos\"\r\ndescription = \"List of books\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Books\\Models\\Book\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"title\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"-\"\r\ndetailsUrlParameter = \"id\"\r\npageNumber = \"{{ :page }}\"\r\n\r\n[Books]\r\n\r\n[fakeBooks]\r\ntypeString = 1\r\n==\r\n<h1>Books</h1>\r\n\r\n{% component \'builderList\' %}\r\n\r\n<hr>\r\n<br>\r\n\r\n{% component \'Books\' %}\r\n\r\n<hr><br>\r\n<strong>Here to see 3 fake books hardcoded, directly générate in the component class.</strong><br>\r\n{{ fakeBooks.listing }}', 1, '2018-05-18 16:52:42', '2018-05-18 16:52:42'),
(112, 'update', 'olympos', 'pages/books.htm', 'pages/books.htm', 'title = \"Books\"\r\nurl = \"/books\"\r\nlayout = \"tutos\"\r\ndescription = \"List of books\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Books\\Models\\Book\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"title\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"-\"\r\ndetailsUrlParameter = \"id\"\r\npageNumber = \"{{ :page }}\"\r\n\r\n[Books]\r\n\r\n[fakeBooks]\r\ntypeString = 1\r\n==\r\n<h1>Books</h1>\r\n\r\n{% component \'builderList\' %}\r\n\r\n<hr>\r\n<br>\r\n\r\n{% component \'Books\' %}\r\n\r\n<hr><br>\r\n<strong>Here to see 3 fake books hardcoded, directly générate in the component class.</strong><br>\r\n{{ fakeBooks.listing }}', 'title = \"Books\"\r\nurl = \"/books\"\r\nlayout = \"tutos\"\r\ndescription = \"List of books\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Books\\Models\\Book\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"title\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"-\"\r\ndetailsUrlParameter = \"id\"\r\npageNumber = \"{{ :page }}\"\r\n\r\n[Books]\r\n\r\n[fakeBooks]\r\ntypeString = 0\r\n==\r\n<h1>Books</h1>\r\n\r\n{% component \'builderList\' %}\r\n\r\n<hr>\r\n<br>\r\n\r\n{% component \'Books\' %}\r\n\r\n<hr><br>\r\n<strong>Here to see 3 fake books hardcoded, directly générate in the component class.</strong><br>\r\n{{ fakeBooks.listing }}', 1, '2018-05-18 16:55:40', '2018-05-18 16:55:40'),
(113, 'update', 'olympos', 'pages/books.htm', 'pages/books.htm', 'title = \"Books\"\r\nurl = \"/books\"\r\nlayout = \"tutos\"\r\ndescription = \"List of books\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Books\\Models\\Book\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"title\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"-\"\r\ndetailsUrlParameter = \"id\"\r\npageNumber = \"{{ :page }}\"\r\n\r\n[Books]\r\n\r\n[fakeBooks]\r\ntypeString = 0\r\n==\r\n<h1>Books</h1>\r\n\r\n{% component \'builderList\' %}\r\n\r\n<hr>\r\n<br>\r\n\r\n{% component \'Books\' %}\r\n\r\n<hr><br>\r\n<strong>Here to see 3 fake books hardcoded, directly générate in the component class.</strong><br>\r\n{{ fakeBooks.listing }}', 'title = \"Books\"\r\nurl = \"/books\"\r\nlayout = \"tutos\"\r\ndescription = \"List of books\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Books\\Models\\Book\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"title\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"-\"\r\ndetailsUrlParameter = \"id\"\r\npageNumber = \"{{ :page }}\"\r\n\r\n[Books]\r\n\r\n[fakeBooks]\r\ntypeString = 1\r\n==\r\n<h1>Books</h1>\r\n\r\n{% component \'builderList\' %}\r\n\r\n<hr>\r\n<br>\r\n\r\n{% component \'Books\' %}\r\n\r\n<hr><br>\r\n<strong>Here to see 3 fake books hardcoded, directly générate in the component class.</strong><br>\r\n{{ fakeBooks.listing }}', 1, '2018-05-18 17:08:40', '2018-05-18 17:08:40'),
(114, 'update', 'olympos', 'pages/books.htm', 'pages/books.htm', 'title = \"Books\"\r\nurl = \"/books\"\r\nlayout = \"tutos\"\r\ndescription = \"List of books\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Books\\Models\\Book\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"title\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"-\"\r\ndetailsUrlParameter = \"id\"\r\npageNumber = \"{{ :page }}\"\r\n\r\n[Books]\r\n\r\n[fakeBooks]\r\ntypeString = 1\r\n==\r\n<h1>Books</h1>\r\n\r\n{% component \'builderList\' %}\r\n\r\n<hr>\r\n<br>\r\n\r\n{% component \'Books\' %}\r\n\r\n<hr><br>\r\n\r\n<strong>Here to see 3 fake books hardcoded, directly générate in the component class.</strong><br>\r\nAffichage:\r\n{% set affichage = __SELF__.property(\'typeString\')+1 %}\r\n{{affichage}}\r\n<br>\r\n{{ fakeBooks.listing }}', 'title = \"Books\"\r\nurl = \"/books\"\r\nlayout = \"tutos\"\r\ndescription = \"List of books\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Books\\Models\\Book\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"title\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"-\"\r\ndetailsUrlParameter = \"id\"\r\npageNumber = \"{{ :page }}\"\r\n\r\n[Books]\r\n\r\n[fakeBooks]\r\ntypeString = 0\r\n==\r\n<h1>Books</h1>\r\n\r\n{% component \'builderList\' %}\r\n\r\n<hr>\r\n<br>\r\n\r\n{% component \'Books\' %}\r\n\r\n<hr><br>\r\n\r\n<strong>Here to see 3 fake books hardcoded, directly générate in the component class.</strong><br>\r\nAffichage:\r\n{% set affichage = __SELF__.property(\'typeString\')+1 %}\r\n{{affichage}}\r\n<br>\r\n{{ fakeBooks.listing }}', 1, '2018-05-18 17:22:09', '2018-05-18 17:22:09'),
(115, 'update', 'olympos', 'pages/books.htm', 'pages/books.htm', 'title = \"Books\"\r\nurl = \"/books\"\r\nlayout = \"tutos\"\r\ndescription = \"List of books\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Books\\Models\\Book\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"title\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"-\"\r\ndetailsUrlParameter = \"id\"\r\npageNumber = \"{{ :page }}\"\r\n\r\n[Books]\r\n\r\n[fakeBooks]\r\ntypeString = 0\r\n==\r\n<h1>Books</h1>\r\n\r\n{% component \'builderList\' %}\r\n\r\n<hr>\r\n<br>\r\n\r\n{% component \'Books\' %}\r\n\r\n<hr><br>\r\n\r\n<strong>Here to see 3 fake books hardcoded, directly générate in the component class.</strong><br>\r\n\r\n<br>\r\n\r\n{% set typeString = fakeBooks.property(\'typeString\') ? \"String\":\"Serialized\" %}\r\n\r\nAffichage: <strong>{{typeString }}</strong>\r\n\r\n<br>\r\n<br>\r\n{{ fakeBooks.listing }}', 'title = \"Books\"\r\nurl = \"/books\"\r\nlayout = \"tutos\"\r\ndescription = \"List of books\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Books\\Models\\Book\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"title\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"-\"\r\ndetailsUrlParameter = \"id\"\r\npageNumber = \"{{ :page }}\"\r\n\r\n[Books]\r\n\r\n[fakeBooks]\r\ntypeString = 1\r\n==\r\n<h1>Books</h1>\r\n\r\n{% component \'builderList\' %}\r\n\r\n<hr>\r\n<br>\r\n\r\n{% component \'Books\' %}\r\n\r\n<hr><br>\r\n\r\n<strong>Here to see 3 fake books hardcoded, directly générate in the component class.</strong><br>\r\n\r\n<br>\r\n\r\n{% set typeString = fakeBooks.property(\'typeString\') ? \"String\":\"Serialized\" %}\r\n\r\nAffichage: <strong>{{typeString }}</strong>\r\n\r\n<br>\r\n<br>\r\n{{ fakeBooks.listing }}', 1, '2018-05-18 17:37:10', '2018-05-18 17:37:10'),
(116, 'update', 'olympos', 'pages/books.htm', 'pages/books.htm', 'title = \"Books\"\r\nurl = \"/books/:oki\"\r\nlayout = \"tutos\"\r\ndescription = \"List of books\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Books\\Models\\Book\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"title\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"-\"\r\ndetailsUrlParameter = \"id\"\r\npageNumber = \"{{ :page }}\"\r\n\r\n[Books]\r\n\r\n[fakeBooks]\r\ntypeString = 0\r\n==\r\n<h1>Books</h1>\r\n\r\n{% component \'builderList\' %}\r\n\r\n<hr>\r\n<br>\r\n\r\n{% component \'Books\' %}\r\n\r\n<hr><br>\r\n\r\n<strong>Here to see 3 fake books hardcoded, directly générate in the component class.</strong><br>\r\n\r\n<br>\r\n\r\n{% set typeString = fakeBooks.property(\'typeString\') ? \"String\":\"Serialized\" %}\r\n\r\nAffichage: <strong>{{typeString }}</strong> (Property in the component)\r\n\r\n<br>\r\n<br>\r\n{{ fakeBooks.listing }}', 'title = \"Books\"\r\nurl = \"/books\"\r\nlayout = \"tutos\"\r\ndescription = \"List of books\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Books\\Models\\Book\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"title\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"-\"\r\ndetailsUrlParameter = \"id\"\r\npageNumber = \"{{ :page }}\"\r\n\r\n[Books]\r\n\r\n[fakeBooks]\r\ntypeString = 0\r\n==\r\n<h1>Books</h1>\r\n\r\n{% component \'builderList\' %}\r\n\r\n<hr>\r\n<br>\r\n\r\n{% component \'Books\' %}\r\n\r\n<hr><br>\r\n\r\n<strong>Here to see 3 fake books hardcoded, directly générate in the component class.</strong><br>\r\n\r\n<br>\r\n\r\n{% set typeString = fakeBooks.property(\'typeString\') ? \"String\":\"Serialized\" %}\r\n\r\nAffichage: <strong>{{typeString }}</strong> (Property in the component)\r\n\r\n<br>\r\n<br>\r\n{{ fakeBooks.listing }}', 1, '2018-05-18 18:07:38', '2018-05-18 18:07:38'),
(117, 'update', 'olympos', 'pages/books.htm', 'pages/books.htm', 'title = \"Books\"\r\nurl = \"/books/:oki?\"\r\nlayout = \"tutos\"\r\ndescription = \"List of books\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Books\\Models\\Book\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"title\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"-\"\r\ndetailsUrlParameter = \"id\"\r\npageNumber = \"{{ :page }}\"\r\n\r\n[Books]\r\n\r\n[fakeBooks]\r\ntypeString = 0\r\n==\r\n<h1>Books</h1>\r\n\r\n{% component \'builderList\' %}\r\n\r\n<hr>\r\n<br>\r\n\r\n{% component \'Books\' %}\r\n\r\n<hr><br>\r\n\r\n<strong>Here to see 3 fake books hardcoded, directly générate in the component class.</strong><br>\r\n\r\n<br>\r\n\r\n{% set typeString = fakeBooks.property(\'typeString\') ? \"String\":\"Serialized\" %}\r\n\r\nAffichage: <strong>{{typeString }}</strong> (Property in the component)\r\n\r\n<br>\r\n<br>\r\n{{ fakeBooks.listing }}', 'title = \"Books\"\r\nurl = \"/books/:oki\"\r\nlayout = \"tutos\"\r\ndescription = \"List of books\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Books\\Models\\Book\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"title\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"-\"\r\ndetailsUrlParameter = \"id\"\r\npageNumber = \"{{ :page }}\"\r\n\r\n[Books]\r\n\r\n[fakeBooks]\r\ntypeString = 0\r\n==\r\n<h1>Books</h1>\r\n\r\n{% component \'builderList\' %}\r\n\r\n<hr>\r\n<br>\r\n\r\n{% component \'Books\' %}\r\n\r\n<hr><br>\r\n\r\n<strong>Here to see 3 fake books hardcoded, directly générate in the component class.</strong><br>\r\n\r\n<br>\r\n\r\n{% set typeString = fakeBooks.property(\'typeString\') ? \"String\":\"Serialized\" %}\r\n\r\nAffichage: <strong>{{typeString }}</strong> (Property in the component)\r\n\r\n<br>\r\n<br>\r\n{{ fakeBooks.listing }}', 1, '2018-05-18 18:07:52', '2018-05-18 18:07:52'),
(118, 'update', 'olympos', 'pages/books.htm', 'pages/books.htm', 'title = \"Books\"\r\nurl = \"/books/:oki?\"\r\nlayout = \"tutos\"\r\ndescription = \"List of books\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Books\\Models\\Book\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"title\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"-\"\r\ndetailsUrlParameter = \"id\"\r\npageNumber = \"{{ :page }}\"\r\n\r\n[Books]\r\n\r\n[fakeBooks]\r\ntypeString = 0\r\n\r\n[Clicks]\r\n==\r\n{% component \'Clicks\' %}\r\n\r\n\r\n<h1>Books</h1>\r\n\r\n{% component \'builderList\' %}\r\n\r\n<hr>\r\n<br>\r\n\r\n{% component \'Books\' %}\r\n\r\n<hr><br>\r\n\r\n<strong>Here to see 3 fake books hardcoded, directly générate in the component class.</strong><br>\r\n\r\n<br>\r\n\r\n{% set typeString = fakeBooks.property(\'typeString\') ? \"String\":\"Serialized\" %}\r\n\r\nAffichage: <strong>{{ typeString }}</strong> (Property in the component)\r\n\r\n<br>\r\n<br>\r\n{{ fakeBooks.listing }}\r\n<br><br>\r\n\r\n( Param <strong>{{ fakeBooks.paramOki[\'name\'] }}</strong> : URL = / <strong>{{ fakeBooks.paramOki[\'value\'] }}</strong> )\r\n<br>', 'title = \"Books\"\r\nurl = \"/books/:oki?\"\r\nlayout = \"tutos\"\r\ndescription = \"List of books\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Books\\Models\\Book\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"title\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"-\"\r\ndetailsUrlParameter = \"id\"\r\npageNumber = \"{{ :page }}\"\r\n\r\n[Books]\r\n\r\n[fakeBooks]\r\nokiContent = \"{{ :oki }}\"\r\ntypeString = 0\r\n\r\n==\r\n<h1>Books</h1>\r\n\r\n{% component \'builderList\' %}\r\n\r\n<hr>\r\n<br>\r\n\r\n{% component \'Books\' %}\r\n\r\n<hr><br>\r\n\r\n<strong>Here to see 3 fake books hardcoded, directly générate in the component class.</strong><br>\r\n\r\n<br>\r\n\r\n{% set typeString = fakeBooks.property(\'typeString\') ? \"String\":\"Serialized\" %}\r\n\r\nAffichage: <strong>{{ typeString }}</strong> (Property in the component)\r\n\r\n<br>\r\n<br>\r\n{{ fakeBooks.listing }}\r\n<br><br>\r\n\r\n( Param <strong>{{ fakeBooks.paramOki[\'name\'] }}</strong> : URL = / <strong>{{ fakeBooks.paramOki[\'value\'] }}</strong> )\r\n<br>', 1, '2018-05-18 19:56:51', '2018-05-18 19:56:51'),
(119, 'update', 'olympos', 'pages/books.htm', 'pages/books.htm', 'title = \"Books\"\r\nurl = \"/books/:oki?\"\r\nlayout = \"tutos\"\r\ndescription = \"List of books\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Books\\Models\\Book\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"title\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"-\"\r\ndetailsUrlParameter = \"id\"\r\npageNumber = \"{{ :page }}\"\r\n\r\n[Books]\r\n\r\n[fakeBooks]\r\ntypeString = 1\r\n\r\n[Clicks]\r\n==\r\n{% component \'Clicks\' %}\r\n\r\n\r\n<h1>Books</h1>\r\n\r\n{% component \'builderList\' %}\r\n\r\n<hr>\r\n<br>\r\n\r\n{% component \'Books\' %}\r\n\r\n<hr><br>\r\n\r\n<strong>Here to see 3 fake books hardcoded, directly générate in the component class.</strong><br>\r\n\r\n<br>\r\n\r\n{% set typeString = fakeBooks.property(\'typeString\') ? \"String\":\"Serialized\" %}\r\n\r\nAffichage: <strong>{{ typeString }}</strong> (Property in the component)\r\n\r\n<br>\r\n<br>\r\n{{ fakeBooks.listing }}\r\n<br><br>\r\n\r\n( Param <strong>{{ fakeBooks.paramOki[\'name\'] }}</strong> : URL = / <strong>{{ fakeBooks.paramOki[\'value\'] }}</strong> )\r\n<br>', 'title = \"Books\"\r\nurl = \"/books/:oki?\"\r\nlayout = \"tutos\"\r\ndescription = \"List of books\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Books\\Models\\Book\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"title\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"-\"\r\ndetailsUrlParameter = \"id\"\r\npageNumber = \"{{ :page }}\"\r\n\r\n[Books]\r\n\r\n[fakeBooks]\r\ntypeString = 0\r\n\r\n[Clicks]\r\n==\r\n{% component \'Clicks\' %}\r\n\r\n\r\n<h1>Books</h1>\r\n\r\n{% component \'builderList\' %}\r\n\r\n<hr>\r\n<br>\r\n\r\n{% component \'Books\' %}\r\n\r\n<hr><br>\r\n\r\n<strong>Here to see 3 fake books hardcoded, directly générate in the component class.</strong><br>\r\n\r\n<br>\r\n\r\n{% set typeString = fakeBooks.property(\'typeString\') ? \"String\":\"Serialized\" %}\r\n\r\nAffichage: <strong>{{ typeString }}</strong> (Property in the component)\r\n\r\n<br>\r\n<br>\r\n{{ fakeBooks.listing }}\r\n<br><br>\r\n\r\n( Param <strong>{{ fakeBooks.paramOki[\'name\'] }}</strong> : URL = / <strong>{{ fakeBooks.paramOki[\'value\'] }}</strong> )\r\n<br>', 1, '2018-05-19 10:23:37', '2018-05-19 10:23:37'),
(120, 'create', 'olympos', 'pages/', '', 'title = \"A\"\r\nurl = \"/a\"\r\nis_hidden = 0\r\n\r\n[Clicks]\r\n==\r\n<h1>Page bouton Ajax</h1>\r\n\r\n{% component \'Clicks\' %}', NULL, 1, '2018-05-19 11:29:39', '2018-05-19 11:29:39'),
(121, 'create', 'olympos', 'pages/', '', 'title = \"A\"\r\nurl = \"/a\"\r\nis_hidden = 0\r\n\r\n[Clicks]\r\n==\r\n<h1>Page bouton Ajax</h1>\r\n\r\n{% component \'Clicks\' %}', NULL, 1, '2018-05-19 11:30:19', '2018-05-19 11:30:19'),
(122, 'create', 'olympos', 'pages/a.htm', '', 'title = \"A\"\r\nurl = \"/a\"\r\nlayout = \"tutos\"\r\nis_hidden = 0\r\n\r\n[Clicks]\r\n==\r\n<h1>Page bouton Ajax</h1>\r\n\r\n{% component \'Clicks\' %}', NULL, 1, '2018-05-19 11:30:41', '2018-05-19 11:30:41'),
(123, 'update', 'olympos', 'pages/a.htm', 'pages/a.htm', 'title = \"A\"\r\nurl = \"/a\"\r\nlayout = \"tutos\"\r\nis_hidden = 0\r\n\r\n[Clicks]\r\n==\r\n<h1>Page bouton Ajax</h1>\r\n\r\n<form\r\n    data-request=\"onIncrementcounter\"\r\n    data-request-update=\"getCounter: \'#counter\'\"\r\n>\r\n\r\n  <button type=\"submit\" data-request=\"onIncrementcounter\" data-attach-loading><p id=\"counter\"> {{ Clicks.counter}} </p></button>\r\n\r\n</form>', 'title = \"A\"\r\nurl = \"/a\"\r\nlayout = \"tutos\"\r\nis_hidden = 0\r\n\r\n[Clicks]\r\n==\r\n<h1>Page bouton Ajax</h1>\r\n\r\n{% component \'Clicks\' %}', 1, '2018-05-19 11:33:16', '2018-05-19 11:33:16'),
(124, 'update', 'olympos', 'pages/books.htm', 'pages/books.htm', 'title = \"Books\"\r\nurl = \"/books/:oki?\"\r\nlayout = \"tutos\"\r\ndescription = \"List of books\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Books\\Models\\Book\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"title\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"-\"\r\ndetailsUrlParameter = \"id\"\r\npageNumber = \"{{ :page }}\"\r\n\r\n[Books]\r\n\r\n[fakeBooks]\r\ntypeString = 1\r\n\r\n[Clicks]\r\n\r\n[Clicks Clicks2]\r\n==\r\n{% component \'Clicks2\' %}\r\n\r\n<h1>Books</h1>\r\n\r\n{% component \'builderList\' %}\r\n\r\n<hr>\r\n<br>\r\n\r\n{% component \'Books\' %}\r\n\r\n<hr><br>\r\n\r\n<strong>Here to see 3 fake books hardcoded, directly générate in the component class.</strong><br>\r\n\r\n<br>\r\n\r\n{% set typeString = fakeBooks.property(\'typeString\') ? \"String\":\"Serialized\" %}\r\n\r\nAffichage: <strong>{{ typeString }}</strong> (Property in the component)\r\n\r\n<br>\r\n<br>\r\n{{ fakeBooks.listing }}\r\n<br><br>\r\n\r\n( Param <strong>{{ fakeBooks.paramOki[\'name\'] }}</strong> : URL = / <strong>{{ fakeBooks.paramOki[\'value\'] }}</strong> )\r\n<br>', 'title = \"Books\"\r\nurl = \"/books/:oki?\"\r\nlayout = \"tutos\"\r\ndescription = \"List of books\"\r\nis_hidden = 0\r\n\r\n[builderList]\r\nmodelClass = \"Grcote7\\Books\\Models\\Book\"\r\nscope = \"-\"\r\nscopeValue = \"{{ :scope }}\"\r\ndisplayColumn = \"title\"\r\nnoRecordsMessage = \"No records found\"\r\ndetailsPage = \"-\"\r\ndetailsUrlParameter = \"id\"\r\npageNumber = \"{{ :page }}\"\r\n\r\n[Books]\r\n\r\n[fakeBooks]\r\ntypeString = 1\r\n\r\n[Clicks]\r\n==\r\n{% component \'Clicks\' %}\r\n\r\n\r\n<h1>Books</h1>\r\n\r\n{% component \'builderList\' %}\r\n\r\n<hr>\r\n<br>\r\n\r\n{% component \'Books\' %}\r\n\r\n<hr><br>\r\n\r\n<strong>Here to see 3 fake books hardcoded, directly générate in the component class.</strong><br>\r\n\r\n<br>\r\n\r\n{% set typeString = fakeBooks.property(\'typeString\') ? \"String\":\"Serialized\" %}\r\n\r\nAffichage: <strong>{{ typeString }}</strong> (Property in the component)\r\n\r\n<br>\r\n<br>\r\n{{ fakeBooks.listing }}\r\n<br><br>\r\n\r\n( Param <strong>{{ fakeBooks.paramOki[\'name\'] }}</strong> : URL = / <strong>{{ fakeBooks.paramOki[\'value\'] }}</strong> )\r\n<br>', 1, '2018-05-20 11:06:59', '2018-05-20 11:06:59'),
(125, 'create', 'uuuu', 'pages/home.htm', '', 'title = \"Home\"\r\nurl = \"/home\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n==\r\nPage accueil', NULL, 1, '2018-06-13 06:38:54', '2018-06-13 06:38:54'),
(126, 'update', 'uuuu', 'pages/home.htm', 'pages/home.htm', 'title = \"Home\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n==\r\nPage accueil', 'title = \"Home\"\r\nurl = \"/home\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n==\r\nPage accueil', 1, '2018-06-13 06:39:21', '2018-06-13 06:39:21'),
(127, 'update', 'uuuu', 'pages/home.htm', 'pages/home.htm', 'title = \"Home\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n==\r\n<h1>Page accueil</h1>', 'title = \"Home\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n==\r\nPage accueil', 1, '2018-06-13 06:40:45', '2018-06-13 06:40:45'),
(128, 'update', 'olympos', 'pages/genres.htm', 'pages/genres.htm', 'title = \"Genres\"\r\nurl = \"/genres/:slug\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[builderDetails]\r\nmodelClass = \"Grcote7\\Movies\\Models\\Genre\"\r\nidentifierValue = \"{{ :slug }}\"\r\nmodelKeyColumn = \"slug\"\r\ndisplayColumn = \"genre_title\"\r\nnotFoundMessage = \"Record not found\"\r\n==\r\n{% set record = builderDetails.record %}\r\n{% set displayColumn = builderDetails.displayColumn %}\r\n{% set notFoundMessage = builderDetails.notFoundMessage %}\r\n\r\n{% if record %}\r\n    <h2>{{ attribute(record, displayColumn) }}</h2>\r\n    Movies of this genre:\r\n    {% for movie in record.movies %}\r\n       {{ movie.name }}<br>\r\n    {% endfor %}\r\n\r\n{% else %}\r\n    {{ notFoundMessage }}\r\n{% endif %}', 'title = \"Genres\"\r\nurl = \"/genres/:slug\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[builderDetails]\r\nmodelClass = \"Grcote7\\Movies\\Models\\Genre\"\r\nidentifierValue = \"{{ :slug }}\"\r\nmodelKeyColumn = \"slug\"\r\ndisplayColumn = \"genre_title\"\r\nnotFoundMessage = \"Record not found\"\r\n==\r\n{% set record = builderDetails.record %}\r\n{% set displayColumn = builderDetails.displayColumn %}\r\n{% set notFoundMessage = builderDetails.notFoundMessage %}\r\n\r\n{% if record %}\r\n    <h2>{{ attribute(record, displayColumn) }}</h2>\r\n\r\n    {% for movie in record.movies %}\r\n       {{ movie.name }}<br>\r\n    {% endfor %}\r\n\r\n{% else %}\r\n    {{ notFoundMessage }}\r\n{% endif %}', 1, '2018-06-22 11:36:06', '2018-06-22 11:36:06'),
(129, 'update', 'olympos', 'pages/genres.htm', 'pages/genres.htm', 'title = \"Genres\"\r\nurl = \"/genres/:slug\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[builderDetails]\r\nmodelClass = \"Grcote7\\Movies\\Models\\Genre\"\r\nidentifierValue = \"{{ :slug }}\"\r\nmodelKeyColumn = \"slug\"\r\ndisplayColumn = \"genre_title\"\r\nnotFoundMessage = \"Record not found\"\r\n==\r\n{% set record = builderDetails.record %}\r\n{% set displayColumn = builderDetails.displayColumn %}\r\n{% set notFoundMessage = builderDetails.notFoundMessage %}\r\n\r\n{% if record %}\r\n    <h2>Movies of genre {{ attribute(record, displayColumn) }}</h2>\r\n    {% for movie in record.movies %}\r\n       {{ movie.name }}<br>\r\n    {% endfor %}\r\n\r\n{% else %}\r\n    {{ notFoundMessage }}\r\n{% endif %}', 'title = \"Genres\"\r\nurl = \"/genres/:slug\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[builderDetails]\r\nmodelClass = \"Grcote7\\Movies\\Models\\Genre\"\r\nidentifierValue = \"{{ :slug }}\"\r\nmodelKeyColumn = \"slug\"\r\ndisplayColumn = \"genre_title\"\r\nnotFoundMessage = \"Record not found\"\r\n==\r\n{% set record = builderDetails.record %}\r\n{% set displayColumn = builderDetails.displayColumn %}\r\n{% set notFoundMessage = builderDetails.notFoundMessage %}\r\n\r\n{% if record %}\r\n    <h2>{{ attribute(record, displayColumn) }}</h2>\r\n    Movies of this genre:\r\n    {% for movie in record.movies %}\r\n       {{ movie.name }}<br>\r\n    {% endfor %}\r\n\r\n{% else %}\r\n    {{ notFoundMessage }}\r\n{% endif %}', 1, '2018-06-22 11:36:45', '2018-06-22 11:36:45'),
(130, 'update', 'olympos', 'pages/genres.htm', 'pages/genres.htm', 'title = \"Genres\"\r\nurl = \"/genres/:slug\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[builderDetails]\r\nmodelClass = \"Grcote7\\Movies\\Models\\Genre\"\r\nidentifierValue = \"{{ :slug }}\"\r\nmodelKeyColumn = \"slug\"\r\ndisplayColumn = \"genre_title\"\r\nnotFoundMessage = \"Record not found\"\r\n==\r\n{% set record = builderDetails.record %}\r\n{% set displayColumn = builderDetails.displayColumn %}\r\n{% set notFoundMessage = builderDetails.notFoundMessage %}\r\n\r\n{% if record %}\r\n    <h2>Movies of genre: {{ attribute(record, displayColumn) }}</h2>\r\n    {% for movie in record.movies %}\r\n       {{ movie.name }}<br>\r\n    {% endfor %}\r\n\r\n{% else %}\r\n    {{ notFoundMessage }}\r\n{% endif %}', 'title = \"Genres\"\r\nurl = \"/genres/:slug\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[builderDetails]\r\nmodelClass = \"Grcote7\\Movies\\Models\\Genre\"\r\nidentifierValue = \"{{ :slug }}\"\r\nmodelKeyColumn = \"slug\"\r\ndisplayColumn = \"genre_title\"\r\nnotFoundMessage = \"Record not found\"\r\n==\r\n{% set record = builderDetails.record %}\r\n{% set displayColumn = builderDetails.displayColumn %}\r\n{% set notFoundMessage = builderDetails.notFoundMessage %}\r\n\r\n{% if record %}\r\n    <h2>Movies of genre {{ attribute(record, displayColumn) }}</h2>\r\n    {% for movie in record.movies %}\r\n       {{ movie.name }}<br>\r\n    {% endfor %}\r\n\r\n{% else %}\r\n    {{ notFoundMessage }}\r\n{% endif %}', 1, '2018-06-22 11:37:04', '2018-06-22 11:37:04'),
(131, 'update', 'olympos', 'pages/add-actors.htm', 'pages/add-actors.htm', 'title = \"Add actors\"\r\nurl = \"/add-actors\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actorform]\r\n==\r\n<h2>Add an actor</h2>\r\n\r\n{% component \'actorform\' %}', 'title = \"Add actors\"\r\nurl = \"/add-actors\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actorform]\r\n==\r\n<h2>Add an actor 21</h2>\r\n\r\n{% component \'actorform\' %}', 1, '2018-06-25 07:26:52', '2018-06-25 07:26:52'),
(132, 'create', 'olympos', 'pages/u.htm', '', 'title = \"U\"\r\nurl = \"/u\"\r\nis_hidden = 0\r\n==', NULL, 1, '2018-06-25 10:24:19', '2018-06-25 10:24:19'),
(133, 'update', 'olympos', 'pages/u.htm', 'pages/u.htm', 'title = \"U\"\r\nurl = \"/u\"\r\nis_hidden = 0\r\n==\r\nPage u', 'title = \"U\"\r\nurl = \"/u\"\r\nis_hidden = 0\r\n==', 1, '2018-06-25 10:24:28', '2018-06-25 10:24:28'),
(134, 'update', 'olympos', 'pages/contact.htm', 'pages/contact.htm', 'title = \"Contact\"\r\nurl = \"/contact\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[contactform]\r\n\r\n[siteSearchInclude]\r\n\r\n[airMap]\r\nheight = \"surface/level\"\r\nprojection = \"orthographic\"\r\nmapWidth = \"100%\"\r\nmapHeight = 480\r\nzoom = 400\r\n==\r\n<h2>Contact Page</h2>\r\n\r\n<p>This is our awesome contact page.</p>\r\n\r\n{% component \'contactform\' %}\r\n\r\n{% component \'airMap\' %}', 'title = \"Contact\"\r\nurl = \"/contact\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[contactform]\r\n\r\n[siteSearchInclude]\r\n==\r\n<h2>Contact Page</h2>\r\n\r\n<p>This is our awesome contact page.</p>\r\n\r\n{% component \'contactform\' %}', 1, '2018-07-01 23:30:24', '2018-07-01 23:30:24'),
(135, 'update', 'olympos', 'pages/contact.htm', 'pages/contact.htm', 'title = \"Contact\"\r\nurl = \"/contact\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[contactform]\r\n\r\n[siteSearchInclude]\r\n\r\n[chemistryMap]\r\noverlay = \"cosc\"\r\nprojection = \"orthographic\"\r\nmapWidth = \"100%\"\r\nmapHeight = 480\r\nzoom = 400\r\n==\r\n<h2>Contact Page</h2>\r\n\r\n<p>This is our awesome contact page.</p>\r\n\r\n{% component \'contactform\' %}\r\n\r\n{% component \'chemistryMap\' %}', 'title = \"Contact\"\r\nurl = \"/contact\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[contactform]\r\n\r\n[siteSearchInclude]\r\n\r\n[airMap]\r\nheight = \"surface/level\"\r\nprojection = \"orthographic\"\r\nmapWidth = \"100%\"\r\nmapHeight = 480\r\nzoom = 400\r\n==\r\n<h2>Contact Page</h2>\r\n\r\n<p>This is our awesome contact page.</p>\r\n\r\n{% component \'contactform\' %}\r\n\r\n{% component \'airMap\' %}', 1, '2018-07-01 23:34:00', '2018-07-01 23:34:00'),
(136, 'update', 'olympos', 'pages/contact.htm', 'pages/contact.htm', 'title = \"Contact\"\r\nurl = \"/contact\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[contactform]\r\n\r\n[siteSearchInclude]\r\n\r\n[airMap]\r\nheight = \"surface/level\"\r\nprojection = \"orthographic\"\r\nmapWidth = \"100%\"\r\nmapHeight = 480\r\nzoom = 400\r\n==\r\n<h2>Contact Page</h2>\r\n\r\n<p>This is our awesome contact page.</p>\r\n\r\n{% component \'contactform\' %}\r\n\r\n{% component \'airMap\' %}', 'title = \"Contact\"\r\nurl = \"/contact\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[contactform]\r\n\r\n[siteSearchInclude]\r\n\r\n[chemistryMap]\r\noverlay = \"cosc\"\r\nprojection = \"orthographic\"\r\nmapWidth = \"100%\"\r\nmapHeight = 480\r\nzoom = 400\r\n==\r\n<h2>Contact Page</h2>\r\n\r\n<p>This is our awesome contact page.</p>\r\n\r\n{% component \'contactform\' %}\r\n\r\n{% component \'chemistryMap\' %}', 1, '2018-07-01 23:34:17', '2018-07-01 23:34:17'),
(137, 'update', 'olympos', 'pages/contact.htm', 'pages/contact.htm', 'title = \"Contact\"\r\nurl = \"/contact\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[contactform]\r\n\r\n[siteSearchInclude]\r\n\r\n[oceanMap]\r\nanimate = \"primary/waves\"\r\noverlay = \"overlay=significant_wave_height\"\r\nprojection = \"orthographic\"\r\nmapWidth = \"100%\"\r\nmapHeight = 480\r\nzoom = 400\r\n==\r\n<h2>Contact Page</h2>\r\n\r\n<p>This is our awesome contact page.</p>\r\n\r\n{% component \'contactform\' %}\r\n\r\n{% component \'oceanMap\' %}', 'title = \"Contact\"\r\nurl = \"/contact\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[contactform]\r\n\r\n[siteSearchInclude]\r\n\r\n[airMap]\r\nheight = \"surface/level\"\r\nprojection = \"orthographic\"\r\nmapWidth = \"100%\"\r\nmapHeight = 480\r\nzoom = 400\r\n==\r\n<h2>Contact Page</h2>\r\n\r\n<p>This is our awesome contact page.</p>\r\n\r\n{% component \'contactform\' %}\r\n\r\n{% component \'airMap\' %}', 1, '2018-07-01 23:34:30', '2018-07-01 23:34:30'),
(138, 'update', 'olympos', 'pages/contact.htm', 'pages/contact.htm', 'title = \"Contact\"\r\nurl = \"/contact\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[contactform]\r\n\r\n[siteSearchInclude]\r\n\r\n[particulatesMap]\r\noverlay = \"duexttau\"\r\nprojection = \"orthographic\"\r\nmapWidth = \"100%\"\r\nmapHeight = 480\r\nzoom = 400\r\n==\r\n<h2>Contact Page</h2>\r\n\r\n<p>This is our awesome contact page.</p>\r\n\r\n{% component \'contactform\' %}\r\n\r\n{% component \'particulatesMap\' %}', 'title = \"Contact\"\r\nurl = \"/contact\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[contactform]\r\n\r\n[siteSearchInclude]\r\n\r\n[oceanMap]\r\nanimate = \"primary/waves\"\r\noverlay = \"overlay=significant_wave_height\"\r\nprojection = \"orthographic\"\r\nmapWidth = \"100%\"\r\nmapHeight = 480\r\nzoom = 400\r\n==\r\n<h2>Contact Page</h2>\r\n\r\n<p>This is our awesome contact page.</p>\r\n\r\n{% component \'contactform\' %}\r\n\r\n{% component \'oceanMap\' %}', 1, '2018-07-01 23:34:48', '2018-07-01 23:34:48'),
(139, 'update', 'olympos', 'pages/contact.htm', 'pages/contact.htm', 'title = \"Contact\"\r\nurl = \"/contact\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[contactform]\r\n\r\n[siteSearchInclude]\r\n==\r\n<h2>Contact Page</h2>\r\n\r\n<p>This is our awesome contact page.</p>\r\n\r\n{% component \'contactform\' %}', 'title = \"Contact\"\r\nurl = \"/contact\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[contactform]\r\n\r\n[siteSearchInclude]\r\n\r\n[particulatesMap]\r\noverlay = \"duexttau\"\r\nprojection = \"orthographic\"\r\nmapWidth = \"100%\"\r\nmapHeight = 480\r\nzoom = 400\r\n==\r\n<h2>Contact Page</h2>\r\n\r\n<p>This is our awesome contact page.</p>\r\n\r\n{% component \'contactform\' %}\r\n\r\n{% component \'particulatesMap\' %}', 1, '2018-07-01 23:35:37', '2018-07-01 23:35:37'),
(140, 'update', 'olympos', 'pages/homepage.htm', 'pages/homepage.htm', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 7\r\nsortOrder = \"lastname asc\"\r\n\r\n[siteSearchInclude]\r\n==\r\n<?php\r\nuse Grcote7\\Movies\\Models\\Movie;\r\nfunction onStart(){\r\n  $this[\'movies\'] = Movie::orderBy(\'year\', \'desc\')->take(2)->get();\r\n$this->addCss(\'assets/sass/homepage.scss\');\r\n$this->addJs(\'assets/js/homepage.js\');\r\n}\r\n?>\r\n==\r\n<div class=\"container\">\r\n    <h1>OKi 123 777</h1>\r\n    <p>A paragraph</p>\r\n</div>\r\n\r\n<form action=\"{{ \'search\' | page }}\" method=\"get\">\r\n  <input name=\"q\" type=\"text\" placeholder=\"What are you looking for?\" autocomplete=\"off\">\r\n  <button type=\"submit\">Search</button>\r\n</form>\r\n\r\n<p id=\"testlihp\">Ok 1234</p>\r\n\r\n<ul class=\"movie-list\">\r\n  {% for movie in movies %}\r\n  <li class=\"ui segment stacked\">\r\n    {# Use spaceless tag to remove spaces inside the A tag. #}\r\n    <h3>\r\n      {% spaceless %}\r\n\r\n      <a href=\"movies/movie/{{movie.slug}}\">{{ movie.name }}</a> - {{ movie.year }}\r\n\r\n      {% endspaceless %}\r\n    </h3>\r\n\r\n    {{html_limit(movie.description,150)|raw}}\r\n\r\n  </li>\r\n  {% else %}\r\n  <li class=\"no-data\">No Movies found</li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 'title = \"Homepage\"\nurl = \"/\"\nlayout = \"default\"\nis_hidden = 0\n\n[actors]\nresults = 7\nsortOrder = \"id asc\"\n\n[siteSearchInclude]\n==\n<?php\nuse Grcote7\\Movies\\Models\\Movie;\nfunction onStart(){\n  $this[\'movies\'] = Movie::orderBy(\'year\', \'desc\')->take(2)->get();\n$this->addCss(\'assets/sass/homepage.scss\');\n$this->addJs(\'assets/js/homepage.js\');\n}\n\n?>\n==\n<div class=\"container\">\n    <h1>OKi 123 777</h1>\n    <p>A paragraph</p>\n</div>\n\n<form action=\"{{ \'search\' | page }}\" method=\"get\">\n  <input name=\"q\" type=\"text\" placeholder=\"What are you looking for?\" autocomplete=\"off\">\n  <button type=\"submit\">Search</button>\n</form>\n\n<p id=\"testlihp\">Ok 1234</p>\n\n<ul class=\"movie-list\">\n  {% for movie in movies %}\n  <li class=\"ui segment stacked\">\n    {# Use spaceless tag to remove spaces inside the A tag. #}\n    <h3>\n      {% spaceless %}\n\n      <a href=\"movies/movie/{{movie.slug}}\">{{ movie.name }}</a> - {{ movie.year }}\n\n      {% endspaceless %}\n    </h3>\n\n    {{html_limit(movie.description,150)|raw}}\n\n  </li>\n  {% else %}\n  <li class=\"no-data\">No Movies found</li>\n  {% endfor %}\n</ul>\n\n{% component \'actors\' %}\n\n<h2>This is our homepage ! Yay !</h2>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\n  numquamneque.</p>\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\n  voluptatem. Cupiditate, option!</p>', 1, '2018-07-05 15:08:31', '2018-07-05 15:08:31'),
(141, 'update', 'olympos', 'pages/homepage.htm', 'pages/homepage.htm', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 2\r\nsortOrder = \"lastname asc\"\r\n\r\n[siteSearchInclude]\r\n==\r\n<?php\r\nuse Grcote7\\Movies\\Models\\Movie;\r\nfunction onStart(){\r\n  $this[\'movies\'] = Movie::orderBy(\'year\', \'desc\')->take(2)->get();\r\n$this->addCss(\'assets/sass/homepage.scss\');\r\n$this->addJs(\'assets/js/homepage.js\');\r\n}\r\n?>\r\n==\r\n<div class=\"container\">\r\n    <h1>OKi 123 777</h1>\r\n    <p>A paragraph</p>\r\n</div>\r\n\r\n<form action=\"{{ \'search\' | page }}\" method=\"get\">\r\n  <input name=\"q\" type=\"text\" placeholder=\"What are you looking for?\" autocomplete=\"off\">\r\n  <button type=\"submit\">Search</button>\r\n</form>\r\n\r\n<p id=\"testlihp\">Ok 1234</p>\r\n\r\n<ul class=\"movie-list\">\r\n  {% for movie in movies %}\r\n  <li class=\"ui segment stacked\">\r\n    {# Use spaceless tag to remove spaces inside the A tag. #}\r\n    <h3>\r\n      {% spaceless %}\r\n\r\n      <a href=\"movies/movie/{{movie.slug}}\">{{ movie.name }}</a> - {{ movie.year }}\r\n\r\n      {% endspaceless %}\r\n    </h3>\r\n\r\n    {{html_limit(movie.description,150)|raw}}\r\n\r\n  </li>\r\n  {% else %}\r\n  <li class=\"no-data\">No Movies found</li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 7\r\nsortOrder = \"lastname asc\"\r\n\r\n[siteSearchInclude]\r\n==\r\n<?php\r\nuse Grcote7\\Movies\\Models\\Movie;\r\nfunction onStart(){\r\n  $this[\'movies\'] = Movie::orderBy(\'year\', \'desc\')->take(2)->get();\r\n$this->addCss(\'assets/sass/homepage.scss\');\r\n$this->addJs(\'assets/js/homepage.js\');\r\n}\r\n?>\r\n==\r\n<div class=\"container\">\r\n    <h1>OKi 123 777</h1>\r\n    <p>A paragraph</p>\r\n</div>\r\n\r\n<form action=\"{{ \'search\' | page }}\" method=\"get\">\r\n  <input name=\"q\" type=\"text\" placeholder=\"What are you looking for?\" autocomplete=\"off\">\r\n  <button type=\"submit\">Search</button>\r\n</form>\r\n\r\n<p id=\"testlihp\">Ok 1234</p>\r\n\r\n<ul class=\"movie-list\">\r\n  {% for movie in movies %}\r\n  <li class=\"ui segment stacked\">\r\n    {# Use spaceless tag to remove spaces inside the A tag. #}\r\n    <h3>\r\n      {% spaceless %}\r\n\r\n      <a href=\"movies/movie/{{movie.slug}}\">{{ movie.name }}</a> - {{ movie.year }}\r\n\r\n      {% endspaceless %}\r\n    </h3>\r\n\r\n    {{html_limit(movie.description,150)|raw}}\r\n\r\n  </li>\r\n  {% else %}\r\n  <li class=\"no-data\">No Movies found</li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 1, '2018-07-05 15:13:41', '2018-07-05 15:13:41');
INSERT INTO `cms_theme_logs` (`id`, `type`, `theme`, `template`, `old_template`, `content`, `old_content`, `user_id`, `created_at`, `updated_at`) VALUES
(142, 'update', 'olympos', 'pages/homepage.htm', 'pages/homepage.htm', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 3\r\nsortOrder = \"lastname asc\"\r\n\r\n[siteSearchInclude]\r\n==\r\n<?php\r\nuse Grcote7\\Movies\\Models\\Movie;\r\nfunction onStart(){\r\n  $this[\'movies\'] = Movie::orderBy(\'year\', \'desc\')->take(2)->get();\r\n$this->addCss(\'assets/sass/homepage.scss\');\r\n$this->addJs(\'assets/js/homepage.js\');\r\n}\r\n?>\r\n==\r\n<div class=\"container\">\r\n    <h1>OKi 123 777</h1>\r\n    <p>A paragraph</p>\r\n</div>\r\n\r\n<form action=\"{{ \'search\' | page }}\" method=\"get\">\r\n  <input name=\"q\" type=\"text\" placeholder=\"What are you looking for?\" autocomplete=\"off\">\r\n  <button type=\"submit\">Search</button>\r\n</form>\r\n\r\n<p id=\"testlihp\">Ok 1234</p>\r\n\r\n<ul class=\"movie-list\">\r\n  {% for movie in movies %}\r\n  <li class=\"ui segment stacked\">\r\n    {# Use spaceless tag to remove spaces inside the A tag. #}\r\n    <h3>\r\n      {% spaceless %}\r\n\r\n      <a href=\"movies/movie/{{movie.slug}}\">{{ movie.name }}</a> - {{ movie.year }}\r\n\r\n      {% endspaceless %}\r\n    </h3>\r\n\r\n    {{html_limit(movie.description,150)|raw}}\r\n\r\n  </li>\r\n  {% else %}\r\n  <li class=\"no-data\">No Movies found</li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 2\r\nsortOrder = \"lastname asc\"\r\n\r\n[siteSearchInclude]\r\n==\r\n<?php\r\nuse Grcote7\\Movies\\Models\\Movie;\r\nfunction onStart(){\r\n  $this[\'movies\'] = Movie::orderBy(\'year\', \'desc\')->take(2)->get();\r\n$this->addCss(\'assets/sass/homepage.scss\');\r\n$this->addJs(\'assets/js/homepage.js\');\r\n}\r\n?>\r\n==\r\n<div class=\"container\">\r\n    <h1>OKi 123 777</h1>\r\n    <p>A paragraph</p>\r\n</div>\r\n\r\n<form action=\"{{ \'search\' | page }}\" method=\"get\">\r\n  <input name=\"q\" type=\"text\" placeholder=\"What are you looking for?\" autocomplete=\"off\">\r\n  <button type=\"submit\">Search</button>\r\n</form>\r\n\r\n<p id=\"testlihp\">Ok 1234</p>\r\n\r\n<ul class=\"movie-list\">\r\n  {% for movie in movies %}\r\n  <li class=\"ui segment stacked\">\r\n    {# Use spaceless tag to remove spaces inside the A tag. #}\r\n    <h3>\r\n      {% spaceless %}\r\n\r\n      <a href=\"movies/movie/{{movie.slug}}\">{{ movie.name }}</a> - {{ movie.year }}\r\n\r\n      {% endspaceless %}\r\n    </h3>\r\n\r\n    {{html_limit(movie.description,150)|raw}}\r\n\r\n  </li>\r\n  {% else %}\r\n  <li class=\"no-data\">No Movies found</li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 1, '2018-07-05 15:13:51', '2018-07-05 15:13:51'),
(143, 'update', 'olympos', 'pages/homepage.htm', 'pages/homepage.htm', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 3\r\nsortOrder = \"name desc\"\r\n\r\n[siteSearchInclude]\r\n==\r\n<?php\r\nuse Grcote7\\Movies\\Models\\Movie;\r\nfunction onStart(){\r\n  $this[\'movies\'] = Movie::orderBy(\'year\', \'desc\')->take(2)->get();\r\n$this->addCss(\'assets/sass/homepage.scss\');\r\n$this->addJs(\'assets/js/homepage.js\');\r\n}\r\n?>\r\n==\r\n<div class=\"container\">\r\n    <h1>OKi 123 777</h1>\r\n    <p>A paragraph</p>\r\n</div>\r\n\r\n<form action=\"{{ \'search\' | page }}\" method=\"get\">\r\n  <input name=\"q\" type=\"text\" placeholder=\"What are you looking for?\" autocomplete=\"off\">\r\n  <button type=\"submit\">Search</button>\r\n</form>\r\n\r\n<p id=\"testlihp\">Ok 1234</p>\r\n\r\n<ul class=\"movie-list\">\r\n  {% for movie in movies %}\r\n  <li class=\"ui segment stacked\">\r\n    {# Use spaceless tag to remove spaces inside the A tag. #}\r\n    <h3>\r\n      {% spaceless %}\r\n\r\n      <a href=\"movies/movie/{{movie.slug}}\">{{ movie.name }}</a> - {{ movie.year }}\r\n\r\n      {% endspaceless %}\r\n    </h3>\r\n\r\n    {{html_limit(movie.description,150)|raw}}\r\n\r\n  </li>\r\n  {% else %}\r\n  <li class=\"no-data\">No Movies found</li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 3\r\nsortOrder = \"lastname asc\"\r\n\r\n[siteSearchInclude]\r\n==\r\n<?php\r\nuse Grcote7\\Movies\\Models\\Movie;\r\nfunction onStart(){\r\n  $this[\'movies\'] = Movie::orderBy(\'year\', \'desc\')->take(2)->get();\r\n$this->addCss(\'assets/sass/homepage.scss\');\r\n$this->addJs(\'assets/js/homepage.js\');\r\n}\r\n?>\r\n==\r\n<div class=\"container\">\r\n    <h1>OKi 123 777</h1>\r\n    <p>A paragraph</p>\r\n</div>\r\n\r\n<form action=\"{{ \'search\' | page }}\" method=\"get\">\r\n  <input name=\"q\" type=\"text\" placeholder=\"What are you looking for?\" autocomplete=\"off\">\r\n  <button type=\"submit\">Search</button>\r\n</form>\r\n\r\n<p id=\"testlihp\">Ok 1234</p>\r\n\r\n<ul class=\"movie-list\">\r\n  {% for movie in movies %}\r\n  <li class=\"ui segment stacked\">\r\n    {# Use spaceless tag to remove spaces inside the A tag. #}\r\n    <h3>\r\n      {% spaceless %}\r\n\r\n      <a href=\"movies/movie/{{movie.slug}}\">{{ movie.name }}</a> - {{ movie.year }}\r\n\r\n      {% endspaceless %}\r\n    </h3>\r\n\r\n    {{html_limit(movie.description,150)|raw}}\r\n\r\n  </li>\r\n  {% else %}\r\n  <li class=\"no-data\">No Movies found</li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 1, '2018-07-05 15:16:22', '2018-07-05 15:16:22'),
(144, 'update', 'olympos', 'pages/homepage.htm', 'pages/homepage.htm', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 3\r\nsortOrder = \"name asc\"\r\n\r\n[siteSearchInclude]\r\n==\r\n<?php\r\nuse Grcote7\\Movies\\Models\\Movie;\r\nfunction onStart(){\r\n  $this[\'movies\'] = Movie::orderBy(\'year\', \'desc\')->take(2)->get();\r\n$this->addCss(\'assets/sass/homepage.scss\');\r\n$this->addJs(\'assets/js/homepage.js\');\r\n}\r\n?>\r\n==\r\n<div class=\"container\">\r\n    <h1>OKi 123 777</h1>\r\n    <p>A paragraph</p>\r\n</div>\r\n\r\n<form action=\"{{ \'search\' | page }}\" method=\"get\">\r\n  <input name=\"q\" type=\"text\" placeholder=\"What are you looking for?\" autocomplete=\"off\">\r\n  <button type=\"submit\">Search</button>\r\n</form>\r\n\r\n<p id=\"testlihp\">Ok 1234</p>\r\n\r\n<ul class=\"movie-list\">\r\n  {% for movie in movies %}\r\n  <li class=\"ui segment stacked\">\r\n    {# Use spaceless tag to remove spaces inside the A tag. #}\r\n    <h3>\r\n      {% spaceless %}\r\n\r\n      <a href=\"movies/movie/{{movie.slug}}\">{{ movie.name }}</a> - {{ movie.year }}\r\n\r\n      {% endspaceless %}\r\n    </h3>\r\n\r\n    {{html_limit(movie.description,150)|raw}}\r\n\r\n  </li>\r\n  {% else %}\r\n  <li class=\"no-data\">No Movies found</li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 3\r\nsortOrder = \"name desc\"\r\n\r\n[siteSearchInclude]\r\n==\r\n<?php\r\nuse Grcote7\\Movies\\Models\\Movie;\r\nfunction onStart(){\r\n  $this[\'movies\'] = Movie::orderBy(\'year\', \'desc\')->take(2)->get();\r\n$this->addCss(\'assets/sass/homepage.scss\');\r\n$this->addJs(\'assets/js/homepage.js\');\r\n}\r\n?>\r\n==\r\n<div class=\"container\">\r\n    <h1>OKi 123 777</h1>\r\n    <p>A paragraph</p>\r\n</div>\r\n\r\n<form action=\"{{ \'search\' | page }}\" method=\"get\">\r\n  <input name=\"q\" type=\"text\" placeholder=\"What are you looking for?\" autocomplete=\"off\">\r\n  <button type=\"submit\">Search</button>\r\n</form>\r\n\r\n<p id=\"testlihp\">Ok 1234</p>\r\n\r\n<ul class=\"movie-list\">\r\n  {% for movie in movies %}\r\n  <li class=\"ui segment stacked\">\r\n    {# Use spaceless tag to remove spaces inside the A tag. #}\r\n    <h3>\r\n      {% spaceless %}\r\n\r\n      <a href=\"movies/movie/{{movie.slug}}\">{{ movie.name }}</a> - {{ movie.year }}\r\n\r\n      {% endspaceless %}\r\n    </h3>\r\n\r\n    {{html_limit(movie.description,150)|raw}}\r\n\r\n  </li>\r\n  {% else %}\r\n  <li class=\"no-data\">No Movies found</li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 1, '2018-07-05 15:17:12', '2018-07-05 15:17:12'),
(145, 'update', 'olympos', 'pages/homepage.htm', 'pages/homepage.htm', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 3\r\nsortOrder = \"name desc\"\r\n\r\n[siteSearchInclude]\r\n==\r\n<?php\r\nuse Grcote7\\Movies\\Models\\Movie;\r\nfunction onStart(){\r\n  $this[\'movies\'] = Movie::orderBy(\'year\', \'desc\')->take(2)->get();\r\n$this->addCss(\'assets/sass/homepage.scss\');\r\n$this->addJs(\'assets/js/homepage.js\');\r\n}\r\n?>\r\n==\r\n<div class=\"container\">\r\n    <h1>OKi 123 777</h1>\r\n    <p>A paragraph</p>\r\n</div>\r\n\r\n<form action=\"{{ \'search\' | page }}\" method=\"get\">\r\n  <input name=\"q\" type=\"text\" placeholder=\"What are you looking for?\" autocomplete=\"off\">\r\n  <button type=\"submit\">Search</button>\r\n</form>\r\n\r\n<p id=\"testlihp\">Ok 1234</p>\r\n\r\n<ul class=\"movie-list\">\r\n  {% for movie in movies %}\r\n  <li class=\"ui segment stacked\">\r\n    {# Use spaceless tag to remove spaces inside the A tag. #}\r\n    <h3>\r\n      {% spaceless %}\r\n\r\n      <a href=\"movies/movie/{{movie.slug}}\">{{ movie.name }}</a> - {{ movie.year }}\r\n\r\n      {% endspaceless %}\r\n    </h3>\r\n\r\n    {{html_limit(movie.description,150)|raw}}\r\n\r\n  </li>\r\n  {% else %}\r\n  <li class=\"no-data\">No Movies found</li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 3\r\nsortOrder = \"name asc\"\r\n\r\n[siteSearchInclude]\r\n==\r\n<?php\r\nuse Grcote7\\Movies\\Models\\Movie;\r\nfunction onStart(){\r\n  $this[\'movies\'] = Movie::orderBy(\'year\', \'desc\')->take(2)->get();\r\n$this->addCss(\'assets/sass/homepage.scss\');\r\n$this->addJs(\'assets/js/homepage.js\');\r\n}\r\n?>\r\n==\r\n<div class=\"container\">\r\n    <h1>OKi 123 777</h1>\r\n    <p>A paragraph</p>\r\n</div>\r\n\r\n<form action=\"{{ \'search\' | page }}\" method=\"get\">\r\n  <input name=\"q\" type=\"text\" placeholder=\"What are you looking for?\" autocomplete=\"off\">\r\n  <button type=\"submit\">Search</button>\r\n</form>\r\n\r\n<p id=\"testlihp\">Ok 1234</p>\r\n\r\n<ul class=\"movie-list\">\r\n  {% for movie in movies %}\r\n  <li class=\"ui segment stacked\">\r\n    {# Use spaceless tag to remove spaces inside the A tag. #}\r\n    <h3>\r\n      {% spaceless %}\r\n\r\n      <a href=\"movies/movie/{{movie.slug}}\">{{ movie.name }}</a> - {{ movie.year }}\r\n\r\n      {% endspaceless %}\r\n    </h3>\r\n\r\n    {{html_limit(movie.description,150)|raw}}\r\n\r\n  </li>\r\n  {% else %}\r\n  <li class=\"no-data\">No Movies found</li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 1, '2018-07-05 15:17:23', '2018-07-05 15:17:23'),
(146, 'update', 'olympos', 'pages/homepage.htm', 'pages/homepage.htm', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 3\r\nsortOrder = \"lastname desc\"\r\n\r\n[siteSearchInclude]\r\n==\r\n<?php\r\nuse Grcote7\\Movies\\Models\\Movie;\r\nfunction onStart(){\r\n  $this[\'movies\'] = Movie::orderBy(\'year\', \'desc\')->take(2)->get();\r\n$this->addCss(\'assets/sass/homepage.scss\');\r\n$this->addJs(\'assets/js/homepage.js\');\r\n}\r\n?>\r\n==\r\n<div class=\"container\">\r\n    <h1>OKi 123 777</h1>\r\n    <p>A paragraph</p>\r\n</div>\r\n\r\n<form action=\"{{ \'search\' | page }}\" method=\"get\">\r\n  <input name=\"q\" type=\"text\" placeholder=\"What are you looking for?\" autocomplete=\"off\">\r\n  <button type=\"submit\">Search</button>\r\n</form>\r\n\r\n<p id=\"testlihp\">Ok 1234</p>\r\n\r\n<ul class=\"movie-list\">\r\n  {% for movie in movies %}\r\n  <li class=\"ui segment stacked\">\r\n    {# Use spaceless tag to remove spaces inside the A tag. #}\r\n    <h3>\r\n      {% spaceless %}\r\n\r\n      <a href=\"movies/movie/{{movie.slug}}\">{{ movie.name }}</a> - {{ movie.year }}\r\n\r\n      {% endspaceless %}\r\n    </h3>\r\n\r\n    {{html_limit(movie.description,150)|raw}}\r\n\r\n  </li>\r\n  {% else %}\r\n  <li class=\"no-data\">No Movies found</li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 3\r\nsortOrder = \"name desc\"\r\n\r\n[siteSearchInclude]\r\n==\r\n<?php\r\nuse Grcote7\\Movies\\Models\\Movie;\r\nfunction onStart(){\r\n  $this[\'movies\'] = Movie::orderBy(\'year\', \'desc\')->take(2)->get();\r\n$this->addCss(\'assets/sass/homepage.scss\');\r\n$this->addJs(\'assets/js/homepage.js\');\r\n}\r\n?>\r\n==\r\n<div class=\"container\">\r\n    <h1>OKi 123 777</h1>\r\n    <p>A paragraph</p>\r\n</div>\r\n\r\n<form action=\"{{ \'search\' | page }}\" method=\"get\">\r\n  <input name=\"q\" type=\"text\" placeholder=\"What are you looking for?\" autocomplete=\"off\">\r\n  <button type=\"submit\">Search</button>\r\n</form>\r\n\r\n<p id=\"testlihp\">Ok 1234</p>\r\n\r\n<ul class=\"movie-list\">\r\n  {% for movie in movies %}\r\n  <li class=\"ui segment stacked\">\r\n    {# Use spaceless tag to remove spaces inside the A tag. #}\r\n    <h3>\r\n      {% spaceless %}\r\n\r\n      <a href=\"movies/movie/{{movie.slug}}\">{{ movie.name }}</a> - {{ movie.year }}\r\n\r\n      {% endspaceless %}\r\n    </h3>\r\n\r\n    {{html_limit(movie.description,150)|raw}}\r\n\r\n  </li>\r\n  {% else %}\r\n  <li class=\"no-data\">No Movies found</li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 1, '2018-07-05 15:17:46', '2018-07-05 15:17:46'),
(147, 'update', 'olympos', 'pages/homepage.htm', 'pages/homepage.htm', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 3\r\nsortOrder = \"lastname asc\"\r\n\r\n[siteSearchInclude]\r\n==\r\n<?php\r\nuse Grcote7\\Movies\\Models\\Movie;\r\nfunction onStart(){\r\n  $this[\'movies\'] = Movie::orderBy(\'year\', \'desc\')->take(2)->get();\r\n$this->addCss(\'assets/sass/homepage.scss\');\r\n$this->addJs(\'assets/js/homepage.js\');\r\n}\r\n?>\r\n==\r\n<div class=\"container\">\r\n    <h1>OKi 123 777</h1>\r\n    <p>A paragraph</p>\r\n</div>\r\n\r\n<form action=\"{{ \'search\' | page }}\" method=\"get\">\r\n  <input name=\"q\" type=\"text\" placeholder=\"What are you looking for?\" autocomplete=\"off\">\r\n  <button type=\"submit\">Search</button>\r\n</form>\r\n\r\n<p id=\"testlihp\">Ok 1234</p>\r\n\r\n<ul class=\"movie-list\">\r\n  {% for movie in movies %}\r\n  <li class=\"ui segment stacked\">\r\n    {# Use spaceless tag to remove spaces inside the A tag. #}\r\n    <h3>\r\n      {% spaceless %}\r\n\r\n      <a href=\"movies/movie/{{movie.slug}}\">{{ movie.name }}</a> - {{ movie.year }}\r\n\r\n      {% endspaceless %}\r\n    </h3>\r\n\r\n    {{html_limit(movie.description,150)|raw}}\r\n\r\n  </li>\r\n  {% else %}\r\n  <li class=\"no-data\">No Movies found</li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 3\r\nsortOrder = \"lastname desc\"\r\n\r\n[siteSearchInclude]\r\n==\r\n<?php\r\nuse Grcote7\\Movies\\Models\\Movie;\r\nfunction onStart(){\r\n  $this[\'movies\'] = Movie::orderBy(\'year\', \'desc\')->take(2)->get();\r\n$this->addCss(\'assets/sass/homepage.scss\');\r\n$this->addJs(\'assets/js/homepage.js\');\r\n}\r\n?>\r\n==\r\n<div class=\"container\">\r\n    <h1>OKi 123 777</h1>\r\n    <p>A paragraph</p>\r\n</div>\r\n\r\n<form action=\"{{ \'search\' | page }}\" method=\"get\">\r\n  <input name=\"q\" type=\"text\" placeholder=\"What are you looking for?\" autocomplete=\"off\">\r\n  <button type=\"submit\">Search</button>\r\n</form>\r\n\r\n<p id=\"testlihp\">Ok 1234</p>\r\n\r\n<ul class=\"movie-list\">\r\n  {% for movie in movies %}\r\n  <li class=\"ui segment stacked\">\r\n    {# Use spaceless tag to remove spaces inside the A tag. #}\r\n    <h3>\r\n      {% spaceless %}\r\n\r\n      <a href=\"movies/movie/{{movie.slug}}\">{{ movie.name }}</a> - {{ movie.year }}\r\n\r\n      {% endspaceless %}\r\n    </h3>\r\n\r\n    {{html_limit(movie.description,150)|raw}}\r\n\r\n  </li>\r\n  {% else %}\r\n  <li class=\"no-data\">No Movies found</li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 1, '2018-07-05 15:18:08', '2018-07-05 15:18:08'),
(148, 'update', 'olympos', 'pages/homepage.htm', 'pages/homepage.htm', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 3\r\nsortOrder = \"name desc\"\r\n\r\n[siteSearchInclude]\r\n==\r\n<?php\r\nuse Grcote7\\Movies\\Models\\Movie;\r\nfunction onStart(){\r\n  $this[\'movies\'] = Movie::orderBy(\'year\', \'desc\')->take(2)->get();\r\n$this->addCss(\'assets/sass/homepage.scss\');\r\n$this->addJs(\'assets/js/homepage.js\');\r\n}\r\n?>\r\n==\r\n<div class=\"container\">\r\n    <h1>OKi 123 777</h1>\r\n    <p>A paragraph</p>\r\n</div>\r\n\r\n<form action=\"{{ \'search\' | page }}\" method=\"get\">\r\n  <input name=\"q\" type=\"text\" placeholder=\"What are you looking for?\" autocomplete=\"off\">\r\n  <button type=\"submit\">Search</button>\r\n</form>\r\n\r\n<p id=\"testlihp\">Ok 1234</p>\r\n\r\n<ul class=\"movie-list\">\r\n  {% for movie in movies %}\r\n  <li class=\"ui segment stacked\">\r\n    {# Use spaceless tag to remove spaces inside the A tag. #}\r\n    <h3>\r\n      {% spaceless %}\r\n\r\n      <a href=\"movies/movie/{{movie.slug}}\">{{ movie.name }}</a> - {{ movie.year }}\r\n\r\n      {% endspaceless %}\r\n    </h3>\r\n\r\n    {{html_limit(movie.description,150)|raw}}\r\n\r\n  </li>\r\n  {% else %}\r\n  <li class=\"no-data\">No Movies found</li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 3\r\nsortOrder = \"lastname asc\"\r\n\r\n[siteSearchInclude]\r\n==\r\n<?php\r\nuse Grcote7\\Movies\\Models\\Movie;\r\nfunction onStart(){\r\n  $this[\'movies\'] = Movie::orderBy(\'year\', \'desc\')->take(2)->get();\r\n$this->addCss(\'assets/sass/homepage.scss\');\r\n$this->addJs(\'assets/js/homepage.js\');\r\n}\r\n?>\r\n==\r\n<div class=\"container\">\r\n    <h1>OKi 123 777</h1>\r\n    <p>A paragraph</p>\r\n</div>\r\n\r\n<form action=\"{{ \'search\' | page }}\" method=\"get\">\r\n  <input name=\"q\" type=\"text\" placeholder=\"What are you looking for?\" autocomplete=\"off\">\r\n  <button type=\"submit\">Search</button>\r\n</form>\r\n\r\n<p id=\"testlihp\">Ok 1234</p>\r\n\r\n<ul class=\"movie-list\">\r\n  {% for movie in movies %}\r\n  <li class=\"ui segment stacked\">\r\n    {# Use spaceless tag to remove spaces inside the A tag. #}\r\n    <h3>\r\n      {% spaceless %}\r\n\r\n      <a href=\"movies/movie/{{movie.slug}}\">{{ movie.name }}</a> - {{ movie.year }}\r\n\r\n      {% endspaceless %}\r\n    </h3>\r\n\r\n    {{html_limit(movie.description,150)|raw}}\r\n\r\n  </li>\r\n  {% else %}\r\n  <li class=\"no-data\">No Movies found</li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 1, '2018-07-05 15:18:23', '2018-07-05 15:18:23'),
(149, 'update', 'olympos', 'pages/homepage.htm', 'pages/homepage.htm', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 3\r\nsortOrder = \"name asc\"\r\n\r\n[siteSearchInclude]\r\n==\r\n<?php\r\nuse Grcote7\\Movies\\Models\\Movie;\r\nfunction onStart(){\r\n  $this[\'movies\'] = Movie::orderBy(\'year\', \'desc\')->take(2)->get();\r\n$this->addCss(\'assets/sass/homepage.scss\');\r\n$this->addJs(\'assets/js/homepage.js\');\r\n}\r\n?>\r\n==\r\n<div class=\"container\">\r\n    <h1>OKi 123 777</h1>\r\n    <p>A paragraph</p>\r\n</div>\r\n\r\n<form action=\"{{ \'search\' | page }}\" method=\"get\">\r\n  <input name=\"q\" type=\"text\" placeholder=\"What are you looking for?\" autocomplete=\"off\">\r\n  <button type=\"submit\">Search</button>\r\n</form>\r\n\r\n<p id=\"testlihp\">Ok 1234</p>\r\n\r\n<ul class=\"movie-list\">\r\n  {% for movie in movies %}\r\n  <li class=\"ui segment stacked\">\r\n    {# Use spaceless tag to remove spaces inside the A tag. #}\r\n    <h3>\r\n      {% spaceless %}\r\n\r\n      <a href=\"movies/movie/{{movie.slug}}\">{{ movie.name }}</a> - {{ movie.year }}\r\n\r\n      {% endspaceless %}\r\n    </h3>\r\n\r\n    {{html_limit(movie.description,150)|raw}}\r\n\r\n  </li>\r\n  {% else %}\r\n  <li class=\"no-data\">No Movies found</li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 3\r\nsortOrder = \"name desc\"\r\n\r\n[siteSearchInclude]\r\n==\r\n<?php\r\nuse Grcote7\\Movies\\Models\\Movie;\r\nfunction onStart(){\r\n  $this[\'movies\'] = Movie::orderBy(\'year\', \'desc\')->take(2)->get();\r\n$this->addCss(\'assets/sass/homepage.scss\');\r\n$this->addJs(\'assets/js/homepage.js\');\r\n}\r\n?>\r\n==\r\n<div class=\"container\">\r\n    <h1>OKi 123 777</h1>\r\n    <p>A paragraph</p>\r\n</div>\r\n\r\n<form action=\"{{ \'search\' | page }}\" method=\"get\">\r\n  <input name=\"q\" type=\"text\" placeholder=\"What are you looking for?\" autocomplete=\"off\">\r\n  <button type=\"submit\">Search</button>\r\n</form>\r\n\r\n<p id=\"testlihp\">Ok 1234</p>\r\n\r\n<ul class=\"movie-list\">\r\n  {% for movie in movies %}\r\n  <li class=\"ui segment stacked\">\r\n    {# Use spaceless tag to remove spaces inside the A tag. #}\r\n    <h3>\r\n      {% spaceless %}\r\n\r\n      <a href=\"movies/movie/{{movie.slug}}\">{{ movie.name }}</a> - {{ movie.year }}\r\n\r\n      {% endspaceless %}\r\n    </h3>\r\n\r\n    {{html_limit(movie.description,150)|raw}}\r\n\r\n  </li>\r\n  {% else %}\r\n  <li class=\"no-data\">No Movies found</li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 1, '2018-07-05 15:20:12', '2018-07-05 15:20:12'),
(150, 'update', 'olympos', 'pages/homepage.htm', 'pages/homepage.htm', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 3\r\nsortOrder = \"name desc\"\r\n\r\n[siteSearchInclude]\r\n==\r\n<?php\r\nuse Grcote7\\Movies\\Models\\Movie;\r\nfunction onStart(){\r\n  $this[\'movies\'] = Movie::orderBy(\'year\', \'desc\')->take(2)->get();\r\n$this->addCss(\'assets/sass/homepage.scss\');\r\n$this->addJs(\'assets/js/homepage.js\');\r\n}\r\n?>\r\n==\r\n<div class=\"container\">\r\n    <h1>OKi 123 777</h1>\r\n    <p>A paragraph</p>\r\n</div>\r\n\r\n<form action=\"{{ \'search\' | page }}\" method=\"get\">\r\n  <input name=\"q\" type=\"text\" placeholder=\"What are you looking for?\" autocomplete=\"off\">\r\n  <button type=\"submit\">Search</button>\r\n</form>\r\n\r\n<p id=\"testlihp\">Ok 1234</p>\r\n\r\n<ul class=\"movie-list\">\r\n  {% for movie in movies %}\r\n  <li class=\"ui segment stacked\">\r\n    {# Use spaceless tag to remove spaces inside the A tag. #}\r\n    <h3>\r\n      {% spaceless %}\r\n\r\n      <a href=\"movies/movie/{{movie.slug}}\">{{ movie.name }}</a> - {{ movie.year }}\r\n\r\n      {% endspaceless %}\r\n    </h3>\r\n\r\n    {{html_limit(movie.description,150)|raw}}\r\n\r\n  </li>\r\n  {% else %}\r\n  <li class=\"no-data\">No Movies found</li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 3\r\nsortOrder = \"name asc\"\r\n\r\n[siteSearchInclude]\r\n==\r\n<?php\r\nuse Grcote7\\Movies\\Models\\Movie;\r\nfunction onStart(){\r\n  $this[\'movies\'] = Movie::orderBy(\'year\', \'desc\')->take(2)->get();\r\n$this->addCss(\'assets/sass/homepage.scss\');\r\n$this->addJs(\'assets/js/homepage.js\');\r\n}\r\n?>\r\n==\r\n<div class=\"container\">\r\n    <h1>OKi 123 777</h1>\r\n    <p>A paragraph</p>\r\n</div>\r\n\r\n<form action=\"{{ \'search\' | page }}\" method=\"get\">\r\n  <input name=\"q\" type=\"text\" placeholder=\"What are you looking for?\" autocomplete=\"off\">\r\n  <button type=\"submit\">Search</button>\r\n</form>\r\n\r\n<p id=\"testlihp\">Ok 1234</p>\r\n\r\n<ul class=\"movie-list\">\r\n  {% for movie in movies %}\r\n  <li class=\"ui segment stacked\">\r\n    {# Use spaceless tag to remove spaces inside the A tag. #}\r\n    <h3>\r\n      {% spaceless %}\r\n\r\n      <a href=\"movies/movie/{{movie.slug}}\">{{ movie.name }}</a> - {{ movie.year }}\r\n\r\n      {% endspaceless %}\r\n    </h3>\r\n\r\n    {{html_limit(movie.description,150)|raw}}\r\n\r\n  </li>\r\n  {% else %}\r\n  <li class=\"no-data\">No Movies found</li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 1, '2018-07-05 15:20:43', '2018-07-05 15:20:43'),
(151, 'update', 'olympos', 'pages/homepage.htm', 'pages/homepage.htm', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 3\r\nsortOrder = \"name asc\"\r\n\r\n[siteSearchInclude]\r\n==\r\n<?php\r\nuse Grcote7\\Movies\\Models\\Movie;\r\nfunction onStart(){\r\n  $this[\'movies\'] = Movie::orderBy(\'year\', \'desc\')->take(2)->get();\r\n$this->addCss(\'assets/sass/homepage.scss\');\r\n$this->addJs(\'assets/js/homepage.js\');\r\n}\r\n?>\r\n==\r\n<div class=\"container\">\r\n    <h1>OKi 123 777</h1>\r\n    <p>A paragraph</p>\r\n</div>\r\n\r\n<form action=\"{{ \'search\' | page }}\" method=\"get\">\r\n  <input name=\"q\" type=\"text\" placeholder=\"What are you looking for?\" autocomplete=\"off\">\r\n  <button type=\"submit\">Search</button>\r\n</form>\r\n\r\n<p id=\"testlihp\">Ok 1234</p>\r\n\r\n<ul class=\"movie-list\">\r\n  {% for movie in movies %}\r\n  <li class=\"ui segment stacked\">\r\n    {# Use spaceless tag to remove spaces inside the A tag. #}\r\n    <h3>\r\n      {% spaceless %}\r\n\r\n      <a href=\"movies/movie/{{movie.slug}}\">{{ movie.name }}</a> - {{ movie.year }}\r\n\r\n      {% endspaceless %}\r\n    </h3>\r\n\r\n    {{html_limit(movie.description,150)|raw}}\r\n\r\n  </li>\r\n  {% else %}\r\n  <li class=\"no-data\">No Movies found</li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 3\r\nsortOrder = \"name desc\"\r\n\r\n[siteSearchInclude]\r\n==\r\n<?php\r\nuse Grcote7\\Movies\\Models\\Movie;\r\nfunction onStart(){\r\n  $this[\'movies\'] = Movie::orderBy(\'year\', \'desc\')->take(2)->get();\r\n$this->addCss(\'assets/sass/homepage.scss\');\r\n$this->addJs(\'assets/js/homepage.js\');\r\n}\r\n?>\r\n==\r\n<div class=\"container\">\r\n    <h1>OKi 123 777</h1>\r\n    <p>A paragraph</p>\r\n</div>\r\n\r\n<form action=\"{{ \'search\' | page }}\" method=\"get\">\r\n  <input name=\"q\" type=\"text\" placeholder=\"What are you looking for?\" autocomplete=\"off\">\r\n  <button type=\"submit\">Search</button>\r\n</form>\r\n\r\n<p id=\"testlihp\">Ok 1234</p>\r\n\r\n<ul class=\"movie-list\">\r\n  {% for movie in movies %}\r\n  <li class=\"ui segment stacked\">\r\n    {# Use spaceless tag to remove spaces inside the A tag. #}\r\n    <h3>\r\n      {% spaceless %}\r\n\r\n      <a href=\"movies/movie/{{movie.slug}}\">{{ movie.name }}</a> - {{ movie.year }}\r\n\r\n      {% endspaceless %}\r\n    </h3>\r\n\r\n    {{html_limit(movie.description,150)|raw}}\r\n\r\n  </li>\r\n  {% else %}\r\n  <li class=\"no-data\">No Movies found</li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 1, '2018-07-05 15:23:43', '2018-07-05 15:23:43'),
(152, 'update', 'olympos', 'pages/homepage.htm', 'pages/homepage.htm', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 3\r\nsortOrder = \"lastname asc\"\r\n\r\n[siteSearchInclude]\r\n==\r\n<?php\r\nuse Grcote7\\Movies\\Models\\Movie;\r\nfunction onStart(){\r\n  $this[\'movies\'] = Movie::orderBy(\'year\', \'desc\')->take(2)->get();\r\n$this->addCss(\'assets/sass/homepage.scss\');\r\n$this->addJs(\'assets/js/homepage.js\');\r\n}\r\n?>\r\n==\r\n<div class=\"container\">\r\n    <h1>OKi 123 777</h1>\r\n    <p>A paragraph</p>\r\n</div>\r\n\r\n<form action=\"{{ \'search\' | page }}\" method=\"get\">\r\n  <input name=\"q\" type=\"text\" placeholder=\"What are you looking for?\" autocomplete=\"off\">\r\n  <button type=\"submit\">Search</button>\r\n</form>\r\n\r\n<p id=\"testlihp\">Ok 1234</p>\r\n\r\n<ul class=\"movie-list\">\r\n  {% for movie in movies %}\r\n  <li class=\"ui segment stacked\">\r\n    {# Use spaceless tag to remove spaces inside the A tag. #}\r\n    <h3>\r\n      {% spaceless %}\r\n\r\n      <a href=\"movies/movie/{{movie.slug}}\">{{ movie.name }}</a> - {{ movie.year }}\r\n\r\n      {% endspaceless %}\r\n    </h3>\r\n\r\n    {{html_limit(movie.description,150)|raw}}\r\n\r\n  </li>\r\n  {% else %}\r\n  <li class=\"no-data\">No Movies found</li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 3\r\nsortOrder = \"name asc\"\r\n\r\n[siteSearchInclude]\r\n==\r\n<?php\r\nuse Grcote7\\Movies\\Models\\Movie;\r\nfunction onStart(){\r\n  $this[\'movies\'] = Movie::orderBy(\'year\', \'desc\')->take(2)->get();\r\n$this->addCss(\'assets/sass/homepage.scss\');\r\n$this->addJs(\'assets/js/homepage.js\');\r\n}\r\n?>\r\n==\r\n<div class=\"container\">\r\n    <h1>OKi 123 777</h1>\r\n    <p>A paragraph</p>\r\n</div>\r\n\r\n<form action=\"{{ \'search\' | page }}\" method=\"get\">\r\n  <input name=\"q\" type=\"text\" placeholder=\"What are you looking for?\" autocomplete=\"off\">\r\n  <button type=\"submit\">Search</button>\r\n</form>\r\n\r\n<p id=\"testlihp\">Ok 1234</p>\r\n\r\n<ul class=\"movie-list\">\r\n  {% for movie in movies %}\r\n  <li class=\"ui segment stacked\">\r\n    {# Use spaceless tag to remove spaces inside the A tag. #}\r\n    <h3>\r\n      {% spaceless %}\r\n\r\n      <a href=\"movies/movie/{{movie.slug}}\">{{ movie.name }}</a> - {{ movie.year }}\r\n\r\n      {% endspaceless %}\r\n    </h3>\r\n\r\n    {{html_limit(movie.description,150)|raw}}\r\n\r\n  </li>\r\n  {% else %}\r\n  <li class=\"no-data\">No Movies found</li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 1, '2018-07-05 15:24:00', '2018-07-05 15:24:00'),
(153, 'update', 'olympos', 'pages/homepage.htm', 'pages/homepage.htm', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 3\r\nsortOrder = \"lastname desc\"\r\n\r\n[siteSearchInclude]\r\n==\r\n<?php\r\nuse Grcote7\\Movies\\Models\\Movie;\r\nfunction onStart(){\r\n  $this[\'movies\'] = Movie::orderBy(\'year\', \'desc\')->take(2)->get();\r\n$this->addCss(\'assets/sass/homepage.scss\');\r\n$this->addJs(\'assets/js/homepage.js\');\r\n}\r\n?>\r\n==\r\n<div class=\"container\">\r\n    <h1>OKi 123 777</h1>\r\n    <p>A paragraph</p>\r\n</div>\r\n\r\n<form action=\"{{ \'search\' | page }}\" method=\"get\">\r\n  <input name=\"q\" type=\"text\" placeholder=\"What are you looking for?\" autocomplete=\"off\">\r\n  <button type=\"submit\">Search</button>\r\n</form>\r\n\r\n<p id=\"testlihp\">Ok 1234</p>\r\n\r\n<ul class=\"movie-list\">\r\n  {% for movie in movies %}\r\n  <li class=\"ui segment stacked\">\r\n    {# Use spaceless tag to remove spaces inside the A tag. #}\r\n    <h3>\r\n      {% spaceless %}\r\n\r\n      <a href=\"movies/movie/{{movie.slug}}\">{{ movie.name }}</a> - {{ movie.year }}\r\n\r\n      {% endspaceless %}\r\n    </h3>\r\n\r\n    {{html_limit(movie.description,150)|raw}}\r\n\r\n  </li>\r\n  {% else %}\r\n  <li class=\"no-data\">No Movies found</li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 3\r\nsortOrder = \"lastname asc\"\r\n\r\n[siteSearchInclude]\r\n==\r\n<?php\r\nuse Grcote7\\Movies\\Models\\Movie;\r\nfunction onStart(){\r\n  $this[\'movies\'] = Movie::orderBy(\'year\', \'desc\')->take(2)->get();\r\n$this->addCss(\'assets/sass/homepage.scss\');\r\n$this->addJs(\'assets/js/homepage.js\');\r\n}\r\n?>\r\n==\r\n<div class=\"container\">\r\n    <h1>OKi 123 777</h1>\r\n    <p>A paragraph</p>\r\n</div>\r\n\r\n<form action=\"{{ \'search\' | page }}\" method=\"get\">\r\n  <input name=\"q\" type=\"text\" placeholder=\"What are you looking for?\" autocomplete=\"off\">\r\n  <button type=\"submit\">Search</button>\r\n</form>\r\n\r\n<p id=\"testlihp\">Ok 1234</p>\r\n\r\n<ul class=\"movie-list\">\r\n  {% for movie in movies %}\r\n  <li class=\"ui segment stacked\">\r\n    {# Use spaceless tag to remove spaces inside the A tag. #}\r\n    <h3>\r\n      {% spaceless %}\r\n\r\n      <a href=\"movies/movie/{{movie.slug}}\">{{ movie.name }}</a> - {{ movie.year }}\r\n\r\n      {% endspaceless %}\r\n    </h3>\r\n\r\n    {{html_limit(movie.description,150)|raw}}\r\n\r\n  </li>\r\n  {% else %}\r\n  <li class=\"no-data\">No Movies found</li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 1, '2018-07-05 15:24:16', '2018-07-05 15:24:16');
INSERT INTO `cms_theme_logs` (`id`, `type`, `theme`, `template`, `old_template`, `content`, `old_content`, `user_id`, `created_at`, `updated_at`) VALUES
(154, 'update', 'olympos', 'pages/homepage.htm', 'pages/homepage.htm', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 3\r\nsortOrder = \"name desc\"\r\n\r\n[siteSearchInclude]\r\n==\r\n<?php\r\nuse Grcote7\\Movies\\Models\\Movie;\r\nfunction onStart(){\r\n  $this[\'movies\'] = Movie::orderBy(\'year\', \'desc\')->take(2)->get();\r\n$this->addCss(\'assets/sass/homepage.scss\');\r\n$this->addJs(\'assets/js/homepage.js\');\r\n}\r\n?>\r\n==\r\n<div class=\"container\">\r\n    <h1>OKi 123 777</h1>\r\n    <p>A paragraph</p>\r\n</div>\r\n\r\n<form action=\"{{ \'search\' | page }}\" method=\"get\">\r\n  <input name=\"q\" type=\"text\" placeholder=\"What are you looking for?\" autocomplete=\"off\">\r\n  <button type=\"submit\">Search</button>\r\n</form>\r\n\r\n<p id=\"testlihp\">Ok 1234</p>\r\n\r\n<ul class=\"movie-list\">\r\n  {% for movie in movies %}\r\n  <li class=\"ui segment stacked\">\r\n    {# Use spaceless tag to remove spaces inside the A tag. #}\r\n    <h3>\r\n      {% spaceless %}\r\n\r\n      <a href=\"movies/movie/{{movie.slug}}\">{{ movie.name }}</a> - {{ movie.year }}\r\n\r\n      {% endspaceless %}\r\n    </h3>\r\n\r\n    {{html_limit(movie.description,150)|raw}}\r\n\r\n  </li>\r\n  {% else %}\r\n  <li class=\"no-data\">No Movies found</li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 3\r\nsortOrder = \"lastname desc\"\r\n\r\n[siteSearchInclude]\r\n==\r\n<?php\r\nuse Grcote7\\Movies\\Models\\Movie;\r\nfunction onStart(){\r\n  $this[\'movies\'] = Movie::orderBy(\'year\', \'desc\')->take(2)->get();\r\n$this->addCss(\'assets/sass/homepage.scss\');\r\n$this->addJs(\'assets/js/homepage.js\');\r\n}\r\n?>\r\n==\r\n<div class=\"container\">\r\n    <h1>OKi 123 777</h1>\r\n    <p>A paragraph</p>\r\n</div>\r\n\r\n<form action=\"{{ \'search\' | page }}\" method=\"get\">\r\n  <input name=\"q\" type=\"text\" placeholder=\"What are you looking for?\" autocomplete=\"off\">\r\n  <button type=\"submit\">Search</button>\r\n</form>\r\n\r\n<p id=\"testlihp\">Ok 1234</p>\r\n\r\n<ul class=\"movie-list\">\r\n  {% for movie in movies %}\r\n  <li class=\"ui segment stacked\">\r\n    {# Use spaceless tag to remove spaces inside the A tag. #}\r\n    <h3>\r\n      {% spaceless %}\r\n\r\n      <a href=\"movies/movie/{{movie.slug}}\">{{ movie.name }}</a> - {{ movie.year }}\r\n\r\n      {% endspaceless %}\r\n    </h3>\r\n\r\n    {{html_limit(movie.description,150)|raw}}\r\n\r\n  </li>\r\n  {% else %}\r\n  <li class=\"no-data\">No Movies found</li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 1, '2018-07-05 15:25:16', '2018-07-05 15:25:16'),
(155, 'update', 'olympos', 'pages/homepage.htm', 'pages/homepage.htm', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 3\r\nsortOrder = \"name asc\"\r\n\r\n[siteSearchInclude]\r\n==\r\n<?php\r\nuse Grcote7\\Movies\\Models\\Movie;\r\nfunction onStart(){\r\n  $this[\'movies\'] = Movie::orderBy(\'year\', \'desc\')->take(2)->get();\r\n$this->addCss(\'assets/sass/homepage.scss\');\r\n$this->addJs(\'assets/js/homepage.js\');\r\n}\r\n?>\r\n==\r\n<div class=\"container\">\r\n    <h1>OKi 123 777</h1>\r\n    <p>A paragraph</p>\r\n</div>\r\n\r\n<form action=\"{{ \'search\' | page }}\" method=\"get\">\r\n  <input name=\"q\" type=\"text\" placeholder=\"What are you looking for?\" autocomplete=\"off\">\r\n  <button type=\"submit\">Search</button>\r\n</form>\r\n\r\n<p id=\"testlihp\">Ok 1234</p>\r\n\r\n<ul class=\"movie-list\">\r\n  {% for movie in movies %}\r\n  <li class=\"ui segment stacked\">\r\n    {# Use spaceless tag to remove spaces inside the A tag. #}\r\n    <h3>\r\n      {% spaceless %}\r\n\r\n      <a href=\"movies/movie/{{movie.slug}}\">{{ movie.name }}</a> - {{ movie.year }}\r\n\r\n      {% endspaceless %}\r\n    </h3>\r\n\r\n    {{html_limit(movie.description,150)|raw}}\r\n\r\n  </li>\r\n  {% else %}\r\n  <li class=\"no-data\">No Movies found</li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 3\r\nsortOrder = \"name desc\"\r\n\r\n[siteSearchInclude]\r\n==\r\n<?php\r\nuse Grcote7\\Movies\\Models\\Movie;\r\nfunction onStart(){\r\n  $this[\'movies\'] = Movie::orderBy(\'year\', \'desc\')->take(2)->get();\r\n$this->addCss(\'assets/sass/homepage.scss\');\r\n$this->addJs(\'assets/js/homepage.js\');\r\n}\r\n?>\r\n==\r\n<div class=\"container\">\r\n    <h1>OKi 123 777</h1>\r\n    <p>A paragraph</p>\r\n</div>\r\n\r\n<form action=\"{{ \'search\' | page }}\" method=\"get\">\r\n  <input name=\"q\" type=\"text\" placeholder=\"What are you looking for?\" autocomplete=\"off\">\r\n  <button type=\"submit\">Search</button>\r\n</form>\r\n\r\n<p id=\"testlihp\">Ok 1234</p>\r\n\r\n<ul class=\"movie-list\">\r\n  {% for movie in movies %}\r\n  <li class=\"ui segment stacked\">\r\n    {# Use spaceless tag to remove spaces inside the A tag. #}\r\n    <h3>\r\n      {% spaceless %}\r\n\r\n      <a href=\"movies/movie/{{movie.slug}}\">{{ movie.name }}</a> - {{ movie.year }}\r\n\r\n      {% endspaceless %}\r\n    </h3>\r\n\r\n    {{html_limit(movie.description,150)|raw}}\r\n\r\n  </li>\r\n  {% else %}\r\n  <li class=\"no-data\">No Movies found</li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 1, '2018-07-05 15:31:40', '2018-07-05 15:31:40'),
(156, 'update', 'olympos', 'pages/homepage.htm', 'pages/homepage.htm', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 3\r\nsortOrder = \"lastname asc\"\r\n\r\n[siteSearchInclude]\r\n==\r\n<?php\r\nuse Grcote7\\Movies\\Models\\Movie;\r\nfunction onStart(){\r\n  $this[\'movies\'] = Movie::orderBy(\'year\', \'desc\')->take(2)->get();\r\n$this->addCss(\'assets/sass/homepage.scss\');\r\n$this->addJs(\'assets/js/homepage.js\');\r\n}\r\n?>\r\n==\r\n<div class=\"container\">\r\n    <h1>OKi 123 777</h1>\r\n    <p>A paragraph</p>\r\n</div>\r\n\r\n<form action=\"{{ \'search\' | page }}\" method=\"get\">\r\n  <input name=\"q\" type=\"text\" placeholder=\"What are you looking for?\" autocomplete=\"off\">\r\n  <button type=\"submit\">Search</button>\r\n</form>\r\n\r\n<p id=\"testlihp\">Ok 1234</p>\r\n\r\n<ul class=\"movie-list\">\r\n  {% for movie in movies %}\r\n  <li class=\"ui segment stacked\">\r\n    {# Use spaceless tag to remove spaces inside the A tag. #}\r\n    <h3>\r\n      {% spaceless %}\r\n\r\n      <a href=\"movies/movie/{{movie.slug}}\">{{ movie.name }}</a> - {{ movie.year }}\r\n\r\n      {% endspaceless %}\r\n    </h3>\r\n\r\n    {{html_limit(movie.description,150)|raw}}\r\n\r\n  </li>\r\n  {% else %}\r\n  <li class=\"no-data\">No Movies found</li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 3\r\nsortOrder = \"name asc\"\r\n\r\n[siteSearchInclude]\r\n==\r\n<?php\r\nuse Grcote7\\Movies\\Models\\Movie;\r\nfunction onStart(){\r\n  $this[\'movies\'] = Movie::orderBy(\'year\', \'desc\')->take(2)->get();\r\n$this->addCss(\'assets/sass/homepage.scss\');\r\n$this->addJs(\'assets/js/homepage.js\');\r\n}\r\n?>\r\n==\r\n<div class=\"container\">\r\n    <h1>OKi 123 777</h1>\r\n    <p>A paragraph</p>\r\n</div>\r\n\r\n<form action=\"{{ \'search\' | page }}\" method=\"get\">\r\n  <input name=\"q\" type=\"text\" placeholder=\"What are you looking for?\" autocomplete=\"off\">\r\n  <button type=\"submit\">Search</button>\r\n</form>\r\n\r\n<p id=\"testlihp\">Ok 1234</p>\r\n\r\n<ul class=\"movie-list\">\r\n  {% for movie in movies %}\r\n  <li class=\"ui segment stacked\">\r\n    {# Use spaceless tag to remove spaces inside the A tag. #}\r\n    <h3>\r\n      {% spaceless %}\r\n\r\n      <a href=\"movies/movie/{{movie.slug}}\">{{ movie.name }}</a> - {{ movie.year }}\r\n\r\n      {% endspaceless %}\r\n    </h3>\r\n\r\n    {{html_limit(movie.description,150)|raw}}\r\n\r\n  </li>\r\n  {% else %}\r\n  <li class=\"no-data\">No Movies found</li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 1, '2018-07-05 15:33:16', '2018-07-05 15:33:16'),
(157, 'update', 'olympos', 'pages/add-actors.htm', 'pages/add-actors.htm', 'title = \"Add actors\"\r\nurl = \"/add-actors\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actorform]\r\n\r\n[session]\r\nsecurity = \"all\"\r\n==\r\n<h2>Add an actor</h2>\r\n\r\n{% component \'actorform\' %}', 'title = \"Add actors\"\r\nurl = \"/add-actors\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actorform]\r\n==\r\n<h2>Add an actor</h2>\r\n\r\n{% component \'actorform\' %}', 1, '2018-07-07 07:12:50', '2018-07-07 07:12:50'),
(158, 'update', 'olympos', 'pages/add-actors.htm', 'pages/add-actors.htm', 'title = \"Add actors\"\r\nurl = \"/add-actors\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actorform]\r\n\r\n[session]\r\nsecurity = \"user\"\r\n==\r\n<h2>Add an actor</h2>\r\n\r\n{% component \'actorform\' %}', 'title = \"Add actors\"\r\nurl = \"/add-actors\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actorform]\r\n\r\n[session]\r\nsecurity = \"all\"\r\n==\r\n<h2>Add an actor</h2>\r\n\r\n{% component \'actorform\' %}', 1, '2018-07-08 13:12:42', '2018-07-08 13:12:42'),
(159, 'update', 'olympos', 'pages/add-actors.htm', 'pages/add-actors.htm', 'title = \"Add actors\"\r\nurl = \"/add-actors\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actorform]\r\n\r\n[session]\r\nsecurity = \"user\"\r\nredirect = \"login\"\r\n==\r\n<h2>Add an actor</h2>\r\n\r\n{% component \'actorform\' %}', 'title = \"Add actors\"\r\nurl = \"/add-actors\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actorform]\r\n\r\n[session]\r\nsecurity = \"user\"\r\n==\r\n<h2>Add an actor</h2>\r\n\r\n{% component \'actorform\' %}', 1, '2018-07-08 13:13:16', '2018-07-08 13:13:16'),
(160, 'update', 'olympos', 'pages/login.htm', 'pages/login.htm', 'title = \"Login\"\r\nurl = \"/login\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[account]\r\nparamCode = \"code\"\r\nforceSecure = 0\r\n\r\n[sociallogin]\r\n==\r\n{% if not user %}\r\n\r\n<div class=\"row\">\r\n\r\n\r\n{% component \'sociallogin\' %}\r\n\r\n  <div class=\"col-md-6\">\r\n    <h3>Sign in</h3>\r\n    {% partial account ~ \'::signin\' %}\r\n  </div>\r\n\r\n  <div class=\"col-md-6\">\r\n    {% partial account ~ \'::register\' %}\r\n  </div>\r\n\r\n</div>\r\n\r\n{% else %}\r\n\r\n<h2>Hi {{ user.name|ucfirst }} !</h2>\r\n\r\n<div class=\"row\">\r\n\r\n  {% partial account ~ \'::activation_check\' %}\r\n\r\n  {% partial \'user-update\' %}\r\n\r\n  {% partial account ~ \'::deactivate_link\' %}\r\n\r\n</div>\r\n\r\n{% endif %}', 'title = \"Login\"\r\nurl = \"/login\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[account]\r\nparamCode = \"code\"\r\nforceSecure = 0\r\n==\r\n{% if not user %}\r\n\r\n<div class=\"row\">\r\n\r\n  <div class=\"col-md-6\">\r\n    <h3>Sign in</h3>\r\n    {% partial account ~ \'::signin\' %}\r\n  </div>\r\n\r\n  <div class=\"col-md-6\">\r\n    {% partial account ~ \'::register\' %}\r\n  </div>\r\n\r\n</div>\r\n\r\n{% else %}\r\n\r\n<h2>Hi {{ user.name|ucfirst }} !</h2>\r\n\r\n<div class=\"row\">\r\n\r\n  {% partial account ~ \'::activation_check\' %}\r\n\r\n  {% partial \'user-update\' %}\r\n\r\n  {% partial account ~ \'::deactivate_link\' %}\r\n\r\n</div>\r\n\r\n{% endif %}', 1, '2018-07-08 14:00:13', '2018-07-08 14:00:13'),
(161, 'update', 'olympos', 'pages/login.htm', 'pages/login.htm', 'title = \"Login\"\r\nurl = \"/login\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[account]\r\nparamCode = \"code\"\r\nforceSecure = 0\r\n\r\n[sociallogin]\r\n==\r\n{% if not user %}\r\n\r\n<div class=\"row\">\r\n\r\n{% component \'sociallogin\' %}\r\n\r\n  <div class=\"col-md-6\">\r\n    <h3>Sign in</h3>\r\n    {% partial account ~ \'::signin\' %}\r\n  </div>\r\n\r\n  <div class=\"col-md-6\">\r\n    {% partial account ~ \'::register\' %}\r\n  </div>\r\n\r\n</div>\r\n\r\n{% else %}\r\n\r\n<h2>Hi {{ user.name|ucfirst }} !</h2>\r\n\r\n<div class=\"row\">\r\n\r\n  {% partial account ~ \'::activation_check\' %}\r\n\r\n  {% partial \'user-update\' %}\r\n\r\n  {% partial account ~ \'::deactivate_link\' %}\r\n\r\n</div>\r\n\r\n{% endif %}', 'title = \"Login\"\r\nurl = \"/login\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[account]\r\nparamCode = \"code\"\r\nforceSecure = 0\r\n\r\n[sociallogin]\r\n==\r\n{% if not user %}\r\n\r\n<div class=\"row\">\r\n\r\n\r\n{% component \'sociallogin\' %}\r\n\r\n  <div class=\"col-md-6\">\r\n    <h3>Sign in</h3>\r\n    {% partial account ~ \'::signin\' %}\r\n  </div>\r\n\r\n  <div class=\"col-md-6\">\r\n    {% partial account ~ \'::register\' %}\r\n  </div>\r\n\r\n</div>\r\n\r\n{% else %}\r\n\r\n<h2>Hi {{ user.name|ucfirst }} !</h2>\r\n\r\n<div class=\"row\">\r\n\r\n  {% partial account ~ \'::activation_check\' %}\r\n\r\n  {% partial \'user-update\' %}\r\n\r\n  {% partial account ~ \'::deactivate_link\' %}\r\n\r\n</div>\r\n\r\n{% endif %}', 1, '2018-07-08 14:00:17', '2018-07-08 14:00:17'),
(162, 'update', 'olympos', 'pages/login.htm', 'pages/login.htm', 'title = \"Login\"\r\nurl = \"/login\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[account]\r\nparamCode = \"code\"\r\nforceSecure = 0\r\n\r\n[sociallogin]\r\n==\r\n{% if not user %}\r\n\r\n<div class=\"row\">\r\n\r\nfb\r\n{% component \'sociallogin\' %}\r\n\r\n  <div class=\"col-md-6\">\r\n    <h3>Sign in</h3>\r\n    {% partial account ~ \'::signin\' %}\r\n  </div>\r\n\r\n  <div class=\"col-md-6\">\r\n    {% partial account ~ \'::register\' %}\r\n  </div>\r\n\r\n</div>\r\n\r\n{% else %}\r\n\r\n<h2>Hi {{ user.name|ucfirst }} !</h2>\r\n\r\n<div class=\"row\">\r\n\r\n  {% partial account ~ \'::activation_check\' %}\r\n\r\n  {% partial \'user-update\' %}\r\n\r\n  {% partial account ~ \'::deactivate_link\' %}\r\n\r\n</div>\r\n\r\n{% endif %}', 'title = \"Login\"\r\nurl = \"/login\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[account]\r\nparamCode = \"code\"\r\nforceSecure = 0\r\n\r\n[sociallogin]\r\n==\r\n{% if not user %}\r\n\r\n<div class=\"row\">\r\n\r\n{% component \'sociallogin\' %}\r\n\r\n  <div class=\"col-md-6\">\r\n    <h3>Sign in</h3>\r\n    {% partial account ~ \'::signin\' %}\r\n  </div>\r\n\r\n  <div class=\"col-md-6\">\r\n    {% partial account ~ \'::register\' %}\r\n  </div>\r\n\r\n</div>\r\n\r\n{% else %}\r\n\r\n<h2>Hi {{ user.name|ucfirst }} !</h2>\r\n\r\n<div class=\"row\">\r\n\r\n  {% partial account ~ \'::activation_check\' %}\r\n\r\n  {% partial \'user-update\' %}\r\n\r\n  {% partial account ~ \'::deactivate_link\' %}\r\n\r\n</div>\r\n\r\n{% endif %}', 1, '2018-07-08 14:00:47', '2018-07-08 14:00:47'),
(163, 'update', 'olympos', 'pages/login.htm', 'pages/login.htm', 'title = \"Login\"\r\nurl = \"/login\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[account]\r\nparamCode = \"code\"\r\nforceSecure = 0\r\n\r\n[sociallogin]\r\n==\r\n{% if not user %}\r\n\r\n<div class=\"row\">\r\n\r\n  <div class=\"col-md-6\">\r\n    <h3>Sign in</h3>\r\n    \r\nfb\r\n{% component \'sociallogin\' %}\r\n\r\n\r\n    {% partial account ~ \'::signin\' %}\r\n  </div>\r\n\r\n  <div class=\"col-md-6\">\r\n    {% partial account ~ \'::register\' %}\r\n  </div>\r\n\r\n</div>\r\n\r\n{% else %}\r\n\r\n<h2>Hi {{ user.name|ucfirst }} !</h2>\r\n\r\n<div class=\"row\">\r\n\r\n  {% partial account ~ \'::activation_check\' %}\r\n\r\n  {% partial \'user-update\' %}\r\n\r\n  {% partial account ~ \'::deactivate_link\' %}\r\n\r\n</div>\r\n\r\n{% endif %}', 'title = \"Login\"\r\nurl = \"/login\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[account]\r\nparamCode = \"code\"\r\nforceSecure = 0\r\n\r\n[sociallogin]\r\n==\r\n{% if not user %}\r\n\r\n<div class=\"row\">\r\n\r\nfb\r\n{% component \'sociallogin\' %}\r\n\r\n  <div class=\"col-md-6\">\r\n    <h3>Sign in</h3>\r\n    {% partial account ~ \'::signin\' %}\r\n  </div>\r\n\r\n  <div class=\"col-md-6\">\r\n    {% partial account ~ \'::register\' %}\r\n  </div>\r\n\r\n</div>\r\n\r\n{% else %}\r\n\r\n<h2>Hi {{ user.name|ucfirst }} !</h2>\r\n\r\n<div class=\"row\">\r\n\r\n  {% partial account ~ \'::activation_check\' %}\r\n\r\n  {% partial \'user-update\' %}\r\n\r\n  {% partial account ~ \'::deactivate_link\' %}\r\n\r\n</div>\r\n\r\n{% endif %}', 1, '2018-07-08 14:01:13', '2018-07-08 14:01:13'),
(164, 'update', 'olympos', 'pages/login.htm', 'pages/login.htm', 'title = \"Login\"\r\nurl = \"/login\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[account]\r\nparamCode = \"code\"\r\nforceSecure = 0\r\n\r\n[sociallogin]\r\n==\r\n{% if not user %}\r\n\r\n<div class=\"row\">\r\n\r\n  <div class=\"col-md-6\">\r\n    <h3>Sign in</h3>\r\n    \r\nfb\r\n{% for name, link in social_login_links %}\r\n<a href=\"{{ link }}\">{{ name }}</a>\r\n{% endfor %}\r\n{% component \'sociallogin\' %}\r\n\r\n\r\n    {% partial account ~ \'::signin\' %}\r\n  </div>\r\n\r\n  <div class=\"col-md-6\">\r\n    {% partial account ~ \'::register\' %}\r\n  </div>\r\n\r\n</div>\r\n\r\n{% else %}\r\n\r\n<h2>Hi {{ user.name|ucfirst }} !</h2>\r\n\r\n<div class=\"row\">\r\n\r\n  {% partial account ~ \'::activation_check\' %}\r\n\r\n  {% partial \'user-update\' %}\r\n\r\n  {% partial account ~ \'::deactivate_link\' %}\r\n\r\n</div>\r\n\r\n{% endif %}', 'title = \"Login\"\r\nurl = \"/login\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[account]\r\nparamCode = \"code\"\r\nforceSecure = 0\r\n\r\n[sociallogin]\r\n==\r\n{% if not user %}\r\n\r\n<div class=\"row\">\r\n\r\n  <div class=\"col-md-6\">\r\n    <h3>Sign in</h3>\r\n    \r\nfb\r\n{% component \'sociallogin\' %}\r\n\r\n\r\n    {% partial account ~ \'::signin\' %}\r\n  </div>\r\n\r\n  <div class=\"col-md-6\">\r\n    {% partial account ~ \'::register\' %}\r\n  </div>\r\n\r\n</div>\r\n\r\n{% else %}\r\n\r\n<h2>Hi {{ user.name|ucfirst }} !</h2>\r\n\r\n<div class=\"row\">\r\n\r\n  {% partial account ~ \'::activation_check\' %}\r\n\r\n  {% partial \'user-update\' %}\r\n\r\n  {% partial account ~ \'::deactivate_link\' %}\r\n\r\n</div>\r\n\r\n{% endif %}', 1, '2018-07-08 14:06:39', '2018-07-08 14:06:39'),
(165, 'update', 'olympos', 'pages/homepage.htm', 'pages/homepage.htm', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 3\r\nsortOrder = \"lastname asc\"\r\n\r\n[siteSearchInclude]\r\n==\r\n<?php\r\nuse Grcote7\\Movies\\Models\\Movie;\r\nfunction onStart(){\r\n  $this[\'movies\'] = Movie::orderBy(\'year\', \'desc\')->take(2)->get();\r\n$this->addCss(\'assets/sass/homepage.scss\');\r\n$this->addJs(\'assets/js/homepage.js\');\r\n}\r\n?>\r\n==\r\n<div class=\"container\">\r\n  <h1>OKi 123 77</h1>\r\n  <p>A paragraph</p>\r\n</div>\r\n\r\n<form action=\"{{ \'search\' | page }}\" method=\"get\">\r\n  <input name=\"q\" type=\"text\" placeholder=\"What are you looking for?\" autocomplete=\"on\">\r\n  <button type=\"submit\">Search</button>\r\n</form>\r\n\r\n<p id=\"testlihp\">Ok 1234</p>\r\n\r\n<ul class=\"movie-list\">\r\n  {% for movie in movies %}\r\n  <li class=\"ui segment stacked\">\r\n    {# Use spaceless tag to remove spaces inside the A tag. #}\r\n    <h3>\r\n      {% spaceless %}\r\n\r\n      <a href=\"movies/movie/{{movie.slug}}\">{{ movie.name }}</a> - {{ movie.year }}\r\n\r\n      {% endspaceless %}\r\n    </h3>\r\n\r\n    {{html_limit(movie.description,150)|raw}}\r\n\r\n  </li>\r\n  {% else %}\r\n  <li class=\"no-data\">No Movies found</li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 'title = \"Homepage\"\r\nurl = \"/\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[actors]\r\nresults = 3\r\nsortOrder = \"lastname asc\"\r\n\r\n[siteSearchInclude]\r\n==\r\n<?php\r\nuse Grcote7\\Movies\\Models\\Movie;\r\nfunction onStart(){\r\n  $this[\'movies\'] = Movie::orderBy(\'year\', \'desc\')->take(2)->get();\r\n$this->addCss(\'assets/sass/homepage.scss\');\r\n$this->addJs(\'assets/js/homepage.js\');\r\n}\r\n?>\r\n==\r\n<div class=\"container\">\r\n  <h1>OKi 123 77</h1>\r\n  <p>A paragraph</p>\r\n</div>\r\n\r\n<form action=\"{{ \'search\' | page }}\" method=\"get\">\r\n  <input name=\"q\" type=\"text\" placeholder=\"What are you looking for?\" autocomplete=\"off\">\r\n  <button type=\"submit\">Search</button>\r\n</form>\r\n\r\n<p id=\"testlihp\">Ok 1234</p>\r\n\r\n<ul class=\"movie-list\">\r\n  {% for movie in movies %}\r\n  <li class=\"ui segment stacked\">\r\n    {# Use spaceless tag to remove spaces inside the A tag. #}\r\n    <h3>\r\n      {% spaceless %}\r\n\r\n      <a href=\"movies/movie/{{movie.slug}}\">{{ movie.name }}</a> - {{ movie.year }}\r\n\r\n      {% endspaceless %}\r\n    </h3>\r\n\r\n    {{html_limit(movie.description,150)|raw}}\r\n\r\n  </li>\r\n  {% else %}\r\n  <li class=\"no-data\">No Movies found</li>\r\n  {% endfor %}\r\n</ul>\r\n\r\n{% component \'actors\' %}\r\n\r\n<h2>This is our homepage ! Yay !</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam consequatur dolorum facere quos sed! Est incidunt\r\n  laboriosam quia tempore voluptates! Corporis debitis ea earum eveniet incidunt magni nam quia tempore!</p>\r\n<p>Ab aut cum, debitis deserunt dignissimos dolor dolorum error ex excepturi harum id ipsa ipsum laudantium non\r\n  numquamneque.</p>\r\n<p>Blanditiis dolorem doloremque neque obcaecati porro quam repudiandae sint tempore velit? Alias magni praesentium\r\n  reiciendis sapiente. Accusamus, animi delectus dolorem enim exercitationem illum laborum nihil similique sint\r\n  voluptatem. Cupiditate, option!</p>', 1, '2018-07-10 15:48:14', '2018-07-10 15:48:14'),
(166, 'update', 'olympos', 'pages/contact.htm', 'pages/contact.htm', 'title = \"Contact\"\r\nurl = \"/contact\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[contactform]\r\n\r\n[siteSearchInclude]\r\n==\r\n<h2>Contact Page</h2>\r\n\r\n<p>This is our awesome contact page. yay</p>\r\n\r\n{% component \'contactform\' %}', 'title = \"Contact\"\r\nurl = \"/contact\"\r\nlayout = \"default\"\r\nis_hidden = 0\r\n\r\n[contactform]\r\n\r\n[siteSearchInclude]\r\n==\r\n<h2>Contact Page</h2>\r\n\r\n<p>This is our awesome contact page.</p>\r\n\r\n{% component \'contactform\' %}', 1, '2018-07-10 15:51:09', '2018-07-10 15:51:09');

-- --------------------------------------------------------

--
-- Structure de la table `deferred_bindings`
--

CREATE TABLE `deferred_bindings` (
  `id` int(10) UNSIGNED NOT NULL,
  `master_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `master_field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slave_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slave_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_bind` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `deferred_bindings`
--

INSERT INTO `deferred_bindings` (`id`, `master_type`, `master_field`, `slave_type`, `slave_id`, `session_key`, `is_bind`, `created_at`, `updated_at`) VALUES
(1, 'Grcote7\\Movies\\Models\\Actor', 'actorimage', 'System\\Models\\File', '6', 'nleeG53QMCO4qT75iRCHvoaukusFqcNLXok6Bdwp', 0, '2018-05-09 07:13:42', '2018-05-09 07:13:42'),
(2, 'Grcote7\\Movies\\Models\\Actor', 'actorimage', 'System\\Models\\File', '7', 'WbbP6wF9BUtMoAaci5auiCm3PQ9D9MqbVuGUDOZY', 0, '2018-05-09 07:23:37', '2018-05-09 07:23:37'),
(3, 'Grcote7\\Movies\\Models\\Actor', 'actorimage', 'System\\Models\\File', '8', 'WbbP6wF9BUtMoAaci5auiCm3PQ9D9MqbVuGUDOZY', 0, '2018-05-09 07:25:11', '2018-05-09 07:25:11'),
(4, 'Grcote7\\Movies\\Models\\Actor', 'actorimage', 'System\\Models\\File', '9', 'WbbP6wF9BUtMoAaci5auiCm3PQ9D9MqbVuGUDOZY', 0, '2018-05-09 07:28:46', '2018-05-09 07:28:46'),
(5, 'Grcote7\\Movies\\Models\\Actor', 'actorimage', 'System\\Models\\File', '11', 'viu7JrT2XIppX6b0jiw9tFW5FbFG669TT8Qwp95I', 0, '2018-05-09 07:34:39', '2018-05-09 07:34:39'),
(6, 'Grcote7\\Movies\\Models\\Movie', 'poster', 'System\\Models\\File', '2', '1QkrSaD8NyMKONh8EZTDaQNvbgdU7BPzc1pSMJPn', 0, '2018-06-19 07:22:48', '2018-06-19 07:22:48'),
(7, 'Grcote7\\Movies\\Models\\Actor', 'actorimage', 'System\\Models\\File', '22', 'caAKzUTFaJnH3Yz4mQiofVRC3oIqvG5DtnnYwKAt', 0, '2018-07-05 11:08:40', '2018-07-05 11:08:40');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci,
  `failed_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `flosch_slideshow_slides`
--

CREATE TABLE `flosch_slideshow_slides` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slideshow_id` int(10) UNSIGNED DEFAULT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `published_at` datetime DEFAULT NULL,
  `unpublished_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `flosch_slideshow_slides`
--

INSERT INTO `flosch_slideshow_slides` (`id`, `name`, `description`, `link`, `sort_order`, `created_at`, `updated_at`, `slideshow_id`, `is_published`, `published_at`, `unpublished_at`) VALUES
(1, '0', 'Slide N°0', 'http://example.com/', 1, '2018-07-05 10:08:51', '2018-07-05 10:08:51', 1, 0, NULL, NULL),
(2, '1', 'Slide N°1', 'http://example.com/', 2, '2018-07-05 10:08:51', '2018-07-05 10:08:51', 1, 0, NULL, NULL),
(3, '2', 'Slide N°2', 'http://example.com/', 3, '2018-07-05 10:08:51', '2018-07-05 10:08:51', 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `flosch_slideshow_slideshows`
--

CREATE TABLE `flosch_slideshow_slideshows` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `flosch_slideshow_slideshows`
--

INSERT INTO `flosch_slideshow_slideshows` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Example', '2018-07-05 10:08:51', '2018-07-05 10:08:51');

-- --------------------------------------------------------

--
-- Structure de la table `flynsarmy_sociallogin_user_providers`
--

CREATE TABLE `flynsarmy_sociallogin_user_providers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `provider_token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `grcote7_books_`
--

CREATE TABLE `grcote7_books_` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `owner_id` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `grcote7_books_`
--

INSERT INTO `grcote7_books_` (`id`, `title`, `description`, `slug`, `created_at`, `updated_at`, `published`, `owner_id`) VALUES
(1, '20 000 lieues sous les mers', '<p>Un voyage extraordinaire...</p>', '20-000-lieues-sous-les-mers', '2018-05-22 13:01:50', '2018-05-22 13:01:50', 1, '1'),
(2, 'Le Monde des A', '<p>SF de référence</p>', 'le-monde-des-a', '2018-05-22 13:01:50', '2018-05-22 13:01:50', 1, '2'),
(3, 'De la Terre à la lune', '<p>Une autre voyage extraordinaire</p>', 'de-la-terre-a-la-lune', '2018-05-22 13:01:50', '2018-05-22 13:01:50', 1, '1');

-- --------------------------------------------------------

--
-- Structure de la table `grcote7_books_owners`
--

CREATE TABLE `grcote7_books_owners` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `parr` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `grcote7_books_owners`
--

INSERT INTO `grcote7_books_owners` (`id`, `firstname`, `lastname`, `slug`, `parr`) VALUES
(1, 'Lionel', 'CÔTE', 'lionel-cote', 0),
(2, 'Lio181', 'YAHOO', 'lio181-yahoo', 1),
(3, 'Michel', 'COLUCCI', 'michel-colucci', 2),
(4, 'Pierre', 'RICHARD', 'pierre-richard', 3),
(5, 'Pierre', 'PALMADE', 'pierre-palmade', 3);

-- --------------------------------------------------------

--
-- Structure de la table `grcote7_dptlist_dpts`
--

CREATE TABLE `grcote7_dptlist_dpts` (
  `id` int(11) NOT NULL,
  `code` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `nom` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `update_at` date NOT NULL,
  `created_at` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `grcote7_dptlist_dpts`
--

INSERT INTO `grcote7_dptlist_dpts` (`id`, `code`, `nom`, `slug`, `update_at`, `created_at`) VALUES
(1, '01', 'Ain', 'ain', '0000-00-00', '0000-00-00'),
(2, '02', 'Aisne', 'aisne', '0000-00-00', '0000-00-00'),
(3, '03', 'Allier', 'allier', '0000-00-00', '0000-00-00'),
(5, '05', 'Hautes-Alpes', 'hautes-alpes', '0000-00-00', '0000-00-00'),
(4, '04', 'Alpes-de-Haute-Provence', 'alpes-de-haute-provence', '0000-00-00', '0000-00-00'),
(6, '06', 'Alpes-Maritimes', 'alpes-maritimes', '0000-00-00', '0000-00-00'),
(7, '07', 'Ardèche', 'ardeche', '0000-00-00', '0000-00-00'),
(8, '08', 'Ardennes', 'ardennes', '0000-00-00', '0000-00-00'),
(9, '09', 'Ariège', 'ariege', '0000-00-00', '0000-00-00'),
(10, '10', 'Aube', 'aube', '0000-00-00', '0000-00-00'),
(11, '11', 'Aude', 'aude', '0000-00-00', '0000-00-00'),
(12, '12', 'Aveyron', 'aveyron', '0000-00-00', '0000-00-00'),
(13, '13', 'Bouches-du-Rhône', 'bouches-du-rhone', '0000-00-00', '0000-00-00'),
(14, '14', 'Calvados', 'calvados', '0000-00-00', '0000-00-00'),
(15, '15', 'Cantal', 'cantal', '0000-00-00', '0000-00-00'),
(16, '16', 'Charente', 'charente', '0000-00-00', '0000-00-00'),
(17, '17', 'Charente-Maritime', 'charente-maritime', '0000-00-00', '0000-00-00'),
(18, '18', 'Cher', 'cher', '0000-00-00', '0000-00-00'),
(19, '19', 'Corrèze', 'correze', '0000-00-00', '0000-00-00'),
(20, '2a', 'Corse-du-sud', 'corse-du-sud', '0000-00-00', '0000-00-00'),
(21, '2b', 'Haute-corse', 'haute-corse', '0000-00-00', '0000-00-00'),
(22, '21', 'Côte-d\'or', 'cote-dor', '0000-00-00', '0000-00-00'),
(23, '22', 'Côtes-d\'armor', 'cotes-darmor', '0000-00-00', '0000-00-00'),
(24, '23', 'Creuse', 'creuse', '0000-00-00', '0000-00-00'),
(25, '24', 'Dordogne', 'dordogne', '0000-00-00', '0000-00-00'),
(26, '25', 'Doubs', 'doubs', '0000-00-00', '0000-00-00'),
(27, '26', 'Drôme', 'drome', '0000-00-00', '0000-00-00'),
(28, '27', 'Eure', 'eure', '0000-00-00', '0000-00-00'),
(29, '28', 'Eure-et-Loir', 'eure-et-loir', '0000-00-00', '0000-00-00'),
(30, '29', 'Finistère', 'finistere', '0000-00-00', '0000-00-00'),
(31, '30', 'Gard', 'gard', '0000-00-00', '0000-00-00'),
(32, '31', 'Haute-Garonne', 'haute-garonne', '0000-00-00', '0000-00-00'),
(33, '32', 'Gers', 'gers', '0000-00-00', '0000-00-00'),
(34, '33', 'Gironde', 'gironde', '0000-00-00', '0000-00-00'),
(35, '34', 'Hérault', 'herault', '0000-00-00', '0000-00-00'),
(36, '35', 'Ile-et-Vilaine', 'ile-et-vilaine', '0000-00-00', '0000-00-00'),
(37, '36', 'Indre', 'indre', '0000-00-00', '0000-00-00'),
(38, '37', 'Indre-et-Loire', 'indre-et-loire', '0000-00-00', '0000-00-00'),
(39, '38', 'Isère', 'isere', '0000-00-00', '0000-00-00'),
(40, '39', 'Jura', 'jura', '0000-00-00', '0000-00-00'),
(41, '40', 'Landes', 'landes', '0000-00-00', '0000-00-00'),
(42, '41', 'Loir-et-Cher', 'loir-et-cher', '0000-00-00', '0000-00-00'),
(43, '42', 'Loire', 'loire', '0000-00-00', '0000-00-00'),
(44, '43', 'Haute-Loire', 'haute-loire', '0000-00-00', '0000-00-00'),
(45, '44', 'Loire-Atlantique', 'loire-atlantique', '0000-00-00', '0000-00-00'),
(46, '45', 'Loiret', 'loiret', '0000-00-00', '0000-00-00'),
(47, '46', 'Lot', 'lot', '0000-00-00', '0000-00-00'),
(48, '47', 'Lot-et-Garonne', 'lot-et-garonne', '0000-00-00', '0000-00-00'),
(49, '48', 'Lozère', 'lozere', '0000-00-00', '0000-00-00'),
(50, '49', 'Maine-et-Loire', 'maine-et-loire', '0000-00-00', '0000-00-00'),
(51, '50', 'Manche', 'manche', '0000-00-00', '0000-00-00'),
(52, '51', 'Marne', 'marne', '0000-00-00', '0000-00-00'),
(53, '52', 'Haute-Marne', 'haute-marne', '0000-00-00', '0000-00-00'),
(54, '53', 'Mayenne', 'mayenne', '0000-00-00', '0000-00-00'),
(55, '54', 'Meurthe-et-Moselle', 'meurthe-et-moselle', '0000-00-00', '0000-00-00'),
(56, '55', 'Meuse', 'meuse', '0000-00-00', '0000-00-00'),
(57, '56', 'Morbihan', 'morbihan', '0000-00-00', '0000-00-00'),
(58, '57', 'Moselle', 'moselle', '0000-00-00', '0000-00-00'),
(59, '58', 'Nièvre', 'nievre', '0000-00-00', '0000-00-00'),
(60, '59', 'Nord', 'nord', '0000-00-00', '0000-00-00'),
(61, '60', 'Oise', 'oise', '0000-00-00', '0000-00-00'),
(62, '61', 'Orne', 'orne', '0000-00-00', '0000-00-00'),
(63, '62', 'Pas-de-Calais', 'pas-de-calais', '0000-00-00', '0000-00-00'),
(64, '63', 'Puy-de-Dôme', 'puy-de-dome', '0000-00-00', '0000-00-00'),
(65, '64', 'Pyrénées-Atlantiques', 'pyrenees-atlantiques', '0000-00-00', '0000-00-00'),
(66, '65', 'Hautes-Pyrénées', 'hautes-pyrenees', '0000-00-00', '0000-00-00'),
(67, '66', 'Pyrénées-Orientales', 'pyrenees-orientales', '0000-00-00', '0000-00-00'),
(68, '67', 'Bas-Rhin', 'bas-rhin', '0000-00-00', '0000-00-00'),
(69, '68', 'Haut-Rhin', 'haut-rhin', '0000-00-00', '0000-00-00'),
(70, '69', 'Rhône', 'rhone', '0000-00-00', '0000-00-00'),
(71, '70', 'Haute-Saône', 'haute-saone', '0000-00-00', '0000-00-00'),
(72, '71', 'Saône-et-Loire', 'saone-et-loire', '0000-00-00', '0000-00-00'),
(73, '72', 'Sarthe', 'sarthe', '0000-00-00', '0000-00-00'),
(74, '73', 'Savoie', 'savoie', '0000-00-00', '0000-00-00'),
(75, '74', 'Haute-Savoie', 'haute-savoie', '0000-00-00', '0000-00-00'),
(76, '75', 'Paris', 'paris', '0000-00-00', '0000-00-00'),
(77, '76', 'Seine-Maritime', 'seine-maritime', '0000-00-00', '0000-00-00'),
(78, '77', 'Seine-et-Marne', 'seine-et-marne', '0000-00-00', '0000-00-00'),
(79, '78', 'Yvelines', 'yvelines', '0000-00-00', '0000-00-00'),
(80, '79', 'Deux-Sèvres', 'deux-sevres', '0000-00-00', '0000-00-00'),
(81, '80', 'Somme', 'somme', '0000-00-00', '0000-00-00'),
(82, '81', 'Tarn', 'tarn', '0000-00-00', '0000-00-00'),
(83, '82', 'Tarn-et-Garonne', 'tarn-et-garonne', '0000-00-00', '0000-00-00'),
(84, '83', 'Var', 'var', '0000-00-00', '0000-00-00'),
(85, '84', 'Vaucluse', 'vaucluse', '0000-00-00', '0000-00-00'),
(86, '85', 'Vendée', 'vendee', '0000-00-00', '0000-00-00'),
(87, '86', 'Vienne', 'vienne', '0000-00-00', '0000-00-00'),
(88, '87', 'Haute-Vienne', 'haute-vienne', '0000-00-00', '0000-00-00'),
(89, '88', 'Vosges', 'vosges', '0000-00-00', '0000-00-00'),
(90, '89', 'Yonne', 'yonne', '0000-00-00', '0000-00-00'),
(91, '90', 'Territoire de Belfort', 'territoire-de-belfort', '0000-00-00', '0000-00-00'),
(92, '91', 'Essonne', 'essonne', '0000-00-00', '0000-00-00'),
(93, '92', 'Hauts-de-Seine', 'hauts-de-seine', '0000-00-00', '0000-00-00'),
(94, '93', 'Seine-Saint-Denis', 'seine-saint-denis', '0000-00-00', '0000-00-00'),
(95, '94', 'Val-de-Marne', 'val-de-marne', '0000-00-00', '0000-00-00'),
(96, '95', 'Val-d\'oise', 'val-doise', '0000-00-00', '0000-00-00'),
(97, '976', 'Mayotte', 'mayotte', '0000-00-00', '0000-00-00'),
(98, '971', 'Guadeloupe', 'guadeloupe', '0000-00-00', '0000-00-00'),
(99, '973', 'Guyane', 'guyane', '0000-00-00', '0000-00-00'),
(100, '972', 'Martinique', 'martinique', '0000-00-00', '0000-00-00'),
(101, '974', 'Réunion', 'reunion', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Structure de la table `grcote7_library_books`
--

CREATE TABLE `grcote7_library_books` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `grcote7_movies_`
--

CREATE TABLE `grcote7_movies_` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `year` int(11) DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `techteam` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `grcote7_movies_`
--

INSERT INTO `grcote7_movies_` (`id`, `name`, `description`, `year`, `slug`, `created_at`, `published`, `techteam`) VALUES
(1, 'Inception', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod&lt; tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, <span style=\"background-color: transparent;\">quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo&nbsp;</span><span style=\"background-color: transparent;\">consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse.</span></p>\r\n\r\n<p><span style=\"background-color: transparent;\">C</span>illum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non roident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 2018, 'inception', '2006-09-02 18:38:53', 0, '[{\"tech_job\":\"Realistor\",\"tech_name\":\"John Woo\"},{\"tech_job\":\"Autho\",\"tech_name\":\"Allan Be\"}]'),
(5, 'Minus explicabo beatae.', 'In qui voluptas magnam. Voluptatibus deserunt aliquid id amet porro. Omnis ipsum quasi alias voluptatem quia sit. Provident voluptatem aut nihil unde omnis.', 1991, 'minus-explicabo-beatae', '2017-11-12 18:48:28', 1, NULL),
(7, 'Nemo eum voluptate quis error.', 'Quo repellendus non soluta vero. Autem consequatur ea repellat aut nulla nobis libero. Optio et est quaerat sit. Alias dicta molestiae autem harum dicta corrupti.', 1985, 'nemo-eum-voluptate-quis-error', NULL, NULL, NULL),
(13, 'Itaque minus recusandae velit.', 'Quo quo sit rerum aut aut amet. Nemo deserunt voluptatibus ut rerum tenetur voluptate voluptatem sint. Ut molestias dolorum expedita molestiae. Quod totam molestiae ex enim.', 1970, 'itaque-minus-recusandae-velit', NULL, NULL, NULL),
(14, 'Quod sed.', 'Vero dignissimos eius doloremque voluptas. Facilis voluptatem magnam distinctio omnis. Culpa vel et et in praesentium dolor.', 2014, 'quod-sed', NULL, NULL, NULL),
(15, 'Sed illo explicabo animi.', 'Illum eius hic est occaecati et culpa magni. Quae consequatur hic quo assumenda. Qui quasi earum officiis odit.', 1986, 'sed-illo-explicabo-animi', NULL, NULL, NULL),
(18, 'Tempore quia non quo.', 'Molestiae libero vitae quis voluptas. Occaecati optio atque quos. Necessitatibus ipsa tempora inventore.', 1987, 'tempore-quia-non-quo', NULL, NULL, NULL),
(19, 'Voluptatem amet aut minus eum.', 'Eius doloremque facere similique aut. Ipsam aliquid quasi laboriosam. Sunt blanditiis voluptatibus quibusdam veritatis non.', 2017, 'voluptatem-amet-aut-minus-eum', NULL, NULL, NULL),
(20, 'Qui magnam praesentium.', 'Eius et aliquid accusantium perspiciatis sed. Voluptatem in est laudantium omnis doloremque.', 1996, 'qui-magnam-praesentium', NULL, NULL, NULL),
(21, 'Quibusdam maiores ex id iure.', 'Non possimus consequuntur et ullam recusandae hic deserunt. Asperiores eos et doloribus quis rerum. Numquam atque eos tempore qui ea at. A iusto animi animi eveniet minima est.', 1999, 'quibusdam-maiores-ex-id-iure', NULL, NULL, NULL),
(22, 'Sapiente facilis rerum.', 'Debitis voluptatum reprehenderit atque architecto. Nihil quos blanditiis mollitia expedita excepturi et sunt. Quas iusto aliquam recusandae ex placeat nulla.', 1986, 'sapiente-facilis-rerum', NULL, NULL, NULL),
(25, 'Vero sit.', 'Saepe voluptatem officia sequi eligendi cumque debitis minus. Eos et voluptatibus possimus consectetur qui ratione. Facere consectetur rem at laudantium vel qui dolorem. Dolorum ea ea est fuga.', 1982, 'vero-sit', NULL, NULL, NULL),
(28, 'Voluptatum consequuntur est.', 'Similique ut sed quia. Eos voluptatibus mollitia qui aut nihil repellat id. Non commodi ducimus dicta blanditiis odio ex expedita. Perspiciatis assumenda et nostrum quidem incidunt esse.', 1985, 'voluptatum-consequuntur-est', NULL, NULL, NULL),
(31, 'Molestiae quibusdam modi at.', 'Mollitia sit nisi veritatis reiciendis laborum. Maxime distinctio quisquam qui debitis. Est fugiat numquam numquam modi consequatur nihil doloremque quisquam.', 2016, 'molestiae-quibusdam-modi-at', NULL, NULL, NULL),
(32, 'Ut hic consequatur.', 'Rerum autem beatae vel. Non soluta voluptate aut voluptas voluptate at impedit fugiat. Doloribus ipsam sint in occaecati.', 1984, 'ut-hic-consequatur', NULL, NULL, NULL),
(33, 'Veniam ea officia qui.', 'Consequuntur non distinctio ut. Fugit quas consequatur qui aut voluptas asperiores maiores.', 2009, 'veniam-ea-officia-qui', NULL, NULL, NULL),
(34, 'Non porro laudantium excepturi.', 'Odio voluptas beatae est sit doloribus occaecati. Ipsum sit autem esse doloremque et et quas natus. Eos nobis incidunt voluptatem nesciunt odit. Aperiam eos sed optio dolor quasi dolores.', 1976, 'non-porro-laudantium-excepturi', NULL, NULL, NULL),
(36, 'Ratione consequatur minus.', 'Harum nostrum consequatur aliquam. Minima est tenetur ipsam est eaque. Inventore repellat consectetur veritatis repellat ad deleniti. Ipsam repudiandae quasi ipsa voluptatum. Expedita cumque praesentium est sint porro molestiae.', 2003, 'ratione-consequatur-minus', NULL, NULL, NULL),
(37, 'Voluptatum accusantium non aliquid.', 'Mollitia vel nisi laborum. Qui magnam assumenda ullam corrupti id. Nisi autem ut aperiam sit aut natus. Debitis eaque explicabo voluptatibus magnam ea tenetur labore totam.', 2002, 'voluptatum-accusantium-non-aliquid', NULL, NULL, NULL),
(41, 'Sit maiores est sint.', 'Quaerat voluptas voluptatem et autem veniam. Quo quo id voluptates facere vel.', 2004, 'sit-maiores-est-sint', NULL, NULL, NULL),
(43, 'Totam unde sint.', 'Officiis animi qui animi sit odit fuga. Pariatur delectus et est. Et quam quasi quia optio. Illo et et ad velit quas.', 1973, 'totam-unde-sint', NULL, NULL, NULL),
(45, 'Iste in.', 'Velit nobis et iure qui sint eum harum. Quia asperiores eaque ut.', 1975, 'iste-in', NULL, NULL, NULL),
(46, 'Possimus quia omnis voluptas.', 'Aliquid quaerat qui voluptas voluptas voluptate ipsa nulla. Quidem hic eos odit. Et temporibus aut doloremque. Non culpa labore voluptatibus quasi aliquam.', 1976, 'possimus-quia-omnis-voluptas', NULL, NULL, NULL),
(47, 'Numquam voluptatem reiciendis quaerat.', 'Voluptatem minima qui neque libero dolorem. Est fuga quae repudiandae aut. Qui debitis provident iste explicabo quia corporis.', 1989, 'numquam-voluptatem-reiciendis-quaerat', NULL, NULL, NULL),
(49, 'Sit delectus accusamus placeat.', 'Nulla quod in labore molestiae accusamus. Qui est repudiandae nihil accusantium et. Vel quis culpa nemo et. Ipsam quis beatae soluta harum corporis.', 1974, 'sit-delectus-accusamus-placeat', NULL, NULL, NULL),
(51, 'Ipsum facere in eaque.', '<p>Reprehenderit perspiciatis esse facere sit ad incidunt facere ea. Molestiae fugiat sit nihil reprehenderit est.</p>', 2003, 'ipsum-facere-in-eaque', NULL, NULL, '[]'),
(52, 'Sequi et iusto.', 'Est autem et aliquid aut qui neque fuga officia. Tenetur ex nemo vitae nihil. Reprehenderit blanditiis dolores recusandae nobis dignissimos autem.', 1990, 'sequi-et-iusto', NULL, NULL, NULL),
(54, 'Quasi voluptatem natus assumenda.', 'Ab labore ea nam quisquam ullam dolores ut. Accusamus laudantium aut et commodi eligendi. Asperiores repellat aut et et.', 1996, 'quasi-voluptatem-natus-assumenda', NULL, NULL, NULL),
(58, 'Non dolores sed.', 'Quasi excepturi autem omnis et laudantium est. Saepe officiis iste quis quas architecto. Distinctio repellendus cupiditate autem. Veniam est sunt qui est repellendus quia.', 1972, 'non-dolores-sed', NULL, NULL, NULL),
(61, 'Quidem consequatur vitae recusandae.', 'Illum voluptatem vero odit consequatur aut debitis corporis. Id asperiores recusandae est cupiditate. Excepturi vel dolores sed cupiditate soluta. Nihil accusantium minus culpa sunt magni.', 1975, 'quidem-consequatur-vitae-recusandae', NULL, NULL, NULL),
(64, 'Reiciendis atque est consequatur.', 'Accusantium quisquam animi aliquid corrupti cum ut atque. Culpa asperiores quo nemo vel aut expedita eum velit. Ipsam repellat velit facere ea sed voluptatem.', 1971, 'reiciendis-atque-est-consequatur', NULL, NULL, NULL),
(65, 'Labore tempore magni.', 'Qui itaque est similique libero ut soluta libero corrupti. Quo error illum quia qui. Culpa saepe enim earum qui sequi soluta fugiat.', 1979, 'labore-tempore-magni', NULL, NULL, NULL),
(66, 'Voluptatem est veritatis unde.', '<p>Facilis fugit fuga perspiciatis ut quia aut eaque. Nam sunt omnis voluptas ut sit. Doloremque deleniti veniam praesentium dolorem enim voluptas velit.</p>', 2016, 'voluptatem-est-veritatis-unde', NULL, NULL, NULL),
(68, 'Qui aut tempora.', 'Qui nam deserunt aliquid ut quis dolores. Eaque quidem iste aspernatur sunt.', 1998, 'qui-aut-tempora', NULL, NULL, NULL),
(73, 'Ipsa tenetur repellat voluptatum.', '<p>Laboriosam eos laboriosam dolore nobis quo quo neque cupiditate. Laborum voluptatem est quis dolorem porro ducimus quam aut.</p>', 1978, 'ipsa-tenetur-repellat-voluptatum', NULL, NULL, '[]'),
(75, 'Rem et unde.', 'Praesentium quisquam culpa qui facere sunt. Et vero quas in officia est. Commodi dolores nostrum sapiente est ipsa.', 1978, 'rem-et-unde', NULL, NULL, NULL),
(76, 'Quam ipsum cum.', 'Assumenda minima sapiente ea nemo. Dolorem pariatur ad est eum. Dolor et beatae atque error. Neque laborum et porro aperiam impedit quis voluptas.', 1998, 'quam-ipsum-cum', NULL, NULL, NULL),
(81, 'Ut expedita cumque quae.', 'Sint qui et ut molestiae possimus dolorem repudiandae. Possimus delectus ratione voluptas rerum qui in odio quia. Odio ea magnam harum quia eos ipsam.', 1974, 'ut-expedita-cumque-quae', NULL, NULL, NULL),
(82, 'Ut quod ipsum.', 'Dicta eum similique qui nemo expedita tempore. Nostrum magnam doloribus tempora autem cumque ratione. Rerum voluptatibus nam consequuntur necessitatibus eos.', 1991, 'ut-quod-ipsum', NULL, NULL, NULL),
(83, 'Rerum quia omnis.', 'Accusantium praesentium hic molestiae maxime. Aut aut cum ut non. Commodi architecto quo quos adipisci.', 2010, 'rerum-quia-omnis', NULL, NULL, NULL),
(85, 'Nesciunt quia adipisci qui.', 'Non ex officiis vel illo est ut pariatur. Sapiente dolores consequatur sit omnis alias ipsa adipisci. Nostrum libero blanditiis rerum.', 1997, 'nesciunt-quia-adipisci-qui', NULL, NULL, NULL),
(86, 'Veritatis iusto ipsam et.', 'Perferendis sint omnis non blanditiis. Neque laudantium in itaque nisi consequatur. A est fuga cupiditate. Sit cupiditate beatae sed.', 1991, 'veritatis-iusto-ipsam-et', NULL, NULL, NULL),
(88, 'Numquam molestiae.', 'Amet omnis ullam dolores. Quaerat tenetur adipisci aut eligendi. Ab quaerat consequatur ut molestiae necessitatibus quia.', 1973, 'numquam-molestiae', NULL, NULL, NULL),
(89, 'Qui et dignissimos.', 'Inventore non aspernatur corporis dolores. Id voluptatem eum tempore nesciunt corrupti. Earum natus molestiae excepturi earum. Fugiat tempora quod excepturi officiis dolorem aut.', 1991, 'qui-et-dignissimos', NULL, NULL, NULL),
(92, 'Omnis placeat dolorem ab.', 'Iusto velit expedita est non amet. Harum et quisquam officiis veniam excepturi. Necessitatibus quo iste dolorum unde ut quos in.', 1973, 'omnis-placeat-dolorem-ab', NULL, NULL, NULL),
(94, 'Sed dolores.', 'Est voluptas error qui laudantium non consectetur voluptatem debitis. Aut a ut maiores aperiam dignissimos doloremque voluptate voluptatem. Deleniti aut aliquam quis facere culpa odit.', 1983, 'sed-dolores', NULL, NULL, NULL),
(95, 'Rerum omnis fugiat.', 'Nobis ratione et reprehenderit provident. Eum veniam sint omnis asperiores animi soluta. Commodi recusandae dolore voluptas voluptatem voluptatem.', 1996, 'rerum-omnis-fugiat', NULL, NULL, NULL),
(99, 'Voluptates quia aut.', 'Dignissimos et perspiciatis autem. Quasi doloremque ut libero similique dicta. Cum omnis doloremque quo vel ad inventore omnis et.', 1985, 'voluptates-quia-aut', NULL, NULL, NULL),
(100, 'Vel nesciunt quam.', 'Id incidunt dolor consequatur laudantium commodi. Quia dolorem vitae corporis quo porro sunt. Aut ullam voluptatem dolorem veniam et. Eligendi aut facilis aperiam ut.', 2003, 'vel-nesciunt-quam', NULL, NULL, NULL),
(102, 'Voluptatem laudantium libero porro.', 'Nulla voluptates qui rerum quod dicta unde et. Omnis est et qui consectetur ducimus adipisci unde.', 1970, 'voluptatem-laudantium-libero-porro', NULL, NULL, NULL),
(103, 'Maiores dolor velit.', 'Exercitationem earum et explicabo sunt. Sed ut aspernatur ut aut minima minima. Laudantium consequuntur facere itaque sunt et totam.', 1984, 'maiores-dolor-velit', NULL, NULL, NULL),
(104, 'Tintin', '<p>From RG</p>', 1960, 'tintin', NULL, NULL, NULL),
(105, 'New Movie Two', '<p>lorem</p>', 1990, 'new-movie', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `grcote7_movies_actors`
--

CREATE TABLE `grcote7_movies_actors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `grcote7_movies_actors`
--

INSERT INTO `grcote7_movies_actors` (`id`, `name`, `lastname`) VALUES
(1, 'Brad', 'Pitt'),
(2, 'Edwardo', 'Norton'),
(3, 'Ellen', 'Page'),
(4, 'Kevin', 'Spacey'),
(5, 'Leonardo', 'Di Caprio'),
(6, 'Ben', 'Stiller'),
(7, 'Theo', 'Coluche'),
(18, 'Sofia', 'Lehner'),
(19, 'Adriana', 'Heaney'),
(20, 'Nickolas', 'Altenwerth'),
(21, 'Jazmyne', 'Reilly'),
(22, 'Maud', 'Dach'),
(23, 'Shea', 'Hane'),
(24, 'Tyrese', 'Krajcik'),
(25, 'Garett', 'Reynolds'),
(26, 'Cordie', 'Wunsch'),
(27, 'Lowell', 'Koelpin'),
(28, 'Noe', 'Hand'),
(29, 'Melvina', 'Christiansen'),
(30, 'Christina', 'Donnelly'),
(31, 'Estella', 'Kunze'),
(32, 'Florencio', 'Deckow'),
(33, 'Joshuah', 'Brekke'),
(34, 'Norval', 'Brown'),
(35, 'Mauricio', 'Dicki'),
(36, 'Rosanna', 'Beer'),
(37, 'Shanelle', 'Hoeger'),
(38, 'Rashad', 'Goodwin'),
(39, 'Dane', 'Simonis'),
(40, 'Rahul', 'D\'Amore'),
(41, 'Andres', 'Christiansen'),
(42, 'Alexandria', 'Boehm'),
(43, 'Ulices', 'Frami'),
(44, 'Madaline', 'Gusikowski'),
(45, 'Dianna', 'Lindgren'),
(46, 'Kaia', 'Gutmann'),
(47, 'Gudrun', 'Torphy'),
(48, 'Mozell', 'Prohaska'),
(49, 'Chyna', 'Cormier'),
(50, 'Joshua', 'Leannon'),
(51, 'Junior', 'Kassulke'),
(52, 'Jarrett', 'Walter'),
(53, 'Amos', 'Sanford'),
(54, 'Ryleigh', 'Cartwright'),
(55, 'Lexi', 'Wiegand'),
(56, 'Jazmyn', 'Hirthe'),
(57, 'Tyrese', 'Emmerich'),
(58, 'Giuseppe', 'Wolf'),
(59, 'Walton', 'Herman'),
(60, 'Norbert', 'Spinka'),
(61, 'Jaeden', 'Konopelski'),
(62, 'Clemens', 'Hessel'),
(63, 'Mavis', 'Lesch'),
(64, 'Aubree', 'Reinger'),
(65, 'Ethan', 'Russel'),
(66, 'Leonora', 'Schmidt'),
(67, 'Jalon', 'Grady'),
(68, 'Immanuel', 'Runolfsson'),
(69, 'Winifred', 'Metz'),
(70, 'Orlando', 'Purdy'),
(71, 'Leonora', 'Kuhlman'),
(72, 'Valentina', 'O\'Kon'),
(73, 'Deontae', 'Dooley'),
(74, 'Lonie', 'Klein'),
(75, 'Rowan', 'Gusikowski'),
(76, 'Lolita', 'West'),
(77, 'Ryan', 'Ward'),
(78, 'Carlee', 'Larson'),
(79, 'Dion', 'Deckow'),
(80, 'Maximo', 'Lind'),
(81, 'Thomas', 'Gulgowski'),
(82, 'Abraham', 'Casper'),
(83, 'Telly', 'Schneider'),
(84, 'Jayme', 'Corkery'),
(85, 'Jordon', 'Herman'),
(86, 'Korbin', 'Rutherford'),
(87, 'Tad', 'Heaney'),
(88, 'Keith', 'Brekke'),
(89, 'Luis', 'Williamson'),
(90, 'Providenci', 'Friesen'),
(91, 'Geoffrey', 'Feil'),
(92, 'Easter', 'Zemlak'),
(93, 'Jadon', 'Lubowitz'),
(94, 'Harry', 'Herman'),
(95, 'Suzanne', 'Schuster'),
(96, 'Emma', 'Ferry'),
(97, 'Golden', 'Berge'),
(98, 'Pinkie', 'Kirlin'),
(99, 'Carmen', 'Wolff'),
(100, 'Teresa', 'Mills'),
(101, 'Narciso', 'McClure'),
(102, 'Brigitte', 'Heathcote'),
(103, 'Theo', 'Gerhold'),
(104, 'Elda', 'Cassin'),
(105, 'Mauricio', 'Leffler'),
(106, 'Marge', 'Sawayn'),
(107, 'Heather', 'Haag'),
(108, 'Newton', 'Rath'),
(109, 'Ardella', 'Yost'),
(110, 'Roberto', 'Schneider'),
(111, 'Angelina', 'Kertzmann'),
(112, 'Santino', 'Schulist'),
(113, 'Jerry', 'Klocko'),
(114, 'Irma', 'VonRueden'),
(115, 'Curtis', 'Feil'),
(116, 'Nash', 'Waelchi'),
(117, 'Linwood', 'D\'Amore'),
(118, 'Danika', 'Grant');

-- --------------------------------------------------------

--
-- Structure de la table `grcote7_movies_actors_movies`
--

CREATE TABLE `grcote7_movies_actors_movies` (
  `actor_id` int(10) UNSIGNED NOT NULL,
  `movie_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `grcote7_movies_actors_movies`
--

INSERT INTO `grcote7_movies_actors_movies` (`actor_id`, `movie_id`) VALUES
(1, 1),
(1, 104),
(2, 1),
(2, 66),
(31, 1);

-- --------------------------------------------------------

--
-- Structure de la table `grcote7_movies_genres`
--

CREATE TABLE `grcote7_movies_genres` (
  `id` int(10) UNSIGNED NOT NULL,
  `genre_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `grcote7_movies_genres`
--

INSERT INTO `grcote7_movies_genres` (`id`, `genre_title`, `slug`) VALUES
(1, 'Action', 'action'),
(2, 'Comedy', 'comedy'),
(3, 'Drama', 'drama'),
(4, 'Documentary', 'documentary'),
(5, 'Romance', 'romance'),
(6, 'Thriller', 'thriller');

-- --------------------------------------------------------

--
-- Structure de la table `grcote7_movies_movies_genres`
--

CREATE TABLE `grcote7_movies_movies_genres` (
  `movie_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `grcote7_movies_movies_genres`
--

INSERT INTO `grcote7_movies_movies_genres` (`movie_id`, `genre_id`) VALUES
(1, 1),
(1, 4),
(1, 5),
(66, 1),
(66, 3),
(66, 5),
(104, 1);

-- --------------------------------------------------------

--
-- Structure de la table `grcote7_movies_tags`
--

CREATE TABLE `grcote7_movies_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `grcote7_movies_tags`
--

INSERT INTO `grcote7_movies_tags` (`id`, `name`) VALUES
(1, 'paradoxe'),
(2, 'sommeil'),
(3, 'mondes paralleles'),
(4, 'simulation'),
(14, 'aze'),
(15, 'ttt'),
(16, 'rrr'),
(17, 'ooo'),
(18, 'ggg');

-- --------------------------------------------------------

--
-- Structure de la table `grcote7_movies_tags_movies`
--

CREATE TABLE `grcote7_movies_tags_movies` (
  `movie_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `grcote7_movies_tags_movies`
--

INSERT INTO `grcote7_movies_tags_movies` (`movie_id`, `tag_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 17),
(1, 18),
(51, 1),
(73, 1);

-- --------------------------------------------------------

--
-- Structure de la table `grcote7_tutos_categories`
--

CREATE TABLE `grcote7_tutos_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `grcote7_tutos_courses`
--

CREATE TABLE `grcote7_tutos_courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` time DEFAULT NULL,
  `tuto_id` int(11) DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `mastery` smallint(6) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `grcote7_tutos_courses`
--

INSERT INTO `grcote7_tutos_courses` (`id`, `title`, `description`, `slug`, `duration`, `tuto_id`, `url`, `notes`, `mastery`) VALUES
(1, 'Installing October CMS', '<p>In this video series we are going to take a look at October CMS and make a website with it. In this first episode I\'m going to show you how to install October on your machine.</p>', 'installing-october-cms', '12:09:00', 1, 'http://watch-learn.com/video-tutorials/making-websites-with-october-cms-part-01-installing-october-cms', NULL, 0),
(2, 'Basic Concepts', '<p>Before we start delving into making a new website with October CMS I just want to take a few minutes to talk about some of the basic concepts that you will encounter when using October.</p>', 'basic-concepts', '21:44:00', 1, 'http://watch-learn.com/video-tutorials/making-websites-with-october-cms-part-02-basic-concepts', NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `grcote7_tutos_tutos`
--

CREATE TABLE `grcote7_tutos_tutos` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `slug` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `grcote7_tutos_tutos`
--

INSERT INTO `grcote7_tutos_tutos` (`id`, `title`, `author`, `url`, `description`, `slug`) VALUES
(1, 'Making websites with OctoberCMS', 'Ivan Doric - Watch-Learn.com', 'http://watch-learn.com/series/making-websites-with-october-cms', '<p>In this video series we are going to get familiar with October CMS. A great Laravel based CMS. We are going to be creating themes, plugins, learn about administration and other great stuff.</p>', 'making-websites-octobercms'),
(2, 'Apprendre PHP', 'Jonathan - Grafikart.fr', 'https://www.grafikart.fr/formations/php-debutant', '<p>Cette formation est en cours d\'enregistrement, de nouveaux chapitres seront rajoutés au fur et à mesure.</p>\r\n\r\n<p>PHP est un langage de programmation compilé à la volée très utilisé pour produire des pages Web dynamique. C\'est un langage très abordables qui va vous permettre de créer vos premiers site web dynamiques.&nbsp;</p>\r\n\r\n<p>A travers cette formation je vous propose de découvrir progressivement ce qu\'est PHP et comment vous pourrez l\'utiliser pour créer des sites web complets. Avant de suivre cette formation il est indispensable que vous soyez déjà à l\'aise avec la création de site statique en HTML et CSS.</p>', 'apprendre-php');

-- --------------------------------------------------------

--
-- Structure de la table `grcote7_tutos_tutos_categories`
--

CREATE TABLE `grcote7_tutos_tutos_categories` (
  `tuto_id` int(11) NOT NULL,
  `categorie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `leocavalcante_backendusertree_proxies`
--

CREATE TABLE `leocavalcante_backendusertree_proxies` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_10_01_000001_Db_Deferred_Bindings', 1),
(2, '2013_10_01_000002_Db_System_Files', 1),
(3, '2013_10_01_000003_Db_System_Plugin_Versions', 1),
(4, '2013_10_01_000004_Db_System_Plugin_History', 1),
(5, '2013_10_01_000005_Db_System_Settings', 1),
(6, '2013_10_01_000006_Db_System_Parameters', 1),
(7, '2013_10_01_000007_Db_System_Add_Disabled_Flag', 1),
(8, '2013_10_01_000008_Db_System_Mail_Templates', 1),
(9, '2013_10_01_000009_Db_System_Mail_Layouts', 1),
(10, '2014_10_01_000010_Db_Jobs', 1),
(11, '2014_10_01_000011_Db_System_Event_Logs', 1),
(12, '2014_10_01_000012_Db_System_Request_Logs', 1),
(13, '2014_10_01_000013_Db_System_Sessions', 1),
(14, '2015_10_01_000014_Db_System_Mail_Layout_Rename', 1),
(15, '2015_10_01_000015_Db_System_Add_Frozen_Flag', 1),
(16, '2015_10_01_000016_Db_Cache', 1),
(17, '2015_10_01_000017_Db_System_Revisions', 1),
(18, '2015_10_01_000018_Db_FailedJobs', 1),
(19, '2016_10_01_000019_Db_System_Plugin_History_Detail_Text', 1),
(20, '2016_10_01_000020_Db_System_Timestamp_Fix', 1),
(21, '2017_08_04_121309_Db_Deferred_Bindings_Add_Index_Session', 1),
(22, '2017_10_01_000021_Db_System_Sessions_Update', 1),
(23, '2017_10_01_000022_Db_Jobs_FailedJobs_Update', 1),
(24, '2017_10_01_000023_Db_System_Mail_Partials', 1),
(25, '2013_10_01_000001_Db_Backend_Users', 2),
(26, '2013_10_01_000002_Db_Backend_User_Groups', 2),
(27, '2013_10_01_000003_Db_Backend_Users_Groups', 2),
(28, '2013_10_01_000004_Db_Backend_User_Throttle', 2),
(29, '2014_01_04_000005_Db_Backend_User_Preferences', 2),
(30, '2014_10_01_000006_Db_Backend_Access_Log', 2),
(31, '2014_10_01_000007_Db_Backend_Add_Description_Field', 2),
(32, '2015_10_01_000008_Db_Backend_Add_Superuser_Flag', 2),
(33, '2016_10_01_000009_Db_Backend_Timestamp_Fix', 2),
(34, '2017_10_01_000010_Db_Backend_User_Roles', 2),
(35, '2014_10_01_000001_Db_Cms_Theme_Data', 3),
(36, '2016_10_01_000002_Db_Cms_Timestamp_Fix', 3),
(37, '2017_10_01_000003_Db_Cms_Theme_Logs', 3);

-- --------------------------------------------------------

--
-- Structure de la table `rainlab_blog_categories`
--

CREATE TABLE `rainlab_blog_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `nest_left` int(11) DEFAULT NULL,
  `nest_right` int(11) DEFAULT NULL,
  `nest_depth` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `rainlab_blog_categories`
--

INSERT INTO `rainlab_blog_categories` (`id`, `name`, `slug`, `code`, `description`, `parent_id`, `nest_left`, `nest_right`, `nest_depth`, `created_at`, `updated_at`) VALUES
(1, 'Uncategorized', 'uncategorized', NULL, NULL, NULL, 1, 2, 0, '2018-04-18 10:53:23', '2018-04-18 10:53:24'),
(2, 'New cat', 'new-cat', NULL, '', NULL, 3, 4, 0, '2018-04-18 10:55:09', '2018-04-18 10:55:10');

-- --------------------------------------------------------

--
-- Structure de la table `rainlab_blog_posts`
--

CREATE TABLE `rainlab_blog_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `content_html` longtext COLLATE utf8mb4_unicode_ci,
  `published_at` timestamp NULL DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `rainlab_blog_posts`
--

INSERT INTO `rainlab_blog_posts` (`id`, `user_id`, `title`, `slug`, `excerpt`, `content`, `content_html`, `published_at`, `published`, `created_at`, `updated_at`) VALUES
(1, NULL, 'First blog post', 'first-blog-post', 'The first ever blog post is here. It might be a good idea to update this post with some more relevant content.', 'This is your first ever **blog post**! It might be a good idea to update this post with some more relevant content.\n\nYou can edit this content by selecting **Blog** from the administration back-end menu.\n\n*Enjoy the good times!*', '<p>This is your first ever <strong>blog post</strong>! It might be a good idea to update this post with some more relevant content.</p>\n<p>You can edit this content by selecting <strong>Blog</strong> from the administration back-end menu.</p>\n<p><em>Enjoy the good times!</em></p>', '2018-04-18 10:53:21', 1, '2018-04-18 10:53:22', '2018-04-18 10:53:22'),
(2, 1, 'New post', 'new-post', '', '## Hey this is a new post', '<h2>Hey this is a new post</h2>', '2018-04-18 10:59:59', 1, '2018-04-18 10:57:00', '2018-04-18 11:00:11');

-- --------------------------------------------------------

--
-- Structure de la table `rainlab_blog_posts_categories`
--

CREATE TABLE `rainlab_blog_posts_categories` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `rainlab_blog_posts_categories`
--

INSERT INTO `rainlab_blog_posts_categories` (`post_id`, `category_id`) VALUES
(2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `rainlab_forum_channels`
--

CREATE TABLE `rainlab_forum_channels` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nest_left` int(11) DEFAULT NULL,
  `nest_right` int(11) DEFAULT NULL,
  `nest_depth` int(11) DEFAULT NULL,
  `count_topics` int(11) NOT NULL DEFAULT '0',
  `count_posts` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `is_moderated` tinyint(1) NOT NULL DEFAULT '0',
  `embed_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `rainlab_forum_channels`
--

INSERT INTO `rainlab_forum_channels` (`id`, `parent_id`, `title`, `slug`, `description`, `nest_left`, `nest_right`, `nest_depth`, `count_topics`, `count_posts`, `created_at`, `updated_at`, `is_hidden`, `is_moderated`, `embed_code`) VALUES
(1, NULL, 'Channel Orange', 'channel-orange', 'A root level forum channel', 1, 12, 0, 0, 0, '2018-07-05 10:09:30', '2018-07-05 10:09:30', 0, 0, NULL),
(2, 1, 'Autumn Leaves', 'autumn-leaves', 'Discussion about the season of falling leaves.', 2, 9, 1, 0, 0, '2018-07-05 10:09:30', '2018-07-05 10:09:30', 0, 0, NULL),
(3, 2, 'September', 'september', 'The start of the fall season.', 3, 4, 2, 0, 0, '2018-07-05 10:09:30', '2018-07-05 10:09:30', 0, 0, NULL),
(4, 2, 'October', 'october', 'The middle of the fall season.', 5, 6, 2, 0, 0, '2018-07-05 10:09:30', '2018-07-05 10:09:30', 0, 0, NULL),
(5, 2, 'November', 'november', 'The end of the fall season.', 7, 8, 2, 0, 0, '2018-07-05 10:09:30', '2018-07-05 10:09:30', 0, 0, NULL),
(6, 1, 'Summer Breeze', 'summer-breeze', 'Discussion about the wind at the ocean.', 10, 11, 1, 0, 0, '2018-07-05 10:09:30', '2018-07-05 10:09:30', 0, 0, NULL),
(7, NULL, 'Channel Green', 'channel-green', 'A root level forum channel', 13, 18, 0, 0, 0, '2018-07-05 10:09:30', '2018-07-05 10:09:31', 0, 0, NULL),
(8, 7, 'Winter Snow', 'winter-snow', 'Discussion about the frosty snow flakes.', 14, 15, 1, 0, 0, '2018-07-05 10:09:30', '2018-07-05 10:09:30', 0, 0, NULL),
(9, 7, 'Spring Trees', 'spring-trees', 'Discussion about the blooming gardens.', 16, 17, 1, 0, 0, '2018-07-05 10:09:31', '2018-07-05 10:09:31', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `rainlab_forum_members`
--

CREATE TABLE `rainlab_forum_members` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_posts` int(11) NOT NULL DEFAULT '0',
  `count_topics` int(11) NOT NULL DEFAULT '0',
  `last_active_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_moderator` tinyint(1) NOT NULL DEFAULT '0',
  `is_banned` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `rainlab_forum_posts`
--

CREATE TABLE `rainlab_forum_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_html` text COLLATE utf8mb4_unicode_ci,
  `topic_id` int(10) UNSIGNED DEFAULT NULL,
  `member_id` int(10) UNSIGNED DEFAULT NULL,
  `edit_user_id` int(11) DEFAULT NULL,
  `delete_user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `rainlab_forum_topics`
--

CREATE TABLE `rainlab_forum_topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `start_member_id` int(11) DEFAULT NULL,
  `last_post_id` int(11) DEFAULT NULL,
  `last_post_member_id` int(11) DEFAULT NULL,
  `last_post_at` datetime DEFAULT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `is_sticky` tinyint(1) NOT NULL DEFAULT '0',
  `is_locked` tinyint(1) NOT NULL DEFAULT '0',
  `count_posts` int(11) NOT NULL DEFAULT '0',
  `count_views` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `embed_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `rainlab_forum_topic_followers`
--

CREATE TABLE `rainlab_forum_topic_followers` (
  `topic_id` int(10) UNSIGNED NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `rainlab_sitemap_definitions`
--

CREATE TABLE `rainlab_sitemap_definitions` (
  `id` int(10) UNSIGNED NOT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `rainlab_sitemap_definitions`
--

INSERT INTO `rainlab_sitemap_definitions` (`id`, `theme`, `data`, `created_at`, `updated_at`) VALUES
(1, 'olympos', '[]', '2018-04-23 22:26:51', '2018-05-07 03:47:56');

-- --------------------------------------------------------

--
-- Structure de la table `rainlab_translate_attributes`
--

CREATE TABLE `rainlab_translate_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_data` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `rainlab_translate_indexes`
--

CREATE TABLE `rainlab_translate_indexes` (
  `id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `rainlab_translate_locales`
--

CREATE TABLE `rainlab_translate_locales` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `sort_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `rainlab_translate_locales`
--

INSERT INTO `rainlab_translate_locales` (`id`, `code`, `name`, `is_default`, `is_enabled`, `sort_order`) VALUES
(1, 'en', 'English', 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `rainlab_translate_messages`
--

CREATE TABLE `rainlab_translate_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_data` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `rainlab_translate_messages`
--

INSERT INTO `rainlab_translate_messages` (`id`, `code`, `message_data`) VALUES
(1, 'site.name', '{\"x\":\"site.name\",\"en\":\"Bonjour\"}'),
(2, 'nav.home', '{\"x\":\"nav.home\",\"en\":\"Home\"}'),
(3, 'nav.languages', '{\"x\":\"nav.languages\",\"en\":\"Languages\"}'),
(4, 'nav.messages', '{\"x\":\"nav.messages\",\"en\":\"Messages\"}'),
(5, 'nav.content', '{\"x\":\"nav.content\",\"en\":\"Content\"}'),
(6, 'nav.video', '{\"x\":\"nav.video\",\"en\":\"Video\"}'),
(7, 'title.languages', '{\"x\":\"title.languages\",\"en\":\"Available Languages\"}'),
(8, 'title.messages', '{\"x\":\"title.messages\",\"en\":\"Translated Messages\"}'),
(9, 'title.video', '{\"x\":\"title.video\",\"en\":\"Screencast Video\"}'),
(10, 'help', '{\"x\":\"Help\"}'),
(11, 'learn.more.about.setting.up.languages', '{\"x\":\"Learn more about setting up languages\"}'),
(12, 'code', '{\"x\":\"Code\"}'),
(13, 'undefined', '{\"x\":\"Undefined\"}'),
(14, 'instructions.for.translating.these.messages', '{\"x\":\"Instructions for translating these messages\"}');

-- --------------------------------------------------------

--
-- Structure de la table `rainlab_user_mail_blockers`
--

CREATE TABLE `rainlab_user_mail_blockers` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci,
  `last_activity` int(11) DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `system_event_logs`
--

CREATE TABLE `system_event_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `level` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `details` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `system_files`
--

CREATE TABLE `system_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `disk_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `content_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `system_files`
--

INSERT INTO `system_files` (`id`, `disk_name`, `file_name`, `file_size`, `content_type`, `title`, `description`, `field`, `attachment_id`, `attachment_type`, `is_public`, `sort_order`, `created_at`, `updated_at`) VALUES
(17, '5b28cb7ccc731743937092.jpg', 'poster.jpg', 140137, 'image/jpeg', NULL, NULL, 'poster', '1', 'Grcote7\\Movies\\Models\\Movie', 1, 17, '2018-06-19 07:23:08', '2018-06-19 07:23:08'),
(18, '5b28cba7ecf5c242492749.jpg', '19476652.jpg-r_1920_1080-f_jpg-q_x-xxyxx.jpg', 68498, 'image/jpeg', NULL, NULL, 'movie_gallery', '1', 'Grcote7\\Movies\\Models\\Movie', 1, 2, '2018-06-19 07:23:51', '2018-06-19 07:25:10'),
(19, '5b28cba7f3447162346338.jpg', '19473198.jpg-r_1920_1080-f_jpg-q_x-xxyxx.jpg', 40733, 'image/jpeg', NULL, NULL, 'movie_gallery', '1', 'Grcote7\\Movies\\Models\\Movie', 1, 1, '2018-06-19 07:23:52', '2018-06-19 07:25:10'),
(20, '5b28cba8babd7521748553.jpg', '19473199.jpg-r_1920_1080-f_jpg-q_x-xxyxx.jpg', 78208, 'image/jpeg', NULL, NULL, 'movie_gallery', '1', 'Grcote7\\Movies\\Models\\Movie', 1, 3, '2018-06-19 07:23:52', '2018-06-19 07:25:10'),
(21, '5b28cba902b31231359535.jpg', '19473200.jpg-r_1920_1080-f_jpg-q_x-xxyxx.jpg', 40464, 'image/jpeg', NULL, NULL, 'movie_gallery', '1', 'Grcote7\\Movies\\Models\\Movie', 1, 4, '2018-06-19 07:23:53', '2018-06-19 07:25:10');

-- --------------------------------------------------------

--
-- Structure de la table `system_mail_layouts`
--

CREATE TABLE `system_mail_layouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8mb4_unicode_ci,
  `content_text` text COLLATE utf8mb4_unicode_ci,
  `content_css` text COLLATE utf8mb4_unicode_ci,
  `is_locked` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `system_mail_layouts`
--

INSERT INTO `system_mail_layouts` (`id`, `name`, `code`, `content_html`, `content_text`, `content_css`, `is_locked`, `created_at`, `updated_at`) VALUES
(1, 'Default layout', 'default', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n</head>\n<body>\n    <style type=\"text/css\" media=\"screen\">\n        {{ brandCss|raw }}\n        {{ css|raw }}\n    </style>\n\n    <table class=\"wrapper layout-default\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n\n        <!-- Header -->\n        {% partial \'header\' body %}\n            {{ subject|raw }}\n        {% endpartial %}\n\n        <tr>\n            <td align=\"center\">\n                <table class=\"content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                    <!-- Email Body -->\n                    <tr>\n                        <td class=\"body\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                            <table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n                                <!-- Body content -->\n                                <tr>\n                                    <td class=\"content-cell\">\n                                        {{ content|raw }}\n                                    </td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n\n        <!-- Footer -->\n        {% partial \'footer\' body %}\n            &copy; {{ \"now\"|date(\"Y\") }} {{ appName }}. All rights reserved.\n        {% endpartial %}\n\n    </table>\n\n</body>\n</html>', '{{ content|raw }}', '@media only screen and (max-width: 600px) {\n    .inner-body {\n        width: 100% !important;\n    }\n\n    .footer {\n        width: 100% !important;\n    }\n}\n\n@media only screen and (max-width: 500px) {\n    .button {\n        width: 100% !important;\n    }\n}', 1, '2018-04-18 09:53:43', '2018-04-18 09:53:43'),
(2, 'System layout', 'system', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n</head>\n<body>\n    <style type=\"text/css\" media=\"screen\">\n        {{ brandCss|raw }}\n        {{ css|raw }}\n    </style>\n\n    <table class=\"wrapper layout-system\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n        <tr>\n            <td align=\"center\">\n                <table class=\"content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                    <!-- Email Body -->\n                    <tr>\n                        <td class=\"body\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                            <table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n                                <!-- Body content -->\n                                <tr>\n                                    <td class=\"content-cell\">\n                                        {{ content|raw }}\n\n                                        <!-- Subcopy -->\n                                        {% partial \'subcopy\' body %}\n                                            **This is an automatic message. Please do not reply to it.**\n                                        {% endpartial %}\n                                    </td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n    </table>\n\n</body>\n</html>', '{{ content|raw }}\n\n\n---\nThis is an automatic message. Please do not reply to it.', '@media only screen and (max-width: 600px) {\n    .inner-body {\n        width: 100% !important;\n    }\n\n    .footer {\n        width: 100% !important;\n    }\n}\n\n@media only screen and (max-width: 500px) {\n    .button {\n        width: 100% !important;\n    }\n}', 1, '2018-04-18 09:53:43', '2018-04-18 09:53:43');

-- --------------------------------------------------------

--
-- Structure de la table `system_mail_partials`
--

CREATE TABLE `system_mail_partials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8mb4_unicode_ci,
  `content_text` text COLLATE utf8mb4_unicode_ci,
  `is_custom` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `system_mail_templates`
--

CREATE TABLE `system_mail_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content_html` text COLLATE utf8mb4_unicode_ci,
  `content_text` text COLLATE utf8mb4_unicode_ci,
  `layout_id` int(11) DEFAULT NULL,
  `is_custom` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `system_parameters`
--

CREATE TABLE `system_parameters` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `system_parameters`
--

INSERT INTO `system_parameters` (`id`, `namespace`, `group`, `item`, `value`) VALUES
(1, 'system', 'update', 'count', '0'),
(2, 'system', 'update', 'retry', '1531413173'),
(3, 'system', 'core', 'build', '\"437\"'),
(4, 'system', 'core', 'hash', '\"d4a4e1f641e333ff5c26037f86cfe619\"'),
(5, 'cms', 'theme', 'active', '\"olympos\"'),
(6, 'system', 'theme', 'history', '[]');

-- --------------------------------------------------------

--
-- Structure de la table `system_plugin_history`
--

CREATE TABLE `system_plugin_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `system_plugin_history`
--

INSERT INTO `system_plugin_history` (`id`, `code`, `type`, `version`, `detail`, `created_at`) VALUES
(1, 'October.Demo', 'comment', '1.0.1', 'First version of Demo', '2018-04-18 09:53:42'),
(2, 'RainLab.Blog', 'script', '1.0.1', 'create_posts_table.php', '2018-04-18 10:53:19'),
(3, 'RainLab.Blog', 'script', '1.0.1', 'create_categories_table.php', '2018-04-18 10:53:21'),
(4, 'RainLab.Blog', 'script', '1.0.1', 'seed_all_tables.php', '2018-04-18 10:53:24'),
(5, 'RainLab.Blog', 'comment', '1.0.1', 'Initialize plugin.', '2018-04-18 10:53:24'),
(6, 'RainLab.Blog', 'comment', '1.0.2', 'Added the processed HTML content column to the posts table.', '2018-04-18 10:53:25'),
(7, 'RainLab.Blog', 'comment', '1.0.3', 'Category component has been merged with Posts component.', '2018-04-18 10:53:25'),
(8, 'RainLab.Blog', 'comment', '1.0.4', 'Improvements to the Posts list management UI.', '2018-04-18 10:53:25'),
(9, 'RainLab.Blog', 'comment', '1.0.5', 'Removes the Author column from blog post list.', '2018-04-18 10:53:26'),
(10, 'RainLab.Blog', 'comment', '1.0.6', 'Featured images now appear in the Post component.', '2018-04-18 10:53:26'),
(11, 'RainLab.Blog', 'comment', '1.0.7', 'Added support for the Static Pages menus.', '2018-04-18 10:53:26'),
(12, 'RainLab.Blog', 'comment', '1.0.8', 'Added total posts to category list.', '2018-04-18 10:53:26'),
(13, 'RainLab.Blog', 'comment', '1.0.9', 'Added support for the Sitemap plugin.', '2018-04-18 10:53:27'),
(14, 'RainLab.Blog', 'comment', '1.0.10', 'Added permission to prevent users from seeing posts they did not create.', '2018-04-18 10:53:27'),
(15, 'RainLab.Blog', 'comment', '1.0.11', 'Deprecate \"idParam\" component property in favour of \"slug\" property.', '2018-04-18 10:53:27'),
(16, 'RainLab.Blog', 'comment', '1.0.12', 'Fixes issue where images cannot be uploaded caused by latest Markdown library.', '2018-04-18 10:53:27'),
(17, 'RainLab.Blog', 'comment', '1.0.13', 'Fixes problem with providing pages to Sitemap and Pages plugins.', '2018-04-18 10:53:28'),
(18, 'RainLab.Blog', 'comment', '1.0.14', 'Add support for CSRF protection feature added to core.', '2018-04-18 10:53:28'),
(19, 'RainLab.Blog', 'comment', '1.1.0', 'Replaced the Post editor with the new core Markdown editor.', '2018-04-18 10:53:28'),
(20, 'RainLab.Blog', 'comment', '1.1.1', 'Posts can now be imported and exported.', '2018-04-18 10:53:28'),
(21, 'RainLab.Blog', 'comment', '1.1.2', 'Posts are no longer visible if the published date has not passed.', '2018-04-18 10:53:29'),
(22, 'RainLab.Blog', 'comment', '1.1.3', 'Added a New Post shortcut button to the blog menu.', '2018-04-18 10:53:29'),
(23, 'RainLab.Blog', 'script', '1.2.0', 'categories_add_nested_fields.php', '2018-04-18 10:53:30'),
(24, 'RainLab.Blog', 'comment', '1.2.0', 'Categories now support nesting.', '2018-04-18 10:53:30'),
(25, 'RainLab.Blog', 'comment', '1.2.1', 'Post slugs now must be unique.', '2018-04-18 10:53:30'),
(26, 'RainLab.Blog', 'comment', '1.2.2', 'Fixes issue on new installs.', '2018-04-18 10:53:30'),
(27, 'RainLab.Blog', 'comment', '1.2.3', 'Minor user interface update.', '2018-04-18 10:53:30'),
(28, 'RainLab.Blog', 'script', '1.2.4', 'update_timestamp_nullable.php', '2018-04-18 10:53:31'),
(29, 'RainLab.Blog', 'comment', '1.2.4', 'Database maintenance. Updated all timestamp columns to be nullable.', '2018-04-18 10:53:32'),
(30, 'RainLab.Blog', 'comment', '1.2.5', 'Added translation support for blog posts.', '2018-04-18 10:53:32'),
(31, 'RainLab.Blog', 'comment', '1.2.6', 'The published field can now supply a time with the date.', '2018-04-18 10:53:32'),
(32, 'RainLab.Blog', 'comment', '1.2.7', 'Introduced a new RSS feed component.', '2018-04-18 10:53:32'),
(33, 'RainLab.Blog', 'comment', '1.2.8', 'Fixes issue with translated `content_html` attribute on blog posts.', '2018-04-18 10:53:33'),
(34, 'RainLab.Blog', 'comment', '1.2.9', 'Added translation support for blog categories.', '2018-04-18 10:53:33'),
(35, 'RainLab.Blog', 'comment', '1.2.10', 'Added translation support for post slugs.', '2018-04-18 10:53:33'),
(36, 'RainLab.Blog', 'comment', '1.2.11', 'Fixes bug where excerpt is not translated.', '2018-04-18 10:53:34'),
(37, 'RainLab.Blog', 'comment', '1.2.12', 'Description field added to category form.', '2018-04-18 10:53:34'),
(38, 'RainLab.Blog', 'comment', '1.2.13', 'Improved support for Static Pages menus, added a blog post and all blog posts.', '2018-04-18 10:53:35'),
(39, 'RainLab.Blog', 'comment', '1.2.14', 'Added post exception property to the post list component, useful for showing related posts.', '2018-04-18 10:53:35'),
(40, 'RainLab.Blog', 'comment', '1.2.15', 'Back-end navigation sort order updated.', '2018-04-18 10:53:35'),
(41, 'RainLab.Blog', 'comment', '1.2.16', 'Added `nextPost` and `previousPost` to the blog post component.', '2018-04-18 10:53:35'),
(42, 'RainLab.Blog', 'comment', '1.2.17', 'Improved the next and previous logic to sort by the published date.', '2018-04-18 10:53:35'),
(43, 'RainLab.Blog', 'comment', '1.2.18', 'Minor change to internals.', '2018-04-18 10:53:36'),
(44, 'RainLab.Blog', 'comment', '1.2.19', 'Improved support for Build 420+', '2018-04-18 10:53:36'),
(45, 'RainLab.Builder', 'comment', '1.0.1', 'Initialize plugin.', '2018-04-19 10:25:14'),
(46, 'RainLab.Builder', 'comment', '1.0.2', 'Fixes the problem with selecting a plugin. Minor localization corrections. Configuration files in the list and form behaviors are now autocomplete.', '2018-04-19 10:25:15'),
(47, 'RainLab.Builder', 'comment', '1.0.3', 'Improved handling of the enum data type.', '2018-04-19 10:25:15'),
(48, 'RainLab.Builder', 'comment', '1.0.4', 'Added user permissions to work with the Builder.', '2018-04-19 10:25:15'),
(49, 'RainLab.Builder', 'comment', '1.0.5', 'Fixed permissions registration.', '2018-04-19 10:25:15'),
(50, 'RainLab.Builder', 'comment', '1.0.6', 'Fixed front-end record ordering in the Record List component.', '2018-04-19 10:25:15'),
(51, 'RainLab.Builder', 'comment', '1.0.7', 'Builder settings are now protected with user permissions. The database table column list is scrollable now. Minor code cleanup.', '2018-04-19 10:25:15'),
(52, 'RainLab.Builder', 'comment', '1.0.8', 'Added the Reorder Controller behavior.', '2018-04-19 10:25:15'),
(53, 'RainLab.Builder', 'comment', '1.0.9', 'Minor API and UI updates.', '2018-04-19 10:25:15'),
(54, 'RainLab.Builder', 'comment', '1.0.10', 'Minor styling update.', '2018-04-19 10:25:15'),
(55, 'RainLab.Builder', 'comment', '1.0.11', 'Fixed a bug where clicking placeholder in a repeater would open Inspector. Fixed a problem with saving forms with repeaters in tabs. Minor style fix.', '2018-04-19 10:25:15'),
(56, 'RainLab.Builder', 'comment', '1.0.12', 'Added support for the Trigger property to the Media Finder widget configuration. Names of form fields and list columns definition files can now contain underscores.', '2018-04-19 10:25:15'),
(57, 'RainLab.Builder', 'comment', '1.0.13', 'Minor styling fix on the database editor.', '2018-04-19 10:25:15'),
(58, 'RainLab.Builder', 'comment', '1.0.14', 'Added support for published_at timestamp field', '2018-04-19 10:25:15'),
(59, 'RainLab.Builder', 'comment', '1.0.15', 'Fixed a bug where saving a localization string in Inspector could cause a JavaScript error. Added support for Timestamps and Soft Deleting for new models.', '2018-04-19 10:25:15'),
(60, 'RainLab.Builder', 'comment', '1.0.16', 'Fixed a bug when saving a form with the Repeater widget in a tab could create invalid fields in the form\'s outside area. Added a check that prevents creating localization strings inside other existing strings.', '2018-04-19 10:25:16'),
(61, 'RainLab.Builder', 'comment', '1.0.17', 'Added support Trigger attribute support for RecordFinder and Repeater form widgets.', '2018-04-19 10:25:16'),
(62, 'RainLab.Builder', 'comment', '1.0.18', 'Fixes a bug where \'::class\' notations in a model class definition could prevent the model from appearing in the Builder model list. Added emptyOption property support to the dropdown form control.', '2018-04-19 10:25:16'),
(63, 'RainLab.Builder', 'comment', '1.0.19', 'Added a feature allowing to add all database columns to a list definition. Added max length validation for database table and column names.', '2018-04-19 10:25:16'),
(64, 'RainLab.Builder', 'comment', '1.0.20', 'Fixes a bug where form the builder could trigger the \"current.hasAttribute is not a function\" error.', '2018-04-19 10:25:16'),
(65, 'RainLab.Builder', 'comment', '1.0.21', 'Back-end navigation sort order updated.', '2018-04-19 10:25:16'),
(66, 'RainLab.Builder', 'comment', '1.0.22', 'Added scopeValue property to the RecordList component.', '2018-04-19 10:25:16'),
(67, 'Grcote7.Movies', 'comment', '1.0.1', 'Initialize plugin.', '2018-04-19 12:10:47'),
(68, 'Grcote7.Movies', 'script', '1.0.2', 'builder_table_create_grcote7_movies_.php', '2018-04-19 12:27:59'),
(69, 'Grcote7.Movies', 'comment', '1.0.2', 'Created table grcote7_movies_', '2018-04-19 12:27:59'),
(70, 'Grcote7.Movies', 'script', '1.0.3', 'builder_table_update_grcote7_movies_.php', '2018-04-19 20:00:57'),
(71, 'Grcote7.Movies', 'comment', '1.0.3', 'Updated table grcote7_movies_', '2018-04-19 20:00:57'),
(72, 'Grcote7.Movies', 'script', '1.0.4', 'builder_table_create_grcote7_movies_genres.php', '2018-04-19 20:47:27'),
(73, 'Grcote7.Movies', 'comment', '1.0.4', 'Created table grcote7_movies_genres', '2018-04-19 20:47:27'),
(74, 'Grcote7.Movies', 'script', '1.0.5', 'builder_table_create_grcote7_movies_movies_genres.php', '2018-04-19 20:57:00'),
(75, 'Grcote7.Movies', 'comment', '1.0.5', 'Created table grcote7_movies_movies_genres', '2018-04-19 20:57:00'),
(76, 'RainLab.Sitemap', 'comment', '1.0.1', 'First version of Sitemap', '2018-04-23 22:23:43'),
(77, 'RainLab.Sitemap', 'script', '1.0.2', 'create_definitions_table.php', '2018-04-23 22:23:44'),
(78, 'RainLab.Sitemap', 'comment', '1.0.2', 'Create definitions table', '2018-04-23 22:23:44'),
(79, 'RainLab.Sitemap', 'comment', '1.0.3', 'Minor improvements to the code.', '2018-04-23 22:23:44'),
(80, 'RainLab.Sitemap', 'comment', '1.0.4', 'Fixes issue where correct headers not being sent.', '2018-04-23 22:23:44'),
(81, 'RainLab.Sitemap', 'comment', '1.0.5', 'Minor back-end styling fix.', '2018-04-23 22:23:44'),
(82, 'RainLab.Sitemap', 'comment', '1.0.6', 'Minor fix to internal API.', '2018-04-23 22:23:44'),
(83, 'RainLab.Sitemap', 'comment', '1.0.7', 'Added access premissions.', '2018-04-23 22:23:44'),
(84, 'RainLab.Sitemap', 'comment', '1.0.8', 'Minor styling updates.', '2018-04-23 22:23:44'),
(85, 'Grcote7.Movies', 'script', '1.0.6', 'builder_table_update_grcote7_movies__2.php', '2018-04-24 04:42:45'),
(86, 'Grcote7.Movies', 'comment', '1.0.6', 'Updated table grcote7_movies_', '2018-04-24 04:42:45'),
(87, 'Grcote7.Movies', 'script', '1.0.7', 'builder_table_create_grcote7_movies_actors.php', '2018-04-24 06:34:56'),
(88, 'Grcote7.Movies', 'comment', '1.0.7', 'Created table grcote7_movies_actors', '2018-04-24 06:34:57'),
(89, 'Grcote7.Movies', 'script', '1.0.8', 'builder_table_update_grcote7_movies__3.php', '2018-04-24 06:48:29'),
(90, 'Grcote7.Movies', 'comment', '1.0.8', 'Updated table grcote7_movies_', '2018-04-24 06:48:29'),
(91, 'Grcote7.Movies', 'script', '1.0.9', 'builder_table_create_grcote7_movies_actors_movies.php', '2018-04-24 06:49:49'),
(92, 'Grcote7.Movies', 'comment', '1.0.9', 'Created table grcote7_movies_actors_movies', '2018-04-24 06:49:49'),
(93, 'Grcote7.Contact', 'comment', '1.0.1', 'Initialize plugin.', '2018-04-25 22:12:42'),
(94, 'RainLab.User', 'script', '1.0.1', 'create_users_table.php', '2018-04-27 12:11:01'),
(95, 'RainLab.User', 'script', '1.0.1', 'create_throttle_table.php', '2018-04-27 12:11:01'),
(96, 'RainLab.User', 'comment', '1.0.1', 'Initialize plugin.', '2018-04-27 12:11:01'),
(97, 'RainLab.User', 'comment', '1.0.2', 'Seed tables.', '2018-04-27 12:11:01'),
(98, 'RainLab.User', 'comment', '1.0.3', 'Translated hard-coded text to language strings.', '2018-04-27 12:11:02'),
(99, 'RainLab.User', 'comment', '1.0.4', 'Improvements to user-interface for Location manager.', '2018-04-27 12:11:02'),
(100, 'RainLab.User', 'comment', '1.0.5', 'Added contact details for users.', '2018-04-27 12:11:02'),
(101, 'RainLab.User', 'script', '1.0.6', 'create_mail_blockers_table.php', '2018-04-27 12:11:02'),
(102, 'RainLab.User', 'comment', '1.0.6', 'Added Mail Blocker utility so users can block specific mail templates.', '2018-04-27 12:11:02'),
(103, 'RainLab.User', 'comment', '1.0.7', 'Add back-end Settings page.', '2018-04-27 12:11:02'),
(104, 'RainLab.User', 'comment', '1.0.8', 'Updated the Settings page.', '2018-04-27 12:11:02'),
(105, 'RainLab.User', 'comment', '1.0.9', 'Adds new welcome mail message for users and administrators.', '2018-04-27 12:11:03'),
(106, 'RainLab.User', 'comment', '1.0.10', 'Adds administrator-only activation mode.', '2018-04-27 12:11:03'),
(107, 'RainLab.User', 'script', '1.0.11', 'users_add_login_column.php', '2018-04-27 12:11:03'),
(108, 'RainLab.User', 'comment', '1.0.11', 'Users now have an optional login field that defaults to the email field.', '2018-04-27 12:11:03'),
(109, 'RainLab.User', 'script', '1.0.12', 'users_rename_login_to_username.php', '2018-04-27 12:11:04'),
(110, 'RainLab.User', 'comment', '1.0.12', 'Create a dedicated setting for choosing the login mode.', '2018-04-27 12:11:04'),
(111, 'RainLab.User', 'comment', '1.0.13', 'Minor fix to the Account sign in logic.', '2018-04-27 12:11:04'),
(112, 'RainLab.User', 'comment', '1.0.14', 'Minor improvements to the code.', '2018-04-27 12:11:04'),
(113, 'RainLab.User', 'script', '1.0.15', 'users_add_surname.php', '2018-04-27 12:11:05'),
(114, 'RainLab.User', 'comment', '1.0.15', 'Adds last name column to users table (surname).', '2018-04-27 12:11:05'),
(115, 'RainLab.User', 'comment', '1.0.16', 'Require permissions for settings page too.', '2018-04-27 12:11:05'),
(116, 'RainLab.User', 'comment', '1.1.0', '!!! Profile fields and Locations have been removed.', '2018-04-27 12:11:05'),
(117, 'RainLab.User', 'script', '1.1.1', 'create_user_groups_table.php', '2018-04-27 12:11:06'),
(118, 'RainLab.User', 'script', '1.1.1', 'seed_user_groups_table.php', '2018-04-27 12:11:06'),
(119, 'RainLab.User', 'comment', '1.1.1', 'Users can now be added to groups.', '2018-04-27 12:11:06'),
(120, 'RainLab.User', 'comment', '1.1.2', 'A raw URL can now be passed as the redirect property in the Account component.', '2018-04-27 12:11:06'),
(121, 'RainLab.User', 'comment', '1.1.3', 'Adds a super user flag to the users table, reserved for future use.', '2018-04-27 12:11:06'),
(122, 'RainLab.User', 'comment', '1.1.4', 'User list can be filtered by the group they belong to.', '2018-04-27 12:11:06'),
(123, 'RainLab.User', 'comment', '1.1.5', 'Adds a new permission to hide the User settings menu item.', '2018-04-27 12:11:06'),
(124, 'RainLab.User', 'script', '1.2.0', 'users_add_deleted_at.php', '2018-04-27 12:11:07'),
(125, 'RainLab.User', 'comment', '1.2.0', 'Users can now deactivate their own accounts.', '2018-04-27 12:11:07'),
(126, 'RainLab.User', 'comment', '1.2.1', 'New feature for checking if a user is recently active/online.', '2018-04-27 12:11:07'),
(127, 'RainLab.User', 'comment', '1.2.2', 'Add bulk action button to user list.', '2018-04-27 12:11:07'),
(128, 'RainLab.User', 'comment', '1.2.3', 'Included some descriptive paragraphs in the Reset Password component markup.', '2018-04-27 12:11:07'),
(129, 'RainLab.User', 'comment', '1.2.4', 'Added a checkbox for blocking all mail sent to the user.', '2018-04-27 12:11:07'),
(130, 'RainLab.User', 'script', '1.2.5', 'update_timestamp_nullable.php', '2018-04-27 12:11:07'),
(131, 'RainLab.User', 'comment', '1.2.5', 'Database maintenance. Updated all timestamp columns to be nullable.', '2018-04-27 12:11:08'),
(132, 'RainLab.User', 'script', '1.2.6', 'users_add_last_seen.php', '2018-04-27 12:11:08'),
(133, 'RainLab.User', 'comment', '1.2.6', 'Add a dedicated last seen column for users.', '2018-04-27 12:11:08'),
(134, 'RainLab.User', 'comment', '1.2.7', 'Minor fix to user timestamp attributes.', '2018-04-27 12:11:08'),
(135, 'RainLab.User', 'comment', '1.2.8', 'Add date range filter to users list. Introduced a logout event.', '2018-04-27 12:11:08'),
(136, 'RainLab.User', 'comment', '1.2.9', 'Add invitation mail for new accounts created in the back-end.', '2018-04-27 12:11:08'),
(137, 'RainLab.User', 'script', '1.3.0', 'users_add_guest_flag.php', '2018-04-27 12:11:09'),
(138, 'RainLab.User', 'script', '1.3.0', 'users_add_superuser_flag.php', '2018-04-27 12:11:09'),
(139, 'RainLab.User', 'comment', '1.3.0', 'Introduced guest user accounts.', '2018-04-27 12:11:09'),
(140, 'RainLab.User', 'comment', '1.3.1', 'User notification variables can now be extended.', '2018-04-27 12:11:09'),
(141, 'RainLab.User', 'comment', '1.3.2', 'Minor fix to the Auth::register method.', '2018-04-27 12:11:09'),
(142, 'RainLab.User', 'comment', '1.3.3', 'Allow prevention of concurrent user sessions via the user settings.', '2018-04-27 12:11:09'),
(143, 'RainLab.User', 'comment', '1.3.4', 'Added force secure protocol property to the account component.', '2018-04-27 12:11:09'),
(144, 'RainLab.User', 'comment', '1.4.0', '!!! The Notifications tab in User settings has been removed.', '2018-04-27 12:11:09'),
(145, 'RainLab.User', 'comment', '1.4.1', 'Added support for user impersonation.', '2018-04-27 12:11:09'),
(146, 'RainLab.User', 'comment', '1.4.2', 'Fixes security bug in Password Reset component.', '2018-04-27 12:11:09'),
(147, 'RainLab.User', 'comment', '1.4.3', 'Fixes session handling for AJAX requests.', '2018-04-27 12:11:10'),
(148, 'RainLab.User', 'comment', '1.4.4', 'Fixes bug where impersonation touches the last seen timestamp.', '2018-04-27 12:11:10'),
(149, 'RainLab.User', 'comment', '1.4.5', 'Added token fallback process to Account / Reset Password components when parameter is missing.', '2018-04-27 12:11:10'),
(150, 'VojtaSvoboda.TwigExtensions', 'comment', '1.0.1', 'First version of TwigExtensions', '2018-04-27 13:44:51'),
(151, 'VojtaSvoboda.TwigExtensions', 'comment', '1.0.2', 'Add template_from_string function', '2018-04-27 13:44:51'),
(152, 'VojtaSvoboda.TwigExtensions', 'comment', '1.0.3', 'Fix uppercase, lowercase and ucfirst for UTF-8 characters', '2018-04-27 13:44:52'),
(153, 'VojtaSvoboda.TwigExtensions', 'comment', '1.0.4', 'Add leftpad, rightpad and strpad filters. Cover by unit tests.', '2018-04-27 13:44:52'),
(154, 'VojtaSvoboda.TwigExtensions', 'comment', '1.0.5', 'Add config function (thanks to Sebastian Hilger)', '2018-04-27 13:44:52'),
(155, 'VojtaSvoboda.TwigExtensions', 'comment', '1.0.6', 'Fix localizednumber and localizedcurrency filters (thanks to Vita Zoubek)', '2018-04-27 13:44:52'),
(156, 'VojtaSvoboda.TwigExtensions', 'comment', '1.0.7', 'Add the session() and trans() helper functions (thanks to Sebastian Hilger)', '2018-04-27 13:44:52'),
(157, 'VojtaSvoboda.TwigExtensions', 'comment', '1.0.8', 'Plugin can be installed over Composer.', '2018-04-27 13:44:52'),
(158, 'VojtaSvoboda.TwigExtensions', 'comment', '1.0.9', 'Add var_dump filter and function.', '2018-04-27 13:44:52'),
(159, 'VojtaSvoboda.TwigExtensions', 'comment', '1.0.10', 'Remove pre tag from var_dump', '2018-04-27 13:44:52'),
(160, 'VojtaSvoboda.TwigExtensions', 'comment', '1.0.11', 'Add mailto filter for rendering encrypted email addresses.', '2018-04-27 13:44:52'),
(161, 'VojtaSvoboda.TwigExtensions', 'comment', '1.0.12', 'Add mailto text parameter and rtl filter.', '2018-04-27 13:44:52'),
(162, 'VojtaSvoboda.TwigExtensions', 'comment', '1.0.13', 'Make time_diff translatable.', '2018-04-27 13:44:52'),
(163, 'VojtaSvoboda.TwigExtensions', 'comment', '1.0.14', 'Add pt-br locale for time_diff translation (thanks to Ronaldo Ribeiro de Sousa)', '2018-04-27 13:44:52'),
(164, 'VojtaSvoboda.TwigExtensions', 'comment', '1.0.15', 'Add DE and HU locale (thanks to Szabó Gergő and Sebastian Hilger)', '2018-04-27 13:44:52'),
(165, 'VojtaSvoboda.TwigExtensions', 'comment', '1.1.0', 'Make changes for Laravel 5.5.', '2018-04-27 13:44:52'),
(166, 'VojtaSvoboda.TwigExtensions', 'comment', '1.1.1', 'Add revision filter', '2018-04-27 13:44:52'),
(167, 'VojtaSvoboda.TwigExtensions', 'comment', '1.1.2', 'Add strip_tags filter', '2018-04-27 13:44:53'),
(168, 'VojtaSvoboda.TwigExtensions', 'comment', '1.1.3', 'Add sortbyfield filter to sorting arrays/fields by key.', '2018-04-27 13:44:53'),
(169, 'VojtaSvoboda.TwigExtensions', 'comment', '1.2.0', 'Require PHP 7.0 as minimum version.', '2018-04-27 13:44:53'),
(170, 'VojtaSvoboda.TwigExtensions', 'comment', '1.2.1', 'Add linter and code sniffer for better automatization.', '2018-04-27 13:44:53'),
(172, 'Grcote7.Profile', 'script', '1.0.1', 'add_new_fields.php', '2018-04-29 19:42:01'),
(173, 'Grcote7.Profile', 'comment', '1.0.1', 'Initialize plugin.', '2018-04-29 19:42:01'),
(174, 'Grcote7.Movies', 'script', '1.0.10', 'seed.php', '2018-04-30 08:58:32'),
(175, 'Grcote7.Movies', 'comment', '1.0.10', 'Seed movies', '2018-04-30 08:58:32'),
(176, 'OFFLINE.SiteSearch', 'comment', '1.0.1', 'First version of SiteSearch', '2018-04-30 08:58:32'),
(177, 'OFFLINE.SiteSearch', 'comment', '1.0.2', 'Added experimental CMS pages results provider', '2018-04-30 08:58:33'),
(178, 'OFFLINE.SiteSearch', 'comment', '1.0.3', 'Added missing component', '2018-04-30 08:58:33'),
(179, 'OFFLINE.SiteSearch', 'comment', '1.0.4', 'Added support for RadiantWeb.ProBlog', '2018-04-30 08:58:33'),
(180, 'OFFLINE.SiteSearch', 'comment', '1.0.5', 'Moved configuration to the backend', '2018-04-30 08:58:33'),
(181, 'OFFLINE.SiteSearch', 'comment', '1.0.6', 'Fixed hardcoded url in pagination', '2018-04-30 08:58:33'),
(182, 'OFFLINE.SiteSearch', 'comment', '1.0.7', 'Add function for getting last page number (Thanks to vojtasvoboda)', '2018-04-30 08:58:33'),
(183, 'OFFLINE.SiteSearch', 'comment', '1.0.8', 'Add cs_CZ locale (Thanks to vojtasvoboda)', '2018-04-30 08:58:33'),
(184, 'OFFLINE.SiteSearch', 'comment', '1.0.9', 'Added support for ArrizalAmin.Portfolio plugin', '2018-04-30 08:58:33'),
(185, 'OFFLINE.SiteSearch', 'comment', '1.0.10', 'Removed unused component', '2018-04-30 08:58:33'),
(186, 'OFFLINE.SiteSearch', 'script', '1.1.0', 'Fixed bug where RainLab.Pages results were displayed twice', '2018-04-30 08:58:33'),
(187, 'OFFLINE.SiteSearch', 'script', '1.1.0', 'Honor disabled plugins setting', '2018-04-30 08:58:33'),
(188, 'OFFLINE.SiteSearch', 'script', '1.1.0', 'Generate absolute URLs in search results by default', '2018-04-30 08:58:33'),
(189, 'OFFLINE.SiteSearch', 'comment', '1.1.0', 'Added support for translated contents in RainLab.Pages, ArrizalAmin.Portfolio and RadiantWeb.ProBlog', '2018-04-30 08:58:33'),
(190, 'OFFLINE.SiteSearch', 'comment', '1.1.1', 'Added optimized siteSearchInclude component for cms pages search', '2018-04-30 08:58:33'),
(191, 'OFFLINE.SiteSearch', 'comment', '1.1.2', 'Fixed backend permissions', '2018-04-30 08:58:33'),
(192, 'OFFLINE.SiteSearch', 'comment', '1.1.3', 'Added ru_RU locale (Thanks to mokeev1995)', '2018-04-30 08:58:33'),
(193, 'OFFLINE.SiteSearch', 'script', '1.2.1', 'Refactored search providers and results page', '2018-04-30 08:58:34'),
(194, 'OFFLINE.SiteSearch', 'comment', '1.2.1', 'Added support for Feegleweb.Octoshop (Thanks to billyzduke)', '2018-04-30 08:58:34'),
(195, 'OFFLINE.SiteSearch', 'comment', '1.2.2', 'Minor bugfix in Feegleweb.Octoshop settings page translation', '2018-04-30 08:58:34'),
(196, 'OFFLINE.SiteSearch', 'comment', '1.2.3', 'Fixed bug where the search results sometimes broke the page layout', '2018-04-30 08:58:34'),
(197, 'OFFLINE.SiteSearch', 'comment', '1.2.4', 'Fixed bug where unavailable thumbnails lead to an error', '2018-04-30 08:58:34'),
(198, 'OFFLINE.SiteSearch', 'comment', '1.2.5', 'Fixed bug where the provider badge is not displayed for custom search providers', '2018-04-30 08:58:34'),
(199, 'OFFLINE.SiteSearch', 'comment', '1.2.6', 'Added support for Responsiv.Showcase (Thanks to MichiReich)', '2018-04-30 08:58:34'),
(200, 'OFFLINE.SiteSearch', 'comment', '1.2.7', 'Fixed bug where custom url settings were ignored in search results for some providers', '2018-04-30 08:58:34'),
(201, 'OFFLINE.SiteSearch', 'comment', '1.2.8', 'Added support for viewBag properties in RainLab.Pages', '2018-04-30 08:58:34'),
(202, 'OFFLINE.SiteSearch', 'comment', '1.2.9', 'Added support for static page component hosts', '2018-04-30 08:58:34'),
(203, 'OFFLINE.SiteSearch', 'comment', '1.2.10', 'Added support for multiple variables in Rainlab.Blog urls (Thanks to graker)', '2018-04-30 08:58:34'),
(204, 'OFFLINE.SiteSearch', 'comment', '1.2.11', 'Optimized handling of multibyte strings', '2018-04-30 08:58:34'),
(205, 'OFFLINE.SiteSearch', 'comment', '1.2.12', 'Added support for Jiri.Jkshop', '2018-04-30 08:58:34'),
(206, 'OFFLINE.SiteSearch', 'comment', '1.2.13', 'Minor bugfixes for marked queries in search results and Rainlab.Blog provider (Thanks to graker)', '2018-04-30 08:58:34'),
(207, 'OFFLINE.SiteSearch', 'comment', '1.2.14', 'Fixed bug in Jiri.JKShop provider', '2018-04-30 08:58:34'),
(208, 'OFFLINE.SiteSearch', 'comment', '1.2.15', 'Added a new meta property for search results (thanks to cracki)', '2018-04-30 08:58:34'),
(209, 'OFFLINE.SiteSearch', 'comment', '1.2.16', 'Added Persian (Farsi) translations (thanks to cracki)', '2018-04-30 08:58:34'),
(210, 'OFFLINE.SiteSearch', 'comment', '1.2.17', 'Added support for Indikator.News (thanks to gergo85)', '2018-04-30 08:58:34'),
(211, 'OFFLINE.SiteSearch', 'comment', '1.2.18', 'Fixed bug where titles of static pages where not searched (thanks to beenen445)', '2018-04-30 08:58:34'),
(212, 'OFFLINE.SiteSearch', 'comment', '1.2.19', 'Added support for OFFLINE.SnipcartShop', '2018-04-30 08:58:35'),
(213, 'OFFLINE.SiteSearch', 'comment', '1.2.20', 'Added support for VojtaSvoboda.Brands (thanks to vojtasvoboda)', '2018-04-30 08:58:35'),
(214, 'OFFLINE.SiteSearch', 'comment', '1.2.21', 'Added Portuguese translations (thanks to ribsousa)', '2018-04-30 08:58:35'),
(215, 'OFFLINE.SiteSearch', 'comment', '1.2.22', 'Fixed Portuguese translations', '2018-04-30 08:58:35'),
(216, 'OFFLINE.SiteSearch', 'comment', '1.2.23', 'Fixed support for translated Rainlab.Blog contents', '2018-04-30 08:58:35'),
(217, 'OFFLINE.SiteSearch', 'comment', '1.2.24', 'Added composer.json to allow loading plugin as dependency (thanks to adduc)', '2018-04-30 08:58:35'),
(218, 'OFFLINE.SiteSearch', 'comment', '1.2.25', 'Fixed bug that sometimes lead to broken html in search results (thanks to graker)', '2018-04-30 08:58:35'),
(219, 'OFFLINE.SiteSearch', 'comment', '1.2.26', 'Exclude hidden static pages from search results (thanks to plyusninva)', '2018-04-30 08:58:35'),
(220, 'OFFLINE.SiteSearch', 'comment', '1.2.27', 'Added support for Graker.PhotoAlbums (thanks to graker)', '2018-04-30 08:58:35'),
(221, 'OFFLINE.SiteSearch', 'comment', '1.2.28', 'Added new result.identifier property', '2018-04-30 08:58:35'),
(222, 'OFFLINE.SiteSearch', 'comment', '1.2.29', 'Optimized thumbnail generation for Graker.PhotoAlbums results (thanks to graker)', '2018-04-30 08:58:35'),
(223, 'OFFLINE.SiteSearch', 'comment', '1.2.30', 'The searchResults component\'s resultsCollection is now publically accessible', '2018-04-30 08:58:35'),
(224, 'OFFLINE.SiteSearch', 'comment', '1.2.31', 'Added model property for each search result to retreive the original model the result was generated from', '2018-04-30 08:58:35'),
(225, 'OFFLINE.SiteSearch', 'comment', '1.2.32', 'Added support for custom ResultsProvider classes', '2018-04-30 08:58:35'),
(226, 'OFFLINE.SiteSearch', 'comment', '1.2.33', 'Fix the use of multiple custom ResultsProvider for a plugin', '2018-04-30 08:58:35'),
(227, 'OFFLINE.SiteSearch', 'comment', '1.3.1', 'Added new searchInput component with search-as-you-type feature', '2018-04-30 08:58:35'),
(228, 'OFFLINE.SiteSearch', 'comment', '1.3.2', 'Fixed bug in AutoCompleteComponent', '2018-04-30 08:58:35'),
(229, 'OFFLINE.SiteSearch', 'comment', '1.3.3', '!!! All results are now returned with a relative URL to prevent problems with translated contents. Make sure to pass your result.url throught the \"app\" filter if you are using your own search result partials', '2018-04-30 08:58:36'),
(230, 'OFFLINE.SiteSearch', 'comment', '1.3.4', 'Fixed undefined index error when a static page doesn\'t have a title set', '2018-04-30 08:58:36'),
(231, 'OFFLINE.SiteSearch', 'comment', '1.3.5', 'Added ability to edit the user\'s query before searching', '2018-04-30 08:58:36'),
(232, 'OFFLINE.SiteSearch', 'comment', '1.3.6', '!!! Using RadiantWeb.ProBlog\'s internal settings to get the correct parent page for a blog post result. This enables support for multiple blogs on the same website. If your blog search results have wrong URLs after this update make sure to configure your default page for rendering blog posts via the ProBlog backend settings.', '2018-04-30 08:58:36'),
(233, 'OFFLINE.SiteSearch', 'comment', '1.3.7', 'Added the ability to add age penalties to search results. This can be used to show newer results higher up in your search results.', '2018-04-30 08:58:36'),
(234, 'OFFLINE.SiteSearch', 'comment', '1.3.8', 'Optimized support for multiple SearchInput components on a single page.', '2018-04-30 08:58:36'),
(235, 'Rahman.Faker', 'comment', '1.0.1', 'First version of Faker', '2018-04-30 08:58:36'),
(236, 'RainLab.Pages', 'comment', '1.0.1', 'Implemented the static pages management and the Static Page component.', '2018-04-30 09:33:23'),
(237, 'RainLab.Pages', 'comment', '1.0.2', 'Fixed the page preview URL.', '2018-04-30 09:33:24'),
(238, 'RainLab.Pages', 'comment', '1.0.3', 'Implemented menus.', '2018-04-30 09:33:24'),
(239, 'RainLab.Pages', 'comment', '1.0.4', 'Implemented the content block management and placeholder support.', '2018-04-30 09:33:24'),
(240, 'RainLab.Pages', 'comment', '1.0.5', 'Added support for the Sitemap plugin.', '2018-04-30 09:33:24'),
(241, 'RainLab.Pages', 'comment', '1.0.6', 'Minor updates to the internal API.', '2018-04-30 09:33:24'),
(242, 'RainLab.Pages', 'comment', '1.0.7', 'Added the Snippets feature.', '2018-04-30 09:33:24'),
(243, 'RainLab.Pages', 'comment', '1.0.8', 'Minor improvements to the code.', '2018-04-30 09:33:24'),
(244, 'RainLab.Pages', 'comment', '1.0.9', 'Fixes issue where Snippet tab is missing from the Partials form.', '2018-04-30 09:33:24'),
(245, 'RainLab.Pages', 'comment', '1.0.10', 'Add translations for various locales.', '2018-04-30 09:33:24'),
(246, 'RainLab.Pages', 'comment', '1.0.11', 'Fixes issue where placeholders tabs were missing from Page form.', '2018-04-30 09:33:24'),
(247, 'RainLab.Pages', 'comment', '1.0.12', 'Implement Media Manager support.', '2018-04-30 09:33:24'),
(248, 'RainLab.Pages', 'script', '1.1.0', 'snippets_rename_viewbag_properties.php', '2018-04-30 09:33:25'),
(249, 'RainLab.Pages', 'comment', '1.1.0', 'Adds meta title and description to pages. Adds |staticPage filter.', '2018-04-30 09:33:25'),
(250, 'RainLab.Pages', 'comment', '1.1.1', 'Add support for Syntax Fields.', '2018-04-30 09:33:25'),
(251, 'RainLab.Pages', 'comment', '1.1.2', 'Static Breadcrumbs component now respects the hide from navigation setting.', '2018-04-30 09:33:25'),
(252, 'RainLab.Pages', 'comment', '1.1.3', 'Minor back-end styling fix.', '2018-04-30 09:33:25'),
(253, 'RainLab.Pages', 'comment', '1.1.4', 'Minor fix to the StaticPage component API.', '2018-04-30 09:33:25'),
(254, 'RainLab.Pages', 'comment', '1.1.5', 'Fixes bug when using syntax fields.', '2018-04-30 09:33:25'),
(255, 'RainLab.Pages', 'comment', '1.1.6', 'Minor styling fix to the back-end UI.', '2018-04-30 09:33:26'),
(256, 'RainLab.Pages', 'comment', '1.1.7', 'Improved menu item form to include CSS class, open in a new window and hidden flag.', '2018-04-30 09:33:26'),
(257, 'RainLab.Pages', 'comment', '1.1.8', 'Improved the output of snippet partials when saved.', '2018-04-30 09:33:26'),
(258, 'RainLab.Pages', 'comment', '1.1.9', 'Minor update to snippet inspector internal API.', '2018-04-30 09:33:26'),
(259, 'RainLab.Pages', 'comment', '1.1.10', 'Fixes a bug where selecting a layout causes permanent unsaved changes.', '2018-04-30 09:33:26'),
(260, 'RainLab.Pages', 'comment', '1.1.11', 'Add support for repeater syntax field.', '2018-04-30 09:33:26'),
(261, 'RainLab.Pages', 'comment', '1.2.0', 'Added support for translations, UI updates.', '2018-04-30 09:33:26'),
(262, 'RainLab.Pages', 'comment', '1.2.1', 'Use nice titles when listing the content files.', '2018-04-30 09:33:26'),
(263, 'RainLab.Pages', 'comment', '1.2.2', 'Minor styling update.', '2018-04-30 09:33:26'),
(264, 'RainLab.Pages', 'comment', '1.2.3', 'Snippets can now be moved by dragging them.', '2018-04-30 09:33:27'),
(265, 'RainLab.Pages', 'comment', '1.2.4', 'Fixes a bug where the cursor is misplaced when editing text files.', '2018-04-30 09:33:27'),
(266, 'RainLab.Pages', 'comment', '1.2.5', 'Fixes a bug where the parent page is lost upon changing a page layout.', '2018-04-30 09:33:27'),
(267, 'RainLab.Pages', 'comment', '1.2.6', 'Shared view variables are now passed to static pages.', '2018-04-30 09:33:27'),
(268, 'RainLab.Pages', 'comment', '1.2.7', 'Fixes issue with duplicating properties when adding multiple snippets on the same page.', '2018-04-30 09:33:27'),
(269, 'RainLab.Pages', 'comment', '1.2.8', 'Fixes a bug where creating a content block without extension doesn\'t save the contents to file.', '2018-04-30 09:33:27'),
(270, 'RainLab.Pages', 'comment', '1.2.9', 'Add conditional support for translating page URLs.', '2018-04-30 09:33:27'),
(271, 'RainLab.Pages', 'comment', '1.2.10', 'Streamline generation of URLs to use the new Cms::url helper.', '2018-04-30 09:33:27'),
(272, 'RainLab.Pages', 'comment', '1.2.11', 'Implements repeater usage with translate plugin.', '2018-04-30 09:33:27'),
(273, 'RainLab.Pages', 'comment', '1.2.12', 'Fixes minor issue when using snippets and switching the application locale.', '2018-04-30 09:33:27'),
(274, 'RainLab.Pages', 'comment', '1.2.13', 'Fixes bug when AJAX is used on a page that does not yet exist.', '2018-04-30 09:33:27'),
(275, 'RainLab.Pages', 'comment', '1.2.14', 'Add theme logging support for changes made to menus.', '2018-04-30 09:33:27'),
(276, 'RainLab.Pages', 'comment', '1.2.15', 'Back-end navigation sort order updated.', '2018-04-30 09:33:27'),
(277, 'RainLab.Pages', 'comment', '1.2.16', 'Fixes a bug when saving a template that has been modified outside of the CMS (mtime mismatch).', '2018-04-30 09:33:27'),
(278, 'RainLab.Pages', 'comment', '1.2.17', 'Changes locations of custom fields to secondary tabs instead of the primary Settings area. New menu search ability on adding menu items', '2018-04-30 09:33:27'),
(279, 'RainLab.Pages', 'comment', '1.2.18', 'Fixes cache-invalidation issues when RainLab.Translate is not installed. Added Greek & Simplified Chinese translations. Removed deprecated calls. Allowed saving HTML in snippet properties. Added support for the MediaFinder in menu items.', '2018-04-30 09:33:28'),
(280, 'Grcote7.Movies', 'script', '1.0.11', 'builder_table_update_grcote7_movies__4.php', '2018-04-30 13:58:46'),
(281, 'Grcote7.Movies', 'comment', '1.0.11', 'Updated table grcote7_movies_', '2018-04-30 13:58:46'),
(282, 'Watchlearn.Contact', 'comment', '1.0.1', 'Initialize plugin.', '2018-05-05 22:22:13'),
(283, 'Watchlearn.Movies', 'comment', '1.0.1', 'Initialize plugin.', '2018-05-05 22:22:14'),
(284, 'Watchlearn.Movies', 'script', '1.0.2', 'builder_table_create_watchlearn_movies_.php', '2018-05-05 22:22:14'),
(285, 'Watchlearn.Movies', 'comment', '1.0.2', 'Created table watchlearn_movies_', '2018-05-05 22:22:14'),
(286, 'Watchlearn.Movies', 'script', '1.0.3', 'builder_table_update_watchlearn_movies_.php', '2018-05-05 22:22:14'),
(287, 'Watchlearn.Movies', 'comment', '1.0.3', 'Updated table watchlearn_movies_', '2018-05-05 22:22:14'),
(288, 'Watchlearn.Movies', 'script', '1.0.4', 'builder_table_create_watchlearn_movies_genres.php', '2018-05-05 22:22:15'),
(289, 'Watchlearn.Movies', 'comment', '1.0.4', 'Created table watchlearn_movies_genres', '2018-05-05 22:22:15'),
(290, 'Watchlearn.Movies', 'script', '1.0.5', 'builder_table_create_watchlearn_movies_movies_genres.php', '2018-05-05 22:22:15'),
(291, 'Watchlearn.Movies', 'comment', '1.0.5', 'Created table watchlearn_movies_movies_genres', '2018-05-05 22:22:15'),
(292, 'Watchlearn.Movies', 'script', '1.0.6', 'builder_table_update_watchlearn_movies__2.php', '2018-05-05 22:22:15'),
(293, 'Watchlearn.Movies', 'comment', '1.0.6', 'Updated table watchlearn_movies_', '2018-05-05 22:22:16'),
(294, 'Watchlearn.Movies', 'script', '1.0.7', 'builder_table_create_watchlearn_movies_actors.php', '2018-05-05 22:22:16'),
(295, 'Watchlearn.Movies', 'comment', '1.0.7', 'Created table watchlearn_movies_actors', '2018-05-05 22:22:16'),
(296, 'Watchlearn.Movies', 'script', '1.0.8', 'builder_table_delete_watchlearn_movies_actors.php', '2018-05-05 22:22:16'),
(297, 'Watchlearn.Movies', 'comment', '1.0.8', 'Drop table watchlearn_movies_actors', '2018-05-05 22:22:16'),
(298, 'Watchlearn.Movies', 'script', '1.0.9', 'builder_table_create_watchlearn_movies_actors_2.php', '2018-05-05 22:22:16'),
(299, 'Watchlearn.Movies', 'comment', '1.0.9', 'Created table watchlearn_movies_actors', '2018-05-05 22:22:16'),
(300, 'Watchlearn.Movies', 'script', '1.0.10', 'builder_table_update_watchlearn_movies__3.php', '2018-05-05 22:22:17'),
(301, 'Watchlearn.Movies', 'comment', '1.0.10', 'Updated table watchlearn_movies_', '2018-05-05 22:22:17'),
(302, 'Watchlearn.Movies', 'script', '1.0.11', 'builder_table_create_watchlearn_movies_actors_movies.php', '2018-05-05 22:22:17'),
(303, 'Watchlearn.Movies', 'comment', '1.0.11', 'Created table watchlearn_movies_actors_movies', '2018-05-05 22:22:17'),
(304, 'Watchlearn.Movies', 'script', '1.0.12', 'seed.php', '2018-05-05 22:22:20'),
(305, 'Watchlearn.Movies', 'comment', '1.0.12', 'Seed movies', '2018-05-05 22:22:20'),
(306, 'Watchlearn.Movies', 'script', '1.0.13', 'builder_table_update_watchlearn_movies__4.php', '2018-05-05 22:22:21'),
(307, 'Watchlearn.Movies', 'comment', '1.0.13', 'Updated table watchlearn_movies_', '2018-05-05 22:22:21'),
(308, 'VojtaSvoboda.TwigExtensions', 'comment', '1.2.2', 'Add str_replace filter (thanks to Szabó Gergő)', '2018-05-14 07:16:19'),
(309, 'Grcote7.Tutos', 'comment', '1.0.1', 'Initialize plugin.', '2018-05-14 07:20:35'),
(310, 'Grcote7.Tutos', 'script', '1.0.2', 'builder_table_create_grcote7_tutos_courses.php', '2018-05-14 07:30:31'),
(311, 'Grcote7.Tutos', 'comment', '1.0.2', 'Created table grcote7_tutos_courses', '2018-05-14 07:30:31'),
(312, 'Grcote7.Tutos', 'script', '1.0.3', 'builder_table_create_grcote7_tutos_tutos.php', '2018-05-14 07:33:27'),
(313, 'Grcote7.Tutos', 'comment', '1.0.3', 'Created table grcote7_tutos_tutos', '2018-05-14 07:33:27'),
(314, 'Grcote7.Tutos', 'script', '1.0.4', 'builder_table_update_grcote7_tutos_courses.php', '2018-05-14 07:34:10'),
(315, 'Grcote7.Tutos', 'comment', '1.0.4', 'Updated table grcote7_tutos_courses', '2018-05-14 07:34:11'),
(316, 'Grcote7.Tutos', 'script', '1.0.5', 'builder_table_update_grcote7_tutos_courses_2.php', '2018-05-14 07:36:57'),
(317, 'Grcote7.Tutos', 'comment', '1.0.5', 'Updated table grcote7_tutos_courses', '2018-05-14 07:36:57'),
(318, 'Grcote7.Tutos', 'script', '1.0.6', 'builder_table_create_grcote7_tutos_categories.php', '2018-05-14 07:42:50'),
(319, 'Grcote7.Tutos', 'comment', '1.0.6', 'Created table grcote7_tutos_categories', '2018-05-14 07:42:50'),
(320, 'Grcote7.Tutos', 'script', '1.0.7', 'builder_table_create_grcote7_tutos_tutos_categories.php', '2018-05-14 07:45:44'),
(321, 'Grcote7.Tutos', 'comment', '1.0.7', 'Created table grcote7_tutos_tutos_categories', '2018-05-14 07:45:44'),
(322, 'Grcote7.Tutos', 'script', '1.0.8', 'builder_table_update_grcote7_tutos_tutos.php', '2018-05-14 08:23:40'),
(323, 'Grcote7.Tutos', 'comment', '1.0.8', 'Updated table grcote7_tutos_tutos', '2018-05-14 08:23:40'),
(324, 'Grcote7.Tutos', 'script', '1.0.9', 'builder_table_update_grcote7_tutos_tutos_2.php', '2018-05-14 08:28:01'),
(325, 'Grcote7.Tutos', 'comment', '1.0.9', 'Updated table grcote7_tutos_tutos', '2018-05-14 08:28:01'),
(523, 'Grcote7.Books', 'comment', '1.0.1', 'Initialize plugin.', '2018-05-22 13:01:47'),
(524, 'Grcote7.Books', 'script', '1.0.2', 'builder_table_create_grcote7_books_.php', '2018-05-22 13:01:47'),
(525, 'Grcote7.Books', 'comment', '1.0.2', 'Created table grcote7_books_', '2018-05-22 13:01:47'),
(526, 'Grcote7.Books', 'script', '1.0.3', 'builder_table_create_grcote7_books_owners.php', '2018-05-22 13:01:48'),
(527, 'Grcote7.Books', 'comment', '1.0.3', 'Created table grcote7_books_owners', '2018-05-22 13:01:48'),
(528, 'Grcote7.Books', 'script', '1.0.4', 'builder_table_update_grcote7_books_.php', '2018-05-22 13:01:48'),
(529, 'Grcote7.Books', 'comment', '1.0.4', 'Updated table grcote7_books_', '2018-05-22 13:01:48'),
(530, 'Grcote7.Books', 'script', '1.0.5', 'builder_table_update_grcote7_books_owners.php', '2018-05-22 13:01:48'),
(531, 'Grcote7.Books', 'comment', '1.0.5', 'Updated table grcote7_books_owners', '2018-05-22 13:01:48'),
(532, 'Grcote7.Books', 'script', '1.0.6', 'builder_table_update_grcote7_books_owners_2.php', '2018-05-22 13:01:49'),
(533, 'Grcote7.Books', 'comment', '1.0.6', 'Updated table grcote7_books_owners', '2018-05-22 13:01:49'),
(534, 'Grcote7.Books', 'script', '1.0.7', 'builder_table_update_grcote7_books_owners_3.php', '2018-05-22 13:01:49'),
(535, 'Grcote7.Books', 'script', '1.0.7', 'seed_all_tables.php', '2018-05-22 13:01:51'),
(536, 'Grcote7.Books', 'comment', '1.0.7', 'Updated table grcote7_books_owners and seed tables', '2018-05-22 13:01:51'),
(537, 'LeoCavalcante.BackendUserTree', 'comment', '1.0.1', 'First version of BackendUserTree', '2018-05-22 13:05:08'),
(538, 'LeoCavalcante.BackendUserTree', 'script', '1.0.2', 'create_proxies_table.php', '2018-05-22 13:05:10'),
(539, 'LeoCavalcante.BackendUserTree', 'comment', '1.0.2', 'Creates proxies table', '2018-05-22 13:05:10'),
(540, 'LeoCavalcante.BackendUserTree', 'comment', '1.0.3', 'Fix Github issue #2', '2018-05-22 13:05:10'),
(541, 'RainLab.User', 'comment', '1.4.6', 'Fixes Auth::register method signature mismatch with core OctoberCMS Auth library', '2018-06-08 16:24:50'),
(542, 'Grcote7.Movies', 'script', '1.0.12', 'builder_table_update_grcote7_movies__5.php', '2018-06-24 10:23:49'),
(543, 'Grcote7.Movies', 'comment', '1.0.12', 'Updated table grcote7_movies_', '2018-06-24 10:23:49'),
(544, 'Grcote7.Movies', 'script', '1.0.13', 'builder_table_create_grcote7_movies_tags.php', '2018-07-01 09:33:30'),
(545, 'Grcote7.Movies', 'comment', '1.0.13', 'Created table grcote7_movies_tags', '2018-07-01 09:33:30'),
(546, 'Grcote7.Movies', 'script', '1.0.14', 'builder_table_create_grcote7_movies_tags_movies.php', '2018-07-01 13:08:33'),
(547, 'Grcote7.Movies', 'comment', '1.0.14', 'Created table grcote7_movies_tags_movies', '2018-07-01 13:08:33'),
(548, 'Grcote7.Movies', 'script', '1.0.15', 'builder_table_update_grcote7_movies_tags_movies.php', '2018-07-01 13:11:25'),
(549, 'Grcote7.Movies', 'comment', '1.0.15', 'Updated table grcote7_movies_tags_movies', '2018-07-01 13:11:25'),
(550, 'RainLab.Translate', 'script', '1.0.1', 'create_messages_table.php', '2018-07-05 10:08:31'),
(551, 'RainLab.Translate', 'script', '1.0.1', 'create_attributes_table.php', '2018-07-05 10:08:31'),
(552, 'RainLab.Translate', 'script', '1.0.1', 'create_locales_table.php', '2018-07-05 10:08:31'),
(553, 'RainLab.Translate', 'comment', '1.0.1', 'First version of Translate', '2018-07-05 10:08:31'),
(554, 'RainLab.Translate', 'comment', '1.0.2', 'Languages and Messages can now be deleted.', '2018-07-05 10:08:31'),
(555, 'RainLab.Translate', 'comment', '1.0.3', 'Minor updates for latest October release.', '2018-07-05 10:08:31'),
(556, 'RainLab.Translate', 'comment', '1.0.4', 'Locale cache will clear when updating a language.', '2018-07-05 10:08:31'),
(557, 'RainLab.Translate', 'comment', '1.0.5', 'Add Spanish language and fix plugin config.', '2018-07-05 10:08:31'),
(558, 'RainLab.Translate', 'comment', '1.0.6', 'Minor improvements to the code.', '2018-07-05 10:08:31'),
(559, 'RainLab.Translate', 'comment', '1.0.7', 'Fixes major bug where translations are skipped entirely!', '2018-07-05 10:08:31'),
(560, 'RainLab.Translate', 'comment', '1.0.8', 'Minor bug fixes.', '2018-07-05 10:08:31'),
(561, 'RainLab.Translate', 'comment', '1.0.9', 'Fixes an issue where newly created models lose their translated values.', '2018-07-05 10:08:31'),
(562, 'RainLab.Translate', 'comment', '1.0.10', 'Minor fix for latest build.', '2018-07-05 10:08:31'),
(563, 'RainLab.Translate', 'comment', '1.0.11', 'Fix multilingual rich editor when used in stretch mode.', '2018-07-05 10:08:31'),
(564, 'RainLab.Translate', 'comment', '1.1.0', 'Introduce compatibility with RainLab.Pages plugin.', '2018-07-05 10:08:31'),
(565, 'RainLab.Translate', 'comment', '1.1.1', 'Minor UI fix to the language picker.', '2018-07-05 10:08:31'),
(566, 'RainLab.Translate', 'comment', '1.1.2', 'Add support for translating Static Content files.', '2018-07-05 10:08:31'),
(567, 'RainLab.Translate', 'comment', '1.1.3', 'Improved support for the multilingual rich editor.', '2018-07-05 10:08:31'),
(568, 'RainLab.Translate', 'comment', '1.1.4', 'Adds new multilingual markdown editor.', '2018-07-05 10:08:31'),
(569, 'RainLab.Translate', 'comment', '1.1.5', 'Minor update to the multilingual control API.', '2018-07-05 10:08:31'),
(570, 'RainLab.Translate', 'comment', '1.1.6', 'Minor improvements in the message editor.', '2018-07-05 10:08:31'),
(571, 'RainLab.Translate', 'comment', '1.1.7', 'Fixes bug not showing content when first loading multilingual textarea controls.', '2018-07-05 10:08:31'),
(572, 'RainLab.Translate', 'comment', '1.2.0', 'CMS pages now support translating the URL.', '2018-07-05 10:08:31'),
(573, 'RainLab.Translate', 'comment', '1.2.1', 'Minor update in the rich editor and code editor language control position.', '2018-07-05 10:08:31'),
(574, 'RainLab.Translate', 'comment', '1.2.2', 'Static Pages now support translating the URL.', '2018-07-05 10:08:31'),
(575, 'RainLab.Translate', 'comment', '1.2.3', 'Fixes Rich Editor when inserting a page link.', '2018-07-05 10:08:31'),
(576, 'RainLab.Translate', 'script', '1.2.4', 'create_indexes_table.php', '2018-07-05 10:08:31'),
(577, 'RainLab.Translate', 'comment', '1.2.4', 'Translatable attributes can now be declared as indexes.', '2018-07-05 10:08:31'),
(578, 'RainLab.Translate', 'comment', '1.2.5', 'Adds new multilingual repeater form widget.', '2018-07-05 10:08:31'),
(579, 'RainLab.Translate', 'comment', '1.2.6', 'Fixes repeater usage with static pages plugin.', '2018-07-05 10:08:31'),
(580, 'RainLab.Translate', 'comment', '1.2.7', 'Fixes placeholder usage with static pages plugin.', '2018-07-05 10:08:31'),
(581, 'RainLab.Translate', 'comment', '1.2.8', 'Improvements to code for latest October build compatibility.', '2018-07-05 10:08:31'),
(582, 'RainLab.Translate', 'comment', '1.2.9', 'Fixes context for translated strings when used with Static Pages.', '2018-07-05 10:08:31'),
(583, 'RainLab.Translate', 'comment', '1.2.10', 'Minor UI fix to the multilingual repeater.', '2018-07-05 10:08:32'),
(584, 'RainLab.Translate', 'comment', '1.2.11', 'Fixes translation not working with partials loaded via AJAX.', '2018-07-05 10:08:32'),
(585, 'RainLab.Translate', 'comment', '1.2.12', 'Add support for translating the new grouped repeater feature.', '2018-07-05 10:08:32'),
(586, 'RainLab.Translate', 'comment', '1.3.0', 'Added search to the translate messages page.', '2018-07-05 10:08:32'),
(587, 'RainLab.Translate', 'script', '1.3.1', 'builder_table_update_rainlab_translate_locales.php', '2018-07-05 10:08:32'),
(588, 'RainLab.Translate', 'script', '1.3.1', 'seed_all_tables.php', '2018-07-05 10:08:32'),
(589, 'RainLab.Translate', 'comment', '1.3.1', 'Added reordering to languages', '2018-07-05 10:08:32'),
(590, 'RainLab.Translate', 'comment', '1.3.2', 'Improved compatibility with RainLab.Pages, added ability to scan Mail Messages for translatable variables.', '2018-07-05 10:08:32'),
(591, 'RainLab.Translate', 'comment', '1.3.3', 'Fix to the locale picker session handling in Build 420 onwards.', '2018-07-05 10:08:32'),
(592, 'RainLab.Translate', 'comment', '1.3.4', 'Add alternate hreflang elements and adds prefixDefaultLocale setting.', '2018-07-05 10:08:32'),
(593, 'RainLab.Translate', 'comment', '1.3.5', 'Fix MLRepeater bug when switching locales.', '2018-07-05 10:08:32'),
(594, 'RainLab.Translate', 'comment', '1.3.6', 'Fix Middleware to use the prefixDefaultLocale setting introduced in 1.3.4', '2018-07-05 10:08:32'),
(595, 'RainLab.Translate', 'comment', '1.3.7', 'Fix config reference in LocaleMiddleware', '2018-07-05 10:08:32'),
(596, 'RainLab.Translate', 'comment', '1.3.8', 'Keep query string when switching locales', '2018-07-05 10:08:32'),
(597, 'Flosch.Slideshow', 'script', '1.0.1', 'create_slideshows_table.php', '2018-07-05 10:08:50'),
(598, 'Flosch.Slideshow', 'script', '1.0.1', 'create_slides_table.php', '2018-07-05 10:08:50'),
(599, 'Flosch.Slideshow', 'script', '1.0.1', 'seeder.php', '2018-07-05 10:08:51'),
(600, 'Flosch.Slideshow', 'comment', '1.0.1', 'First version of Slideshow', '2018-07-05 10:08:51'),
(601, 'Flosch.Slideshow', 'script', '1.0.2', 'table_update_flosch_slideshow_slides.php', '2018-07-05 10:08:51'),
(602, 'Flosch.Slideshow', 'comment', '1.0.2', 'Added is_published state and publication dates', '2018-07-05 10:08:51'),
(603, 'Flosch.Slideshow', 'comment', '1.0.3', 'Update documentation for Twitter Bootstrap sources', '2018-07-05 10:08:51'),
(604, 'Flosch.Slideshow', 'comment', '1.0.4', 'Update slides published query-scope (correct dates comparison)', '2018-07-05 10:08:51'),
(605, 'Flosch.Slideshow', 'comment', '1.0.5', 'Fix permission settings', '2018-07-05 10:08:51'),
(606, 'Flosch.Slideshow', 'script', '1.0.6', 'Add french translation', '2018-07-05 10:08:51'),
(607, 'Flosch.Slideshow', 'comment', '1.0.6', 'Add persian translation (thanks to @cracki)', '2018-07-05 10:08:51'),
(608, 'Flosch.Slideshow', 'comment', '1.0.7', 'Add german translation (thanks to @danielbruni)', '2018-07-05 10:08:51'),
(609, 'Flosch.Slideshow', 'comment', '1.0.8', 'Correct columns definition (thanks to @Jeime)', '2018-07-05 10:08:51'),
(610, 'RainLab.Forum', 'script', '1.0.1', 'create_channels_table.php', '2018-07-05 10:09:30'),
(611, 'RainLab.Forum', 'script', '1.0.1', 'create_posts_table.php', '2018-07-05 10:09:30'),
(612, 'RainLab.Forum', 'script', '1.0.1', 'create_topics_table.php', '2018-07-05 10:09:30'),
(613, 'RainLab.Forum', 'script', '1.0.1', 'create_members_table.php', '2018-07-05 10:09:30'),
(614, 'RainLab.Forum', 'script', '1.0.1', 'seed_all_tables.php', '2018-07-05 10:09:31');
INSERT INTO `system_plugin_history` (`id`, `code`, `type`, `version`, `detail`, `created_at`) VALUES
(615, 'RainLab.Forum', 'comment', '1.0.1', 'First version of Forum', '2018-07-05 10:09:31'),
(616, 'RainLab.Forum', 'script', '1.0.2', 'create_topic_watches_table.php', '2018-07-05 10:09:31'),
(617, 'RainLab.Forum', 'comment', '1.0.2', 'Add unread flags to topics', '2018-07-05 10:09:31'),
(618, 'RainLab.Forum', 'script', '1.0.3', 'members_add_mod_and_ban.php', '2018-07-05 10:09:31'),
(619, 'RainLab.Forum', 'comment', '1.0.3', 'Users can now be made moderators or be banned', '2018-07-05 10:09:31'),
(620, 'RainLab.Forum', 'script', '1.0.4', 'channels_add_hidden_and_moderated.php', '2018-07-05 10:09:31'),
(621, 'RainLab.Forum', 'comment', '1.0.4', 'Channels can now be hidden or moderated', '2018-07-05 10:09:31'),
(622, 'RainLab.Forum', 'script', '1.0.5', 'add_embed_code.php', '2018-07-05 10:09:31'),
(623, 'RainLab.Forum', 'comment', '1.0.5', 'Introduced topic and channel embedding', '2018-07-05 10:09:31'),
(624, 'RainLab.Forum', 'script', '1.0.6', 'create_channel_watches_table.php', '2018-07-05 10:09:31'),
(625, 'RainLab.Forum', 'comment', '1.0.6', 'Add unread flags to channels', '2018-07-05 10:09:31'),
(626, 'RainLab.Forum', 'script', '1.0.7', 'create_topic_followers_table.php', '2018-07-05 10:09:31'),
(627, 'RainLab.Forum', 'comment', '1.0.7', 'Forum members can now follow topics', '2018-07-05 10:09:31'),
(628, 'RainLab.Forum', 'comment', '1.0.8', 'Added Channel name to the Topics component view', '2018-07-05 10:09:31'),
(629, 'RainLab.Forum', 'comment', '1.0.9', 'Updated the Settings page', '2018-07-05 10:09:31'),
(630, 'RainLab.Forum', 'comment', '1.0.10', 'Users can now report spammers who can be banned by moderators.', '2018-07-05 10:09:31'),
(631, 'RainLab.Forum', 'comment', '1.0.11', 'Users can now quote other posts.', '2018-07-05 10:09:31'),
(632, 'RainLab.Forum', 'comment', '1.0.12', 'Improve support for CDN asset hosting.', '2018-07-05 10:09:31'),
(633, 'RainLab.Forum', 'comment', '1.0.13', 'Fixes a bug where channels cannot be selected in the Embed component inspector.', '2018-07-05 10:09:31'),
(634, 'RainLab.Forum', 'comment', '1.0.14', 'Improve the pagination code used in the component default markup.', '2018-07-05 10:09:31'),
(635, 'RainLab.Forum', 'comment', '1.0.15', 'When a User is deleted, their Member profile and posts is also deleted.', '2018-07-05 10:09:31'),
(636, 'RainLab.Forum', 'comment', '1.0.16', 'Posting topics is now throttled allowing 3 new topics every 15 minutes.', '2018-07-05 10:09:31'),
(637, 'RainLab.Forum', 'comment', '1.0.17', 'Update channel reorder page to new system reordering feature.', '2018-07-05 10:09:31'),
(638, 'RainLab.Forum', 'comment', '1.0.18', 'Minor fix to embed topic component.', '2018-07-05 10:09:31'),
(639, 'RainLab.Forum', 'script', '1.0.19', 'update_timestamp_nullable.php', '2018-07-05 10:09:31'),
(640, 'RainLab.Forum', 'comment', '1.0.19', 'Database maintenance. Updated all timestamp columns to be nullable.', '2018-07-05 10:09:31'),
(641, 'RainLab.Forum', 'script', '1.1.0', 'drop_watches_tables.php', '2018-07-05 10:09:31'),
(642, 'RainLab.Forum', 'comment', '1.1.0', 'Major performance enhancements', '2018-07-05 10:09:31'),
(643, 'RainLab.Forum', 'comment', '1.1.1', 'Fixes bug throwing error when a forum topic has no posts.', '2018-07-05 10:09:31'),
(644, 'Bluhex.YouTube', 'comment', '1.0.1', 'First version of Bluhex - YouTube Videos', '2018-07-05 22:41:56'),
(645, 'Bluhex.YouTube', 'comment', '1.0.2', 'Made YouTube client more accessible to third parties', '2018-07-05 22:41:56'),
(646, 'Bluhex.YouTube', 'comment', '1.0.3', 'Thumbnail resolution is now selectable', '2018-07-05 22:41:56'),
(647, 'Bluhex.YouTube', 'comment', '1.0.4', 'Fixed caching issue causing no results to display', '2018-07-05 22:41:56'),
(648, 'Bluhex.YouTube', 'comment', '1.0.5', 'Made thumbnail resolution selection easier', '2018-07-05 22:41:56'),
(649, 'Bluhex.YouTube', 'comment', '1.0.6', 'Updated to the latest Google API Library', '2018-07-05 22:41:56'),
(650, 'Bluhex.YouTube', 'comment', '1.0.7', 'Full resolution thumbnails are now loaded over https', '2018-07-05 22:41:56'),
(651, 'Bluhex.YouTube', 'comment', '1.0.8', 'Fixed video links working over https but not thumbnails.', '2018-07-05 22:41:56'),
(652, 'GrCOTE7.Dpt', 'comment', '1.0.1', 'First version of Dpt (demo)', '2018-07-05 22:41:56'),
(653, 'Grcote7.Dptlist', 'comment', '1.0.1', 'Initialize plugin.', '2018-07-05 22:41:56'),
(654, 'Grcote7.Dptlist', 'script', '1.0.2', 'builder_table_create_grcote7_dptlist_dpts.php', '2018-07-05 22:41:56'),
(655, 'Grcote7.Dptlist', 'comment', '1.0.2', 'Created table grcote7_dptlist_dpts', '2018-07-05 22:41:56'),
(656, 'Grcote7.Dptlist', 'script', '1.0.3', 'builder_table_update_grcote7_dptlist_dpts.php', '2018-07-05 22:41:56'),
(657, 'Grcote7.Dptlist', 'comment', '1.0.3', 'Updated table grcote7_dptlist_dpts', '2018-07-05 22:41:56'),
(658, 'Grcote7.Library', 'comment', '1.0.1', 'Initialize plugin.', '2018-07-05 22:41:56'),
(659, 'Grcote7.Library', 'script', '1.0.2', 'builder_table_create_grcote7_library_books.php', '2018-07-05 22:41:57'),
(660, 'Grcote7.Library', 'comment', '1.0.2', 'Created table grcote7_library_books', '2018-07-05 22:41:57'),
(661, 'GrCOTE7.Demo', 'comment', '1.0.1', 'First version of Demo (demoAff)', '2018-07-06 11:37:51'),
(662, 'Zainab.SimpleContact', 'comment', '1.0.1', 'Initialize plugin.', '2018-07-06 11:37:52'),
(663, 'Zainab.SimpleContact', 'script', '1.0.2', 'builder_table_create_zainab_simplecontact_contact.php', '2018-07-06 11:39:29'),
(664, 'Zainab.SimpleContact', 'comment', '1.0.2', 'Created table zainab_simplecontact_contact', '2018-07-06 11:39:29'),
(665, 'Zainab.SimpleContact', 'script', '1.0.3', 'builder_table_update_zainab_simplecontact_contact.php', '2018-07-06 11:39:29'),
(666, 'Zainab.SimpleContact', 'comment', '1.0.3', 'Updated table zainab_simplecontact_contact', '2018-07-06 11:39:29'),
(667, 'Zainab.SimpleContact', 'comment', '1.0.4', 'Change Alias bug fixed', '2018-07-06 11:39:29'),
(668, 'Zainab.SimpleContact', 'script', '1.0.5', 'Language added -- Portuguese (Brazil)', '2018-07-06 11:39:29'),
(669, 'Zainab.SimpleContact', 'comment', '1.0.5', 'Dashboard widget added', '2018-07-06 11:39:29'),
(670, 'Zainab.SimpleContact', 'comment', '1.0.6', 'grecaptcha reset bug fixed', '2018-07-06 11:39:29'),
(671, 'Zainab.SimpleContact', 'script', '1.1.0', 'minor bugs fixed', '2018-07-06 11:39:29'),
(672, 'Zainab.SimpleContact', 'comment', '1.1.0', 'sql_modes NO_ZERO_IN_DATE,NO_ZERO_DATE fixed', '2018-07-06 11:39:29'),
(673, 'Zainab.SimpleContact', 'script', '1.1.1', 'minor bug fixed', '2018-07-06 11:39:29'),
(674, 'Zainab.SimpleContact', 'comment', '1.1.1', 'Language added -- Russian', '2018-07-06 11:39:29'),
(675, 'Zainab.SimpleContact', 'script', '2.0.0', 'Languages Added (Arabic, Chinese)', '2018-07-06 11:39:29'),
(676, 'Zainab.SimpleContact', 'comment', '2.0.0', 'Translate Plugin Dependency Added (RainLab.Translate)', '2018-07-06 11:39:29'),
(677, 'Zainab.SimpleContact', 'script', '2.0.1', 'Notification Email Updated', '2018-07-06 11:39:29'),
(678, 'Zainab.SimpleContact', 'comment', '2.0.1', 'Migration Bug Fixed', '2018-07-06 11:39:29'),
(679, 'Zainab.SimpleContact', 'comment', '2.0.2', 'Languages Added (Czech, Turkish)', '2018-07-06 11:39:29'),
(680, 'Zainab.SimpleContact', 'comment', '2.0.3', 'Language Added (French), fixed punctuation', '2018-07-06 11:39:29'),
(681, 'Flynsarmy.SocialLogin', 'script', '1.0.1', 'create_flynsarmy_sociallogin_user_providers.php', '2018-07-08 13:51:59'),
(682, 'Flynsarmy.SocialLogin', 'comment', '1.0.1', 'First version of SocialLogin', '2018-07-08 13:51:59'),
(683, 'Flynsarmy.SocialLogin', 'comment', '1.0.2', 'Require RainLab.User', '2018-07-08 13:51:59'),
(684, 'Flynsarmy.SocialLogin', 'comment', '1.0.3', 'Fixed RainLab.User integration', '2018-07-08 13:51:59'),
(685, 'Flynsarmy.SocialLogin', 'comment', '1.0.4', 'User registration bug fix', '2018-07-08 13:51:59'),
(686, 'Flynsarmy.SocialLogin', 'comment', '1.0.5', 'Fix password confirmation error', '2018-07-08 13:51:59'),
(687, 'Flynsarmy.SocialLogin', 'comment', '1.0.6', 'Add login details when registering users', '2018-07-08 13:51:59'),
(688, 'Flynsarmy.SocialLogin', 'comment', '1.0.7', 'Rename login to username to match RainLab.Users latest update', '2018-07-08 13:51:59'),
(689, 'Flynsarmy.SocialLogin', 'comment', '1.0.8', 'RC compatibility update', '2018-07-08 13:51:59'),
(690, 'Flynsarmy.SocialLogin', 'comment', '1.0.9', 'Google login fix', '2018-07-08 13:51:59'),
(691, 'Flynsarmy.SocialLogin', 'comment', '1.0.10', 'Don\'t add multiple Google associations to users', '2018-07-08 13:51:59'),
(692, 'Flynsarmy.SocialLogin', 'comment', '1.0.11', 'Modified table key name', '2018-07-08 13:51:59'),
(693, 'Flynsarmy.SocialLogin', 'comment', '1.0.12', 'Update login providers', '2018-07-08 13:51:59'),
(694, 'Flynsarmy.SocialLogin', 'comment', '1.0.13', 'Deprecated code fix, settings page fix', '2018-07-08 13:51:59'),
(695, 'Flynsarmy.SocialLogin', 'comment', '1.0.14', 'Singleton trait fix', '2018-07-08 13:51:59'),
(696, 'Flynsarmy.SocialLogin', 'comment', '1.0.15', 'Compatibility fix with RainLab.GoogleAnalytics', '2018-07-08 13:51:59'),
(697, 'Flynsarmy.SocialLogin', 'script', '1.0.16', 'update_provider_settings_locations_1016.php', '2018-07-08 13:52:00'),
(698, 'Flynsarmy.SocialLogin', 'comment', '1.0.16', '!!! Important update with breaking changes.', '2018-07-08 13:52:00'),
(699, 'Flynsarmy.SocialLogin', 'comment', '1.0.17', 'Fixed issue registering new users', '2018-07-08 13:52:00'),
(700, 'Flynsarmy.SocialLogin', 'comment', '1.0.18', '!!! Requires October build 420 or higher.', '2018-07-08 13:52:00'),
(701, 'Flynsarmy.SocialLogin', 'comment', '1.0.19', 'Add backend permission requirement', '2018-07-08 13:52:00'),
(702, 'Flynsarmy.SocialLogin', 'script', '1.0.20', 'Prevent users from registering when Allow user registration is OFF (Thanks to Kurt Jensen)', '2018-07-08 13:52:00'),
(703, 'Flynsarmy.SocialLogin', 'script', '1.0.20', 'Grab user profile picture on account registration (Thanks to kdoonboli)', '2018-07-08 13:52:00'),
(704, 'Flynsarmy.SocialLogin', 'script', '1.0.20', 'Fix redirects on custom login (Thanks to kdoonboli)', '2018-07-08 13:52:00'),
(705, 'Flynsarmy.SocialLogin', 'comment', '1.0.20', 'Upgrade to latest socialite', '2018-07-08 13:52:00'),
(706, 'Flynsarmy.SocialLogin', 'script', '1.0.21', 'Remove deprecated Facebook scope', '2018-07-08 13:52:00'),
(707, 'Flynsarmy.SocialLogin', 'comment', '1.0.21', 'Update socialite', '2018-07-08 13:52:00');

-- --------------------------------------------------------

--
-- Structure de la table `system_plugin_versions`
--

CREATE TABLE `system_plugin_versions` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `is_disabled` tinyint(1) NOT NULL DEFAULT '0',
  `is_frozen` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `system_plugin_versions`
--

INSERT INTO `system_plugin_versions` (`id`, `code`, `version`, `created_at`, `is_disabled`, `is_frozen`) VALUES
(1, 'October.Demo', '1.0.1', '2018-04-18 09:53:42', 0, 0),
(2, 'RainLab.Blog', '1.2.19', '2018-05-06 16:48:43', 0, 0),
(3, 'RainLab.Builder', '1.0.22', '2018-05-06 16:48:43', 0, 0),
(4, 'Grcote7.Movies', '1.0.15', '2018-07-01 13:11:25', 0, 0),
(5, 'RainLab.Sitemap', '1.0.8', '2018-04-23 22:23:44', 1, 0),
(6, 'Grcote7.Contact', '1.0.1', '2018-04-25 22:12:42', 0, 0),
(7, 'RainLab.User', '1.4.6', '2018-06-08 16:24:50', 0, 0),
(8, 'VojtaSvoboda.TwigExtensions', '1.2.2', '2018-05-14 07:16:19', 0, 0),
(10, 'Grcote7.Profile', '1.0.1', '2018-04-29 19:42:01', 0, 0),
(11, 'OFFLINE.SiteSearch', '1.3.8', '2018-05-06 16:48:43', 0, 0),
(12, 'Rahman.Faker', '1.0.1', '2018-04-30 08:58:36', 0, 0),
(13, 'RainLab.Pages', '1.2.18', '2018-05-06 16:48:44', 0, 0),
(14, 'Watchlearn.Contact', '1.0.1', '2018-05-05 22:22:13', 0, 0),
(15, 'Watchlearn.Movies', '1.0.13', '2018-05-05 22:22:21', 0, 0),
(16, 'Grcote7.Tutos', '1.0.9', '2018-05-14 08:28:01', 0, 0),
(33, 'Grcote7.Books', '1.0.7', '2018-05-22 13:01:51', 0, 0),
(34, 'LeoCavalcante.BackendUserTree', '1.0.3', '2018-05-22 13:05:10', 1, 0),
(35, 'RainLab.Translate', '1.3.8', '2018-07-05 10:08:32', 0, 0),
(36, 'Flosch.Slideshow', '1.0.8', '2018-07-05 10:08:51', 0, 0),
(37, 'RainLab.Forum', '1.1.1', '2018-07-05 10:09:31', 0, 0),
(38, 'Bluhex.YouTube', '1.0.8', '2018-07-05 22:41:56', 0, 0),
(39, 'GrCOTE7.Dpt', '1.0.1', '2018-07-05 22:41:56', 0, 0),
(40, 'Grcote7.Dptlist', '1.0.3', '2018-07-05 22:41:56', 0, 0),
(41, 'Grcote7.Library', '1.0.2', '2018-07-05 22:41:57', 0, 0),
(42, 'GrCOTE7.Demo', '1.0.1', '2018-07-06 11:37:51', 0, 0),
(43, 'Zainab.SimpleContact', '2.0.3', '2018-07-06 11:39:29', 0, 0),
(44, 'Flynsarmy.SocialLogin', '1.0.21', '2018-07-08 13:52:00', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `system_request_logs`
--

CREATE TABLE `system_request_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `status_code` int(11) DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` text COLLATE utf8mb4_unicode_ci,
  `count` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `system_revisions`
--

CREATE TABLE `system_revisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cast` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `system_revisions`
--

INSERT INTO `system_revisions` (`id`, `user_id`, `field`, `cast`, `old_value`, `new_value`, `revisionable_type`, `revisionable_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 'firstname', NULL, 'Lionel', 'Lionelo', 'Grcote7\\Books\\Models\\Owner', 1, '2018-05-22 11:34:05', '2018-05-22 11:34:05'),
(2, NULL, 'firstname', NULL, 'Lionelo', 'Lionel', 'Grcote7\\Books\\Models\\Owner', 1, '2018-05-22 11:36:10', '2018-05-22 11:36:10');

-- --------------------------------------------------------

--
-- Structure de la table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `item` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `system_settings`
--

INSERT INTO `system_settings` (`id`, `item`, `value`) VALUES
(1, 'rainlab_builder_settings', '{\"author_name\":\"Grcote7\",\"author_namespace\":\"Grcote7\"}'),
(2, 'system_log_settings', '{\"log_events\":\"1\",\"log_requests\":\"1\",\"log_theme\":\"1\"}'),
(3, 'user_settings', '{\"require_activation\":\"1\",\"activate_mode\":\"auto\",\"use_throttle\":\"1\",\"block_persistence\":\"0\",\"allow_registration\":\"1\",\"login_attribute\":\"email\"}'),
(4, 'bluhex_ytvideos_settings', '{\"api_key\":\"AIzaSyD_9iHs8Z234lww70vZIGeXoX-xDIQZHwY\",\"cache_time\":\"60\"}'),
(5, 'flynsarmy_sociallogin_settings', '{\"providers\":{\"Google\":{\"enabled\":\"0\",\"enabledForBackend\":\"0\",\"app_name\":\"\",\"client_id\":\"\",\"client_secret\":\"\"},\"Twitter\":{\"enabled\":\"0\",\"identifier\":\"\",\"secret\":\"\"},\"Facebook\":{\"enabled\":\"1\",\"enabledForBackend\":\"0\",\"client_id\":\"238072626991050\",\"client_secret\":\"99f4b1f24f42d3e86dad9d348a59247f\"}}}'),
(6, 'offline_sitesearch_settings', '{\"mark_results\":\"1\",\"excerpt_length\":\"250\",\"rainlab_blog_enabled\":\"1\",\"rainlab_blog_label\":\"Blog\",\"rainlab_blog_page\":\"404\",\"rainlab_pages_enabled\":\"1\",\"rainlab_pages_label\":\"Page\",\"indikator_news_enabled\":\"1\",\"indikator_news_label\":\"News\",\"indikator_news_posturl\":\"\\/news\",\"octoshop_products_enabled\":\"1\",\"octoshop_products_label\":\"\",\"octoshop_products_itemurl\":\"\\/product\",\"snipcartshop_products_enabled\":\"1\",\"snipcartshop_products_label\":\"\",\"jiri_jkshop_enabled\":\"1\",\"jiri_jkshop_label\":\"\",\"jiri_jkshop_itemurl\":\"\\/product\",\"radiantweb_problog_enabled\":\"1\",\"radiantweb_problog_label\":\"Blog\",\"arrizalamin_portfolio_enabled\":\"1\",\"arrizalamin_portfolio_label\":\"Portfolio\",\"arrizalamin_portfolio_url\":\"\\/portfolio\\/project\",\"vojtasvoboda_brands_enabled\":\"1\",\"vojtasvoboda_brands_label\":\"Brands\",\"vojtasvoboda_brands_url\":\"\\/brand\",\"responsiv_showcase_enabled\":\"1\",\"responsiv_showcase_label\":\"Showcase\",\"responsiv_showcase_url\":\"\\/showcase\\/project\",\"graker_photoalbums_enabled\":\"1\",\"graker_photoalbums_label\":\"PhotoAlbums\",\"graker_photoalbums_album_page\":\"404\",\"graker_photoalbums_photo_page\":\"404\",\"cms_pages_enabled\":\"1\",\"cms_pages_label\":\"Page\"}');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `persist_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `is_activated` tinyint(1) NOT NULL DEFAULT '0',
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `last_seen` timestamp NULL DEFAULT NULL,
  `is_guest` tinyint(1) NOT NULL DEFAULT '0',
  `is_superuser` tinyint(1) NOT NULL DEFAULT '0',
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `activation_code`, `persist_code`, `reset_password_code`, `permissions`, `is_activated`, `activated_at`, `last_login`, `created_at`, `updated_at`, `username`, `surname`, `deleted_at`, `last_seen`, `is_guest`, `is_superuser`, `facebook`, `bio`) VALUES
(1, 'Grcote7', 'GrCOTE7@gmail.com', '$2y$10$6LMUI6DOwwXLXrx05cI39euY8ofkq8g3wQKd0rTp4E9MW3fXBnpsG', NULL, '$2y$10$wKlxdwTGwh9aLM5gTlX.AeSDoLbx87Y2YzNqy/M3JBqS2nnTWoOSy', NULL, NULL, 1, '2018-04-27 13:24:10', '2018-07-09 09:07:31', '2018-04-27 13:24:10', '2018-07-09 09:07:31', 'GrCOTE7@gmail.com', '', NULL, '2018-07-11 20:46:21', 0, 0, 'sdfsf123', 'sdfdsfsdfd'),
(2, 'Lionel', 'lio181@yahoo.fr', '$2y$10$CeJPJh1gcvRBKKN6YJvmIOyJWe3CrDtO1uD7JaLpMbDLc7qdCbSwm', NULL, NULL, NULL, NULL, 1, '2018-05-07 01:10:26', '2018-07-07 07:15:40', '2018-05-07 01:10:26', '2018-07-09 04:51:51', 'lio181@yahoo.fr', '', NULL, '2018-07-09 04:51:36', 0, 0, '', ''),
(3, 'John Doe', 'Jd@sample.com', '$2y$10$3ROR8uJYgoI9TG2XDLG73evsaNY0wRaIqctGpIE7KcB/8TniZtu1.', NULL, NULL, NULL, NULL, 1, '2018-07-08 13:26:35', '2018-07-08 13:28:24', '2018-07-08 13:26:35', '2018-07-08 14:00:33', 'Jd@sample.com', NULL, NULL, '2018-07-08 14:00:21', 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users_groups`
--

CREATE TABLE `users_groups` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user_groups`
--

INSERT INTO `user_groups` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Guest', 'guest', 'Default group for guest users.', '2018-04-27 12:11:06', '2018-04-27 12:11:06'),
(2, 'Registered', 'registered', 'Default group for registered users.', '2018-04-27 12:11:06', '2018-04-27 12:11:06');

-- --------------------------------------------------------

--
-- Structure de la table `user_throttle`
--

CREATE TABLE `user_throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `is_suspended` tinyint(1) NOT NULL DEFAULT '0',
  `suspended_at` timestamp NULL DEFAULT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT '0',
  `banned_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user_throttle`
--

INSERT INTO `user_throttle` (`id`, `user_id`, `ip_address`, `attempts`, `last_attempt_at`, `is_suspended`, `suspended_at`, `is_banned`, `banned_at`) VALUES
(1, 1, NULL, 0, NULL, 0, NULL, 0, NULL),
(2, 2, NULL, 0, NULL, 0, NULL, 0, NULL),
(3, 3, '127.0.0.1', 0, NULL, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `watchlearn_movies_`
--

CREATE TABLE `watchlearn_movies_` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `year` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `watchlearn_movies_`
--

INSERT INTO `watchlearn_movies_` (`id`, `name`, `description`, `year`, `slug`, `created_at`, `published`) VALUES
(1, 'Quae vel reiciendis qui.', 'Odio sit at mollitia. Possimus ex voluptatem ut qui et commodi quibusdam facere. Sint similique labore vero et voluptas eligendi ipsa.', 2000, 'quae-vel-reiciendis-qui', NULL, NULL),
(2, 'Perspiciatis sit sunt fugiat.', 'Labore veritatis sint eos minus ratione. Voluptates consectetur quas harum neque impedit.', 1988, 'perspiciatis-sit-sunt-fugiat', NULL, NULL),
(3, 'Error minima corporis.', 'Voluptatem quibusdam unde occaecati ex accusantium dolorem. Optio eum cum voluptas asperiores quo blanditiis. Nostrum molestias illo repellat quaerat atque alias. Provident et enim eius possimus.', 1971, 'error-minima-corporis', NULL, NULL),
(4, 'Ea repellat autem aspernatur.', 'Dignissimos iste accusamus ratione animi nesciunt sint. Eius omnis sapiente facilis vel in accusamus. Perspiciatis suscipit assumenda earum iste cupiditate.', 1975, 'ea-repellat-autem-aspernatur', NULL, NULL),
(5, 'Incidunt velit illo.', 'Doloribus veniam aspernatur ab sequi sunt minima eos. Consequatur odio sed et saepe minima ut. Deserunt architecto a in dolorem aut iure non. Incidunt est ullam non omnis et recusandae.', 1972, 'incidunt-velit-illo', NULL, NULL),
(6, 'Sed et.', 'Facilis ducimus nesciunt a omnis. Non fugiat numquam et cum esse. Dolor iste exercitationem quibusdam. Est dolor enim nisi molestiae labore consequatur.', 1994, 'sed-et', NULL, NULL),
(7, 'Assumenda consequatur impedit.', 'Tempora consequatur consequatur eos velit. Vel incidunt voluptatem mollitia praesentium et consequatur est. Officia omnis quia eos omnis iste dolores. Ut esse odit exercitationem officia fuga illum.', 2007, 'assumenda-consequatur-impedit', NULL, NULL),
(8, 'Et voluptatem perferendis ipsam.', 'Praesentium assumenda accusamus non doloremque et exercitationem et. Exercitationem harum quis id vel ipsum deserunt necessitatibus ullam.', 1995, 'et-voluptatem-perferendis-ipsam', NULL, NULL),
(9, 'Voluptate aut facilis.', 'Aut accusantium sit voluptatem rerum. Nihil officiis explicabo doloribus velit. Est enim quis ab ipsam inventore.', 2002, 'voluptate-aut-facilis', NULL, NULL),
(10, 'Impedit iusto itaque.', 'Ut aut aut dicta doloremque quia reprehenderit. Accusamus repellendus deleniti iure quo vitae ut. Harum qui minima exercitationem.', 1973, 'impedit-iusto-itaque', NULL, NULL),
(11, 'Perspiciatis voluptas excepturi et.', 'Qui quis illum reprehenderit est officia tempora culpa deserunt. Suscipit ut vel maiores est enim. Officia corrupti sit sit commodi eligendi quibusdam quia. Veritatis quaerat aliquam eaque iste.', 1987, 'perspiciatis-voluptas-excepturi-et', NULL, NULL),
(12, 'Corrupti blanditiis unde est.', 'Enim minima aliquam quasi asperiores ex fugiat magnam. Quidem eveniet iste tempore repellat animi aut sint voluptas. Et deserunt molestias asperiores eligendi incidunt.', 1982, 'corrupti-blanditiis-unde-est', NULL, NULL),
(13, 'Minus voluptatem.', 'Laudantium vel id natus esse officiis eum a. Nesciunt non aliquam qui odit eos ipsa. Qui totam voluptas atque dolores.', 1974, 'minus-voluptatem', NULL, NULL),
(14, 'Corporis non fugit consequatur.', 'Ut rerum aut aliquid voluptatem. Quod omnis hic eveniet qui ipsam facere. Animi sapiente asperiores ut vel ipsam.', 1992, 'corporis-non-fugit-consequatur', NULL, NULL),
(15, 'Et beatae ab quibusdam.', 'Hic minus qui rerum sed commodi. Porro voluptas accusantium id est qui libero rerum. Est vel voluptatum sed vel. Labore quaerat praesentium blanditiis nostrum consectetur deleniti sequi.', 1970, 'et-beatae-ab-quibusdam', NULL, NULL),
(16, 'Vero quas molestiae fugit.', 'Eveniet quis voluptates quia fugit. Cum voluptas voluptatibus rem vel quidem consequuntur.', 2001, 'vero-quas-molestiae-fugit', NULL, NULL),
(17, 'Nisi sint.', 'Omnis laudantium facere est reprehenderit. Nesciunt sapiente atque minus quam.', 1970, 'nisi-sint', NULL, NULL),
(18, 'Ut at saepe nihil.', 'Perferendis sint delectus sit provident. Non pariatur qui sed ut natus totam et. Minus aut quia quis impedit tenetur dolore.', 1974, 'ut-at-saepe-nihil', NULL, NULL),
(19, 'Ratione qui quod.', 'Repudiandae aut et maxime autem molestias minus sit dolorem. Unde ut omnis quo. Facere eum dolor non aperiam occaecati voluptatem sequi ut.', 1976, 'ratione-qui-quod', NULL, NULL),
(20, 'Quasi saepe iure.', 'Omnis porro consequuntur quia quae. Quisquam expedita eum assumenda sit aperiam quia. Eos quasi similique est occaecati numquam voluptates.', 1988, 'quasi-saepe-iure', NULL, NULL),
(21, 'Dignissimos voluptate voluptatem aliquid.', 'Similique occaecati nesciunt quia est. Ex soluta ut iure sunt fuga praesentium. Sit rerum ratione consequuntur saepe officiis. Nostrum nam eos rerum alias nihil.', 2018, 'dignissimos-voluptate-voluptatem-aliquid', NULL, NULL),
(22, 'Quaerat voluptatem molestiae.', 'Amet illum atque est numquam cum. A sit ea id dolorem perspiciatis ullam. Labore animi eos distinctio sit omnis.', 1979, 'quaerat-voluptatem-molestiae', NULL, NULL),
(23, 'Nam excepturi qui.', 'Veniam labore sit doloremque aut. Cum quaerat totam et quos assumenda ut. Aut aut atque voluptas molestiae enim vitae aut.', 2008, 'nam-excepturi-qui', NULL, NULL),
(24, 'Necessitatibus quis saepe similique.', 'Eos quaerat a minus sit alias voluptate. Delectus deserunt praesentium et voluptas. Quae eaque iste rerum eum rerum nihil. Minima expedita dolor autem.', 1997, 'necessitatibus-quis-saepe-similique', NULL, NULL),
(25, 'Commodi rerum voluptas aut sit.', 'Non officia voluptatem sed laboriosam enim commodi quasi. Quia sed sequi totam non error neque. Modi dolore molestias qui sit illum quasi. Eum omnis distinctio qui molestiae ut ab voluptate earum.', 1974, 'commodi-rerum-voluptas-aut-sit', NULL, NULL),
(26, 'Voluptatem impedit sed.', 'Hic quisquam quae eum natus. Eius laborum reprehenderit in consequatur omnis corporis. Rerum porro voluptatem quia distinctio. Repudiandae alias architecto officia maxime culpa illo officiis dolor.', 2012, 'voluptatem-impedit-sed', NULL, NULL),
(27, 'Architecto ipsam nostrum.', 'Id sint id corporis unde. Quia maiores et autem inventore. Exercitationem officia omnis alias.', 1991, 'architecto-ipsam-nostrum', NULL, NULL),
(28, 'Mollitia vitae pariatur.', 'Doloribus sit iure laudantium. Ducimus necessitatibus ducimus dolor facere est commodi id. Aliquid excepturi voluptatem illum odio.', 1993, 'mollitia-vitae-pariatur', NULL, NULL),
(29, 'Qui veniam sed.', 'Iusto quis consequatur doloremque quia corporis ex exercitationem. Necessitatibus a tenetur sapiente beatae soluta quia. Dolorum a est qui eaque accusamus debitis dicta. Et aliquid ea id enim cum incidunt voluptates.', 2013, 'qui-veniam-sed', NULL, NULL),
(30, 'Et qui deserunt.', 'Atque et sit autem provident. Aut distinctio soluta ad ipsam consequatur atque. Autem et nihil nesciunt explicabo est eveniet qui. Ipsum odit porro aut illum ea tempora ipsum dolorum. Voluptates omnis voluptatibus quos.', 1990, 'et-qui-deserunt', NULL, NULL),
(31, 'Velit unde enim.', 'Sint iste voluptas distinctio corporis numquam nobis. Vero nemo perferendis odio autem dolorum. Quia laborum aperiam alias. Et eligendi odio ipsam voluptas debitis architecto praesentium. Molestiae aut ab porro eveniet et dolor et.', 2009, 'velit-unde-enim', NULL, NULL),
(32, 'Dolorem eum.', 'Ipsa modi voluptatem repudiandae cumque vero voluptatibus. Excepturi culpa deserunt voluptatem nulla aperiam. Qui assumenda sit hic aut voluptas.', 2013, 'dolorem-eum', NULL, NULL),
(33, 'Dicta soluta officiis.', 'In ipsum dignissimos velit odio. Consequatur corrupti sed vel cumque voluptas accusamus libero. Mollitia possimus magnam et voluptates aliquid molestiae quae. Ea magnam nisi sint aut.', 1989, 'dicta-soluta-officiis', NULL, NULL),
(34, 'Molestiae autem modi.', 'Eos dignissimos ut fugiat. Aut perferendis velit nihil sit et voluptatem. Sequi non ullam autem et quam dolor quidem. Ea ut quia voluptatem ipsum est quos.', 2001, 'molestiae-autem-modi', NULL, NULL),
(35, 'Laborum quo aspernatur perferendis.', 'Perspiciatis quisquam sunt qui illum aliquam ad ratione. Explicabo et aperiam qui nisi. Dolores laborum culpa sequi dolorem fugit non et.', 1992, 'laborum-quo-aspernatur-perferendis', NULL, NULL),
(36, 'Mollitia optio quo quas.', 'Cum architecto dignissimos excepturi voluptatem blanditiis rerum. Commodi sed earum molestias dicta perspiciatis et consequatur quos. Sed qui nihil harum nihil ea aperiam. Dolorum eum fuga autem et debitis provident.', 1974, 'mollitia-optio-quo-quas', NULL, NULL),
(37, 'Quibusdam dolorum voluptatem neque.', 'Deserunt tempora molestiae dolorum. Iste cupiditate ut nostrum voluptas. Est est ea nihil. Ea sit laborum eaque explicabo voluptate porro. Et quia consequatur quibusdam veniam officiis voluptatibus.', 1984, 'quibusdam-dolorum-voluptatem-neque', NULL, NULL),
(38, 'Aliquid assumenda incidunt aut.', 'Nesciunt fuga eveniet ipsam alias qui. Nostrum deserunt a ab impedit dolorum. Natus vero inventore dolore autem. Eveniet fuga necessitatibus aut architecto.', 1991, 'aliquid-assumenda-incidunt-aut', NULL, NULL),
(39, 'Mollitia ducimus qui aut.', 'Qui corporis accusamus dolor quo molestiae qui. Ut necessitatibus similique quisquam consequatur. Unde aut laboriosam enim omnis adipisci doloribus est.', 2004, 'mollitia-ducimus-qui-aut', NULL, NULL),
(40, 'In autem quia.', 'Repudiandae a aut nemo nesciunt nostrum. At eos repudiandae debitis minus necessitatibus veritatis officiis. Impedit doloremque quidem officia eveniet et velit et. Quod facere enim minus similique quidem.', 2003, 'in-autem-quia', NULL, NULL),
(41, 'Voluptatibus molestiae.', 'Est fuga itaque modi veniam. Nesciunt beatae dolore nam officia. Voluptates est esse exercitationem perspiciatis. Accusamus excepturi nihil suscipit. Nesciunt iure non quasi sunt ut quia adipisci nostrum.', 1979, 'voluptatibus-molestiae', NULL, NULL),
(42, 'Aliquam dolorem dolores rerum.', 'Et occaecati ad sint rerum et. Et molestiae aspernatur optio non veritatis. Vero in ut aut sunt repellendus. Aut non beatae iusto repellat doloribus sequi ipsam.', 2002, 'aliquam-dolorem-dolores-rerum', NULL, NULL),
(43, 'Vero facilis.', 'Occaecati ducimus rerum quibusdam qui vero aut voluptatem. Voluptas omnis vel hic voluptatem rerum omnis voluptates. Id in optio reiciendis.', 1998, 'vero-facilis', NULL, NULL),
(44, 'Qui est deleniti perferendis.', 'Fuga ut sint alias dolorem dignissimos repellat debitis. Est molestiae aut repellendus occaecati. Aut quia est ut enim aut. Dolor iste qui aut quo ea delectus. Et aut assumenda officiis ea repellendus atque et.', 1971, 'qui-est-deleniti-perferendis', NULL, NULL),
(45, 'Quis suscipit placeat cupiditate.', 'Voluptatem facere nihil ea maxime est aut. Minima aspernatur ex qui asperiores sunt debitis. Quibusdam ut omnis ullam cupiditate. Alias et qui provident eius quas minus sit eum.', 1980, 'quis-suscipit-placeat-cupiditate', NULL, NULL),
(46, 'Totam explicabo ipsa voluptas necessitatibus.', 'Dolore quas labore sequi non. Delectus quos non quia aspernatur. Commodi sunt impedit aperiam possimus reiciendis. Corrupti tempora ut vel cumque maxime qui distinctio consequuntur.', 2009, 'totam-explicabo-ipsa-voluptas-necessitatibus', NULL, NULL),
(47, 'Natus aut qui.', 'Ut doloremque rerum corrupti ipsa aut eum. At odio dignissimos deleniti laboriosam quia omnis. Quisquam asperiores eaque rerum commodi excepturi aut ea.', 1981, 'natus-aut-qui', NULL, NULL),
(48, 'Quis eius minus.', 'Id ipsum ea voluptatem quod repellat est consequatur. Ut nobis qui pariatur voluptate vitae vel.', 1989, 'quis-eius-minus', NULL, NULL),
(49, 'Libero expedita est.', 'Ex repellat non neque pariatur rerum voluptatibus dolorem. Repellendus sint recusandae magni labore deserunt. Inventore mollitia consequatur enim eius quia quas eum.', 2011, 'libero-expedita-est', NULL, NULL),
(50, 'Non accusamus porro.', 'Officiis tempora dignissimos aperiam eos repellendus autem hic. Dolores quisquam est reprehenderit nobis quo qui esse. Reprehenderit asperiores dolorem nisi alias. Placeat non repellat blanditiis fugiat dolor nisi.', 1985, 'non-accusamus-porro', NULL, NULL),
(51, 'Quia deleniti sunt consequatur.', 'Dolorem error facilis ullam vel. Voluptatem numquam assumenda ut et minus accusamus quas. Nesciunt dolorem libero est sed.', 1982, 'quia-deleniti-sunt-consequatur', NULL, NULL),
(52, 'Nemo rem.', 'Dignissimos voluptatem non cumque qui at sint rerum neque. Nesciunt consequatur voluptates ex omnis est non expedita. Repellat laborum quidem tenetur voluptate.', 2008, 'nemo-rem', NULL, NULL),
(53, 'Quaerat iure iusto.', 'Quaerat inventore aliquam iure iste laborum. Nemo error recusandae in quis. Numquam perferendis quam eum dolores adipisci. Esse corrupti qui ut consequatur.', 1970, 'quaerat-iure-iusto', NULL, NULL),
(54, 'Reiciendis aut.', 'Qui consequatur quaerat aperiam dolor qui. Voluptas eum occaecati nisi earum doloremque amet. Distinctio optio laborum consectetur laudantium est et qui ratione. Sit eaque sit doloremque maxime aliquam.', 2007, 'reiciendis-aut', NULL, NULL),
(55, 'Nesciunt temporibus nemo qui.', 'Voluptas deleniti mollitia aut dolorum reiciendis et ipsa. Doloribus beatae cupiditate est non vel.', 1998, 'nesciunt-temporibus-nemo-qui', NULL, NULL),
(56, 'Molestias occaecati consequatur est.', 'Necessitatibus fugiat nesciunt et maiores. Eum consequatur libero incidunt dolores est sed minima. Velit labore quisquam facilis mollitia.', 1999, 'molestias-occaecati-consequatur-est', NULL, NULL),
(57, 'Vero molestias at repellat.', 'Modi accusamus pariatur omnis porro quia itaque corrupti. Similique doloremque tempora omnis.', 1999, 'vero-molestias-at-repellat', NULL, NULL),
(58, 'Ipsum eum velit quo voluptatum.', 'Tenetur et repellat est et perspiciatis. Sapiente vitae nihil alias quidem est expedita. Aut debitis id saepe beatae maiores dolores. Velit deleniti saepe provident repellendus dolorum beatae. Veritatis dolorum velit similique sapiente ea quisquam ducimus.', 2011, 'ipsum-eum-velit-quo-voluptatum', NULL, NULL),
(59, 'Omnis et.', 'Maxime voluptatem tempora aperiam qui illo facere. Dolorem nisi esse eveniet. Voluptas deleniti nostrum est.', 1996, 'omnis-et', NULL, NULL),
(60, 'Totam consectetur distinctio occaecati vel.', 'Voluptates quam laboriosam earum voluptas illo. Aut perferendis impedit eligendi nihil voluptatem.', 1994, 'totam-consectetur-distinctio-occaecati-vel', NULL, NULL),
(61, 'Voluptatem quae explicabo.', 'Voluptatem autem id dolores nihil. Accusantium natus assumenda veritatis est qui. Tenetur est voluptas voluptatem eum iusto accusamus sed. Perferendis consequatur voluptatem ut explicabo.', 2017, 'voluptatem-quae-explicabo', NULL, NULL),
(62, 'Sit eveniet pariatur.', 'Tenetur ipsam accusantium nemo minus quibusdam praesentium enim. Et sunt quis quisquam nulla nisi aspernatur. In velit ut consequatur sed quae sint sunt.', 2008, 'sit-eveniet-pariatur', NULL, NULL),
(63, 'Voluptatem cumque officia.', 'Commodi rerum necessitatibus quis iste quis consequatur. Perferendis ratione incidunt sint et sit. Beatae excepturi eaque quae fugit et quia non. Explicabo mollitia explicabo et sint eum et. Molestias numquam eos tenetur est earum voluptatum natus.', 1977, 'voluptatem-cumque-officia', NULL, NULL),
(64, 'Reprehenderit voluptatem aut natus.', 'Inventore libero nostrum voluptas sed. Nobis quae ab optio illum placeat eos nam. Maiores et eos sed aut mollitia. Nemo quos dignissimos reprehenderit error hic.', 1998, 'reprehenderit-voluptatem-aut-natus', NULL, NULL),
(65, 'Aut ut maxime ut.', 'Id ut ipsum iusto facere qui alias. Ab laborum dolorum eius aliquam quidem quisquam. Aut id pariatur exercitationem ullam est. Dolor corrupti aut dolorem est inventore sunt.', 1974, 'aut-ut-maxime-ut', NULL, NULL),
(66, 'Aut est nemo vitae.', 'Officia harum magnam eveniet aut dolorem debitis. Qui ut perspiciatis aliquid quaerat magnam dolores. Aut ut molestias hic. Quas omnis similique et esse quo itaque voluptas.', 1996, 'aut-est-nemo-vitae', NULL, NULL),
(67, 'Incidunt reiciendis nesciunt quod.', 'Voluptatem quasi quis qui sint provident ipsam. Expedita consequuntur et ab occaecati qui. Consectetur aut corporis rem saepe dignissimos aut.', 2008, 'incidunt-reiciendis-nesciunt-quod', NULL, NULL),
(68, 'Autem excepturi reiciendis.', 'Placeat quia omnis quas omnis. Et fugiat repellendus ut corrupti rerum. Est aliquid pariatur ullam rerum. Voluptate quos tenetur quas consequuntur ducimus occaecati dolorem.', 1988, 'autem-excepturi-reiciendis', NULL, NULL),
(69, 'Dolores expedita facilis.', 'Rem et aut eos et sequi et deserunt. Deleniti qui quis ab. Accusamus molestiae qui aliquid voluptatem quos quae enim. Rerum ea minima dolores dolore dolores tenetur eius odio.', 1999, 'dolores-expedita-facilis', NULL, NULL),
(70, 'Ullam et iure.', 'At odio in repellendus fugit nisi neque. Sint non pariatur est vel pariatur. Quo nam voluptatem blanditiis nihil tempore.', 1991, 'ullam-et-iure', NULL, NULL),
(71, 'Cum facere ut.', 'Debitis ut exercitationem vel rerum est vel. Repellat impedit harum totam sed itaque labore. Aut esse aliquid reiciendis distinctio eos. Nesciunt quasi molestiae laborum ipsa sed voluptatem eaque.', 1980, 'cum-facere-ut', NULL, NULL),
(72, 'Ullam repellat cupiditate id.', 'Voluptates debitis aliquid quibusdam non et. Laudantium illum temporibus minima at sequi. Beatae quod recusandae omnis voluptatibus aut sequi maxime. Sunt et laborum placeat eveniet et vitae qui.', 1976, 'ullam-repellat-cupiditate-id', NULL, NULL),
(73, 'Quasi eveniet aut cum asperiores.', 'Magnam amet aliquid accusantium recusandae deleniti autem. Aperiam aliquid ipsum pariatur quam qui minima nam sunt. Voluptates doloremque sit sed.', 1994, 'quasi-eveniet-aut-cum-asperiores', NULL, NULL),
(74, 'Qui sed molestiae qui dolor.', 'At et minus unde dignissimos ex sunt doloribus. Odio eveniet voluptatibus dolorem error ut. Perspiciatis dolorem dolor molestiae.', 1997, 'qui-sed-molestiae-qui-dolor', NULL, NULL),
(75, 'Unde error praesentium.', 'Cum omnis sit vero id occaecati culpa. At dolorum qui omnis nisi. Corrupti consequatur eveniet rerum et. Ut occaecati laborum corporis et.', 2008, 'unde-error-praesentium', NULL, NULL),
(76, 'Consequuntur dolor laborum aut.', 'Molestiae culpa qui amet perspiciatis consectetur. Recusandae quia rerum mollitia qui voluptates qui consequatur. Modi incidunt in quos ipsam ut nam nemo. Sunt architecto aut quia nulla. In reiciendis rerum labore consequatur corporis.', 1978, 'consequuntur-dolor-laborum-aut', NULL, NULL),
(77, 'Repellendus nostrum sint.', 'Laborum eaque aut dolores quia. Pariatur repellat error sapiente. Quidem tenetur ex consequuntur eius doloremque et.', 1998, 'repellendus-nostrum-sint', NULL, NULL),
(78, 'Possimus eum non.', 'Velit recusandae qui ducimus ipsum molestiae quod illo. Sit sed aut libero et velit. Tempore autem deleniti et consectetur quos. Cumque necessitatibus vel id ut qui.', 1977, 'possimus-eum-non', NULL, NULL),
(79, 'Consectetur incidunt perferendis et.', 'Earum ut magni eveniet recusandae qui dicta aut. Est repudiandae quam quod qui. Sit et reprehenderit adipisci nam.', 2009, 'consectetur-incidunt-perferendis-et', NULL, NULL),
(80, 'Amet est est maiores.', 'Ipsum error doloremque iure. Mollitia voluptatum porro facere ullam est. Quia laborum sed optio et enim aut commodi.', 1990, 'amet-est-est-maiores', NULL, NULL),
(81, 'Consequatur facere aliquid aut.', 'Autem tempora et aliquam. Sit aut veniam quibusdam enim nulla. Suscipit optio voluptas sed ut non rerum iure.', 2013, 'consequatur-facere-aliquid-aut', NULL, NULL),
(82, 'Et et omnis.', 'Voluptates et voluptas rerum. Vel et et aut eius. Asperiores exercitationem nesciunt excepturi.', 1982, 'et-et-omnis', NULL, NULL),
(83, 'Accusamus sit quaerat.', 'Esse necessitatibus omnis architecto repellat. Deleniti ut accusantium vel iste magni ex sapiente dicta. Ratione cum quis eveniet hic veritatis nemo doloremque.', 1978, 'accusamus-sit-quaerat', NULL, NULL),
(84, 'Minus eos repellendus in.', 'Dignissimos molestiae consequatur quia et optio. Iste et mollitia vitae occaecati perferendis delectus. Aut qui asperiores aut odit minima.', 2003, 'minus-eos-repellendus-in', NULL, NULL),
(85, 'Alias debitis quasi.', 'Reprehenderit molestiae illo quidem laborum voluptatem at molestias. Reiciendis maxime fugiat placeat tempora exercitationem sint adipisci vel. Et occaecati aspernatur perferendis in voluptate.', 1999, 'alias-debitis-quasi', NULL, NULL),
(86, 'Repellat sed est.', 'Ex recusandae sint et sed nesciunt quidem. Architecto nostrum quidem accusantium. Non ea nemo voluptatem et et ut dolore.', 1983, 'repellat-sed-est', NULL, NULL),
(87, 'Ab optio sint.', 'Rerum praesentium soluta dolorem eos corrupti nam. Aut est sed reprehenderit ut. Tempore expedita iusto et.', 1970, 'ab-optio-sint', NULL, NULL),
(88, 'Et tempora tenetur.', 'Facilis tenetur dolores commodi tempore libero. Repellendus impedit dignissimos et consequatur consequuntur eum autem consectetur. Temporibus aut unde vero.', 1996, 'et-tempora-tenetur', NULL, NULL),
(89, 'Et sint aut ut.', 'Labore explicabo illo sapiente minus pariatur quia. Ipsa distinctio ut voluptatem fugit. Enim non quibusdam occaecati quasi.', 1988, 'et-sint-aut-ut', NULL, NULL),
(90, 'Voluptas unde hic.', 'At beatae error ducimus. Omnis quasi iusto quisquam officiis exercitationem. Distinctio et enim fugit aperiam culpa atque. A libero dolorum ipsum pariatur non voluptatem maxime.', 2003, 'voluptas-unde-hic', NULL, NULL),
(91, 'Voluptatibus ex.', 'Explicabo atque veniam sint omnis quibusdam ratione. Fuga voluptatem vero perferendis illo animi odio eum. Delectus corporis autem nihil aut a est.', 1994, 'voluptatibus-ex', NULL, NULL),
(92, 'Omnis expedita neque enim.', 'Ipsa tenetur temporibus magni facere omnis. Ut veniam impedit aspernatur amet architecto suscipit dolores iure. Qui sequi omnis repudiandae necessitatibus quos dolores architecto. Explicabo cum inventore aspernatur et ducimus.', 2014, 'omnis-expedita-neque-enim', NULL, NULL),
(93, 'Qui dolore dicta.', 'Et in facere voluptatum neque officiis. Voluptas rerum nisi sit qui quia est. Veritatis ea aut quis optio. Error occaecati magni magni nobis dolor nisi.', 1975, 'qui-dolore-dicta', NULL, NULL),
(94, 'Et esse sed nemo qui.', 'Aut et harum deleniti. Quia nam enim sit qui. Deserunt natus quibusdam quis voluptatem cumque.', 1982, 'et-esse-sed-nemo-qui', NULL, NULL),
(95, 'Autem consequatur saepe.', 'Provident quidem et sed exercitationem consectetur. Enim earum dolores facilis et tenetur eius voluptas corporis. Animi eius nisi aspernatur accusamus ratione quo in.', 2017, 'autem-consequatur-saepe', NULL, NULL),
(96, 'Voluptatem enim reprehenderit.', 'Tenetur animi atque deserunt accusamus dicta veniam. Aut vel et mollitia. Harum vero ut dolore a nemo. Et explicabo minus dolor ut nam blanditiis.', 1993, 'voluptatem-enim-reprehenderit', NULL, NULL),
(97, 'Minima quaerat et assumenda.', 'Nemo accusantium ipsum autem animi fugit. Vero enim maxime et quam nesciunt eius. Ipsam commodi ex at illum.', 1992, 'minima-quaerat-et-assumenda', NULL, NULL),
(98, 'Magnam minus.', 'Corrupti voluptas ut perspiciatis voluptas dolores quasi. Excepturi ullam autem aut ut dolores quo alias. In ut non incidunt. Et aliquid repellat maxime consequatur repellendus.', 1995, 'magnam-minus', NULL, NULL),
(99, 'Suscipit placeat iure autem repudiandae.', 'Aliquam est numquam similique corrupti tempora. Voluptatem minus ex eum ut corrupti eaque sed consequatur. Nesciunt consequatur sunt nesciunt voluptatem assumenda porro fuga.', 2016, 'suscipit-placeat-iure-autem-repudiandae', NULL, NULL),
(100, 'Qui numquam aut et.', 'Consequatur quaerat nemo et perferendis. Molestiae exercitationem harum ut et corrupti. Ullam itaque ullam accusamus soluta quo. Ipsum aspernatur voluptatibus qui aut.', 2015, 'qui-numquam-aut-et', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `watchlearn_movies_actors`
--

CREATE TABLE `watchlearn_movies_actors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `watchlearn_movies_actors_movies`
--

CREATE TABLE `watchlearn_movies_actors_movies` (
  `movie_id` int(10) UNSIGNED NOT NULL,
  `actor_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `watchlearn_movies_genres`
--

CREATE TABLE `watchlearn_movies_genres` (
  `id` int(10) UNSIGNED NOT NULL,
  `genre_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `watchlearn_movies_movies_genres`
--

CREATE TABLE `watchlearn_movies_movies_genres` (
  `movie_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `zainab_simplecontact_contact`
--

CREATE TABLE `zainab_simplecontact_contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `is_new` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_replied` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `backend_access_log`
--
ALTER TABLE `backend_access_log`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `backend_users`
--
ALTER TABLE `backend_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login_unique` (`login`),
  ADD UNIQUE KEY `email_unique` (`email`),
  ADD KEY `act_code_index` (`activation_code`),
  ADD KEY `reset_code_index` (`reset_password_code`),
  ADD KEY `admin_role_index` (`role_id`);

--
-- Index pour la table `backend_users_groups`
--
ALTER TABLE `backend_users_groups`
  ADD PRIMARY KEY (`user_id`,`user_group_id`);

--
-- Index pour la table `backend_user_groups`
--
ALTER TABLE `backend_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_unique` (`name`),
  ADD KEY `code_index` (`code`);

--
-- Index pour la table `backend_user_preferences`
--
ALTER TABLE `backend_user_preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_item_index` (`user_id`,`namespace`,`group`,`item`);

--
-- Index pour la table `backend_user_roles`
--
ALTER TABLE `backend_user_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_unique` (`name`),
  ADD KEY `role_code_index` (`code`);

--
-- Index pour la table `backend_user_throttle`
--
ALTER TABLE `backend_user_throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `backend_user_throttle_user_id_index` (`user_id`),
  ADD KEY `backend_user_throttle_ip_address_index` (`ip_address`);

--
-- Index pour la table `cache`
--
ALTER TABLE `cache`
  ADD UNIQUE KEY `cache_key_unique` (`key`);

--
-- Index pour la table `cms_theme_data`
--
ALTER TABLE `cms_theme_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_data_theme_index` (`theme`);

--
-- Index pour la table `cms_theme_logs`
--
ALTER TABLE `cms_theme_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_logs_type_index` (`type`),
  ADD KEY `cms_theme_logs_theme_index` (`theme`),
  ADD KEY `cms_theme_logs_user_id_index` (`user_id`);

--
-- Index pour la table `deferred_bindings`
--
ALTER TABLE `deferred_bindings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deferred_bindings_master_type_index` (`master_type`),
  ADD KEY `deferred_bindings_master_field_index` (`master_field`),
  ADD KEY `deferred_bindings_slave_type_index` (`slave_type`),
  ADD KEY `deferred_bindings_slave_id_index` (`slave_id`),
  ADD KEY `deferred_bindings_session_key_index` (`session_key`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `flosch_slideshow_slides`
--
ALTER TABLE `flosch_slideshow_slides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flosch_slideshow_slides_slideshow_id_foreign` (`slideshow_id`);

--
-- Index pour la table `flosch_slideshow_slideshows`
--
ALTER TABLE `flosch_slideshow_slideshows`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `flynsarmy_sociallogin_user_providers`
--
ALTER TABLE `flynsarmy_sociallogin_user_providers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `provider_id_token_index` (`provider_id`,`provider_token`),
  ADD KEY `flynsarmy_sociallogin_user_providers_user_id_index` (`user_id`);

--
-- Index pour la table `grcote7_books_`
--
ALTER TABLE `grcote7_books_`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `grcote7_books_owners`
--
ALTER TABLE `grcote7_books_owners`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `grcote7_dptlist_dpts`
--
ALTER TABLE `grcote7_dptlist_dpts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departement_slug` (`slug`),
  ADD KEY `departement_code` (`code`);

--
-- Index pour la table `grcote7_library_books`
--
ALTER TABLE `grcote7_library_books`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `grcote7_movies_`
--
ALTER TABLE `grcote7_movies_`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `grcote7_movies_actors`
--
ALTER TABLE `grcote7_movies_actors`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `grcote7_movies_actors_movies`
--
ALTER TABLE `grcote7_movies_actors_movies`
  ADD PRIMARY KEY (`actor_id`,`movie_id`);

--
-- Index pour la table `grcote7_movies_genres`
--
ALTER TABLE `grcote7_movies_genres`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `grcote7_movies_movies_genres`
--
ALTER TABLE `grcote7_movies_movies_genres`
  ADD PRIMARY KEY (`movie_id`,`genre_id`);

--
-- Index pour la table `grcote7_movies_tags`
--
ALTER TABLE `grcote7_movies_tags`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `grcote7_movies_tags_movies`
--
ALTER TABLE `grcote7_movies_tags_movies`
  ADD PRIMARY KEY (`movie_id`,`tag_id`);

--
-- Index pour la table `grcote7_tutos_categories`
--
ALTER TABLE `grcote7_tutos_categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `grcote7_tutos_courses`
--
ALTER TABLE `grcote7_tutos_courses`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `grcote7_tutos_tutos`
--
ALTER TABLE `grcote7_tutos_tutos`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `grcote7_tutos_tutos_categories`
--
ALTER TABLE `grcote7_tutos_tutos_categories`
  ADD PRIMARY KEY (`tuto_id`,`categorie_id`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`);

--
-- Index pour la table `leocavalcante_backendusertree_proxies`
--
ALTER TABLE `leocavalcante_backendusertree_proxies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leocavalcante_backendusertree_proxies_parent_id_foreign` (`parent_id`),
  ADD KEY `leocavalcante_backendusertree_proxies_user_id_foreign` (`user_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `rainlab_blog_categories`
--
ALTER TABLE `rainlab_blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_blog_categories_slug_index` (`slug`),
  ADD KEY `rainlab_blog_categories_parent_id_index` (`parent_id`);

--
-- Index pour la table `rainlab_blog_posts`
--
ALTER TABLE `rainlab_blog_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_blog_posts_user_id_index` (`user_id`),
  ADD KEY `rainlab_blog_posts_slug_index` (`slug`);

--
-- Index pour la table `rainlab_blog_posts_categories`
--
ALTER TABLE `rainlab_blog_posts_categories`
  ADD PRIMARY KEY (`post_id`,`category_id`);

--
-- Index pour la table `rainlab_forum_channels`
--
ALTER TABLE `rainlab_forum_channels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rainlab_forum_channels_slug_unique` (`slug`),
  ADD KEY `rainlab_forum_channels_parent_id_index` (`parent_id`),
  ADD KEY `rainlab_forum_channels_embed_code_index` (`embed_code`);

--
-- Index pour la table `rainlab_forum_members`
--
ALTER TABLE `rainlab_forum_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_forum_members_user_id_index` (`user_id`),
  ADD KEY `rainlab_forum_members_count_posts_index` (`count_posts`),
  ADD KEY `rainlab_forum_members_count_topics_index` (`count_topics`),
  ADD KEY `rainlab_forum_members_last_active_at_index` (`last_active_at`),
  ADD KEY `rainlab_forum_members_is_moderator_index` (`is_moderator`);

--
-- Index pour la table `rainlab_forum_posts`
--
ALTER TABLE `rainlab_forum_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_forum_posts_topic_id_index` (`topic_id`),
  ADD KEY `rainlab_forum_posts_member_id_index` (`member_id`);

--
-- Index pour la table `rainlab_forum_topics`
--
ALTER TABLE `rainlab_forum_topics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rainlab_forum_topics_slug_unique` (`slug`),
  ADD KEY `sticky_post_time` (`is_sticky`,`last_post_at`),
  ADD KEY `rainlab_forum_topics_channel_id_index` (`channel_id`),
  ADD KEY `rainlab_forum_topics_start_member_id_index` (`start_member_id`),
  ADD KEY `rainlab_forum_topics_last_post_at_index` (`last_post_at`),
  ADD KEY `rainlab_forum_topics_is_private_index` (`is_private`),
  ADD KEY `rainlab_forum_topics_is_locked_index` (`is_locked`),
  ADD KEY `rainlab_forum_topics_count_posts_index` (`count_posts`),
  ADD KEY `rainlab_forum_topics_count_views_index` (`count_views`),
  ADD KEY `rainlab_forum_topics_embed_code_index` (`embed_code`);

--
-- Index pour la table `rainlab_forum_topic_followers`
--
ALTER TABLE `rainlab_forum_topic_followers`
  ADD PRIMARY KEY (`topic_id`,`member_id`);

--
-- Index pour la table `rainlab_sitemap_definitions`
--
ALTER TABLE `rainlab_sitemap_definitions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_sitemap_definitions_theme_index` (`theme`);

--
-- Index pour la table `rainlab_translate_attributes`
--
ALTER TABLE `rainlab_translate_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_translate_attributes_locale_index` (`locale`),
  ADD KEY `rainlab_translate_attributes_model_id_index` (`model_id`),
  ADD KEY `rainlab_translate_attributes_model_type_index` (`model_type`);

--
-- Index pour la table `rainlab_translate_indexes`
--
ALTER TABLE `rainlab_translate_indexes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_translate_indexes_locale_index` (`locale`),
  ADD KEY `rainlab_translate_indexes_model_id_index` (`model_id`),
  ADD KEY `rainlab_translate_indexes_model_type_index` (`model_type`),
  ADD KEY `rainlab_translate_indexes_item_index` (`item`);

--
-- Index pour la table `rainlab_translate_locales`
--
ALTER TABLE `rainlab_translate_locales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_translate_locales_code_index` (`code`),
  ADD KEY `rainlab_translate_locales_name_index` (`name`);

--
-- Index pour la table `rainlab_translate_messages`
--
ALTER TABLE `rainlab_translate_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_translate_messages_code_index` (`code`);

--
-- Index pour la table `rainlab_user_mail_blockers`
--
ALTER TABLE `rainlab_user_mail_blockers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_user_mail_blockers_email_index` (`email`),
  ADD KEY `rainlab_user_mail_blockers_template_index` (`template`),
  ADD KEY `rainlab_user_mail_blockers_user_id_index` (`user_id`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Index pour la table `system_event_logs`
--
ALTER TABLE `system_event_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_event_logs_level_index` (`level`);

--
-- Index pour la table `system_files`
--
ALTER TABLE `system_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_files_field_index` (`field`),
  ADD KEY `system_files_attachment_id_index` (`attachment_id`),
  ADD KEY `system_files_attachment_type_index` (`attachment_type`);

--
-- Index pour la table `system_mail_layouts`
--
ALTER TABLE `system_mail_layouts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `system_mail_partials`
--
ALTER TABLE `system_mail_partials`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `system_mail_templates`
--
ALTER TABLE `system_mail_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_mail_templates_layout_id_index` (`layout_id`);

--
-- Index pour la table `system_parameters`
--
ALTER TABLE `system_parameters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_index` (`namespace`,`group`,`item`);

--
-- Index pour la table `system_plugin_history`
--
ALTER TABLE `system_plugin_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_plugin_history_code_index` (`code`),
  ADD KEY `system_plugin_history_type_index` (`type`);

--
-- Index pour la table `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_plugin_versions_code_index` (`code`);

--
-- Index pour la table `system_request_logs`
--
ALTER TABLE `system_request_logs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `system_revisions`
--
ALTER TABLE `system_revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`),
  ADD KEY `system_revisions_user_id_index` (`user_id`),
  ADD KEY `system_revisions_field_index` (`field`);

--
-- Index pour la table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_settings_item_index` (`item`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_login_unique` (`username`),
  ADD KEY `users_activation_code_index` (`activation_code`),
  ADD KEY `users_reset_password_code_index` (`reset_password_code`),
  ADD KEY `users_login_index` (`username`);

--
-- Index pour la table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`user_id`,`user_group_id`);

--
-- Index pour la table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_groups_code_index` (`code`);

--
-- Index pour la table `user_throttle`
--
ALTER TABLE `user_throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_throttle_user_id_index` (`user_id`),
  ADD KEY `user_throttle_ip_address_index` (`ip_address`);

--
-- Index pour la table `watchlearn_movies_`
--
ALTER TABLE `watchlearn_movies_`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `watchlearn_movies_actors`
--
ALTER TABLE `watchlearn_movies_actors`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `watchlearn_movies_actors_movies`
--
ALTER TABLE `watchlearn_movies_actors_movies`
  ADD PRIMARY KEY (`movie_id`,`actor_id`);

--
-- Index pour la table `watchlearn_movies_genres`
--
ALTER TABLE `watchlearn_movies_genres`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `watchlearn_movies_movies_genres`
--
ALTER TABLE `watchlearn_movies_movies_genres`
  ADD PRIMARY KEY (`movie_id`,`genre_id`);

--
-- Index pour la table `zainab_simplecontact_contact`
--
ALTER TABLE `zainab_simplecontact_contact`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `backend_access_log`
--
ALTER TABLE `backend_access_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `backend_users`
--
ALTER TABLE `backend_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `backend_user_groups`
--
ALTER TABLE `backend_user_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `backend_user_preferences`
--
ALTER TABLE `backend_user_preferences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `backend_user_roles`
--
ALTER TABLE `backend_user_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `backend_user_throttle`
--
ALTER TABLE `backend_user_throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `cms_theme_data`
--
ALTER TABLE `cms_theme_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `cms_theme_logs`
--
ALTER TABLE `cms_theme_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT pour la table `deferred_bindings`
--
ALTER TABLE `deferred_bindings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `flosch_slideshow_slides`
--
ALTER TABLE `flosch_slideshow_slides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `flosch_slideshow_slideshows`
--
ALTER TABLE `flosch_slideshow_slideshows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `flynsarmy_sociallogin_user_providers`
--
ALTER TABLE `flynsarmy_sociallogin_user_providers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `grcote7_books_`
--
ALTER TABLE `grcote7_books_`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `grcote7_books_owners`
--
ALTER TABLE `grcote7_books_owners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `grcote7_dptlist_dpts`
--
ALTER TABLE `grcote7_dptlist_dpts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT pour la table `grcote7_library_books`
--
ALTER TABLE `grcote7_library_books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `grcote7_movies_`
--
ALTER TABLE `grcote7_movies_`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT pour la table `grcote7_movies_actors`
--
ALTER TABLE `grcote7_movies_actors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT pour la table `grcote7_movies_genres`
--
ALTER TABLE `grcote7_movies_genres`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `grcote7_movies_tags`
--
ALTER TABLE `grcote7_movies_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `grcote7_tutos_categories`
--
ALTER TABLE `grcote7_tutos_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `grcote7_tutos_courses`
--
ALTER TABLE `grcote7_tutos_courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `grcote7_tutos_tutos`
--
ALTER TABLE `grcote7_tutos_tutos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `leocavalcante_backendusertree_proxies`
--
ALTER TABLE `leocavalcante_backendusertree_proxies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT pour la table `rainlab_blog_categories`
--
ALTER TABLE `rainlab_blog_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `rainlab_blog_posts`
--
ALTER TABLE `rainlab_blog_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `rainlab_forum_channels`
--
ALTER TABLE `rainlab_forum_channels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `rainlab_forum_members`
--
ALTER TABLE `rainlab_forum_members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `rainlab_forum_posts`
--
ALTER TABLE `rainlab_forum_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `rainlab_forum_topics`
--
ALTER TABLE `rainlab_forum_topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `rainlab_sitemap_definitions`
--
ALTER TABLE `rainlab_sitemap_definitions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `rainlab_translate_attributes`
--
ALTER TABLE `rainlab_translate_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `rainlab_translate_indexes`
--
ALTER TABLE `rainlab_translate_indexes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `rainlab_translate_locales`
--
ALTER TABLE `rainlab_translate_locales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `rainlab_translate_messages`
--
ALTER TABLE `rainlab_translate_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `rainlab_user_mail_blockers`
--
ALTER TABLE `rainlab_user_mail_blockers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `system_event_logs`
--
ALTER TABLE `system_event_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `system_files`
--
ALTER TABLE `system_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `system_mail_layouts`
--
ALTER TABLE `system_mail_layouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `system_mail_partials`
--
ALTER TABLE `system_mail_partials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `system_mail_templates`
--
ALTER TABLE `system_mail_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `system_parameters`
--
ALTER TABLE `system_parameters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `system_plugin_history`
--
ALTER TABLE `system_plugin_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=708;

--
-- AUTO_INCREMENT pour la table `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT pour la table `system_request_logs`
--
ALTER TABLE `system_request_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `system_revisions`
--
ALTER TABLE `system_revisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `user_throttle`
--
ALTER TABLE `user_throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `watchlearn_movies_`
--
ALTER TABLE `watchlearn_movies_`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `watchlearn_movies_actors`
--
ALTER TABLE `watchlearn_movies_actors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `watchlearn_movies_genres`
--
ALTER TABLE `watchlearn_movies_genres`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `zainab_simplecontact_contact`
--
ALTER TABLE `zainab_simplecontact_contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `flosch_slideshow_slides`
--
ALTER TABLE `flosch_slideshow_slides`
  ADD CONSTRAINT `flosch_slideshow_slides_slideshow_id_foreign` FOREIGN KEY (`slideshow_id`) REFERENCES `flosch_slideshow_slideshows` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `leocavalcante_backendusertree_proxies`
--
ALTER TABLE `leocavalcante_backendusertree_proxies`
  ADD CONSTRAINT `leocavalcante_backendusertree_proxies_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `leocavalcante_backendusertree_proxies` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `leocavalcante_backendusertree_proxies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `backend_users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
