-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2020 at 09:02 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `babakadhaba`
--

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE IF NOT EXISTS `reservation` (
  `reserv_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` text NOT NULL,
  `l_name` text NOT NULL,
  `num_guests` int(11) NOT NULL,
  `num_tables` int(11) NOT NULL,
  `rdate` date NOT NULL,
  `time_zone` text NOT NULL,
  `telephone` text NOT NULL,
  `comment` mediumtext NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_fk` int(11) NOT NULL,
  PRIMARY KEY (`reserv_id`),
  KEY `users_fk` (`user_fk`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=76 ;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`reserv_id`, `f_name`, `l_name`, `num_guests`, `num_tables`, `rdate`, `time_zone`, `telephone`, `comment`, `reg_date`, `user_fk`) VALUES
(62, 'Bill', 'Gates', 10, 4, '2020-10-08', '12:00 - 16:00', '21096321232', 'fsdfsd', '2020-10-07 23:38:47', 28),
(64, 'Ramesh', 'Ram', 6, 2, '2020-10-08', '12:00 - 16:00', '1321312', 'fdsfsd', '2020-10-07 23:43:58', 28),
(71, 'Ram', 'Rahim', 10, 4, '2020-10-08', '12:00 - 16:00', '2129632123', 'fsfsd', '2019-10-08 00:51:50', 28),
(72, 'Jignesh', 'Bond', 10, 4, '2020-10-09', '16:00 - 20:00', '2109632123', 'fsfsfsd', '2020-10-09 00:52:09', 28),
(73, 'Billy', 'Butcher', 30, 14, '2019-05-22', '12:00 - 16:00', '2109632123', 'dsadsadas', '2020-10-09 00:52:39', 28),
(74, 'Narendar', 'Moody', 6, 2, '2020-10-09', '12:00 - 16:00', '2129632123', '312312312', '2020-10-09 00:54:08', 28),
(75, 'Baba', 'Baba', 6, 2, '2020-10-09', '16:00 - 20:00', '2109632123', '', '2020-10-09 00:54:40', 28);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `role_id` int(5) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`role_id`),
  KEY `role_id` (`role_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`) VALUES
(1),
(2),
(3);

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE IF NOT EXISTS `schedule` (
  `schedule_id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `open_time` time NOT NULL DEFAULT '12:00:00',
  `close_time` time NOT NULL DEFAULT '00:00:00',
  PRIMARY KEY (`schedule_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`schedule_id`, `date`, `open_time`, `close_time`) VALUES
(6, '2019-05-15', '03:11:00', '11:11:00'),
(7, '2019-05-16', '01:00:00', '01:00:00'),
(8, '2019-05-18', '02:01:00', '15:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE IF NOT EXISTS `tables` (
  `tables_id` int(11) NOT NULL AUTO_INCREMENT,
  `t_date` date NOT NULL,
  `t_tables` int(11) NOT NULL,
  PRIMARY KEY (`tables_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`tables_id`, `t_date`, `t_tables`) VALUES
(6, '2019-05-17', 5),
(7, '2019-05-15', 10),
(8, '2019-05-10', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `uidUsers` tinytext NOT NULL,
  `emailUsers` tinytext NOT NULL,
  `pwdUsers` longtext NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `role_id` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`user_id`),
  KEY `role_id` (`role_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `uidUsers`, `emailUsers`, `pwdUsers`, `reg_date`, `role_id`) VALUES
(26, 'kappa', 'kapa@in.com', '$2y$10$AXUubKPLqRUX1DeorQ3AGOsBey7oaSNPF892EUR96unf..h25rsYq', '2019-04-30 19:51:07', 1),
(27, 'kappa1', 'ka11pa@in.com', '$2y$10$/VK5CmjZavvC4gdv3WFk5u.Th5luQTfpzigiYPSryoVdULSE57A.a', '2019-04-30 20:18:57', 1),
(28, 'kappa2', 'kappa2@hotmail.com', '$2y$10$jfiG7gFvyQo..Cx1ZwktaOcs.83Zhsn0fkvq.9CvQCRA4Ognb/cBK', '2019-04-30 20:46:20', 2),
(29, 'ddsa', 'kapa@in.comq', '$2y$10$sH8sr2sI//qD5bg/D/sGeuDYb3COyUEwvNCKTLBfWUitVi2s/Z0ZG', '2019-05-01 00:25:37', 1),
(30, 'kappakeepo', '1kapa@in.com', '$2y$10$ONn5KIyEJ.iyFKQIZVHjiurhibs/udkh6W8BLqz1Anj/z9j2VbL6y', '2019-05-01 00:37:43', 1),
(31, 'kappakeepo12', 'kap11a@in.com', '$2y$10$WZjlyFoTvyAy/loojjLiE.0Ekka5nwcfAUnwIGM2FaR0g11ieVjeq', '2019-05-02 21:54:09', 1),
(32, 'fwtis', 'kappa1@in.gr', '$2y$10$3rZoKKI5idzOeRK.YUfcwe/7bL66dkU0o54w2uQ/PWpFPYR7T/Zk2', '2019-05-03 01:11:03', 1),
(33, 'kopelitsoua', 'effgfdgfdg@hotmail.com', '$2y$10$Ha0vNgl399uQveyAsp.MyuKteq9ZXZRH1yZ7XY2KZXU1O0HiQ0.CK', '2019-05-03 18:05:05', 1),
(34, 'lolas', 'lolas@in.gr', '$2y$10$Fgzedyphz9nYpLkXaGOc2u.K2SZby5m5t23Uo/3u/4kC8a6Uf9xTe', '2019-05-05 00:59:10', 1),
(35, 'Jogesh', 'jogesh@jamesh.com', '$2y$10$UqiXWP3srNck5UdJgL/fy.iZb5dKkdtnsV2M/L3m77Fc33c2xtcUy', '2020-10-18 08:35:03', 1),
(36, 'yash', 'yash@gmail.com', '$2y$10$Z7uMsiiP2/g2Y122Rbgg5ebMYjEqgo2n9pPiSu/P.RZ2aFvPpIJgK', '2020-11-02 14:47:00', 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `idusers` FOREIGN KEY (`user_fk`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`) ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
