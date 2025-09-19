-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 15 sep. 2025 à 11:02
-- Version du serveur : 9.1.0
-- Version de PHP : 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `supercar`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id_admin` int NOT NULL AUTO_INCREMENT,
  `nom_admin` varchar(50) NOT NULL,
  `prenom_admin` varchar(50) NOT NULL,
  `email_admin` varchar(50) NOT NULL,
  `password_admin` varchar(255) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id_admin`, `nom_admin`, `prenom_admin`, `email_admin`, `password_admin`) VALUES
(2, 'Patrice', 'Patrick', 'admin-supercar@gmail.com', 'supercar12');

-- --------------------------------------------------------

--
-- Structure de la table `carousel`
--

DROP TABLE IF EXISTS `carousel`;
CREATE TABLE IF NOT EXISTS `carousel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `image` blob NOT NULL,
  `background_image` varchar(255) NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `carousel`
--

INSERT INTO `carousel` (`id`, `title`, `subtitle`, `image`, `background_image`, `status`, `created_at`) VALUES
(1, 'Bienvenue chez Supercar', 'Des voitures de luxe pour tous', 0x696d672f6361726f7573656c2d312e706e67, 'img/carousel-bg-1.jpg', 1, '2025-03-23 09:53:05'),
(2, 'Découvrez nos modèles', 'Mercedes, Porsche et Audi', 0x696d672f6361726f7573656c2d706f72736368652e706e67, 'img/carousel-bg-2.jpg', 1, '2025-03-23 09:53:05'),
(3, 'Performance et Luxe', 'Conduisez l\'excellence', 0x696d672f6361726f7573656c2d617564692e706e67, 'img/carousel-bg-3.jpg', 1, '2025-03-23 09:53:05');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id_client` int NOT NULL AUTO_INCREMENT,
  `nom_client` varchar(50) NOT NULL,
  `prenom_client` varchar(50) NOT NULL,
  `email_client` varchar(50) NOT NULL,
  `telephone_client` varchar(50) NOT NULL,
  `adresse_client` varchar(50) NOT NULL,
  `password_client` varchar(255) NOT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id_client`, `nom_client`, `prenom_client`, `email_client`, `telephone_client`, `adresse_client`, `password_client`) VALUES
(12, 'Meyepa', 'Dimitri', 'dimitri.meyepa1@gmail.com', '0609278689', 'Curepipe', '$2y$10$84wKo4ytVhGWtoQzwsPI2uSiOANUlY1w.c3vJ0u7XbLMsGgOv6AGm'),
(19, 'Sookur', 'Yeshnav', 'yeshnav@gmail.com', '54553454', 'Ebene', '$2y$10$WzZ23mIHlRDZWtheU6UscOP1pvmjz2gEy5Gb9SbSW6pxV0fjY6BDu'),
(20, 'Stephan', 'Didier', 'didier@gmail.com', '51234567', 'Flacq', '$2y$10$wsGwsbFRsd2eft4i9r40EuxlFcybRQGHw8jQPKgCCvMdCczBa9vEe'),
(21, 'Pierre', 'Paul', 'paul@gmail.com', '50987652', 'Port-Louis', '$2y$10$dmbkCCLBNVNmyN9SMjCU7.XbAM0JrgQo.AiI1s9lA8rvVaXL0eUbu'),
(22, 'Jean-Pierre', 'Didier', 'DidierJP@gmail.com', '56425212', 'Flacq', '$2y$10$kcrfducoAS6ipBrJgsduqexiCYJ.qpmcPo.r3z6Eqt706vt88rKLm'),
(23, 'Shum Yune', 'Carmen', 'carmens@gmail.com', '58232213', 'Quatre Bornes', '$2y$10$zMFN7F5e2ITOqhmlwoU3R.4jpT94gQaibQ.SR5qBcClFeu4NPJ1B2'),
(24, 'Sookur', 'Yeshnav', 'yeshnav2434@gmail.com', '2434343', 'Port-Louis', '$2y$10$IU2zku7dvccwFcWDOXNoqOT2oW7yi2c4uQ2XiIoSYdsDHAZd8I/2q');

-- --------------------------------------------------------

--
-- Structure de la table `contact_info`
--

DROP TABLE IF EXISTS `contact_info`;
CREATE TABLE IF NOT EXISTS `contact_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL,
  `icon_class` varchar(100) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `contact_info`
--

