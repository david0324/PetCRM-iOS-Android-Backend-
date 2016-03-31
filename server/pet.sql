-- phpMyAdmin SQL Dump
-- version 4.4.6.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 03, 2015 at 02:28 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pet`
--

-- --------------------------------------------------------

--
-- Table structure for table `android_tokens`
--

CREATE TABLE IF NOT EXISTS `android_tokens` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(100) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `io_tokens`
--

CREATE TABLE IF NOT EXISTS `io_tokens` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(100) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `io_tokens`
--

INSERT INTO `io_tokens` (`id`, `user_id`, `token`, `timestamp`) VALUES
(10, 37, '19d2dd0f933588dbedb7c9462ed945ac30bebb7c47017f314cb2c735c70a79f1', '2015-11-29 11:38:29'),
(11, 38, '19d2dd0f933588dbedb7c9462ed945ac30bebb7c47017f314cb2c735c70a79f1', '2015-11-29 12:18:12'),
(12, 39, '19d2dd0f933588dbedb7c9462ed945ac30bebb7c47017f314cb2c735c70a79f1', '2015-11-29 12:51:12'),
(13, 40, '19d2dd0f933588dbedb7c9462ed945ac30bebb7c47017f314cb2c735c70a79f1', '2015-11-29 12:53:47'),
(14, 41, '19d2dd0f933588dbedb7c9462ed945ac30bebb7c47017f314cb2c735c70a79f1', '2015-11-29 13:25:36'),
(15, 42, '19d2dd0f933588dbedb7c9462ed945ac30bebb7c47017f314cb2c735c70a79f1', '2015-11-29 13:27:09'),
(16, 45, '19d2dd0f933588dbedb7c9462ed945ac30bebb7c47017f314cb2c735c70a79f1', '2015-11-30 03:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `security`
--

CREATE TABLE IF NOT EXISTS `security` (
  `id` int(11) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `security`
--

INSERT INTO `security` (`id`, `description`) VALUES
(1, 'security1'),
(2, 'security2');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `group_id` int(11) NOT NULL,
  `password` varchar(300) DEFAULT NULL,
  `phone` varchar(100) NOT NULL,
  `zipcode` varchar(100) NOT NULL,
  `refcode` varchar(50) NOT NULL,
  `security_question` int(11) NOT NULL,
  `security_answer` varchar(100) NOT NULL,
  `fb_token` varchar(100) NOT NULL,
  `social_type` varchar(10) NOT NULL,
  `forgot_token` varchar(100) NOT NULL,
  `sessionId` char(50) DEFAULT '',
  `created_at` varchar(50) DEFAULT NULL,
  `updated_at` varchar(100) NOT NULL,
  `remember_token` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `firstname`, `lastname`, `group_id`, `password`, `phone`, `zipcode`, `refcode`, `security_question`, `security_answer`, `fb_token`, `social_type`, `forgot_token`, `sessionId`, `created_at`, `updated_at`, `remember_token`) VALUES
(1, 'admin@admin.com', 'Admin', 'Julian', 'Krol', 1, '$2y$10$zyDzY1mjl1B4U7jEEEldOuFcX/6v4iF6FoayKWx1fnF8neDXhErmW', '', '', '', 0, '', '', '', '', '', '0', '2015-12-01 22:20:08', 'xJUxWxuOsklAWMISBxusgZHh40t6fT37MxCpKgcOY48c7kqQndGqcFqc5T34');

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE IF NOT EXISTS `user_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` varchar(100) NOT NULL,
  `updated_at` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', '', ''),
(2, 'Service Provider', '', ''),
(3, 'Owner', '', ''),
(4, 'Vet', '', ''),
(5, 'Taxi', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `android_tokens`
--
ALTER TABLE `android_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `io_tokens`
--
ALTER TABLE `io_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `security`
--
ALTER TABLE `security`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `android_tokens`
--
ALTER TABLE `android_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `io_tokens`
--
ALTER TABLE `io_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `security`
--
ALTER TABLE `security`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
