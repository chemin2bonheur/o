-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le :  mar. 05 sep. 2017 à 12:37
-- Version du serveur :  5.7.18
-- Version de PHP :  7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `admin_c57_october`
--

-- --------------------------------------------------------

--
-- Structure de la table `backend_access_log`
--

CREATE TABLE `backend_access_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `backend_access_log`
--

INSERT INTO `backend_access_log` (`id`, `user_id`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 1, '127.0.0.1', '2016-05-09 13:09:43', '2016-05-09 13:09:43'),
(2, 1, '127.0.0.1', '2016-05-18 14:33:23', '2016-05-18 14:33:23'),
(3, 1, '127.0.0.1', '2016-05-19 16:02:10', '2016-05-19 16:02:10'),
(4, 1, '127.0.0.1', '2016-05-20 22:13:51', '2016-05-20 22:13:51'),
(5, 1, '127.0.0.1', '2016-05-22 05:08:06', '2016-05-22 05:08:06'),
(6, 1, '109.16.190.20', '2016-05-29 22:11:39', '2016-05-29 22:11:39'),
(7, 1, '37.167.98.13', '2016-11-04 11:10:16', '2016-11-04 11:10:16'),
(8, 1, '88.179.111.110', '2016-11-12 13:46:21', '2016-11-12 13:46:21'),
(9, 1, '88.163.150.193', '2016-11-16 20:32:39', '2016-11-16 20:32:39'),
(10, 1, '78.193.17.97', '2016-11-19 09:13:45', '2016-11-19 09:13:45'),
(11, 1, '88.179.111.110', '2016-12-01 12:03:59', '2016-12-01 12:03:59'),
(12, 1, '88.179.111.110', '2016-12-01 22:42:09', '2016-12-01 22:42:09'),
(13, 1, '88.179.111.110', '2016-12-04 19:09:11', '2016-12-04 19:09:11'),
(14, 1, '37.164.85.28', '2017-01-28 23:20:26', '2017-01-28 23:20:26'),
(15, 1, '37.164.85.28', '2017-01-28 23:24:48', '2017-01-28 23:24:48'),
(16, 1, '37.164.85.28', '2017-01-28 23:26:20', '2017-01-28 23:26:20'),
(17, 1, '37.164.85.28', '2017-01-29 00:38:11', '2017-01-29 00:38:11'),
(18, 1, '88.179.111.110', '2017-01-29 15:22:37', '2017-01-29 15:22:37'),
(19, 1, '88.179.111.110', '2017-04-15 10:50:09', '2017-04-15 10:50:09'),
(20, 1, '79.81.20.90', '2017-04-15 10:50:55', '2017-04-15 10:50:55'),
(21, 1, '127.0.0.1', '2017-06-19 10:12:14', '2017-06-19 10:12:14'),
(22, 1, '127.0.0.1', '2017-06-19 17:43:25', '2017-06-19 17:43:25'),
(23, 1, '127.0.0.1', '2017-07-24 04:03:20', '2017-07-24 04:03:20'),
(24, 1, '88.179.111.110', '2017-07-24 12:28:02', '2017-07-24 12:28:02'),
(25, 1, '88.179.111.110', '2017-07-24 12:52:26', '2017-07-24 12:52:26'),
(26, 1, '88.179.111.110', '2017-07-31 05:28:48', '2017-07-31 05:28:48'),
(27, 1, '88.179.111.110', '2017-08-13 17:24:36', '2017-08-13 17:24:36'),
(28, 1, '88.179.111.110', '2017-09-05 11:10:21', '2017-09-05 11:10:21'),
(29, 1, '88.179.111.110', '2017-09-05 11:10:23', '2017-09-05 11:10:23'),
(30, 1, '127.0.0.1', '2017-09-05 12:32:24', '2017-09-05 12:32:24');

-- --------------------------------------------------------

--
-- Structure de la table `backend_users`
--

CREATE TABLE `backend_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `activation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persist_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `is_activated` tinyint(1) NOT NULL DEFAULT '0',
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL DEFAULT '0',
  `role_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `backend_users`
--