INSERT INTO `contact_info` (`id`, `type`, `icon_class`, `value`) VALUES
(1, 'Adresse', 'fa fa-map-marker-alt text-primary me-2', 'Centre Commercial, Ebene'),
(2, 'Email', 'fa fa-envelope-open text-primary me-2', 'info.supercar.com@gmail.com'),
(3, 'Telephone', 'fas fa-phone-alt text-primary me-2', '+230 5536-0799'),
(4, 'Heure', 'far fa-clock text-primary me-2', 'Lun - Ven : 09h00 - 21h00');

-- --------------------------------------------------------

--
-- Structure de la table `contact_messages`
--

DROP TABLE IF EXISTS `contact_messages`;
CREATE TABLE IF NOT EXISTS `contact_messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `message` text NOT NULL,
  `date_envoi` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `nom`, `email`, `telephone`, `message`, `date_envoi`) VALUES
(1, 'Alice Dupont', 'alice.dupont@email.com', '0123456789', 'Bonjour, j’aimerais en savoir plus sur vos services.', '2025-03-17 10:29:20'),
(2, 'Jean Martin', 'jean.martin@email.com', NULL, 'Je rencontre un problème avec mon compte, pouvez-vous m’aider ?', '2025-03-17 10:29:20'),
(3, 'Sophie Bernard', 'sophie.bernard@email.com', '0987654321', 'J’aimerais prendre rendez-vous avec un conseiller.', '2025-03-17 10:29:20'),
(4, 'Lucas Petit', 'lucas.petit@email.com', '0678123456', 'Votre site web est très intéressant, bravo à l’équipe !', '2025-03-17 10:29:20'),
(5, 'Emma Leroy', 'emma.leroy@email.com', NULL, 'Est-il possible d’avoir une démonstration de votre produit ?', '2025-03-17 10:29:20'),
(6, 'Paul Robert', 'paul.robert@email.com', '0754321890', 'Je voudrais connaître vos tarifs pour un abonnement premium.', '2025-03-17 10:29:20'),
(7, 'Marie Lambert', 'marie.lambert@email.com', NULL, 'J’ai oublié mon mot de passe, comment puis-je le réinitialiser ?', '2025-03-17 10:29:20'),
(8, 'Antoine Girard', 'antoine.girard@email.com', '0612345678', 'Je souhaite postuler à une offre d’emploi chez vous.', '2025-03-17 10:29:20'),
(9, 'Julie Moreau', 'julie.moreau@email.com', '0498765432', 'Pouvez-vous me rappeler demain matin pour discuter d’un partenariat ?', '2025-03-17 10:29:20'),
(10, 'Thomas Durand', 'thomas.durand@email.com', NULL, 'Merci pour votre assistance rapide, service client au top !', '2025-03-17 10:29:20'),
(11, 'Jean', 'Jean@gmail.com', '53432422', 'Test', '2025-03-27 06:59:17'),
(12, 'Dimitri Meyepa', 'dimitri.meyepa1@gmail.com', '0609278689', 'sdsdd', '2025-03-27 07:06:44'),
(14, 'Albert', 'Albert@gmail.com', '0609278689', 'fsdfdfdf', '2025-03-27 07:17:13'),
(15, 'Fred', 'Fred@gmail.com', '54553454', 'dsdd', '2025-03-27 07:17:59'),
(19, 'Damien', 'Damien@gmail.com', '423353', 'Bonjour', '2025-03-27 07:26:44'),
(20, 'Dimitri Meyepa', 'dimitri.meyepa1@gmail.com', '0609278689', 'Nous vous contactons pour ....\r\n', '2025-04-14 10:23:21'),
(21, 'Dimitri Meyepa', 'dimitri.meyepa1@gmail.com', '0609278689', 'Bonjour, nous vous contactons pour...', '2025-04-14 10:26:35'),
(31, 'Dimitri Meyepa', 'dimitri.meyepa1@gmail.com', '0609278689', 'bnojsoi', '2025-04-14 10:34:49'),
(32, 'Dimitri Meyepa', 'dimitri.meyepa1@gmail.com', '0609278689', 'Bonsoir', '2025-04-14 10:35:13'),
(33, 'Dimitri Meyepa', 'dimitri.meyepa1@gmail.com', '0609278689', 'sds', '2025-04-14 10:35:35'),
(34, 'Dimitri Meyepa', 'dimitri.meyepa1@gmail.com', '0609278689', 'Karen', '2025-04-14 10:37:10'),
(35, 'Dimitri Meyepa', 'dimitri.meyepa1@gmail.com', '0609278689', 'Karen', '2025-04-14 10:38:18'),
(36, 'Dimitri Meyepa', 'dimitri.meyepa1@gmail.com', '0609278689', 'Lolpl', '2025-04-14 10:51:42'),
(37, 'Dimitri Meyepa', 'dimitri.meyepa1@gmail.com', '0609278689', 'dsdsd', '2025-04-14 10:54:21'),
(38, 'Dimitri Meyepa', 'dimitri.meyepa1@gmail.com', '0609278689', 'test', '2025-05-08 04:37:57'),
(39, 'Dimitri Meyepa', 'dimitri.meyepa1@gmail.com', '0609278689', 'Bonjour\r\n', '2025-05-08 07:38:23');

-- --------------------------------------------------------

--
-- Structure de la table `essai`
--

DROP TABLE IF EXISTS `essai`;
CREATE TABLE IF NOT EXISTS `essai` (
  `id_essai` int NOT NULL AUTO_INCREMENT,
  `date_essai` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `statut` enum('en_cours','accepte','termine') NOT NULL DEFAULT 'en_cours',
  `car_name` varchar(100) NOT NULL,
  `id_client` int NOT NULL,
  PRIMARY KEY (`id_essai`),
  KEY `fk_essai_client` (`id_client`),
  KEY `fk_essai_voiture` (`car_name`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `essai`
--

INSERT INTO `essai` (`id_essai`, `date_essai`, `statut`, `car_name`, `id_client`) VALUES
(44, '2025-04-19 11:45:00', 'en_cours', 'Mercedes AMG GT63', 12),
(45, '2025-04-11 07:10:00', 'en_cours', 'Audi R8', 12),
(46, '2025-04-23 15:15:00', 'en_cours', 'Porsche Cayman 718', 12),
(47, '2025-04-24 08:00:00', 'en_cours', 'Audi A7', 12),
(48, '2025-04-30 10:05:00', 'en_cours', 'Mercedes-Benz GLE 2021', 14),
(49, '2025-04-29 08:00:00', 'en_cours', 'Mercedes AMG GT63', 12),
(50, '2025-04-30 11:00:00', 'en_cours', 'Mercedes-Benz GLE 2021', 12),
(51, '2025-04-22 10:10:00', 'en_cours', 'Porsche 911 Carrera 4S', 19),
(52, '2025-04-25 14:30:00', 'en_cours', 'Mercedes AMG GT63', 20),
(53, '2025-04-30 12:00:00', 'en_cours', 'Porsche Macan', 21),
(54, '2025-05-21 10:30:00', 'en_cours', 'Porsche Macan', 12),
(55, '2025-05-29 08:00:00', 'en_cours', 'Audi A6', 12),
(56, '2025-05-31 10:30:00', 'en_cours', 'Audi A7', 12),
(57, '2025-07-31 08:30:00', 'en_cours', 'Mercedes G-class', 23);

-- --------------------------------------------------------

--
-- Structure de la table `home_about`
--

DROP TABLE IF EXISTS `home_about`;
CREATE TABLE IF NOT EXISTS `home_about` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `experience_years` int NOT NULL,
  `experience_text` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `home_about`
--

INSERT INTO `home_about` (`id`, `title`, `subtitle`, `description`, `experience_years`, `experience_text`, `image`) VALUES
(1, 'Supercar', 'La Plateforme Ultime de Vente de Voitures', 'Supercar est votre destination idéale pour acheter et vendre des véhicules de haute qualité. Que vous recherchiez un modèle neuf ou une voiture d\'occasion en parfait état, nous offrons une expérience fluide et sécurisée pour les passionnés de voitures et les acheteurs.', 15, 'd\'Expérience', 'img/about.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `home_services`
--

DROP TABLE IF EXISTS `home_services`;
CREATE TABLE IF NOT EXISTS `home_services` (
  `id` int NOT NULL AUTO_INCREMENT,
  `icon` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `home_services`
--

INSERT INTO `home_services` (`id`, `icon`, `title`, `description`) VALUES
(1, 'fa fa-certificate', 'Service de Qualité', 'Nous nous engageons à offrir des services de qualité, en garantissant des prestations exceptionnelles et un souci constant de la satisfaction de nos clients.'),
(2, 'fa fa-certificate', 'Travailleurs Expert', 'Nos travailleurs experts, hautement qualifiés et expérimentés, assurent un service irréprochable grâce à leur savoir-faire et leur professionnalisme.'),
(3, 'fa fa-certificate', 'Équipement Moderne', 'Nous mettons à votre disposition un équipement moderne et de pointe, garantissant des performances optimales et une expérience inégalée.');

-- --------------------------------------------------------

--
-- Structure de la table `home_stat`
--

DROP TABLE IF EXISTS `home_stat`;
CREATE TABLE IF NOT EXISTS `home_stat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `icon` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `home_stat`
--

