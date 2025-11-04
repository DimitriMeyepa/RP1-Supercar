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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `voitures`
--
ALTER TABLE `voitures`
  ADD UNIQUE KEY `unique_car_name` (`car_name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
