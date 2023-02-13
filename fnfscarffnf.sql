-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2023 at 10:17 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fnfscarffnf`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(132, 15, 13, 'Awadah Smokey Grey Shawl', 25, 1, 'AWADAH SMOKEY GREY.jpg'),
(160, 22, 109, 'Luxanne Peanut Butter', 30, 1, 'LUXANNE PEANUT BUTTER_2.jpg'),
(164, 23, 105, 'Luxanne Black', 30, 1, 'LUXANNE BLACK_2.jpg'),
(221, 31, 29, 'Sofeya Rose Violet', 15, 1, 'SOFEYA ROSE VIOLET_2.jpg'),
(222, 44, 103, 'Luxanne Toffee', 30, 1, 'LUXANNE TOFFEE_2.jpg'),
(225, 38, 53, 'Zahra Leia', 25, 1, 'ZAHRA LEIA.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(14, 19, 'fareenasamirah', 'fynafaryna@gmail.com', '0199767627', 'hello!'),
(15, 23, 'Aleena Akira', 'aleena99@gmail.com', '0164329876', 'hi FNF Scarf, I really love the material of the scarf. '),
(16, 22, 'Aiman Sazali', 'aiman11@gmail.com', '0197628328', 'Can you suggest me the most best seller on FNF Scarf for my girlfriend?'),
(17, 36, 'Siti Nur Adawiyah', 'adawiyah87@gmail.com', '0189071239', 'Hello fnf scarf, can I know the measurement for mostly scarf in FNF Scarf?'),
(18, 31, 'Puteri Nur Fatimah', 'azhzahra@gmail.com', '0112347892', 'I surprised because the customer service was very helpful.<3'),
(19, 42, 'Izzat Zakwan', 'izzatzakwan@gmail.com', '0178926700', 'Dear FNF Scarf, I am a loyal customer and I just wanted to take a moment to thank you for consistently providing such excellent products. I love your scarves and I always receive compliments when I wear them.'),
(21, 44, 'Abdul Malik', 'malikhalim@gmail.com', '0189098861', 'Good day FNF Scarf! I just wanted to reach out and let you know that I am thoroughly impressed with the quality of your scarves. They are simply gorgeous!'),
(22, 38, 'Fana Elaina', 'fanaelaina@gmail.com', '0143210987', 'I\'m very interested on embossed pattern that provided in FNF Scarf, do you have any suggestion for white dress?'),
(23, 28, 'Siti Belinda Yusri', 'belinda77@gmail.com', '0135678901', 'hello there, I think your business will grow up, keep it up with a good work!!'),
(24, 27, 'Siti Nur Basyeera', 'basyeeracomel@gmail.com', '0124987623', 'Can you suggest me for the maroon theme. I wanna hangout with my collagues this Friday! '),
(25, 34, 'Maryam Adreena', 'adreenamaryam@gmail.com', '0175432109', 'I\'m in search of the perfect white scarf for a Friday hanging out with my boyfriend. Can you point me in the right scarf?');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(23, 19, 'fareena', '0199767627', 'fynafaryna@gmail.com', 'cash on delivery', '392-C Lorong 3 Kanan, Jalan Gong Pasir - 23000, dungun, malaysia', ', AYRA MAUVE (1) , LUXANNE DUSTY BLUE (1) ', 85, '23-Jan-2023', 'completed'),
(24, 21, 'Ina Aina Zailani', '01452262857', 'inaina66@gmail.com', 'credit card', 'No 57 , Jalan Ismail , 41150, Klang, Malaysia', ', Qaseh Sulam Black (1) , Sofeya OffWhite (1) , Zahra Qirana (1) , Sofeya Apricot (1) ', 100, '23-Jan-2023', 'completed'),
(25, 22, 'Aiman Sazali', '0196428639', 'aiman11@gmail.com', 'cash on delivery', '31-A, Jalan Tunggal, 81630, Kota Tinggi , Malaysia', ', Fleur Sweet (1) , Awadah Midnight Blue (1) ', 75, '26-Jan-2023', 'completed'),
(26, 23, 'Aleena Akira', '0164329876', 'aleena99@gmail.com', 'paypal', '49-C, Jalan Kangar, 01000, Kangar , Perlis', ', Qaseh Sulam Pearl Grey (1) , Fleur Pansy (2) , Sofeya Blue Grey (5) ', 200, '28-Jan-2023', 'completed'),
(27, 24, 'Muhammad Nur Zulfaqar', '0176531290', 'zulfaqarnur@gmail.com', 'credit card', 'No. 3109, Blok 20, Jalan Kemboja, 81000, Kota Tinggi, Malaysia', ', Ayra Lilac (1) ', 20, '1-Feb-2023', 'completed'),
(28, 25, 'Nur Aaliyah Baiyinah ', '0193456789', 'aaliyahbaiyinah@gmail.com', 'cash on delivery', 'No. 404, Jalan Mawar 2, 20596, Kuala Terengganu, Malaysia', ', Awadah Coffee (1) , Qaseh Sulam Black (2) , Chenta Lux Cherry (1) , Chenta Naked Brown (1) ', 225, '1-Feb-2023', 'completed'),
(29, 26, 'Wan Zulfariza', '0182675134', 'zulfarizakakjah@gmail.com', 'credit card', 'Lot 1908, Jalan Ceria, 24000, Kemaman, Malaysia', ', Awadah Taffy (1) , Chenta Blush (1) ', 85, '3-Feb-2023', 'completed'),
(30, 27, 'Siti Nur Basyeera', '0124987623', 'basyeeracomel@gmail.com', 'cash on delivery', 'No. 1234, Jalan Teluk Lipat, 23000, Dungun, Malaysia', ', Sofeya Baby Blue (1) , Qaseh Sulam Nude Brown (1) ', 60, '4-Feb-2023', 'completed'),
(31, 28, 'Siti Belinda Yusri', '0135678901', 'belinda77@gmail.com', 'credit card', 'Lot 120, Jalan Tunku Abd Rahman, 50010, Wilayah Persekutuan, malaysia', ', Chenta Burgundy (1) ', 50, '4-Feb-2023', 'completed'),
(32, 29, 'Chantelle Dahlia', '0146890123', 'chanlia642576@gmail.com', 'credit card', '34-C , Jalan Mewah, 50010, Butterworth, Malaysia', ', Sofeya OffWhite (1) , Sofeya Mint Green (1) ', 30, '4-Feb-2023', 'completed'),
(33, 30, 'Muhammad Harith ', '0151234567', 'mharith@gmail.com', 'credit card', '40 T, Jalan Bukit Raflesia, 25594, Kuantan, Malaysia', ', Sofeya Pale Ivory (1) , Qaseh Sulam OffWhite (1) , Qaseh Sulam Pearl Grey (1) ', 105, '6-Feb-2023', 'completed'),
(34, 31, 'Puteri Nur Fatimah', '0112347892', 'azhzahra@gmail.com', 'credit card', '012 B, Jalan Ketapang, Taman Indera, 80250, Batu Pahat, Malaysia', ', Sofeya Rose Violet (1) , Fleur Sweet (1) , Luxanne OffWhite (1) ', 85, '6-Feb-2023', 'completed'),
(35, 32, 'Muhammad Juju', '0109876543', 'jujumuhammad@gmail.com', 'credit card', '20 U, Taman Negara, Jalan Kuching , 93000, Kuching , Malaysia', ', Awadah Pastel Yellow (1) , Ayra Dusty Blue (1) ', 55, '6-Feb-2023', 'completed'),
(36, 33, 'Musfira', '0175432109', 'musfira@gmail.com', 'credit card', 'Lot 62, Jalan Sura Tengah, 23000, Dungun, Malaysia', ', Ayra Sunrise (1) , Luxanne Beige (1) ', 50, '7-Feb-2023', 'completed'),
(37, 34, 'Maryam Adreena', '0175432109', 'adreenamaryam@gmail.com', 'credit card', 'No 10, Jalan Pak Sabah, 23000, Dungun, Malaysia', ', Sofeya Apricot (1) , Sofeya Rose Violet (1) ', 30, '8-Feb-2023', 'completed'),
(38, 35, 'Syuhana Afiqah', '0126543210', 'syuhana00@gmail.com', 'credit card', 'No 90 Taman Rakyat, Jalan Balai Besar, 23000, Dungun, Malaysia', ', Ayra Nude (1) , Luxanne Peanut Butter (1) ', 50, '9-Feb-2023', 'completed'),
(39, 36, 'Siti Nur Adawiyah', '0189071239', 'adawiyah87@gmail.com', 'credit card', '23 C Taman Alor Indah, Jalan Melayu, 30010, Ipoh , Malaysia', ', Luxanne Purplish Grey (1) , Luxanne Dusty Mint (1) ', 60, '9-Feb-2023', 'completed'),
(40, 37, 'Diana Eryna', '0134567890', 'nanaeryna@gmail.com', 'cash on delivery', 'No 7 , Jalan Larkin Mewah , 80594, Johor, Malaysia', ', Sofeya Beige (1) , Sofeya Rose Violet (1) ', 30, '9-Feb-2023', 'completed'),
(41, 38, 'Fana Elaina ', '0143210987', 'fanaelaina@gmail.com', 'credit card', 'Lot 50 , Jalan Tulip Lama Akasia, 11900, Bayan Lepas, Malaysia', ', Sofeya Blue Grey (1) , Sofeya Dusty Grey (1) , Awadah Baby Blue (1) ', 65, '9-Feb-2023', 'pending'),
(42, 39, 'Fatin Firenza', '0116749102', 'firenzagorg@gmail.com', 'cash on delivery', 'No 100, Jalan Torrone, 41150, Klang, Malaysia', ', Awadah Smokey Grey (1) , Ayra Nude (1) ', 55, '10-Feb-2023', 'pending'),
(43, 40, 'Nadeera Mawaddah', '0169012345', 'mawaddah@gmail.com', 'credit card', 'Lot 35 Blok B, Jalan Kepong, 52100, Kepong, Malaysia', ', Chenta Naked Brown (1) , Chenta Blush (1) ', 100, '10-Feb-2023', 'pending'),
(44, 41, 'Nadja Malika', '0101239876', 'nadjacutie@gmail.com', 'credit card', 'No 508, Kampung Batu Lima, 23100, Paka, Malaysia', ', Sofeya Aqua Blue (1) , Sofeya Dusty Pink (1) , Awadah Taffy (1) ', 65, '12-Feb-2023', 'pending'),
(45, 42, 'Izzat Zakwan', '0178926700', 'izzatzakwan@gmail.com', 'paypal', 'No 31 Lorong 18, Taman Saujana Idaman, 02600, Arau , Malaysia', ', Awadah Nude Pink (1) , Chenta Sweet Beige (1) ', 85, '12-Feb-2023', 'pending'),
(46, 43, 'Nur Iman', '0199777289', 'imaniman@gmail.com', 'paypal', 'No 201, Jalan Gemilang 2/5, 32610, Seri Iskandar, Malaysia', ', Awadah Pastel Yellow (3) , Ayra Mint (1) , Luxanne Toffee (1) ', 155, '12-Feb-2023', 'pending'),
(47, 44, 'Abdul Malik ', '0189098861', 'malikhalim@gmail.com', 'credit card', 'Lot 560, Jalan Harapan 6F, Taman Sungai Kapar, 41000, Kapar, Malaysia', ', Ayra Dusty Green (3) , Luxanne Toffee (2) , Luxanne Purplish Grey (3) ', 210, '12-Feb-2023', 'pending'),
(48, 45, 'Ahmad Adeeb', '0148900091', 'adeebnazreen@gmail.com', 'credit card', '86 , Jalan Kuala Klawang, 70400, Seremban, Malaysia', ', Awadah Baby Blue (1) , Ayra Nude Pink (1) , Ayra Black (3) ', 115, '12-Feb-2023', 'pending'),
(49, 46, 'Muhammad Amnan', '0127829901', 'amnanmad@gmail.com', 'credit card', 'No. 9 , Taman Persiaran Halaman Ampang, 31350, Ipoh, Malaysia', ', Chenta Lav Grey (4) , Ayra Dusty Green (2) ', 240, '12-Feb-2023', 'pending'),
(50, 20, 'Fatin Fatyyin', '0173769337', 'fatin@gmail.com', 'cash on delivery', 'No. 5B, Jalan Nenas, 41050, Klang, malaysia', ', Zahra Camelia (2) , Qaseh Sulam OffWhite (1) , Zahra Shara (1) , Awadah Midnight Blue (1) , Awadah Black (1) ', 190, '12-Feb-2023', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `name`, `details`, `price`, `image`) VALUES
(13, 'Sofeya Black', 'Sofeya material is made of very premium mix chiffon and cotton, very breathable when worn all day, and suitable for your daily use.\r\n\r\nDetails:\r\n• Material: Premium Chiffon Cotton\r\n• Design: Each Side End Curve | 120 cm x 120 cm ( 48\")', 15, 'SOFEYA BLACK.jpg'),
(24, 'Sofeya OffWhite', 'Sofeya material is made of very premium mix chiffon and cotton, very breathable when worn all day, and suitable for your daily use.\r\n\r\nDetails:\r\n• Material: Premium Chiffon Cotton\r\n• Design: Each Side End Curve | 120 cm x 120 cm ( 48\")', 15, 'SOFEYA OFFWHITE.jpg'),
(25, 'Sofeya Apricot', 'Sofeya material is made of very premium mix chiffon and cotton, very breathable when worn all day, and suitable for your daily use.\r\n\r\nDetails:\r\n• Material: Premium Chiffon Cotton\r\n• Design: Each Side End Curve | 120 cm x 120 cm ( 48\")', 15, 'SOFEYA APRICOT_2.jpg'),
(26, 'Sofeya Aqua Blue', 'Sofeya material is made of very premium mix chiffon and cotton, very breathable when worn all day, and suitable for your daily use.\r\n\r\nDetails:\r\n• Material: Premium Chiffon Cotton\r\n• Design: Each Side End Curve | 120 cm x 120 cm ( 48\")', 15, 'SOFEYA AQUA BLUE_2.jpg'),
(27, 'Sofeya Beige', 'Sofeya material is made of very premium mix chiffon and cotton, very breathable when worn all day, and suitable for your daily use.\r\n\r\nDetails:\r\n• Material: Premium Chiffon Cotton\r\n• Design: Each Side End Curve | 120 cm x 120 cm ( 48\")', 15, 'SOFEYA BEIGE_2.jpg'),
(29, 'Sofeya Rose Violet', 'Sofeya material is made of very premium mix chiffon and cotton, very breathable when worn all day, and suitable for your daily use.\r\n\r\nDetails:\r\n• Material: Premium Chiffon Cotton\r\n• Design: Each Side End Curve | 120 cm x 120 cm ( 48\")', 15, 'SOFEYA ROSE VIOLET_2.jpg'),
(30, 'Sofeya Blue Grey', 'Sofeya material is made of very premium mix chiffon and cotton, very breathable when worn all day, and suitable for your daily use.\r\n\r\nDetails:\r\n• Material: Premium Chiffon Cotton\r\n• Design: Each Side End Curve | 120 cm x 120 cm ( 48\")', 15, 'SOFEYA BLUEGREY_2.jpg'),
(31, 'Sofeya Mint Green', 'Sofeya material is made of very premium mix chiffon and cotton, very breathable when worn all day, and suitable for your daily use.\r\n\r\nDetails:\r\n• Material: Premium Chiffon Cotton\r\n• Design: Each Side End Curve | 120 cm x 120 cm ( 48\")', 15, 'SOFEYA MINT GREEN_2.jpg'),
(32, 'Sofeya Dusty Grey', 'Sofeya material is made of very premium mix chiffon and cotton, very breathable when worn all day, and suitable for your daily use.\r\n\r\nDetails:\r\n• Material: Premium Chiffon Cotton\r\n• Design: Each Side End Curve | 120 cm x 120 cm ( 48\")', 15, 'SOFEYA DUSTY GREY.jpg'),
(33, 'Sofeya Dusty Flower', 'Sofeya material is made of very premium mix chiffon and cotton, very breathable when worn all day, and suitable for your daily use.\r\n\r\nDetails:\r\n• Material: Premium Chiffon Cotton\r\n• Design: Each Side End Curve | 120 cm x 120 cm ( 48\")', 15, 'SOFEYA DUSTY FLOWER.jpg'),
(34, 'Sofeya Pale Ivory', 'Sofeya material is made of very premium mix chiffon and cotton, very breathable when worn all day, and suitable for your daily use.\r\n\r\nDetails:\r\n• Material: Premium Chiffon Cotton\r\n• Design: Each Side End Curve | 120 cm x 120 cm ( 48\")', 15, 'SOFEYA PALE IVORY_2.jpg'),
(35, 'Sofeya Nutty Brown', 'Sofeya material is made of very premium mix chiffon and cotton, very breathable when worn all day, and suitable for your daily use.\r\n\r\nDetails:\r\n• Material: Premium Chiffon Cotton\r\n• Design: Each Side End Curve | 120 cm x 120 cm ( 48\")', 15, 'SOFEYA NUTTY BROWN.jpg'),
(36, 'Sofeya Dusty Pink', 'Sofeya material is made of very premium mix chiffon and cotton, very breathable when worn all day, and suitable for your daily use.\r\n\r\nDetails:\r\n• Material: Premium Chiffon Cotton\r\n• Design: Each Side End Curve | 120 cm x 120 cm ( 48\")', 15, 'SOFEYA DUSTY PINK_2.jpg'),
(37, 'Sofeya Baby Blue', 'Sofeya material is made of very premium mix chiffon and cotton, very breathable when worn all day, and suitable for your daily use.\r\n\r\nDetails:\r\n• Material: Premium Chiffon Cotton\r\n• Design: Each Side End Curve | 120 cm x 120 cm ( 48\")', 15, 'SOFEYA BABY BLUE.jpg'),
(38, 'Qaseh Sulam Almond', 'Our Beautiful Qaseh Sulam Square is made of Premium Japanese Cotton that is featured embroidered throughout the baby seam. \r\nPerfectly and neatly.\r\n\r\n Details:\r\n• Material: Premium Japanease Cotton\r\n• Size : 120 cm x 120 cm (+-) (48\")', 45, 'QASEH ALMOND.jpg'),
(45, 'Qaseh Sulam Black', 'Our Beautiful Qaseh Sulam Square is made of Premium Japanese Cotton that is featured embroidered throughout the baby seam.\r\nPerfectly and neatly.\r\n\r\nDetails:\r\n• Material: Premium Japanease Cotton\r\n• Size : 120 cm x 120 cm (+-) (48\")', 45, 'QASEH BLACK_2.jpg'),
(46, 'Qaseh Sulam OffWhite', 'Our Beautiful Qaseh Sulam Square is made of Premium Japanese Cotton that is featured embroidered throughout the baby seam.\r\nPerfectly and neatly.\r\n\r\nDetails:\r\n• Material: Premium Japanease Cotton\r\n• Size : 120 cm x 120 cm (+-) (48\")', 45, 'QASEH OFFWHITE.jpg'),
(47, 'Qaseh Sulam Nude Brown', 'Our Beautiful Qaseh Sulam Square is made of Premium Japanese Cotton that is featured embroidered throughout the baby seam.\r\nPerfectly and neatly.\r\n\r\nDetails:\r\n• Material: Premium Japanease Cotton\r\n• Size : 120 cm x 120 cm (+-) (48\")', 45, 'QASEH NUDE BROWN_2.jpg'),
(48, 'Qaseh Sulam Dusty Pink', 'Our Beautiful Qaseh Sulam Square is made of Premium Japanese Cotton that is featured embroidered throughout the baby seam.\r\nPerfectly and neatly.\r\n\r\nDetails:\r\n• Material: Premium Japanease Cotton\r\n• Size : 120 cm x 120 cm (+-) (48\")', 45, 'QASEH DUSTY PINK.jpg'),
(49, 'Qaseh Sulam Pearl Grey', 'Our Beautiful Qaseh Sulam Square is made of Premium Japanese Cotton that is featured embroidered throughout the baby seam.\r\nPerfectly and neatly.\r\n\r\nDetails:\r\n• Material: Premium Japanease Cotton\r\n• Size : 120 cm x 120 cm (+-) (48\")', 45, 'QASEH PEARL GREY.jpg'),
(50, 'Zahra Adelia', 'Zahra\'s design art is inspired by classic and floral traditional carving art which shows more freshness in this design.\r\n\r\nDetails:\r\n• Material: Premium Soft Japanese cotton\r\n• Design: Square 48-inch x 48 inch', 25, 'ZAHRA ADELIA_2.jpg'),
(51, 'Zahra Shara', 'Zahra\'s design art is inspired by classic and floral traditional carving art which shows more freshness in this design.\r\n\r\nDetails:\r\n• Material: Premium Soft Japanese cotton\r\n• Design: Square 48-inch x 48 inch', 25, 'ZAHRA SAHARA_2.jpg'),
(52, 'Zahra Qirana', 'Zahra\'s design art is inspired by classic and floral traditional carving art which shows more freshness in this design.\r\n\r\nDetails:\r\n• Material: Premium Soft Japanese cotton\r\n• Design: Square 48-inch x 48 inch', 25, 'ZAHRA QIRANA_2.jpg'),
(53, 'Zahra Leia', 'Zahra\'s design art is inspired by classic and floral traditional carving art which shows more freshness in this design.\r\n\r\nDetails:\r\n• Material: Premium Soft Japanese cotton\r\n• Design: Square 48-inch x 48 inch', 25, 'ZAHRA LEIA.jpg'),
(54, 'Zahra Ayana', 'Zahra\'s design art is inspired by classic and floral traditional carving art which shows more freshness in this design.\r\n\r\nDetails:\r\n• Material: Premium Soft Japanese cotton\r\n• Design: Square 48-inch x 48 inch', 25, 'ZAHRA AYANA_2.jpg'),
(55, 'Zahra Camelia', 'Zahra\'s design art is inspired by classic and floral traditional carving art which shows more freshness in this design.\r\n\r\nDetails:\r\n• Material: Premium Soft Japanese cotton\r\n• Design: Square 48-inch x 48 inch', 25, 'ZAHRA CAMELIA.jpg'),
(56, 'Fleur Blush', 'Details:\r\n• Material: Premium Satin Matte\r\n• Measurements : 2.0m x 0.65m', 40, 'DAHLIA BLUSH_2.jpg'),
(58, 'Fleur Pansy', 'Details:\r\n• Material: Premium Satin Matte\r\n• Measurements : 2.0m x 0.65m', 40, 'PANSY_2.jpg'),
(59, 'Fleur Sweet', 'Details:\r\n• Material: Premium Satin Matte\r\n• Measurements : 2.0m x 0.65m', 40, 'SWEET PONY_2.jpg'),
(61, 'Awadah Coffee', 'Details:\r\n• Material: Premium Satin Matte Silk\r\n• Measurement: 2.0 x 0.8', 35, 'AWADAH COFFEE_2.jpg'),
(62, 'Awadah Black', 'Details:\r\n• Material: Premium Satin Matte Silk\r\n• Measurement: 2.0 x 0.8', 35, 'AWADAH BLACK_2.jpg'),
(63, 'Awadah Midnight Blue', 'Details:\r\n• Material: Premium Satin Matte Silk\r\n• Measurement: 2.0 x 0.8', 35, 'AWADAH MIDNIGHT BLUE_2.jpg'),
(64, 'Awadah Creamy', 'Details:\r\n• Material: Premium Satin Matte Silk\r\n• Measurement: 2.0 x 0.8', 35, 'AWADAH CREAMY_2.jpg'),
(65, 'Awadah Nude Pink', 'Details:\r\n• Material: Premium Satin Matte Silk\r\n• Measurement: 2.0 x 0.8', 35, 'AWADAH NUDE PINK_2.jpg'),
(66, 'Awadah Baby Blue', 'Details:\r\n• Material: Premium Satin Matte Silk\r\n• Measurement: 2.0 x 0.8', 35, 'AWADAH BABY BLUE_2.jpg'),
(67, 'Awadah Smokey Grey', 'Details:\r\n• Material: Premium Satin Matte Silk\r\n• Measurement: 2.0 x 0.8', 35, 'AWADAH SMOKEY GREY_2.jpg'),
(68, 'Awadah Taffy', 'Details:\r\n• Material: Premium Satin Matte Silk\r\n• Measurement: 2.0 x 0.8', 35, 'AWADAH TAFFY.jpg'),
(69, 'Awadah Golden', 'Details:\r\n• Material: Premium Satin Matte Silk\r\n• Measurement: 2.0 x 0.8', 35, 'AWADAH GOLDEN.jpg'),
(70, 'Awadah Mystic Mint', 'Details:\r\n• Material: Premium Satin Matte Silk\r\n• Measurement: 2.0 x 0.8', 35, 'AWADAH MYSTIC MINT.jpg'),
(71, 'Awadah Viola', 'Details:\r\n• Material: Premium Satin Matte Silk\r\n• Measurement: 2.0 x 0.8', 35, 'AWADAH VIOLA.jpg'),
(72, 'Awadah Dusty Crepe', 'Details:\r\n• Material: Premium Satin Matte Silk\r\n• Measurement: 2.0 x 0.8', 35, 'AWADAH DUSTY CREPE.jpg'),
(73, 'Awadah Blue Grey', 'Details:\r\n• Material: Premium Satin Matte Silk\r\n• Measurement: 2.0 x 0.8', 35, 'AWADAH BLUEGREY_2.jpg'),
(74, 'Awadah Pastel Yellow', 'Details:\r\n• Material: Premium Satin Matte Silk\r\n• Measurement: 2.0 x 0.8', 35, 'AWADAH PASTEL YELLOW.jpg'),
(75, 'Awadah Soft Lilac', 'Details:\r\n• Material: Premium Satin Matte Silk\r\n• Measurement: 2.0 x 0.8', 35, 'AWADAH SOFT LILAC.jpg'),
(76, 'Chenta Lux Cherry', 'Our Beautiful Chenta Sulam Shawl is made of Premium Chiffon Crepe featured with embroidered throughout the baby seam. Perfectly and neatly.\r\n\r\nDetails:\r\n• Material: Premium Chiffon Crepe\r\n• Size : 2.0 x 0.8 ', 50, 'CHENTA LUX CHERRY.jpg'),
(77, 'Chenta Naked Brown', 'Our Beautiful Chenta Sulam Shawl is made of Premium Chiffon Crepe featured with embroidered throughout the baby seam. Perfectly and neatly.\r\n\r\nDetails:\r\n• Material: Premium Chiffon Crepe\r\n• Size : 2.0 x 0.8 ', 50, 'CHENTA NAKED BROWN.jpg'),
(78, 'Chenta Light Green', 'Our Beautiful Chenta Sulam Shawl is made of Premium Chiffon Crepe featured with embroidered throughout the baby seam. Perfectly and neatly.\r\n\r\nDetails:\r\n• Material: Premium Chiffon Crepe\r\n• Size : 2.0 x 0.8 ', 50, 'CHENTA LIGHT GREEN.jpg'),
(79, 'Chenta Offwhite', 'Our Beautiful Chenta Sulam Shawl is made of Premium Chiffon Crepe featured with embroidered throughout the baby seam. Perfectly and neatly.\r\n\r\nDetails:\r\n• Material: Premium Chiffon Crepe\r\n• Size : 2.0 x 0.8 ', 50, 'CHENTA BABY BLUE.jpg'),
(80, 'Chenta Burgundy', 'Our Beautiful Chenta Sulam Shawl is made of Premium Chiffon Crepe featured with embroidered throughout the baby seam. Perfectly and neatly.\r\n\r\nDetails:\r\n• Material: Premium Chiffon Crepe\r\n• Size : 2.0 x 0.8 ', 50, 'CHENTA BURGUNDY.jpg'),
(81, 'Chenta Lav Grey', 'Our Beautiful Chenta Sulam Shawl is made of Premium Chiffon Crepe featured with embroidered throughout the baby seam. Perfectly and neatly.\r\n\r\nDetails:\r\n• Material: Premium Chiffon Crepe\r\n• Size : 2.0 x 0.8 ', 50, 'CHENTA LAV GREY.jpg'),
(82, 'Chenta Black', 'Our Beautiful Chenta Sulam Shawl is made of Premium Chiffon Crepe featured with embroidered throughout the baby seam. Perfectly and neatly.\r\n\r\nDetails:\r\n• Material: Premium Chiffon Crepe\r\n• Size : 2.0 x 0.8 ', 50, 'CHENTA BLACK.jpg'),
(83, 'Chenta Sweet Beige', 'Our Beautiful Chenta Sulam Shawl is made of Premium Chiffon Crepe featured with embroidered throughout the baby seam. Perfectly and neatly.\r\n\r\nDetails:\r\n• Material: Premium Chiffon Crepe\r\n• Size : 2.0 x 0.8 ', 50, 'CHENTA SWEET BEIGE.jpg'),
(84, 'Chenta Blush', 'Our Beautiful Chenta Sulam Shawl is made of Premium Chiffon Crepe featured with embroidered throughout the baby seam. Perfectly and neatly.\r\n\r\nDetails:\r\n• Material: Premium Chiffon Crepe\r\n• Size : 2.0 x 0.8 ', 50, 'CHENTA BLUSH.jpg'),
(85, 'Ayra Dark Chocolate', 'Details:\r\n• Material : Premium Pearl Chiffon\r\n• Measurement : 2.0 meter x 0.8 meter\r\n• Finishing : Baby Seam', 20, 'ayra_dark_coklat_2.jpg'),
(86, 'Ayra Nude Pink', 'Details:\r\n• Material : Premium Pearl Chiffon\r\n• Measurement : 2.0 meter x 0.8 meter\r\n• Finishing : Baby Seam', 20, 'ayra_nude_pink.jpg'),
(87, 'Ayra Dusty Blue', 'Details:\r\n• Material : Premium Pearl Chiffon\r\n• Measurement : 2.0 meter x 0.8 meter\r\n• Finishing : Baby Seam', 20, 'ayra_dusty_blue.jpg'),
(88, 'Ayra Mauve', 'Details:\r\n• Material : Premium Pearl Chiffon\r\n• Measurement : 2.0 meter x 0.8 meter\r\n• Finishing : Baby Seam', 20, 'ayra_mauve_2.jpg'),
(89, 'Ayra Nude', 'Details:\r\n• Material : Premium Pearl Chiffon\r\n• Measurement : 2.0 meter x 0.8 meter\r\n• Finishing : Baby Seam', 20, 'ayra_nude_2.jpg'),
(90, 'Ayra Sunrise', 'Details:\r\n• Material : Premium Pearl Chiffon\r\n• Measurement : 2.0 meter x 0.8 meter\r\n• Finishing : Baby Seam', 20, 'ayra_sunrise.jpg'),
(91, 'Ayra Black', 'Details:\r\n• Material : Premium Pearl Chiffon\r\n• Measurement : 2.0 meter x 0.8 meter\r\n• Finishing : Baby Seam', 20, 'ayra_black_2.jpg'),
(92, 'Ayra Lilac', 'Details:\r\n• Material : Premium Pearl Chiffon\r\n• Measurement : 2.0 meter x 0.8 meter\r\n• Finishing : Baby Seam', 20, 'ayra_lilac_2.jpg'),
(93, 'Ayra Mint', 'Details:\r\n• Material : Premium Pearl Chiffon\r\n• Measurement : 2.0 meter x 0.8 meter\r\n• Finishing : Baby Seam', 20, 'ayra_mint.jpg'),
(94, 'Ayra Dusty Green', 'Details:\r\n• Material : Premium Pearl Chiffon\r\n• Measurement : 2.0 meter x 0.8 meter\r\n• Finishing : Baby Seam', 20, 'ayra_dusty_green_2.jpg'),
(95, 'Luxanne Light Brown', 'Luxanne material is made of very premium satin with dot textured , material is light , flowy that give a drapes well and effortlessly style .\r\n\r\nDetails :\r\n• Material: Premium Textured Satin\r\n• Design: Straight Cut / 2.0 m x 0.8 m\r\n• Finishing: Baby Hem', 30, 'LUXANNE LIGHT BROWN_2.jpg'),
(96, 'Luxanne OffWhite', 'Luxanne material is made of very premium satin with dot textured , material is light , flowy that give a drapes well and effortlessly style .\r\n\r\nDetails :\r\n• Material: Premium Textured Satin\r\n• Design: Straight Cut / 2.0 m x 0.8 m\r\n• Finishing: Baby Hem', 30, 'LUXANNE OFFWHITE_2.jpg'),
(97, 'Luxanne Stone Grey', 'Luxanne material is made of very premium satin with dot textured , material is light , flowy that give a drapes well and effortlessly style .\r\n\r\nDetails :\r\n• Material: Premium Textured Satin\r\n• Design: Straight Cut / 2.0 m x 0.8 m\r\n• Finishing: Baby Hem', 30, 'LUXANNE STONE GREY.jpg'),
(98, 'Luxanne Mauve', 'Luxanne material is made of very premium satin with dot textured , material is light , flowy that give a drapes well and effortlessly style .\r\n\r\nDetails :\r\n• Material: Premium Textured Satin\r\n• Design: Straight Cut / 2.0 m x 0.8 m\r\n• Finishing: Baby Hem', 30, 'LUXANNE MAUVE.jpg'),
(99, 'Luxanne Dusty Pink', 'Luxanne material is made of very premium satin with dot textured , material is light , flowy that give a drapes well and effortlessly style .\r\n\r\nDetails :\r\n• Material: Premium Textured Satin\r\n• Design: Straight Cut / 2.0 m x 0.8 m\r\n• Finishing: Baby Hem', 30, 'LUXANNE DUSTY PINK_2.jpg'),
(100, 'Luxanne Champagne', 'Luxanne material is made of very premium satin with dot textured , material is light , flowy that give a drapes well and effortlessly style .\r\n\r\nDetails :\r\n• Material: Premium Textured Satin\r\n• Design: Straight Cut / 2.0 m x 0.8 m\r\n• Finishing: Baby Hem', 30, 'LUXANNE CHAMPAGNE.jpg'),
(101, 'Luxanne Beige', 'Luxanne material is made of very premium satin with dot textured , material is light , flowy that give a drapes well and effortlessly style .\r\n\r\nDetails :\r\n• Material: Premium Textured Satin\r\n• Design: Straight Cut / 2.0 m x 0.8 m\r\n• Finishing: Baby Hem', 30, 'LUXANNE BEIGE_2.jpg'),
(102, 'Luxanne Camel', 'Luxanne material is made of very premium satin with dot textured , material is light , flowy that give a drapes well and effortlessly style .\r\n\r\nDetails :\r\n• Material: Premium Textured Satin\r\n• Design: Straight Cut / 2.0 m x 0.8 m\r\n• Finishing: Baby Hem', 30, 'LUXANNE CAMEL_2.jpg'),
(103, 'Luxanne Toffee', 'Luxanne material is made of very premium satin with dot textured , material is light , flowy that give a drapes well and effortlessly style .\r\n\r\nDetails :\r\n• Material: Premium Textured Satin\r\n• Design: Straight Cut / 2.0 m x 0.8 m\r\n• Finishing: Baby Hem', 30, 'LUXANNE TOFFEE_2.jpg'),
(104, 'Luxanne Dusty Blue', 'Luxanne material is made of very premium satin with dot textured , material is light , flowy that give a drapes well and effortlessly style .\r\n\r\nDetails :\r\n• Material: Premium Textured Satin\r\n• Design: Straight Cut / 2.0 m x 0.8 m\r\n• Finishing: Baby Hem', 30, 'LUXANNE DUSTY BLUE.jpg'),
(105, 'Luxanne Black', 'Luxanne material is made of very premium satin with dot textured , material is light , flowy that give a drapes well and effortlessly style .\r\n\r\nDetails :\r\n• Material: Premium Textured Satin\r\n• Design: Straight Cut / 2.0 m x 0.8 m\r\n• Finishing: Baby Hem', 30, 'LUXANNE BLACK_2.jpg'),
(106, 'Luxanne Purplish Grey', 'Luxanne material is made of very premium satin with dot textured , material is light , flowy that give a drapes well and effortlessly style .\r\n\r\nDetails :\r\n• Material: Premium Textured Satin\r\n• Design: Straight Cut / 2.0 m x 0.8 m\r\n• Finishing: Baby Hem', 30, 'LUXANNE PURPLISH GREY.jpg'),
(107, 'Luxanne Rich Roses', 'Luxanne material is made of very premium satin with dot textured , material is light , flowy that give a drapes well and effortlessly style .\r\n\r\nDetails :\r\n• Material: Premium Textured Satin\r\n• Design: Straight Cut / 2.0 m x 0.8 m\r\n• Finishing: Baby Hem', 30, 'LUXANNE RICHROSES_2.jpg'),
(108, 'Luxanne Dusty Mint', 'Luxanne material is made of very premium satin with dot textured , material is light , flowy that give a drapes well and effortlessly style .\r\n\r\nDetails :\r\n• Material: Premium Textured Satin\r\n• Design: Straight Cut / 2.0 m x 0.8 m\r\n• Finishing: Baby Hem', 30, 'LUXANNE DUSTY MINT_2.jpg'),
(109, 'Luxanne Peanut Butter', 'Luxanne material is made of very premium satin with dot textured , material is light , flowy that give a drapes well and effortlessly style .\r\n\r\nDetails :\r\n• Material: Premium Textured Satin\r\n• Design: Straight Cut / 2.0 m x 0.8 m\r\n• Finishing: Baby Hem', 30, 'LUXANNE PEANUT BUTTER_2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `password`, `user_type`) VALUES
(10, 'admin A', 'admin01@gmail.com', '698d51a19d8a121ce581499d7b701668', 'admin'),
(14, 'user A', 'user01@gmail.com', '698d51a19d8a121ce581499d7b701668', 'user'),
(15, 'user B', 'user02@gmail.com', '698d51a19d8a121ce581499d7b701668', 'user'),
(16, 'natrah', 'natrah@gmail.com', '433f0ea244f41400b0ac554196f78c03', 'user'),
(19, 'fareenasamirah', 'fynafaryna@gmail.com', '202cb962ac59075b964b07152d234b70', 'user'),
(20, 'fatin', 'fatin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'user'),
(21, 'Ina Aina', 'inaina66@gmail.com', 'a0fb2daa33c637d078d1d276dd453ea2', 'user'),
(22, 'aimansazali', 'aiman11@gmail.com', '5fa884f5155571a89ad44631d22873d4', 'user'),
(23, 'aleenaakira', 'aleena99@gmail.com', '20ce61319e3a050906e2323cedce34fa', 'user'),
(24, 'nurzulfaqar', 'zulfaqarnur@gmail.com', '793fa3b255d140c4a5482d9532dd22cb', 'user'),
(25, 'Aaliyah Baiyinah', 'aaliyahbaiyinah@gmail.com', 'a201c994a696e89faf462486ac006abe', 'user'),
(26, 'Fariza00', 'zulfarizakakjah@gmail.com', '6b3acb5abc461816771e8db20cbaad0f', 'user'),
(27, 'Basy Cute', 'basyeeracomel@gmail.com', '425f328166e95570090f9a05cc38e909', 'user'),
(28, 'Belinn', 'belinda77@gmail.com', 'af998104529e63ed365ca41e127d6a7b', 'user'),
(29, 'chanlia', 'chanlia642576@gmail.com', '8b2bba34516fee569e630e4e9a40e6fd', 'user'),
(30, 'harithmat', 'mharith@gmail.com', '71285e16b8dd789de09425e7c0bd2c3d', 'user'),
(31, 'fatimah', 'azhzahra@gmail.com', '1847474084cc37bae59a25ce27cdadf7', 'user'),
(32, 'juju', 'jujumuhammad@gmail.com', '0348dcd774a2892097b9d5c84ce882d3', 'user'),
(33, 'musfira', 'musfira@gmail.com', 'ef2ec674d26a4d5239867007654f022e', 'user'),
(34, 'adreena', 'adreenamaryam@gmail.com', '59bb03621bf829b82900917ce812df2d', 'user'),
(35, 'syuhanaafiqah', 'syuhana00@gmail.com', '3e320ad7ee09896c6ed7ece09f7a97e4', 'user'),
(36, 'adawiyah', 'adawiyah87@gmail.com', '19df78bd058fb08b802f9bd4e466019d', 'user'),
(37, 'dianaeryna', 'nanaeryna@gmail.com', 'c9c6a984a785d9547f0061a5f623fe6b', 'user'),
(38, 'fanaelaina', 'fanaelaina@gmail.com', '94703d2c9847622359f34dec3ba69b1c', 'user'),
(39, 'firenza', 'firenzagorg@gmail.com', 'fc917c5d69d2e41bab96682b84ce579d', 'user'),
(40, 'nadeeramawaddah', 'mawaddah@gmail.com', '4c7f0c9893632c4faf1a2abbff2a9bb4', 'user'),
(41, 'nadjaqt', 'nadjacutie@gmail.com', '3de207203d57db86dd9216e247fbc501', 'user'),
(42, 'izzatzak', 'izzatzakwan@gmail.com', '62172e6a08bf5bae8fe2d6f329634492', 'user'),
(43, 'iman2', 'imaniman@gmail.com', '889153a88e7ad25dc9e9e029f71f9b52', 'user'),
(44, 'malik', 'malikhalim@gmail.com', '70ca64fb26a451ea45178e0aaa7e4559', 'user'),
(45, 'adeeb', 'adeebnazreen@gmail.com', '3603626e16cb609d5ee41516e1610356', 'user'),
(46, 'amnanmad', 'amnanmad@gmail.com', 'afeae7081e938d2ab70095c86c20d8fa', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(65, 20, 30, 'Sofeya Blue Grey', 15, 'SOFEYA BLUEGREY_2.jpg'),
(66, 20, 35, 'Sofeya Nutty Brown', 15, 'SOFEYA NUTTY BROWN.jpg'),
(67, 21, 26, 'Sofeya Aqua Blue', 15, 'SOFEYA AQUA BLUE_2.jpg'),
(68, 21, 103, 'Luxanne Toffee', 30, 'LUXANNE TOFFEE_2.jpg'),
(69, 22, 52, 'Zahra Qirana', 25, 'ZAHRA QIRANA_2.jpg'),
(70, 22, 103, 'Luxanne Toffee', 30, 'LUXANNE TOFFEE_2.jpg'),
(72, 23, 50, 'Zahra Adelia', 25, 'ZAHRA ADELIA_2.jpg'),
(73, 23, 69, 'Awadah Golden', 35, 'AWADAH GOLDEN.jpg'),
(74, 24, 34, 'Sofeya Pale Ivory', 15, 'SOFEYA PALE IVORY_2.jpg'),
(75, 24, 47, 'Qaseh Sulam Nude Brown', 45, 'QASEH NUDE BROWN_2.jpg'),
(76, 24, 31, 'Sofeya Mint Green', 15, 'SOFEYA MINT GREEN_2.jpg'),
(77, 25, 46, 'Qaseh Sulam OffWhite', 45, 'QASEH OFFWHITE.jpg'),
(78, 25, 48, 'Qaseh Sulam Dusty Pink', 45, 'QASEH DUSTY PINK.jpg'),
(79, 26, 25, 'Sofeya Apricot', 15, 'SOFEYA APRICOT_2.jpg'),
(80, 26, 35, 'Sofeya Nutty Brown', 15, 'SOFEYA NUTTY BROWN.jpg'),
(81, 26, 54, 'Zahra Ayana', 25, 'ZAHRA AYANA_2.jpg'),
(82, 26, 58, 'Fleur Pansy', 40, 'PANSY_2.jpg'),
(83, 26, 94, 'Ayra Dusty Green', 20, 'ayra_dusty_green_2.jpg'),
(84, 26, 98, 'Luxanne Mauve', 30, 'LUXANNE MAUVE.jpg'),
(86, 27, 30, 'Sofeya Blue Grey', 15, 'SOFEYA BLUEGREY_2.jpg'),
(87, 27, 45, 'Qaseh Sulam Black', 45, 'QASEH BLACK_2.jpg'),
(88, 27, 72, 'Awadah Dusty Crepe', 35, 'AWADAH DUSTY CREPE.jpg'),
(89, 28, 63, 'Awadah Midnight Blue', 35, 'AWADAH MIDNIGHT BLUE_2.jpg'),
(91, 31, 48, 'Qaseh Sulam Dusty Pink', 45, 'QASEH DUSTY PINK.jpg'),
(92, 33, 13, 'Sofeya Black', 15, 'SOFEYA BLACK.jpg'),
(93, 34, 24, 'Sofeya OffWhite', 15, 'SOFEYA OFFWHITE.jpg'),
(94, 35, 24, 'Sofeya OffWhite', 15, 'SOFEYA OFFWHITE.jpg'),
(95, 36, 97, 'Luxanne Stone Grey', 30, 'LUXANNE STONE GREY.jpg'),
(96, 37, 86, 'Ayra Nude Pink', 20, 'ayra_nude_pink.jpg'),
(97, 38, 82, 'Chenta Black', 50, 'CHENTA BLACK.jpg'),
(98, 39, 13, 'Sofeya Black', 15, 'SOFEYA BLACK.jpg'),
(99, 40, 31, 'Sofeya Mint Green', 15, 'SOFEYA MINT GREEN_2.jpg'),
(100, 41, 13, 'Sofeya Black', 15, 'SOFEYA BLACK.jpg'),
(101, 42, 59, 'Fleur Sweet', 40, 'SWEET PONY_2.jpg'),
(102, 44, 24, 'Sofeya OffWhite', 15, 'SOFEYA OFFWHITE.jpg'),
(103, 45, 25, 'Sofeya Apricot', 15, 'SOFEYA APRICOT_2.jpg'),
(104, 46, 89, 'Ayra Nude', 20, 'ayra_nude_2.jpg'),
(105, 31, 83, 'Chenta Sweet Beige', 50, 'CHENTA SWEET BEIGE.jpg'),
(106, 31, 105, 'Luxanne Black', 30, 'LUXANNE BLACK_2.jpg'),
(107, 44, 71, 'Awadah Viola', 35, 'AWADAH VIOLA.jpg'),
(108, 38, 66, 'Awadah Baby Blue', 35, 'AWADAH BABY BLUE_2.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `user_id` (`user_id`,`pid`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`),
  ADD KEY `user_id` (`user_id`,`pid`),
  ADD KEY `pid` (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `products` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `products` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
