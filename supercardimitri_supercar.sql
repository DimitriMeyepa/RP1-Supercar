-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: mysql-supercardimitri.alwaysdata.net
-- Generation Time: Nov 04, 2025 at 11:56 AM
-- Server version: 10.11.14-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `supercardimitri_supercar`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nom_admin` varchar(50) NOT NULL,
  `prenom_admin` varchar(50) NOT NULL,
  `email_admin` varchar(50) NOT NULL,
  `password_admin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nom_admin`, `prenom_admin`, `email_admin`, `password_admin`) VALUES
(2, 'Patrice', 'Patrick', 'admin-supercar@gmail.com', 'supercar12');

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `image` blob NOT NULL,
  `background_image` varchar(255) NOT NULL,
  `status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`id`, `title`, `subtitle`, `image`, `background_image`, `status`, `created_at`) VALUES
(1, 'Bienvenue chez Supercar', 'Des voitures de luxe pour tous', 0x696d672f6361726f7573656c2d312e706e67, 'img/carousel-bg-1.jpg', 1, '2025-03-23 09:53:05'),
(2, 'Découvrez nos modèles', 'Mercedes, Porsche et Audi', 0x696d672f6361726f7573656c2d706f72736368652e706e67, 'img/carousel-bg-2.jpg', 1, '2025-03-23 09:53:05'),
(3, 'Performance et Luxe', 'Conduisez l\'excellence', 0x696d672f6361726f7573656c2d617564692e706e67, 'img/carousel-bg-3.jpg', 1, '2025-03-23 09:53:05');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id_client` int(11) NOT NULL,
  `nom_client` varchar(50) NOT NULL,
  `prenom_client` varchar(50) NOT NULL,
  `email_client` varchar(50) NOT NULL,
  `telephone_client` varchar(50) NOT NULL,
  `adresse_client` varchar(50) NOT NULL,
  `password_client` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id_client`, `nom_client`, `prenom_client`, `email_client`, `telephone_client`, `adresse_client`, `password_client`) VALUES
(12, 'Meyepa', 'Dimitri', 'dimitri.meyepa1@gmail.com', '0609278689', 'Curepipe', '$2y$10$84wKo4ytVhGWtoQzwsPI2uSiOANUlY1w.c3vJ0u7XbLMsGgOv6AGm'),
(19, 'Sookur', 'Yeshnav', 'yeshnav@gmail.com', '54553454', 'Ebene', '$2y$10$WzZ23mIHlRDZWtheU6UscOP1pvmjz2gEy5Gb9SbSW6pxV0fjY6BDu'),
(20, 'Stephan', 'Didier', 'didier@gmail.com', '51234567', 'Flacq', '$2y$10$wsGwsbFRsd2eft4i9r40EuxlFcybRQGHw8jQPKgCCvMdCczBa9vEe'),
(21, 'Pierre', 'Paul', 'paul@gmail.com', '50987652', 'Port-Louis', '$2y$10$dmbkCCLBNVNmyN9SMjCU7.XbAM0JrgQo.AiI1s9lA8rvVaXL0eUbu'),
(22, 'Jean-Pierre', 'Didier', 'DidierJP@gmail.com', '56425212', 'Flacq', '$2y$10$kcrfducoAS6ipBrJgsduqexiCYJ.qpmcPo.r3z6Eqt706vt88rKLm'),
(23, 'Shum Yune', 'Carmen', 'carmens@gmail.com', '58232213', 'Quatre Bornes', '$2y$10$zMFN7F5e2ITOqhmlwoU3R.4jpT94gQaibQ.SR5qBcClFeu4NPJ1B2'),
(24, 'Sookur', 'Yeshnav', 'yeshnav2434@gmail.com', '2434343', 'Port-Louis', '$2y$10$IU2zku7dvccwFcWDOXNoqOT2oW7yi2c4uQ2XiIoSYdsDHAZd8I/2q'),
(25, 'Dupont', 'Martin', 'martindupont@gmail.com', '55021340', 'Port-Louis', '$2y$10$gEEj8O6uyKnZBmm6iVaWk.oYEuJmkkd/Qf4XjkBVXtQUZ6nY/QlyK');

-- --------------------------------------------------------

--
-- Table structure for table `contact_info`
--