INSERT INTO `home_stat` (`id`, `icon`, `title`, `value`) VALUES
(1, 'fa-car', 'Voitures Vendues', 5000),
(2, 'fa-user-tie', 'Concessionnaires Certifiés', 150),
(3, 'fa-smile', 'Clients Satisfaits', 10000),
(4, 'fa-handshake', 'Transactions Réussies', 2000);

-- --------------------------------------------------------

--
-- Structure de la table `map_config`
--

DROP TABLE IF EXISTS `map_config`;
CREATE TABLE IF NOT EXISTS `map_config` (
  `id` int NOT NULL,
  `iframe_link` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `map_config`
--

INSERT INTO `map_config` (`id`, `iframe_link`) VALUES
(1, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7486.749343583571!2d57.48578984463426!3d-20.243290297215427!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x217c5b1fd6a23e81%3A0x2e347c7dad03d249!2sEbene%20Commercial%20Centre!5e0!3m2!1sfr!2smu!4v1744713651326!5m2!1sfr!2smu');

-- --------------------------------------------------------

--
-- Structure de la table `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `id` int NOT NULL,
  `service` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `icon` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `highlight` tinyint(1) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `services`
--

INSERT INTO `services` (`id`, `service`, `description`, `icon`, `image`, `highlight`, `title`) VALUES
(1, 'Test de Diagnostic', 'Notre test de diagnostic automobile permet d\'identifier rapidement les problèmes mécaniques ou électroniques de votre véhicule. Grâce à un équipement de pointe et à l\'expertise de nos techniciens, nous détectons les anomalies invisibles à l\'œil nu afin d’assurer une intervention ciblée, efficace et rapide. Faites confiance à notre savoir-faire pour garantir la fiabilité de votre voiture sur la route.', 'fa-car-side', 'img/1744110868_service-1.jpg', 0, 'Analyse Complète pour une Conduite en Toute Sécurité'),
(2, 'Révision Moteur', 'Notre service de révision moteur assure le bon fonctionnement et la longévité de votre véhicule. Nous effectuons un contrôle complet des composants essentiels : filtres, bougies, niveaux, courroies, et bien plus. Grâce à cette intervention préventive, vous réduisez les risques de pannes, optimisez les performances du moteur et prolongez sa durée de vie.', 'fa-car', 'img/service-2.jpg', 0, 'Optimisez les Performances de Votre Moteur'),
(3, 'Remplacement de Pneus', 'Le remplacement de pneus est essentiel pour garantir une conduite sûre, surtout en cas d’usure ou de conditions climatiques changeantes. Nous vous conseillons sur le choix des pneus adaptés à votre véhicule et assurons une installation précise. Grâce à nos équipements modernes, bénéficiez d’une meilleure adhérence, d’une consommation de carburant optimisée et d’un confort de conduite amélioré.', 'fa-cog', 'img/service-3.jpg', 1, 'Adhérence Maximale, Sécurité Totale'),
(4, 'Changement d\'Huiles', 'Nous utilisons des huiles de haute qualité pour garantir une lubrification parfaite de votre moteur. Un changement d’huile régulier permet de réduire l’usure des pièces, d’améliorer les performances du véhicule et de prolonger sa durée de vie. Confiez cette opération essentielle à nos professionnels pour rouler en toute sérénité.', 'fa-car-side', 'img/1744109594_service-4.jpeg', 0, 'Protégez Votre Moteur avec une Lubrification Optimale');

-- --------------------------------------------------------

--
-- Structure de la table `voitures`
--

DROP TABLE IF EXISTS `voitures`;
CREATE TABLE IF NOT EXISTS `voitures` (
  `id` int NOT NULL,
  `car_name` varchar(255) NOT NULL,
  `car_ref` varchar(100) NOT NULL,
  `car_image` varchar(255) NOT NULL,
  `car_status` varchar(50) NOT NULL,
  `car_transmission` varchar(50) NOT NULL,
  `fuel_type` varchar(50) NOT NULL,
  `engine_capacity` decimal(5,2) NOT NULL,
  `year` int NOT NULL,
  `car_km` int NOT NULL,
  `car_price` decimal(10,2) NOT NULL,
  UNIQUE KEY `unique_car_name` (`car_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `voitures`
--

INSERT INTO `voitures` (`id`, `car_name`, `car_ref`, `car_image`, `car_status`, `car_transmission`, `fuel_type`, `engine_capacity`, `year`, `car_km`, `car_price`) VALUES
(10, 'Audi A6', 'A6-947', 'assets/list/A6.png', 'Vendu', 'Automatique', 'Essence', 1.10, 2016, 132000, 990000.00),
(11, 'Audi A7', 'A7-767', 'assets/list/A7.png', 'Disponible', 'Automatique', 'Essence', 1.90, 2017, 45000, 1085000.00),
(18, 'Audi Q7', 'Q7-973', 'assets/list/Q7.png', 'Disponible', 'Automatique', 'Essence', 3.10, 2018, 84000, 2680000.00),
(19, 'Audi Q8', 'Q8-891', 'assets/list/Q8.png', 'Disponible', 'Automatique', 'Hybride', 2.90, 2021, 27173, 5500000.00),
(20, 'Audi R8', 'R8-617', 'assets/list/R8.png', 'Disponible', 'Automatique', 'Essence', 2.10, 2022, 85452, 3500000.00),
(21, 'Audi RS6', 'RS6-775', 'assets/list/RS6.png', 'Vendu', 'Automatique', 'Essence', 2.10, 2015, 55473, 5400000.00),
(22, 'Mercedes AMG GT63', 'AMG-410', 'assets/list/amg-gt63.png', 'Disponible', 'Automatique', 'Essence', 3.10, 2023, 71805, 10300000.00),
(14, 'Mercedes C-Class', 'MER-686', 'assets/list/Mercedes-Benz_C-Class_2018.png', 'Disponible', 'Automatique', 'Essence', 2.00, 2020, 79139, 3420000.00),
(25, 'Mercedes C-Class Cabriolet', 'MER-172', 'assets/list/mercedes_cabriolet.png', 'Disponible', 'Automatique', 'Essence', 1.20, 2019, 85256, 4000000.00),
(13, 'Mercedes G-class', 'G-C-135', 'assets/list/G-class.png', 'Disponible', 'Automatique', 'Essence', 1.90, 2019, 119683, 10250000.00),
(7, 'Mercedes GLE 2021', '202-596', 'assets/list/2021-Mercedes-Benz-GLE-hero.png', 'Disponible', 'Automatique', 'Essence', 1.80, 2023, 113896, 3500000.00),
(15, 'Mercedes S63 AMG ', 'MER-951', 'assets/list/Mercedes_Benz_S63_AMG_White.png', 'Disponible', 'Automatique', 'Essence', 2.00, 2021, 63497, 2120000.00),
(9, 'Porsche 911 Carrera 4S', '911-348', 'assets/list/911_Carrera_4S.png', 'Disponible', 'Automatique', 'Essence', 3.50, 2016, 109531, 4100000.00),
(16, 'Porsche Cayenne Turbo', 'POR-794', 'assets/list/Porsche_Cayenne_Turbo.png', 'Disponible', 'Automatique', 'Hybride', 2.70, 2020, 107065, 9200000.00),
(8, 'Porsche Cayman 718', '718-887', 'assets/list/718_Cayman_Porsche.png', 'Disponible', 'Automatique', 'Essence', 3.80, 2019, 103769, 5600000.00),
(27, 'Porsche GT3', 'POR-732', 'assets/list/porsche-gt3.png', 'Disponible', 'Automatique', 'Essence', 2.80, 2023, 32944, 18000000.00),
(24, 'Porsche Macan', 'MAC-116', 'assets/list/macan.png', 'Disponible', 'Automatique', 'Essence', 3.40, 2020, 91771, 5700000.00),
(26, 'Porsche Panamera', 'PAN-449', 'assets/list/panamera.png', 'Disponible', 'Automatique', 'Essence', 1.20, 2020, 73451, 9300000.00);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
