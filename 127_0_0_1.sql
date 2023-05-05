-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 05, 2023 at 08:31 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `okopi`
--
CREATE DATABASE IF NOT EXISTS `okopi` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `okopi`;
--
-- Database: `otahub`
--
CREATE DATABASE IF NOT EXISTS `otahub` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `otahub`;

-- --------------------------------------------------------

--
-- Table structure for table `community`
--

DROP TABLE IF EXISTS `community`;
CREATE TABLE IF NOT EXISTS `community` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(50) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `text` varchar(1000) NOT NULL,
  `files` varchar(1000) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `community`
--

INSERT INTO `community` (`id`, `image`, `fullname`, `text`, `files`, `date`) VALUES
(51, '070841156240305202391616.png', 'ali', 'hi', '03052023113836.txt', '2023-05-03 11:49:43'),
(44, '3330305202392820.png', 'pete', '', '', '2023-05-03 11:49:43'),
(50, '070841156240305202391616.png', 'ali', 'how far my guy\r\ndkjak dhkjhdklafsfjdhkd dfhdk dk;a\r\n jd kdjkl;a\r\n jkjkljifaghf\r\n gfkfjjfkl', '03052023113208.pdf', '2023-05-03 11:49:43'),
(49, '070841156240305202391616.png', 'ali', 'your fada', '', '2023-05-03 11:49:43'),
(52, '070841156240305202391616.png', 'ali', 'how fAR', '03052023115347.png', '2023-05-03 11:53:47'),
(53, '070841156240305202391616.png', 'ali', 'hdhdh', '', '2023-05-03 12:47:05'),
(54, '011080903052023192451.png', 'David Ali', 'hello mr davidokopi777@gmail.com ', '', '2023-05-03 19:27:03'),
(55, '011080903052023192451.png', 'David Ali', 'helo mr benard', '03052023192802.tif', '2023-05-03 19:28:02'),
(56, '011080903052023192451.png', 'David Ali', 'helo mr benard', '03052023192834.png', '2023-05-03 19:28:34'),
(57, '070841156240305202391616.png', 'ali', 'ggg', '04052023204937.tif', '2023-05-04 20:49:37'),
(58, '070841156240305202391616.png', 'ali', 'ggg', '04052023205121.tif', '2023-05-04 20:51:21'),
(59, '070841156240305202391616.png', 'ali', 'ggg', '04052023205129.tif', '2023-05-04 20:51:29'),
(60, '070841156240305202391616.png', 'ali', 'ggg', '04052023205250.tif', '2023-05-04 20:52:50'),
(61, '070841156240305202391616.png', 'ali', 'ggg', '04052023205255.tif', '2023-05-04 20:52:55'),
(62, '070841156240305202391616.png', 'ali', 'ggg', '', '2023-05-04 20:55:05');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
CREATE TABLE IF NOT EXISTS `profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(100) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `session` varchar(10) NOT NULL,
  `image` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `user_id`, `fullname`, `username`, `email`, `phone`, `gender`, `session`, `image`) VALUES
(1, 1, 'david', 'david', 'david@gmail.com', '12312', '', '', '1231227042023123924.png'),
(2, 2, 'benard', 'benard', 'benard@gmail.com', '13123', 'female', '2021/2022', '1312327042023124422.png'),
(3, 7, 'david', 'michael', 'benarddavid493@gmail.com', '08035360258', 'custom', '2022/2023', '0803536025827042023141411.jpg'),
(7, 13, 'peter', 'davis', 'david4@gmail.com', '08080777', 'custume', '2020/2021', '0808077728042023134020.png'),
(6, 11, 'Isama Michael', 'isamamichael', 'isama@gmail.com', '90923042', 'Male', '2021/2022', '9092304228042023131928.png'),
(8, 6, 'samuel', 'david', 'okopi@gmail.com', '0000', 'Female', '2021/2022', '000028042023211601.png'),
(9, 3, 'david', 'davis', 'o@gmail', '08080777', 'Male', '2022/2023', '0808077728042023214249.png'),
(10, 14, 'David benarde', 'oband', 'benard04@gmail.com', '011', 'Male', '2020/2021', '01129042023134620.png'),
(11, 15, 'otokpa', 'okopi', 'williams@gmail.com', '911', 'Female', '2021/2022', '91129042023143037.png'),
(12, 25, 'ali', 'davis', 'dd@gmail.com', '07084115624', 'Male', '2021/2022', '070841156240305202391616.png'),
(19, 33, 'David Ali', 'benard', 'aliokopi@gmail.com', '0110809', 'Female', '2022/2023', '011080903052023193018.jpg'),
(13, 26, 'David benard', 'davis', 'ali1@gmail.com', '444', 'Male', '2020/2021', '44402052023105540.png'),
(14, 27, 'pete', 'david', 'ben2@gmail.com', '333', 'Male', '2020/2021', '3330305202392820.png'),
(15, 28, 'samuel', 'davis', 'alo@gmail.com', '0110809', 'Male', '2021/2022', '011080902052023112115.png'),
(16, 29, 'David benard', 'davis', 'ze@gmail.com', '08080777', 'Female', '2021/2022', '0808077702052023115342.png'),
(17, 31, 'david', 'okops', 'in@gmail.com', '08035360258', 'Female', '2021/2022', '0803536025802052023221459.png'),
(18, 32, 'David benard', 'okops', 'ao@gmail.com', '09030142083', 'Male', '2020/2021', '090301420830305202351053.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(4, 'mm@gmail', '333'),
(5, 'ema@gmail.com', 'kingdom'),
(6, 'okopi@gmail.com', '111'),
(7, 'benarddavid493@gmail.com', '2004'),
(8, 'aaa@gmail.com', '11111'),
(9, 'okopi4@gmail.com', '55555'),
(10, 'benarddavid44@gmail.com', '2004'),
(11, 'isama@gmail.com', 'isama'),
(12, 'okopi@gma', '7777'),
(13, 'david4@gmail.com', '2004'),
(14, 'benard04@gmail.com', '2004'),
(15, 'williams@gmail.com', '2004'),
(16, 'alio@gmail.com', 'dd'),
(17, 'qq@gmail.com', '33'),
(18, 'prie@gmail.com', '555'),
(19, 'davidoko@gmail.com', '33'),
(20, 'davidok@gmail.com', '44'),
(21, 'davidokopi7@gma', '99'),
(22, 'davido@gma', '33'),
(23, 'bernard@gmail.com', 'aaa'),
(24, 'b4@gmail.com', '11D@g'),
(25, 'dd@gmail.com', 'David@4'),
(26, 'ali1@gmail.com', 'David@4'),
(27, 'ben2@gmail.com', 'Benard@4'),
(28, 'alo@gmail.com', 'Benard@4'),
(29, 'zazu@gmail.com', 'Benard@4'),
(30, 'price@gmail.com', 'Kk9@9'),
(31, 'in@gmail.com', 'As@222'),
(32, 'ao@gmail.com', 'As@222'),
(33, 'aliokopi@gmail.com', 'As@222');
--
-- Database: `phptutorials`
--
CREATE DATABASE IF NOT EXISTS `phptutorials` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `phptutorials`;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `gender`, `email`, `phone`, `image`) VALUES
(3, 'samuel okpe', 'Male', 'samuel@gmail.com', '09030142083', '0903014208316042023234456.jpg'),
(2, 'David Okopi', 'Female', 'okopinicholasa@gmail.com', '08035360258', '0803536025816042023221308.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(1, 'a@gmail.com', '123'),
(7, 'o@gmail.com', '444'),
(3, 'jjj@gmail.com', '444'),
(4, 'samul@gmail.com', '222'),
(5, 'ali@gmail.com', '333'),
(6, 'co@gmail.com', '444'),
(8, 'price@gmail.com', '666'),
(9, 'k@gmail.com', '555'),
(10, 'ss@gmail.com', '999'),
(11, 'mm@gmail.com', '55'),
(12, 'da@gmail.com', '555');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