INSERT INTO `backend_users` (`id`, `first_name`, `last_name`, `login`, `email`, `password`, `activation_code`, `persist_code`, `reset_password_code`, `permissions`, `is_activated`, `activated_at`, `last_login`, `created_at`, `updated_at`, `is_superuser`, `role_id`) VALUES
(1, 'Lionel', 'COTE', 'GrCOTE7', 'GrCOTE7@GMail.com', '$2y$10$b.VNHXYYeMjjPf17L.64LevvuU/ltW8DDcHMKfEI.8ODDMcNu7fkq', NULL, '$2y$10$mHpanko9IFRMaVZjZXFqbeF56CVD8okdaE86jZ6XWIML//BXpqWgK', NULL, '', 1, NULL, '2017-09-05 12:32:16', '2016-05-09 13:00:04', '2017-09-05 12:32:16', 1, 3),
(2, 'Lio', 'COTE', 'Lio181', 'lio181@yahoo.fr', '$2y$10$tAx.1kTd3s.p7rzRHw.Wq.mJ6Qp13PfN2vyC3WMR/Jb5f.yru.Qy6', NULL, NULL, NULL, '', 0, NULL, NULL, '2017-06-12 10:06:29', '2017-06-12 10:06:29', 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `backend_users_groups`
--

CREATE TABLE `backend_users_groups` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `backend_users_groups`
--

INSERT INTO `backend_users_groups` (`user_id`, `user_group_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `backend_user_groups`
--

CREATE TABLE `backend_user_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_new_user_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `backend_user_groups`
--

INSERT INTO `backend_user_groups` (`id`, `name`, `created_at`, `updated_at`, `code`, `description`, `is_new_user_default`) VALUES
(1, 'Owners', '2016-05-09 13:00:04', '2016-05-09 13:00:04', 'owners', 'Default group for website owners.', 0);

-- --------------------------------------------------------

--
-- Structure de la table `backend_user_preferences`
--

CREATE TABLE `backend_user_preferences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `backend_user_preferences`
--

INSERT INTO `backend_user_preferences` (`id`, `user_id`, `namespace`, `group`, `item`, `value`) VALUES
(2, 1, 'backend', 'reportwidgets', 'dashboard', '{\"report_container_dashboard_1\":{\"class\":\"System\\\\ReportWidgets\\\\Status\",\"configuration\":{\"title\":\"\\u00c9tat du syst\\u00e8me\",\"ocWidgetWidth\":\"10\",\"ocWidgetNewRow\":null},\"sortOrder\":1},\"report_container_dashboard_2\":{\"class\":\"Indikator\\\\Backend\\\\ReportWidgets\\\\Status\",\"configuration\":{\"title\":\"indikator.backend::lang.widgets.system.label\",\"webpage\":true,\"updates\":true,\"plugins\":true,\"themes\":true,\"ocWidgetWidth\":\"5\"},\"sortOrder\":2},\"report_container_dashboard_4\":{\"class\":\"Indikator\\\\Backend\\\\ReportWidgets\\\\Logins\",\"configuration\":{\"title\":\"Last logins\",\"logins\":\"3\",\"ip\":true,\"ocWidgetWidth\":\"5\",\"ocWidgetNewRow\":null},\"sortOrder\":4},\"report_container_dashboard_5\":{\"class\":\"Indikator\\\\Backend\\\\ReportWidgets\\\\Cache\",\"configuration\":{\"title\":\"indikator.backend::lang.widgets.cache.label\",\"ocWidgetWidth\":\"10\"},\"sortOrder\":5}}'),
(3, 1, 'backend', 'backend', 'preferences', '{\"locale\":\"fr\",\"fallback_locale\":\"en\",\"timezone\":\"Europe\\/Paris\",\"editor_font_size\":\"12\",\"editor_word_wrap\":\"fluid\",\"editor_code_folding\":\"manual\",\"editor_tab_size\":\"4\",\"editor_theme\":\"twilight\",\"editor_show_invisibles\":\"0\",\"editor_highlight_active_line\":\"1\",\"editor_use_hard_tabs\":\"0\",\"editor_show_gutter\":\"1\",\"editor_auto_closing\":\"0\",\"editor_autocompletion\":\"manual\",\"editor_enable_snippets\":\"0\",\"editor_display_indent_guides\":\"0\",\"editor_show_print_margin\":\"0\",\"rounded_avatar\":\"0\",\"topmenu_label\":\"0\",\"sidebar_description\":\"0\",\"sidebar_search\":\"0\",\"more_themes\":\"0\",\"focus_searchfield\":\"0\",\"form_clearbutton\":\"0\",\"virtual_keyboard\":\"0\",\"delete_plugin\":\"0\",\"enabled_gzip\":\"0\",\"user_id\":\"1\"}');

-- --------------------------------------------------------

--
-- Structure de la table `backend_user_roles`
--

CREATE TABLE `backend_user_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `permissions` text COLLATE utf8_unicode_ci,
  `is_system` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `backend_user_roles`
--

INSERT INTO `backend_user_roles` (`id`, `name`, `code`, `description`, `permissions`, `is_system`, `created_at`, `updated_at`) VALUES
(1, 'Publisher', 'publisher', 'Site editor with access to publishing tools.', NULL, 0, NULL, NULL),
(2, 'Developer', 'developer', 'Site administrator with access to developer tools.', NULL, 0, NULL, NULL),
(3, 'Owners', NULL, 'Default group for website owners.', NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `backend_user_throttle`
--

CREATE TABLE `backend_user_throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `is_suspended` tinyint(1) NOT NULL DEFAULT '0',
  `suspended_at` timestamp NULL DEFAULT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT '0',
  `banned_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `backend_user_throttle`
--

INSERT INTO `backend_user_throttle` (`id`, `user_id`, `ip_address`, `attempts`, `last_attempt_at`, `is_suspended`, `suspended_at`, `is_banned`, `banned_at`) VALUES
(1, 1, '127.0.0.1', 0, NULL, 0, NULL, 0, NULL),
(2, 1, '109.16.190.20', 0, NULL, 0, NULL, 0, NULL),
(3, 1, '37.167.98.13', 0, NULL, 0, NULL, 0, NULL),
(4, 1, '88.179.111.110', 0, NULL, 0, NULL, 0, NULL),
(5, 1, '88.163.150.193', 0, NULL, 0, NULL, 0, NULL),
(6, 1, '78.193.17.97', 0, NULL, 0, NULL, 0, NULL),
(7, 1, '37.164.85.28', 0, NULL, 0, NULL, 0, NULL),
(8, 1, '79.81.20.90', 0, NULL, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cms_theme_data`
--

CREATE TABLE `cms_theme_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `theme` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` mediumtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `cms_theme_data`
--

INSERT INTO `cms_theme_data` (`id`, `theme`, `data`, `created_at`, `updated_at`) VALUES
(3, 'gc001', '{\"created_at\":\"2016-05-17 11:42:53\",\"updated_at\":\"2016-05-17 11:42:53\",\"site_name\":\"Mon Site d\'\\u00c9tude !\"}', '2016-05-17 09:42:53', '2016-05-17 09:43:08'),
(4, 'gc000', '{\"site_name\":\"Mon Site pour \\u00c9tudes!\"}', '2016-05-17 11:52:22', '2016-12-01 18:26:13'),
(6, 'zwiebl-zwiebl_stellar', '{\"website_name\":\"HTML5UP Stellar\",\"website_author\":\"Zwiebl.xyz\",\"website_url\":\"http:\\/\\/demo.zwiebl.xyz\\/html5up_stellar\",\"description\":\"Modern and Clean One Page OctoberCMS Theme\",\"keywords\":\"october,octobercms,themes,templates,free octobercms themes\",\"load_google_fonts\":true,\"google_font_family\":\"Roboto+Slab:300,400,700|Raleway:300,300i,400,400i,700,700i\",\"load_fontawesome\":true,\"load_jQuery\":true,\"jQuery_version\":\"2.2.4\",\"show_section_one\":true,\"show_section_two\":true,\"show_section_three\":true,\"show_section_four\":true,\"zw-bg-color-bg-one\":\"#a89cc8\",\"zw-bg-color-bg-two\":\"#5f4d93\",\"zw-bg-color-buttons\":\"8cc9f0\"}', '2016-11-13 21:22:30', '2016-11-13 21:22:30'),
(7, 'laratify-octobercms-octaskin', '{\"website_name\":\"Octaskin\",\"website_author\":\"Laratify\",\"website_url\":\"http:\\/\\/demo.laratify.dev\\/octobercms\\/?theme=octaskin\",\"description\":\"Free Modern and Clean OctoberCMS Theme based on Materialize CSS.\",\"keywords\":\"octaskin,laratify,october,octobercms,themes,templates,free octobercms themes\",\"load_google_fonts\":true,\"google_font_family\":\"Roboto+Slab:300,400,700|Raleway:300,300i,400,400i,700,700i\",\"load_fontawesome\":true,\"load_material_icons\":true,\"load_stroke7_icons\":true,\"load_jQuery\":true,\"jQuery_version\":\"2.2.4\",\"primary_color\":\"#ff5722\",\"secondary_color\":\"#2196f3\",\"navigation_background_color\":\"#ff5722\",\"navigation_text_color\":\"#ffffff\",\"slideshow_background_color\":\"#455a64\",\"slideshow_text_color\":\"#ffffff\",\"header_background_color\":\"#37474f\",\"header_text_color\":\"#ffffff\",\"feature_background_color\":\"#ffffff\",\"feature_text_color\":\"#686868\",\"utility_background_color\":\"#eceff1\",\"utility_text_color\":\"#686868\",\"mainpage_background_color\":\"#ffffff\",\"mainpage_text_color\":\"#686868\",\"bottom_background_color\":\"#eceff1\",\"bottom_text_color\":\"#686868\",\"extension_background_color\":\"#ffffff\",\"extension_text_color\":\"#686868\",\"footer_background_color\":\"#455a64\",\"footer_text_color\":\"#b0bec5\",\"copyright_background_color\":\"#37474f\",\"copyright_text_color\":\"#78909c\",\"load_animate_css\":true,\"load_wow_js\":true,\"load_owl_carousel\":true}', '2016-11-13 22:11:50', '2016-11-13 22:11:50'),
(8, 'vojtasvoboda-newage', '{\"site_title\":\"My new websites\",\"site_locale\":\"en\",\"footer\":\"\\u00a9 2016 My new websites. All Rights Reserved.\",\"menu_transparent\":true,\"footer_menu\":true,\"intro_enabled\":true,\"intro_headline\":\"New Age is an app landing page that will help you beautifully showcase your new mobile app, or anything else!\",\"intro_button\":\"Start Now for Free!\",\"intro_button_link\":\"#download\",\"download_enabled\":true,\"download_headline\":\"Discover what all the buzz is about!\",\"download_content\":\"<p>Our app is available on any mobile device! Download now to get started!<\\/p>\",\"download_google_link\":\"https:\\/\\/play.google.com\",\"download_appstore_link\":\"https:\\/\\/appstore.com\",\"features_enabled\":true,\"features_headline\":\"Unlimited Features, Unlimited Fun\",\"features_subheadline\":\"Check out what you can do with this app theme!\",\"cta_enabled\":true,\"cta_headline\":\"Stop waiting.<br>Start building.\",\"cta_button\":\"Let\'s Get Started!\",\"cta_button_link\":\"#contact\",\"contact_enabled\":true,\"contact_headline\":\"We <i class=\\\"fa fa-heart\\\"><\\/i> new friends!\",\"contact_twitter\":\"https:\\/\\/twitter.com\",\"contact_facebook\":\"https:\\/\\/facebook.com\",\"contact_google\":\"https:\\/\\/plus.google.com\"}', '2016-11-13 22:23:27', '2016-11-13 22:23:27');

-- --------------------------------------------------------

--
-- Structure de la table `cms_theme_logs`
--

CREATE TABLE `cms_theme_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `theme` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `old_template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `old_content` longtext COLLATE utf8_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `deferred_bindings`
--

CREATE TABLE `deferred_bindings` (
  `id` int(10) UNSIGNED NOT NULL,
  `master_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `master_field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slave_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slave_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `session_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_bind` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `deferred_bindings`
--

INSERT INTO `deferred_bindings` (`id`, `master_type`, `master_field`, `slave_type`, `slave_id`, `session_key`, `is_bind`, `created_at`, `updated_at`) VALUES
(1, 'Backend\\Models\\User', 'avatar', 'System\\Models\\File', '2', '6YADjrK86vCcFEicHinytLzw0iXpRi0u64343wEx', 0, '2017-06-11 19:09:49', '2017-06-11 19:09:49'),
(5, 'Backend\\Models\\User', 'avatar', 'System\\Models\\File', '7', '6YADjrK86vCcFEicHinytLzw0iXpRi0u64343wEx', 1, '2017-06-11 19:13:08', '2017-06-11 19:13:08'),
(6, 'Backend\\Models\\User', 'avatar', 'System\\Models\\File', '2', 'o6x0oBFKJh460RJjOhrgkyO6OQL1o6AgO18GHUjW', 0, '2017-06-11 19:16:27', '2017-06-11 19:16:27');

-- --------------------------------------------------------

--
-- Structure de la table `departement`
--

CREATE TABLE `departement` (
  `id` int(11) NOT NULL,
  `code` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `nom` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `update_at` date NOT NULL,
  `created_at` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `departement`
--

INSERT INTO `departement` (`id`, `code`, `nom`, `slug`, `update_at`, `created_at`) VALUES
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
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci,
  `failed_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `grcote7_library_books`
--

INSERT INTO `grcote7_library_books` (`id`, `title`, `slug`, `author`, `year`, `short_description`) VALUES
(1, 'Hackers', 'hackers', 'Steven Levy', '1984', 'Heroes of the Computer Revolution'),
(2, 'Master of Doom', 'master-doom', 'David Kuinner', '2003', 'How Two Guys Created an Empire and Transformed Pop Culture'),
(3, 'Ghost In The Wires', 'ghost-wires', 'Kevin Monick', '2011', 'Me Adventure as the World\'s Most Wanted Hacker');

-- --------------------------------------------------------

--
-- Structure de la table `indikator_backend_trash`
--

CREATE TABLE `indikator_backend_trash` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(8) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `martin_forms_records`
--

CREATE TABLE `martin_forms_records` (
  `id` int(10) UNSIGNED NOT NULL,
  `group` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '(Empty)',
  `form_data` text COLLATE utf8_unicode_ci,
  `ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2013_10_01_000001_Db_Deferred_Bindings', 1),
('2013_10_01_000002_Db_System_Files', 1),
('2013_10_01_000003_Db_System_Plugin_Versions', 1),
('2013_10_01_000004_Db_System_Plugin_History', 1),
('2013_10_01_000005_Db_System_Settings', 1),
('2013_10_01_000006_Db_System_Parameters', 1),
('2013_10_01_000007_Db_System_Add_Disabled_Flag', 1),
('2013_10_01_000008_Db_System_Mail_Templates', 1),
('2013_10_01_000009_Db_System_Mail_Layouts', 1),
('2014_10_01_000010_Db_Jobs', 1),
('2014_10_01_000011_Db_System_Event_Logs', 1),
('2014_10_01_000012_Db_System_Request_Logs', 1),
('2014_10_01_000013_Db_System_Sessions', 1),
('2015_10_01_000014_Db_System_Mail_Layout_Rename', 1),
('2015_10_01_000015_Db_System_Add_Frozen_Flag', 1),
('2015_10_01_000016_Db_Cache', 1),
('2015_10_01_000017_Db_System_Revisions', 1),
('2015_10_01_000018_Db_FailedJobs', 1),
('2013_10_01_000001_Db_Backend_Users', 2),
('2013_10_01_000002_Db_Backend_User_Groups', 2),
('2013_10_01_000003_Db_Backend_Users_Groups', 2),
('2013_10_01_000004_Db_Backend_User_Throttle', 2),
('2014_01_04_000005_Db_Backend_User_Preferences', 2),
('2014_10_01_000006_Db_Backend_Access_Log', 2),
('2014_10_01_000007_Db_Backend_Add_Description_Field', 2),
('2015_10_01_000008_Db_Backend_Add_Superuser_Flag', 2),
('2014_10_01_000001_Db_Cms_Theme_Data', 3),
('2016_10_01_000019_Db_System_Plugin_History_Detail_Text', 4),
('2016_10_01_000020_Db_System_Timestamp_Fix', 4),
('2016_10_01_000009_Db_Backend_Timestamp_Fix', 5),
('2016_10_01_000002_Db_Cms_Timestamp_Fix', 6),
('2017_10_01_000003_Db_Cms_Theme_Logs', 7),
('2017_08_04_121309_Db_Deferred_Bindings_Add_Index_Session', 8),
('2017_10_01_000021_Db_System_Sessions_Update', 8),
('2017_10_01_000022_Db_Jobs_FailedJobs_Update', 8),
('2017_10_01_000023_Db_System_Mail_Partials', 8),
('2017_10_01_000010_Db_Backend_User_Roles', 9);

-- --------------------------------------------------------

--
-- Structure de la table `mohsin_txt_agents`
--

CREATE TABLE `mohsin_txt_agents` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `mohsin_txt_agents`
--

INSERT INTO `mohsin_txt_agents` (`id`, `name`, `comment`) VALUES
(1, '*', 'All'),
(2, 'Googlebot', 'Google\'s web crawler'),
(3, 'baiduspider', 'Baidu\'s web crawler'),
(4, 'Bingbot', 'Microsoft\'s web crawler'),
(5, 'ia_archiver', 'The Internet Archive'),
(6, 'Naverbot', 'South Korean Naver web crawler'),
(7, 'Yeti', 'South Korean Yeti web crawler'),
(8, 'seznambot', 'Czech Republic Sezna web crawler'),
(9, 'Slurp', 'Yahoo! Slurp web crawler'),
(10, 'Yandex', 'Russian Yandex web crawler');

-- --------------------------------------------------------

--
-- Structure de la table `mohsin_txt_directives`
--

CREATE TABLE `mohsin_txt_directives` (
  `id` int(10) UNSIGNED NOT NULL,
  `robot_id` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `mohsin_txt_humans`
--

CREATE TABLE `mohsin_txt_humans` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribution` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `mohsin_txt_information`
--

CREATE TABLE `mohsin_txt_information` (
  `id` int(10) UNSIGNED NOT NULL,
  `human_id` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  `field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `mohsin_txt_robots`
--

CREATE TABLE `mohsin_txt_robots` (
  `id` int(10) UNSIGNED NOT NULL,
  `agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `rainlab_blog_categories`
--

CREATE TABLE `rainlab_blog_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `nest_left` int(11) DEFAULT NULL,
  `nest_right` int(11) DEFAULT NULL,
  `nest_depth` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `rainlab_blog_categories`
--

INSERT INTO `rainlab_blog_categories` (`id`, `name`, `slug`, `code`, `description`, `parent_id`, `nest_left`, `nest_right`, `nest_depth`, `created_at`, `updated_at`) VALUES
(1, 'Sans catégorie', 'uncategorized', NULL, NULL, NULL, 1, 2, 0, '2016-05-14 09:17:20', '2016-05-14 09:17:20');

-- --------------------------------------------------------

--
-- Structure de la table `rainlab_blog_posts`
--

CREATE TABLE `rainlab_blog_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `content_html` text COLLATE utf8_unicode_ci,
  `published_at` timestamp NULL DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `rainlab_blog_posts`
--

INSERT INTO `rainlab_blog_posts` (`id`, `user_id`, `title`, `slug`, `excerpt`, `content`, `content_html`, `published_at`, `published`, `created_at`, `updated_at`) VALUES
(1, NULL, 'First blog post', 'first-blog-post', 'The first ever blog post is here. It might be a good idea to update this post with some more relevant content.', 'This is your first ever **blog post**! It might be a good idea to update this post with some more relevant content.\r\n\r\nYou can edit this content by selecting **Blog** from the administration back-end menu.\r\n\r\n*Enjoy the good times!*', '<p>This is your first ever <strong>blog post</strong>! It might be a good idea to update this post with some more relevant content.</p>\n<p>You can edit this content by selecting <strong>Blog</strong> from the administration back-end menu.</p>\n<p><em>Enjoy the good times!</em></p>', '2016-05-14 09:17:19', 1, '2016-05-14 09:17:19', '2017-01-29 00:35:22');

-- --------------------------------------------------------

--
-- Structure de la table `rainlab_blog_posts_categories`
--

CREATE TABLE `rainlab_blog_posts_categories` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `rainlab_blog_posts_categories`
--

INSERT INTO `rainlab_blog_posts_categories` (`post_id`, `category_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `rainlab_forum_channels`
--

CREATE TABLE `rainlab_forum_channels` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nest_left` int(11) DEFAULT NULL,
  `nest_right` int(11) DEFAULT NULL,
  `nest_depth` int(11) DEFAULT NULL,
  `count_topics` int(11) NOT NULL DEFAULT '0',
  `count_posts` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `is_moderated` tinyint(1) NOT NULL DEFAULT '0',
  `embed_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `rainlab_forum_channels`
--

INSERT INTO `rainlab_forum_channels` (`id`, `parent_id`, `title`, `slug`, `description`, `nest_left`, `nest_right`, `nest_depth`, `count_topics`, `count_posts`, `created_at`, `updated_at`, `is_hidden`, `is_moderated`, `embed_code`) VALUES
(1, NULL, 'Channel Orange', 'channel-orange', 'A root level forum channel', 1, 12, 0, 0, 0, '2016-05-16 09:06:57', '2016-05-16 09:06:59', 0, 0, NULL),
(2, 1, 'Autumn Leaves', 'autumn-leaves', 'Disccusion about the season of falling leaves.', 2, 9, 1, 0, 0, '2016-05-16 09:06:58', '2016-05-16 09:06:59', 0, 0, NULL),
(3, 2, 'September', 'september', 'The start of the fall season.', 3, 4, 2, 0, 0, '2016-05-16 09:06:58', '2016-05-16 09:06:58', 0, 0, NULL),
(4, 2, 'October', 'october', 'The middle of the fall season.', 5, 6, 2, 0, 0, '2016-05-16 09:06:58', '2016-05-16 09:06:58', 0, 0, NULL),
(5, 2, 'November', 'november', 'The end of the fall season.', 7, 8, 2, 0, 0, '2016-05-16 09:06:58', '2016-05-16 09:06:59', 0, 0, NULL),
(6, 1, 'Summer Breeze', 'summer-breeze', 'Disccusion about the wind at the ocean.', 10, 11, 1, 0, 0, '2016-05-16 09:06:59', '2016-05-16 09:06:59', 0, 0, NULL),
(7, NULL, 'Channel Green', 'channel-green', 'A root level forum channel', 13, 18, 0, 0, 0, '2016-05-16 09:06:59', '2016-05-16 09:06:59', 0, 0, NULL),
(8, 7, 'Winter Snow', 'winter-snow', 'Disccusion about the frosty snow flakes.', 14, 15, 1, 0, 0, '2016-05-16 09:06:59', '2016-05-16 09:06:59', 0, 0, NULL),
(9, 7, 'Spring Trees', 'spring-trees', 'Disccusion about the blooming gardens.', 16, 17, 1, 0, 0, '2016-05-16 09:06:59', '2016-05-16 09:07:00', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `rainlab_forum_members`
--

CREATE TABLE `rainlab_forum_members` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `count_posts` int(11) NOT NULL DEFAULT '0',
  `count_topics` int(11) NOT NULL DEFAULT '0',
  `last_active_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_moderator` tinyint(1) NOT NULL DEFAULT '0',
  `is_banned` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `rainlab_forum_posts`
--

CREATE TABLE `rainlab_forum_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `content_html` text COLLATE utf8_unicode_ci,
  `topic_id` int(10) UNSIGNED DEFAULT NULL,
  `member_id` int(10) UNSIGNED DEFAULT NULL,
  `edit_user_id` int(11) DEFAULT NULL,
  `delete_user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `rainlab_forum_topics`
--

CREATE TABLE `rainlab_forum_topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
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
  `embed_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `rainlab_forum_topic_followers`
--

CREATE TABLE `rainlab_forum_topic_followers` (
  `topic_id` int(10) UNSIGNED NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `rainlab_location_countries`
--

CREATE TABLE `rainlab_location_countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_pinned` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `rainlab_location_countries`
--

INSERT INTO `rainlab_location_countries` (`id`, `is_enabled`, `name`, `code`, `is_pinned`) VALUES
(1, 1, 'Australia', 'AU', 1),
(2, 1, 'Canada', 'CA', 1),
(3, 1, 'United Kingdom', 'GB', 1),
(4, 1, 'United States', 'US', 1),
(5, 0, 'Afghanistan', 'AF', 0),
(6, 0, 'Aland Islands ', 'AX', 0),
(7, 0, 'Albania', 'AL', 0),
(8, 0, 'Algeria', 'DZ', 0),
(9, 0, 'American Samoa', 'AS', 0),
(10, 0, 'Andorra', 'AD', 0),
(11, 0, 'Angola', 'AO', 0),
(12, 0, 'Anguilla', 'AI', 0),
(13, 0, 'Antarctica', 'AQ', 0),
(14, 0, 'Antigua and Barbuda', 'AG', 0),
(15, 0, 'Argentina', 'AR', 0),
(16, 0, 'Armenia', 'AM', 0),
(17, 0, 'Aruba', 'AW', 0),
(18, 0, 'Austria', 'AT', 0),
(19, 0, 'Azerbaijan', 'AZ', 0),
(20, 0, 'Bahamas', 'BS', 0),
(21, 0, 'Bahrain', 'BH', 0),
(22, 0, 'Bangladesh', 'BD', 0),
(23, 0, 'Barbados', 'BB', 0),
(24, 0, 'Belarus', 'BY', 0),
(25, 0, 'Belgium', 'BE', 0),
(26, 0, 'Belize', 'BZ', 0),
(27, 0, 'Benin', 'BJ', 0),
(28, 0, 'Bermuda', 'BM', 0),
(29, 0, 'Bhutan', 'BT', 0),
(30, 0, 'Bolivia, Plurinational State of', 'BO', 0),
(31, 0, 'Bonaire, Sint Eustatius and Saba', 'BQ', 0),
(32, 0, 'Bosnia and Herzegovina', 'BA', 0),
(33, 0, 'Botswana', 'BW', 0),
(34, 0, 'Bouvet Island', 'BV', 0),
(35, 0, 'Brazil', 'BR', 0),
(36, 0, 'British Indian Ocean Territory', 'IO', 0),
(37, 0, 'Brunei Darussalam', 'BN', 0),
(38, 0, 'Bulgaria', 'BG', 0),
(39, 0, 'Burkina Faso', 'BF', 0),
(40, 0, 'Burundi', 'BI', 0),
(41, 0, 'Cambodia', 'KH', 0),
(42, 0, 'Cameroon', 'CM', 0),
(43, 0, 'Cape Verde', 'CV', 0),
(44, 0, 'Cayman Islands', 'KY', 0),
(45, 0, 'Central African Republic', 'CF', 0),
(46, 0, 'Chad', 'TD', 0),
(47, 0, 'Chile', 'CL', 0),
(48, 0, 'China', 'CN', 0),
(49, 0, 'Christmas Island', 'CX', 0),
(50, 0, 'Cocos (Keeling) Islands', 'CC', 0),
(51, 0, 'Colombia', 'CO', 0),
(52, 0, 'Comoros', 'KM', 0),
(53, 0, 'Congo', 'CG', 0),
(54, 0, 'Congo, the Democratic Republic of the', 'CD', 0),
(55, 0, 'Cook Islands', 'CK', 0),
(56, 0, 'Costa Rica', 'CR', 0),
(57, 0, 'Cote d\'Ivoire', 'CI', 0),
(58, 0, 'Croatia', 'HR', 0),
(59, 0, 'Cuba', 'CU', 0),
(60, 0, 'Curaçao', 'CW', 0),
(61, 0, 'Cyprus', 'CY', 0),
(62, 0, 'Czech Republic', 'CZ', 0),
(63, 0, 'Denmark', 'DK', 0),
(64, 0, 'Djibouti', 'DJ', 0),
(65, 0, 'Dominica', 'DM', 0),
(66, 0, 'Dominican Republic', 'DO', 0),
(67, 0, 'Ecuador', 'EC', 0),
(68, 0, 'Egypt', 'EG', 0),
(69, 0, 'El Salvador', 'SV', 0),
(70, 0, 'Equatorial Guinea', 'GQ', 0),
(71, 0, 'Eritrea', 'ER', 0),
(72, 0, 'Estonia', 'EE', 0),
(73, 0, 'Ethiopia', 'ET', 0),
(74, 0, 'Falkland Islands (Malvinas)', 'FK', 0),
(75, 0, 'Faroe Islands', 'FO', 0),
(76, 0, 'Finland', 'FI', 0),
(77, 0, 'Fiji', 'FJ', 0),
(78, 1, 'France', 'FR', 0),
(79, 0, 'French Guiana', 'GF', 0),
(80, 0, 'French Polynesia', 'PF', 0),
(81, 0, 'French Southern Territories', 'TF', 0),
(82, 0, 'Gabon', 'GA', 0),
(83, 0, 'Gambia', 'GM', 0),
(84, 0, 'Georgia', 'GE', 0),
(85, 0, 'Germany', 'DE', 0),
(86, 0, 'Ghana', 'GH', 0),
(87, 0, 'Gibraltar', 'GI', 0),
(88, 0, 'Greece', 'GR', 0),
(89, 0, 'Greenland', 'GL', 0),
(90, 0, 'Grenada', 'GD', 0),
(91, 0, 'Guadeloupe', 'GP', 0),
(92, 0, 'Guam', 'GU', 0),
(93, 0, 'Guatemala', 'GT', 0),
(94, 0, 'Guernsey', 'GG', 0),
(95, 0, 'Guinea', 'GN', 0),
(96, 0, 'Guinea-Bissau', 'GW', 0),
(97, 0, 'Guyana', 'GY', 0),
(98, 0, 'Haiti', 'HT', 0),
(99, 0, 'Heard Island and McDonald Islands', 'HM', 0),
(100, 0, 'Holy See (Vatican City State)', 'VA', 0),
(101, 0, 'Honduras', 'HN', 0),
(102, 0, 'Hong Kong', 'HK', 0),
(103, 1, 'Hungary', 'HU', 0),
(104, 0, 'Iceland', 'IS', 0),
(105, 1, 'India', 'IN', 0),
(106, 0, 'Indonesia', 'ID', 0),
(107, 0, 'Iran, Islamic Republic of', 'IR', 0),
(108, 0, 'Iraq', 'IQ', 0),
(109, 1, 'Ireland', 'IE', 0),
(110, 0, 'Isle of Man', 'IM', 0),
(111, 0, 'Israel', 'IL', 0),
(112, 0, 'Italy', 'IT', 0),
(113, 0, 'Jamaica', 'JM', 0),
(114, 0, 'Japan', 'JP', 0),
(115, 0, 'Jersey', 'JE', 0),
(116, 0, 'Jordan', 'JO', 0),
(117, 0, 'Kazakhstan', 'KZ', 0),
(118, 0, 'Kenya', 'KE', 0),
(119, 0, 'Kiribati', 'KI', 0),
(120, 0, 'Korea, Democratic People\'s Republic of', 'KP', 0),
(121, 0, 'Korea, Republic of', 'KR', 0),
(122, 0, 'Kuwait', 'KW', 0),
(123, 0, 'Kyrgyzstan', 'KG', 0),
(124, 0, 'Lao People\'s Democratic Republic', 'LA', 0),
(125, 0, 'Latvia', 'LV', 0),
(126, 0, 'Lebanon', 'LB', 0),
(127, 0, 'Lesotho', 'LS', 0),
(128, 0, 'Liberia', 'LR', 0),
(129, 0, 'Libyan Arab Jamahiriya', 'LY', 0),
(130, 0, 'Liechtenstein', 'LI', 0),
(131, 0, 'Lithuania', 'LT', 0),
(132, 0, 'Luxembourg', 'LU', 0),
(133, 0, 'Macao', 'MO', 0),
(134, 0, 'Macedonia', 'MK', 0),
(135, 0, 'Madagascar', 'MG', 0),
(136, 0, 'Malawi', 'MW', 0),
(137, 0, 'Malaysia', 'MY', 0),
(138, 0, 'Maldives', 'MV', 0),
(139, 0, 'Mali', 'ML', 0),
(140, 0, 'Malta', 'MT', 0),
(141, 0, 'Marshall Islands', 'MH', 0),
(142, 0, 'Martinique', 'MQ', 0),
(143, 0, 'Mauritania', 'MR', 0),
(144, 0, 'Mauritius', 'MU', 0),
(145, 0, 'Mayotte', 'YT', 0),
(146, 0, 'Mexico', 'MX', 0),
(147, 0, 'Micronesia, Federated States of', 'FM', 0),
(148, 0, 'Moldova, Republic of', 'MD', 0),
(149, 0, 'Monaco', 'MC', 0),
(150, 0, 'Mongolia', 'MN', 0),
(151, 0, 'Montenegro', 'ME', 0),
(152, 0, 'Montserrat', 'MS', 0),
(153, 0, 'Morocco', 'MA', 0),
(154, 0, 'Mozambique', 'MZ', 0),
(155, 0, 'Myanmar', 'MM', 0),
(156, 0, 'Namibia', 'NA', 0),
(157, 0, 'Nauru', 'NR', 0),
(158, 0, 'Nepal', 'NP', 0),
(159, 1, 'Netherlands', 'NL', 0),
(160, 0, 'New Caledonia', 'NC', 0),
(161, 1, 'New Zealand', 'NZ', 0),
(162, 0, 'Nicaragua', 'NI', 0),
(163, 0, 'Niger', 'NE', 0),
(164, 0, 'Nigeria', 'NG', 0),
(165, 0, 'Niue', 'NU', 0),
(166, 0, 'Norfolk Island', 'NF', 0),
(167, 0, 'Northern Mariana Islands', 'MP', 0),
(168, 0, 'Norway', 'NO', 0),
(169, 0, 'Oman', 'OM', 0),
(170, 0, 'Pakistan', 'PK', 0),
(171, 0, 'Palau', 'PW', 0),
(172, 0, 'Palestine', 'PS', 0),
(173, 0, 'Panama', 'PA', 0),
(174, 0, 'Papua New Guinea', 'PG', 0),
(175, 0, 'Paraguay', 'PY', 0),
(176, 0, 'Peru', 'PE', 0),
(177, 0, 'Philippines', 'PH', 0),
(178, 0, 'Pitcairn', 'PN', 0),
(179, 0, 'Poland', 'PL', 0),
(180, 0, 'Portugal', 'PT', 0),
(181, 0, 'Puerto Rico', 'PR', 0),
(182, 0, 'Qatar', 'QA', 0),
(183, 0, 'Reunion', 'RE', 0),
(184, 1, 'Romania', 'RO', 0),
(185, 0, 'Russian Federation', 'RU', 0),
(186, 0, 'Rwanda', 'RW', 0),
(187, 0, 'Saint Barthélemy', 'BL', 0),
(188, 0, 'Saint Helena', 'SH', 0),
(189, 0, 'Saint Kitts and Nevis', 'KN', 0),
(190, 0, 'Saint Lucia', 'LC', 0),
(191, 0, 'Saint Martin (French part)', 'MF', 0),
(192, 0, 'Saint Pierre and Miquelon', 'PM', 0),
(193, 0, 'Saint Vincent and the Grenadines', 'VC', 0),
(194, 0, 'Samoa', 'WS', 0),
(195, 0, 'San Marino', 'SM', 0),
(196, 0, 'Sao Tome and Principe', 'ST', 0),
(197, 0, 'Saudi Arabia', 'SA', 0),
(198, 0, 'Senegal', 'SN', 0),
(199, 0, 'Serbia', 'RS', 0),
(200, 0, 'Seychelles', 'SC', 0),
(201, 0, 'Sierra Leone', 'SL', 0),
(202, 0, 'Singapore', 'SG', 0),
(203, 0, 'Sint Maarten (Dutch part)', 'SX', 0),
(204, 0, 'Slovakia', 'SK', 0),
(205, 0, 'Slovenia', 'SI', 0),
(206, 0, 'Solomon Islands', 'SB', 0),
(207, 0, 'Somalia', 'SO', 0),
(208, 0, 'South Africa', 'ZA', 0),
(209, 0, 'South Georgia and the South Sandwich Islands', 'GS', 0),
(210, 0, 'Spain', 'ES', 0),
(211, 0, 'Sri Lanka', 'LK', 0),
(212, 0, 'Sudan', 'SD', 0),
(213, 0, 'Suriname', 'SR', 0),
(214, 0, 'Svalbard and Jan Mayen', 'SJ', 0),
(215, 0, 'Swaziland', 'SZ', 0),
(216, 0, 'Sweden', 'SE', 0),
(217, 0, 'Switzerland', 'CH', 0),
(218, 0, 'Syrian Arab Republic', 'SY', 0),
(219, 0, 'Taiwan, Province of China', 'TW', 0),
(220, 0, 'Tajikistan', 'TJ', 0),
(221, 0, 'Tanzania, United Republic of', 'TZ', 0),
(222, 0, 'Thailand', 'TH', 0),
(223, 0, 'Timor-Leste', 'TL', 0),
(224, 0, 'Togo', 'TG', 0),
(225, 0, 'Tokelau', 'TK', 0),
(226, 0, 'Tonga', 'TO', 0),
(227, 0, 'Trinidad and Tobago', 'TT', 0),
(228, 0, 'Tunisia', 'TN', 0),
(229, 0, 'Turkey', 'TR', 0),
(230, 0, 'Turkmenistan', 'TM', 0),
(231, 0, 'Turks and Caicos Islands', 'TC', 0),
(232, 0, 'Tuvalu', 'TV', 0),
(233, 0, 'Uganda', 'UG', 0),
(234, 0, 'Ukraine', 'UA', 0),
(235, 0, 'United Arab Emirates', 'AE', 0),
(236, 0, 'United States Minor Outlying Islands', 'UM', 0),
(237, 0, 'Uruguay', 'UY', 0),
(238, 0, 'Uzbekistan', 'UZ', 0),
(239, 0, 'Vanuatu', 'VU', 0),
(240, 0, 'Venezuela, Bolivarian Republic of', 'VE', 0),
(241, 0, 'Viet Nam', 'VN', 0),
(242, 0, 'Virgin Islands, British', 'VG', 0),
(243, 0, 'Virgin Islands, U.S.', 'VI', 0),
(244, 0, 'Wallis and Futuna', 'WF', 0),
(245, 0, 'Western Sahara', 'EH', 0),
(246, 0, 'Yemen', 'YE', 0),
(247, 0, 'Zambia', 'ZM', 0),
(248, 0, 'Zimbabwe', 'ZW', 0);

-- --------------------------------------------------------

--
-- Structure de la table `rainlab_location_states`
--

CREATE TABLE `rainlab_location_states` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `rainlab_location_states`
--

INSERT INTO `rainlab_location_states` (`id`, `country_id`, `name`, `code`) VALUES
(1, 4, 'Alabama', 'AL'),
(2, 4, 'Alaska', 'AK'),
(3, 4, 'American Samoa', 'AS'),
(4, 4, 'Arizona', 'AZ'),
(5, 4, 'Arkansas', 'AR'),
(6, 4, 'California', 'CA'),
(7, 4, 'Colorado', 'CO'),
(8, 4, 'Connecticut', 'CT'),
(9, 4, 'Delaware', 'DE'),
(10, 4, 'Dist. of Columbia', 'DC'),
(11, 4, 'Florida', 'FL'),
(12, 4, 'Georgia', 'GA'),
(13, 4, 'Guam', 'GU'),
(14, 4, 'Hawaii', 'HI'),
(15, 4, 'Idaho', 'ID'),
(16, 4, 'Illinois', 'IL'),
(17, 4, 'Indiana', 'IN'),
(18, 4, 'Iowa', 'IA'),
(19, 4, 'Kansas', 'KS'),
(20, 4, 'Kentucky', 'KY'),
(21, 4, 'Louisiana', 'LA'),
(22, 4, 'Maine', 'ME'),
(23, 4, 'Maryland', 'MD'),
(24, 4, 'Marshall Islands', 'MH'),
(25, 4, 'Massachusetts', 'MA'),
(26, 4, 'Michigan', 'MI'),
(27, 4, 'Micronesia', 'FM'),
(28, 4, 'Minnesota', 'MN'),
(29, 4, 'Mississippi', 'MS'),
(30, 4, 'Missouri', 'MO'),
(31, 4, 'Montana', 'MT'),
(32, 4, 'Nebraska', 'NE'),
(33, 4, 'Nevada', 'NV'),
(34, 4, 'New Hampshire', 'NH'),
(35, 4, 'New Jersey', 'NJ'),
(36, 4, 'New Mexico', 'NM'),
(37, 4, 'New York', 'NY'),
(38, 4, 'North Carolina', 'NC'),
(39, 4, 'North Dakota', 'ND'),
(40, 4, 'Northern Marianas', 'MP'),
(41, 4, 'Ohio', 'OH'),
(42, 4, 'Oklahoma', 'OK'),
(43, 4, 'Oregon', 'OR'),
(44, 4, 'Palau', 'PW'),
(45, 4, 'Pennsylvania', 'PA'),
(46, 4, 'Puerto Rico', 'PR'),
(47, 4, 'Rhode Island', 'RI'),
(48, 4, 'South Carolina', 'SC'),
(49, 4, 'South Dakota', 'SD'),
(50, 4, 'Tennessee', 'TN'),
(51, 4, 'Texas', 'TX'),
(52, 4, 'Utah', 'UT'),
(53, 4, 'Vermont', 'VT'),
(54, 4, 'Virginia', 'VA'),
(55, 4, 'Virgin Islands', 'VI'),
(56, 4, 'Washington', 'WA'),
(57, 4, 'West Virginia', 'WV'),
(58, 4, 'Wisconsin', 'WI'),
(59, 4, 'Wyoming', 'WY'),
(60, 35, 'Acre', 'AC'),
(61, 35, 'Alagoas', 'AL'),
(62, 35, 'Amapá', 'AP'),
(63, 35, 'Amazonas', 'AM'),
(64, 35, 'Bahia', 'BA'),
(65, 35, 'Ceará', 'CE'),
(66, 35, 'Distrito Federal', 'DF'),
(67, 35, 'Espírito Santo', 'ES'),
(68, 35, 'Goiás', 'GO'),
(69, 35, 'Maranhão', 'MA'),
(70, 35, 'Mato Grosso', 'MT'),
(71, 35, 'Mato Grosso do Sul', 'MS'),
(72, 35, 'Minas Gerais', 'MG'),
(73, 35, 'Pará', 'PA'),
(74, 35, 'Paraíba', 'PB'),
(75, 35, 'Paraná', 'PR'),
(76, 35, 'Pernambuco', 'PE'),
(77, 35, 'Piauí', 'PI'),
(78, 35, 'Rio de Janeiro', 'RJ'),
(79, 35, 'Rio Grande do Norte', 'RN'),
(80, 35, 'Rio Grande do Sul', 'RS'),
(81, 35, 'Rondônia', 'RO'),
(82, 35, 'Roraima', 'RR'),
(83, 35, 'Santa Catarina', 'SC'),
(84, 35, 'São Paulo', 'SP'),
(85, 35, 'Sergipe', 'SE'),
(86, 35, 'Tocantins', 'TO'),
(87, 2, 'Alberta', 'AB'),
(88, 2, 'British Columbia', 'BC'),
(89, 2, 'Manitoba', 'MB'),
(90, 2, 'New Brunswick', 'NB'),
(91, 2, 'Newfoundland and Labrador', 'NL'),
(92, 2, 'Northwest Territories', 'NT'),
(93, 2, 'Nova Scotia', 'NS'),
(94, 2, 'Nunavut', 'NU'),
(95, 2, 'Ontario', 'ON'),
(96, 2, 'Prince Edward Island', 'PE'),
(97, 2, 'Quebec', 'QC'),
(98, 2, 'Saskatchewan', 'SK'),
(99, 2, 'Yukon', 'YT'),
(100, 217, 'Aargau', 'AG'),
(101, 217, 'Appenzell Innerrhoden', 'AI'),
(102, 217, 'Appenzell Ausserrhoden', 'AR'),
(103, 217, 'Bern', 'BE'),
(104, 217, 'Basel-Landschaft', 'BL'),
(105, 217, 'Basel-Stadt', 'BS'),
(106, 217, 'Fribourg', 'FR'),
(107, 217, 'Genève', 'GE'),
(108, 217, 'Glarus', 'GL'),
(109, 217, 'Graubünden', 'GR'),
(110, 217, 'Jura', 'JU'),
(111, 217, 'Luzern', 'LU'),
(112, 217, 'Neuchâtel', 'NE'),
(113, 217, 'Nidwalden', 'NW'),
(114, 217, 'Obwalden', 'OW'),
(115, 217, 'St. Gallen', 'SG'),
(116, 217, 'Solothurn', 'SO'),
(117, 217, 'Schwyz', 'SZ'),
(118, 217, 'Thurgau', 'TG'),
(119, 217, 'Ticino', 'TI'),
(120, 217, 'Uri', 'UR'),
(121, 217, 'Vaud', 'VD'),
(122, 217, 'Valais', 'VS'),
(123, 217, 'Zug', 'ZG'),
(124, 217, 'Zürich', 'ZH'),
(125, 1, 'New South Wales', 'NSW'),
(126, 1, 'Queensland', 'QLD'),
(127, 1, 'South Australia', 'SA'),
(128, 1, 'Tasmania', 'TAS'),
(129, 1, 'Victoria', 'VIC'),
(130, 1, 'Western Australia', 'WA'),
(131, 1, 'Northern Territory', 'NT'),
(132, 1, 'Australian Capital Territory', 'ACT'),
(133, 85, 'Baden-Württemberg', 'BW'),
(134, 85, 'Bavaria', 'BY'),
(135, 85, 'Berlin', 'BE'),
(136, 85, 'Brandenburg', 'BB'),
(137, 85, 'Bremen', 'HB'),
(138, 85, 'Hamburg', 'HH'),
(139, 85, 'Hesse', 'HE'),
(140, 85, 'Mecklenburg-Vorpommern', 'MV'),
(141, 85, 'Lower Saxony', 'NI'),
(142, 85, 'North Rhine-Westphalia', 'NW'),
(143, 85, 'Rhineland-Palatinate', 'RP'),
(144, 85, 'Saarland', 'SL'),
(145, 85, 'Saxony', 'SN'),
(146, 85, 'Saxony-Anhalt', 'ST'),
(147, 85, 'Schleswig-Holstein', 'SH'),
(148, 85, 'Thuringia', 'TH'),
(149, 72, 'Harju', 'HA'),
(150, 72, 'Hiiu', 'HI'),
(151, 72, 'Ida-Viru', 'IV'),
(152, 72, 'Jõgeva', 'JR'),
(153, 72, 'Järva', 'JN'),
(154, 72, 'Lääne', 'LN'),
(155, 72, 'Lääne-Viru', 'LV'),
(156, 72, 'Põlva', 'PL'),
(157, 72, 'Pärnu', 'PR'),
(158, 72, 'Rapla', 'RA'),
(159, 72, 'Saare', 'SA'),
(160, 72, 'Tartu', 'TA'),
(161, 72, 'Valga', 'VG'),
(162, 72, 'Viljandi', 'VD'),
(163, 72, 'Võru', 'VR'),
(164, 109, 'Dublin', 'D'),
(165, 109, 'Wicklow', 'WW'),
(166, 109, 'Wexford', 'WX'),
(167, 109, 'Carlow', 'CW'),
(168, 109, 'Kildare', 'KE'),
(169, 109, 'Meath', 'MH'),
(170, 109, 'Louth', 'LH'),
(171, 109, 'Monaghan', 'MN'),
(172, 109, 'Cavan', 'CN'),
(173, 109, 'Longford', 'LD'),
(174, 109, 'Westmeath', 'WH'),
(175, 109, 'Offaly', 'OY'),
(176, 109, 'Laois', 'LS'),
(177, 109, 'Kilkenny', 'KK'),
(178, 109, 'Waterford', 'WD'),
(179, 109, 'Cork', 'C'),
(180, 109, 'Kerry', 'KY'),
(181, 109, 'Limerick', 'LK'),
(182, 109, 'North Tipperary', 'TN'),
(183, 109, 'South Tipperary', 'TS'),
(184, 109, 'Clare', 'CE'),
(185, 109, 'Galway', 'G'),
(186, 109, 'Mayo', 'MO'),
(187, 109, 'Roscommon', 'RN'),
(188, 109, 'Sligo', 'SO'),
(189, 109, 'Leitrim', 'LM'),
(190, 109, 'Donegal', 'DL'),
(191, 159, 'Drenthe', 'DR'),
(192, 159, 'Flevoland', 'FL'),
(193, 159, 'Friesland', 'FR'),
(194, 159, 'Gelderland', 'GE'),
(195, 159, 'Groningen', 'GR'),
(196, 159, 'Limburg', 'LI'),
(197, 159, 'Noord-Brabant', 'NB'),
(198, 159, 'Noord-Holland', 'NH'),
(199, 159, 'Overijssel', 'OV'),
(200, 159, 'Utrecht', 'UT'),
(201, 159, 'Zeeland', 'ZE'),
(202, 159, 'Zuid-Holland', 'ZH'),
(203, 3, 'Aberdeenshire', 'ABE'),
(204, 3, 'Anglesey', 'ALY'),
(205, 3, 'Angus', 'ANG'),
(206, 3, 'Argyll', 'ARG'),
(207, 3, 'Ayrshire', 'AYR'),
(208, 3, 'Banffshire', 'BAN'),
(209, 3, 'Bedfordshire', 'BED'),
(210, 3, 'Berkshire', 'BER'),
(211, 3, 'Berwickshire', 'BWS'),
(212, 3, 'Brecknockshire', 'BRE'),
(213, 3, 'Buckinghamshire', 'BUC'),
(214, 3, 'Bute', 'BUT'),
(215, 3, 'Caernarfonshire', 'CAE'),
(216, 3, 'Caithness', 'CAI'),
(217, 3, 'Cambridgeshire', 'CAM'),
(218, 3, 'Cardiganshire', 'CAR'),
(219, 3, 'Carmarthenshire', 'CMS'),
(220, 3, 'Cheshire', 'CHE'),
(221, 3, 'Clackmannanshire', 'CLA'),
(222, 3, 'Cleveland', 'CLE'),
(223, 3, 'Cornwall', 'COR'),
(224, 3, 'Cromartyshire', 'CRO'),
(225, 3, 'Cumberland', 'CBR'),
(226, 3, 'Cumbria', 'CUM'),
(227, 3, 'Denbighshire', 'DEN'),
(228, 3, 'Derbyshire', 'DER'),
(229, 3, 'Devon', 'DEV'),
(230, 3, 'Dorset', 'DOR'),
(231, 3, 'Dumbartonshire', 'DBS'),
(232, 3, 'Dumfriesshire', 'DUM'),
(233, 3, 'Durham', 'DUR'),
(234, 3, 'East Lothian', 'ELO'),
(235, 3, 'Essex', 'ESS'),
(236, 3, 'Flintshire', 'FLI'),
(237, 3, 'Fife', 'FIF'),
(238, 3, 'Glamorgan', 'GLA'),
(239, 3, 'Gloucestershire', 'GLO'),
(240, 3, 'Hampshire', 'HAM'),
(241, 3, 'Herefordshire', 'HER'),
(242, 3, 'Hertfordshire', 'HTF'),
(243, 3, 'Huntingdonshire', 'HUN'),
(244, 3, 'Inverness', 'INV'),
(245, 3, 'Kent', 'KEN'),
(246, 3, 'Kincardineshire', 'KCD'),
(247, 3, 'Kinross-shire', 'KIN'),
(248, 3, 'Kirkcudbrightshire', 'KIR'),
(249, 3, 'Lanarkshire', 'LKS'),
(250, 3, 'Lancashire', 'LAN'),
(251, 3, 'Leicestershire', 'LEI'),
(252, 3, 'Lincolnshire', 'LIN'),
(253, 3, 'London', 'LON'),
(254, 3, 'Manchester', 'MAN'),
(255, 3, 'Merionethshire', 'MER'),
(256, 3, 'Merseyside', 'MSY'),
(257, 3, 'Middlesex', 'MDX'),
(258, 3, 'Midlands', 'MID'),
(259, 3, 'Midlothian', 'MLT'),
(260, 3, 'Monmouthshire', 'MON'),
(261, 3, 'Montgomeryshire', 'MGY'),
(262, 3, 'Moray', 'MOR'),
(263, 3, 'Nairnshire', 'NAI'),
(264, 3, 'Norfolk', 'NOR'),
(265, 3, 'Northamptonshire', 'NMP'),
(266, 3, 'Northumberland', 'NUM'),
(267, 3, 'Nottinghamshire', 'NOT'),
(268, 3, 'Orkney', 'ORK'),
(269, 3, 'Oxfordshire', 'OXF'),
(270, 3, 'Peebleshire', 'PEE'),
(271, 3, 'Pembrokeshire', 'PEM'),
(272, 3, 'Perthshire', 'PER'),
(273, 3, 'Radnorshire', 'RAD'),
(274, 3, 'Renfrewshire', 'REN'),
(275, 3, 'Ross & Cromarty', 'ROS'),
(276, 3, 'Roxburghshire', 'ROX'),
(277, 3, 'Rutland', 'RUT'),
(278, 3, 'Selkirkshire', 'SEL'),
(279, 3, 'Shetland', 'SHE'),
(280, 3, 'Shropshire', 'SHR'),
(281, 3, 'Somerset', 'SOM'),
(282, 3, 'Staffordshire', 'STA'),
(283, 3, 'Stirlingshire', 'STI'),
(284, 3, 'Suffolk', 'SUF'),
(285, 3, 'Surrey', 'SUR'),
(286, 3, 'Sussex', 'SUS'),
(287, 3, 'Sutherland', 'SUT'),
(288, 3, 'Tyne & Wear', 'TYN'),
(289, 3, 'Warwickshire', 'WAR'),
(290, 3, 'West Lothian', 'WLO'),
(291, 3, 'Westmorland', 'WES'),
(292, 3, 'Wigtownshire', 'WIG'),
(293, 3, 'Wiltshire', 'WIL'),
(294, 3, 'Worcestershire', 'WOR'),
(295, 3, 'Yorkshire', 'YOR'),
(296, 184, 'Alba', 'AB'),
(297, 184, 'Arad', 'AR'),
(298, 184, 'Arges', 'AG'),
(299, 184, 'Bacău', 'BC'),
(300, 184, 'Bihor', 'BH'),
(301, 184, 'Bistrita - Nasaud Bistrita', 'BN'),
(302, 184, 'Botosani', 'BT'),
(303, 184, 'Brasov', 'BV'),
(304, 184, 'Braila', 'BR'),
(305, 184, 'Bucuresti', 'B'),
(306, 184, 'Buzau', 'BZ'),
(307, 184, 'Caras - Severin', 'CS'),
(308, 184, 'Calarasi', 'CL'),
(309, 184, 'Cluj', 'CJ'),
(310, 184, 'Constanta', 'CT'),
(311, 184, 'Covasna Sfantu Gheorghe', 'CV'),
(312, 184, 'Dambovita', 'DB'),
(313, 184, 'Dolj', 'DJ'),
(314, 184, 'Galati', 'GL'),
(315, 184, 'Giurgiu', 'GR'),
(316, 184, 'Gorj', 'GJ'),
(317, 184, 'Harghita', 'HR'),
(318, 184, 'Hunedoara', 'HD'),
(319, 184, 'Ialomita', 'IL'),
(320, 184, 'Iasi', 'IS'),
(321, 184, 'Ilfov', 'IF'),
(322, 184, 'Maramures', 'MM'),
(323, 184, 'Mehedinti', 'MH'),
(324, 184, 'Mures', 'MS'),
(325, 184, 'Neamt', 'NT'),
(326, 184, 'Olt', 'OT'),
(327, 184, 'Prahova Ploiesti', 'PH'),
(328, 184, 'Satu Mare', 'SM'),
(329, 184, 'Salaj', 'SJ'),
(330, 184, 'Sibiu', 'SB'),
(331, 184, 'Suceava', 'SV'),
(332, 184, 'Teleorman', 'TR'),
(333, 184, 'Timis', 'TM'),
(334, 184, 'Tulcea', 'TL'),
(335, 184, 'Vaslui', 'VS'),
(336, 184, 'Valcea', 'VL'),
(337, 184, 'Vrancea', 'VN'),
(338, 103, 'Budapest', 'BUD'),
(339, 103, 'Baranya', 'BAR'),
(340, 103, 'Bács-Kiskun', 'BKM'),
(341, 103, 'Békés', 'BEK'),
(342, 103, 'Borsod-Abaúj-Zemplén', 'BAZ'),
(343, 103, 'Csongrád', 'CSO'),
(344, 103, 'Fejér', 'FEJ'),
(345, 103, 'Győr-Moson-Sopron', 'GMS'),
(346, 103, 'Hajdú-Bihar', 'HBM'),
(347, 103, 'Heves', 'HEV'),
(348, 103, 'Jász-Nagykun-Szolnok', 'JNS'),
(349, 103, 'Komárom-Esztergom', 'KEM'),
(350, 103, 'Nógrád', 'NOG'),
(351, 103, 'Pest', 'PES'),
(352, 103, 'Somogy', 'SOM'),
(353, 103, 'Szabolcs-Szatmár-Bereg', 'SSB'),
(354, 103, 'Tolna', 'TOL'),
(355, 103, 'Vas', 'VAS'),
(356, 103, 'Veszprém', 'VES'),
(357, 103, 'Zala', 'ZAL'),
(358, 105, 'Andhra Pradesh', 'AP'),
(359, 105, 'Arunachal Pradesh', 'AR'),
(360, 105, 'Assam', 'AS'),
(361, 105, 'Bihar', 'BR'),
(362, 105, 'Chhattisgarh', 'CT'),
(363, 105, 'Goa', 'GA'),
(364, 105, 'Gujarat', 'GJ'),
(365, 105, 'Haryana', 'HR'),
(366, 105, 'Himachal Pradesh', 'HP'),
(367, 105, 'Jammu and Kashmir', 'JK'),
(368, 105, 'Jharkhand', 'JH'),
(369, 105, 'Karnataka', 'KA'),
(370, 105, 'Kerala', 'KL'),
(371, 105, 'Madhya Pradesh', 'MP'),
(372, 105, 'Maharashtra', 'MH'),
(373, 105, 'Manipur', 'MN'),
(374, 105, 'Meghalaya', 'ML'),
(375, 105, 'Mizoram', 'MZ'),
(376, 105, 'Nagaland', 'NL'),
(377, 105, 'Odisha', 'OR'),
(378, 105, 'Punjab', 'PB'),
(379, 105, 'Rajasthan', 'RJ'),
(380, 105, 'Sikkim', 'SK'),
(381, 105, 'Tamil Nadu', 'TN'),
(382, 105, 'Telangana', 'TG'),
(383, 105, 'Tripura', 'TR'),
(384, 105, 'Uttarakhand', 'UT'),
(385, 105, 'Uttar Pradesh', 'UP'),
(386, 105, 'West Bengal', 'WB'),
(387, 105, 'Andaman and Nicobar Islands', 'AN'),
(388, 105, 'Chandigarh', 'CH'),
(389, 105, 'Dadra and Nagar Haveli', 'DN'),
(390, 105, 'Daman and Diu', 'DD'),
(391, 105, 'Delhi', 'DL'),
(392, 105, 'Lakshadweep', 'LD'),
(393, 105, 'Puducherry', 'PY'),
(394, 78, 'Auvergne-Rhône-Alpes', 'ARA'),
(395, 78, 'Bourgogne-Franche-Comté', 'BFC'),
(396, 78, 'Bretagne', 'BZH'),
(397, 78, 'Centre–Val-de-Loire', 'CVL'),
(398, 78, 'Corse', 'COR'),
(399, 78, 'Guadeloupe', 'GP'),
(400, 78, 'Guyane', 'GF'),
(401, 78, 'Grand-Est', 'GE'),
(402, 78, 'Hauts-de-France', 'HF'),
(403, 78, 'Île-de-France', 'IDF'),
(404, 78, 'Martinique', 'MQ'),
(405, 78, 'Mayotte', 'YT'),
(406, 78, 'Normandie', 'NOR'),
(407, 78, 'Pays-de-la-Loire', 'PL'),
(408, 78, 'Nouvelle-Aquitaine', 'NA'),
(409, 78, 'Occitanie', 'OCC'),
(410, 78, 'Provence-Alpes-Côte-d\'Azur', 'PACA'),
(411, 78, 'Réunion', 'RE'),
(412, 161, 'Northland', 'NTL'),
(413, 161, 'Auckland', 'AUK'),
(414, 161, 'Waikato', 'WKO'),
(415, 161, 'Bay of Plenty', 'BOP'),
(416, 161, 'Gisborne', 'GIS'),
(417, 161, 'Hawke\'s Bay', 'HKB'),
(418, 161, 'Taranaki', 'TKI'),
(419, 161, 'Manawatu-Wanganui', 'MWT'),
(420, 161, 'Wellington', 'WGN'),
(421, 161, 'Tasman', 'TAS'),
(422, 161, 'Nelson', 'NSN'),
(423, 161, 'Marlborough', 'MBH'),
(424, 161, 'West Coast', 'WTC'),
(425, 161, 'Canterbury', 'CAN'),
(426, 161, 'Otago Otago', 'OTA'),
(427, 161, 'Southland', 'STL');

-- --------------------------------------------------------

--
-- Structure de la table `rainlab_translate_attributes`
--

CREATE TABLE `rainlab_translate_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute_data` mediumtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `rainlab_translate_indexes`
--

CREATE TABLE `rainlab_translate_indexes` (
  `id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `rainlab_translate_locales`
--

CREATE TABLE `rainlab_translate_locales` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `rainlab_translate_locales`
--

INSERT INTO `rainlab_translate_locales` (`id`, `code`, `name`, `is_default`, `is_enabled`) VALUES
(1, 'en', 'English', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `rainlab_translate_messages`
--

CREATE TABLE `rainlab_translate_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message_data` mediumtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `renatio_dynamicpdf_pdf_layouts`
--

CREATE TABLE `renatio_dynamicpdf_pdf_layouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content_html` text COLLATE utf8_unicode_ci,
  `content_css` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `renatio_dynamicpdf_pdf_layouts`
--

INSERT INTO `renatio_dynamicpdf_pdf_layouts` (`id`, `code`, `name`, `content_html`, `content_css`, `created_at`, `updated_at`) VALUES
(1, 'renatio::invoice', 'Invoice', '<html>\r\n    <head>\r\n        <style type=\"text/css\" media=\"screen\">\r\n            {{ css|raw }}\r\n        </style>\r\n    </head>\r\n    <body style=\"background: url({{ background_img }}) top left no-repeat;\">\r\n        <div class=\"header\">\r\n            <p class=\"left\"><strong>www.example.com</strong></p>\r\n            <p class=\"right\">\r\n                <strong>Acme Company</strong><br>\r\n                Admin Person<br>\r\n                Test Street<br>\r\n                34131 Berlin\r\n            </p>\r\n        </div>\r\n        <div class=\"footer\">\r\n            <p class=\"left\">\r\n                Tel. 4141414144<br>\r\n                Fax: 41414141414<br>\r\n                E-mail: test@test.com<br>\r\n                USt-IdNr.: 34131 Berlin\r\n            </p>\r\n            <p class=\"right\">\r\n                Bank: Acme Company<br>\r\n                Kontoinhaber: Admin Person<br>\r\n                IBAN: DE41413113131<br>\r\n                BIC: 341314\r\n            </p>\r\n        </div>\r\n        {{ content_html|raw }}\r\n    </body>\r\n</html>', '@font-face {\r\n    font-family: \'Open Sans\';\r\n    src: url(\'plugins/renatio/dynamicpdf/assets/fonts/OpenSans-Regular.ttf\');\r\n}\r\n\r\n@font-face {\r\n    font-family: \'Open Sans\';\r\n    font-weight: bold;\r\n    src: url(\'plugins/renatio/dynamicpdf/assets/fonts/OpenSans-Bold.ttf\');\r\n}\r\n\r\n@font-face {\r\n    font-family: \'Open Sans\';\r\n    font-style: italic;\r\n    src: url(\'plugins/renatio/dynamicpdf/assets/fonts/OpenSans-Italic.ttf\');\r\n}\r\n\r\n@font-face {\r\n    font-family: \'Open Sans\';\r\n    font-style: italic;\r\n    font-weight: bold;\r\n    src: url(\'plugins/renatio/dynamicpdf/assets/fonts/OpenSans-BoldItalic.ttf\');\r\n}\r\n\r\n@page {\r\n    margin: 0;\r\n    padding: 0;\r\n}\r\n\r\nbody {\r\n    font-family: \'Open Sans\', sans-serif;\r\n    font-size: 14px;\r\n}\r\n\r\n.header {\r\n    position: fixed;\r\n    top: 3%;\r\n    left: 30%;\r\n}\r\n\r\n.header .left {\r\n    color: #373430;\r\n    font-size: .9em;\r\n    text-transform: uppercase;\r\n    width: 60%;\r\n    display: inline-block;\r\n}\r\n\r\n.header .right {\r\n    font-size: .7em;\r\n    color: #545554;\r\n    line-height: 1em;\r\n    text-align: right;\r\n    display: inline-block;\r\n    width: 30%;\r\n    padding-top: 1%;\r\n}\r\n\r\n.footer {\r\n    position: fixed;\r\n    bottom: 0;\r\n    left: 5%;\r\n    height: 12%;\r\n    font-size: .7em;\r\n    color: #545554;\r\n    line-height: 1em;\r\n}\r\n\r\n.footer .left {\r\n    display: inline-block;\r\n    width: 25%;\r\n}\r\n\r\n.footer .right {\r\n    display: inline-block;\r\n    width: 30%;\r\n    padding-top: 7%;\r\n}\r\n\r\n.content {\r\n    margin: 12% 0 0 10%;\r\n}\r\n\r\n.small-txt {\r\n    font-size: .7em;\r\n}\r\n\r\n.company-info {\r\n    display: inline-block;\r\n    width: 55%;\r\n    line-height: 1.1em;\r\n    font-size: 1.1em;\r\n}\r\n\r\n.customer-info {\r\n    display: inline-block;\r\n    width: 45%;\r\n    font-size: .9em;\r\n    height: 10%;\r\n}\r\n\r\n.summary {\r\n    margin: 10% 0 5% 0;\r\n    border-collapse: collapse;\r\n    width: 90%;\r\n}\r\n\r\n.summary th {\r\n    background-color: #BEBEBE;\r\n    border: 1px solid #000;\r\n    padding: 5px;\r\n}\r\n\r\n.summary td {\r\n    padding: 5px 10px;\r\n    border-right: 1px solid #000;\r\n}\r\n\r\n.summary .col-1 {\r\n    width: 15%;\r\n    text-align: center;\r\n    border-left: 1px solid #000;\r\n}\r\n\r\n.summary .col-2 {\r\n    width: 50%;\r\n}\r\n\r\n.summary .col-3 {\r\n    width: 15%;\r\n    text-align: right;\r\n}\r\n\r\n.summary .col-4 {\r\n    width: 20%;\r\n    text-align: right;\r\n}\r\n\r\n.summary .bt {\r\n    border-top: 1px solid #000;\r\n}\r\n\r\n.summary .sum-price .col-4 {\r\n    border-top: 1px solid #000;\r\n    border-bottom: 1px solid #000;\r\n}', '2017-09-05 12:32:21', '2017-09-05 12:32:21');

-- --------------------------------------------------------

--
-- Structure de la table `renatio_dynamicpdf_pdf_templates`
--

CREATE TABLE `renatio_dynamicpdf_pdf_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `layout_id` int(10) UNSIGNED DEFAULT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `content_html` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `renatio_dynamicpdf_pdf_templates`
--

INSERT INTO `renatio_dynamicpdf_pdf_templates` (`id`, `layout_id`, `code`, `title`, `description`, `content_html`, `created_at`, `updated_at`) VALUES
(1, 1, 'renatio::invoice', 'Invoice', 'Example Invoice Template', '<div class=\"content\">\r\n    <p class=\"small-txt\">Acme Company • Admin Person • Test Street • 31335 Berlin</p>\r\n\r\n    <p class=\"company-info\">\r\n        <strong>Happy Customer - Acme GmbH</strong><br>\r\n        <strong>Elbstr. 2</strong><br>\r\n        <strong>041340 Berlin</strong>\r\n    </p>\r\n\r\n    <p class=\"customer-info\">\r\n        <strong>Kundennummer:</strong> 1211<br>\r\n        <strong>Rechnungsnummer:</strong> 2015-ADG-1612<br>\r\n        <strong>Datum:</strong> 18.03.2015<br>\r\n        <strong>Zahlungsbedingungen:</strong> 2 Tage ohne Abzug<br>\r\n        <strong>Fällig am:</strong> 20.03.2015\r\n    </p>\r\n    <table class=\"summary\">\r\n        <tr>\r\n            <th>Menge</th>\r\n            <th>Beschreibung</th>\r\n            <th>Preis</th>\r\n            <th>Anzahlung 30%</th>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"col-1\">1</td>\r\n            <td class=\"col-2\">4 Holzfenster</td>\r\n            <td class=\"col-3\">26.653,69 &euro;</td>\r\n            <td class=\"col-4\">7.996,11 &euro;</td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"col-1\">1</td>\r\n            <td class=\"col-2\">4 Holzfenster</td>\r\n            <td class=\"col-3\">26.653,69 &euro;</td>\r\n            <td class=\"col-4\">7.996,11 &euro;</td>\r\n        </tr>\r\n        {% for i in 0..5 %}\r\n            <tr>\r\n                <td class=\"col-1\">&nbsp;</td>\r\n                <td class=\"col-2\"></td>\r\n                <td class=\"col-3\"></td>\r\n                <td class=\"col-4\"></td>\r\n            </tr>\r\n        {% endfor %}\r\n        <tr class=\"sum-price\">\r\n            <td colspan=\"3\" class=\"col-3 bt\">Netto</td>\r\n            <td class=\"col-4\">7.996,11 &euro;</td>\r\n        </tr>\r\n        <tr class=\"sum-price\">\r\n            <td colspan=\"3\" class=\"col-3\">zzgl. 19% MwSt.</td>\r\n            <td class=\"col-4\">1.519,26 &euro;</td>\r\n        </tr>\r\n        <tr class=\"sum-price\">\r\n            <td colspan=\"3\" class=\"col-3\"><strong>Gesamt</strong></td>\r\n            <td class=\"col-4\">9.515,37 &euro;</td>\r\n        </tr>\r\n    </table>\r\n    <p><strong>Vielen Dank für Ihren Auftrag</strong></p>\r\n\r\n    <p>Gerichtsstand für alle Ansprüche aus diesem Auftrag ist Berlin.</p>\r\n</div>', '2017-09-05 12:32:22', '2017-09-05 12:32:22');

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payload` text COLLATE utf8_unicode_ci,
  `last_activity` int(11) DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `system_event_logs`
--

CREATE TABLE `system_event_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `level` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `details` mediumtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `system_files`
--

CREATE TABLE `system_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `disk_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `content_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `system_files`
--

INSERT INTO `system_files` (`id`, `disk_name`, `file_name`, `file_size`, `content_type`, `title`, `description`, `field`, `attachment_id`, `attachment_type`, `is_public`, `sort_order`, `created_at`, `updated_at`) VALUES
(3, '573dff6b63ca5310941365.png', 'c7.png', 7003, 'image/png', NULL, NULL, 'logo', '3', 'Backend\\Models\\BrandSettings', 1, 3, '2016-05-19 16:01:15', '2016-05-19 16:01:18'),
(7, '593d9642c2c75847008000.png', '65px-Blason_Anzin.svg.png', 7796, 'image/png', NULL, NULL, NULL, NULL, NULL, 1, 7, '2017-06-11 19:13:06', '2017-06-11 19:13:07'),
(8, '55428b6d4425d031778535.jpg', 'invoice.jpg', 47454, 'image/jpeg', NULL, NULL, 'background_img', '1', 'Renatio\\DynamicPDF\\Models\\Layout', 1, 8, '2017-09-05 12:32:21', '2017-09-05 12:32:21');

-- --------------------------------------------------------

--
-- Structure de la table `system_mail_layouts`
--

CREATE TABLE `system_mail_layouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8_unicode_ci,
  `content_text` text COLLATE utf8_unicode_ci,
  `content_css` text COLLATE utf8_unicode_ci,
  `is_locked` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `system_mail_layouts`
--

INSERT INTO `system_mail_layouts` (`id`, `name`, `code`, `content_html`, `content_text`, `content_css`, `is_locked`, `created_at`, `updated_at`) VALUES
(1, 'Default', 'default', '<html>\n    <head>\n        <style type=\"text/css\" media=\"screen\">\n            {{ css|raw }}\n        </style>\n    </head>\n    <body>\n        {{ content|raw }}\n    </body>\n</html>', '{{ content|raw }}', 'a, a:hover {\n    text-decoration: none;\n    color: #0862A2;\n    font-weight: bold;\n}\n\ntd, tr, th, table {\n    padding: 0px;\n    margin: 0px;\n}\n\np {\n    margin: 10px 0;\n}', 1, '2016-05-09 13:00:04', '2016-05-09 13:00:04'),
(2, 'System', 'system', '<html>\n    <head>\n        <style type=\"text/css\" media=\"screen\">\n            {{ css|raw }}\n        </style>\n    </head>\n    <body>\n        {{ content|raw }}\n        <hr />\n        <p>This is an automatic message. Please do not reply to it.</p>\n    </body>\n</html>', '{{ content|raw }}\n\n\n---\nThis is an automatic message. Please do not reply to it.', 'a, a:hover {\n    text-decoration: none;\n    color: #0862A2;\n    font-weight: bold;\n}\n\ntd, tr, th, table {\n    padding: 0px;\n    margin: 0px;\n}\n\np {\n    margin: 10px 0;\n}', 1, '2016-05-09 13:00:04', '2016-05-09 13:00:04');

-- --------------------------------------------------------

--
-- Structure de la table `system_mail_partials`
--

CREATE TABLE `system_mail_partials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8_unicode_ci,
  `content_text` text COLLATE utf8_unicode_ci,
  `is_custom` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `system_mail_templates`
--

CREATE TABLE `system_mail_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `content_html` text COLLATE utf8_unicode_ci,
  `content_text` text COLLATE utf8_unicode_ci,
  `layout_id` int(11) DEFAULT NULL,
  `is_custom` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `system_parameters`
--

CREATE TABLE `system_parameters` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `system_parameters`
--

INSERT INTO `system_parameters` (`id`, `namespace`, `group`, `item`, `value`) VALUES
(1, 'system', 'update', 'count', '6'),
(2, 'system', 'core', 'hash', '\"386846ebe3802c4f192625743abb3f06\"'),
(3, 'system', 'core', 'build', '\"419\"'),
(4, 'cms', 'theme', 'active', '\"gc000\"'),
(5, 'system', 'update', 'retry', '1504696228'),
(6, 'system', 'project', 'id', '\"2ZmH0AF0kAQNkAl02ZQD3LGp0LwDjAmt1MwL2MQOyZ2LkZmRkMJD1LwAwAj\"'),
(7, 'system', 'project', 'name', '\"000\"'),
(8, 'system', 'project', 'owner', '\"GrCOTE7\"');

-- --------------------------------------------------------

--
-- Structure de la table `system_plugin_history`
--

CREATE TABLE `system_plugin_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `detail` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `system_plugin_history`
--

INSERT INTO `system_plugin_history` (`id`, `code`, `type`, `version`, `detail`, `created_at`) VALUES
(2, 'RainLab.User', 'script', '1.0.1', 'create_users_table.php', '2016-05-14 08:01:19'),
(3, 'RainLab.User', 'script', '1.0.1', 'create_throttle_table.php', '2016-05-14 08:01:20'),
(4, 'RainLab.User', 'comment', '1.0.1', 'Initialize plugin.', '2016-05-14 08:01:20'),
(5, 'RainLab.User', 'comment', '1.0.2', 'Seed tables.', '2016-05-14 08:01:20'),
(6, 'RainLab.User', 'comment', '1.0.3', 'Translated hard-coded text to language strings.', '2016-05-14 08:01:20'),
(7, 'RainLab.User', 'comment', '1.0.4', 'Improvements to user-interface for Location manager.', '2016-05-14 08:01:20'),
(8, 'RainLab.User', 'comment', '1.0.5', 'Added contact details for users.', '2016-05-14 08:01:20'),
(9, 'RainLab.User', 'script', '1.0.6', 'create_mail_blockers_table.php', '2016-05-14 08:01:21'),
(10, 'RainLab.User', 'comment', '1.0.6', 'Added Mail Blocker utility so users can block specific mail templates.', '2016-05-14 08:01:22'),
(11, 'RainLab.User', 'comment', '1.0.7', 'Add back-end Settings page.', '2016-05-14 08:01:22'),
(12, 'RainLab.User', 'comment', '1.0.8', 'Updated the Settings page.', '2016-05-14 08:01:22'),
(13, 'RainLab.User', 'comment', '1.0.9', 'Adds new welcome mail message for users and administrators.', '2016-05-14 08:01:22'),
(14, 'RainLab.User', 'comment', '1.0.10', 'Adds administrator-only activation mode.', '2016-05-14 08:01:22'),
(15, 'RainLab.User', 'script', '1.0.11', 'users_add_login_column.php', '2016-05-14 08:01:23'),
(16, 'RainLab.User', 'comment', '1.0.11', 'Users now have an optional login field that defaults to the email field.', '2016-05-14 08:01:23'),
(17, 'RainLab.User', 'script', '1.0.12', 'users_rename_login_to_username.php', '2016-05-14 08:01:24'),
(18, 'RainLab.User', 'comment', '1.0.12', 'Create a dedicated setting for choosing the login mode.', '2016-05-14 08:01:24'),
(19, 'RainLab.User', 'comment', '1.0.13', 'Minor fix to the Account sign in logic.', '2016-05-14 08:01:24'),
(20, 'RainLab.User', 'comment', '1.0.14', 'Minor improvements to the code.', '2016-05-14 08:01:24'),
(21, 'RainLab.User', 'script', '1.0.15', 'users_add_surname.php', '2016-05-14 08:01:25'),
(22, 'RainLab.User', 'comment', '1.0.15', 'Adds last name column to users table (surname).', '2016-05-14 08:01:25'),
(23, 'RainLab.User', 'comment', '1.0.16', 'Require permissions for settings page too.', '2016-05-14 08:01:25'),
(24, 'RainLab.User', 'comment', '1.1.0', '!!! Profile fields and Locations have been removed.', '2016-05-14 08:01:26'),
(25, 'RainLab.User', 'script', '1.1.1', 'create_user_groups_table.php', '2016-05-14 08:01:27'),
(26, 'RainLab.User', 'script', '1.1.1', 'seed_user_groups_table.php', '2016-05-14 08:01:27'),
(27, 'RainLab.User', 'comment', '1.1.1', 'Users can now be added to groups.', '2016-05-14 08:01:27'),
(28, 'RainLab.User', 'comment', '1.1.2', 'A raw URL can now be passed as the redirect property in the Account component.', '2016-05-14 08:01:27'),
(29, 'RainLab.User', 'comment', '1.1.3', 'Adds a super user flag to the users table, reserved for future use.', '2016-05-14 08:01:28'),
(30, 'RainLab.User', 'comment', '1.1.4', 'User list can be filtered by the group they belong to.', '2016-05-14 08:01:28'),
(31, 'RainLab.User', 'comment', '1.1.5', 'Adds a new permission to hide the User settings menu item.', '2016-05-14 08:01:28'),
(32, 'RainLab.User', 'script', '1.2.0', 'users_add_deleted_at.php', '2016-05-14 08:01:29'),
(33, 'RainLab.User', 'comment', '1.2.0', 'Users can now deactivate their own accounts.', '2016-05-14 08:01:29'),
(34, 'RainLab.User', 'comment', '1.2.1', 'New feature for checking if a user is recently active/online.', '2016-05-14 08:01:29'),
(35, 'RainLab.Blog', 'script', '1.0.1', 'create_posts_table.php', '2016-05-14 09:17:18'),
(36, 'RainLab.Blog', 'script', '1.0.1', 'create_categories_table.php', '2016-05-14 09:17:19'),
(37, 'RainLab.Blog', 'script', '1.0.1', 'seed_all_tables.php', '2016-05-14 09:17:20'),
(38, 'RainLab.Blog', 'comment', '1.0.1', 'Initialize plugin.', '2016-05-14 09:17:20'),
(39, 'RainLab.Blog', 'comment', '1.0.2', 'Added the processed HTML content column to the posts table.', '2016-05-14 09:17:20'),
(40, 'RainLab.Blog', 'comment', '1.0.3', 'Category component has been merged with Posts component.', '2016-05-14 09:17:20'),
(41, 'RainLab.Blog', 'comment', '1.0.4', 'Improvements to the Posts list management UI.', '2016-05-14 09:17:20'),
(42, 'RainLab.Blog', 'comment', '1.0.5', 'Removes the Author column from blog post list.', '2016-05-14 09:17:20'),
(43, 'RainLab.Blog', 'comment', '1.0.6', 'Featured images now appear in the Post component.', '2016-05-14 09:17:20'),
(44, 'RainLab.Blog', 'comment', '1.0.7', 'Added support for the Static Pages menus.', '2016-05-14 09:17:20'),
(45, 'RainLab.Blog', 'comment', '1.0.8', 'Added total posts to category list.', '2016-05-14 09:17:20'),
(46, 'RainLab.Blog', 'comment', '1.0.9', 'Added support for the Sitemap plugin.', '2016-05-14 09:17:20'),
(47, 'RainLab.Blog', 'comment', '1.0.10', 'Added permission to prevent users from seeing posts they did not create.', '2016-05-14 09:17:20'),
(48, 'RainLab.Blog', 'comment', '1.0.11', 'Deprecate \"idParam\" component property in favour of \"slug\" property.', '2016-05-14 09:17:21'),
(49, 'RainLab.Blog', 'comment', '1.0.12', 'Fixes issue where images cannot be uploaded caused by latest Markdown library.', '2016-05-14 09:17:21'),
(50, 'RainLab.Blog', 'comment', '1.0.13', 'Fixes problem with providing pages to Sitemap and Pages plugins.', '2016-05-14 09:17:21'),
(51, 'RainLab.Blog', 'comment', '1.0.14', 'Add support for CSRF protection feature added to core.', '2016-05-14 09:17:21'),
(52, 'RainLab.Blog', 'comment', '1.1.0', 'Replaced the Post editor with the new core Markdown editor.', '2016-05-14 09:17:21'),
(53, 'RainLab.Blog', 'comment', '1.1.1', 'Posts can now be imported and exported.', '2016-05-14 09:17:21'),
(54, 'RainLab.Blog', 'comment', '1.1.2', 'Posts are no longer visible if the published date has not passed.', '2016-05-14 09:17:21'),
(55, 'RainLab.Blog', 'comment', '1.1.3', 'Added a New Post shortcut button to the blog menu.', '2016-05-14 09:17:21'),
(56, 'RainLab.Blog', 'script', '1.2.0', 'categories_add_nested_fields.php', '2016-05-14 09:17:21'),
(57, 'RainLab.Blog', 'comment', '1.2.0', 'Categories now support nesting.', '2016-05-14 09:17:21'),
(58, 'RainLab.Blog', 'comment', '1.2.1', 'Post slugs now must be unique.', '2016-05-14 09:17:21'),
(59, 'RainLab.Blog', 'comment', '1.2.2', 'Fixes issue on new installs.', '2016-05-14 09:17:21'),
(60, 'RainLab.Pages', 'comment', '1.0.1', 'Implemented the static pages management and the Static Page component.', '2016-05-14 09:20:49'),
(61, 'RainLab.Pages', 'comment', '1.0.2', 'Fixed the page preview URL.', '2016-05-14 09:20:49'),
(62, 'RainLab.Pages', 'comment', '1.0.3', 'Implemented menus.', '2016-05-14 09:20:49'),
(63, 'RainLab.Pages', 'comment', '1.0.4', 'Implemented the content block management and placeholder support.', '2016-05-14 09:20:49'),
(64, 'RainLab.Pages', 'comment', '1.0.5', 'Added support for the Sitemap plugin.', '2016-05-14 09:20:49'),
(65, 'RainLab.Pages', 'comment', '1.0.6', 'Minor updates to the internal API.', '2016-05-14 09:20:49'),
(66, 'RainLab.Pages', 'comment', '1.0.7', 'Added the Snippets feature.', '2016-05-14 09:20:49'),
(67, 'RainLab.Pages', 'comment', '1.0.8', 'Minor improvements to the code.', '2016-05-14 09:20:50'),
(68, 'RainLab.Pages', 'comment', '1.0.9', 'Fixes issue where Snippet tab is missing from the Partials form.', '2016-05-14 09:20:50'),
(69, 'RainLab.Pages', 'comment', '1.0.10', 'Add translations for various locales.', '2016-05-14 09:20:50'),
(70, 'RainLab.Pages', 'comment', '1.0.11', 'Fixes issue where placeholders tabs were missing from Page form.', '2016-05-14 09:20:50'),
(71, 'RainLab.Pages', 'comment', '1.0.12', 'Implement Media Manager support.', '2016-05-14 09:20:50'),
(72, 'RainLab.Pages', 'script', '1.1.0', 'snippets_rename_viewbag_properties.php', '2016-05-14 09:20:50'),
(73, 'RainLab.Pages', 'comment', '1.1.0', 'Adds meta title and description to pages. Adds |staticPage filter.', '2016-05-14 09:20:50'),
(74, 'RainLab.Pages', 'comment', '1.1.1', 'Add support for Syntax Fields.', '2016-05-14 09:20:50'),
(75, 'RainLab.Pages', 'comment', '1.1.2', 'Static Breadcrumbs component now respects the hide from navigation setting.', '2016-05-14 09:20:50'),
(76, 'RainLab.Pages', 'comment', '1.1.3', 'Minor back-end styling fix.', '2016-05-14 09:20:50'),
(77, 'RainLab.Pages', 'comment', '1.1.4', 'Minor fix to the StaticPage component API.', '2016-05-14 09:20:50'),
(78, 'RainLab.Pages', 'comment', '1.1.5', 'Fixes bug when using syntax fields.', '2016-05-14 09:20:51'),
(79, 'RainLab.Pages', 'comment', '1.1.6', 'Minor styling fix to the back-end UI.', '2016-05-14 09:20:51'),
(80, 'RainLab.Pages', 'comment', '1.1.7', 'Improved menu item form to include css class, open in a new window and hidden flag.', '2016-05-14 09:20:51'),
(81, 'RainLab.Pages', 'comment', '1.1.8', 'Improved the output of snippet partials when saved.', '2016-05-14 09:20:51'),
(82, 'RainLab.Pages', 'comment', '1.1.9', 'Minor update to snippet inspector internal API.', '2016-05-14 09:20:51'),
(83, 'RainLab.Pages', 'comment', '1.1.10', 'Fixes a bug where selecting a layout causes permanent unsaved changes.', '2016-05-14 09:20:51'),
(84, 'RainLab.Pages', 'comment', '1.1.11', 'Add support for repeater syntax field.', '2016-05-14 09:20:51'),
(85, 'October.Demo', 'comment', '1.0.1', 'First version of Demo', '2016-05-16 09:06:51'),
(86, 'RainLab.Forum', 'script', '1.0.1', 'create_channels_table.php', '2016-05-16 09:06:53'),
(87, 'RainLab.Forum', 'script', '1.0.1', 'create_posts_table.php', '2016-05-16 09:06:54'),
(88, 'RainLab.Forum', 'script', '1.0.1', 'create_topics_table.php', '2016-05-16 09:06:56'),
(89, 'RainLab.Forum', 'script', '1.0.1', 'create_members_table.php', '2016-05-16 09:06:57'),
(90, 'RainLab.Forum', 'script', '1.0.1', 'seed_all_tables.php', '2016-05-16 09:07:00'),
(91, 'RainLab.Forum', 'comment', '1.0.1', 'First version of Forum', '2016-05-16 09:07:00'),
(92, 'RainLab.Forum', 'script', '1.0.2', 'create_topic_watches_table.php', '2016-05-16 09:07:01'),
(93, 'RainLab.Forum', 'comment', '1.0.2', 'Add unread flags to topics', '2016-05-16 09:07:01'),
(94, 'RainLab.Forum', 'script', '1.0.3', 'members_add_mod_and_ban.php', '2016-05-16 09:07:02'),
(95, 'RainLab.Forum', 'comment', '1.0.3', 'Users can now be made moderators or be banned', '2016-05-16 09:07:02'),
(96, 'RainLab.Forum', 'script', '1.0.4', 'channels_add_hidden_and_moderated.php', '2016-05-16 09:07:03'),
(97, 'RainLab.Forum', 'comment', '1.0.4', 'Channels can now be hidden or moderated', '2016-05-16 09:07:03'),
(98, 'RainLab.Forum', 'script', '1.0.5', 'add_embed_code.php', '2016-05-16 09:07:05'),
(99, 'RainLab.Forum', 'comment', '1.0.5', 'Introduced topic and channel embedding', '2016-05-16 09:07:05'),
(100, 'RainLab.Forum', 'script', '1.0.6', 'create_channel_watches_table.php', '2016-05-16 09:07:06'),
(101, 'RainLab.Forum', 'comment', '1.0.6', 'Add unread flags to channels', '2016-05-16 09:07:06'),
(102, 'RainLab.Forum', 'script', '1.0.7', 'create_topic_followers_table.php', '2016-05-16 09:07:07'),
(103, 'RainLab.Forum', 'comment', '1.0.7', 'Forum members can now follow topics', '2016-05-16 09:07:07'),
(104, 'RainLab.Forum', 'comment', '1.0.8', 'Added Channel name to the Topics component view', '2016-05-16 09:07:07'),
(105, 'RainLab.Forum', 'comment', '1.0.9', 'Updated the Settings page', '2016-05-16 09:07:07'),
(106, 'RainLab.Forum', 'comment', '1.0.10', 'Users can now report spammers who can be banned by moderators.', '2016-05-16 09:07:07'),
(107, 'RainLab.Forum', 'comment', '1.0.11', 'Users can now quote other posts.', '2016-05-16 09:07:07'),
(108, 'RainLab.Forum', 'comment', '1.0.12', 'Improve support for CDN asset hosting.', '2016-05-16 09:07:08'),
(109, 'RainLab.Forum', 'comment', '1.0.13', 'Fixes a bug where channels cannot be selected in the Embed component inspector.', '2016-05-16 09:07:08'),
(110, 'RainLab.Forum', 'comment', '1.0.14', 'Improve the pagination code used in the component default markup.', '2016-05-16 09:07:08'),
(111, 'RainLab.Forum', 'comment', '1.0.15', 'When a User is deleted, their Member profile and posts is also deleted.', '2016-05-16 09:07:08'),
(112, 'RainLab.Forum', 'comment', '1.0.16', 'Posting topics is now throttled allowing 3 new topics every 15 minutes.', '2016-05-16 09:07:08'),
(113, 'RainLab.Forum', 'comment', '1.0.17', 'Update channel reorder page to new system reordering feature.', '2016-05-16 09:07:08'),
(114, 'BnB.ScaffoldTranslation', 'script', '1.0.1', 'save_default_settings.php', '2016-05-16 09:07:58'),
(115, 'BnB.ScaffoldTranslation', 'comment', '1.0.1', 'First version of ScaffoldTranslation', '2016-05-16 09:07:59'),
(116, 'BnB.ScaffoldTranslation', 'comment', '1.0.2', 'Fix delete_confirm default message', '2016-05-16 09:07:59'),
(117, 'BnB.ScaffoldTranslation', 'script', '1.0.3', 'New scaffold command for widget, create:widget', '2016-05-16 09:07:59'),
(118, 'BnB.ScaffoldTranslation', 'comment', '1.0.3', 'Fix controller stub', '2016-05-16 09:07:59'),
(119, 'BnB.ScaffoldTranslation', 'comment', '1.0.4', 'Improved settings description', '2016-05-16 09:07:59'),
(120, 'BnB.ScaffoldTranslation', 'comment', '1.0.5', 'Updated documentation for marketplace', '2016-05-16 09:07:59'),
(121, 'BnB.ScaffoldTranslation', 'comment', '1.0.6', 'Added a disclaimer comment in overriden command', '2016-05-16 09:07:59'),
(122, 'BnB.ScaffoldTranslation', 'script', '1.0.7', 'Fix segfault with preg_replace regexp', '2016-05-16 09:07:59'),
(123, 'BnB.ScaffoldTranslation', 'comment', '1.0.7', 'Improved french translation', '2016-05-16 09:07:59'),
(124, 'BnB.ScaffoldTranslation', 'comment', '1.0.8', 'plugin:translate command now also scans models folder', '2016-05-16 09:07:59'),
(125, 'BnB.ScaffoldTranslation', 'comment', '1.0.9', 'Removed unnecessary trans call in component details stub', '2016-05-16 09:07:59'),
(126, 'BnB.ScaffoldTranslation', 'comment', '1.0.10', 'Fix typos in sources comment', '2016-05-16 09:07:59'),
(127, 'BnB.ScaffoldTranslation', 'comment', '1.0.11', 'Fix default settings options to true', '2016-05-16 09:08:00'),
(128, 'BnB.ScaffoldTranslation', 'comment', '1.0.12', 'Fix stub on case-sensitive file system', '2016-05-16 09:08:00'),
(129, 'BnB.ScaffoldTranslation', 'comment', '1.0.13', 'Scans report widget', '2016-05-16 09:08:00'),
(130, 'BnB.ScaffoldTranslation', 'script', '1.0.14', 'Added the `use Vendor\\Plugin\\Models\\Model` statemenet to the controller stub', '2016-05-16 09:08:00'),
(131, 'BnB.ScaffoldTranslation', 'script', '1.0.14', 'Minor fixes and standardization in default translations files', '2016-05-16 09:08:00'),
(132, 'BnB.ScaffoldTranslation', 'comment', '1.0.14', 'Portuguese default translation file', '2016-05-16 09:08:00'),
(133, 'BnB.ScaffoldTranslation', 'comment', '1.0.15', 'Checks for `backend.manage_preferences` to display the settings menu', '2016-05-16 09:08:00'),
(134, 'BnB.ScaffoldTranslation', 'comment', '1.0.16', 'Fix the language folders lookup. Now checks only two or three letters folder that are writable.', '2016-05-16 09:08:00'),
(135, 'BnB.ScaffoldTranslation', 'comment', '1.0.17', 'Plugin stub updated to reflect current October version', '2016-05-16 09:08:00'),
(136, 'GrCOTE7.Demo', 'comment', '1.0.1', 'First version of Demo (demoAff)', '2016-05-16 15:48:39'),
(137, 'Hambern.Html5media', 'comment', '1.0.1', 'First version of Html5media', '2016-05-19 12:51:14'),
(138, 'Bluhex.YouTube', 'comment', '1.0.1', 'First version of Bluhex - YouTube Videos', '2016-05-19 13:51:05'),
(139, 'Bluhex.YouTube', 'comment', '1.0.2', 'Made YouTube client more accessible to third parties', '2016-05-19 13:51:06'),
(140, 'Bluhex.YouTube', 'comment', '1.0.3', 'Thumbnail resolution is now selectable', '2016-05-19 13:51:06'),
(141, 'Bluhex.YouTube', 'comment', '1.0.4', 'Fixed caching issue causing no results to display', '2016-05-19 13:51:06'),
(142, 'Bluhex.YouTube', 'comment', '1.0.5', 'Made thumbnail resolution selection easier', '2016-05-19 13:51:06'),
(143, 'Bluhex.YouTube', 'comment', '1.0.6', 'Updated to the latest Google API Library', '2016-05-19 13:51:06'),
(144, 'Bluhex.YouTube', 'comment', '1.0.7', 'Full resolution thumbnails are now loaded over https', '2016-05-19 13:51:07'),
(145, 'Bluhex.YouTube', 'comment', '1.0.8', 'Fixed video links working over https but not thumbnails.', '2016-05-19 13:51:07'),
(146, 'Bedard.Debugbar', 'comment', '1.0.1', 'First version of Debugbar', '2016-05-19 23:14:43'),
(147, 'Bedard.Debugbar', 'comment', '1.0.2', 'Debugbar facade aliased (Alxy)', '2016-05-19 23:14:43'),
(148, 'Bedard.Debugbar', 'comment', '1.0.3', 'Added ajax debugging', '2016-05-19 23:14:44'),
(149, 'Bedard.Debugbar', 'comment', '1.0.4', 'Only display to backend authenticated users', '2016-05-19 23:14:44'),
(150, 'Bedard.Debugbar', 'comment', '1.0.5', 'Use elevated privileges', '2016-05-25 23:40:45'),
(151, 'Indikator.Backend', 'comment', '1.0.0', 'First version of Backend Plus.', '2016-06-05 20:02:11'),
(152, 'Indikator.Backend', 'comment', '1.0.1', 'Fixed the update count issue.', '2016-06-05 20:02:11'),
(153, 'Indikator.Backend', 'comment', '1.0.2', 'Added Last logins widget.', '2016-06-05 20:02:11'),
(154, 'Indikator.Backend', 'comment', '1.0.3', 'Added RSS viewer widget.', '2016-06-05 20:02:11'),
(155, 'Indikator.Backend', 'comment', '1.0.4', 'Minor improvements and bugfix.', '2016-06-05 20:02:11'),
(156, 'Indikator.Backend', 'comment', '1.0.5', 'Added Random images widget.', '2016-06-05 20:02:11'),
(157, 'Indikator.Backend', 'comment', '1.0.6', 'Added virtual keyboard option.', '2016-06-05 20:02:11'),
(158, 'Indikator.Backend', 'script', '1.1.0', 'Improving the Random images widget with slideshow.', '2016-06-05 20:02:11'),
(159, 'Indikator.Backend', 'script', '1.1.0', 'Added Turkish translation (thanks to mahony0).', '2016-06-05 20:02:11'),
(160, 'Indikator.Backend', 'script', '1.1.0', 'Fixed the URL path issue by virtual keyboard.', '2016-06-05 20:02:11'),
(161, 'Indikator.Backend', 'comment', '1.1.0', 'Added Lorem ipsum components (image and text).', '2016-06-05 20:02:11'),
(162, 'Indikator.Backend', 'comment', '1.1.1', 'Hide the \"Find more themes\" link.', '2016-06-05 20:02:11'),
(163, 'Indikator.Backend', 'comment', '1.1.2', 'Added German translation.', '2016-06-05 20:02:11'),
(164, 'Indikator.Backend', 'comment', '1.1.3', 'The widgets work on localhost too.', '2016-06-05 20:02:11'),
(165, 'Indikator.Backend', 'comment', '1.1.4', 'Added Spanish translation (thanks to jh2odo).', '2016-06-05 20:02:11'),
(166, 'Indikator.Backend', 'comment', '1.2.0', 'All features are working on the whole backend.', '2016-06-05 20:02:11'),
(167, 'Indikator.Backend', 'comment', '1.2.1', 'Rounded profile image is optional in top menu.', '2016-06-05 20:02:11'),
(168, 'Indikator.Backend', 'comment', '1.2.2', 'Fixed the authenticated user bug.', '2016-06-05 20:02:11'),
(169, 'Indikator.Backend', 'comment', '1.2.3', 'Hide the Media menu optional in top menu.', '2016-06-05 20:02:11'),
(170, 'Indikator.Backend', 'comment', '1.2.4', 'Minor improvements and bugfix.', '2016-06-05 20:02:11'),
(171, 'Indikator.Backend', 'comment', '1.2.5', 'Renamed the name of backend widgets.', '2016-06-05 20:02:11'),
(172, 'Indikator.Backend', 'comment', '1.2.6', 'Improved the automatic search focus.', '2016-06-05 20:02:11'),
(173, 'Indikator.Backend', 'comment', '1.2.7', 'Minor improvements.', '2016-06-05 20:02:11'),
(174, 'Indikator.Backend', 'comment', '1.2.8', 'Fixed the hiding Media menu issue.', '2016-06-05 20:02:11'),
(175, 'Indikator.Backend', 'comment', '1.2.9', 'Improved the widget exception handling.', '2016-06-05 20:02:11'),
(176, 'Indikator.Backend', 'comment', '1.3.0', 'Added 2 new options for Settings.', '2016-06-05 20:02:11'),
(177, 'Indikator.Backend', 'comment', '1.3.1', 'Fixed the search field hide issue.', '2016-06-05 20:02:11'),
(178, 'Indikator.Backend', 'comment', '1.3.2', 'Delete only demo folder instead of october.', '2016-06-05 20:02:11'),
(179, 'Indikator.Backend', 'comment', '1.3.3', 'Added clear button option to form fields.', '2016-06-05 20:02:11'),
(180, 'Indikator.Backend', 'comment', '1.3.4', 'Improved the Media menu hiding.', '2016-06-05 20:02:11'),
(181, 'Indikator.Backend', 'comment', '1.3.5', 'Fixed the automatically focus option.', '2016-06-05 20:02:11'),
(182, 'Indikator.Backend', 'comment', '1.3.6', 'Added the Cache dashboard widget.', '2016-06-05 20:02:11'),
(183, 'Indikator.Backend', 'comment', '1.4.0', 'Added 2 new form widgets.', '2016-06-05 20:02:11'),
(184, 'Indikator.Backend', 'comment', '1.4.1', 'Added new colorpicker form widget.', '2016-06-05 20:02:11'),
(185, 'Indikator.Backend', 'comment', '1.4.2', 'Minor improvements.', '2016-06-05 20:02:11'),
(186, 'Indikator.Backend', 'comment', '1.4.3', 'Improved the Cache dashboard widget.', '2016-06-05 20:02:11'),
(187, 'Indikator.Backend', 'comment', '1.4.4', 'Updated for latest October.', '2016-07-04 09:57:57'),
(188, 'RainLab.Pages', 'comment', '1.2.0', 'Added support for translations, UI updates.', '2016-07-04 09:57:57'),
(189, 'RainLab.Pages', 'comment', '1.2.1', 'Use nice titles when listing the content files.', '2016-07-04 09:57:57'),
(190, 'RainLab.Pages', 'comment', '1.2.2', 'Minor styling update.', '2016-07-04 09:57:57'),
(191, 'RainLab.Pages', 'comment', '1.2.3', 'Snippets can now be moved by dragging them.', '2016-07-04 09:57:57'),
(192, 'RainLab.Pages', 'comment', '1.2.4', 'Fixes a bug where the cursor is misplaced when editing text files.', '2016-07-04 09:57:57'),
(193, 'RainLab.Pages', 'comment', '1.2.5', 'Fixes a bug where the parent page is lost upon changing a page layout.', '2016-07-04 09:57:57'),
(194, 'RainLab.Pages', 'comment', '1.2.6', 'Shared view variables are now passed to static pages.', '2016-07-04 09:57:57'),
(195, 'RainLab.User', 'comment', '1.2.2', 'Add bulk action button to user list.', '2016-07-04 09:57:57'),
(196, 'RainLab.User', 'comment', '1.2.3', 'Included some descriptive paragraphs in the Reset Password component markup.', '2016-07-04 09:57:57'),
(197, 'RainLab.User', 'comment', '1.2.4', 'Added a checkbox for blocking all mail sent to the user.', '2016-07-04 09:57:57'),
(198, 'RainLab.User', 'script', '1.2.5', 'update_timestamp_nullable.php', '2016-07-04 09:57:58'),
(199, 'RainLab.User', 'comment', '1.2.5', 'Database maintenance. Updated all timestamp columns to be nullable.', '2016-07-04 09:57:58'),
(200, 'RainLab.User', 'script', '1.2.6', 'users_add_last_seen.php', '2016-07-04 09:57:58'),
(201, 'RainLab.User', 'comment', '1.2.6', 'Add a dedicated last seen column for users.', '2016-07-04 09:57:58'),
(202, 'RainLab.Blog', 'comment', '1.2.3', 'Minor user interface update.', '2016-07-04 09:57:58'),
(203, 'RainLab.Blog', 'script', '1.2.4', 'update_timestamp_nullable.php', '2016-07-04 09:57:58'),
(204, 'RainLab.Blog', 'comment', '1.2.4', 'Database maintenance. Updated all timestamp columns to be nullable.', '2016-07-04 09:57:58'),
(205, 'RainLab.Blog', 'comment', '1.2.5', 'Added translation support for blog posts.', '2016-07-04 09:57:58'),
(206, 'RainLab.Blog', 'comment', '1.2.6', 'The published field can now supply a time with the date.', '2016-07-04 09:57:58'),
(207, 'RainLab.Blog', 'comment', '1.2.7', 'Introduced a new RSS feed component.', '2016-07-04 09:57:58'),
(208, 'BnB.ScaffoldTranslation', 'comment', '1.1.0', 'Ready for OctoberCMS release', '2016-07-04 09:57:58'),
(209, 'BnB.ScaffoldTranslation', 'comment', '1.1.1', 'OctoberCMS stable release', '2016-07-04 09:57:58'),
(210, 'RainLab.Pages', 'comment', '1.2.7', 'Fixes issue with duplicating properties when adding multiple snippets on the same page.', '2016-07-06 15:46:12'),
(211, 'RainLab.Blog', 'comment', '1.2.8', 'Fixes issue with translated `content_html` attribute on blog posts.', '2016-07-06 15:46:12'),
(212, 'Indikator.Backend', 'comment', '1.4.5', 'Minor improvements and bugfix.', '2016-07-12 08:24:35'),
(213, 'Indikator.Backend', 'comment', '1.4.6', 'Improved the UI and fixed bug.', '2016-07-12 08:24:35'),
(214, 'RainLab.Pages', 'comment', '1.2.8', 'Fixes a bug where creating a content block without extension doesn\'t save the contents to file.', '2016-07-12 08:24:35'),
(215, 'RainLab.User', 'comment', '1.2.7', 'Minor fix to user timestamp attributes.', '2016-07-12 08:24:35'),
(216, 'Indikator.Backend', 'comment', '1.4.7', 'Hide the label in top menu.', '2016-09-24 20:50:54'),
(217, 'Indikator.Backend', 'comment', '1.4.8', 'Enable the gzip compression.', '2016-09-24 20:50:54'),
(218, 'Indikator.Backend', 'script', '1.5.0', 'create_trash_table.php', '2016-09-24 20:50:54'),
(219, 'Indikator.Backend', 'comment', '1.5.0', 'Delete the unused files and folders.', '2016-09-24 20:50:54'),
(220, 'Indikator.Backend', 'comment', '1.5.1', 'Minor improvements and bugfix.', '2016-09-24 20:50:54'),
(221, 'Indikator.Backend', 'comment', '1.5.2', 'Improved the Trash items page.', '2016-09-24 20:50:54'),
(222, 'RainLab.Pages', 'comment', '1.2.9', 'Add conditional support for translating page URLs.', '2016-09-24 20:50:54'),
(223, 'RainLab.User', 'comment', '1.2.8', 'Add date range filter to users list. Introduced a logout event.', '2016-09-24 20:50:54'),
(224, 'RainLab.Blog', 'comment', '1.2.9', 'Added translation support for blog categories.', '2016-09-24 20:50:54'),
(225, 'BnB.ScaffoldTranslation', 'comment', '1.1.2', 'Scan more folders for news translation strings', '2016-09-24 20:50:54'),
(226, 'RainLab.Forum', 'comment', '1.0.18', 'Minor fix to embed topic component.', '2016-09-24 20:50:54'),
(227, 'RainLab.Forum', 'script', '1.0.19', 'update_timestamp_nullable.php', '2016-09-24 20:50:55'),
(228, 'RainLab.Forum', 'comment', '1.0.19', 'Database maintenance. Updated all timestamp columns to be nullable.', '2016-09-24 20:50:55'),
(229, 'RainLab.Forum', 'script', '1.1.0', 'drop_watches_tables.php', '2016-09-24 20:50:55'),
(230, 'RainLab.Forum', 'comment', '1.1.0', 'Major performance enhancements', '2016-09-24 20:50:55'),
(231, 'RainLab.Forum', 'comment', '1.1.1', 'Fixes bug throwing error when a forum topic has no posts.', '2016-09-24 20:50:55'),
(232, 'Indikator.Backend', 'comment', '1.5.3', 'Expanded the Trash items page.', '2016-10-10 16:40:24'),
(233, 'Indikator.Backend', 'comment', '1.5.4', 'Minor improvements.', '2016-10-10 16:40:24'),
(234, 'Indikator.Backend', 'comment', '1.5.5', 'Added tooltip when hiding the labels.', '2016-10-10 16:40:24'),
(235, 'Indikator.Backend', 'comment', '1.5.6', 'Fixed the page overflow issue.', '2016-11-13 19:05:09'),
(236, 'RainLab.Pages', 'comment', '1.2.10', 'Streamline generation of URLs to use the new Cms::url helper.', '2016-11-13 19:05:09'),
(237, 'RainLab.Pages', 'comment', '1.2.11', 'Implements repeater usage with translate plugin.', '2016-11-13 19:05:09'),
(238, 'RainLab.User', 'comment', '1.2.9', 'Add invitation mail for new accounts created in the back-end.', '2016-11-13 19:05:09'),
(239, 'RainLab.User', 'script', '1.3.0', 'users_add_guest_flag.php', '2016-11-13 19:05:09'),
(240, 'RainLab.User', 'script', '1.3.0', 'users_add_superuser_flag.php', '2016-11-13 19:05:09'),
(241, 'RainLab.User', 'comment', '1.3.0', 'Introduced guest user accounts.', '2016-11-13 19:05:09'),
(242, 'RainLab.User', 'comment', '1.3.1', 'User notification variables can now be extended.', '2016-11-13 19:05:09'),
(243, 'RainLab.User', 'comment', '1.3.2', 'Minor fix to the Auth::register method.', '2016-11-13 19:05:09'),
(244, 'RainLab.Blog', 'comment', '1.2.10', 'Added translation support for post slugs.', '2016-11-13 19:05:09'),
(245, 'RainLab.Blog', 'comment', '1.2.11', 'Fixes bug where excerpt is not translated.', '2016-11-13 19:05:09'),
(246, 'RainLab.Blog', 'comment', '1.2.12', 'Description field added to category form.', '2016-11-13 19:05:09'),
(247, 'RainLab.Blog', 'comment', '1.2.13', 'Improved support for Static Pages menus, added a blog post and all blog posts.', '2016-11-13 19:05:09'),
(248, 'Indikator.Backend', 'comment', '1.5.7', 'Added the context menu feature.', '2016-11-24 19:50:24'),
(249, 'RainLab.Pages', 'comment', '1.2.12', 'Fixes minor issue when using snippets and switching the application locale.', '2016-11-24 19:50:24'),
(250, 'RainLab.User', 'comment', '1.3.3', 'Allow prevention of concurrent user sessions via the user settings.', '2016-11-24 19:50:24'),
(251, 'RainLab.Blog', 'comment', '1.2.14', 'Added post exception property to the post list component, useful for showing related posts.', '2016-11-24 19:50:24'),
(252, 'Mohsin.Txt', 'comment', '1.0.1', 'First version of Txt', '2016-11-24 19:50:24'),
(253, 'Mohsin.Txt', 'script', '1.0.2', 'create_humans_table.php', '2016-11-24 19:50:24'),
(254, 'Mohsin.Txt', 'script', '1.0.2', 'Created Robots Table', '2016-11-24 19:50:24'),
(255, 'Mohsin.Txt', 'script', '1.0.2', 'create_robots_table.php', '2016-11-24 19:50:24'),
(256, 'Mohsin.Txt', 'script', '1.0.2', 'Created Directives Table', '2016-11-24 19:50:24'),
(257, 'Mohsin.Txt', 'script', '1.0.2', 'create_directives_table.php', '2016-11-24 19:50:24'),
(258, 'Mohsin.Txt', 'script', '1.0.2', 'Created Agents Table', '2016-11-24 19:50:24'),
(259, 'Mohsin.Txt', 'script', '1.0.2', 'create_agents_table.php', '2016-11-24 19:50:24'),
(260, 'Mohsin.Txt', 'script', '1.0.2', 'Created Information Table', '2016-11-24 19:50:24'),
(261, 'Mohsin.Txt', 'script', '1.0.2', 'create_information_table.php', '2016-11-24 19:50:24'),
(262, 'Mohsin.Txt', 'comment', '1.0.2', 'Created Humans Table', '2016-11-24 19:50:24'),
(263, 'Mohsin.Txt', 'script', '1.0.3', 'seed_agents_table.php', '2016-11-24 19:50:24'),
(264, 'Mohsin.Txt', 'comment', '1.0.3', 'Add seed data for agents table.', '2016-11-24 19:50:24'),
(265, 'Mohsin.Txt', 'comment', '1.0.4', 'Minor Bug Fix', '2016-11-24 19:50:24'),
(266, 'Mohsin.Txt', 'comment', '1.0.5', 'Added compatability with RainLab.Sitemap', '2016-11-24 19:50:24'),
(267, 'Mohsin.Txt', 'comment', '1.0.6', 'Added setting permissions. PR by @matissjanis', '2016-11-24 19:50:24'),
(268, 'Mohsin.Txt', 'comment', '1.0.7', 'Added new type for directive', '2016-11-24 19:50:24'),
(269, 'Mohsin.Txt', 'comment', '1.0.8', '!!! Important bug fix', '2016-11-24 19:50:24'),
(270, 'RainLab.Translate', 'script', '1.0.1', 'create_messages_table.php', '2016-12-01 12:03:59'),
(271, 'RainLab.Translate', 'script', '1.0.1', 'create_attributes_table.php', '2016-12-01 12:03:59'),
(272, 'RainLab.Translate', 'script', '1.0.1', 'create_locales_table.php', '2016-12-01 12:03:59'),
(273, 'RainLab.Translate', 'script', '1.0.1', 'seed_all_tables.php', '2016-12-01 12:03:59'),
(274, 'RainLab.Translate', 'comment', '1.0.1', 'First version of Translate', '2016-12-01 12:03:59'),
(275, 'RainLab.Translate', 'comment', '1.0.2', 'Languages and Messages can now be deleted.', '2016-12-01 12:03:59'),
(276, 'RainLab.Translate', 'comment', '1.0.3', 'Minor updates for latest October release.', '2016-12-01 12:03:59'),
(277, 'RainLab.Translate', 'comment', '1.0.4', 'Locale cache will clear when updating a language.', '2016-12-01 12:03:59'),
(278, 'RainLab.Translate', 'comment', '1.0.5', 'Add Spanish language and fix plugin config.', '2016-12-01 12:03:59'),
(279, 'RainLab.Translate', 'comment', '1.0.6', 'Minor improvements to the code.', '2016-12-01 12:03:59'),
(280, 'RainLab.Translate', 'comment', '1.0.7', 'Fixes major bug where translations are skipped entirely!', '2016-12-01 12:03:59'),
(281, 'RainLab.Translate', 'comment', '1.0.8', 'Minor bug fixes.', '2016-12-01 12:03:59'),
(282, 'RainLab.Translate', 'comment', '1.0.9', 'Fixes an issue where newly created models lose their translated values.', '2016-12-01 12:03:59'),
(283, 'RainLab.Translate', 'comment', '1.0.10', 'Minor fix for latest build.', '2016-12-01 12:03:59'),
(284, 'RainLab.Translate', 'comment', '1.0.11', 'Fix multilingual rich editor when used in stretch mode.', '2016-12-01 12:03:59'),
(285, 'RainLab.Translate', 'comment', '1.1.0', 'Introduce compatibility with RainLab.Pages plugin.', '2016-12-01 12:03:59'),
(286, 'RainLab.Translate', 'comment', '1.1.1', 'Minor UI fix to the language picker.', '2016-12-01 12:03:59'),
(287, 'RainLab.Translate', 'comment', '1.1.2', 'Add support for translating Static Content files.', '2016-12-01 12:03:59'),
(288, 'RainLab.Translate', 'comment', '1.1.3', 'Improved support for the multilingual rich editor.', '2016-12-01 12:03:59'),
(289, 'RainLab.Translate', 'comment', '1.1.4', 'Adds new multilingual markdown editor.', '2016-12-01 12:03:59'),
(290, 'RainLab.Translate', 'comment', '1.1.5', 'Minor update to the multilingual control API.', '2016-12-01 12:03:59'),
(291, 'RainLab.Translate', 'comment', '1.1.6', 'Minor improvements in the message editor.', '2016-12-01 12:03:59'),
(292, 'RainLab.Translate', 'comment', '1.1.7', 'Fixes bug not showing content when first loading multilingual textarea controls.', '2016-12-01 12:03:59'),
(293, 'RainLab.Translate', 'comment', '1.2.0', 'CMS pages now support translating the URL.', '2016-12-01 12:03:59'),
(294, 'RainLab.Translate', 'comment', '1.2.1', 'Minor update in the rich editor and code editor language control position.', '2016-12-01 12:03:59'),
(295, 'RainLab.Translate', 'comment', '1.2.2', 'Static Pages now support translating the URL.', '2016-12-01 12:03:59'),
(296, 'RainLab.Translate', 'comment', '1.2.3', 'Fixes Rich Editor when inserting a page link.', '2016-12-01 12:03:59'),
(297, 'RainLab.Translate', 'script', '1.2.4', 'create_indexes_table.php', '2016-12-01 12:03:59'),
(298, 'RainLab.Translate', 'comment', '1.2.4', 'Translatable attributes can now be declared as indexes.', '2016-12-01 12:03:59'),
(299, 'RainLab.Translate', 'comment', '1.2.5', 'Adds new multilingual repeater form widget.', '2016-12-01 12:03:59'),
(300, 'RainLab.Translate', 'comment', '1.2.6', 'Fixes repeater usage with static pages plugin.', '2016-12-01 12:03:59'),
(301, 'RainLab.Translate', 'comment', '1.2.7', 'Fixes placeholder usage with static pages plugin.', '2016-12-01 12:03:59'),
(302, 'RainLab.Pages', 'comment', '1.2.13', 'Fixes bug when AJAX is used on a page that does not yet exist.', '2016-12-01 18:36:00'),
(303, 'Indikator.Backend', 'comment', '1.5.8', 'Improved the context menu.', '2016-12-04 19:11:42'),
(304, 'RainLab.Translate', 'comment', '1.2.8', 'Improvements to code for latest October build compatibility.', '2017-01-17 15:05:25'),
(305, 'RainLab.Translate', 'comment', '1.2.9', 'Fixes context for translated strings when used with Static Pages.', '2017-01-17 15:05:25'),
(306, 'RainLab.User', 'comment', '1.3.4', 'Added force secure protocol property to the account component.', '2017-01-17 15:05:25'),
(307, 'Mohsin.Txt', 'comment', '1.0.9', 'Download Txt Feature', '2017-01-17 15:05:25'),
(308, 'Mohsin.Txt', 'script', '1.1.0', 'refactor_settings_human_fields.php', '2017-01-17 15:05:25'),
(309, 'Mohsin.Txt', 'comment', '1.1.0', 'Updated human field labels to repeater', '2017-01-17 15:05:25'),
(310, 'Mohsin.Txt', 'comment', '1.1.1', 'Upgraded Agents to use ImportExport behavior than custom code.', '2017-01-17 15:05:25'),
(311, 'Mohsin.Txt', 'script', '1.1.2', 'drop_timestamps.php', '2017-01-17 15:05:25'),
(312, 'Mohsin.Txt', 'comment', '1.1.2', 'Database maintenance. Removed all the unused timestamp columns.', '2017-01-17 15:05:25'),
(313, 'RainLab.Translate', 'comment', '1.2.10', 'Minor UI fix to the multilingual repeater.', '2017-02-03 22:01:01'),
(314, 'Bedard.Debugbar', 'comment', '1.0.6', 'Fix fatal error when cms.page.beforeDisplay is fired multiple times (mnishihan)', '2017-02-03 22:01:01'),
(315, 'Indikator.Backend', 'comment', '1.6.0', 'Available the Elite version.', '2017-02-24 02:02:15'),
(316, 'Indikator.Backend', 'comment', '1.6.1', 'Added the Russian translation.', '2017-02-24 02:02:15'),
(317, 'Indikator.Backend', 'comment', '1.6.2', 'Added the Brazilian Portuguese lang.', '2017-02-24 02:02:15'),
(318, 'RainLab.Pages', 'comment', '1.2.14', 'Add theme logging support for changes made to menus.', '2017-02-24 02:02:15'),
(319, 'RainLab.Pages', 'comment', '1.2.15', 'Back-end navigation sort order updated.', '2017-03-20 14:07:28'),
(320, 'RainLab.Blog', 'comment', '1.2.15', 'Back-end navigation sort order updated.', '2017-03-20 14:07:28'),
(321, 'RainLab.Blog', 'comment', '1.2.16', 'Added `nextPost` and `previousPost` to the blog post component.', '2017-03-20 14:07:28'),
(322, 'Indikator.Backend', 'comment', '1.6.3', 'Minor improvements.', '2017-03-30 17:35:14'),
(323, 'RainLab.Translate', 'comment', '1.2.11', 'Fixes translation not working with partials loaded via AJAX', '2017-04-16 16:36:20'),
(324, 'RainLab.Blog', 'comment', '1.2.17', 'Improved the next and previous logic to sort by the published date.', '2017-04-16 16:36:20'),
(325, 'RainLab.Blog', 'comment', '1.2.18', 'Minor change to internals.', '2017-04-16 16:36:20'),
(326, 'RainLab.Pages', 'comment', '1.2.16', 'Fixes a bug when saving a template that has been modified outside of the CMS (mtime mismatch).', '2017-04-16 16:36:20'),
(327, 'RainLab.Pages', 'comment', '1.2.17', 'Changes locations of custom fields to secondary tabs instead of the primary Settings area. New menu search ability on adding menu items', '2017-06-11 15:02:44'),
(328, 'RainLab.Translate', 'comment', '1.2.12', 'Add support for translating the new grouped repeater feature.', '2017-06-11 15:02:44'),
(329, 'Bedard.Debugbar', 'comment', '1.0.7', 'Allow plugin to be installed via Composer (tim0991)', '2017-06-11 15:02:44'),
(330, 'AnandPatel.WysiwygEditors', 'comment', '1.0.1', 'First version of Wysiwyg Editors.', '2017-06-11 22:28:06'),
(331, 'AnandPatel.WysiwygEditors', 'comment', '1.0.2', 'Automatic Injection to CMS & other code editors and October CMS`s Rich Editor added.', '2017-06-11 22:28:08'),
(332, 'AnandPatel.WysiwygEditors', 'comment', '1.0.3', 'Automatic Injection to RainLab Static Pages & other plugin`s option is appear only if installed.', '2017-06-11 22:28:09'),
(333, 'AnandPatel.WysiwygEditors', 'comment', '1.0.4', 'New Froala editor added (on request from emzero439), Height & width property added for editor, setting moved to My Setting tab and minor changes in settings.', '2017-06-11 22:28:09'),
(334, 'AnandPatel.WysiwygEditors', 'comment', '1.0.5', 'Automatic Injection to Radiantweb`s Problog and ProEvents (option available in settings-content).', '2017-06-11 22:28:10'),
(335, 'AnandPatel.WysiwygEditors', 'comment', '1.0.6', 'CKEditor updated and bug fixes.', '2017-06-11 22:28:10'),
(336, 'AnandPatel.WysiwygEditors', 'comment', '1.0.7', 'Integrated elFinder (file browser) with TinyMCE & CKEditor, Image upload/delete for Froala Editor.', '2017-06-11 22:28:11'),
(337, 'AnandPatel.WysiwygEditors', 'comment', '1.0.8', 'Added security to File Browser`s route (Authenticate users can only access File Browser).', '2017-06-11 22:28:14'),
(338, 'AnandPatel.WysiwygEditors', 'comment', '1.0.9', 'Updated CKEditor, Froala and TinyMCE.', '2017-06-11 22:28:15'),
(339, 'AnandPatel.WysiwygEditors', 'comment', '1.1.0', 'Support multilanguage, update elFinder and cleanup code.', '2017-06-11 22:28:16'),
(340, 'AnandPatel.WysiwygEditors', 'comment', '1.1.1', 'Added Turkish language.', '2017-06-11 22:28:16'),
(341, 'AnandPatel.WysiwygEditors', 'comment', '1.1.2', 'Added Hungarian language.', '2017-06-11 22:28:17'),
(342, 'AnandPatel.WysiwygEditors', 'comment', '1.1.3', 'Fixed issue related to RC (Elfinder fix remaining).', '2017-06-11 22:28:17'),
(343, 'AnandPatel.WysiwygEditors', 'script', '1.1.4', 'PublishConfig.php', '2017-06-11 22:28:17'),
(344, 'AnandPatel.WysiwygEditors', 'comment', '1.1.4', 'Fixed Elfinder issue.', '2017-06-11 22:28:17'),
(345, 'AnandPatel.WysiwygEditors', 'comment', '1.1.5', 'Updated CKEditor, Froala and TinyMCE.', '2017-06-11 22:28:18'),
(346, 'AnandPatel.WysiwygEditors', 'comment', '1.1.6', 'Changed destination folder.', '2017-06-11 22:28:18'),
(347, 'AnandPatel.WysiwygEditors', 'comment', '1.1.7', 'Added Czech language.', '2017-06-11 22:28:19'),
(348, 'AnandPatel.WysiwygEditors', 'comment', '1.1.8', 'Added Russian language.', '2017-06-11 22:28:19'),
(349, 'AnandPatel.WysiwygEditors', 'comment', '1.1.9', 'Fix hook and other issues (thanks to Vojta Svoboda).', '2017-06-11 22:28:19'),
(350, 'AnandPatel.WysiwygEditors', 'comment', '1.2.0', 'Put settings inside CMS sidemenu (thanks to Amanda Tresbach).', '2017-06-11 22:28:20'),
(351, 'AnandPatel.WysiwygEditors', 'comment', '1.2.1', 'Remove el-finder (Which fix issue of composer), added OC media manager support for image in TinyMCE & CkEditor, TinyMCE version updated, Fix Image upload for froala editor', '2017-06-11 22:28:20'),
(352, 'AnandPatel.WysiwygEditors', 'comment', '1.2.2', 'Add multilingual support, Add new languages, Update the Hungarian language, Add the missing English language files (Special thanks to Szabó Gergő)', '2017-06-11 22:28:21'),
(353, 'AnandPatel.WysiwygEditors', 'comment', '1.2.3', 'Added toolbar customization option (Special thanks to Szabó Gergő).', '2017-06-11 22:28:21'),
(354, 'AnandPatel.WysiwygEditors', 'comment', '1.2.4', 'Added support for Content Plus Plugin & News and Newsletter plugin(thanks to Szabó Gergő)', '2017-06-11 22:28:21'),
(355, 'manogi.Mediathumb', 'comment', '0.0.1', 'Added Amazon S3 support', '2017-06-11 23:13:23'),
(356, 'manogi.Mediathumb', 'comment', '0.1.0', 'Added config/config.php file for setting defaults and added backend support (major change, please see documentation)', '2017-06-11 23:13:24'),
(357, 'manogi.Mediathumb', 'comment', '0.2.0', 'Renamed the helper function getMediathumb(). Left an alias for mediathumbGetThumb() to prevent breaking change.', '2017-06-11 23:13:25'),
(358, 'manogi.Mediathumb', 'comment', '0.2.1', 'Fixed an error when an empty string was passed as image path.', '2017-06-11 23:13:25'),
(359, 'manogi.Mediathumb', 'comment', '0.2.2', 'cs_CZ language added - thanks to Vojta Svoboda', '2017-06-11 23:13:26'),
(360, 'manogi.Mediathumb', 'comment', '0.2.3', 'Hungarian language added and minor typos corrected - thanks to Szabó Gergő', '2017-06-11 23:13:26'),
(361, 'manogi.Mediathumb', 'comment', '0.2.4', 'Added MIT lincence - thanks to Szabó Gergő', '2017-06-11 23:13:27'),
(362, 'manogi.Mediathumb', 'comment', '0.2.5', 'Corrected a bug to make it work in installations of OctoberCMS in a subfolder.', '2017-06-11 23:13:28'),
(363, 'manogi.Mediathumb', 'comment', '0.3.0', 'Added option to change mediathumb folder name (including subfolders) in the config file.', '2017-06-11 23:13:28'),
(364, 'manogi.Mediathumb', 'comment', '0.3.1', 'Fixed a bug which made the plugin return an exception when failing to create a thumbnail for unsupported file types.', '2017-06-11 23:13:28'),
(365, 'manogi.Mediathumb', 'comment', '0.3.2', 'Making sure the static helper function does not overwrite an existing function (Thanks to Tobias Kündig).', '2017-06-11 23:13:30'),
(366, 'manogi.Mediathumb', 'comment', '0.3.3', 'Fixed syntax error in helper function', '2017-06-11 23:13:30'),
(367, 'manogi.Mediathumb', 'comment', '0.4.0', 'Added functionality for uploads files like featured images in blogposts', '2017-06-11 23:13:31'),
(368, 'manogi.Mediathumb', 'comment', '0.4.1', 'Fixed bug in autoload file', '2017-06-11 23:13:31'),
(369, 'manogi.Mediathumb', 'comment', '0.4.2', 'Fixed bug that made Amazon S3 not working correctly for uploads', '2017-06-11 23:13:32'),
(370, 'manogi.Mediathumb', 'comment', '0.4.3', 'Fixed bug that made Mediathumb not work in OctoberCMS installed in a sub directory using local disk', '2017-06-11 23:13:32'),
(371, 'manogi.Mediathumb', 'comment', '0.4.4', 'Fix for octobercms breaking change', '2017-06-11 23:13:33'),
(372, 'AnandPatel.WysiwygEditors', 'comment', '1.2.5', 'Minor improvements and bugfixes.', '2017-06-25 15:50:06'),
(373, 'AnandPatel.WysiwygEditors', 'comment', '1.2.6', 'Updated the CKEditor and TinyMCE editors.', '2017-06-25 15:50:06'),
(374, 'AnandPatel.WysiwygEditors', 'comment', '1.2.7', 'Show locale switcher when using multilocale editor.', '2017-06-25 15:50:07'),
(375, 'AnandPatel.WysiwygEditors', 'comment', '1.2.8', 'Added French language', '2017-06-25 15:50:07'),
(376, 'GrCOTE7.Dpt', 'comment', '1.0.1', 'First version of Dpt (demo)', '2017-06-30 16:45:16'),
(377, 'Bedard.Debugbar', 'comment', '1.0.8', 'Fix debugbar dependency', '2017-06-30 16:45:16'),
(378, 'RainLab.Builder', 'comment', '1.0.1', 'Initialize plugin.', '2017-07-03 10:17:22'),
(379, 'RainLab.Builder', 'comment', '1.0.2', 'Fixes the problem with selecting a plugin. Minor localization corrections. Configuration files in the list and form behaviors are now autocomplete.', '2017-07-03 10:17:23'),
(380, 'RainLab.Builder', 'comment', '1.0.3', 'Improved handling of the enum data type.', '2017-07-03 10:17:23'),
(381, 'RainLab.Builder', 'comment', '1.0.4', 'Added user permissions to work with the Builder.', '2017-07-03 10:17:23'),
(382, 'RainLab.Builder', 'comment', '1.0.5', 'Fixed permissions registration.', '2017-07-03 10:17:23'),
(383, 'RainLab.Builder', 'comment', '1.0.6', 'Fixed front-end record ordering in the Record List component.', '2017-07-03 10:17:24'),
(384, 'RainLab.Builder', 'comment', '1.0.7', 'Builder settings are now protected with user permissions. The database table column list is scrollable now. Minor code cleanup.', '2017-07-03 10:17:24'),
(385, 'RainLab.Builder', 'comment', '1.0.8', 'Added the Reorder Controller behavior.', '2017-07-03 10:17:24'),
(386, 'RainLab.Builder', 'comment', '1.0.9', 'Minor API and UI updates.', '2017-07-03 10:17:24'),
(387, 'RainLab.Builder', 'comment', '1.0.10', 'Minor styling update.', '2017-07-03 10:17:24'),
(388, 'RainLab.Builder', 'comment', '1.0.11', 'Fixed a bug where clicking placeholder in a repeater would open Inspector. Fixed a problem with saving forms with repeaters in tabs. Minor style fix.', '2017-07-03 10:17:24'),
(389, 'RainLab.Builder', 'comment', '1.0.12', 'Added support for the Trigger property to the Media Finder widget configuration. Names of form fields and list columns definition files can now contain underscores.', '2017-07-03 10:17:25'),
(390, 'RainLab.Builder', 'comment', '1.0.13', 'Minor styling fix on the database editor.', '2017-07-03 10:17:25'),
(391, 'RainLab.Builder', 'comment', '1.0.14', 'Added support for published_at timestamp field', '2017-07-03 10:17:25'),
(392, 'RainLab.Builder', 'comment', '1.0.15', 'Fixed a bug where saving a localization string in Inspector could cause a JavaScript error. Added support for Timestamps and Soft Deleting for new models.', '2017-07-03 10:17:25'),
(393, 'RainLab.Builder', 'comment', '1.0.16', 'Fixed a bug when saving a form with the Repeater widget in a tab could create invalid fields in the form\'s outside area. Added a check that prevents creating localization strings inside other existing strings.', '2017-07-03 10:17:26'),
(394, 'RainLab.Builder', 'comment', '1.0.17', 'Added support Trigger attribute support for RecordFinder and Repeater form widgets.', '2017-07-03 10:17:26'),
(395, 'RainLab.Builder', 'comment', '1.0.18', 'Fixes a bug where \'::class\' notations in a model class definition could prevent the model from appearing in the Builder model list. Added emptyOption property support to the dropdown form control.', '2017-07-03 10:17:26'),
(396, 'RainLab.Builder', 'comment', '1.0.19', 'Added a feature allowing to add all database columns to a list definition. Added max length validation for database table and column names.', '2017-07-03 10:17:26'),
(397, 'RainLab.Builder', 'comment', '1.0.20', 'Fixes a bug where form the builder could trigger the \"current.hasAttribute is not a function\" error.', '2017-07-03 10:17:26'),
(398, 'RainLab.Builder', 'comment', '1.0.21', 'Back-end navigation sort order updated.', '2017-07-03 10:17:27'),
(399, 'Grcote7.Dptdb', 'comment', '1.0.1', 'Initialize plugin.', '2017-07-03 10:21:21'),
(400, 'Grcote7.Dptdb', 'script', '1.0.2', 'builder_table_create_grcote7_dptdb_dpts.php', '2017-07-03 10:28:53'),
(401, 'Grcote7.Dptdb', 'comment', '1.0.2', 'Created table grcote7_dptdb_dpts', '2017-07-03 10:28:54'),
(402, 'Grcote7.Dptdb', 'script', '1.0.3', 'builder_table_update_grcote7_dptdb_dpts.php', '2017-07-03 10:37:01'),
(403, 'Grcote7.Dptdb', 'comment', '1.0.3', 'Updated table grcote7_dptdb_dpts', '2017-07-03 10:37:01'),
(404, 'Grcote7.Library', 'comment', '1.0.1', 'Initialize plugin.', '2017-07-05 11:21:25'),
(405, 'Grcote7.Dptlist', 'comment', '1.0.1', 'Initialize plugin.', '2017-07-05 11:21:25'),
(406, 'Grcote7.Dptlist', 'script', '1.0.2', 'builder_table_create_grcote7_dptlist_dpts.php', '2017-07-05 11:21:25'),
(407, 'Grcote7.Dptlist', 'comment', '1.0.2', 'Created table grcote7_dptlist_dpts', '2017-07-05 11:21:25'),
(408, 'Grcote7.Dptlist', 'script', '1.0.3', 'builder_table_update_grcote7_dptlist_dpts.php', '2017-07-05 11:21:25'),
(409, 'Grcote7.Dptlist', 'comment', '1.0.3', 'Updated table grcote7_dptlist_dpts', '2017-07-05 11:21:26'),
(410, 'Grcote7.Library', 'script', '1.0.2', 'builder_table_create_grcote7_library_books.php', '2017-07-05 11:23:38'),
(411, 'Grcote7.Library', 'comment', '1.0.2', 'Created table grcote7_library_books', '2017-07-05 11:23:38'),
(412, 'RainLab.Location', 'comment', '1.0.1', 'Initialize plugin.', '2017-07-24 04:03:12'),
(413, 'RainLab.Location', 'script', '1.0.2', 'create_states_table.php', '2017-07-24 04:03:12'),
(414, 'RainLab.Location', 'script', '1.0.2', 'create_countries_table.php', '2017-07-24 04:03:12'),
(415, 'RainLab.Location', 'comment', '1.0.2', 'Create database tables.', '2017-07-24 04:03:12'),
(416, 'RainLab.Location', 'script', '1.0.3', 'seed_all_tables.php', '2017-07-24 04:03:16'),
(417, 'RainLab.Location', 'comment', '1.0.3', 'Add seed data for countries and states.', '2017-07-24 04:03:16'),
(418, 'RainLab.Location', 'comment', '1.0.4', 'Satisfy the new Google API key requirement.', '2017-07-24 04:03:16'),
(419, 'RainLab.Location', 'script', '1.0.5', 'add_country_pinned_flag.php', '2017-07-24 04:03:17'),
(420, 'RainLab.Location', 'comment', '1.0.5', 'Countries can now be pinned to make them appear at the top of the list.', '2017-07-24 04:03:17'),
(421, 'RainLab.Location', 'comment', '1.0.6', 'Added support for defining a default country and state.', '2017-07-24 04:03:17'),
(422, 'RainLab.Location', 'comment', '1.0.7', 'Added basic geocoding method to the Country model.', '2017-07-24 04:03:17'),
(423, 'Grcote7.Forumnotifier', 'comment', '1.0.1', 'First version of ForumNotifier', '2017-07-24 04:03:17'),
(424, 'RainLab.Translate', 'comment', '1.3.0', 'Added search to the translate messages page.', '2017-07-24 04:10:54'),
(425, 'DevINX.ContactUs', 'comment', '1.0.0', 'First Version', '2017-09-05 12:32:19'),
(426, 'DevINX.ContactUs', 'comment', '1.0.1', 'Bug fix while in settings', '2017-09-05 12:32:19'),
(427, 'DevINX.ContactUs', 'comment', '1.0.2', 'Bug fix - the configuration text displayed HTML and not rendered HTML', '2017-09-05 12:32:19');
INSERT INTO `system_plugin_history` (`id`, `code`, `type`, `version`, `detail`, `created_at`) VALUES
(428, 'Martin.Forms', 'script', '1.0.0', 'create_records_table.php', '2017-09-05 12:32:20'),
(429, 'Martin.Forms', 'comment', '1.0.0', 'First version of Magic Forms', '2017-09-05 12:32:20'),
(430, 'Martin.Forms', 'comment', '1.0.1', 'Added CSRF protection', '2017-09-05 12:32:20'),
(431, 'Martin.Forms', 'comment', '1.1.0', 'Added reCAPTCHA', '2017-09-05 12:32:20'),
(432, 'Martin.Forms', 'comment', '1.1.1', 'Fix when using reCAPTCHA + allowed fields', '2017-09-05 12:32:20'),
(433, 'Martin.Forms', 'script', '1.1.2', 'Search inside stored data', '2017-09-05 12:32:20'),
(434, 'Martin.Forms', 'script', '1.1.2', 'Organize your forms on custom groups', '2017-09-05 12:32:20'),
(435, 'Martin.Forms', 'script', '1.1.2', 'add_group_field.php', '2017-09-05 12:32:20'),
(436, 'Martin.Forms', 'comment', '1.1.2', 'Filter forms records', '2017-09-05 12:32:20'),
(437, 'Martin.Forms', 'comment', '1.2.0', 'Export stored data in CSV format', '2017-09-05 12:32:20'),
(438, 'Martin.Forms', 'script', '1.2.1', 'Added Turkish language', '2017-09-05 12:32:20'),
(439, 'Martin.Forms', 'comment', '1.2.1', 'Auto-response email on form submit', '2017-09-05 12:32:20'),
(440, 'Martin.Forms', 'comment', '1.2.2', 'Override notifications and auto-response email subjects', '2017-09-05 12:32:20'),
(441, 'Martin.Forms', 'script', '1.2.3', 'Fixed Empty AJAX Form template', '2017-09-05 12:32:20'),
(442, 'Martin.Forms', 'script', '1.2.3', 'Support for Translate plugin', '2017-09-05 12:32:20'),
(443, 'Martin.Forms', 'script', '1.2.3', 'Added plugin documentation', '2017-09-05 12:32:20'),
(444, 'Martin.Forms', 'comment', '1.2.3', 'New option to reset form after successfully submit', '2017-09-05 12:32:20'),
(445, 'Martin.Forms', 'comment', '1.2.4', 'Added detailed reCAPTCHA help', '2017-09-05 12:32:20'),
(446, 'Martin.Forms', 'comment', '1.3.0', 'AJAX file uploads', '2017-09-05 12:32:20'),
(447, 'Martin.Forms', 'comment', '1.3.1', 'Added lang pt-br', '2017-09-05 12:32:20'),
(448, 'Martin.Forms', 'comment', '1.3.2', 'Fixed multiples reCAPTCHAs on same page', '2017-09-05 12:32:20'),
(449, 'Martin.Forms', 'script', '1.3.3', 'Updated documentations', '2017-09-05 12:32:20'),
(450, 'Martin.Forms', 'comment', '1.3.3', 'Fixed record detail page when form data contains an array', '2017-09-05 12:32:20'),
(451, 'Martin.Forms', 'comment', '1.3.4', 'New \"Anonymize IP\" option', '2017-09-05 12:32:20'),
(452, 'Martin.Forms', 'comment', '1.3.5', 'New option \"Redirect on successful submit\"', '2017-09-05 12:32:20'),
(453, 'Martin.Forms', 'script', '1.3.6', 'Support Translate plugin on reCAPTCHA', '2017-09-05 12:32:20'),
(454, 'Martin.Forms', 'script', '1.3.6', 'reCAPTCHA validation enhancements', '2017-09-05 12:32:20'),
(455, 'Martin.Forms', 'comment', '1.3.6', 'French translation', '2017-09-05 12:32:20'),
(456, 'Martin.Forms', 'script', '1.3.7', 'Show uploads as list', '2017-09-05 12:32:20'),
(457, 'Martin.Forms', 'comment', '1.3.7', 'Displaying errors with fields (inline errors)', '2017-09-05 12:32:20'),
(458, 'Martin.Forms', 'comment', '1.3.8', 'Fixed handling arrays (radio inputs) in notification email', '2017-09-05 12:32:21'),
(459, 'Martin.Forms', 'script', '1.3.9', 'Execute custom JavaScript on form success or error', '2017-09-05 12:32:21'),
(460, 'Martin.Forms', 'comment', '1.3.9', 'Use custom mail templates', '2017-09-05 12:32:21'),
(461, 'Martin.Forms', 'comment', '1.4.0', 'Added Events (please, refer to docs) [thanks to therealkevinard]', '2017-09-05 12:32:21'),
(462, 'Martin.Forms', 'comment', '1.4.1', 'New option \"Reply To\"', '2017-09-05 12:32:21'),
(463, 'Martin.Forms', 'script', '1.4.2', 'New option to sanitize form data (check security docs for more info)', '2017-09-05 12:32:21'),
(464, 'Martin.Forms', 'script', '1.4.2', 'Added option to send blind carbon copy in notifications email', '2017-09-05 12:32:21'),
(465, 'Martin.Forms', 'comment', '1.4.2', 'Escape HTML characters on the view records page [thanks to Andre]', '2017-09-05 12:32:21'),
(466, 'Renatio.DynamicPDF', 'script', '1.0.1', 'create_pdf_layouts_table.php', '2017-09-05 12:32:21'),
(467, 'Renatio.DynamicPDF', 'script', '1.0.1', 'create_pdf_templates_table.php', '2017-09-05 12:32:21'),
(468, 'Renatio.DynamicPDF', 'script', '1.0.1', 'seed_pdf_layouts_table.php', '2017-09-05 12:32:22'),
(469, 'Renatio.DynamicPDF', 'script', '1.0.1', 'seed_pdf_templates_table.php', '2017-09-05 12:32:22'),
(470, 'Renatio.DynamicPDF', 'comment', '1.0.1', 'Initialize plugin.', '2017-09-05 12:32:22'),
(471, 'Renatio.DynamicPDF', 'comment', '1.0.2', 'Minor changes.', '2017-09-05 12:32:22'),
(472, 'Renatio.DynamicPDF', 'comment', '1.1.0', '!!! Important update', '2017-09-05 12:32:22'),
(473, 'Renatio.DynamicPDF', 'comment', '1.1.1', 'Use Twig::parse() facade. Only update for October build 300 and above.', '2017-09-05 12:32:22'),
(474, 'Renatio.DynamicPDF', 'comment', '1.1.2', 'Minor changes.', '2017-09-05 12:32:22'),
(475, 'Renatio.DynamicPDF', 'comment', '1.1.3', 'Add stream parameters and Czech locale. Thanks to @vojtasvoboda.', '2017-09-05 12:32:22'),
(476, 'Renatio.DynamicPDF', 'comment', '1.1.4', 'Add Spanish and Spanish-Argentina locale. Thanks to @kocholes.', '2017-09-05 12:32:22'),
(477, 'Renatio.DynamicPDF', 'comment', '1.1.5', 'UI improvements. Thanks to @kocholes.', '2017-09-05 12:32:22'),
(478, 'Renatio.DynamicPDF', 'comment', '2.0.0', '!!! This is an important update that contains breaking changes.', '2017-09-05 12:32:22'),
(479, 'Renatio.DynamicPDF', 'comment', '2.0.1', 'Add preview HTML buttons.', '2017-09-05 12:32:22'),
(480, 'Renatio.DynamicPDF', 'comment', '2.1.0', '!!! This is an important update that contains breaking changes.', '2017-09-05 12:32:22'),
(481, 'Renatio.DynamicPDF', 'comment', '2.1.1', 'Upgrade to DomPDF 0.7.', '2017-09-05 12:32:22'),
(482, 'Renatio.DynamicPDF', 'script', '2.1.2', 'update_timestamp_nullable.php', '2017-09-05 12:32:22'),
(483, 'Renatio.DynamicPDF', 'comment', '2.1.2', 'Database maintenance. Updated all timestamp columns to be nullable.', '2017-09-05 12:32:22'),
(484, 'Renatio.DynamicPDF', 'comment', '2.1.3', 'Upgrade to DomPDF 0.8.', '2017-09-05 12:32:22'),
(485, 'Renatio.DynamicPDF', 'comment', '2.1.4', 'German language. Thanks to @TimFoerster.', '2017-09-05 12:32:22'),
(486, 'Renatio.DynamicPDF', 'comment', '2.1.5', 'Fix open_basedir restriction on some hostings. Set isRemoteEnabled flag to allow absolute paths.', '2017-09-05 12:32:22'),
(487, 'Renatio.DynamicPDF', 'comment', '2.1.6', 'Allow Laravel 5.5.', '2017-09-05 12:32:22'),
(488, 'Zainab.SimpleContact', 'comment', '1.0.1', 'Initialize plugin.', '2017-09-05 12:32:22'),
(489, 'Zainab.SimpleContact', 'script', '1.0.2', 'builder_table_create_zainab_simplecontact_contact.php', '2017-09-05 12:32:23'),
(490, 'Zainab.SimpleContact', 'comment', '1.0.2', 'Created table zainab_simplecontact_contact', '2017-09-05 12:32:23'),
(491, 'Zainab.SimpleContact', 'script', '1.0.3', 'builder_table_update_zainab_simplecontact_contact.php', '2017-09-05 12:32:23'),
(492, 'Zainab.SimpleContact', 'comment', '1.0.3', 'Updated table zainab_simplecontact_contact', '2017-09-05 12:32:23'),
(493, 'Zainab.SimpleContact', 'comment', '1.0.4', 'Change Alias bug fixed', '2017-09-05 12:32:23'),
(494, 'Zainab.SimpleContact', 'script', '1.0.5', 'Language added -- Portuguese (Brazil)', '2017-09-05 12:32:23'),
(495, 'Zainab.SimpleContact', 'comment', '1.0.5', 'Dashboard widget added', '2017-09-05 12:32:23'),
(496, 'Zainab.SimpleContact', 'comment', '1.0.6', 'grecaptcha reset bug fixed', '2017-09-05 12:32:23'),
(497, 'Zainab.SimpleContact', 'script', '1.1.0', 'minor bugs fixed', '2017-09-05 12:32:23'),
(498, 'Zainab.SimpleContact', 'comment', '1.1.0', 'sql_modes NO_ZERO_IN_DATE,NO_ZERO_DATE fixed', '2017-09-05 12:32:23'),
(499, 'Zainab.SimpleContact', 'script', '1.1.1', 'minor bug fixed', '2017-09-05 12:32:23'),
(500, 'Zainab.SimpleContact', 'comment', '1.1.1', 'Language added -- Russian', '2017-09-05 12:32:23'),
(501, 'Zainab.SimpleContact', 'script', '2.0.0', 'Languages Added (Arabic, Chinese)', '2017-09-05 12:32:23'),
(502, 'Zainab.SimpleContact', 'comment', '2.0.0', 'Translate Plugin Dependency Added (RainLab.Translate)', '2017-09-05 12:32:23'),
(503, 'Zainab.SimpleContact', 'script', '2.0.1', 'Notification Email Updated', '2017-09-05 12:32:23'),
(504, 'Zainab.SimpleContact', 'comment', '2.0.1', 'Migration Bug Fixed', '2017-09-05 12:32:23'),
(505, 'Zainab.SimpleContact', 'comment', '2.0.2', 'Languages Added (Czech, Turkish)', '2017-09-05 12:32:23'),
(506, 'Zainab.SimpleContact', 'comment', '2.0.3', 'Language Added (French), fixed punctuation', '2017-09-05 12:32:23');

-- --------------------------------------------------------

--
-- Structure de la table `system_plugin_versions`
--

CREATE TABLE `system_plugin_versions` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `is_disabled` tinyint(1) NOT NULL DEFAULT '0',
  `is_frozen` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `system_plugin_versions`
--

INSERT INTO `system_plugin_versions` (`id`, `code`, `version`, `created_at`, `is_disabled`, `is_frozen`) VALUES
(2, 'RainLab.User', '1.3.4', '2017-01-17 15:05:25', 0, 0),
(3, 'RainLab.Blog', '1.2.18', '2017-04-16 16:36:20', 0, 0),
(4, 'RainLab.Pages', '1.2.17', '2017-06-11 15:02:44', 0, 0),
(5, 'October.Demo', '1.0.1', '2016-05-16 09:06:51', 0, 0),
(6, 'RainLab.Forum', '1.1.1', '2016-09-24 20:50:55', 0, 0),
(7, 'BnB.ScaffoldTranslation', '1.1.2', '2016-09-24 20:50:54', 0, 0),
(8, 'GrCOTE7.Demo', '1.0.1', '2016-05-16 15:48:39', 0, 0),
(9, 'Hambern.Html5media', '1.0.1', '2016-05-19 12:51:14', 0, 0),
(10, 'Bluhex.YouTube', '1.0.8', '2016-05-19 13:51:07', 0, 0),
(11, 'Bedard.Debugbar', '1.0.8', '2017-06-30 16:45:16', 0, 0),
(12, 'Indikator.Backend', '1.6.3', '2017-04-16 16:36:20', 0, 0),
(13, 'Mohsin.Txt', '1.1.2', '2017-01-17 15:05:25', 0, 0),
(14, 'RainLab.Translate', '1.3.0', '2017-07-24 04:10:55', 0, 0),
(15, 'AnandPatel.WysiwygEditors', '1.2.8', '2017-06-25 15:50:07', 0, 0),
(16, 'manogi.Mediathumb', '0.4.4', '2017-06-11 23:13:33', 0, 0),
(17, 'GrCOTE7.Dpt', '1.0.1', '2017-06-30 16:45:16', 0, 0),
(18, 'RainLab.Builder', '1.0.21', '2017-07-03 10:17:27', 0, 0),
(19, 'Grcote7.Dptdb', '1.0.3', '2017-07-03 10:37:01', 0, 0),
(20, 'Grcote7.Library', '1.0.2', '2017-07-05 11:23:38', 0, 0),
(21, 'Grcote7.Dptlist', '1.0.3', '2017-07-05 11:21:26', 0, 0),
(22, 'RainLab.Location', '1.0.7', '2017-07-24 04:03:17', 0, 0),
(23, 'Grcote7.Forumnotifier', '1.0.1', '2017-07-24 04:03:17', 0, 0),
(24, 'DevINX.ContactUs', '1.0.2', '2017-09-05 12:32:19', 0, 0),
(25, 'Martin.Forms', '1.4.2', '2017-09-05 12:32:21', 0, 0),
(26, 'Renatio.DynamicPDF', '2.1.6', '2017-09-05 12:32:22', 0, 0),
(27, 'Zainab.SimpleContact', '2.0.3', '2017-09-05 12:32:23', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `system_request_logs`
--

CREATE TABLE `system_request_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `status_code` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `referer` text COLLATE utf8_unicode_ci,
  `count` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `system_revisions`
--

CREATE TABLE `system_revisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cast` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `old_value` text COLLATE utf8_unicode_ci,
  `new_value` text COLLATE utf8_unicode_ci,
  `revisionable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `item` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `system_settings`
--

INSERT INTO `system_settings` (`id`, `item`, `value`) VALUES
(1, 'bnb_scaffoldtranslation_settings', '{\"default_mode\":\"1\"}'),
(2, 'bluhex_ytvideos_settings', '{\"api_key\":\"AIzaSyD8_1HchUgpPR7JG2ZP4Gu0Uwt0G-Olyjc\",\"cache_time\":\"60\"}'),
(4, 'system_mail_settings', '{\"send_mode\":\"mail\",\"sender_name\":\"P100\",\"sender_email\":\"No-Reply@asseco.fr\",\"sendmail_path\":\"\\/usr\\/sbin\\/sendmail -bs\",\"smtp_address\":\"smtp.mailgun.org\",\"smtp_port\":\"587\",\"smtp_user\":\"\",\"smtp_password\":\"\",\"smtp_authorization\":\"0\",\"smtp_encryption\":\"tls\",\"mailgun_domain\":\"\",\"mailgun_secret\":\"\",\"mandrill_secret\":\"\"}'),
(5, 'mohsin_txt_settings', '{\"human_fields\":[{\"human_field\":\"Team\"},{\"human_field\":\"Site\"},{\"human_field\":\"Thanks\"},{\"human_field\":\"Technology\"}]}'),
(6, 'anandpatel_wysiwygeditors_settings', '{\"editor\":\"tinymce\",\"editor_width\":\"\",\"editor_height\":\"\",\"toolbar_tinymce\":\"undo redo | bold italic underline | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image media ocmediamanager\",\"toolbar_ckeditor\":\"[\'Undo\', \'Redo\'], [\'Cut\', \'Copy\', \'Paste\', \'PasteText\', \'PasteFromWord\'], [\'Format\', \'FontSize\'], [\'ShowBlocks\', \'SelectAll\', \'RemoveFormat\'], [\'Source\'], [\'Maximize\'], \'\\/\', [\'Bold\', \'Italic\', \'Underline\', \'Strike\'], [\'JustifyLeft\', \'JustifyCenter\', \'JustifyRight\', \'JustifyBlock\'], [\'BulletedList\', \'NumberedList\', \'Outdent\', \'Indent\'], [\'TextColor\', \'BGColor\'], [\'Link\', \'Unlink\', \'Anchor\'], [\'Image\', \'Table\', \'oembed\', \'SpecialChar\', \'OcMediaManager\']\",\"toolbar_froala_lg\":\"\'undo\', \'redo\', \'clearFormatting\', \'html\', \'|\', \'bold\', \'italic\', \'underline\', \'strikeThrough\', \'|\', \'paragraphFormat\', \'align\', \'fontSize\', \'color\', \'|\', \'formatUL\', \'formatOL\', \'outdent\', \'indent\', \'|\', \'insertLink\', \'insertImage\', \'insertVideo\', \'insertTable\', \'|\', \'fullscreen\'\",\"toolbar_froala_md\":\"\'undo\', \'clearFormatting\', \'html\', \'|\', \'bold\', \'italic\', \'underline\', \'|\', \'paragraphFormat\', \'align\', \'fontSize\', \'color\', \'|\', \'formatUL\', \'formatOL\', \'outdent\', \'indent\', \'|\', \'insertLink\', \'insertImage\', \'insertVideo\', \'insertTable\', \'|\', \'fullscreen\'\",\"toolbar_froala_sm\":\"\'undo\', \'html\', \'|\', \'bold\', \'italic\', \'underline\', \'|\', \'paragraphFormat\', \'align\', \'fontSize\', \'color\', \'|\', \'formatUL\', \'formatOL\', \'outdent\', \'indent\', \'|\', \'insertLink\', \'insertImage\', \'insertTable\', \'|\', \'fullscreen\'\",\"toolbar_froala_xs\":\"\'undo\', \'html\', \'|\', \'bold\', \'italic\', \'|\', \'paragraphFormat\', \'align\', \'|\', \'formatUL\', \'formatOL\', \'outdent\', \'indent\', \'|\', \'insertLink\', \'insertImage\'\",\"cms_page_as_wysiwyg\":\"0\",\"cms_content_as_wysiwyg\":\"0\",\"cms_partial_as_wysiwyg\":\"0\",\"cms_layout_as_wysiwyg\":\"0\",\"others_as_wysiwyg\":\"0\",\"static_page_as_wysiwyg\":\"0\",\"blog_as_wysiwyg\":\"0\"}'),
(7, 'rainlab_builder_settings', '{\"author_name\":\"GrCOTE7\",\"author_namespace\":\"Grcote7\"}');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `activation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persist_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `is_activated` tinyint(1) NOT NULL DEFAULT '0',
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `last_seen` timestamp NULL DEFAULT NULL,
  `is_guest` tinyint(1) NOT NULL DEFAULT '0',
  `is_superuser` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users_groups`
--

CREATE TABLE `users_groups` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `user_groups`
--

INSERT INTO `user_groups` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Sample group', 'sample', 'Sample group for website users.', '2016-05-14 08:01:27', '2016-05-14 08:01:27');

-- --------------------------------------------------------

--
-- Structure de la table `user_throttle`
--

CREATE TABLE `user_throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `is_suspended` tinyint(1) NOT NULL DEFAULT '0',
  `suspended_at` timestamp NULL DEFAULT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT '0',
  `banned_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `zainab_simplecontact_contact`
--

CREATE TABLE `zainab_simplecontact_contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `is_new` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_replied` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
-- Index pour la table `departement`
--
ALTER TABLE `departement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departement_slug` (`slug`),
  ADD KEY `departement_code` (`code`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
-- Index pour la table `indikator_backend_trash`
--
ALTER TABLE `indikator_backend_trash`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`);

--
-- Index pour la table `martin_forms_records`
--
ALTER TABLE `martin_forms_records`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `mohsin_txt_agents`
--
ALTER TABLE `mohsin_txt_agents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mohsin_txt_agents_name_unique` (`name`);

--
-- Index pour la table `mohsin_txt_directives`
--
ALTER TABLE `mohsin_txt_directives`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `mohsin_txt_humans`
--
ALTER TABLE `mohsin_txt_humans`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `mohsin_txt_information`
--
ALTER TABLE `mohsin_txt_information`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `mohsin_txt_robots`
--
ALTER TABLE `mohsin_txt_robots`
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
-- Index pour la table `rainlab_location_countries`
--
ALTER TABLE `rainlab_location_countries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_location_countries_name_index` (`name`);

--
-- Index pour la table `rainlab_location_states`
--
ALTER TABLE `rainlab_location_states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_location_states_country_id_index` (`country_id`),
  ADD KEY `rainlab_location_states_name_index` (`name`);

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
-- Index pour la table `renatio_dynamicpdf_pdf_layouts`
--
ALTER TABLE `renatio_dynamicpdf_pdf_layouts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `renatio_dynamicpdf_pdf_layouts_code_unique` (`code`);

--
-- Index pour la table `renatio_dynamicpdf_pdf_templates`
--
ALTER TABLE `renatio_dynamicpdf_pdf_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `renatio_dynamicpdf_pdf_templates_code_unique` (`code`),
  ADD KEY `renatio_dynamicpdf_pdf_templates_layout_id_index` (`layout_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `backend_users`
--
ALTER TABLE `backend_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `backend_user_groups`
--
ALTER TABLE `backend_user_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `backend_user_preferences`
--
ALTER TABLE `backend_user_preferences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `backend_user_roles`
--
ALTER TABLE `backend_user_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `backend_user_throttle`
--
ALTER TABLE `backend_user_throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `cms_theme_data`
--
ALTER TABLE `cms_theme_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `cms_theme_logs`
--
ALTER TABLE `cms_theme_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `deferred_bindings`
--
ALTER TABLE `deferred_bindings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `departement`
--
ALTER TABLE `departement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `grcote7_dptlist_dpts`
--
ALTER TABLE `grcote7_dptlist_dpts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT pour la table `grcote7_library_books`
--
ALTER TABLE `grcote7_library_books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `indikator_backend_trash`
--
ALTER TABLE `indikator_backend_trash`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `martin_forms_records`
--
ALTER TABLE `martin_forms_records`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `mohsin_txt_agents`
--
ALTER TABLE `mohsin_txt_agents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `mohsin_txt_directives`
--
ALTER TABLE `mohsin_txt_directives`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `mohsin_txt_humans`
--
ALTER TABLE `mohsin_txt_humans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `mohsin_txt_information`
--
ALTER TABLE `mohsin_txt_information`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `mohsin_txt_robots`
--
ALTER TABLE `mohsin_txt_robots`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `rainlab_blog_categories`
--
ALTER TABLE `rainlab_blog_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `rainlab_blog_posts`
--
ALTER TABLE `rainlab_blog_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT pour la table `rainlab_location_countries`
--
ALTER TABLE `rainlab_location_countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT pour la table `rainlab_location_states`
--
ALTER TABLE `rainlab_location_states`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=428;

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
-- AUTO_INCREMENT pour la table `renatio_dynamicpdf_pdf_layouts`
--
ALTER TABLE `renatio_dynamicpdf_pdf_layouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `renatio_dynamicpdf_pdf_templates`
--
ALTER TABLE `renatio_dynamicpdf_pdf_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `system_event_logs`
--
ALTER TABLE `system_event_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `system_files`
--
ALTER TABLE `system_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `system_plugin_history`
--
ALTER TABLE `system_plugin_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=507;

--
-- AUTO_INCREMENT pour la table `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `system_request_logs`
--
ALTER TABLE `system_request_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `system_revisions`
--
ALTER TABLE `system_revisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `user_throttle`
--
ALTER TABLE `user_throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `zainab_simplecontact_contact`
--
ALTER TABLE `zainab_simplecontact_contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
