-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2022 at 04:35 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `name`, `price`, `quantity`, `image`) VALUES
(3, 5, 'Kelas Flat Design - Adobe Illustrator', 250000, 1, 'Flat.png'),
(6, 22, 'Kelas Motion Graphic - Adobe After Effects', 300000, 1, 'Ae.png'),
(7, 118, 'Kelas Motion Graphic - Adobe After Effects', 300000, 1, 'Ae.png');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(3, 5, 'ilham', 'user01@gmail.com', '089516643334', 'Halooo'),
(5, 5, 'Dono', 'user01@gmail.com', '0888888', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(1, 4, 'Mamang', '08887120', 'user01@gmail.com', 'cash on delivery', 'flat no. 2, PPLI ARJASA, Jember, Indonesia - 12344', ', Kelas Adobe Ilustration (1) ', 100, '25-Nov-2022', 'completed'),
(2, 22, 'mahmud', '086654433332', 'mahmud1@gmail.com', 'cash on delivery', 'flat no. 10, , ,  - 123333', ', Kelas Manipulation - Adobe Photoshop (1) ', 100000, '28-Nov-2022', 'pending'),
(3, 22, 'samsudin', '08172727282', 'mahmud1@gmail.com', 'credit card', 'Ex RT 02. 3, Panjilaras, Jember, Indonesa - 234', ', Kelas 3d - Blender (1) ', 400000, '28-Nov-2022', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(9, 'Kelas Flat Design - Adobe Illustrator', 250000, 'Flat.png'),
(10, 'Kelas Manipulation - Adobe Photoshop', 100000, 'manipulation.png'),
(11, 'Kelas 3d - Blender', 400000, '3d.png'),
(12, 'Kelas Motion Graphic - Adobe After Effects', 300000, 'Ae.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user',
  `code` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`, `code`) VALUES
(1, 'ilham zamzami', 'zamzamiilham84@gmail.com', '274a13605123c22ca1a09ca8c65c2423', 'user', 523965),
(3, 'ilhan', 'admin@gmail.com', '202cb962ac59075b964b07152d234b70', 'admin', 923924),
(5, 'Ilham', 'user01@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'user', NULL),
(6, 'fahmi', 'fahmi@gmial.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(7, 'rifqi zamzami', 'rfiqi1@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(9, 'rio zamzami', 'rio01@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(10, 'yusron zamzami', 'yusron@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(11, 'zamzami', 'admin2@gmail.com', '202cb962ac59075b964b07152d234b70', 'admin', NULL),
(12, 'zuam zamzami', 'zuam@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(13, 'faisal Zamzami', 'faisal@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(21, 'samsudin', 'samsudin@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(22, 'mahmud', 'mahmud1@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'user', NULL),
(23, 'rifqi husnan', 'rifqi1@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(24, 'ilham yonim', 'ilham02@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(25, 'yonim1', 'yonin1@gmail.con', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(26, 'yonim2', 'yonim2@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(27, 'yonim3', 'yonim3@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(28, 'yonim4', 'yonim4@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(29, 'yonim5', 'yonim5@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(30, 'yonim6', 'yonim6@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(31, 'yonim7', 'yonim7@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(32, 'yonim8', 'yonim8@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(33, 'yonim9', 'yonim9@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(34, 'yonim10', 'yonim10@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(35, 'yonim12', 'yonim11@gmail.com', '123', 'ee11cbb19052e40b07aa', NULL),
(36, 'yonim13', 'yonim13@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(37, 'yonim14', 'yonim131@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(38, 'yonim15', 'yonim132@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(39, 'yonim16', 'yonim133@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(40, 'yonim17', 'yonim134@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(41, 'yonim18', 'yonim135@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(42, 'yonim19', 'yonim136@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(43, 'yonim20', 'yonim137@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(44, 'yonim21', 'yonim138@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(45, 'yonim22', 'yonim139@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(46, 'yonim24', 'yonim141@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(47, 'yonim35', 'yonim142@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(48, 'yonim46', 'yonim143@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(49, 'yonim57', 'yonim144@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(50, 'yonim68', 'yonim145@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(51, 'yonim79', 'yonim146@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(52, 'yonim80', 'yonim147@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(53, 'yonim91', 'yonim148@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(54, 'yonim102', 'yonim149gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(55, 'yonim34', 'yonim151@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(56, 'yonim45', 'yonim152@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(57, 'yonim56', 'yonim153@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(58, 'yonim67', 'yonim154@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(59, 'yonim78', 'yonim155@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(60, 'yonim89', 'yonim156@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(61, 'yonim90', 'yonim157@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(62, 'yonim101', 'yonim158@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(63, 'yonim1002', 'yonim159gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(64, 'yonim43', 'yonim171@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(65, 'yonim53', 'yonim172@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(66, 'yonim63', 'yonim173@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(67, 'yonim73', 'yonim174@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(68, 'yonim83', 'yonim175@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(69, 'yonim93', 'yonim576@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(70, 'yonim103', 'yonim177@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(71, 'yonim1003', 'yonim178@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(72, 'yonim10003', 'yonim179gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(73, 'yonim44', 'yonim181@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(74, 'yonim54', 'yonim182@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(75, 'yonim64', 'yonim183@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(76, 'yonim74', 'yonim184@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(77, 'yonim84', 'yonim185@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(78, 'yonim94', 'yonim586@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(79, 'yonim104', 'yonim187@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(80, 'yonim1004', 'yonim188@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(81, 'yonim10004', 'yonim189gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(82, 'yonim45', 'yonim191@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(83, 'yonim55', 'yonim92@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(84, 'yonim65', 'yonim983@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(85, 'yonim75', 'yonim194@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(86, 'yonim85', 'yonim195@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(87, 'yonim95', 'yonim596@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(88, 'yonim105', 'yonim197@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(89, 'yonim1005', 'yonim198@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(90, 'yonim10005', 'yonim199gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(91, 'yonim46', 'yonim1911@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(92, 'yonim56', 'yonim921@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(93, 'yonim66', 'yonim9831@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(94, 'yonim76', 'yonim1941@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(95, 'yonim86', 'yonim1951@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(96, 'yonim96', 'yonim5961@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(97, 'yonim106', 'yonim1971@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(98, 'yonim1006', 'yonim1981@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(99, 'yonim10006', 'yonim1991@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(100, 'yonim47', 'yonim1912@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(101, 'yonim48', 'yonim1913@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(102, 'yonim461', 'yonim1912@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(103, 'yonim561', 'yonim922@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(104, 'yonim661', 'yonim9832@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(105, 'yonim761', 'yonim1942@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(106, 'yonim861', 'yonim1952@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(107, 'yonim961', 'yonim5962@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(108, 'yonim1061', 'yonim1972@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(109, 'yonim10061', 'yonim1982@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(110, 'yonim100061', 'yonim1992@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL),
(118, 'iil', 'iil123@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
