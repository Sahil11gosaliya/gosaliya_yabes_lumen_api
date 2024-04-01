-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 01, 2024 at 06:15 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wizarding_world_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `characters`
--

DROP TABLE IF EXISTS `characters`;
CREATE TABLE IF NOT EXISTS `characters` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `image` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `characters`
--

INSERT INTO `characters` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Harry Potter', 'The Chosen One, Harry Potter, rose from a humble upbringing to become the vanquisher of the dark lord Voldemort. His bravery, loyalty, and unwavering sense of justice inspired hope in the wizarding world during its darkest days.', 'images/harry.jpg', '2024-03-24 04:28:55', '2024-03-24 04:28:55'),
(2, 'Hermione Granger', 'A Muggle-born witch, Hermione Granger proved herself as one of the most talented and diligent students at Hogwarts School of Witchcraft and Wizardry. Her intellect, determination, and loyalty to her friends played pivotal roles in overcoming the challenges they faced.', 'images/hermoine.jpg', '2024-03-24 04:29:07', '2024-03-24 04:29:07'),
(3, 'Ron Weasley', 'A loyal and fiercely loyal friend, Ron Weasley stood by Harry Potter\'s side through every trial and tribulation. Despite his insecurities, Ron\'s bravery, humor, and unwavering loyalty to his loved ones made him an integral part of the fight against darkness.', 'images/ron.jpg', '2024-03-24 04:29:38', '2024-03-24 04:29:38'),
(4, 'Albus Dumbledore', 'As the revered headmaster of Hogwarts School of Witchcraft and Wizardry, Albus Dumbledore was a wise and powerful wizard. His unwavering commitment to the greater good, coupled with his profound knowledge of magic, made him a guiding light in the battle against dark forces.', 'images/albus.jpg', '2024-03-24 04:29:38', '2024-03-24 04:29:38'),
(5, 'Lord Voldemort', 'Once known as Tom Riddle, Voldemort\'s lust for power led him down a path of darkness and cruelty. His quest for immortality and domination over the wizarding world made him the most feared dark wizard of all time, until his ultimate defeat at the hands of Harry Potter.', 'images/tom.jpg', '2024-03-24 04:30:09', '2024-03-24 04:30:09'),
(6, 'Severus Snape', 'A complex and enigmatic figure, Severus Snape\'s loyalties remained shrouded in mystery for much of the Harry Potter series. Despite his troubled past and apparent allegiance to Voldemort, Snape ultimately played a crucial role in protecting Harry Potter and thwarting Voldemort\'s plans.', 'images/severus.png', '2024-03-24 04:30:09', '2024-03-24 04:30:09'),
(7, 'Rubeus Hagrid', 'The gentle giant and keeper of keys and grounds at Hogwarts, Rubeus Hagrid\'s love for magical creatures was matched only by his loyalty to his friends. Despite his rough exterior, Hagrid possessed a kind heart and unwavering dedication to doing what was right', 'images/hagrid.jpg', '2024-03-24 04:30:49', '2024-03-24 04:30:49'),
(8, 'Cedric Diggory', 'A talented and honorable student of Hogwarts, Cedric Diggory\'s life was tragically cut short during the Triwizard Tournament when he was murdered by Lord Voldemort. His death served as a stark reminder of the dangers that loomed over the wizarding world and the sacrifices made in the fight against darkness.', 'images/cedric.png', '2024-03-24 13:42:55', '2024-03-24 13:42:55');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
