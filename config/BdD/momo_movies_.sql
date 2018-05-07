-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  jeu. 26 avr. 2018 à 03:16
-- Version du serveur :  10.1.31-MariaDB
-- Version de PHP :  7.2.4

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
-- Structure de la table `momo_movies_`
--

CREATE TABLE `momo_movies_` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `momo_movies_`
--

INSERT INTO `momo_movies_` (`id`, `name`, `description`, `year`) VALUES
(1, 'Inception Momo', '<p>Sed vehicula ex eget enim euismod, vitae laoreet magna convallis. Vestibulum fermentum ut massa id auctor. Vivamus est velit, porttitor sed dui vel, fermentum viverra ex. Morbi dapibus tincidunt porta. Donec lectus dolor, pellentesque at blandit a, porttitor ut ex. Aenean non po</p>', 2011),
(2, 'Fight club Momo', '<p>orem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus auctor ullamcorper nunc eget auctor. Nulla metus nisi, ultrices ac tellus vel, volutpat cursus nulla. Donec rutrum malesuada nibh non posuere. Pellentesque ultricies, turpis sed auctor pharetra, nulla erat euismod eros, id porttitor mauris i</p>', 1999),
(3, 'American beauty Momo', '<p>eget lobortis sem nibh euismod nisi. Sed vehicula ex eget enim euismod, vitae laoreet magna convallis. Vestibulum fermentum ut massa id auctor. Vivamus est velit, porttitor sed dui vel, fermentum viverra ex. Morbi dapibus tincidunt porta. Donec lectus dolor, pellentesque at blandit a, porttitor ut ex.</p>', 2001);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `momo_movies_`
--
ALTER TABLE `momo_movies_`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `momo_movies_`
--
ALTER TABLE `momo_movies_`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
