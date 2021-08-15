-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2021 at 06:53 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bankofspain`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `remitter` varchar(50) NOT NULL,
  `beneficiary` varchar(50) NOT NULL,
  `amount` int(50) NOT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`remitter`, `beneficiary`, `amount`, `date`, `time`) VALUES
('Bonnie keller', 'Ellie Cooper', 100, '2021-08-09', '09:52:27'),
('Bonnie keller', 'Lexie Grey', 34, '2021-08-09', '10:09:05'),
('Lexie Grey', 'Lia Scott', 243, '2021-08-09', '10:20:38'),
('Ellie Cooper', 'Bonnie keller', 7853, '2021-08-09', '10:21:10'),
('Luke Parker', 'Barbara wheelers', 8765, '2021-08-09', '10:35:31'),
('Barbara wheelers', 'Nina Salvatore', 879, '2021-08-09', '10:36:05'),
('Rachel Greene Geller', 'Ria', 6543, '2021-08-09', '10:46:14'),
('Barbara wheelers', 'Luke Parker', 458, '2021-08-09', '10:55:18'),
('Bonnie keller', 'Lexie Grey', 4568, '2021-08-09', '11:26:23'),
('Stefen Wesley', 'Nina Salvatore', 1324, '2021-08-11', '08:58:28'),
('Ria', 'Lia Scott', 235, '2021-08-11', '09:52:18'),
('Lexie Grey', 'Bonnie Keller', 345, '2021-08-11', '10:06:30');

--
-- Triggers `transaction`
--
DELIMITER $$
CREATE TRIGGER `device` BEFORE INSERT ON `transaction` FOR EACH ROW IF new.date IS NULL THEN
	SET NEW.date = CURDATE();
    SET NEW.time = CURTIME();
END IF
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `amount` int(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `amount`, `address`, `phone`) VALUES
(10, 'Nina Salvatore', 'Ninasalvy@yahoo.com', 37681, 'Eusebio Dávila, 40 41460 Las Navas de la Concepció', '600 523 737'),
(5, 'Lia Scott', ' Liascott@yahoo.com', 18920, 'Pl. Virgen Blanca, 8 08470 Sant Celoni', '759 900 841'),
(6, 'Barbara wheelers', 'Barbarawheelers256@yahoo.com', 4176, 'Eusebio Dávila, 86 41530 Morón de la Frontera', '720 330 854'),
(1, 'Ria', 'Ria@jourrapide.com', 378, '2323 Cherry Ridge Drive Roseville, MI 48066', '2147483647'),
(3, 'Bonnie keller', 'Bonniekell34@gmail.com', 5215, 'Urzáiz, 8 44600 Alcañiz', '747 035 392'),
(9, 'Stefen Wesley', 'Stefenweesley@yahoo.com', 10344, 'Fuente del Gallo, 89 15117 Laxe', '619 498 764'),
(7, 'Luke Parker', 'LukeParker@armyspy.com', 65082, 'C/ Cuevas de Ambrosio, 29 23740 Andújar', '698 824 254'),
(8, 'Noah Millers', 'Noahmillers@jourrapide.com', 476586, 'Avda. Explanada Barnuevo, 86 35430 Firgas', '683 673 778'),
(4, 'Lexie Grey', 'Lexiegrey@gmail.com', 34377, 'Cádiz, 67 18490 Murtas', '771 491 815'),
(2, 'Ellie Cooper', 'Ellie23cooper@gmail.com', 11491, '2063 Karen Lane Louisville, KY 40202', '2028359827');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `phone` (`phone`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