CREATE TABLE `contact_info` (
  `id` int(11) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `icon_class` varchar(100) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_info`
--

INSERT INTO `contact_info` (`id`, `type`, `icon_class`, `value`) VALUES
(1, 'Adresse', 'fa fa-map-marker-alt text-primary me-2', 'Ebene'),
(2, 'Email', 'fa fa-envelope-open text-primary me-2', 'info.supercar.com@gmail.com'),
(3, 'Telephone', 'fas fa-phone-alt text-primary me-2', '+230 5536-0799'),
(4, 'Heure', 'far fa-clock text-primary me-2', 'Lun - Ven : 09h00 - 21h00');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `message` text NOT NULL,
  `date_envoi` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_messages`
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
-- Table structure for table `essai`
--

CREATE TABLE `essai` (
  `id_essai` int(11) NOT NULL,
  `date_essai` timestamp NOT NULL DEFAULT current_timestamp(),
  `statut` enum('en_cours','accepte','termine','refuse') NOT NULL DEFAULT 'en_cours',
  `car_name` varchar(100) NOT NULL,
  `id_client` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `essai`
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
(56, '2025-05-31 10:30:00', 'refuse', 'Audi A7', 12),
(57, '2025-07-31 08:30:00', 'termine', 'Mercedes G-class', 23),
(58, '2025-10-30 08:00:00', 'accepte', 'Audi A6', 12);

-- --------------------------------------------------------

--
-- Table structure for table `home_about`
--

CREATE TABLE `home_about` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `experience_years` int(11) NOT NULL,
  `experience_text` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_about`
--

INSERT INTO `home_about` (`id`, `title`, `subtitle`, `description`, `experience_years`, `experience_text`, `image`) VALUES
(1, 'Supercar', 'La Plateforme Ultime de Vente de Voitures', 'Supercar est votre destination idéale pour acheter et vendre des véhicules de haute qualité. Que vous recherchiez un modèle neuf ou une voiture d\'occasion en parfait état, nous offrons une expérience fluide et sécurisée pour les passionnés de voitures et les acheteurs.', 15, 'd\'Expérience', 'img/about.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `home_services`
--

CREATE TABLE `home_services` (
  `id` int(11) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_services`
--

INSERT INTO `home_services` (`id`, `icon`, `title`, `description`) VALUES
(1, 'fa fa-certificate', 'Service de Qualité', 'Nous nous engageons à offrir des services de qualité, en garantissant des prestations exceptionnelles et un souci constant de la satisfaction de nos clients.'),
(2, 'fa fa-certificate', 'Travailleurs Expert', 'Nos travailleurs experts, hautement qualifiés et expérimentés, assurent un service irréprochable grâce à leur savoir-faire et leur professionnalisme.'),
(3, 'fa fa-certificate', 'Équipement Moderne', 'Nous mettons à votre disposition un équipement moderne et de pointe, garantissant des performances optimales et une expérience inégalée.');

-- --------------------------------------------------------

--
-- Table structure for table `home_stat`
--

CREATE TABLE `home_stat` (
  `id` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_stat`
--

INSERT INTO `home_stat` (`id`, `icon`, `title`, `value`) VALUES
(1, 'fa-car', 'Voitures Vendues', 5000),
(2, 'fa-user-tie', 'Concessionnaires Certifiés', 150),
(3, 'fa-smile', 'Clients Satisfaits', 10000),
(4, 'fa-handshake', 'Transactions Réussies', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `map_config`
--

CREATE TABLE `map_config` (
  `id` int(11) NOT NULL,
  `iframe_link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `map_config`
--

INSERT INTO `map_config` (`id`, `iframe_link`) VALUES
(1, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7486.749343583571!2d57.48578984463426!3d-20.243290297215427!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x217c5b1fd6a23e81%3A0x2e347c7dad03d249!2sEbene%20Commercial%20Centre!5e0!3m2!1sfr!2smu!4v1744713651326!5m2!1sfr!2smu');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `service` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `icon` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `highlight` tinyint(1) DEFAULT 0,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service`, `description`, `icon`, `image`, `highlight`, `title`) VALUES
(1, 'Test de Diagnostic', 'Notre test de diagnostic automobile permet d\'identifier rapidement les problèmes mécaniques ou électroniques de votre véhicule. Grâce à un équipement de pointe et à l\'expertise de nos techniciens, nous détectons les anomalies invisibles à l\'œil nu afin d’assurer une intervention ciblée, efficace et rapide. Faites confiance à notre savoir-faire pour garantir la fiabilité de votre voiture sur la route.', 'fa-car-side', 'img/1744110868_service-1.jpg', 0, 'Analyse Complète pour une Conduite en Toute Sécurité'),
(2, 'Révision Moteur', 'Notre service de révision moteur assure le bon fonctionnement et la longévité de votre véhicule. Nous effectuons un contrôle complet des composants essentiels : filtres, bougies, niveaux, courroies, et bien plus. Grâce à cette intervention préventive, vous réduisez les risques de pannes, optimisez les performances du moteur et prolongez sa durée de vie.', 'fa-car', 'img/service-2.jpg', 0, 'Optimisez les Performances de Votre Moteur'),
(3, 'Remplacement de Pneus', 'Le remplacement de pneus est essentiel pour garantir une conduite sûre, surtout en cas d’usure ou de conditions climatiques changeantes. Nous vous conseillons sur le choix des pneus adaptés à votre véhicule et assurons une installation précise. Grâce à nos équipements modernes, bénéficiez d’une meilleure adhérence, d’une consommation de carburant optimisée et d’un confort de conduite amélioré.', 'fa-cog', 'img/service-3.jpg', 1, 'Adhérence Maximale, Sécurité Totale'),
(4, 'Changement d\'Huiles', 'Nous utilisons des huiles de haute qualité pour garantir une lubrification parfaite de votre moteur. Un changement d’huile régulier permet de réduire l’usure des pièces, d’améliorer les performances du véhicule et de prolonger sa durée de vie. Confiez cette opération essentielle à nos professionnels pour rouler en toute sérénité.', 'fa-car-side', 'img/1744109594_service-4.jpeg', 0, 'Protégez Votre Moteur avec une Lubrification Optimale');

-- --------------------------------------------------------

--
-- Table structure for table `voitures`
--

CREATE TABLE `voitures` (
  `id` int(11) NOT NULL,
  `car_name` varchar(255) NOT NULL,
  `car_ref` varchar(100) NOT NULL,
  `car_image` varchar(255) NOT NULL,
  `car_status` varchar(50) NOT NULL,
  `car_transmission` varchar(50) NOT NULL,
  `fuel_type` varchar(50) NOT NULL,
  `engine_capacity` decimal(5,2) NOT NULL,
  `year` int(11) NOT NULL,
  `car_km` int(11) NOT NULL,
  `car_price` decimal(10,2) NOT NULL,
  `last_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `voitures`
--

INSERT INTO `voitures` (`id`, `car_name`, `car_ref`, `car_image`, `car_status`, `car_transmission`, `fuel_type`, `engine_capacity`, `year`, `car_km`, `car_price`, `last_modified`) VALUES
(10, 'Audi A6', 'A6-947', 'assets/list/A6.png', 'Disponible', 'Automatique', 'Essence', 1.10, 2016, 132000, 995000.00, '2025-11-04 11:53:21'),
(11, 'Audi A7', 'A7-767', 'assets/list/A7.png', 'Disponible', 'Automatique', 'Essence', 1.90, 2017, 45000, 1085000.00, NULL),
(18, 'Audi Q7', 'Q7-973', 'assets/list/Q7.png', 'Disponible', 'Automatique', 'Essence', 3.10, 2018, 84000, 2680000.00, NULL),
(19, 'Audi Q8', 'Q8-891', 'assets/list/Q8.png', 'Disponible', 'Automatique', 'Hybride', 2.90, 2021, 27173, 5500000.00, NULL),
(20, 'Audi R8', 'R8-617', 'assets/list/R8.png', 'Disponible', 'Automatique', 'Essence', 2.10, 2022, 85452, 3500000.00, NULL),
(21, 'Audi RS6', 'RS6-775', 'assets/list/RS6.png', 'Vendu', 'Automatique', 'Essence', 2.10, 2015, 55473, 5400000.00, NULL),
(22, 'Mercedes AMG GT63', 'AMG-410', 'assets/list/amg-gt63.png', 'Disponible', 'Automatique', 'Essence', 3.10, 2023, 71805, 10300000.00, NULL),
(14, 'Mercedes C-Class', 'MER-686', 'assets/list/Mercedes-Benz_C-Class_2018.png', 'Disponible', 'Automatique', 'Essence', 2.00, 2020, 79139, 3420000.00, NULL),
(25, 'Mercedes C-Class Cabriolet', 'MER-172', 'assets/list/mercedes_cabriolet.png', 'Disponible', 'Automatique', 'Essence', 1.20, 2019, 85256, 4000000.00, NULL),
(13, 'Mercedes G-class', 'G-C-135', 'assets/list/G-class.png', 'Disponible', 'Automatique', 'Essence', 1.90, 2019, 119683, 10250000.00, NULL),
(7, 'Mercedes GLE 2021', '202-596', 'assets/list/2021-Mercedes-Benz-GLE-hero.png', 'Disponible', 'Automatique', 'Essence', 1.80, 2023, 113896, 3500000.00, NULL),
(15, 'Mercedes S63 AMG ', 'MER-951', 'assets/list/Mercedes_Benz_S63_AMG_White.png', 'Disponible', 'Automatique', 'Essence', 2.00, 2021, 63497, 2120000.00, NULL),
(9, 'Porsche 911 Carrera 4S', '911-348', 'assets/list/911_Carrera_4S.png', 'Disponible', 'Automatique', 'Essence', 3.50, 2016, 109531, 4100000.00, NULL),
(16, 'Porsche Cayenne Turbo', 'POR-794', 'assets/list/Porsche_Cayenne_Turbo.png', 'Disponible', 'Automatique', 'Hybride', 2.70, 2020, 107065, 9200000.00, NULL),
(8, 'Porsche Cayman 718', '718-887', 'assets/list/718_Cayman_Porsche.png', 'Disponible', 'Automatique', 'Essence', 3.80, 2019, 103769, 5600000.00, NULL),
(27, 'Porsche GT3', 'POR-732', 'assets/list/porsche-gt3.png', 'Disponible', 'Automatique', 'Essence', 2.80, 2023, 32944, 18000000.00, NULL),
(24, 'Porsche Macan', 'MAC-116', 'assets/list/macan.png', 'Disponible', 'Automatique', 'Essence', 3.40, 2020, 91771, 5700000.00, NULL),
(26, 'Porsche Panamera', 'PAN-449', 'assets/list/panamera.png', 'Disponible', 'Automatique', 'Essence', 1.20, 2020, 73451, 9300000.00, NULL);

--
-- Triggers `voitures`
--
DELIMITER $$
CREATE TRIGGER `before_voiture_delete` BEFORE DELETE ON `voitures` FOR EACH ROW BEGIN
  INSERT INTO voitures_supprimees (
    original_id,
    car_name,
    car_ref,
    car_image,
    car_status,
    car_transmission,
    fuel_type,
    engine_capacity,
    year,
    car_km,
    car_price,
    deleted_at
  ) VALUES (
    OLD.id,
    OLD.car_name,
    OLD.car_ref,
    OLD.car_image,
    OLD.car_status,
    OLD.car_transmission,
    OLD.fuel_type,
    OLD.engine_capacity,
    OLD.year,
    OLD.car_km,
    OLD.car_price,
    NOW()
  );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_voiture_update` BEFORE UPDATE ON `voitures` FOR EACH ROW BEGIN
    SET NEW.last_modified = NOW();
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `voitures_supprimees`
--

CREATE TABLE `voitures_supprimees` (
  `id` int(11) NOT NULL,
  `original_id` int(11) DEFAULT NULL,
  `car_name` varchar(255) DEFAULT NULL,
  `car_ref` varchar(100) DEFAULT NULL,
  `car_image` varchar(255) DEFAULT NULL,
  `car_status` varchar(50) DEFAULT NULL,
  `car_transmission` varchar(50) DEFAULT NULL,
  `fuel_type` varchar(50) DEFAULT NULL,
  `engine_capacity` decimal(5,2) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `car_km` int(11) DEFAULT NULL,
  `car_price` decimal(10,2) DEFAULT NULL,
  `deleted_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Indexes for table `contact_info`
--
ALTER TABLE `contact_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `essai`
--
ALTER TABLE `essai`
  ADD PRIMARY KEY (`id_essai`),
  ADD KEY `fk_essai_client` (`id_client`),
  ADD KEY `fk_essai_voiture` (`car_name`);

--
-- Indexes for table `home_about`
--
ALTER TABLE `home_about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_services`
--
ALTER TABLE `home_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_stat`
--
ALTER TABLE `home_stat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `map_config`
--
ALTER TABLE `map_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voitures`
--
ALTER TABLE `voitures`
  ADD UNIQUE KEY `unique_car_name` (`car_name`);

--
-- Indexes for table `voitures_supprimees`
--
ALTER TABLE `voitures_supprimees`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `contact_info`
--
ALTER TABLE `contact_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `essai`
--
ALTER TABLE `essai`
  MODIFY `id_essai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `home_about`
--
ALTER TABLE `home_about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_services`
--
ALTER TABLE `home_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `home_stat`
--
ALTER TABLE `home_stat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `voitures_supprimees`
--
ALTER TABLE `voitures_supprimees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
