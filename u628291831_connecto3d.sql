-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 14, 2020 at 04:08 PM
-- Server version: 10.4.15-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u628291831_connecto3d`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_info`
--

CREATE TABLE `about_info` (
  `id` int(255) NOT NULL,
  `userid` varchar(300) NOT NULL,
  `year` varchar(300) NOT NULL,
  `company` varchar(300) NOT NULL,
  `title` varchar(300) NOT NULL,
  `description` longtext NOT NULL,
  `type` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about_info`
--

INSERT INTO `about_info` (`id`, `userid`, `year`, `company`, `title`, `description`, `type`) VALUES
(1, '434155361070', '2012-2014', 'Degree', 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc viverra est turpis, vitae consequat ligula elementum eget. Nunc turpis dolor, dictum eu suscipit tristique, euismod ac est. Curabitur sit amet nisi ut purus fermentum viverra. Proin enim felis, venenatis vel pellentesque facilisis, mattis vitae metus. Donec eget risus massa. Nunc aliquam iaculis tristique. Ut id purus aliquet, gravida odio ac, ullamcorper quam. ', 2),
(2, '434155361070', '2014-2016', 'TheMashaBrand', 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc viverra est turpis, vitae consequat ligula elementum eget. Nunc turpis dolor, dictum eu suscipit tristique, euismod ac est. Curabitur sit amet nisi ut purus fermentum viverra. Proin enim felis, venenatis vel pellentesque facilisis, mattis vitae metus. Donec eget risus massa. Nunc aliquam iaculis tristique. Ut id purus aliquet, gravida odio ac, ullamcorper quam. ', 1),
(3, '324036228471', '2012-2014', 'Degree', 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc viverra est turpis, vitae consequat ligula elementum eget. Nunc turpis dolor, dictum eu suscipit tristique, euismod ac est. Curabitur sit amet nisi ut purus fermentum viverra. Proin enim felis, venenatis vel pellentesque facilisis, mattis vitae metus. Donec eget risus massa. Nunc aliquam iaculis tristique. Ut id purus aliquet, gravida odio ac, ullamcorper quam. ', 2),
(4, '324036228471', '2014-2016', 'TheMashaBrand', 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc viverra est turpis, vitae consequat ligula elementum eget. Nunc turpis dolor, dictum eu suscipit tristique, euismod ac est. Curabitur sit amet nisi ut purus fermentum viverra. Proin enim felis, venenatis vel pellentesque facilisis, mattis vitae metus. Donec eget risus massa. Nunc aliquam iaculis tristique. Ut id purus aliquet, gravida odio ac, ullamcorper quam. ', 1),
(5, '228145236254', '2012-2014', 'Degree', 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc viverra est turpis, vitae consequat ligula elementum eget. Nunc turpis dolor, dictum eu suscipit tristique, euismod ac est. Curabitur sit amet nisi ut purus fermentum viverra. Proin enim felis, venenatis vel pellentesque facilisis, mattis vitae metus. Donec eget risus massa. Nunc aliquam iaculis tristique. Ut id purus aliquet, gravida odio ac, ullamcorper quam. ', 2),
(6, '228145236254', '2014-2016', 'TheMashaBrand', 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc viverra est turpis, vitae consequat ligula elementum eget. Nunc turpis dolor, dictum eu suscipit tristique, euismod ac est. Curabitur sit amet nisi ut purus fermentum viverra. Proin enim felis, venenatis vel pellentesque facilisis, mattis vitae metus. Donec eget risus massa. Nunc aliquam iaculis tristique. Ut id purus aliquet, gravida odio ac, ullamcorper quam. ', 1),
(7, '305378125552', '2012-2014', 'Degree', 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc viverra est turpis, vitae consequat ligula elementum eget. Nunc turpis dolor, dictum eu suscipit tristique, euismod ac est. Curabitur sit amet nisi ut purus fermentum viverra. Proin enim felis, venenatis vel pellentesque facilisis, mattis vitae metus. Donec eget risus massa. Nunc aliquam iaculis tristique. Ut id purus aliquet, gravida odio ac, ullamcorper quam. ', 2),
(8, '305378125552', '2014-2016', 'TheMashaBrand', 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc viverra est turpis, vitae consequat ligula elementum eget. Nunc turpis dolor, dictum eu suscipit tristique, euismod ac est. Curabitur sit amet nisi ut purus fermentum viverra. Proin enim felis, venenatis vel pellentesque facilisis, mattis vitae metus. Donec eget risus massa. Nunc aliquam iaculis tristique. Ut id purus aliquet, gravida odio ac, ullamcorper quam. ', 1),
(9, '199476311866', '2012-2014', 'Degree', 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc viverra est turpis, vitae consequat ligula elementum eget. Nunc turpis dolor, dictum eu suscipit tristique, euismod ac est. Curabitur sit amet nisi ut purus fermentum viverra. Proin enim felis, venenatis vel pellentesque facilisis, mattis vitae metus. Donec eget risus massa. Nunc aliquam iaculis tristique. Ut id purus aliquet, gravida odio ac, ullamcorper quam. ', 2),
(10, '199476311866', '2014-2016', 'TheMashaBrand', 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc viverra est turpis, vitae consequat ligula elementum eget. Nunc turpis dolor, dictum eu suscipit tristique, euismod ac est. Curabitur sit amet nisi ut purus fermentum viverra. Proin enim felis, venenatis vel pellentesque facilisis, mattis vitae metus. Donec eget risus massa. Nunc aliquam iaculis tristique. Ut id purus aliquet, gravida odio ac, ullamcorper quam. ', 1),
(11, '296482705384', '2012-2014', 'Degree', 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc viverra est turpis, vitae consequat ligula elementum eget. Nunc turpis dolor, dictum eu suscipit tristique, euismod ac est. Curabitur sit amet nisi ut purus fermentum viverra. Proin enim felis, venenatis vel pellentesque facilisis, mattis vitae metus. Donec eget risus massa. Nunc aliquam iaculis tristique. Ut id purus aliquet, gravida odio ac, ullamcorper quam. ', 2),
(12, '296482705384', '2014-2016', 'TheMashaBrand', 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc viverra est turpis, vitae consequat ligula elementum eget. Nunc turpis dolor, dictum eu suscipit tristique, euismod ac est. Curabitur sit amet nisi ut purus fermentum viverra. Proin enim felis, venenatis vel pellentesque facilisis, mattis vitae metus. Donec eget risus massa. Nunc aliquam iaculis tristique. Ut id purus aliquet, gravida odio ac, ullamcorper quam. ', 1),
(13, '645447357569', '2012-2014', 'Degree', 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc viverra est turpis, vitae consequat ligula elementum eget. Nunc turpis dolor, dictum eu suscipit tristique, euismod ac est. Curabitur sit amet nisi ut purus fermentum viverra. Proin enim felis, venenatis vel pellentesque facilisis, mattis vitae metus. Donec eget risus massa. Nunc aliquam iaculis tristique. Ut id purus aliquet, gravida odio ac, ullamcorper quam. ', 2),
(14, '645447357569', '2014-2016', 'TheMashaBrand', 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc viverra est turpis, vitae consequat ligula elementum eget. Nunc turpis dolor, dictum eu suscipit tristique, euismod ac est. Curabitur sit amet nisi ut purus fermentum viverra. Proin enim felis, venenatis vel pellentesque facilisis, mattis vitae metus. Donec eget risus massa. Nunc aliquam iaculis tristique. Ut id purus aliquet, gravida odio ac, ullamcorper quam. ', 1),
(15, '715478889450', '2012-2014', 'Degree', 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc viverra est turpis, vitae consequat ligula elementum eget. Nunc turpis dolor, dictum eu suscipit tristique, euismod ac est. Curabitur sit amet nisi ut purus fermentum viverra. Proin enim felis, venenatis vel pellentesque facilisis, mattis vitae metus. Donec eget risus massa. Nunc aliquam iaculis tristique. Ut id purus aliquet, gravida odio ac, ullamcorper quam. ', 2),
(16, '715478889450', '2014-2016', 'TheMashaBrand', 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc viverra est turpis, vitae consequat ligula elementum eget. Nunc turpis dolor, dictum eu suscipit tristique, euismod ac est. Curabitur sit amet nisi ut purus fermentum viverra. Proin enim felis, venenatis vel pellentesque facilisis, mattis vitae metus. Donec eget risus massa. Nunc aliquam iaculis tristique. Ut id purus aliquet, gravida odio ac, ullamcorper quam. ', 1),
(17, '753678237313', '2012-2014', 'Degree', 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc viverra est turpis, vitae consequat ligula elementum eget. Nunc turpis dolor, dictum eu suscipit tristique, euismod ac est. Curabitur sit amet nisi ut purus fermentum viverra. Proin enim felis, venenatis vel pellentesque facilisis, mattis vitae metus. Donec eget risus massa. Nunc aliquam iaculis tristique. Ut id purus aliquet, gravida odio ac, ullamcorper quam. ', 2),
(18, '753678237313', '2014-2016', 'TheMashaBrand', 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc viverra est turpis, vitae consequat ligula elementum eget. Nunc turpis dolor, dictum eu suscipit tristique, euismod ac est. Curabitur sit amet nisi ut purus fermentum viverra. Proin enim felis, venenatis vel pellentesque facilisis, mattis vitae metus. Donec eget risus massa. Nunc aliquam iaculis tristique. Ut id purus aliquet, gravida odio ac, ullamcorper quam. ', 1),
(19, '233802410288', '2012-2014', 'Degree', 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc viverra est turpis, vitae consequat ligula elementum eget. Nunc turpis dolor, dictum eu suscipit tristique, euismod ac est. Curabitur sit amet nisi ut purus fermentum viverra. Proin enim felis, venenatis vel pellentesque facilisis, mattis vitae metus. Donec eget risus massa. Nunc aliquam iaculis tristique. Ut id purus aliquet, gravida odio ac, ullamcorper quam. ', 2),
(20, '233802410288', '2014-2016', 'TheMashaBrand', 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc viverra est turpis, vitae consequat ligula elementum eget. Nunc turpis dolor, dictum eu suscipit tristique, euismod ac est. Curabitur sit amet nisi ut purus fermentum viverra. Proin enim felis, venenatis vel pellentesque facilisis, mattis vitae metus. Donec eget risus massa. Nunc aliquam iaculis tristique. Ut id purus aliquet, gravida odio ac, ullamcorper quam. ', 1),
(22, '212335505903', '2010 - 2014', 'TheMashaBrand ff', 'Simple Freelance Marketplace System', 'Simple Freelance Marketplace System', 1),
(25, '212335505903', '2010 - 2014', 'Degree', 'Computer Science test', 'Computer Science', 2);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(255) NOT NULL,
  `adminid` varchar(300) NOT NULL,
  `username` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `name` varchar(300) NOT NULL,
  `email` text NOT NULL,
  `imagelocation` text NOT NULL,
  `tokencode` text NOT NULL,
  `joined` datetime NOT NULL,
  `user_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `adminid`, `username`, `password`, `name`, `email`, `imagelocation`, `tokencode`, `joined`, `user_type`) VALUES
(1, '1471436678', 'Admin', '$2y$12$I06YRrQtMW./7ycYoZUeje6ynW/43DKxNwc6/vQZAYaO2oWqVBXNm', 'The Admin', 'admin@wave.com', 'EJxBQbStvXjl6y.png', '', '2016-08-17 14:24:38', 1);

-- --------------------------------------------------------

--
-- Table structure for table `b8_wordlist`
--

CREATE TABLE `b8_wordlist` (
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `count_ham` int(11) DEFAULT NULL,
  `count_spam` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b8_wordlist`
--

INSERT INTO `b8_wordlist` (`token`, `count_ham`, `count_spam`) VALUES
('b8*dbversion', 3, NULL),
('b8*texts', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(255) NOT NULL,
  `name` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(11, 'Graphics & Design'),
(13, 'Cartoons'),
(14, 'Flyers & Brochures'),
(15, 'Illustration'),
(16, 'Logo Design'),
(18, 'Social Media Graphics'),
(19, 'T-Shirts'),
(20, 'Writing & Translation'),
(21, 'Article & Blog Writing'),
(22, 'Proofreading & Editing'),
(23, 'SEO Keyword Optimization'),
(26, 'Web Design & UI/ UX'),
(27, 'Website Builders'),
(28, 'Wordpress Themes & Plugins'),
(29, 'Mobile App Development'),
(30, 'Animation & 3D'),
(31, 'Management & Finance'),
(32, 'Sales & Marketing'),
(33, 'Web, Mobile & Software Development');

-- --------------------------------------------------------

--
-- Table structure for table `chat_on`
--

CREATE TABLE `chat_on` (
  `id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `by_from` int(11) NOT NULL,
  `message` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` int(11) NOT NULL,
  `created_at` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chat_on`
--

INSERT INTO `chat_on` (`id`, `job_id`, `user_id`, `by_from`, `message`, `is_read`, `created_at`) VALUES
(26, 14, 344, 2, 'hello', 0, '2020-02-08 16:16:20'),
(27, 14, 344, 2, 'i am facing issue', 0, '2020-02-08 16:16:28'),
(28, 14, 0, 0, 'yes tell me\n', 0, '2020-02-08 16:17:26'),
(29, 14, 344, 2, 'nice', 0, '2020-02-08 16:17:35'),
(30, 14, 0, 0, 'ok', 0, '2020-02-08 16:17:40'),
(31, 13, 344, 2, 'gtt', 0, '2020-02-08 16:20:36'),
(32, 8, 344, 2, 'hi', 0, '2020-02-08 16:21:11'),
(33, 13, 0, 0, 'omg', 0, '2020-02-08 16:21:26'),
(34, 14, 344, 2, 'heello', 0, '2020-02-09 23:40:08'),
(35, 15, 344, 2, 'hi test', 0, '2020-02-10 08:13:38'),
(36, 15, 344, 2, 'hello this is developer test', 0, '2020-02-10 08:14:01'),
(37, 15, 344, 2, 'hello this is developer test', 0, '2020-02-10 08:14:15'),
(38, 14, 0, 0, 'hello', 0, '2020-02-12 04:49:22'),
(39, 14, 0, 0, 'I want to test\n', 0, '2020-02-12 04:49:39'),
(40, 18, 344, 2, 'Hello\n', 0, '2020-02-29 13:29:30'),
(41, 18, 344, 2, 'Hello\n', 0, '2020-02-29 13:29:34'),
(42, 15, 344, 2, 'Due to COVID-19 \r\n\r\n', 0, '2020-03-20 12:42:16'),
(43, 20, 344, 2, 'Hello\n', 0, '2020-04-17 06:15:25'),
(44, 21, 344, 2, 'test\n', 0, '2020-05-06 00:42:15'),
(45, 25, 399, 2, 'gtt', 0, '2020-05-06 09:43:57'),
(46, 26, 399, 2, 'acv', 0, '2020-05-06 12:17:01'),
(47, 27, 344, 2, 'hotmail', 0, '2020-05-08 08:02:12'),
(48, 27, 344, 2, 'gmail', 0, '2020-05-08 08:03:22'),
(49, 27, 344, 2, 'phone\n', 0, '2020-05-08 08:04:14'),
(50, 27, 344, 2, '030400', 0, '2020-05-08 08:04:23'),
(51, 27, 344, 2, 'email\n\n', 0, '2020-05-08 08:04:37'),
(52, 27, 344, 2, 'yahoo.com\n', 0, '2020-05-08 08:14:17'),
(53, 27, 344, 2, 'gmail.com\n\n', 0, '2020-05-08 08:14:26'),
(54, 37, 344, 2, 'FF\n', 0, '2020-06-18 13:05:35'),
(55, 37, 344, 2, 'fff', 0, '2020-06-18 13:05:38'),
(56, 37, 344, 2, 'fff', 0, '2020-06-18 13:05:39'),
(57, 37, 344, 2, 'ff', 0, '2020-06-18 13:05:40'),
(58, 45, 407, 2, 'hi', 0, '2020-07-08 07:06:48'),
(59, 42, 344, 2, 'd', 0, '2020-07-23 16:08:08'),
(60, 0, 361, 2, 'TEXT', 0, '2020-08-14 15:27:10'),
(61, 0, 344, 2, 'TEXT', 0, '2020-08-14 15:37:35'),
(62, 42, 344, 2, 'He;;p\n', 0, '2020-08-14 15:38:10'),
(63, 0, 344, 2, 'Hello', 0, '2020-08-14 15:38:50'),
(64, 42, 344, 2, 'Hello', 0, '2020-08-14 15:39:44'),
(65, 42, 344, 2, 'Just', 0, '2020-08-14 15:40:12'),
(66, 42, 344, 2, 'Just', 0, '2020-08-14 15:40:32'),
(67, 42, 344, 2, 'Just', 0, '2020-09-02 11:47:40'),
(68, 42, 3, 2, 'Just', 0, '2020-09-02 11:47:52'),
(69, 42, 3, 2, 'Just123123', 0, '2020-09-02 11:48:01'),
(70, 42, 344, 2, 'Just', 0, '2020-09-07 15:15:24'),
(71, 42, 344, 2, 'Just\n', 0, '2020-09-14 02:43:11'),
(72, 42, 344, 2, 'hi\n', 0, '2020-09-14 05:34:35'),
(73, 42, 344, 2, 'hi', 0, '2020-09-14 11:53:37'),
(74, 42, 344, 2, '😴', 0, '2020-09-14 14:30:19'),
(75, 42, 344, 2, 'Just', 0, '2020-09-14 14:30:45'),
(76, 42, 344, 2, '🤗', 0, '2020-09-14 14:32:04'),
(77, 42, 344, 2, 'Hello', 0, '2020-09-14 14:32:11'),
(78, 42, 344, 2, 'It’s ok now', 0, '2020-09-14 14:32:24'),
(79, 42, 344, 2, 'Ffdfdfd\nF\nDf\nDf\nDfdfd', 0, '2020-09-14 14:32:32'),
(80, 24, 344, 2, 'Hi', 0, '2020-09-14 14:33:19'),
(81, 42, 344, 2, 'That ‘s how it works', 0, '2020-09-14 16:37:09'),
(82, 42, 344, 2, 'Hello', 0, '2020-09-16 05:18:30'),
(83, 61, 344, 2, 'hi', 0, '2020-09-18 06:18:20'),
(84, 61, 344, 2, 'hello', 0, '2020-09-18 07:06:13'),
(85, 42, 344, 2, 'Just', 0, '2020-09-18 07:06:58'),
(86, 61, 344, 2, 'are you there?', 0, '2020-09-18 07:27:03'),
(87, 61, 344, 2, ':)', 0, '2020-09-18 07:27:36'),
(88, 81, 344, 2, 'Hi', 0, '2020-09-22 13:06:40'),
(89, 87, 344, 2, '😅', 0, '2020-09-23 05:57:07'),
(90, 87, 344, 2, 'Hello', 0, '2020-09-23 05:57:10'),
(91, 88, 344, 2, 'Hello', 0, '2020-09-23 07:11:52'),
(92, 93, 344, 2, 'hi', 0, '2020-09-24 08:02:35'),
(93, 93, 344, 2, 'Hello', 0, '2020-09-24 11:14:58'),
(94, 93, 344, 2, 'Can we sort this please', 0, '2020-09-24 11:15:14'),
(95, 97, 344, 2, 'hello', 0, '2020-09-26 15:03:11'),
(96, 97, 344, 2, 'I need help', 0, '2020-09-26 15:03:16'),
(97, 92, 344, 2, 'hello', 0, '2020-09-26 15:04:16'),
(98, 91, 344, 2, 'hello', 0, '2020-09-26 15:04:28'),
(99, 85, 344, 2, 'hi', 0, '2020-09-26 15:12:01'),
(100, 1, 344, 2, 'hello', 0, '2020-09-27 06:00:31'),
(101, 98, 344, 2, 'Hi', 0, '2020-09-27 06:48:42'),
(102, 23, 344, 2, 'Hello', 0, '2020-09-30 06:49:45'),
(103, 23, 344, 2, 'How are you i need help', 0, '2020-09-30 06:49:58'),
(104, 11, 379, 2, 'hello', 0, '2020-10-13 03:36:58'),
(105, 11, 379, 2, 'how are you ', 0, '2020-10-13 03:37:05'),
(106, 123, 379, 2, 'Hello', 0, '2020-10-13 04:12:55'),
(107, 170, 379, 2, 'hello do da', 0, '2020-10-28 04:26:38'),
(108, 170, 379, 2, 'testo', 0, '2020-10-28 04:29:34'),
(109, 170, 379, 2, 'hello is this working???', 0, '2020-10-28 04:29:43'),
(110, 170, 379, 2, 'hi', 0, '2020-10-28 04:30:40'),
(111, 170, 379, 2, 'love ❤️', 0, '2020-10-28 04:30:54'),
(112, 170, 0, 0, 'hello\n', 0, '2020-10-28 04:32:22'),
(113, 168, 344, 2, 'Hello', 0, '2020-10-28 05:09:07'),
(114, 167, 445, 2, 'hello', 0, '2020-10-28 05:09:51'),
(115, 167, 0, 0, 'hi', 0, '2020-10-28 05:18:34'),
(116, 128, 344, 2, 'hi', 0, '2020-10-28 06:48:46'),
(117, 167, 0, 0, 'hello', 0, '2020-10-28 07:31:31'),
(118, 0, 344, 0, 'hi', 0, '2020-10-29 07:29:16'),
(119, 14, 0, 0, 'hi', 0, '2020-10-29 07:29:47'),
(120, 14, 0, 0, 'hjhj', 0, '2020-10-29 07:30:01'),
(121, 14, 0, 0, 'ff', 0, '2020-10-29 07:31:23'),
(122, 167, 0, 0, 'alo\n', 0, '2020-10-29 07:32:51'),
(123, 14, 0, 0, 'f', 0, '2020-10-29 07:34:13'),
(124, 14, 0, 0, 'test', 0, '2020-10-29 07:36:38'),
(125, 14, 0, 0, 'fdf', 0, '2020-10-29 07:36:50'),
(126, 14, 0, 0, 'fdf', 0, '2020-10-29 07:37:10'),
(127, 14, 0, 0, 'gg', 0, '2020-10-29 07:37:48'),
(128, 14, 0, 0, 'fsdfsdf', 0, '2020-10-29 07:38:00'),
(129, 14, 0, 0, 'fsdfsdf', 0, '2020-10-29 07:38:16'),
(130, 14, 0, 0, 'fsdfsdf', 0, '2020-10-29 07:38:23'),
(131, 14, 0, 0, 'fsdfsdf', 0, '2020-10-29 07:38:41'),
(132, 14, 0, 0, 'fsdfsdf', 0, '2020-10-29 07:38:56'),
(133, 167, 0, 0, 'xin chao', 0, '2020-10-29 07:39:19'),
(134, 167, 0, 0, 'chua nhan duoc', 0, '2020-10-29 07:39:39'),
(135, 167, 0, 0, 'hello', 0, '2020-10-29 07:40:04'),
(136, 14, 0, 0, 'ff', 0, '2020-10-29 07:40:30'),
(137, 167, 0, 0, 'alo\n', 0, '2020-10-29 07:41:04'),
(138, 167, 0, 0, 'alo\n', 0, '2020-10-29 07:41:13'),
(139, 167, 0, 0, 'ff', 0, '2020-10-29 07:42:04'),
(140, 167, 0, 0, 'xin chào\n', 0, '2020-10-29 07:42:46'),
(141, 167, 0, 0, 'hu', 0, '2020-10-29 07:43:27'),
(142, 167, 0, 0, 'xin chao', 0, '2020-10-29 07:44:53'),
(143, 167, 0, 0, 'hihi', 0, '2020-10-29 07:45:03'),
(144, 167, 0, 0, 'acccc', 0, '2020-10-29 07:45:30'),
(145, 167, 0, 0, 'Hello, this is message from admin panel', 0, '2020-10-29 07:52:16'),
(146, 167, 0, 0, '1111', 0, '2020-10-29 07:59:08'),
(147, 167, 0, 0, 'hello', 0, '2020-10-29 08:00:03'),
(148, 167, 0, 0, '1111', 0, '2020-10-29 08:06:30'),
(149, 167, 0, 0, '3333', 0, '2020-10-29 08:06:34'),
(150, 13, 0, 0, 'hi', 0, '2020-10-29 08:06:42'),
(151, 167, 0, 0, 'Hello', 0, '2020-10-29 08:08:06'),
(152, 167, 0, 0, 'This is test message', 0, '2020-10-29 08:08:18'),
(153, 167, 0, 0, 'xin chao', 0, '2020-10-29 08:12:00'),
(154, 168, 344, 2, 'hi', 0, '2020-10-29 13:47:52'),
(155, 168, 344, 2, '1', 0, '2020-10-29 13:48:04'),
(156, 168, 344, 2, 'hello', 0, '2020-10-29 13:48:23'),
(157, 164, 449, 2, 'hi', 0, '2020-10-29 13:49:34'),
(158, 164, 449, 2, 'can u hear me', 0, '2020-10-29 13:49:43'),
(159, 169, 379, 2, 'hello ❤️ am what\'s going on', 0, '2020-12-01 03:18:12');

-- --------------------------------------------------------

--
-- Table structure for table `codo_attachments`
--

CREATE TABLE `codo_attachments` (
  `id` int(10) UNSIGNED NOT NULL,
  `original_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `visible_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stored_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uid` int(11) NOT NULL,
  `upload_time` int(11) NOT NULL,
  `file_size` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `codo_bans`
--

CREATE TABLE `codo_bans` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ban_type` enum('name','mail','ip') COLLATE utf8_unicode_ci NOT NULL,
  `ban_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ban_on` int(11) NOT NULL,
  `ban_reason` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `ban_expires` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `codo_blocks`
--

CREATE TABLE `codo_blocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `module` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `theme` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `region` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `visibility` int(11) NOT NULL,
  `pages` text COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `cache` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `codo_blocks`
--

INSERT INTO `codo_blocks` (`id`, `module`, `theme`, `status`, `weight`, `region`, `content`, `visibility`, `pages`, `title`, `cache`) VALUES
(1, 'html', '2k18', 0, 0, 'block_main_menu_start', '<li class=\'dropdown codo_dropdown\'>\r\n    <span class=\'codo_menu_dropdown dropdown-toggle\' data-toggle=\'dropdown\'>Link</span>\r\n    <ul class=\'dropdown-menu\' role=\'menu\'>\r\n        <li class=\'dropdown-item\'><a href=\'#\'>Action</a></li>\r\n        <li class=\'dropdown-item\'><a href=\'#\'>Another action</a></li>\r\n        <li class=\'dropdown-item\'><a href=\'#\'>Something else here</a></li>\r\n        <li class=\'dropdown-item\'><a href=\'#\'>Separated link</a></li>\r\n        <li class=\'dropdown-item\'><a href=\'#\'>One more separated link</a></li>  </ul>\r\n</li>', 0, '', 'Main Menu', 1),
(2, 'html', '2k18', 0, 0, 'block_footer_right', '<small>\r\n   \r\n<a href=\"https://facebook.com/codologic\"><i class=\"icon-facebook\"> </i></a> \r\n <a href=\"https://twitter.com/codologic\"><i class=\"icon-twitter\"> </i></a>\r\n <a href=\"https://plus.google.com/+codologic\"><i class=\"icon-google-plus-square\"> </i></a>\r\n\r\n        <br>\r\n        <a href=\"index.php?u=page/6\">Terms of Service</a> |\r\n        <a href=\"index.php?u=page/7\">Privacy</a> |\r\n        <a href=\"#\">About us</a> \r\n</small>', 0, '', 'Footer Right', 1);

-- --------------------------------------------------------

--
-- Table structure for table `codo_block_roles`
--

CREATE TABLE `codo_block_roles` (
  `bid` int(11) NOT NULL,
  `rid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `codo_categories`
--

CREATE TABLE `codo_categories` (
  `cat_id` int(10) UNSIGNED NOT NULL,
  `cat_pid` int(11) NOT NULL,
  `cat_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cat_alias` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `cat_description` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cat_img` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `no_topics` int(11) NOT NULL,
  `no_posts` int(11) NOT NULL,
  `cat_order` int(11) NOT NULL,
  `is_label` int(11) NOT NULL DEFAULT 0,
  `show_children` int(11) NOT NULL DEFAULT 1,
  `default_subscription_type` int(11) NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `codo_categories`
--

INSERT INTO `codo_categories` (`cat_id`, `cat_pid`, `cat_name`, `cat_alias`, `cat_description`, `cat_img`, `no_topics`, `no_posts`, `cat_order`, `is_label`, `show_children`, `default_subscription_type`) VALUES
(3, 0, 'General Discussions', 'general-discussions', 'For anything and everything that doesnt fit in other categories.', 'bubbles.png', 1, 1, 0, 0, 1, 2),
(10, 0, 'News and Announcements', 'news-and-announcements', 'this is where all the latest news will be posted', 'bullhorn.png', 0, 0, 0, 0, 1, 2),
(11, 0, 'Support Forums', 'support-forums', 'Have any problem? Report it here and we will be glad to help.', 'support.png', 0, 0, 2, 0, 1, 2),
(12, 0, 'Let us know', 'let-us-know', 'We encourage new members to post a short description about themselves', 'envelope.png', 0, 0, 2, 0, 1, 2),
(13, 0, 'Bug Reports', 'bug-reports', 'Found a bug? why not report it here?', 'bug.png', 0, 0, 2, 0, 1, 2),
(14, 0, 'Feature Requests', 'feature-requests', 'You have a cool idea? post them here!', 'wand.png', 0, 0, 2, 0, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `codo_config`
--

CREATE TABLE `codo_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `option_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `option_value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `codo_config`
--

INSERT INTO `codo_config` (`id`, `option_name`, `option_value`) VALUES
(1, 'site_url', ''),
(2, 'site_title', 'CODOLOGIC'),
(3, 'site_description', 'codoforum - Enhancing your forum experience with next generation technology!'),
(4, 'admin_email', 'admin@codologic.com'),
(5, 'theme', '2k18'),
(6, 'captcha_public_key', ''),
(7, 'captcha_private_key', ''),
(8, 'register_pass_min', '8'),
(9, 'num_posts_all_topics', '30'),
(10, 'num_posts_cat_topics', '20'),
(11, 'num_posts_per_topic', '20'),
(12, 'forum_attachments_path', 'assets/img/attachments'),
(13, 'forum_attachments_exts', 'jpg,jpeg,png,gif,pjpeg,bmp,txt'),
(14, 'forum_attachments_size', '3'),
(15, 'forum_attachments_mimetypes', 'image/*,text/plain'),
(16, 'forum_attachments_multiple', 'true'),
(17, 'forum_attachments_parallel', '4'),
(18, 'forum_attachments_max', '10'),
(19, 'reply_min_chars', '10'),
(20, 'subcategory_dropdown', 'hidden'),
(21, 'captcha', 'disabled'),
(22, 'await_approval_message', 'Dear [user:username],\n\nThank you for registering at [option:site_title]. Before we can activate your account one last step must be taken to complete your registration.\n\nTo complete your registration, please visit this URL: [this:confirm_url]\n\nYour Username is: [user:username] \n\nIf you are still having problems signing up please contact a member of our support staff at [option:admin_email]\n\nRegards,\n[option:site_title]'),
(23, 'await_approval_subject', 'Confirm your email for [user:username] at [option:site_title]'),
(24, 'mail_type', 'mail'),
(25, 'smtp_protocol', 'ssl'),
(26, 'smtp_server', 'smtp.gmail.com'),
(27, 'smtp_port', '465'),
(28, 'smtp_username', 'admin@codologic.com'),
(29, 'smtp_password', 'your_smtp_pass'),
(30, 'register_username_min', '3'),
(31, 'signature_char_lim', '255'),
(32, 'sso_client_id', 'codoforum'),
(33, 'sso_secret', 'Xe24!rf'),
(34, 'sso_get_user_path', 'http://localhost/page/codoforum_sso/user'),
(35, 'sso_login_user_path', 'http://localhost/page/user?codoforum=sso'),
(36, 'sso_logout_user_path', 'http://localhost/page/user/logout'),
(37, 'sso_register_user_path', 'http://localhost/page/user/lot'),
(38, 'sso_name', 'Codologic'),
(39, 'post_notify_message', 'Hi, <br/><br/>[user:username] has replied to the topic: [post:title]<br/><br/>----<br/>[post:omessage]<br/>----<br/><br/>You can view the reply at the following url<br/>[post:url]<br/><br/>Regards,<br/>[option:site_title] team<br/>'),
(40, 'post_notify_subject', '[post:title] - new reply'),
(41, 'password_reset_message', 'Hi,<br/><br/>A request has been made to reset your account password. <br/>\r\\To reset your password, please follow the below link:<br/>[user:link]<br/>\rPassword reset token: [user:token]<br/><br/>Regards,<br/>[option:site_title] team<br/>'),
(42, 'password_reset_subject', 'Your [option:site_title] password reset request'),
(43, 'topic_notify_message', 'Hi [post:username],<br/><br/>[user:username] has created a new topic: [post:title]<br/>in category [post:category]<br/><br/>You can view the topic by clicking [post:url]<br/><br/>Regards,<br/>[option:site_title] team'),
(44, 'topic_notify_subject', '[post:category] - new topic'),
(45, 'version', '4.9.3.2159'),
(46, 'brand_img', 'https://codoforum.com/img/favicon-32x32.png'),
(47, 'reg_req_admin', 'no'),
(48, 'max_rep_per_day', '100'),
(49, 'rep_req_to_inc', '0'),
(50, 'posts_req_to_inc', '0'),
(51, 'rep_req_to_dec', '0'),
(52, 'posts_req_to_dec', '0'),
(53, 'rep_times_same_user', '5'),
(54, 'rep_hours_same_user', '24'),
(55, 'enable_reputation', 'yes'),
(56, 'forum_tags_num', '5'),
(57, 'forum_tags_len', '15'),
(58, 'ml_spam_filter', 'no'),
(59, 'insert_oembed_videos', 'yes'),
(60, 'force_https', 'no'),
(61, 'GOOGLE_ID', 'NO_VAL'),
(62, 'GOOGLE_SECRET', 'NO_VAL'),
(63, 'GOOGLE_REDIRECT', 'NO_VAL'),
(64, 'FB_ID', 'NO_VAL'),
(65, 'FB_SECRET', 'NO_VAL'),
(66, 'FB_REDIRECT', 'NO_VAL'),
(67, 'TW_ID', 'NO_VAL'),
(68, 'TW_SECRET', 'NO_VAL'),
(69, 'TW_REDIRECT', 'NO_VAL'),
(70, 'GITHUB_ID', 'NO_VAL'),
(71, 'GITHUB_SECRET', 'NO_VAL'),
(72, 'GITHUB_URL', 'NO_VAL'),
(73, 'default_language', 'en_US'),
(74, 'forum_logo', 'codoforum.png'),
(75, 'forum_header_menu', 'site_title'),
(76, 'login_by', 'USERNAME'),
(77, 'vote_up_notify_subject', '[post:title] - vote up'),
(78, 'vote_up_notify_message', 'Hi, <br/><br/>[user:username] has up voted your post in the topic: [post:title]<br/><br/>----<br/>[post:omessage]<br/>----<br/><br/>You can view the post at the following url<br/>[post:url]<br/><br/>Regards,<br/>[option:site_title] team<br/>'),
(79, 'vote_down_notify_subject', '[post:title] - vote down'),
(80, 'vote_down_notify_message', 'Hi, <br/><br/>[user:username] has down voted your post in the topic: [post:title]<br/><br/>----<br/>[post:omessage]<br/>----<br/><br/>You can view the post at the following url<br/>[post:url]<br/><br/>Regards,<br/>[option:site_title] team<br/>'),
(81, 'forum_type', 'modern');

-- --------------------------------------------------------

--
-- Table structure for table `codo_crons`
--

CREATE TABLE `codo_crons` (
  `id` int(10) UNSIGNED NOT NULL,
  `cron_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cron_type` enum('once','recurrence') COLLATE utf8_unicode_ci NOT NULL,
  `cron_interval` int(11) NOT NULL,
  `cron_started` int(11) NOT NULL,
  `cron_last_run` int(11) NOT NULL,
  `cron_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `codo_crons`
--

INSERT INTO `codo_crons` (`id`, `cron_name`, `cron_type`, `cron_interval`, `cron_started`, `cron_last_run`, `cron_status`) VALUES
(1, 'core', 'recurrence', 86400, 1597635726, 1597635726, 0),
(2, 'daily_digest', 'recurrence', 86400, 1597635726, 1597635726, 0),
(3, 'weekly_digest', 'recurrence', 604800, 1597635726, 1597635726, 0),
(4, 'mail_notify_send', 'recurrence', 1800, 1597651643, 1597651644, 0),
(5, 'forum_update', 'recurrence', 3600, 1597651643, 1597651644, 0);

-- --------------------------------------------------------

--
-- Table structure for table `codo_daily_rep_log`
--

CREATE TABLE `codo_daily_rep_log` (
  `uid` int(11) NOT NULL,
  `rep_count` int(11) NOT NULL,
  `start_rep_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `codo_edits`
--

CREATE TABLE `codo_edits` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `codo_fields`
--

CREATE TABLE `codo_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `show_reg` int(11) NOT NULL,
  `is_mandatory` int(11) NOT NULL,
  `show_profile` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `output_format` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` int(11) NOT NULL,
  `input_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_length` int(11) NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `hide_not_set` int(11) NOT NULL,
  `def_value` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `codo_fields_roles`
--

CREATE TABLE `codo_fields_roles` (
  `fid` int(11) NOT NULL,
  `rid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `codo_fields_values`
--

CREATE TABLE `codo_fields_values` (
  `uid` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `codo_logs`
--

CREATE TABLE `codo_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` int(11) NOT NULL,
  `log_type` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `severity` int(11) NOT NULL,
  `trace` text COLLATE utf8_unicode_ci NOT NULL,
  `log_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `codo_logs`
--

INSERT INTO `codo_logs` (`id`, `uid`, `log_type`, `message`, `severity`, `trace`, `log_time`) VALUES
(1, 0, 'Info', 'Failed login attempt for admin. Wrong credentials', 6, 'Trace: Array\n(\n    [0] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 97\n            [function] => get_trace\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [1] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 73\n            [function] => set_options\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Array\n                        (\n                            [log_type] => Info\n                        )\n\n                    [1] => Failed login attempt for admin. Wrong credentials\n                )\n\n        )\n\n    [2] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/Login.php\n            [line] => 80\n            [function] => info\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Failed login attempt for admin. Wrong credentials\n                )\n\n        )\n\n    [3] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Controller/Ajax/user/login.php\n            [line] => 23\n            [function] => process_login\n            [class] => CODOF\\User\\Login\n            [object] => CODOF\\User\\Login Object\n                (\n                    [identifier] => admin\n                    [password] => 123\n                    [db:CODOF\\User\\Login:private] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [4] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 598\n            [function] => dologin\n            [class] => Controller\\Ajax\\user\\login\n            [object] => Controller\\Ajax\\user\\login Object\n                (\n                    [db] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [5] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Ext/limonade/limonade.php\n            [line] => 419\n            [function] => {closure}\n            [args] => Array\n                (\n                )\n\n        )\n\n    [6] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Access/Request.php\n            [line] => 94\n            [function] => run\n            [args] => Array\n                (\n                )\n\n        )\n\n    [7] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 952\n            [function] => start\n            [class] => CODOF\\Access\\Request\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [8] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/index.php\n            [line] => 22\n            [args] => Array\n                (\n                    [0] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n                )\n\n            [function] => require\n        )\n\n)\n', 1588919753),
(2, 0, 'Info', 'Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => client_a@mailinator.com\n)\n Array\n(\n    [5eb4fc8618832_csrf] => 1be8fd3e4fbe41551773da021f2fabc1\n)\n', 6, 'Trace: Array\n(\n    [0] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 97\n            [function] => get_trace\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [1] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 73\n            [function] => set_options\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Array\n                        (\n                            [log_type] => Info\n                        )\n\n                    [1] => Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => client_a@mailinator.com\n)\n Array\n(\n    [5eb4fc8618832_csrf] => 1be8fd3e4fbe41551773da021f2fabc1\n)\n\n                )\n\n        )\n\n    [2] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Util.php\n            [line] => 31\n            [function] => info\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => client_a@mailinator.com\n)\n Array\n(\n    [5eb4fc8618832_csrf] => 1be8fd3e4fbe41551773da021f2fabc1\n)\n\n                )\n\n        )\n\n    [3] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/User.php\n            [line] => 853\n            [function] => log\n            [class] => CODOF\\Util\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => client_a@mailinator.com\n)\n Array\n(\n    [5eb4fc8618832_csrf] => 1be8fd3e4fbe41551773da021f2fabc1\n)\n\n                )\n\n        )\n\n    [4] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/User.php\n            [line] => 666\n            [function] => getUserObject\n            [class] => CODOF\\User\\User\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => SELECT u.*,r.rid,r.is_primary FROM codo_users AS u LEFT JOIN codo_user_roles r ON u.id=r.uid WHERE u.username=:username\n                    [1] => Array\n                        (\n                            [username] => client_a@mailinator.com\n                        )\n\n                    [2] => PDO Object\n                        (\n                        )\n\n                )\n\n        )\n\n    [5] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/Login.php\n            [line] => 93\n            [function] => getByUsername\n            [class] => CODOF\\User\\User\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => client_a@mailinator.com\n                )\n\n        )\n\n    [6] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/Login.php\n            [line] => 55\n            [function] => getUserByIdentifier\n            [class] => CODOF\\User\\Login\n            [object] => CODOF\\User\\Login Object\n                (\n                    [identifier] => client_a@mailinator.com\n                    [password] => CA12345678\n                    [db:CODOF\\User\\Login:private] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                    [0] => client_a@mailinator.com\n                )\n\n        )\n\n    [7] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Controller/Ajax/user/login.php\n            [line] => 23\n            [function] => process_login\n            [class] => CODOF\\User\\Login\n            [object] => CODOF\\User\\Login Object\n                (\n                    [identifier] => client_a@mailinator.com\n                    [password] => CA12345678\n                    [db:CODOF\\User\\Login:private] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [8] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 598\n            [function] => dologin\n            [class] => Controller\\Ajax\\user\\login\n            [object] => Controller\\Ajax\\user\\login Object\n                (\n                    [db] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [9] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Ext/limonade/limonade.php\n            [line] => 419\n            [function] => {closure}\n            [args] => Array\n                (\n                )\n\n        )\n\n    [10] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Access/Request.php\n            [line] => 94\n            [function] => run\n            [args] => Array\n                (\n                )\n\n        )\n\n    [11] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 952\n            [function] => start\n            [class] => CODOF\\Access\\Request\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [12] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/index.php\n            [line] => 22\n            [args] => Array\n                (\n                    [0] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n                )\n\n            [function] => require\n        )\n\n)\n', 1588943758),
(3, 0, 'Info', 'Failed login attempt for client_a@mailinator.com. Wrong credentials', 6, 'Trace: Array\n(\n    [0] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 97\n            [function] => get_trace\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [1] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 73\n            [function] => set_options\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Array\n                        (\n                            [log_type] => Info\n                        )\n\n                    [1] => Failed login attempt for client_a@mailinator.com. Wrong credentials\n                )\n\n        )\n\n    [2] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/Login.php\n            [line] => 80\n            [function] => info\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Failed login attempt for client_a@mailinator.com. Wrong credentials\n                )\n\n        )\n\n    [3] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Controller/Ajax/user/login.php\n            [line] => 23\n            [function] => process_login\n            [class] => CODOF\\User\\Login\n            [object] => CODOF\\User\\Login Object\n                (\n                    [identifier] => client_a@mailinator.com\n                    [password] => CA12345678\n                    [db:CODOF\\User\\Login:private] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [4] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 598\n            [function] => dologin\n            [class] => Controller\\Ajax\\user\\login\n            [object] => Controller\\Ajax\\user\\login Object\n                (\n                    [db] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [5] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Ext/limonade/limonade.php\n            [line] => 419\n            [function] => {closure}\n            [args] => Array\n                (\n                )\n\n        )\n\n    [6] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Access/Request.php\n            [line] => 94\n            [function] => run\n            [args] => Array\n                (\n                )\n\n        )\n\n    [7] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 952\n            [function] => start\n            [class] => CODOF\\Access\\Request\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [8] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/index.php\n            [line] => 22\n            [args] => Array\n                (\n                    [0] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n                )\n\n            [function] => require\n        )\n\n)\n', 1588943758),
(4, 0, 'Info', 'Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => client_1@gmail.com\n)\n Array\n(\n    [5eb4fc86187f3view_inserted] => 1\n    [5eb4fc8618832_csrf] => a3a0bf53bb476e7184a7fb5bf9162215\n)\n', 6, 'Trace: Array\n(\n    [0] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 97\n            [function] => get_trace\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [1] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 73\n            [function] => set_options\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Array\n                        (\n                            [log_type] => Info\n                        )\n\n                    [1] => Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => client_1@gmail.com\n)\n Array\n(\n    [5eb4fc86187f3view_inserted] => 1\n    [5eb4fc8618832_csrf] => a3a0bf53bb476e7184a7fb5bf9162215\n)\n\n                )\n\n        )\n\n    [2] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Util.php\n            [line] => 31\n            [function] => info\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => client_1@gmail.com\n)\n Array\n(\n    [5eb4fc86187f3view_inserted] => 1\n    [5eb4fc8618832_csrf] => a3a0bf53bb476e7184a7fb5bf9162215\n)\n\n                )\n\n        )\n\n    [3] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/User.php\n            [line] => 853\n            [function] => log\n            [class] => CODOF\\Util\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => client_1@gmail.com\n)\n Array\n(\n    [5eb4fc86187f3view_inserted] => 1\n    [5eb4fc8618832_csrf] => a3a0bf53bb476e7184a7fb5bf9162215\n)\n\n                )\n\n        )\n\n    [4] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/User.php\n            [line] => 666\n            [function] => getUserObject\n            [class] => CODOF\\User\\User\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => SELECT u.*,r.rid,r.is_primary FROM codo_users AS u LEFT JOIN codo_user_roles r ON u.id=r.uid WHERE u.username=:username\n                    [1] => Array\n                        (\n                            [username] => client_1@gmail.com\n                        )\n\n                    [2] => PDO Object\n                        (\n                        )\n\n                )\n\n        )\n\n    [5] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/Login.php\n            [line] => 93\n            [function] => getByUsername\n            [class] => CODOF\\User\\User\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => client_1@gmail.com\n                )\n\n        )\n\n    [6] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/Login.php\n            [line] => 55\n            [function] => getUserByIdentifier\n            [class] => CODOF\\User\\Login\n            [object] => CODOF\\User\\Login Object\n                (\n                    [identifier] => client_1@gmail.com\n                    [password] => password\n                    [db:CODOF\\User\\Login:private] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                    [0] => client_1@gmail.com\n                )\n\n        )\n\n    [7] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Controller/Ajax/user/login.php\n            [line] => 23\n            [function] => process_login\n            [class] => CODOF\\User\\Login\n            [object] => CODOF\\User\\Login Object\n                (\n                    [identifier] => client_1@gmail.com\n                    [password] => password\n                    [db:CODOF\\User\\Login:private] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [8] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 598\n            [function] => dologin\n            [class] => Controller\\Ajax\\user\\login\n            [object] => Controller\\Ajax\\user\\login Object\n                (\n                    [db] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [9] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Ext/limonade/limonade.php\n            [line] => 419\n            [function] => {closure}\n            [args] => Array\n                (\n                )\n\n        )\n\n    [10] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Access/Request.php\n            [line] => 94\n            [function] => run\n            [args] => Array\n                (\n                )\n\n        )\n\n    [11] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 952\n            [function] => start\n            [class] => CODOF\\Access\\Request\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [12] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/index.php\n            [line] => 22\n            [args] => Array\n                (\n                    [0] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n                )\n\n            [function] => require\n        )\n\n)\n', 1590118096),
(5, 0, 'Info', 'Failed login attempt for client_1@gmail.com. Wrong credentials', 6, 'Trace: Array\n(\n    [0] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 97\n            [function] => get_trace\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [1] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 73\n            [function] => set_options\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Array\n                        (\n                            [log_type] => Info\n                        )\n\n                    [1] => Failed login attempt for client_1@gmail.com. Wrong credentials\n                )\n\n        )\n\n    [2] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/Login.php\n            [line] => 80\n            [function] => info\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Failed login attempt for client_1@gmail.com. Wrong credentials\n                )\n\n        )\n\n    [3] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Controller/Ajax/user/login.php\n            [line] => 23\n            [function] => process_login\n            [class] => CODOF\\User\\Login\n            [object] => CODOF\\User\\Login Object\n                (\n                    [identifier] => client_1@gmail.com\n                    [password] => password\n                    [db:CODOF\\User\\Login:private] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [4] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 598\n            [function] => dologin\n            [class] => Controller\\Ajax\\user\\login\n            [object] => Controller\\Ajax\\user\\login Object\n                (\n                    [db] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [5] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Ext/limonade/limonade.php\n            [line] => 419\n            [function] => {closure}\n            [args] => Array\n                (\n                )\n\n        )\n\n    [6] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Access/Request.php\n            [line] => 94\n            [function] => run\n            [args] => Array\n                (\n                )\n\n        )\n\n    [7] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 952\n            [function] => start\n            [class] => CODOF\\Access\\Request\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [8] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/index.php\n            [line] => 22\n            [args] => Array\n                (\n                    [0] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n                )\n\n            [function] => require\n        )\n\n)\n', 1590118096),
(6, 0, 'Info', 'Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => johntetega@gmail.com\n)\n Array\n(\n    [5eb4fc86187f3view_inserted] => 1\n    [5eb4fc8618832_csrf] => 10df10aa16517a4d779196f8b3bcf66a\n)\n', 6, 'Trace: Array\n(\n    [0] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 97\n            [function] => get_trace\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [1] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 73\n            [function] => set_options\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Array\n                        (\n                            [log_type] => Info\n                        )\n\n                    [1] => Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => johntetega@gmail.com\n)\n Array\n(\n    [5eb4fc86187f3view_inserted] => 1\n    [5eb4fc8618832_csrf] => 10df10aa16517a4d779196f8b3bcf66a\n)\n\n                )\n\n        )\n\n    [2] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Util.php\n            [line] => 31\n            [function] => info\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => johntetega@gmail.com\n)\n Array\n(\n    [5eb4fc86187f3view_inserted] => 1\n    [5eb4fc8618832_csrf] => 10df10aa16517a4d779196f8b3bcf66a\n)\n\n                )\n\n        )\n\n    [3] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/User.php\n            [line] => 853\n            [function] => log\n            [class] => CODOF\\Util\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => johntetega@gmail.com\n)\n Array\n(\n    [5eb4fc86187f3view_inserted] => 1\n    [5eb4fc8618832_csrf] => 10df10aa16517a4d779196f8b3bcf66a\n)\n\n                )\n\n        )\n\n    [4] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/User.php\n            [line] => 666\n            [function] => getUserObject\n            [class] => CODOF\\User\\User\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => SELECT u.*,r.rid,r.is_primary FROM codo_users AS u LEFT JOIN codo_user_roles r ON u.id=r.uid WHERE u.username=:username\n                    [1] => Array\n                        (\n                            [username] => johntetega@gmail.com\n                        )\n\n                    [2] => PDO Object\n                        (\n                        )\n\n                )\n\n        )\n\n    [5] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/Login.php\n            [line] => 93\n            [function] => getByUsername\n            [class] => CODOF\\User\\User\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => johntetega@gmail.com\n                )\n\n        )\n\n    [6] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/Login.php\n            [line] => 55\n            [function] => getUserByIdentifier\n            [class] => CODOF\\User\\Login\n            [object] => CODOF\\User\\Login Object\n                (\n                    [identifier] => johntetega@gmail.com\n                    [password] => Bubbles25!\n                    [db:CODOF\\User\\Login:private] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                    [0] => johntetega@gmail.com\n                )\n\n        )\n\n    [7] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Controller/Ajax/user/login.php\n            [line] => 23\n            [function] => process_login\n            [class] => CODOF\\User\\Login\n            [object] => CODOF\\User\\Login Object\n                (\n                    [identifier] => johntetega@gmail.com\n                    [password] => Bubbles25!\n                    [db:CODOF\\User\\Login:private] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [8] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 598\n            [function] => dologin\n            [class] => Controller\\Ajax\\user\\login\n            [object] => Controller\\Ajax\\user\\login Object\n                (\n                    [db] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [9] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Ext/limonade/limonade.php\n            [line] => 419\n            [function] => {closure}\n            [args] => Array\n                (\n                )\n\n        )\n\n    [10] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Access/Request.php\n            [line] => 94\n            [function] => run\n            [args] => Array\n                (\n                )\n\n        )\n\n    [11] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 952\n            [function] => start\n            [class] => CODOF\\Access\\Request\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [12] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/index.php\n            [line] => 22\n            [args] => Array\n                (\n                    [0] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n                )\n\n            [function] => require\n        )\n\n)\n', 1590359874),
(7, 0, 'Info', 'Failed login attempt for johntetega@gmail.com. Wrong credentials', 6, 'Trace: Array\n(\n    [0] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 97\n            [function] => get_trace\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [1] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 73\n            [function] => set_options\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Array\n                        (\n                            [log_type] => Info\n                        )\n\n                    [1] => Failed login attempt for johntetega@gmail.com. Wrong credentials\n                )\n\n        )\n\n    [2] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/Login.php\n            [line] => 80\n            [function] => info\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Failed login attempt for johntetega@gmail.com. Wrong credentials\n                )\n\n        )\n\n    [3] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Controller/Ajax/user/login.php\n            [line] => 23\n            [function] => process_login\n            [class] => CODOF\\User\\Login\n            [object] => CODOF\\User\\Login Object\n                (\n                    [identifier] => johntetega@gmail.com\n                    [password] => Bubbles25!\n                    [db:CODOF\\User\\Login:private] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [4] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 598\n            [function] => dologin\n            [class] => Controller\\Ajax\\user\\login\n            [object] => Controller\\Ajax\\user\\login Object\n                (\n                    [db] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [5] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Ext/limonade/limonade.php\n            [line] => 419\n            [function] => {closure}\n            [args] => Array\n                (\n                )\n\n        )\n\n    [6] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Access/Request.php\n            [line] => 94\n            [function] => run\n            [args] => Array\n                (\n                )\n\n        )\n\n    [7] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 952\n            [function] => start\n            [class] => CODOF\\Access\\Request\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [8] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/index.php\n            [line] => 22\n            [args] => Array\n                (\n                    [0] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n                )\n\n            [function] => require\n        )\n\n)\n', 1590359874),
(8, 0, 'Info', 'Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => johntetega@gmail.com\n)\n Array\n(\n    [5eb4fc86187f3view_inserted] => 1\n    [5eb4fc8618832_csrf] => 438e928652cf2cda112ff0d7d0cb9dad\n)\n', 6, 'Trace: Array\n(\n    [0] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 97\n            [function] => get_trace\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [1] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 73\n            [function] => set_options\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Array\n                        (\n                            [log_type] => Info\n                        )\n\n                    [1] => Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => johntetega@gmail.com\n)\n Array\n(\n    [5eb4fc86187f3view_inserted] => 1\n    [5eb4fc8618832_csrf] => 438e928652cf2cda112ff0d7d0cb9dad\n)\n\n                )\n\n        )\n\n    [2] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Util.php\n            [line] => 31\n            [function] => info\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => johntetega@gmail.com\n)\n Array\n(\n    [5eb4fc86187f3view_inserted] => 1\n    [5eb4fc8618832_csrf] => 438e928652cf2cda112ff0d7d0cb9dad\n)\n\n                )\n\n        )\n\n    [3] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/User.php\n            [line] => 853\n            [function] => log\n            [class] => CODOF\\Util\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => johntetega@gmail.com\n)\n Array\n(\n    [5eb4fc86187f3view_inserted] => 1\n    [5eb4fc8618832_csrf] => 438e928652cf2cda112ff0d7d0cb9dad\n)\n\n                )\n\n        )\n\n    [4] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/User.php\n            [line] => 666\n            [function] => getUserObject\n            [class] => CODOF\\User\\User\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => SELECT u.*,r.rid,r.is_primary FROM codo_users AS u LEFT JOIN codo_user_roles r ON u.id=r.uid WHERE u.username=:username\n                    [1] => Array\n                        (\n                            [username] => johntetega@gmail.com\n                        )\n\n                    [2] => PDO Object\n                        (\n                        )\n\n                )\n\n        )\n\n    [5] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/Login.php\n            [line] => 93\n            [function] => getByUsername\n            [class] => CODOF\\User\\User\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => johntetega@gmail.com\n                )\n\n        )\n\n    [6] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/Login.php\n            [line] => 55\n            [function] => getUserByIdentifier\n            [class] => CODOF\\User\\Login\n            [object] => CODOF\\User\\Login Object\n                (\n                    [identifier] => johntetega@gmail.com\n                    [password] => Bubbles25!\n                    [db:CODOF\\User\\Login:private] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                    [0] => johntetega@gmail.com\n                )\n\n        )\n\n    [7] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Controller/Ajax/user/login.php\n            [line] => 23\n            [function] => process_login\n            [class] => CODOF\\User\\Login\n            [object] => CODOF\\User\\Login Object\n                (\n                    [identifier] => johntetega@gmail.com\n                    [password] => Bubbles25!\n                    [db:CODOF\\User\\Login:private] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [8] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 598\n            [function] => dologin\n            [class] => Controller\\Ajax\\user\\login\n            [object] => Controller\\Ajax\\user\\login Object\n                (\n                    [db] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [9] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Ext/limonade/limonade.php\n            [line] => 419\n            [function] => {closure}\n            [args] => Array\n                (\n                )\n\n        )\n\n    [10] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Access/Request.php\n            [line] => 94\n            [function] => run\n            [args] => Array\n                (\n                )\n\n        )\n\n    [11] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 952\n            [function] => start\n            [class] => CODOF\\Access\\Request\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [12] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/index.php\n            [line] => 22\n            [args] => Array\n                (\n                    [0] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n                )\n\n            [function] => require\n        )\n\n)\n', 1593559651),
(9, 0, 'Info', 'Failed login attempt for johntetega@gmail.com. Wrong credentials', 6, 'Trace: Array\n(\n    [0] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 97\n            [function] => get_trace\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [1] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 73\n            [function] => set_options\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Array\n                        (\n                            [log_type] => Info\n                        )\n\n                    [1] => Failed login attempt for johntetega@gmail.com. Wrong credentials\n                )\n\n        )\n\n    [2] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/Login.php\n            [line] => 80\n            [function] => info\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Failed login attempt for johntetega@gmail.com. Wrong credentials\n                )\n\n        )\n\n    [3] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Controller/Ajax/user/login.php\n            [line] => 23\n            [function] => process_login\n            [class] => CODOF\\User\\Login\n            [object] => CODOF\\User\\Login Object\n                (\n                    [identifier] => johntetega@gmail.com\n                    [password] => Bubbles25!\n                    [db:CODOF\\User\\Login:private] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [4] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 598\n            [function] => dologin\n            [class] => Controller\\Ajax\\user\\login\n            [object] => Controller\\Ajax\\user\\login Object\n                (\n                    [db] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [5] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Ext/limonade/limonade.php\n            [line] => 419\n            [function] => {closure}\n            [args] => Array\n                (\n                )\n\n        )\n\n    [6] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Access/Request.php\n            [line] => 94\n            [function] => run\n            [args] => Array\n                (\n                )\n\n        )\n\n    [7] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 952\n            [function] => start\n            [class] => CODOF\\Access\\Request\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [8] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/index.php\n            [line] => 22\n            [args] => Array\n                (\n                    [0] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n                )\n\n            [function] => require\n        )\n\n)\n', 1593559651);
INSERT INTO `codo_logs` (`id`, `uid`, `log_type`, `message`, `severity`, `trace`, `log_time`) VALUES
(10, 0, 'Info', 'Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => johntetega@gmail.com\n)\n Array\n(\n    [5eb4fc86187f3view_inserted] => 1\n    [5eb4fc8618832_csrf] => 438e928652cf2cda112ff0d7d0cb9dad\n)\n', 6, 'Trace: Array\n(\n    [0] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 97\n            [function] => get_trace\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [1] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 73\n            [function] => set_options\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Array\n                        (\n                            [log_type] => Info\n                        )\n\n                    [1] => Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => johntetega@gmail.com\n)\n Array\n(\n    [5eb4fc86187f3view_inserted] => 1\n    [5eb4fc8618832_csrf] => 438e928652cf2cda112ff0d7d0cb9dad\n)\n\n                )\n\n        )\n\n    [2] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Util.php\n            [line] => 31\n            [function] => info\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => johntetega@gmail.com\n)\n Array\n(\n    [5eb4fc86187f3view_inserted] => 1\n    [5eb4fc8618832_csrf] => 438e928652cf2cda112ff0d7d0cb9dad\n)\n\n                )\n\n        )\n\n    [3] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/User.php\n            [line] => 853\n            [function] => log\n            [class] => CODOF\\Util\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => johntetega@gmail.com\n)\n Array\n(\n    [5eb4fc86187f3view_inserted] => 1\n    [5eb4fc8618832_csrf] => 438e928652cf2cda112ff0d7d0cb9dad\n)\n\n                )\n\n        )\n\n    [4] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/User.php\n            [line] => 666\n            [function] => getUserObject\n            [class] => CODOF\\User\\User\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => SELECT u.*,r.rid,r.is_primary FROM codo_users AS u LEFT JOIN codo_user_roles r ON u.id=r.uid WHERE u.username=:username\n                    [1] => Array\n                        (\n                            [username] => johntetega@gmail.com\n                        )\n\n                    [2] => PDO Object\n                        (\n                        )\n\n                )\n\n        )\n\n    [5] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/Login.php\n            [line] => 93\n            [function] => getByUsername\n            [class] => CODOF\\User\\User\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => johntetega@gmail.com\n                )\n\n        )\n\n    [6] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/Login.php\n            [line] => 55\n            [function] => getUserByIdentifier\n            [class] => CODOF\\User\\Login\n            [object] => CODOF\\User\\Login Object\n                (\n                    [identifier] => johntetega@gmail.com\n                    [password] => Bubbles25!\n                    [db:CODOF\\User\\Login:private] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                    [0] => johntetega@gmail.com\n                )\n\n        )\n\n    [7] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Controller/Ajax/user/login.php\n            [line] => 23\n            [function] => process_login\n            [class] => CODOF\\User\\Login\n            [object] => CODOF\\User\\Login Object\n                (\n                    [identifier] => johntetega@gmail.com\n                    [password] => Bubbles25!\n                    [db:CODOF\\User\\Login:private] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [8] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 598\n            [function] => dologin\n            [class] => Controller\\Ajax\\user\\login\n            [object] => Controller\\Ajax\\user\\login Object\n                (\n                    [db] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [9] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Ext/limonade/limonade.php\n            [line] => 419\n            [function] => {closure}\n            [args] => Array\n                (\n                )\n\n        )\n\n    [10] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Access/Request.php\n            [line] => 94\n            [function] => run\n            [args] => Array\n                (\n                )\n\n        )\n\n    [11] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 952\n            [function] => start\n            [class] => CODOF\\Access\\Request\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [12] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/index.php\n            [line] => 22\n            [args] => Array\n                (\n                    [0] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n                )\n\n            [function] => require\n        )\n\n)\n', 1593559655),
(11, 0, 'Info', 'Failed login attempt for johntetega@gmail.com. Wrong credentials', 6, 'Trace: Array\n(\n    [0] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 97\n            [function] => get_trace\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [1] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 73\n            [function] => set_options\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Array\n                        (\n                            [log_type] => Info\n                        )\n\n                    [1] => Failed login attempt for johntetega@gmail.com. Wrong credentials\n                )\n\n        )\n\n    [2] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/Login.php\n            [line] => 80\n            [function] => info\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Failed login attempt for johntetega@gmail.com. Wrong credentials\n                )\n\n        )\n\n    [3] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Controller/Ajax/user/login.php\n            [line] => 23\n            [function] => process_login\n            [class] => CODOF\\User\\Login\n            [object] => CODOF\\User\\Login Object\n                (\n                    [identifier] => johntetega@gmail.com\n                    [password] => Bubbles25!\n                    [db:CODOF\\User\\Login:private] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [4] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 598\n            [function] => dologin\n            [class] => Controller\\Ajax\\user\\login\n            [object] => Controller\\Ajax\\user\\login Object\n                (\n                    [db] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [5] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Ext/limonade/limonade.php\n            [line] => 419\n            [function] => {closure}\n            [args] => Array\n                (\n                )\n\n        )\n\n    [6] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Access/Request.php\n            [line] => 94\n            [function] => run\n            [args] => Array\n                (\n                )\n\n        )\n\n    [7] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 952\n            [function] => start\n            [class] => CODOF\\Access\\Request\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [8] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/index.php\n            [line] => 22\n            [args] => Array\n                (\n                    [0] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n                )\n\n            [function] => require\n        )\n\n)\n', 1593559655),
(12, 0, 'Info', 'Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => client_1@gmail.com\n)\n Array\n(\n    [5eb4fc8618832_csrf] => 37ce79be709c220f898ddbcf8bff1c8d\n)\n', 6, 'Trace: Array\n(\n    [0] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 97\n            [function] => get_trace\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [1] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 73\n            [function] => set_options\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Array\n                        (\n                            [log_type] => Info\n                        )\n\n                    [1] => Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => client_1@gmail.com\n)\n Array\n(\n    [5eb4fc8618832_csrf] => 37ce79be709c220f898ddbcf8bff1c8d\n)\n\n                )\n\n        )\n\n    [2] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Util.php\n            [line] => 31\n            [function] => info\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => client_1@gmail.com\n)\n Array\n(\n    [5eb4fc8618832_csrf] => 37ce79be709c220f898ddbcf8bff1c8d\n)\n\n                )\n\n        )\n\n    [3] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/User.php\n            [line] => 853\n            [function] => log\n            [class] => CODOF\\Util\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => client_1@gmail.com\n)\n Array\n(\n    [5eb4fc8618832_csrf] => 37ce79be709c220f898ddbcf8bff1c8d\n)\n\n                )\n\n        )\n\n    [4] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/User.php\n            [line] => 666\n            [function] => getUserObject\n            [class] => CODOF\\User\\User\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => SELECT u.*,r.rid,r.is_primary FROM codo_users AS u LEFT JOIN codo_user_roles r ON u.id=r.uid WHERE u.username=:username\n                    [1] => Array\n                        (\n                            [username] => client_1@gmail.com\n                        )\n\n                    [2] => PDO Object\n                        (\n                        )\n\n                )\n\n        )\n\n    [5] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/Login.php\n            [line] => 93\n            [function] => getByUsername\n            [class] => CODOF\\User\\User\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => client_1@gmail.com\n                )\n\n        )\n\n    [6] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/Login.php\n            [line] => 55\n            [function] => getUserByIdentifier\n            [class] => CODOF\\User\\Login\n            [object] => CODOF\\User\\Login Object\n                (\n                    [identifier] => client_1@gmail.com\n                    [password] => password\n                    [db:CODOF\\User\\Login:private] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                    [0] => client_1@gmail.com\n                )\n\n        )\n\n    [7] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Controller/Ajax/user/login.php\n            [line] => 23\n            [function] => process_login\n            [class] => CODOF\\User\\Login\n            [object] => CODOF\\User\\Login Object\n                (\n                    [identifier] => client_1@gmail.com\n                    [password] => password\n                    [db:CODOF\\User\\Login:private] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [8] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 598\n            [function] => dologin\n            [class] => Controller\\Ajax\\user\\login\n            [object] => Controller\\Ajax\\user\\login Object\n                (\n                    [db] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [9] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Ext/limonade/limonade.php\n            [line] => 419\n            [function] => {closure}\n            [args] => Array\n                (\n                )\n\n        )\n\n    [10] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Access/Request.php\n            [line] => 94\n            [function] => run\n            [args] => Array\n                (\n                )\n\n        )\n\n    [11] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 952\n            [function] => start\n            [class] => CODOF\\Access\\Request\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [12] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/index.php\n            [line] => 22\n            [args] => Array\n                (\n                    [0] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n                )\n\n            [function] => require\n        )\n\n)\n', 1594802593),
(13, 0, 'Info', 'Failed login attempt for client_1@gmail.com. Wrong credentials', 6, 'Trace: Array\n(\n    [0] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 97\n            [function] => get_trace\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [1] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 73\n            [function] => set_options\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Array\n                        (\n                            [log_type] => Info\n                        )\n\n                    [1] => Failed login attempt for client_1@gmail.com. Wrong credentials\n                )\n\n        )\n\n    [2] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/Login.php\n            [line] => 80\n            [function] => info\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Failed login attempt for client_1@gmail.com. Wrong credentials\n                )\n\n        )\n\n    [3] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Controller/Ajax/user/login.php\n            [line] => 23\n            [function] => process_login\n            [class] => CODOF\\User\\Login\n            [object] => CODOF\\User\\Login Object\n                (\n                    [identifier] => client_1@gmail.com\n                    [password] => password\n                    [db:CODOF\\User\\Login:private] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [4] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 598\n            [function] => dologin\n            [class] => Controller\\Ajax\\user\\login\n            [object] => Controller\\Ajax\\user\\login Object\n                (\n                    [db] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [5] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Ext/limonade/limonade.php\n            [line] => 419\n            [function] => {closure}\n            [args] => Array\n                (\n                )\n\n        )\n\n    [6] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Access/Request.php\n            [line] => 94\n            [function] => run\n            [args] => Array\n                (\n                )\n\n        )\n\n    [7] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 952\n            [function] => start\n            [class] => CODOF\\Access\\Request\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [8] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/index.php\n            [line] => 22\n            [args] => Array\n                (\n                    [0] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n                )\n\n            [function] => require\n        )\n\n)\n', 1594802593),
(14, 0, 'Info', 'Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => client_1@gmail.com\n)\n Array\n(\n    [5eb4fc86187f3view_inserted] => 1\n    [5eb4fc8618832_csrf] => 77c23a6cf6e9e2347b42ee5c2eaa6e92\n)\n', 6, 'Trace: Array\n(\n    [0] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 97\n            [function] => get_trace\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [1] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 73\n            [function] => set_options\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Array\n                        (\n                            [log_type] => Info\n                        )\n\n                    [1] => Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => client_1@gmail.com\n)\n Array\n(\n    [5eb4fc86187f3view_inserted] => 1\n    [5eb4fc8618832_csrf] => 77c23a6cf6e9e2347b42ee5c2eaa6e92\n)\n\n                )\n\n        )\n\n    [2] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Util.php\n            [line] => 31\n            [function] => info\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => client_1@gmail.com\n)\n Array\n(\n    [5eb4fc86187f3view_inserted] => 1\n    [5eb4fc8618832_csrf] => 77c23a6cf6e9e2347b42ee5c2eaa6e92\n)\n\n                )\n\n        )\n\n    [3] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/User.php\n            [line] => 853\n            [function] => log\n            [class] => CODOF\\Util\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => client_1@gmail.com\n)\n Array\n(\n    [5eb4fc86187f3view_inserted] => 1\n    [5eb4fc8618832_csrf] => 77c23a6cf6e9e2347b42ee5c2eaa6e92\n)\n\n                )\n\n        )\n\n    [4] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/User.php\n            [line] => 666\n            [function] => getUserObject\n            [class] => CODOF\\User\\User\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => SELECT u.*,r.rid,r.is_primary FROM codo_users AS u LEFT JOIN codo_user_roles r ON u.id=r.uid WHERE u.username=:username\n                    [1] => Array\n                        (\n                            [username] => client_1@gmail.com\n                        )\n\n                    [2] => PDO Object\n                        (\n                        )\n\n                )\n\n        )\n\n    [5] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/Login.php\n            [line] => 93\n            [function] => getByUsername\n            [class] => CODOF\\User\\User\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => client_1@gmail.com\n                )\n\n        )\n\n    [6] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/Login.php\n            [line] => 55\n            [function] => getUserByIdentifier\n            [class] => CODOF\\User\\Login\n            [object] => CODOF\\User\\Login Object\n                (\n                    [identifier] => client_1@gmail.com\n                    [password] => password\n                    [db:CODOF\\User\\Login:private] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                    [0] => client_1@gmail.com\n                )\n\n        )\n\n    [7] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Controller/Ajax/user/login.php\n            [line] => 23\n            [function] => process_login\n            [class] => CODOF\\User\\Login\n            [object] => CODOF\\User\\Login Object\n                (\n                    [identifier] => client_1@gmail.com\n                    [password] => password\n                    [db:CODOF\\User\\Login:private] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [8] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 598\n            [function] => dologin\n            [class] => Controller\\Ajax\\user\\login\n            [object] => Controller\\Ajax\\user\\login Object\n                (\n                    [db] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [9] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Ext/limonade/limonade.php\n            [line] => 419\n            [function] => {closure}\n            [args] => Array\n                (\n                )\n\n        )\n\n    [10] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Access/Request.php\n            [line] => 94\n            [function] => run\n            [args] => Array\n                (\n                )\n\n        )\n\n    [11] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 952\n            [function] => start\n            [class] => CODOF\\Access\\Request\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [12] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/index.php\n            [line] => 22\n            [args] => Array\n                (\n                    [0] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n                )\n\n            [function] => require\n        )\n\n)\n', 1594831507),
(15, 0, 'Info', 'Failed login attempt for client_1@gmail.com. Wrong credentials', 6, 'Trace: Array\n(\n    [0] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 97\n            [function] => get_trace\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [1] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 73\n            [function] => set_options\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Array\n                        (\n                            [log_type] => Info\n                        )\n\n                    [1] => Failed login attempt for client_1@gmail.com. Wrong credentials\n                )\n\n        )\n\n    [2] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/Login.php\n            [line] => 80\n            [function] => info\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Failed login attempt for client_1@gmail.com. Wrong credentials\n                )\n\n        )\n\n    [3] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Controller/Ajax/user/login.php\n            [line] => 23\n            [function] => process_login\n            [class] => CODOF\\User\\Login\n            [object] => CODOF\\User\\Login Object\n                (\n                    [identifier] => client_1@gmail.com\n                    [password] => password\n                    [db:CODOF\\User\\Login:private] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [4] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 598\n            [function] => dologin\n            [class] => Controller\\Ajax\\user\\login\n            [object] => Controller\\Ajax\\user\\login Object\n                (\n                    [db] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [5] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Ext/limonade/limonade.php\n            [line] => 419\n            [function] => {closure}\n            [args] => Array\n                (\n                )\n\n        )\n\n    [6] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Access/Request.php\n            [line] => 94\n            [function] => run\n            [args] => Array\n                (\n                )\n\n        )\n\n    [7] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 952\n            [function] => start\n            [class] => CODOF\\Access\\Request\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [8] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/index.php\n            [line] => 22\n            [args] => Array\n                (\n                    [0] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n                )\n\n            [function] => require\n        )\n\n)\n', 1594831507),
(16, 0, 'Info', 'Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => client_1@gmail.com\n)\n Array\n(\n    [5eb4fc86187f3view_inserted] => 1\n    [5eb4fc8618832_csrf] => 77c23a6cf6e9e2347b42ee5c2eaa6e92\n)\n', 6, 'Trace: Array\n(\n    [0] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 97\n            [function] => get_trace\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [1] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 73\n            [function] => set_options\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Array\n                        (\n                            [log_type] => Info\n                        )\n\n                    [1] => Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => client_1@gmail.com\n)\n Array\n(\n    [5eb4fc86187f3view_inserted] => 1\n    [5eb4fc8618832_csrf] => 77c23a6cf6e9e2347b42ee5c2eaa6e92\n)\n\n                )\n\n        )\n\n    [2] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Util.php\n            [line] => 31\n            [function] => info\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => client_1@gmail.com\n)\n Array\n(\n    [5eb4fc86187f3view_inserted] => 1\n    [5eb4fc8618832_csrf] => 77c23a6cf6e9e2347b42ee5c2eaa6e92\n)\n\n                )\n\n        )\n\n    [3] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/User.php\n            [line] => 853\n            [function] => log\n            [class] => CODOF\\Util\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => client_1@gmail.com\n)\n Array\n(\n    [5eb4fc86187f3view_inserted] => 1\n    [5eb4fc8618832_csrf] => 77c23a6cf6e9e2347b42ee5c2eaa6e92\n)\n\n                )\n\n        )\n\n    [4] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/User.php\n            [line] => 666\n            [function] => getUserObject\n            [class] => CODOF\\User\\User\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => SELECT u.*,r.rid,r.is_primary FROM codo_users AS u LEFT JOIN codo_user_roles r ON u.id=r.uid WHERE u.username=:username\n                    [1] => Array\n                        (\n                            [username] => client_1@gmail.com\n                        )\n\n                    [2] => PDO Object\n                        (\n                        )\n\n                )\n\n        )\n\n    [5] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/Login.php\n            [line] => 93\n            [function] => getByUsername\n            [class] => CODOF\\User\\User\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => client_1@gmail.com\n                )\n\n        )\n\n    [6] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/Login.php\n            [line] => 55\n            [function] => getUserByIdentifier\n            [class] => CODOF\\User\\Login\n            [object] => CODOF\\User\\Login Object\n                (\n                    [identifier] => client_1@gmail.com\n                    [password] => Password\n                    [db:CODOF\\User\\Login:private] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                    [0] => client_1@gmail.com\n                )\n\n        )\n\n    [7] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Controller/Ajax/user/login.php\n            [line] => 23\n            [function] => process_login\n            [class] => CODOF\\User\\Login\n            [object] => CODOF\\User\\Login Object\n                (\n                    [identifier] => client_1@gmail.com\n                    [password] => Password\n                    [db:CODOF\\User\\Login:private] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [8] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 598\n            [function] => dologin\n            [class] => Controller\\Ajax\\user\\login\n            [object] => Controller\\Ajax\\user\\login Object\n                (\n                    [db] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [9] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Ext/limonade/limonade.php\n            [line] => 419\n            [function] => {closure}\n            [args] => Array\n                (\n                )\n\n        )\n\n    [10] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Access/Request.php\n            [line] => 94\n            [function] => run\n            [args] => Array\n                (\n                )\n\n        )\n\n    [11] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 952\n            [function] => start\n            [class] => CODOF\\Access\\Request\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [12] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/index.php\n            [line] => 22\n            [args] => Array\n                (\n                    [0] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n                )\n\n            [function] => require\n        )\n\n)\n', 1594831535),
(17, 0, 'Info', 'Failed login attempt for client_1@gmail.com. Wrong credentials', 6, 'Trace: Array\n(\n    [0] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 97\n            [function] => get_trace\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [1] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 73\n            [function] => set_options\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Array\n                        (\n                            [log_type] => Info\n                        )\n\n                    [1] => Failed login attempt for client_1@gmail.com. Wrong credentials\n                )\n\n        )\n\n    [2] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/Login.php\n            [line] => 80\n            [function] => info\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Failed login attempt for client_1@gmail.com. Wrong credentials\n                )\n\n        )\n\n    [3] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Controller/Ajax/user/login.php\n            [line] => 23\n            [function] => process_login\n            [class] => CODOF\\User\\Login\n            [object] => CODOF\\User\\Login Object\n                (\n                    [identifier] => client_1@gmail.com\n                    [password] => Password\n                    [db:CODOF\\User\\Login:private] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [4] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 598\n            [function] => dologin\n            [class] => Controller\\Ajax\\user\\login\n            [object] => Controller\\Ajax\\user\\login Object\n                (\n                    [db] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [5] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Ext/limonade/limonade.php\n            [line] => 419\n            [function] => {closure}\n            [args] => Array\n                (\n                )\n\n        )\n\n    [6] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Access/Request.php\n            [line] => 94\n            [function] => run\n            [args] => Array\n                (\n                )\n\n        )\n\n    [7] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 952\n            [function] => start\n            [class] => CODOF\\Access\\Request\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [8] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/index.php\n            [line] => 22\n            [args] => Array\n                (\n                    [0] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n                )\n\n            [function] => require\n        )\n\n)\n', 1594831535);
INSERT INTO `codo_logs` (`id`, `uid`, `log_type`, `message`, `severity`, `trace`, `log_time`) VALUES
(18, 0, 'Info', 'Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => client_1@gmail.com\n)\n Array\n(\n    [5eb4fc86187f3view_inserted] => 1\n    [5eb4fc8618832_csrf] => 77c23a6cf6e9e2347b42ee5c2eaa6e92\n)\n', 6, 'Trace: Array\n(\n    [0] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 97\n            [function] => get_trace\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [1] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 73\n            [function] => set_options\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Array\n                        (\n                            [log_type] => Info\n                        )\n\n                    [1] => Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => client_1@gmail.com\n)\n Array\n(\n    [5eb4fc86187f3view_inserted] => 1\n    [5eb4fc8618832_csrf] => 77c23a6cf6e9e2347b42ee5c2eaa6e92\n)\n\n                )\n\n        )\n\n    [2] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Util.php\n            [line] => 31\n            [function] => info\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => client_1@gmail.com\n)\n Array\n(\n    [5eb4fc86187f3view_inserted] => 1\n    [5eb4fc8618832_csrf] => 77c23a6cf6e9e2347b42ee5c2eaa6e92\n)\n\n                )\n\n        )\n\n    [3] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/User.php\n            [line] => 853\n            [function] => log\n            [class] => CODOF\\Util\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => client_1@gmail.com\n)\n Array\n(\n    [5eb4fc86187f3view_inserted] => 1\n    [5eb4fc8618832_csrf] => 77c23a6cf6e9e2347b42ee5c2eaa6e92\n)\n\n                )\n\n        )\n\n    [4] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/User.php\n            [line] => 666\n            [function] => getUserObject\n            [class] => CODOF\\User\\User\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => SELECT u.*,r.rid,r.is_primary FROM codo_users AS u LEFT JOIN codo_user_roles r ON u.id=r.uid WHERE u.username=:username\n                    [1] => Array\n                        (\n                            [username] => client_1@gmail.com\n                        )\n\n                    [2] => PDO Object\n                        (\n                        )\n\n                )\n\n        )\n\n    [5] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/Login.php\n            [line] => 93\n            [function] => getByUsername\n            [class] => CODOF\\User\\User\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => client_1@gmail.com\n                )\n\n        )\n\n    [6] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/Login.php\n            [line] => 55\n            [function] => getUserByIdentifier\n            [class] => CODOF\\User\\Login\n            [object] => CODOF\\User\\Login Object\n                (\n                    [identifier] => client_1@gmail.com\n                    [password] => Password\n                    [db:CODOF\\User\\Login:private] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                    [0] => client_1@gmail.com\n                )\n\n        )\n\n    [7] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Controller/Ajax/user/login.php\n            [line] => 23\n            [function] => process_login\n            [class] => CODOF\\User\\Login\n            [object] => CODOF\\User\\Login Object\n                (\n                    [identifier] => client_1@gmail.com\n                    [password] => Password\n                    [db:CODOF\\User\\Login:private] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [8] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 598\n            [function] => dologin\n            [class] => Controller\\Ajax\\user\\login\n            [object] => Controller\\Ajax\\user\\login Object\n                (\n                    [db] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [9] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Ext/limonade/limonade.php\n            [line] => 419\n            [function] => {closure}\n            [args] => Array\n                (\n                )\n\n        )\n\n    [10] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Access/Request.php\n            [line] => 94\n            [function] => run\n            [args] => Array\n                (\n                )\n\n        )\n\n    [11] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 952\n            [function] => start\n            [class] => CODOF\\Access\\Request\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [12] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/index.php\n            [line] => 22\n            [args] => Array\n                (\n                    [0] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n                )\n\n            [function] => require\n        )\n\n)\n', 1594831537),
(19, 0, 'Info', 'Failed login attempt for client_1@gmail.com. Wrong credentials', 6, 'Trace: Array\n(\n    [0] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 97\n            [function] => get_trace\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [1] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 73\n            [function] => set_options\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Array\n                        (\n                            [log_type] => Info\n                        )\n\n                    [1] => Failed login attempt for client_1@gmail.com. Wrong credentials\n                )\n\n        )\n\n    [2] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/Login.php\n            [line] => 80\n            [function] => info\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Failed login attempt for client_1@gmail.com. Wrong credentials\n                )\n\n        )\n\n    [3] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Controller/Ajax/user/login.php\n            [line] => 23\n            [function] => process_login\n            [class] => CODOF\\User\\Login\n            [object] => CODOF\\User\\Login Object\n                (\n                    [identifier] => client_1@gmail.com\n                    [password] => Password\n                    [db:CODOF\\User\\Login:private] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [4] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 598\n            [function] => dologin\n            [class] => Controller\\Ajax\\user\\login\n            [object] => Controller\\Ajax\\user\\login Object\n                (\n                    [db] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [5] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Ext/limonade/limonade.php\n            [line] => 419\n            [function] => {closure}\n            [args] => Array\n                (\n                )\n\n        )\n\n    [6] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Access/Request.php\n            [line] => 94\n            [function] => run\n            [args] => Array\n                (\n                )\n\n        )\n\n    [7] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 952\n            [function] => start\n            [class] => CODOF\\Access\\Request\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [8] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/index.php\n            [line] => 22\n            [args] => Array\n                (\n                    [0] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n                )\n\n            [function] => require\n        )\n\n)\n', 1594831537),
(20, 0, 'Info', 'Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => client_1@gmail.com\n)\n Array\n(\n    [5eb4fc86187f3view_inserted] => 1\n    [5eb4fc8618832_csrf] => 77c23a6cf6e9e2347b42ee5c2eaa6e92\n)\n', 6, 'Trace: Array\n(\n    [0] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 97\n            [function] => get_trace\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [1] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 73\n            [function] => set_options\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Array\n                        (\n                            [log_type] => Info\n                        )\n\n                    [1] => Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => client_1@gmail.com\n)\n Array\n(\n    [5eb4fc86187f3view_inserted] => 1\n    [5eb4fc8618832_csrf] => 77c23a6cf6e9e2347b42ee5c2eaa6e92\n)\n\n                )\n\n        )\n\n    [2] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Util.php\n            [line] => 31\n            [function] => info\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => client_1@gmail.com\n)\n Array\n(\n    [5eb4fc86187f3view_inserted] => 1\n    [5eb4fc8618832_csrf] => 77c23a6cf6e9e2347b42ee5c2eaa6e92\n)\n\n                )\n\n        )\n\n    [3] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/User.php\n            [line] => 853\n            [function] => log\n            [class] => CODOF\\Util\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => client_1@gmail.com\n)\n Array\n(\n    [5eb4fc86187f3view_inserted] => 1\n    [5eb4fc8618832_csrf] => 77c23a6cf6e9e2347b42ee5c2eaa6e92\n)\n\n                )\n\n        )\n\n    [4] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/User.php\n            [line] => 666\n            [function] => getUserObject\n            [class] => CODOF\\User\\User\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => SELECT u.*,r.rid,r.is_primary FROM codo_users AS u LEFT JOIN codo_user_roles r ON u.id=r.uid WHERE u.username=:username\n                    [1] => Array\n                        (\n                            [username] => client_1@gmail.com\n                        )\n\n                    [2] => PDO Object\n                        (\n                        )\n\n                )\n\n        )\n\n    [5] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/Login.php\n            [line] => 93\n            [function] => getByUsername\n            [class] => CODOF\\User\\User\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => client_1@gmail.com\n                )\n\n        )\n\n    [6] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/Login.php\n            [line] => 55\n            [function] => getUserByIdentifier\n            [class] => CODOF\\User\\Login\n            [object] => CODOF\\User\\Login Object\n                (\n                    [identifier] => client_1@gmail.com\n                    [password] => password\n                    [db:CODOF\\User\\Login:private] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                    [0] => client_1@gmail.com\n                )\n\n        )\n\n    [7] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Controller/Ajax/user/login.php\n            [line] => 23\n            [function] => process_login\n            [class] => CODOF\\User\\Login\n            [object] => CODOF\\User\\Login Object\n                (\n                    [identifier] => client_1@gmail.com\n                    [password] => password\n                    [db:CODOF\\User\\Login:private] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [8] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 598\n            [function] => dologin\n            [class] => Controller\\Ajax\\user\\login\n            [object] => Controller\\Ajax\\user\\login Object\n                (\n                    [db] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [9] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Ext/limonade/limonade.php\n            [line] => 419\n            [function] => {closure}\n            [args] => Array\n                (\n                )\n\n        )\n\n    [10] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Access/Request.php\n            [line] => 94\n            [function] => run\n            [args] => Array\n                (\n                )\n\n        )\n\n    [11] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 952\n            [function] => start\n            [class] => CODOF\\Access\\Request\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [12] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/index.php\n            [line] => 22\n            [args] => Array\n                (\n                    [0] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n                )\n\n            [function] => require\n        )\n\n)\n', 1594831547),
(21, 0, 'Info', 'Failed login attempt for client_1@gmail.com. Wrong credentials', 6, 'Trace: Array\n(\n    [0] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 97\n            [function] => get_trace\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [1] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 73\n            [function] => set_options\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Array\n                        (\n                            [log_type] => Info\n                        )\n\n                    [1] => Failed login attempt for client_1@gmail.com. Wrong credentials\n                )\n\n        )\n\n    [2] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/Login.php\n            [line] => 80\n            [function] => info\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Failed login attempt for client_1@gmail.com. Wrong credentials\n                )\n\n        )\n\n    [3] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Controller/Ajax/user/login.php\n            [line] => 23\n            [function] => process_login\n            [class] => CODOF\\User\\Login\n            [object] => CODOF\\User\\Login Object\n                (\n                    [identifier] => client_1@gmail.com\n                    [password] => password\n                    [db:CODOF\\User\\Login:private] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [4] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 598\n            [function] => dologin\n            [class] => Controller\\Ajax\\user\\login\n            [object] => Controller\\Ajax\\user\\login Object\n                (\n                    [db] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [5] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Ext/limonade/limonade.php\n            [line] => 419\n            [function] => {closure}\n            [args] => Array\n                (\n                )\n\n        )\n\n    [6] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Access/Request.php\n            [line] => 94\n            [function] => run\n            [args] => Array\n                (\n                )\n\n        )\n\n    [7] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 952\n            [function] => start\n            [class] => CODOF\\Access\\Request\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [8] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/index.php\n            [line] => 22\n            [args] => Array\n                (\n                    [0] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n                )\n\n            [function] => require\n        )\n\n)\n', 1594831547),
(22, 0, 'Info', 'Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => client1@gmail.com\n)\n Array\n(\n    [5eb4fc86187f3view_inserted] => 1\n    [5eb4fc8618832_csrf] => 77c23a6cf6e9e2347b42ee5c2eaa6e92\n)\n', 6, 'Trace: Array\n(\n    [0] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 97\n            [function] => get_trace\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [1] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 73\n            [function] => set_options\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Array\n                        (\n                            [log_type] => Info\n                        )\n\n                    [1] => Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => client1@gmail.com\n)\n Array\n(\n    [5eb4fc86187f3view_inserted] => 1\n    [5eb4fc8618832_csrf] => 77c23a6cf6e9e2347b42ee5c2eaa6e92\n)\n\n                )\n\n        )\n\n    [2] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Util.php\n            [line] => 31\n            [function] => info\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => client1@gmail.com\n)\n Array\n(\n    [5eb4fc86187f3view_inserted] => 1\n    [5eb4fc8618832_csrf] => 77c23a6cf6e9e2347b42ee5c2eaa6e92\n)\n\n                )\n\n        )\n\n    [3] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/User.php\n            [line] => 853\n            [function] => log\n            [class] => CODOF\\Util\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => client1@gmail.com\n)\n Array\n(\n    [5eb4fc86187f3view_inserted] => 1\n    [5eb4fc8618832_csrf] => 77c23a6cf6e9e2347b42ee5c2eaa6e92\n)\n\n                )\n\n        )\n\n    [4] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/User.php\n            [line] => 666\n            [function] => getUserObject\n            [class] => CODOF\\User\\User\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => SELECT u.*,r.rid,r.is_primary FROM codo_users AS u LEFT JOIN codo_user_roles r ON u.id=r.uid WHERE u.username=:username\n                    [1] => Array\n                        (\n                            [username] => client1@gmail.com\n                        )\n\n                    [2] => PDO Object\n                        (\n                        )\n\n                )\n\n        )\n\n    [5] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/Login.php\n            [line] => 93\n            [function] => getByUsername\n            [class] => CODOF\\User\\User\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => client1@gmail.com\n                )\n\n        )\n\n    [6] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/Login.php\n            [line] => 55\n            [function] => getUserByIdentifier\n            [class] => CODOF\\User\\Login\n            [object] => CODOF\\User\\Login Object\n                (\n                    [identifier] => client1@gmail.com\n                    [password] => password\n                    [db:CODOF\\User\\Login:private] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                    [0] => client1@gmail.com\n                )\n\n        )\n\n    [7] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Controller/Ajax/user/login.php\n            [line] => 23\n            [function] => process_login\n            [class] => CODOF\\User\\Login\n            [object] => CODOF\\User\\Login Object\n                (\n                    [identifier] => client1@gmail.com\n                    [password] => password\n                    [db:CODOF\\User\\Login:private] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [8] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 598\n            [function] => dologin\n            [class] => Controller\\Ajax\\user\\login\n            [object] => Controller\\Ajax\\user\\login Object\n                (\n                    [db] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [9] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Ext/limonade/limonade.php\n            [line] => 419\n            [function] => {closure}\n            [args] => Array\n                (\n                )\n\n        )\n\n    [10] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Access/Request.php\n            [line] => 94\n            [function] => run\n            [args] => Array\n                (\n                )\n\n        )\n\n    [11] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 952\n            [function] => start\n            [class] => CODOF\\Access\\Request\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [12] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/index.php\n            [line] => 22\n            [args] => Array\n                (\n                    [0] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n                )\n\n            [function] => require\n        )\n\n)\n', 1594831756),
(23, 0, 'Info', 'Failed login attempt for client1@gmail.com. Wrong credentials', 6, 'Trace: Array\n(\n    [0] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 97\n            [function] => get_trace\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [1] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 73\n            [function] => set_options\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Array\n                        (\n                            [log_type] => Info\n                        )\n\n                    [1] => Failed login attempt for client1@gmail.com. Wrong credentials\n                )\n\n        )\n\n    [2] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/Login.php\n            [line] => 80\n            [function] => info\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Failed login attempt for client1@gmail.com. Wrong credentials\n                )\n\n        )\n\n    [3] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Controller/Ajax/user/login.php\n            [line] => 23\n            [function] => process_login\n            [class] => CODOF\\User\\Login\n            [object] => CODOF\\User\\Login Object\n                (\n                    [identifier] => client1@gmail.com\n                    [password] => password\n                    [db:CODOF\\User\\Login:private] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [4] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 598\n            [function] => dologin\n            [class] => Controller\\Ajax\\user\\login\n            [object] => Controller\\Ajax\\user\\login Object\n                (\n                    [db] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [5] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Ext/limonade/limonade.php\n            [line] => 419\n            [function] => {closure}\n            [args] => Array\n                (\n                )\n\n        )\n\n    [6] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Access/Request.php\n            [line] => 94\n            [function] => run\n            [args] => Array\n                (\n                )\n\n        )\n\n    [7] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 952\n            [function] => start\n            [class] => CODOF\\Access\\Request\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [8] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/index.php\n            [line] => 22\n            [args] => Array\n                (\n                    [0] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n                )\n\n            [function] => require\n        )\n\n)\n', 1594831756),
(24, 0, 'Info', 'Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => client_1@gmail.com\n)\n Array\n(\n    [5eb4fc86187f3view_inserted] => 1\n    [5eb4fc8618832_csrf] => 77c23a6cf6e9e2347b42ee5c2eaa6e92\n)\n', 6, 'Trace: Array\n(\n    [0] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 97\n            [function] => get_trace\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [1] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 73\n            [function] => set_options\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Array\n                        (\n                            [log_type] => Info\n                        )\n\n                    [1] => Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => client_1@gmail.com\n)\n Array\n(\n    [5eb4fc86187f3view_inserted] => 1\n    [5eb4fc8618832_csrf] => 77c23a6cf6e9e2347b42ee5c2eaa6e92\n)\n\n                )\n\n        )\n\n    [2] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Util.php\n            [line] => 31\n            [function] => info\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => client_1@gmail.com\n)\n Array\n(\n    [5eb4fc86187f3view_inserted] => 1\n    [5eb4fc8618832_csrf] => 77c23a6cf6e9e2347b42ee5c2eaa6e92\n)\n\n                )\n\n        )\n\n    [3] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/User.php\n            [line] => 853\n            [function] => log\n            [class] => CODOF\\Util\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => client_1@gmail.com\n)\n Array\n(\n    [5eb4fc86187f3view_inserted] => 1\n    [5eb4fc8618832_csrf] => 77c23a6cf6e9e2347b42ee5c2eaa6e92\n)\n\n                )\n\n        )\n\n    [4] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/User.php\n            [line] => 666\n            [function] => getUserObject\n            [class] => CODOF\\User\\User\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => SELECT u.*,r.rid,r.is_primary FROM codo_users AS u LEFT JOIN codo_user_roles r ON u.id=r.uid WHERE u.username=:username\n                    [1] => Array\n                        (\n                            [username] => client_1@gmail.com\n                        )\n\n                    [2] => PDO Object\n                        (\n                        )\n\n                )\n\n        )\n\n    [5] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/Login.php\n            [line] => 93\n            [function] => getByUsername\n            [class] => CODOF\\User\\User\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => client_1@gmail.com\n                )\n\n        )\n\n    [6] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/Login.php\n            [line] => 55\n            [function] => getUserByIdentifier\n            [class] => CODOF\\User\\Login\n            [object] => CODOF\\User\\Login Object\n                (\n                    [identifier] => client_1@gmail.com\n                    [password] => password\n                    [db:CODOF\\User\\Login:private] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                    [0] => client_1@gmail.com\n                )\n\n        )\n\n    [7] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Controller/Ajax/user/login.php\n            [line] => 23\n            [function] => process_login\n            [class] => CODOF\\User\\Login\n            [object] => CODOF\\User\\Login Object\n                (\n                    [identifier] => client_1@gmail.com\n                    [password] => password\n                    [db:CODOF\\User\\Login:private] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [8] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 598\n            [function] => dologin\n            [class] => Controller\\Ajax\\user\\login\n            [object] => Controller\\Ajax\\user\\login Object\n                (\n                    [db] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [9] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Ext/limonade/limonade.php\n            [line] => 419\n            [function] => {closure}\n            [args] => Array\n                (\n                )\n\n        )\n\n    [10] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Access/Request.php\n            [line] => 94\n            [function] => run\n            [args] => Array\n                (\n                )\n\n        )\n\n    [11] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 952\n            [function] => start\n            [class] => CODOF\\Access\\Request\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [12] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/index.php\n            [line] => 22\n            [args] => Array\n                (\n                    [0] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n                )\n\n            [function] => require\n        )\n\n)\n', 1594831787),
(25, 0, 'Info', 'Failed login attempt for client_1@gmail.com. Wrong credentials', 6, 'Trace: Array\n(\n    [0] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 97\n            [function] => get_trace\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [1] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 73\n            [function] => set_options\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Array\n                        (\n                            [log_type] => Info\n                        )\n\n                    [1] => Failed login attempt for client_1@gmail.com. Wrong credentials\n                )\n\n        )\n\n    [2] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/Login.php\n            [line] => 80\n            [function] => info\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Failed login attempt for client_1@gmail.com. Wrong credentials\n                )\n\n        )\n\n    [3] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Controller/Ajax/user/login.php\n            [line] => 23\n            [function] => process_login\n            [class] => CODOF\\User\\Login\n            [object] => CODOF\\User\\Login Object\n                (\n                    [identifier] => client_1@gmail.com\n                    [password] => password\n                    [db:CODOF\\User\\Login:private] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [4] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 598\n            [function] => dologin\n            [class] => Controller\\Ajax\\user\\login\n            [object] => Controller\\Ajax\\user\\login Object\n                (\n                    [db] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [5] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Ext/limonade/limonade.php\n            [line] => 419\n            [function] => {closure}\n            [args] => Array\n                (\n                )\n\n        )\n\n    [6] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Access/Request.php\n            [line] => 94\n            [function] => run\n            [args] => Array\n                (\n                )\n\n        )\n\n    [7] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 952\n            [function] => start\n            [class] => CODOF\\Access\\Request\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [8] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/index.php\n            [line] => 22\n            [args] => Array\n                (\n                    [0] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n                )\n\n            [function] => require\n        )\n\n)\n', 1594831787);
INSERT INTO `codo_logs` (`id`, `uid`, `log_type`, `message`, `severity`, `trace`, `log_time`) VALUES
(26, 0, 'Info', 'Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => client_1@gmail.com\n)\n Array\n(\n    [5eb4fc86187f3view_inserted] => 1\n    [5eb4fc8618832_csrf] => c2e07c64b46cc21147a70b6c412fe81e\n)\n', 6, 'Trace: Array\n(\n    [0] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 97\n            [function] => get_trace\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [1] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 73\n            [function] => set_options\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Array\n                        (\n                            [log_type] => Info\n                        )\n\n                    [1] => Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => client_1@gmail.com\n)\n Array\n(\n    [5eb4fc86187f3view_inserted] => 1\n    [5eb4fc8618832_csrf] => c2e07c64b46cc21147a70b6c412fe81e\n)\n\n                )\n\n        )\n\n    [2] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Util.php\n            [line] => 31\n            [function] => info\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => client_1@gmail.com\n)\n Array\n(\n    [5eb4fc86187f3view_inserted] => 1\n    [5eb4fc8618832_csrf] => c2e07c64b46cc21147a70b6c412fe81e\n)\n\n                )\n\n        )\n\n    [3] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/User.php\n            [line] => 853\n            [function] => log\n            [class] => CODOF\\Util\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => client_1@gmail.com\n)\n Array\n(\n    [5eb4fc86187f3view_inserted] => 1\n    [5eb4fc8618832_csrf] => c2e07c64b46cc21147a70b6c412fe81e\n)\n\n                )\n\n        )\n\n    [4] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/User.php\n            [line] => 666\n            [function] => getUserObject\n            [class] => CODOF\\User\\User\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => SELECT u.*,r.rid,r.is_primary FROM codo_users AS u LEFT JOIN codo_user_roles r ON u.id=r.uid WHERE u.username=:username\n                    [1] => Array\n                        (\n                            [username] => client_1@gmail.com\n                        )\n\n                    [2] => PDO Object\n                        (\n                        )\n\n                )\n\n        )\n\n    [5] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/Login.php\n            [line] => 93\n            [function] => getByUsername\n            [class] => CODOF\\User\\User\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => client_1@gmail.com\n                )\n\n        )\n\n    [6] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/Login.php\n            [line] => 55\n            [function] => getUserByIdentifier\n            [class] => CODOF\\User\\Login\n            [object] => CODOF\\User\\Login Object\n                (\n                    [identifier] => client_1@gmail.com\n                    [password] => password\n                    [db:CODOF\\User\\Login:private] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                    [0] => client_1@gmail.com\n                )\n\n        )\n\n    [7] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Controller/Ajax/user/login.php\n            [line] => 23\n            [function] => process_login\n            [class] => CODOF\\User\\Login\n            [object] => CODOF\\User\\Login Object\n                (\n                    [identifier] => client_1@gmail.com\n                    [password] => password\n                    [db:CODOF\\User\\Login:private] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [8] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 598\n            [function] => dologin\n            [class] => Controller\\Ajax\\user\\login\n            [object] => Controller\\Ajax\\user\\login Object\n                (\n                    [db] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [9] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Ext/limonade/limonade.php\n            [line] => 419\n            [function] => {closure}\n            [args] => Array\n                (\n                )\n\n        )\n\n    [10] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Access/Request.php\n            [line] => 94\n            [function] => run\n            [args] => Array\n                (\n                )\n\n        )\n\n    [11] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 952\n            [function] => start\n            [class] => CODOF\\Access\\Request\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [12] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/index.php\n            [line] => 22\n            [args] => Array\n                (\n                    [0] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n                )\n\n            [function] => require\n        )\n\n)\n', 1599531771),
(27, 0, 'Info', 'Failed login attempt for client_1@gmail.com. Wrong credentials', 6, 'Trace: Array\n(\n    [0] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 97\n            [function] => get_trace\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [1] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 73\n            [function] => set_options\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Array\n                        (\n                            [log_type] => Info\n                        )\n\n                    [1] => Failed login attempt for client_1@gmail.com. Wrong credentials\n                )\n\n        )\n\n    [2] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/Login.php\n            [line] => 80\n            [function] => info\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Failed login attempt for client_1@gmail.com. Wrong credentials\n                )\n\n        )\n\n    [3] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Controller/Ajax/user/login.php\n            [line] => 23\n            [function] => process_login\n            [class] => CODOF\\User\\Login\n            [object] => CODOF\\User\\Login Object\n                (\n                    [identifier] => client_1@gmail.com\n                    [password] => password\n                    [db:CODOF\\User\\Login:private] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [4] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 598\n            [function] => dologin\n            [class] => Controller\\Ajax\\user\\login\n            [object] => Controller\\Ajax\\user\\login Object\n                (\n                    [db] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [5] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Ext/limonade/limonade.php\n            [line] => 419\n            [function] => {closure}\n            [args] => Array\n                (\n                )\n\n        )\n\n    [6] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Access/Request.php\n            [line] => 94\n            [function] => run\n            [args] => Array\n                (\n                )\n\n        )\n\n    [7] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 952\n            [function] => start\n            [class] => CODOF\\Access\\Request\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [8] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/index.php\n            [line] => 22\n            [args] => Array\n                (\n                    [0] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n                )\n\n            [function] => require\n        )\n\n)\n', 1599531771),
(28, 0, 'Info', 'Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => freelancer_1@gmail.com\n)\n Array\n(\n    [5eb4fc8618832_csrf] => 5430b47f096aa1cbff20bfb93596468c\n)\n', 6, 'Trace: Array\n(\n    [0] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 97\n            [function] => get_trace\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [1] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 73\n            [function] => set_options\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Array\n                        (\n                            [log_type] => Info\n                        )\n\n                    [1] => Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => freelancer_1@gmail.com\n)\n Array\n(\n    [5eb4fc8618832_csrf] => 5430b47f096aa1cbff20bfb93596468c\n)\n\n                )\n\n        )\n\n    [2] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Util.php\n            [line] => 31\n            [function] => info\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => freelancer_1@gmail.com\n)\n Array\n(\n    [5eb4fc8618832_csrf] => 5430b47f096aa1cbff20bfb93596468c\n)\n\n                )\n\n        )\n\n    [3] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/User.php\n            [line] => 853\n            [function] => log\n            [class] => CODOF\\Util\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Unable to fetch user data User.php:39 vals= Array\n(\n    [username] => freelancer_1@gmail.com\n)\n Array\n(\n    [5eb4fc8618832_csrf] => 5430b47f096aa1cbff20bfb93596468c\n)\n\n                )\n\n        )\n\n    [4] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/User.php\n            [line] => 666\n            [function] => getUserObject\n            [class] => CODOF\\User\\User\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => SELECT u.*,r.rid,r.is_primary FROM codo_users AS u LEFT JOIN codo_user_roles r ON u.id=r.uid WHERE u.username=:username\n                    [1] => Array\n                        (\n                            [username] => freelancer_1@gmail.com\n                        )\n\n                    [2] => PDO Object\n                        (\n                        )\n\n                )\n\n        )\n\n    [5] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/Login.php\n            [line] => 93\n            [function] => getByUsername\n            [class] => CODOF\\User\\User\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => freelancer_1@gmail.com\n                )\n\n        )\n\n    [6] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/Login.php\n            [line] => 55\n            [function] => getUserByIdentifier\n            [class] => CODOF\\User\\Login\n            [object] => CODOF\\User\\Login Object\n                (\n                    [identifier] => freelancer_1@gmail.com\n                    [password] => password\n                    [db:CODOF\\User\\Login:private] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                    [0] => freelancer_1@gmail.com\n                )\n\n        )\n\n    [7] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Controller/Ajax/user/login.php\n            [line] => 23\n            [function] => process_login\n            [class] => CODOF\\User\\Login\n            [object] => CODOF\\User\\Login Object\n                (\n                    [identifier] => freelancer_1@gmail.com\n                    [password] => password\n                    [db:CODOF\\User\\Login:private] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [8] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 598\n            [function] => dologin\n            [class] => Controller\\Ajax\\user\\login\n            [object] => Controller\\Ajax\\user\\login Object\n                (\n                    [db] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [9] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Ext/limonade/limonade.php\n            [line] => 419\n            [function] => {closure}\n            [args] => Array\n                (\n                )\n\n        )\n\n    [10] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Access/Request.php\n            [line] => 94\n            [function] => run\n            [args] => Array\n                (\n                )\n\n        )\n\n    [11] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 952\n            [function] => start\n            [class] => CODOF\\Access\\Request\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [12] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/index.php\n            [line] => 22\n            [args] => Array\n                (\n                    [0] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n                )\n\n            [function] => require\n        )\n\n)\n', 1600416733),
(29, 0, 'Info', 'Failed login attempt for freelancer_1@gmail.com. Wrong credentials', 6, 'Trace: Array\n(\n    [0] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 97\n            [function] => get_trace\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [1] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Log.php\n            [line] => 73\n            [function] => set_options\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Array\n                        (\n                            [log_type] => Info\n                        )\n\n                    [1] => Failed login attempt for freelancer_1@gmail.com. Wrong credentials\n                )\n\n        )\n\n    [2] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/User/Login.php\n            [line] => 80\n            [function] => info\n            [class] => CODOF\\Log\n            [type] => ::\n            [args] => Array\n                (\n                    [0] => Failed login attempt for freelancer_1@gmail.com. Wrong credentials\n                )\n\n        )\n\n    [3] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Controller/Ajax/user/login.php\n            [line] => 23\n            [function] => process_login\n            [class] => CODOF\\User\\Login\n            [object] => CODOF\\User\\Login Object\n                (\n                    [identifier] => freelancer_1@gmail.com\n                    [password] => password\n                    [db:CODOF\\User\\Login:private] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [4] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 598\n            [function] => dologin\n            [class] => Controller\\Ajax\\user\\login\n            [object] => Controller\\Ajax\\user\\login Object\n                (\n                    [db] => PDO Object\n                        (\n                        )\n\n                )\n\n            [type] => ->\n            [args] => Array\n                (\n                )\n\n        )\n\n    [5] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/Ext/limonade/limonade.php\n            [line] => 419\n            [function] => {closure}\n            [args] => Array\n                (\n                )\n\n        )\n\n    [6] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Access/Request.php\n            [line] => 94\n            [function] => run\n            [args] => Array\n                (\n                )\n\n        )\n\n    [7] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n            [line] => 952\n            [function] => start\n            [class] => CODOF\\Access\\Request\n            [type] => ::\n            [args] => Array\n                (\n                )\n\n        )\n\n    [8] => Array\n        (\n            [file] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/index.php\n            [line] => 22\n            [args] => Array\n                (\n                    [0] => /home/u628291831/domains/connecto3d.com/public_html/public/forum/routes.php\n                )\n\n            [function] => require\n        )\n\n)\n', 1600416733);

-- --------------------------------------------------------

--
-- Table structure for table `codo_mail_queue`
--

CREATE TABLE `codo_mail_queue` (
  `id` int(10) UNSIGNED NOT NULL,
  `mail_type` int(11) DEFAULT 1,
  `mail_status` int(11) NOT NULL DEFAULT 0,
  `from_address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `to_address` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `mail_subject` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `codo_notify`
--

CREATE TABLE `codo_notify` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `uid` int(11) NOT NULL,
  `nid` int(11) NOT NULL,
  `created` int(11) NOT NULL,
  `is_read` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `codo_notify_queue`
--

CREATE TABLE `codo_notify_queue` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `nid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `codo_notify_subscribers`
--

CREATE TABLE `codo_notify_subscribers` (
  `id` int(10) UNSIGNED NOT NULL,
  `cid` int(11) DEFAULT NULL,
  `tid` int(11) DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `type` varchar(60) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `codo_notify_text`
--

CREATE TABLE `codo_notify_text` (
  `id` int(10) UNSIGNED NOT NULL,
  `data` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `status_link` int(11) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `codo_pages`
--

CREATE TABLE `codo_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `codo_pages`
--

INSERT INTO `codo_pages` (`id`, `title`, `url`, `content`) VALUES
(6, 'Terms Of Service', 'terms-of-service', '<h1>Terms and Conditions</h1>\r\n<hr>\r\n<p>By using and accessing this website, <a href=\"https://codoforum.com\">codoforum.com</a> a part of <a href=\"https://codologic.com\">Codologic</a> (collectively referred to as the \"Site\" or \"Codoforum\" in these Terms of Service), you (\"you\", \"user\" or, \"end user\") agree to these Terms of Service (collectively, the \"Terms of Service\" or \"Agreement\").</p>\r\n<p>IF YOU DO NOT AGREE TO THE TERMS OF THIS AGREEMENT, IMMEDIATELY STOP ACCESSING THIS SITE.</p>\r\n<p>You agree not to modify, copy, distribute, transmit, display, perform, reproduce, publish, license, transfer, create derivate work from, sell or re-sell any content or information obtained from or through the Site.\r\n<br><br><strong>Third-party Sites.</strong></p>\r\n<p>The Site may contain links to other websites maintained by third-parties. These links are provided solely as a convenience and does not imply endorsement of, or association with, the party by Codologic.\r\n<br><br><strong>Modifications to this Agreement.</strong></p>\r\n<p>Codologic reserves the right to change or modify any of the terms and conditions contained in this Agreement at any time. You acknowledge and agree that it is your responsibility to review the Site and these Terms of Service from time to time. Your continued use of the Site after such modifications to this Agreement will constitute acknowledgment of the modified Terms of Service and agreement to abide and be bound by the modified Terms of Service.\r\n<br><br><strong>Termination of Use.</strong></p>\r\n<p>Codologic shall have the right to immediately terminate or suspend, in its discretion, your access to all or part of the Site with or without notice for any reason.\r\n<br><br><strong>Limitation of Liability.</strong></p>\r\n<p>In no event shall Codologic or its affiliates be liable for any indirect, incidental, special, punitive damages or consequential damages of any kind, or any damages whatsoever arising out of or related to your use of the Site, the content and other information obtained therein.</p>\r\n<p>Certain jurisdictions prohibit the exclusion or limitation of liability for consequential or incidental damages, thus the above limitations may not apply to you.\r\n<br><br><strong>Indemnity</strong></p>\r\n<p>You agree to indemnify and hold us, and our subsidiaries, affiliates, directors, officers, agents, vendors or other partners and employees harmless from any claim or demand, including attorneys’ fees, made by any third party due to or arising out of any material or information posted, provided, transmitted or otherwise made available by you on this Site or through Codologic.com’s services, or by your violation of these Terms, or by your violation of the rights of another.\r\n<br><br><strong>Disclaimers and Limitation of Liability </strong></p>\r\n<p>You understand and agree that this Site is provided \"AS-IS\" and that we assume no responsibility for your ability to (or any costs or fees associated with your ability to) obtain access to Codologic.com. Nor do we assume any liability for the failure to store or maintain any user communications or personal settings.</p>\r\n<p>NO ADVICE OR INFORMATION, WHETHER ORAL OR WRITTEN, OBTAINED BY YOU FROM CODOLOGIC.COM OR THROUGH OR FROM ITS SERVICES SHALL CREATE ANY WARRANTY NOT EXPRESSLY STATED IN THESE TERMS AND CONDITIONS. IN NO EVENT SHALL CODOLOGIC.COM OR ITS OWNER BE LIABLE TO YOU OR ANY THIRD PARTY FOR ANY INDIRECT, CONSEQUENTIAL, EXEMPLARY, INCIDENTAL, SPECIAL OR PUNITIVE DAMAGES, INCLUDING LOST PROFIT DAMAGES ARISING FROM YOUR USE OF CODOLOGIC.COM OR ITS SERVICES EVEN IF WE HAVE BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.\r\n<br><br><strong>Jurisdiction</strong></p>\r\n<p>This agreement is governed and construed in accordance with the Laws of Union of India. You hereby irrevocably consent to the exclusive jurisdiction and venue of courts in Mumbai, Maharashtra, India, in all disputes arising out of or relating to the use of Codologic site/services. Use of the Codologic site/services is unauthorized in any jurisdiction that does not give effect to all provisions of these terms and conditions, including without limitation this paragraph. You agree to indemnify and hold Codologic.com, its subsidiaries, affiliates, officers, directors, employees, and representatives harmless from any claim, demand, or damage, including reasonable attorneys\' fees, asserted by any third party due to or arising out of your use of or conduct on the Codologic site/services.</p>\r\n<p>The section titles and other headings in these Terms are for convenience only and have no legal or contractual effect. Our failure to exercise or enforce any right or provision of these Terms will not operate as a waiver of such right or provision. If any provision of these Terms is unlawful, void or unenforceable, that provision is deemed severable and does not affect the validity and enforceability of any remaining provisions.</p>\r\n<p><br><br><strong>Date of Last Update.</strong></p>\r\n<p>This agreement was last updated on May 15, 2014.</p>\r\n'),
(7, 'Privacy Policy', 'privacy-policy', '\r\n        \r\n <h1>Privacy policy</h1>\r\n <hr>\r\n <br>       \r\n        \r\n<p><strong>Privacy policy for Codoforum:</strong></p>\r\n<p>Your use of any information or materials on this website is entirely at your own decision, for which we shall not be liable. </p>\r\n<p>It shall be your own responsibility to ensure that any products, services or information available through this website meet your specific requirements.</p>\r\n<p>This website contains material which is owned by or licensed to us. This material includes, but is not limited to, the design, layout, look, appearance and graphics. Reproduction is prohibited other than in accordance with the copyright notice, which forms part of these terms and conditions.</p>\r\n<p>All trademarks reproduced in this website which are not the property of, or licensed to, the operator are acknowledged on the website.\r\nUnauthorized use of this website may give rise to a claim for damages and/or be a criminal offence.</p>\r\n<p>From time to time this website may also include links to other websites. These links are provided for your convenience to provide further information. They do not signify that we endorse the website(s). </p>\r\n<p>We have no responsibility for the content of the linked website(s).\r\nYour use of this website and any dispute arising out of such use of the website is subject to the laws of India or other regulatory authority.</p>\r\n<br>\r\n<br>\r\n<p><strong>Log Files:</strong></p>\r\n<p>Codoforum makes use of log files (which includes IP addresses, type of browser, internet service providers, referrer, number of clicks etc) to understand user movements and demographics. Such information is not linked to any information that is personally identifiable.</p>\r\n\r\n<br>\r\n<br>\r\n<p><strong>Cookies:</strong></p>\r\n<p>Codoforum uses cookies to store information about visitors preferences, record user-specific information on which pages the user access or visit, customize Web page content based on visitors browser type or other information that the visitor sends via their browser.</p>\r\n<p>We will not sell, disseminate, disclose, trade, transmit, transfer, share, lease or rent any personally identifiable information to any third party not specifically authorized by you to receive your information except as we have disclosed to you in this Privacy Policy. However we may use such information to update you about promotional offers and updates from us.</p>\r\n<br>\r\n<br>\r\n<p><strong>Changes in Our Privacy Policy:</strong></p>\r\n<p>We reserve the right to change this Privacy Policy without providing you with advance notice of our intent to make the changes.</p>\r\n<p>If you believe that any information we are holding on you is incorrect or incomplete, please contact us as soon as possible.</p>\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `codo_page_roles`
--

CREATE TABLE `codo_page_roles` (
  `pid` int(11) NOT NULL,
  `rid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `codo_permissions`
--

CREATE TABLE `codo_permissions` (
  `pid` int(10) UNSIGNED NOT NULL,
  `rid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `permission` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `granted` int(11) NOT NULL,
  `inherited` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `codo_permissions`
--

INSERT INTO `codo_permissions` (`pid`, `rid`, `cid`, `tid`, `permission`, `granted`, `inherited`) VALUES
(296, 1, 0, 0, 'view user profiles', 1, -1),
(297, 1, 0, 0, 'use search', 1, -1),
(298, 1, 0, 0, 'view all topics', 1, -1),
(299, 1, 0, 0, 'view my topics', 0, -1),
(300, 1, 0, 0, 'create new topic', 0, -1),
(301, 1, 0, 0, 'reply to all topics', 0, -1),
(302, 1, 0, 0, 'edit my topics', 0, -1),
(303, 1, 0, 0, 'edit all topics', 0, -1),
(304, 1, 0, 0, 'delete my topics', 0, -1),
(305, 1, 0, 0, 'delete all topics', 0, -1),
(306, 1, 0, 0, 'view forum', 1, -1),
(355, 1, 0, 0, 'edit my posts', 0, -1),
(356, 1, 0, 0, 'edit all posts', 0, -1),
(357, 1, 0, 0, 'delete my posts', 0, -1),
(358, 1, 0, 0, 'delete all posts', 0, -1),
(359, 2, 0, 0, 'view user profiles', 1, -1),
(360, 2, 0, 0, 'use search', 1, -1),
(361, 2, 0, 0, 'view all topics', 1, -1),
(362, 2, 0, 0, 'view my topics', 0, -1),
(363, 2, 0, 0, 'create new topic', 1, -1),
(364, 2, 0, 0, 'reply to all topics', 1, -1),
(365, 2, 0, 0, 'edit my topics', 1, -1),
(366, 2, 0, 0, 'edit all topics', 0, -1),
(367, 2, 0, 0, 'delete my topics', 1, -1),
(368, 2, 0, 0, 'delete all topics', 0, -1),
(369, 2, 0, 0, 'view forum', 1, -1),
(370, 2, 0, 0, 'edit my posts', 1, -1),
(371, 2, 0, 0, 'edit all posts', 0, -1),
(372, 2, 0, 0, 'delete my posts', 1, -1),
(373, 2, 0, 0, 'delete all posts', 0, -1),
(374, 3, 0, 0, 'view user profiles', 1, -1),
(375, 3, 0, 0, 'use search', 1, -1),
(376, 3, 0, 0, 'view all topics', 1, -1),
(377, 3, 0, 0, 'view my topics', 0, -1),
(378, 3, 0, 0, 'create new topic', 1, -1),
(379, 3, 0, 0, 'reply to all topics', 1, -1),
(380, 3, 0, 0, 'edit my topics', 1, -1),
(381, 3, 0, 0, 'edit all topics', 1, -1),
(382, 3, 0, 0, 'delete my topics', 1, -1),
(383, 3, 0, 0, 'delete all topics', 1, -1),
(384, 3, 0, 0, 'view forum', 1, -1),
(385, 3, 0, 0, 'edit my posts', 1, -1),
(386, 3, 0, 0, 'edit all posts', 1, -1),
(387, 3, 0, 0, 'delete my posts', 1, -1),
(388, 3, 0, 0, 'delete all posts', 1, -1),
(389, 4, 0, 0, 'view user profiles', 1, -1),
(390, 4, 0, 0, 'use search', 1, -1),
(391, 4, 0, 0, 'view all topics', 1, -1),
(392, 4, 0, 0, 'view my topics', 0, -1),
(393, 4, 0, 0, 'create new topic', 1, -1),
(394, 4, 0, 0, 'reply to all topics', 1, -1),
(395, 4, 0, 0, 'edit my topics', 1, -1),
(396, 4, 0, 0, 'edit all topics', 1, -1),
(397, 4, 0, 0, 'delete my topics', 1, -1),
(398, 4, 0, 0, 'delete all topics', 1, -1),
(399, 4, 0, 0, 'view forum', 1, -1),
(400, 4, 0, 0, 'edit my posts', 1, -1),
(401, 4, 0, 0, 'edit all posts', 1, -1),
(402, 4, 0, 0, 'delete my posts', 1, -1),
(403, 4, 0, 0, 'delete all posts', 1, -1),
(404, 6, 0, 0, 'view user profiles', 1, -1),
(405, 6, 0, 0, 'use search', 1, -1),
(406, 6, 0, 0, 'view all topics', 0, -1),
(407, 6, 0, 0, 'view my topics', 0, -1),
(408, 6, 0, 0, 'create new topic', 0, -1),
(409, 6, 0, 0, 'reply to all topics', 0, -1),
(410, 6, 0, 0, 'edit my topics', 0, -1),
(411, 6, 0, 0, 'edit all topics', 0, -1),
(412, 6, 0, 0, 'delete my topics', 0, -1),
(413, 6, 0, 0, 'delete all topics', 0, -1),
(414, 6, 0, 0, 'view forum', 1, -1),
(415, 6, 0, 0, 'edit my posts', 0, -1),
(416, 6, 0, 0, 'edit all posts', 0, -1),
(417, 6, 0, 0, 'delete my posts', 0, -1),
(418, 6, 0, 0, 'delete all posts', 0, -1),
(419, 5, 0, 0, 'view user profiles', 1, -1),
(420, 5, 0, 0, 'use search', 1, -1),
(421, 5, 0, 0, 'view all topics', 1, -1),
(422, 5, 0, 0, 'view my topics', 0, -1),
(423, 5, 0, 0, 'create new topic', 0, -1),
(424, 5, 0, 0, 'reply to all topics', 0, -1),
(425, 5, 0, 0, 'edit my topics', 0, -1),
(426, 5, 0, 0, 'edit all topics', 0, -1),
(427, 5, 0, 0, 'delete my topics', 0, -1),
(428, 5, 0, 0, 'delete all topics', 0, -1),
(429, 5, 0, 0, 'view forum', 1, -1),
(430, 5, 0, 0, 'edit my posts', 0, -1),
(431, 5, 0, 0, 'edit all posts', 0, -1),
(432, 5, 0, 0, 'delete my posts', 0, -1),
(433, 5, 0, 0, 'delete all posts', 0, -1),
(434, 6, 3, 0, 'view all topics', 0, 1),
(435, 6, 3, 0, 'view my topics', 0, 1),
(436, 6, 3, 0, 'create new topic', 0, 1),
(437, 6, 3, 0, 'reply to all topics', 0, 1),
(438, 6, 3, 0, 'edit my topics', 0, 1),
(439, 6, 3, 0, 'edit all topics', 0, 1),
(440, 6, 3, 0, 'delete my topics', 0, 1),
(441, 6, 3, 0, 'delete all topics', 0, 1),
(442, 6, 3, 0, 'edit my posts', 0, 1),
(443, 6, 3, 0, 'edit all posts', 0, 1),
(444, 6, 3, 0, 'delete my posts', 0, 1),
(445, 6, 3, 0, 'delete all posts', 0, 1),
(446, 5, 3, 0, 'view all topics', 1, 1),
(447, 5, 3, 0, 'view my topics', 0, 1),
(448, 5, 3, 0, 'create new topic', 0, 1),
(449, 5, 3, 0, 'reply to all topics', 0, 1),
(450, 5, 3, 0, 'edit my topics', 0, 1),
(451, 5, 3, 0, 'edit all topics', 0, 1),
(452, 5, 3, 0, 'delete my topics', 0, 1),
(453, 5, 3, 0, 'delete all topics', 0, 1),
(454, 5, 3, 0, 'edit my posts', 0, 1),
(455, 5, 3, 0, 'edit all posts', 0, 1),
(456, 5, 3, 0, 'delete my posts', 0, 1),
(457, 5, 3, 0, 'delete all posts', 0, 1),
(458, 4, 3, 0, 'view all topics', 1, 1),
(459, 4, 3, 0, 'view my topics', 0, 1),
(460, 4, 3, 0, 'create new topic', 1, 1),
(461, 4, 3, 0, 'reply to all topics', 1, 1),
(462, 4, 3, 0, 'edit my topics', 1, 1),
(463, 4, 3, 0, 'edit all topics', 1, 1),
(464, 4, 3, 0, 'delete my topics', 1, 1),
(465, 4, 3, 0, 'delete all topics', 1, 1),
(466, 4, 3, 0, 'edit my posts', 1, 1),
(467, 4, 3, 0, 'edit all posts', 1, 1),
(468, 4, 3, 0, 'delete my posts', 1, 1),
(469, 4, 3, 0, 'delete all posts', 1, 1),
(470, 3, 3, 0, 'view all topics', 1, 1),
(471, 3, 3, 0, 'view my topics', 0, 1),
(472, 3, 3, 0, 'create new topic', 1, 1),
(473, 3, 3, 0, 'reply to all topics', 1, 1),
(474, 3, 3, 0, 'edit my topics', 1, 1),
(475, 3, 3, 0, 'edit all topics', 1, 1),
(476, 3, 3, 0, 'delete my topics', 1, 1),
(477, 3, 3, 0, 'delete all topics', 1, 1),
(478, 3, 3, 0, 'edit my posts', 1, 1),
(479, 3, 3, 0, 'edit all posts', 1, 1),
(480, 3, 3, 0, 'delete my posts', 1, 1),
(481, 3, 3, 0, 'delete all posts', 1, 1),
(482, 2, 3, 0, 'view all topics', 1, 1),
(483, 2, 3, 0, 'view my topics', 0, 1),
(484, 2, 3, 0, 'create new topic', 1, 1),
(485, 2, 3, 0, 'reply to all topics', 1, 1),
(486, 2, 3, 0, 'edit my topics', 1, 1),
(487, 2, 3, 0, 'edit all topics', 0, 1),
(488, 2, 3, 0, 'delete my topics', 1, 1),
(489, 2, 3, 0, 'delete all topics', 0, 1),
(490, 2, 3, 0, 'edit my posts', 1, 1),
(491, 2, 3, 0, 'edit all posts', 0, 1),
(492, 2, 3, 0, 'delete my posts', 1, 1),
(493, 2, 3, 0, 'delete all posts', 0, 1),
(494, 1, 3, 0, 'view all topics', 1, 1),
(495, 1, 3, 0, 'view my topics', 0, 1),
(496, 1, 3, 0, 'create new topic', 0, 1),
(497, 1, 3, 0, 'reply to all topics', 0, 1),
(498, 1, 3, 0, 'edit my topics', 0, 1),
(499, 1, 3, 0, 'edit all topics', 0, 1),
(500, 1, 3, 0, 'delete my topics', 0, 1),
(501, 1, 3, 0, 'delete all topics', 0, 1),
(502, 1, 3, 0, 'edit my posts', 0, 1),
(503, 1, 3, 0, 'edit all posts', 0, 1),
(504, 1, 3, 0, 'delete my posts', 0, 1),
(505, 1, 3, 0, 'delete all posts', 0, 1),
(506, 6, 10, 0, 'view all topics', 0, 1),
(507, 6, 10, 0, 'view my topics', 0, 1),
(508, 6, 10, 0, 'create new topic', 0, 1),
(509, 6, 10, 0, 'reply to all topics', 0, 1),
(510, 6, 10, 0, 'edit my topics', 0, 1),
(511, 6, 10, 0, 'edit all topics', 0, 1),
(512, 6, 10, 0, 'delete my topics', 0, 1),
(513, 6, 10, 0, 'delete all topics', 0, 1),
(514, 6, 10, 0, 'edit my posts', 0, 1),
(515, 6, 10, 0, 'edit all posts', 0, 1),
(516, 6, 10, 0, 'delete my posts', 0, 1),
(517, 6, 10, 0, 'delete all posts', 0, 1),
(518, 5, 10, 0, 'view all topics', 1, 1),
(519, 5, 10, 0, 'view my topics', 0, 1),
(520, 5, 10, 0, 'create new topic', 0, 1),
(521, 5, 10, 0, 'reply to all topics', 0, 1),
(522, 5, 10, 0, 'edit my topics', 0, 1),
(523, 5, 10, 0, 'edit all topics', 0, 1),
(524, 5, 10, 0, 'delete my topics', 0, 1),
(525, 5, 10, 0, 'delete all topics', 0, 1),
(526, 5, 10, 0, 'edit my posts', 0, 1),
(527, 5, 10, 0, 'edit all posts', 0, 1),
(528, 5, 10, 0, 'delete my posts', 0, 1),
(529, 5, 10, 0, 'delete all posts', 0, 1),
(530, 4, 10, 0, 'view all topics', 1, 1),
(531, 4, 10, 0, 'view my topics', 0, 1),
(532, 4, 10, 0, 'create new topic', 1, 1),
(533, 4, 10, 0, 'reply to all topics', 1, 1),
(534, 4, 10, 0, 'edit my topics', 1, 1),
(535, 4, 10, 0, 'edit all topics', 1, 1),
(536, 4, 10, 0, 'delete my topics', 1, 1),
(537, 4, 10, 0, 'delete all topics', 1, 1),
(538, 4, 10, 0, 'edit my posts', 1, 1),
(539, 4, 10, 0, 'edit all posts', 1, 1),
(540, 4, 10, 0, 'delete my posts', 1, 1),
(541, 4, 10, 0, 'delete all posts', 1, 1),
(542, 3, 10, 0, 'view all topics', 1, 1),
(543, 3, 10, 0, 'view my topics', 0, 1),
(544, 3, 10, 0, 'create new topic', 1, 1),
(545, 3, 10, 0, 'reply to all topics', 1, 1),
(546, 3, 10, 0, 'edit my topics', 1, 1),
(547, 3, 10, 0, 'edit all topics', 1, 1),
(548, 3, 10, 0, 'delete my topics', 1, 1),
(549, 3, 10, 0, 'delete all topics', 1, 1),
(550, 3, 10, 0, 'edit my posts', 1, 1),
(551, 3, 10, 0, 'edit all posts', 1, 1),
(552, 3, 10, 0, 'delete my posts', 1, 1),
(553, 3, 10, 0, 'delete all posts', 1, 1),
(554, 2, 10, 0, 'view all topics', 1, 1),
(555, 2, 10, 0, 'view my topics', 0, 1),
(556, 2, 10, 0, 'create new topic', 1, 1),
(557, 2, 10, 0, 'reply to all topics', 1, 1),
(558, 2, 10, 0, 'edit my topics', 1, 1),
(559, 2, 10, 0, 'edit all topics', 0, 1),
(560, 2, 10, 0, 'delete my topics', 1, 1),
(561, 2, 10, 0, 'delete all topics', 0, 1),
(562, 2, 10, 0, 'edit my posts', 1, 1),
(563, 2, 10, 0, 'edit all posts', 0, 1),
(564, 2, 10, 0, 'delete my posts', 1, 1),
(565, 2, 10, 0, 'delete all posts', 0, 1),
(566, 1, 10, 0, 'view all topics', 1, 1),
(567, 1, 10, 0, 'view my topics', 0, 1),
(568, 1, 10, 0, 'create new topic', 0, 1),
(569, 1, 10, 0, 'reply to all topics', 0, 1),
(570, 1, 10, 0, 'edit my topics', 0, 1),
(571, 1, 10, 0, 'edit all topics', 0, 1),
(572, 1, 10, 0, 'delete my topics', 0, 1),
(573, 1, 10, 0, 'delete all topics', 0, 1),
(574, 1, 10, 0, 'edit my posts', 0, 1),
(575, 1, 10, 0, 'edit all posts', 0, 1),
(576, 1, 10, 0, 'delete my posts', 0, 1),
(577, 1, 10, 0, 'delete all posts', 0, 1),
(578, 6, 11, 0, 'view all topics', 0, 1),
(579, 6, 11, 0, 'view my topics', 0, 1),
(580, 6, 11, 0, 'create new topic', 0, 1),
(581, 6, 11, 0, 'reply to all topics', 0, 1),
(582, 6, 11, 0, 'edit my topics', 0, 1),
(583, 6, 11, 0, 'edit all topics', 0, 1),
(584, 6, 11, 0, 'delete my topics', 0, 1),
(585, 6, 11, 0, 'delete all topics', 0, 1),
(586, 6, 11, 0, 'edit my posts', 0, 1),
(587, 6, 11, 0, 'edit all posts', 0, 1),
(588, 6, 11, 0, 'delete my posts', 0, 1),
(589, 6, 11, 0, 'delete all posts', 0, 1),
(590, 5, 11, 0, 'view all topics', 1, 1),
(591, 5, 11, 0, 'view my topics', 0, 1),
(592, 5, 11, 0, 'create new topic', 0, 1),
(593, 5, 11, 0, 'reply to all topics', 0, 1),
(594, 5, 11, 0, 'edit my topics', 0, 1),
(595, 5, 11, 0, 'edit all topics', 0, 1),
(596, 5, 11, 0, 'delete my topics', 0, 1),
(597, 5, 11, 0, 'delete all topics', 0, 1),
(598, 5, 11, 0, 'edit my posts', 0, 1),
(599, 5, 11, 0, 'edit all posts', 0, 1),
(600, 5, 11, 0, 'delete my posts', 0, 1),
(601, 5, 11, 0, 'delete all posts', 0, 1),
(602, 4, 11, 0, 'view all topics', 1, 1),
(603, 4, 11, 0, 'view my topics', 0, 1),
(604, 4, 11, 0, 'create new topic', 1, 1),
(605, 4, 11, 0, 'reply to all topics', 1, 1),
(606, 4, 11, 0, 'edit my topics', 1, 1),
(607, 4, 11, 0, 'edit all topics', 1, 1),
(608, 4, 11, 0, 'delete my topics', 1, 1),
(609, 4, 11, 0, 'delete all topics', 1, 1),
(610, 4, 11, 0, 'edit my posts', 1, 1),
(611, 4, 11, 0, 'edit all posts', 1, 1),
(612, 4, 11, 0, 'delete my posts', 1, 1),
(613, 4, 11, 0, 'delete all posts', 1, 1),
(614, 3, 11, 0, 'view all topics', 1, 1),
(615, 3, 11, 0, 'view my topics', 0, 1),
(616, 3, 11, 0, 'create new topic', 1, 1),
(617, 3, 11, 0, 'reply to all topics', 1, 1),
(618, 3, 11, 0, 'edit my topics', 1, 1),
(619, 3, 11, 0, 'edit all topics', 1, 1),
(620, 3, 11, 0, 'delete my topics', 1, 1),
(621, 3, 11, 0, 'delete all topics', 1, 1),
(622, 3, 11, 0, 'edit my posts', 1, 1),
(623, 3, 11, 0, 'edit all posts', 1, 1),
(624, 3, 11, 0, 'delete my posts', 1, 1),
(625, 3, 11, 0, 'delete all posts', 1, 1),
(626, 2, 11, 0, 'view all topics', 1, 1),
(627, 2, 11, 0, 'view my topics', 0, 1),
(628, 2, 11, 0, 'create new topic', 1, 1),
(629, 2, 11, 0, 'reply to all topics', 1, 1),
(630, 2, 11, 0, 'edit my topics', 1, 1),
(631, 2, 11, 0, 'edit all topics', 0, 1),
(632, 2, 11, 0, 'delete my topics', 1, 1),
(633, 2, 11, 0, 'delete all topics', 0, 1),
(634, 2, 11, 0, 'edit my posts', 1, 1),
(635, 2, 11, 0, 'edit all posts', 0, 1),
(636, 2, 11, 0, 'delete my posts', 1, 1),
(637, 2, 11, 0, 'delete all posts', 0, 1),
(638, 1, 11, 0, 'view all topics', 1, 1),
(639, 1, 11, 0, 'view my topics', 0, 1),
(640, 1, 11, 0, 'create new topic', 0, 1),
(641, 1, 11, 0, 'reply to all topics', 0, 1),
(642, 1, 11, 0, 'edit my topics', 0, 1),
(643, 1, 11, 0, 'edit all topics', 0, 1),
(644, 1, 11, 0, 'delete my topics', 0, 1),
(645, 1, 11, 0, 'delete all topics', 0, 1),
(646, 1, 11, 0, 'edit my posts', 0, 1),
(647, 1, 11, 0, 'edit all posts', 0, 1),
(648, 1, 11, 0, 'delete my posts', 0, 1),
(649, 1, 11, 0, 'delete all posts', 0, 1),
(650, 6, 12, 0, 'view all topics', 0, 1),
(651, 6, 12, 0, 'view my topics', 0, 1),
(652, 6, 12, 0, 'create new topic', 0, 1),
(653, 6, 12, 0, 'reply to all topics', 0, 1),
(654, 6, 12, 0, 'edit my topics', 0, 1),
(655, 6, 12, 0, 'edit all topics', 0, 1),
(656, 6, 12, 0, 'delete my topics', 0, 1),
(657, 6, 12, 0, 'delete all topics', 0, 1),
(658, 6, 12, 0, 'edit my posts', 0, 1),
(659, 6, 12, 0, 'edit all posts', 0, 1),
(660, 6, 12, 0, 'delete my posts', 0, 1),
(661, 6, 12, 0, 'delete all posts', 0, 1),
(662, 5, 12, 0, 'view all topics', 1, 1),
(663, 5, 12, 0, 'view my topics', 0, 1),
(664, 5, 12, 0, 'create new topic', 0, 1),
(665, 5, 12, 0, 'reply to all topics', 0, 1),
(666, 5, 12, 0, 'edit my topics', 0, 1),
(667, 5, 12, 0, 'edit all topics', 0, 1),
(668, 5, 12, 0, 'delete my topics', 0, 1),
(669, 5, 12, 0, 'delete all topics', 0, 1),
(670, 5, 12, 0, 'edit my posts', 0, 1),
(671, 5, 12, 0, 'edit all posts', 0, 1),
(672, 5, 12, 0, 'delete my posts', 0, 1),
(673, 5, 12, 0, 'delete all posts', 0, 1),
(674, 4, 12, 0, 'view all topics', 1, 1),
(675, 4, 12, 0, 'view my topics', 0, 1),
(676, 4, 12, 0, 'create new topic', 1, 1),
(677, 4, 12, 0, 'reply to all topics', 1, 1),
(678, 4, 12, 0, 'edit my topics', 1, 1),
(679, 4, 12, 0, 'edit all topics', 1, 1),
(680, 4, 12, 0, 'delete my topics', 1, 1),
(681, 4, 12, 0, 'delete all topics', 1, 1),
(682, 4, 12, 0, 'edit my posts', 1, 1),
(683, 4, 12, 0, 'edit all posts', 1, 1),
(684, 4, 12, 0, 'delete my posts', 1, 1),
(685, 4, 12, 0, 'delete all posts', 1, 1),
(686, 3, 12, 0, 'view all topics', 1, 1),
(687, 3, 12, 0, 'view my topics', 0, 1),
(688, 3, 12, 0, 'create new topic', 1, 1),
(689, 3, 12, 0, 'reply to all topics', 1, 1),
(690, 3, 12, 0, 'edit my topics', 1, 1),
(691, 3, 12, 0, 'edit all topics', 1, 1),
(692, 3, 12, 0, 'delete my topics', 1, 1),
(693, 3, 12, 0, 'delete all topics', 1, 1),
(694, 3, 12, 0, 'edit my posts', 1, 1),
(695, 3, 12, 0, 'edit all posts', 1, 1),
(696, 3, 12, 0, 'delete my posts', 1, 1),
(697, 3, 12, 0, 'delete all posts', 1, 1),
(698, 2, 12, 0, 'view all topics', 1, 1),
(699, 2, 12, 0, 'view my topics', 0, 1),
(700, 2, 12, 0, 'create new topic', 1, 1),
(701, 2, 12, 0, 'reply to all topics', 1, 1),
(702, 2, 12, 0, 'edit my topics', 1, 1),
(703, 2, 12, 0, 'edit all topics', 0, 1),
(704, 2, 12, 0, 'delete my topics', 1, 1),
(705, 2, 12, 0, 'delete all topics', 0, 1),
(706, 2, 12, 0, 'edit my posts', 1, 1),
(707, 2, 12, 0, 'edit all posts', 0, 1),
(708, 2, 12, 0, 'delete my posts', 1, 1),
(709, 2, 12, 0, 'delete all posts', 0, 1),
(710, 1, 12, 0, 'view all topics', 1, 1),
(711, 1, 12, 0, 'view my topics', 0, 1),
(712, 1, 12, 0, 'create new topic', 0, 1),
(713, 1, 12, 0, 'reply to all topics', 0, 1),
(714, 1, 12, 0, 'edit my topics', 0, 1),
(715, 1, 12, 0, 'edit all topics', 0, 1),
(716, 1, 12, 0, 'delete my topics', 0, 1),
(717, 1, 12, 0, 'delete all topics', 0, 1),
(718, 1, 12, 0, 'edit my posts', 0, 1),
(719, 1, 12, 0, 'edit all posts', 0, 1),
(720, 1, 12, 0, 'delete my posts', 0, 1),
(721, 1, 12, 0, 'delete all posts', 0, 1),
(722, 6, 13, 0, 'view all topics', 0, 1),
(723, 6, 13, 0, 'view my topics', 0, 1),
(724, 6, 13, 0, 'create new topic', 0, 1),
(725, 6, 13, 0, 'reply to all topics', 0, 1),
(726, 6, 13, 0, 'edit my topics', 0, 1),
(727, 6, 13, 0, 'edit all topics', 0, 1),
(728, 6, 13, 0, 'delete my topics', 0, 1),
(729, 6, 13, 0, 'delete all topics', 0, 1),
(730, 6, 13, 0, 'edit my posts', 0, 1),
(731, 6, 13, 0, 'edit all posts', 0, 1),
(732, 6, 13, 0, 'delete my posts', 0, 1),
(733, 6, 13, 0, 'delete all posts', 0, 1),
(734, 5, 13, 0, 'view all topics', 1, 1),
(735, 5, 13, 0, 'view my topics', 0, 1),
(736, 5, 13, 0, 'create new topic', 0, 1),
(737, 5, 13, 0, 'reply to all topics', 0, 1),
(738, 5, 13, 0, 'edit my topics', 0, 1),
(739, 5, 13, 0, 'edit all topics', 0, 1),
(740, 5, 13, 0, 'delete my topics', 0, 1),
(741, 5, 13, 0, 'delete all topics', 0, 1),
(742, 5, 13, 0, 'edit my posts', 0, 1),
(743, 5, 13, 0, 'edit all posts', 0, 1),
(744, 5, 13, 0, 'delete my posts', 0, 1),
(745, 5, 13, 0, 'delete all posts', 0, 1),
(746, 4, 13, 0, 'view all topics', 1, 1),
(747, 4, 13, 0, 'view my topics', 0, 1),
(748, 4, 13, 0, 'create new topic', 1, 1),
(749, 4, 13, 0, 'reply to all topics', 1, 1),
(750, 4, 13, 0, 'edit my topics', 1, 1),
(751, 4, 13, 0, 'edit all topics', 1, 1),
(752, 4, 13, 0, 'delete my topics', 1, 1),
(753, 4, 13, 0, 'delete all topics', 1, 1),
(754, 4, 13, 0, 'edit my posts', 1, 1),
(755, 4, 13, 0, 'edit all posts', 1, 1),
(756, 4, 13, 0, 'delete my posts', 1, 1),
(757, 4, 13, 0, 'delete all posts', 1, 1),
(758, 3, 13, 0, 'view all topics', 1, 1),
(759, 3, 13, 0, 'view my topics', 0, 1),
(760, 3, 13, 0, 'create new topic', 1, 1),
(761, 3, 13, 0, 'reply to all topics', 1, 1),
(762, 3, 13, 0, 'edit my topics', 1, 1),
(763, 3, 13, 0, 'edit all topics', 1, 1),
(764, 3, 13, 0, 'delete my topics', 1, 1),
(765, 3, 13, 0, 'delete all topics', 1, 1),
(766, 3, 13, 0, 'edit my posts', 1, 1),
(767, 3, 13, 0, 'edit all posts', 1, 1),
(768, 3, 13, 0, 'delete my posts', 1, 1),
(769, 3, 13, 0, 'delete all posts', 1, 1),
(770, 2, 13, 0, 'view all topics', 1, 1),
(771, 2, 13, 0, 'view my topics', 0, 1),
(772, 2, 13, 0, 'create new topic', 1, 1),
(773, 2, 13, 0, 'reply to all topics', 1, 1),
(774, 2, 13, 0, 'edit my topics', 1, 1),
(775, 2, 13, 0, 'edit all topics', 0, 1),
(776, 2, 13, 0, 'delete my topics', 1, 1),
(777, 2, 13, 0, 'delete all topics', 0, 1),
(778, 2, 13, 0, 'edit my posts', 1, 1),
(779, 2, 13, 0, 'edit all posts', 0, 1),
(780, 2, 13, 0, 'delete my posts', 1, 1),
(781, 2, 13, 0, 'delete all posts', 0, 1),
(782, 1, 13, 0, 'view all topics', 1, 1),
(783, 1, 13, 0, 'view my topics', 0, 1),
(784, 1, 13, 0, 'create new topic', 0, 1),
(785, 1, 13, 0, 'reply to all topics', 0, 1),
(786, 1, 13, 0, 'edit my topics', 0, 1),
(787, 1, 13, 0, 'edit all topics', 0, 1),
(788, 1, 13, 0, 'delete my topics', 0, 1),
(789, 1, 13, 0, 'delete all topics', 0, 1),
(790, 1, 13, 0, 'edit my posts', 0, 1),
(791, 1, 13, 0, 'edit all posts', 0, 1),
(792, 1, 13, 0, 'delete my posts', 0, 1),
(793, 1, 13, 0, 'delete all posts', 0, 1),
(794, 6, 14, 0, 'view all topics', 0, 1),
(795, 6, 14, 0, 'view my topics', 0, 1),
(796, 6, 14, 0, 'create new topic', 0, 1),
(797, 6, 14, 0, 'reply to all topics', 0, 1),
(798, 6, 14, 0, 'edit my topics', 0, 1),
(799, 6, 14, 0, 'edit all topics', 0, 1),
(800, 6, 14, 0, 'delete my topics', 0, 1),
(801, 6, 14, 0, 'delete all topics', 0, 1),
(802, 6, 14, 0, 'edit my posts', 0, 1),
(803, 6, 14, 0, 'edit all posts', 0, 1),
(804, 6, 14, 0, 'delete my posts', 0, 1),
(805, 6, 14, 0, 'delete all posts', 0, 1),
(806, 5, 14, 0, 'view all topics', 1, 1),
(807, 5, 14, 0, 'view my topics', 0, 1),
(808, 5, 14, 0, 'create new topic', 0, 1),
(809, 5, 14, 0, 'reply to all topics', 0, 1),
(810, 5, 14, 0, 'edit my topics', 0, 1),
(811, 5, 14, 0, 'edit all topics', 0, 1),
(812, 5, 14, 0, 'delete my topics', 0, 1),
(813, 5, 14, 0, 'delete all topics', 0, 1),
(814, 5, 14, 0, 'edit my posts', 0, 1),
(815, 5, 14, 0, 'edit all posts', 0, 1),
(816, 5, 14, 0, 'delete my posts', 0, 1),
(817, 5, 14, 0, 'delete all posts', 0, 1),
(818, 4, 14, 0, 'view all topics', 1, 1),
(819, 4, 14, 0, 'view my topics', 0, 1),
(820, 4, 14, 0, 'create new topic', 1, 1),
(821, 4, 14, 0, 'reply to all topics', 1, 1),
(822, 4, 14, 0, 'edit my topics', 1, 1),
(823, 4, 14, 0, 'edit all topics', 1, 1),
(824, 4, 14, 0, 'delete my topics', 1, 1),
(825, 4, 14, 0, 'delete all topics', 1, 1),
(826, 4, 14, 0, 'edit my posts', 1, 1),
(827, 4, 14, 0, 'edit all posts', 1, 1),
(828, 4, 14, 0, 'delete my posts', 1, 1),
(829, 4, 14, 0, 'delete all posts', 1, 1),
(830, 3, 14, 0, 'view all topics', 1, 1),
(831, 3, 14, 0, 'view my topics', 0, 1),
(832, 3, 14, 0, 'create new topic', 1, 1),
(833, 3, 14, 0, 'reply to all topics', 1, 1),
(834, 3, 14, 0, 'edit my topics', 1, 1),
(835, 3, 14, 0, 'edit all topics', 1, 1),
(836, 3, 14, 0, 'delete my topics', 1, 1),
(837, 3, 14, 0, 'delete all topics', 1, 1),
(838, 3, 14, 0, 'edit my posts', 1, 1),
(839, 3, 14, 0, 'edit all posts', 1, 1),
(840, 3, 14, 0, 'delete my posts', 1, 1),
(841, 3, 14, 0, 'delete all posts', 1, 1),
(842, 2, 14, 0, 'view all topics', 1, 1),
(843, 2, 14, 0, 'view my topics', 0, 1),
(844, 2, 14, 0, 'create new topic', 1, 1),
(845, 2, 14, 0, 'reply to all topics', 1, 1),
(846, 2, 14, 0, 'edit my topics', 1, 1),
(847, 2, 14, 0, 'edit all topics', 0, 1),
(848, 2, 14, 0, 'delete my topics', 1, 1),
(849, 2, 14, 0, 'delete all topics', 0, 1),
(850, 2, 14, 0, 'edit my posts', 1, 1),
(851, 2, 14, 0, 'edit all posts', 0, 1),
(852, 2, 14, 0, 'delete my posts', 1, 1),
(853, 2, 14, 0, 'delete all posts', 0, 1),
(854, 1, 14, 0, 'view all topics', 1, 1),
(855, 1, 14, 0, 'view my topics', 0, 1),
(856, 1, 14, 0, 'create new topic', 0, 1),
(857, 1, 14, 0, 'reply to all topics', 0, 1),
(858, 1, 14, 0, 'edit my topics', 0, 1),
(859, 1, 14, 0, 'edit all topics', 0, 1),
(860, 1, 14, 0, 'delete my topics', 0, 1),
(861, 1, 14, 0, 'delete all topics', 0, 1),
(862, 1, 14, 0, 'edit my posts', 0, 1),
(863, 1, 14, 0, 'edit all posts', 0, 1),
(864, 1, 14, 0, 'delete my posts', 0, 1),
(865, 1, 14, 0, 'delete all posts', 0, 1),
(866, 1, 0, 0, 'view category', 1, -1),
(867, 1, 3, 0, 'view category', 1, 1),
(868, 1, 10, 0, 'view category', 1, 1),
(869, 1, 11, 0, 'view category', 1, 1),
(870, 1, 12, 0, 'view category', 1, 1),
(871, 1, 13, 0, 'view category', 1, 1),
(872, 1, 14, 0, 'view category', 1, 1),
(873, 2, 0, 0, 'view category', 1, -1),
(874, 2, 3, 0, 'view category', 1, 1),
(875, 2, 10, 0, 'view category', 1, 1),
(876, 2, 11, 0, 'view category', 1, 1),
(877, 2, 12, 0, 'view category', 1, 1),
(878, 2, 13, 0, 'view category', 1, 1),
(879, 2, 14, 0, 'view category', 1, 1),
(880, 3, 0, 0, 'view category', 1, -1),
(881, 3, 3, 0, 'view category', 1, 1),
(882, 3, 10, 0, 'view category', 1, 1),
(883, 3, 11, 0, 'view category', 1, 1),
(884, 3, 12, 0, 'view category', 1, 1),
(885, 3, 13, 0, 'view category', 1, 1),
(886, 3, 14, 0, 'view category', 1, 1),
(887, 4, 0, 0, 'view category', 1, -1),
(888, 4, 3, 0, 'view category', 1, 1),
(889, 4, 10, 0, 'view category', 1, 1),
(890, 4, 11, 0, 'view category', 1, 1),
(891, 4, 12, 0, 'view category', 1, 1),
(892, 4, 13, 0, 'view category', 1, 1),
(893, 4, 14, 0, 'view category', 1, 1),
(894, 5, 0, 0, 'view category', 1, -1),
(895, 5, 3, 0, 'view category', 1, 1),
(896, 5, 10, 0, 'view category', 1, 1),
(897, 5, 11, 0, 'view category', 1, 1),
(898, 5, 12, 0, 'view category', 1, 1),
(899, 5, 13, 0, 'view category', 1, 1),
(900, 5, 14, 0, 'view category', 1, 1),
(901, 6, 0, 0, 'view category', 1, -1),
(902, 6, 3, 0, 'view category', 1, 1),
(903, 6, 10, 0, 'view category', 1, 1),
(904, 6, 11, 0, 'view category', 1, 1),
(905, 6, 12, 0, 'view category', 1, 1),
(906, 6, 13, 0, 'view category', 1, 1),
(907, 6, 14, 0, 'view category', 1, 1),
(908, 1, 0, 0, 'move topics', 0, -1),
(909, 1, 3, 0, 'move topics', 0, 1),
(910, 1, 10, 0, 'move topics', 0, 1),
(911, 1, 11, 0, 'move topics', 0, 1),
(912, 1, 12, 0, 'move topics', 0, 1),
(913, 1, 13, 0, 'move topics', 0, 1),
(914, 1, 14, 0, 'move topics', 0, 1),
(915, 2, 0, 0, 'move topics', 0, -1),
(916, 2, 3, 0, 'move topics', 0, 1),
(917, 2, 10, 0, 'move topics', 0, 1),
(918, 2, 11, 0, 'move topics', 0, 1),
(919, 2, 12, 0, 'move topics', 0, 1),
(920, 2, 13, 0, 'move topics', 0, 1),
(921, 2, 14, 0, 'move topics', 0, 1),
(922, 3, 0, 0, 'move topics', 1, -1),
(923, 3, 3, 0, 'move topics', 1, 1),
(924, 3, 10, 0, 'move topics', 1, 1),
(925, 3, 11, 0, 'move topics', 1, 1),
(926, 3, 12, 0, 'move topics', 1, 1),
(927, 3, 13, 0, 'move topics', 1, 1),
(928, 3, 14, 0, 'move topics', 1, 1),
(929, 4, 0, 0, 'move topics', 1, -1),
(930, 4, 3, 0, 'move topics', 1, 1),
(931, 4, 10, 0, 'move topics', 1, 1),
(932, 4, 11, 0, 'move topics', 1, 1),
(933, 4, 12, 0, 'move topics', 1, 1),
(934, 4, 13, 0, 'move topics', 1, 1),
(935, 4, 14, 0, 'move topics', 1, 1),
(936, 5, 0, 0, 'move topics', 0, -1),
(937, 5, 3, 0, 'move topics', 0, 1),
(938, 5, 10, 0, 'move topics', 0, 1),
(939, 5, 11, 0, 'move topics', 0, 1),
(940, 5, 12, 0, 'move topics', 0, 1),
(941, 5, 13, 0, 'move topics', 0, 1),
(942, 5, 14, 0, 'move topics', 0, 1),
(943, 6, 0, 0, 'move topics', 0, -1),
(944, 6, 3, 0, 'move topics', 0, 1),
(945, 6, 10, 0, 'move topics', 0, 1),
(946, 6, 11, 0, 'move topics', 0, 1),
(947, 6, 12, 0, 'move topics', 0, 1),
(948, 6, 13, 0, 'move topics', 0, 1),
(949, 6, 14, 0, 'move topics', 0, 1),
(950, 1, 0, 0, 'moderate topics', 0, -1),
(951, 1, 3, 0, 'moderate topics', 0, 1),
(952, 1, 10, 0, 'moderate topics', 0, 1),
(953, 1, 11, 0, 'moderate topics', 0, 1),
(954, 1, 12, 0, 'moderate topics', 0, 1),
(955, 1, 13, 0, 'moderate topics', 0, 1),
(956, 1, 14, 0, 'moderate topics', 0, 1),
(957, 2, 0, 0, 'moderate topics', 0, -1),
(958, 2, 3, 0, 'moderate topics', 0, 1),
(959, 2, 10, 0, 'moderate topics', 0, 1),
(960, 2, 11, 0, 'moderate topics', 0, 1),
(961, 2, 12, 0, 'moderate topics', 0, 1),
(962, 2, 13, 0, 'moderate topics', 0, 1),
(963, 2, 14, 0, 'moderate topics', 0, 1),
(964, 3, 0, 0, 'moderate topics', 1, -1),
(965, 3, 3, 0, 'moderate topics', 1, 1),
(966, 3, 10, 0, 'moderate topics', 1, 1),
(967, 3, 11, 0, 'moderate topics', 1, 1),
(968, 3, 12, 0, 'moderate topics', 1, 1),
(969, 3, 13, 0, 'moderate topics', 1, 1),
(970, 3, 14, 0, 'moderate topics', 1, 1),
(971, 4, 0, 0, 'moderate topics', 1, -1),
(972, 4, 3, 0, 'moderate topics', 1, 1),
(973, 4, 10, 0, 'moderate topics', 1, 1),
(974, 4, 11, 0, 'moderate topics', 1, 1),
(975, 4, 12, 0, 'moderate topics', 1, 1),
(976, 4, 13, 0, 'moderate topics', 1, 1),
(977, 4, 14, 0, 'moderate topics', 1, 1),
(978, 5, 0, 0, 'moderate topics', 0, -1),
(979, 5, 3, 0, 'moderate topics', 0, 1),
(980, 5, 10, 0, 'moderate topics', 0, 1),
(981, 5, 11, 0, 'moderate topics', 0, 1),
(982, 5, 12, 0, 'moderate topics', 0, 1),
(983, 5, 13, 0, 'moderate topics', 0, 1),
(984, 5, 14, 0, 'moderate topics', 0, 1),
(985, 6, 0, 0, 'moderate topics', 0, -1),
(986, 6, 3, 0, 'moderate topics', 0, 1),
(987, 6, 10, 0, 'moderate topics', 0, 1),
(988, 6, 11, 0, 'moderate topics', 0, 1),
(989, 6, 12, 0, 'moderate topics', 0, 1),
(990, 6, 13, 0, 'moderate topics', 0, 1),
(991, 6, 14, 0, 'moderate topics', 0, 1),
(992, 1, 0, 0, 'moderate posts', 0, -1),
(993, 1, 3, 0, 'moderate posts', 0, 1),
(994, 1, 10, 0, 'moderate posts', 0, 1),
(995, 1, 11, 0, 'moderate posts', 0, 1),
(996, 1, 12, 0, 'moderate posts', 0, 1),
(997, 1, 13, 0, 'moderate posts', 0, 1),
(998, 1, 14, 0, 'moderate posts', 0, 1),
(999, 2, 0, 0, 'moderate posts', 0, -1),
(1000, 2, 3, 0, 'moderate posts', 0, 1),
(1001, 2, 10, 0, 'moderate posts', 0, 1),
(1002, 2, 11, 0, 'moderate posts', 0, 1),
(1003, 2, 12, 0, 'moderate posts', 0, 1),
(1004, 2, 13, 0, 'moderate posts', 0, 1),
(1005, 2, 14, 0, 'moderate posts', 0, 1),
(1006, 3, 0, 0, 'moderate posts', 1, -1),
(1007, 3, 3, 0, 'moderate posts', 1, 1),
(1008, 3, 10, 0, 'moderate posts', 1, 1),
(1009, 3, 11, 0, 'moderate posts', 1, 1),
(1010, 3, 12, 0, 'moderate posts', 1, 1),
(1011, 3, 13, 0, 'moderate posts', 1, 1),
(1012, 3, 14, 0, 'moderate posts', 1, 1),
(1013, 4, 0, 0, 'moderate posts', 1, -1),
(1014, 4, 3, 0, 'moderate posts', 1, 1),
(1015, 4, 10, 0, 'moderate posts', 1, 1),
(1016, 4, 11, 0, 'moderate posts', 1, 1),
(1017, 4, 12, 0, 'moderate posts', 1, 1),
(1018, 4, 13, 0, 'moderate posts', 1, 1),
(1019, 4, 14, 0, 'moderate posts', 1, 1),
(1020, 5, 0, 0, 'moderate posts', 0, -1),
(1021, 5, 3, 0, 'moderate posts', 0, 1),
(1022, 5, 10, 0, 'moderate posts', 0, 1),
(1023, 5, 11, 0, 'moderate posts', 0, 1),
(1024, 5, 12, 0, 'moderate posts', 0, 1),
(1025, 5, 13, 0, 'moderate posts', 0, 1),
(1026, 5, 14, 0, 'moderate posts', 0, 1),
(1027, 6, 0, 0, 'moderate posts', 0, -1),
(1028, 6, 3, 0, 'moderate posts', 0, 1),
(1029, 6, 10, 0, 'moderate posts', 0, 1),
(1030, 6, 11, 0, 'moderate posts', 0, 1),
(1031, 6, 12, 0, 'moderate posts', 0, 1),
(1032, 6, 13, 0, 'moderate posts', 0, 1),
(1033, 6, 14, 0, 'moderate posts', 0, 1),
(1034, 1, 0, 0, 'make sticky', 0, -1),
(1035, 1, 3, 0, 'make sticky', 0, 1),
(1036, 1, 10, 0, 'make sticky', 0, 1),
(1037, 1, 11, 0, 'make sticky', 0, 1),
(1038, 1, 12, 0, 'make sticky', 0, 1),
(1039, 1, 13, 0, 'make sticky', 0, 1),
(1040, 1, 14, 0, 'make sticky', 0, 1),
(1041, 2, 0, 0, 'make sticky', 0, -1),
(1042, 2, 3, 0, 'make sticky', 0, 1),
(1043, 2, 10, 0, 'make sticky', 0, 1),
(1044, 2, 11, 0, 'make sticky', 0, 1),
(1045, 2, 12, 0, 'make sticky', 0, 1),
(1046, 2, 13, 0, 'make sticky', 0, 1),
(1047, 2, 14, 0, 'make sticky', 0, 1),
(1048, 3, 0, 0, 'make sticky', 1, -1),
(1049, 3, 3, 0, 'make sticky', 1, 1),
(1050, 3, 10, 0, 'make sticky', 1, 1),
(1051, 3, 11, 0, 'make sticky', 1, 1),
(1052, 3, 12, 0, 'make sticky', 1, 1),
(1053, 3, 13, 0, 'make sticky', 1, 1),
(1054, 3, 14, 0, 'make sticky', 1, 1),
(1055, 4, 0, 0, 'make sticky', 1, -1),
(1056, 4, 3, 0, 'make sticky', 1, 1),
(1057, 4, 10, 0, 'make sticky', 1, 1),
(1058, 4, 11, 0, 'make sticky', 1, 1),
(1059, 4, 12, 0, 'make sticky', 1, 1),
(1060, 4, 13, 0, 'make sticky', 1, 1),
(1061, 4, 14, 0, 'make sticky', 1, 1),
(1062, 5, 0, 0, 'make sticky', 0, -1),
(1063, 5, 3, 0, 'make sticky', 0, 1),
(1064, 5, 10, 0, 'make sticky', 0, 1),
(1065, 5, 11, 0, 'make sticky', 0, 1),
(1066, 5, 12, 0, 'make sticky', 0, 1),
(1067, 5, 13, 0, 'make sticky', 0, 1),
(1068, 5, 14, 0, 'make sticky', 0, 1),
(1069, 6, 0, 0, 'make sticky', 0, -1),
(1070, 6, 3, 0, 'make sticky', 0, 1),
(1071, 6, 10, 0, 'make sticky', 0, 1),
(1072, 6, 11, 0, 'make sticky', 0, 1),
(1073, 6, 12, 0, 'make sticky', 0, 1),
(1074, 6, 13, 0, 'make sticky', 0, 1),
(1075, 6, 14, 0, 'make sticky', 0, 1),
(1076, 1, 0, 0, 'edit profile', 0, -1),
(1077, 1, 3, 0, 'edit profile', 0, 1),
(1078, 1, 10, 0, 'edit profile', 0, 1),
(1079, 1, 11, 0, 'edit profile', 0, 1),
(1080, 1, 12, 0, 'edit profile', 0, 1),
(1081, 1, 13, 0, 'edit profile', 0, 1),
(1082, 1, 14, 0, 'edit profile', 0, 1),
(1083, 2, 0, 0, 'edit profile', 0, -1),
(1084, 2, 3, 0, 'edit profile', 0, 1),
(1085, 2, 10, 0, 'edit profile', 0, 1),
(1086, 2, 11, 0, 'edit profile', 0, 1),
(1087, 2, 12, 0, 'edit profile', 0, 1),
(1088, 2, 13, 0, 'edit profile', 0, 1),
(1089, 2, 14, 0, 'edit profile', 0, 1),
(1090, 3, 0, 0, 'edit profile', 0, -1),
(1091, 3, 3, 0, 'edit profile', 0, 1),
(1092, 3, 10, 0, 'edit profile', 0, 1),
(1093, 3, 11, 0, 'edit profile', 0, 1),
(1094, 3, 12, 0, 'edit profile', 0, 1),
(1095, 3, 13, 0, 'edit profile', 0, 1),
(1096, 3, 14, 0, 'edit profile', 0, 1),
(1097, 4, 0, 0, 'edit profile', 1, -1),
(1098, 4, 3, 0, 'edit profile', 1, 1),
(1099, 4, 10, 0, 'edit profile', 1, 1),
(1100, 4, 11, 0, 'edit profile', 1, 1),
(1101, 4, 12, 0, 'edit profile', 1, 1),
(1102, 4, 13, 0, 'edit profile', 1, 1),
(1103, 4, 14, 0, 'edit profile', 1, 1),
(1104, 5, 0, 0, 'edit profile', 0, -1),
(1105, 5, 3, 0, 'edit profile', 0, 1),
(1106, 5, 10, 0, 'edit profile', 0, 1),
(1107, 5, 11, 0, 'edit profile', 0, 1),
(1108, 5, 12, 0, 'edit profile', 0, 1),
(1109, 5, 13, 0, 'edit profile', 0, 1),
(1110, 5, 14, 0, 'edit profile', 0, 1),
(1111, 6, 0, 0, 'edit profile', 0, -1),
(1112, 6, 3, 0, 'edit profile', 0, 1),
(1113, 6, 10, 0, 'edit profile', 0, 1),
(1114, 6, 11, 0, 'edit profile', 0, 1),
(1115, 6, 12, 0, 'edit profile', 0, 1),
(1116, 6, 13, 0, 'edit profile', 0, 1),
(1117, 6, 14, 0, 'edit profile', 0, 1),
(1118, 1, 0, 0, 'see history', 0, -1),
(1119, 1, 3, 0, 'see history', 0, 1),
(1120, 1, 10, 0, 'see history', 0, 1),
(1121, 1, 11, 0, 'see history', 0, 1),
(1122, 1, 12, 0, 'see history', 0, 1),
(1123, 1, 13, 0, 'see history', 0, 1),
(1124, 1, 14, 0, 'see history', 0, 1),
(1125, 2, 0, 0, 'see history', 1, -1),
(1126, 2, 3, 0, 'see history', 1, 1),
(1127, 2, 10, 0, 'see history', 1, 1),
(1128, 2, 11, 0, 'see history', 1, 1),
(1129, 2, 12, 0, 'see history', 1, 1),
(1130, 2, 13, 0, 'see history', 1, 1),
(1131, 2, 14, 0, 'see history', 1, 1),
(1132, 3, 0, 0, 'see history', 1, -1),
(1133, 3, 3, 0, 'see history', 1, 1),
(1134, 3, 10, 0, 'see history', 1, 1),
(1135, 3, 11, 0, 'see history', 1, 1),
(1136, 3, 12, 0, 'see history', 1, 1),
(1137, 3, 13, 0, 'see history', 1, 1),
(1138, 3, 14, 0, 'see history', 1, 1),
(1139, 4, 0, 0, 'see history', 1, -1),
(1140, 4, 3, 0, 'see history', 1, 1),
(1141, 4, 10, 0, 'see history', 1, 1),
(1142, 4, 11, 0, 'see history', 1, 1),
(1143, 4, 12, 0, 'see history', 1, 1),
(1144, 4, 13, 0, 'see history', 1, 1),
(1145, 4, 14, 0, 'see history', 1, 1),
(1146, 5, 0, 0, 'see history', 0, -1),
(1147, 5, 3, 0, 'see history', 0, 1),
(1148, 5, 10, 0, 'see history', 0, 1),
(1149, 5, 11, 0, 'see history', 0, 1),
(1150, 5, 12, 0, 'see history', 0, 1),
(1151, 5, 13, 0, 'see history', 0, 1),
(1152, 5, 14, 0, 'see history', 0, 1),
(1153, 6, 0, 0, 'see history', 0, -1),
(1154, 6, 3, 0, 'see history', 0, 1),
(1155, 6, 10, 0, 'see history', 0, 1),
(1156, 6, 11, 0, 'see history', 0, 1),
(1157, 6, 12, 0, 'see history', 0, 1),
(1158, 6, 13, 0, 'see history', 0, 1),
(1159, 6, 14, 0, 'see history', 0, 1),
(1160, 1, 0, 0, 'rep up', 0, -1),
(1161, 1, 3, 0, 'rep up', 0, 1),
(1162, 1, 10, 0, 'rep up', 0, 1),
(1163, 1, 11, 0, 'rep up', 0, 1),
(1164, 1, 12, 0, 'rep up', 0, 1),
(1165, 1, 13, 0, 'rep up', 0, 1),
(1166, 1, 14, 0, 'rep up', 0, 1),
(1167, 2, 0, 0, 'rep up', 1, -1),
(1168, 2, 3, 0, 'rep up', 1, 1),
(1169, 2, 10, 0, 'rep up', 1, 1),
(1170, 2, 11, 0, 'rep up', 1, 1),
(1171, 2, 12, 0, 'rep up', 1, 1),
(1172, 2, 13, 0, 'rep up', 1, 1),
(1173, 2, 14, 0, 'rep up', 1, 1),
(1174, 3, 0, 0, 'rep up', 1, -1),
(1175, 3, 3, 0, 'rep up', 1, 1),
(1176, 3, 10, 0, 'rep up', 1, 1),
(1177, 3, 11, 0, 'rep up', 1, 1),
(1178, 3, 12, 0, 'rep up', 1, 1),
(1179, 3, 13, 0, 'rep up', 1, 1),
(1180, 3, 14, 0, 'rep up', 1, 1),
(1181, 4, 0, 0, 'rep up', 1, -1),
(1182, 4, 3, 0, 'rep up', 1, 1),
(1183, 4, 10, 0, 'rep up', 1, 1),
(1184, 4, 11, 0, 'rep up', 1, 1),
(1185, 4, 12, 0, 'rep up', 1, 1),
(1186, 4, 13, 0, 'rep up', 1, 1),
(1187, 4, 14, 0, 'rep up', 1, 1),
(1188, 5, 0, 0, 'rep up', 0, -1),
(1189, 5, 3, 0, 'rep up', 0, 1),
(1190, 5, 10, 0, 'rep up', 0, 1),
(1191, 5, 11, 0, 'rep up', 0, 1),
(1192, 5, 12, 0, 'rep up', 0, 1),
(1193, 5, 13, 0, 'rep up', 0, 1),
(1194, 5, 14, 0, 'rep up', 0, 1),
(1195, 6, 0, 0, 'rep up', 0, -1),
(1196, 6, 3, 0, 'rep up', 0, 1),
(1197, 6, 10, 0, 'rep up', 0, 1),
(1198, 6, 11, 0, 'rep up', 0, 1),
(1199, 6, 12, 0, 'rep up', 0, 1),
(1200, 6, 13, 0, 'rep up', 0, 1),
(1201, 6, 14, 0, 'rep up', 0, 1),
(1202, 1, 0, 0, 'rep down', 0, -1),
(1203, 1, 3, 0, 'rep down', 0, 1),
(1204, 1, 10, 0, 'rep down', 0, 1),
(1205, 1, 11, 0, 'rep down', 0, 1),
(1206, 1, 12, 0, 'rep down', 0, 1),
(1207, 1, 13, 0, 'rep down', 0, 1),
(1208, 1, 14, 0, 'rep down', 0, 1),
(1209, 2, 0, 0, 'rep down', 1, -1),
(1210, 2, 3, 0, 'rep down', 1, 1),
(1211, 2, 10, 0, 'rep down', 1, 1),
(1212, 2, 11, 0, 'rep down', 1, 1),
(1213, 2, 12, 0, 'rep down', 1, 1),
(1214, 2, 13, 0, 'rep down', 1, 1),
(1215, 2, 14, 0, 'rep down', 1, 1),
(1216, 3, 0, 0, 'rep down', 1, -1),
(1217, 3, 3, 0, 'rep down', 1, 1),
(1218, 3, 10, 0, 'rep down', 1, 1),
(1219, 3, 11, 0, 'rep down', 1, 1),
(1220, 3, 12, 0, 'rep down', 1, 1),
(1221, 3, 13, 0, 'rep down', 1, 1),
(1222, 3, 14, 0, 'rep down', 1, 1),
(1223, 4, 0, 0, 'rep down', 1, -1),
(1224, 4, 3, 0, 'rep down', 1, 1),
(1225, 4, 10, 0, 'rep down', 1, 1),
(1226, 4, 11, 0, 'rep down', 1, 1),
(1227, 4, 12, 0, 'rep down', 1, 1),
(1228, 4, 13, 0, 'rep down', 1, 1),
(1229, 4, 14, 0, 'rep down', 1, 1),
(1230, 5, 0, 0, 'rep down', 0, -1),
(1231, 5, 3, 0, 'rep down', 0, 1),
(1232, 5, 10, 0, 'rep down', 0, 1),
(1233, 5, 11, 0, 'rep down', 0, 1),
(1234, 5, 12, 0, 'rep down', 0, 1),
(1235, 5, 13, 0, 'rep down', 0, 1),
(1236, 5, 14, 0, 'rep down', 0, 1),
(1237, 6, 0, 0, 'rep down', 0, -1),
(1238, 6, 3, 0, 'rep down', 0, 1),
(1239, 6, 10, 0, 'rep down', 0, 1),
(1240, 6, 11, 0, 'rep down', 0, 1),
(1241, 6, 12, 0, 'rep down', 0, 1),
(1242, 6, 13, 0, 'rep down', 0, 1),
(1243, 6, 14, 0, 'rep down', 0, 1),
(1244, 1, 0, 0, 'merge topics', 0, -1),
(1245, 1, 3, 0, 'merge topics', 0, 1),
(1246, 1, 10, 0, 'merge topics', 0, 1),
(1247, 1, 11, 0, 'merge topics', 0, 1),
(1248, 1, 12, 0, 'merge topics', 0, 1),
(1249, 1, 13, 0, 'merge topics', 0, 1),
(1250, 1, 14, 0, 'merge topics', 0, 1),
(1251, 2, 0, 0, 'merge topics', 0, -1),
(1252, 2, 3, 0, 'merge topics', 0, 1),
(1253, 2, 10, 0, 'merge topics', 0, 1),
(1254, 2, 11, 0, 'merge topics', 0, 1),
(1255, 2, 12, 0, 'merge topics', 0, 1),
(1256, 2, 13, 0, 'merge topics', 0, 1),
(1257, 2, 14, 0, 'merge topics', 0, 1),
(1258, 3, 0, 0, 'merge topics', 1, -1),
(1259, 3, 3, 0, 'merge topics', 1, 1),
(1260, 3, 10, 0, 'merge topics', 1, 1),
(1261, 3, 11, 0, 'merge topics', 1, 1),
(1262, 3, 12, 0, 'merge topics', 1, 1),
(1263, 3, 13, 0, 'merge topics', 1, 1),
(1264, 3, 14, 0, 'merge topics', 1, 1),
(1265, 4, 0, 0, 'merge topics', 1, -1),
(1266, 4, 3, 0, 'merge topics', 1, 1),
(1267, 4, 10, 0, 'merge topics', 1, 1),
(1268, 4, 11, 0, 'merge topics', 1, 1),
(1269, 4, 12, 0, 'merge topics', 1, 1),
(1270, 4, 13, 0, 'merge topics', 1, 1),
(1271, 4, 14, 0, 'merge topics', 1, 1),
(1272, 5, 0, 0, 'merge topics', 0, -1),
(1273, 5, 3, 0, 'merge topics', 0, 1),
(1274, 5, 10, 0, 'merge topics', 0, 1),
(1275, 5, 11, 0, 'merge topics', 0, 1),
(1276, 5, 12, 0, 'merge topics', 0, 1),
(1277, 5, 13, 0, 'merge topics', 0, 1),
(1278, 5, 14, 0, 'merge topics', 0, 1),
(1279, 6, 0, 0, 'merge topics', 0, -1),
(1280, 6, 3, 0, 'merge topics', 0, 1),
(1281, 6, 10, 0, 'merge topics', 0, 1),
(1282, 6, 11, 0, 'merge topics', 0, 1),
(1283, 6, 12, 0, 'merge topics', 0, 1),
(1284, 6, 13, 0, 'merge topics', 0, 1),
(1285, 6, 14, 0, 'merge topics', 0, 1),
(1286, 1, 0, 0, 'add tags', 0, -1),
(1287, 1, 3, 0, 'add tags', 0, 1),
(1288, 1, 10, 0, 'add tags', 0, 1),
(1289, 1, 11, 0, 'add tags', 0, 1),
(1290, 1, 12, 0, 'add tags', 0, 1),
(1291, 1, 13, 0, 'add tags', 0, 1),
(1292, 1, 14, 0, 'add tags', 0, 1),
(1293, 2, 0, 0, 'add tags', 1, -1),
(1294, 2, 3, 0, 'add tags', 1, 1),
(1295, 2, 10, 0, 'add tags', 1, 1),
(1296, 2, 11, 0, 'add tags', 1, 1),
(1297, 2, 12, 0, 'add tags', 1, 1),
(1298, 2, 13, 0, 'add tags', 1, 1),
(1299, 2, 14, 0, 'add tags', 1, 1),
(1300, 3, 0, 0, 'add tags', 1, -1),
(1301, 3, 3, 0, 'add tags', 1, 1),
(1302, 3, 10, 0, 'add tags', 1, 1),
(1303, 3, 11, 0, 'add tags', 1, 1),
(1304, 3, 12, 0, 'add tags', 1, 1),
(1305, 3, 13, 0, 'add tags', 1, 1),
(1306, 3, 14, 0, 'add tags', 1, 1),
(1307, 4, 0, 0, 'add tags', 1, -1),
(1308, 4, 3, 0, 'add tags', 1, 1),
(1309, 4, 10, 0, 'add tags', 1, 1),
(1310, 4, 11, 0, 'add tags', 1, 1),
(1311, 4, 12, 0, 'add tags', 1, 1),
(1312, 4, 13, 0, 'add tags', 1, 1),
(1313, 4, 14, 0, 'add tags', 1, 1),
(1314, 5, 0, 0, 'add tags', 0, -1),
(1315, 5, 3, 0, 'add tags', 0, 1),
(1316, 5, 10, 0, 'add tags', 0, 1),
(1317, 5, 11, 0, 'add tags', 0, 1),
(1318, 5, 12, 0, 'add tags', 0, 1),
(1319, 5, 13, 0, 'add tags', 0, 1),
(1320, 5, 14, 0, 'add tags', 0, 1),
(1321, 6, 0, 0, 'add tags', 0, -1),
(1322, 6, 3, 0, 'add tags', 0, 1),
(1323, 6, 10, 0, 'add tags', 0, 1),
(1324, 6, 11, 0, 'add tags', 0, 1),
(1325, 6, 12, 0, 'add tags', 0, 1),
(1326, 6, 13, 0, 'add tags', 0, 1),
(1327, 6, 14, 0, 'add tags', 0, 1),
(1328, 1, 0, 0, 'close topics', 0, -1),
(1329, 1, 3, 0, 'close topics', 0, 1),
(1330, 1, 10, 0, 'close topics', 0, 1),
(1331, 1, 11, 0, 'close topics', 0, 1),
(1332, 1, 12, 0, 'close topics', 0, 1),
(1333, 1, 13, 0, 'close topics', 0, 1),
(1334, 1, 14, 0, 'close topics', 0, 1),
(1335, 2, 0, 0, 'close topics', 0, -1),
(1336, 2, 3, 0, 'close topics', 0, 1),
(1337, 2, 10, 0, 'close topics', 0, 1),
(1338, 2, 11, 0, 'close topics', 0, 1),
(1339, 2, 12, 0, 'close topics', 0, 1),
(1340, 2, 13, 0, 'close topics', 0, 1),
(1341, 2, 14, 0, 'close topics', 0, 1),
(1342, 3, 0, 0, 'close topics', 1, -1),
(1343, 3, 3, 0, 'close topics', 1, 1),
(1344, 3, 10, 0, 'close topics', 1, 1),
(1345, 3, 11, 0, 'close topics', 1, 1),
(1346, 3, 12, 0, 'close topics', 1, 1),
(1347, 3, 13, 0, 'close topics', 1, 1),
(1348, 3, 14, 0, 'close topics', 1, 1),
(1349, 4, 0, 0, 'close topics', 1, -1),
(1350, 4, 3, 0, 'close topics', 1, 1),
(1351, 4, 10, 0, 'close topics', 1, 1),
(1352, 4, 11, 0, 'close topics', 1, 1),
(1353, 4, 12, 0, 'close topics', 1, 1),
(1354, 4, 13, 0, 'close topics', 1, 1),
(1355, 4, 14, 0, 'close topics', 1, 1),
(1356, 5, 0, 0, 'close topics', 0, -1),
(1357, 5, 3, 0, 'close topics', 0, 1),
(1358, 5, 10, 0, 'close topics', 0, 1),
(1359, 5, 11, 0, 'close topics', 0, 1),
(1360, 5, 12, 0, 'close topics', 0, 1),
(1361, 5, 13, 0, 'close topics', 0, 1),
(1362, 5, 14, 0, 'close topics', 0, 1),
(1363, 6, 0, 0, 'close topics', 0, -1),
(1364, 6, 3, 0, 'close topics', 0, 1),
(1365, 6, 10, 0, 'close topics', 0, 1),
(1366, 6, 11, 0, 'close topics', 0, 1),
(1367, 6, 12, 0, 'close topics', 0, 1),
(1368, 6, 13, 0, 'close topics', 0, 1),
(1369, 6, 14, 0, 'close topics', 0, 1),
(1370, 1, 0, 0, 'report topics', 0, -1),
(1371, 1, 3, 0, 'report topics', 0, 1),
(1372, 1, 10, 0, 'report topics', 0, 1),
(1373, 1, 11, 0, 'report topics', 0, 1),
(1374, 1, 12, 0, 'report topics', 0, 1),
(1375, 1, 13, 0, 'report topics', 0, 1),
(1376, 1, 14, 0, 'report topics', 0, 1),
(1377, 2, 0, 0, 'report topics', 0, -1),
(1378, 2, 3, 0, 'report topics', 0, 1),
(1379, 2, 10, 0, 'report topics', 0, 1),
(1380, 2, 11, 0, 'report topics', 0, 1),
(1381, 2, 12, 0, 'report topics', 0, 1),
(1382, 2, 13, 0, 'report topics', 0, 1),
(1383, 2, 14, 0, 'report topics', 0, 1),
(1384, 3, 0, 0, 'report topics', 1, -1),
(1385, 3, 3, 0, 'report topics', 1, 1),
(1386, 3, 10, 0, 'report topics', 1, 1),
(1387, 3, 11, 0, 'report topics', 1, 1),
(1388, 3, 12, 0, 'report topics', 1, 1),
(1389, 3, 13, 0, 'report topics', 1, 1),
(1390, 3, 14, 0, 'report topics', 1, 1),
(1391, 4, 0, 0, 'report topics', 1, -1),
(1392, 4, 3, 0, 'report topics', 1, 1),
(1393, 4, 10, 0, 'report topics', 1, 1),
(1394, 4, 11, 0, 'report topics', 1, 1),
(1395, 4, 12, 0, 'report topics', 1, 1),
(1396, 4, 13, 0, 'report topics', 1, 1),
(1397, 4, 14, 0, 'report topics', 1, 1),
(1398, 5, 0, 0, 'report topics', 0, -1),
(1399, 5, 3, 0, 'report topics', 0, 1),
(1400, 5, 10, 0, 'report topics', 0, 1),
(1401, 5, 11, 0, 'report topics', 0, 1),
(1402, 5, 12, 0, 'report topics', 0, 1),
(1403, 5, 13, 0, 'report topics', 0, 1),
(1404, 5, 14, 0, 'report topics', 0, 1),
(1405, 6, 0, 0, 'report topics', 0, -1),
(1406, 6, 3, 0, 'report topics', 0, 1),
(1407, 6, 10, 0, 'report topics', 0, 1),
(1408, 6, 11, 0, 'report topics', 0, 1),
(1409, 6, 12, 0, 'report topics', 0, 1),
(1410, 6, 13, 0, 'report topics', 0, 1),
(1411, 6, 14, 0, 'report topics', 0, 1),
(1412, 1, 0, 0, 'move topics', 0, -1),
(1413, 1, 3, 0, 'move topics', 0, 1),
(1414, 1, 10, 0, 'move topics', 0, 1),
(1415, 1, 11, 0, 'move topics', 0, 1),
(1416, 1, 12, 0, 'move topics', 0, 1),
(1417, 1, 13, 0, 'move topics', 0, 1),
(1418, 1, 14, 0, 'move topics', 0, 1),
(1419, 2, 0, 0, 'move topics', 0, -1),
(1420, 2, 3, 0, 'move topics', 0, 1),
(1421, 2, 10, 0, 'move topics', 0, 1),
(1422, 2, 11, 0, 'move topics', 0, 1),
(1423, 2, 12, 0, 'move topics', 0, 1),
(1424, 2, 13, 0, 'move topics', 0, 1),
(1425, 2, 14, 0, 'move topics', 0, 1),
(1426, 3, 0, 0, 'move topics', 1, -1),
(1427, 3, 3, 0, 'move topics', 1, 1),
(1428, 3, 10, 0, 'move topics', 1, 1),
(1429, 3, 11, 0, 'move topics', 1, 1),
(1430, 3, 12, 0, 'move topics', 1, 1),
(1431, 3, 13, 0, 'move topics', 1, 1),
(1432, 3, 14, 0, 'move topics', 1, 1),
(1433, 4, 0, 0, 'move topics', 1, -1),
(1434, 4, 3, 0, 'move topics', 1, 1),
(1435, 4, 10, 0, 'move topics', 1, 1),
(1436, 4, 11, 0, 'move topics', 1, 1),
(1437, 4, 12, 0, 'move topics', 1, 1),
(1438, 4, 13, 0, 'move topics', 1, 1),
(1439, 4, 14, 0, 'move topics', 1, 1),
(1440, 5, 0, 0, 'move topics', 0, -1),
(1441, 5, 3, 0, 'move topics', 0, 1),
(1442, 5, 10, 0, 'move topics', 0, 1),
(1443, 5, 11, 0, 'move topics', 0, 1),
(1444, 5, 12, 0, 'move topics', 0, 1),
(1445, 5, 13, 0, 'move topics', 0, 1),
(1446, 5, 14, 0, 'move topics', 0, 1),
(1447, 6, 0, 0, 'move topics', 0, -1),
(1448, 6, 3, 0, 'move topics', 0, 1),
(1449, 6, 10, 0, 'move topics', 0, 1),
(1450, 6, 11, 0, 'move topics', 0, 1),
(1451, 6, 12, 0, 'move topics', 0, 1),
(1452, 6, 13, 0, 'move topics', 0, 1),
(1453, 6, 14, 0, 'move topics', 0, 1),
(1454, 1, 0, 0, 'move posts', 0, -1),
(1455, 1, 3, 0, 'move posts', 0, 1),
(1456, 1, 10, 0, 'move posts', 0, 1),
(1457, 1, 11, 0, 'move posts', 0, 1),
(1458, 1, 12, 0, 'move posts', 0, 1),
(1459, 1, 13, 0, 'move posts', 0, 1),
(1460, 1, 14, 0, 'move posts', 0, 1),
(1461, 2, 0, 0, 'move posts', 0, -1),
(1462, 2, 3, 0, 'move posts', 0, 1),
(1463, 2, 10, 0, 'move posts', 0, 1),
(1464, 2, 11, 0, 'move posts', 0, 1),
(1465, 2, 12, 0, 'move posts', 0, 1),
(1466, 2, 13, 0, 'move posts', 0, 1),
(1467, 2, 14, 0, 'move posts', 0, 1),
(1468, 3, 0, 0, 'move posts', 1, -1),
(1469, 3, 3, 0, 'move posts', 1, 1),
(1470, 3, 10, 0, 'move posts', 1, 1),
(1471, 3, 11, 0, 'move posts', 1, 1),
(1472, 3, 12, 0, 'move posts', 1, 1),
(1473, 3, 13, 0, 'move posts', 1, 1),
(1474, 3, 14, 0, 'move posts', 1, 1),
(1475, 4, 0, 0, 'move posts', 1, -1),
(1476, 4, 3, 0, 'move posts', 1, 1),
(1477, 4, 10, 0, 'move posts', 1, 1),
(1478, 4, 11, 0, 'move posts', 1, 1),
(1479, 4, 12, 0, 'move posts', 1, 1),
(1480, 4, 13, 0, 'move posts', 1, 1),
(1481, 4, 14, 0, 'move posts', 1, 1),
(1482, 5, 0, 0, 'move posts', 0, -1),
(1483, 5, 3, 0, 'move posts', 0, 1),
(1484, 5, 10, 0, 'move posts', 0, 1),
(1485, 5, 11, 0, 'move posts', 0, 1),
(1486, 5, 12, 0, 'move posts', 0, 1),
(1487, 5, 13, 0, 'move posts', 0, 1),
(1488, 5, 14, 0, 'move posts', 0, 1),
(1489, 6, 0, 0, 'move posts', 0, -1),
(1490, 6, 3, 0, 'move posts', 0, 1),
(1491, 6, 10, 0, 'move posts', 0, 1),
(1492, 6, 11, 0, 'move posts', 0, 1),
(1493, 6, 12, 0, 'move posts', 0, 1),
(1494, 6, 13, 0, 'move posts', 0, 1),
(1495, 6, 14, 0, 'move posts', 0, 1),
(1496, 1, 0, 0, 'add poll', 0, -1),
(1497, 1, 3, 0, 'add poll', 0, 1),
(1498, 1, 10, 0, 'add poll', 0, 1),
(1499, 1, 11, 0, 'add poll', 0, 1),
(1500, 1, 12, 0, 'add poll', 0, 1),
(1501, 1, 13, 0, 'add poll', 0, 1),
(1502, 1, 14, 0, 'add poll', 0, 1),
(1503, 2, 0, 0, 'add poll', 1, -1),
(1504, 2, 3, 0, 'add poll', 1, 1),
(1505, 2, 10, 0, 'add poll', 1, 1),
(1506, 2, 11, 0, 'add poll', 1, 1),
(1507, 2, 12, 0, 'add poll', 1, 1),
(1508, 2, 13, 0, 'add poll', 1, 1),
(1509, 2, 14, 0, 'add poll', 1, 1),
(1510, 3, 0, 0, 'add poll', 1, -1),
(1511, 3, 3, 0, 'add poll', 1, 1),
(1512, 3, 10, 0, 'add poll', 1, 1),
(1513, 3, 11, 0, 'add poll', 1, 1),
(1514, 3, 12, 0, 'add poll', 1, 1),
(1515, 3, 13, 0, 'add poll', 1, 1),
(1516, 3, 14, 0, 'add poll', 1, 1),
(1517, 4, 0, 0, 'add poll', 1, -1),
(1518, 4, 3, 0, 'add poll', 1, 1),
(1519, 4, 10, 0, 'add poll', 1, 1),
(1520, 4, 11, 0, 'add poll', 1, 1),
(1521, 4, 12, 0, 'add poll', 1, 1),
(1522, 4, 13, 0, 'add poll', 1, 1),
(1523, 4, 14, 0, 'add poll', 1, 1),
(1524, 5, 0, 0, 'add poll', 0, -1),
(1525, 5, 3, 0, 'add poll', 0, 1),
(1526, 5, 10, 0, 'add poll', 0, 1),
(1527, 5, 11, 0, 'add poll', 0, 1),
(1528, 5, 12, 0, 'add poll', 0, 1),
(1529, 5, 13, 0, 'add poll', 0, 1),
(1530, 5, 14, 0, 'add poll', 0, 1),
(1531, 6, 0, 0, 'add poll', 0, -1),
(1532, 6, 3, 0, 'add poll', 0, 1),
(1533, 6, 10, 0, 'add poll', 0, 1),
(1534, 6, 11, 0, 'add poll', 0, 1),
(1535, 6, 12, 0, 'add poll', 0, 1),
(1536, 6, 13, 0, 'add poll', 0, 1),
(1537, 6, 14, 0, 'add poll', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `codo_permission_list`
--

CREATE TABLE `codo_permission_list` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `codo_permission_list`
--

INSERT INTO `codo_permission_list` (`id`, `permission`, `type`) VALUES
(1, 'view category', 'forum'),
(2, 'view user profiles', 'general'),
(3, 'use search', 'general'),
(4, 'view all topics', 'forum'),
(5, 'view my topics', 'forum'),
(6, 'create new topic', 'forum'),
(7, 'reply to all topics', 'forum'),
(8, 'edit my topics', 'forum'),
(9, 'edit all topics', 'forum'),
(10, 'delete my topics', 'forum'),
(11, 'delete all topics', 'forum'),
(12, 'view forum', 'general'),
(13, 'move topics', 'forum'),
(14, 'moderate topics', 'forum'),
(15, 'moderate posts', 'forum'),
(16, 'make sticky', 'forum'),
(17, 'edit profile', 'general'),
(18, 'see history', 'forum'),
(19, 'rep up', 'forum'),
(20, 'rep down', 'forum'),
(21, 'merge topics', 'forum'),
(22, 'add tags', 'forum'),
(23, 'close topics', 'forum'),
(24, 'report topics', 'forum'),
(25, 'move posts', 'forum'),
(26, 'add poll', 'forum');

-- --------------------------------------------------------

--
-- Table structure for table `codo_plugins`
--

CREATE TABLE `codo_plugins` (
  `plg_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `plg_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `plg_status` int(11) NOT NULL,
  `plg_weight` int(11) NOT NULL,
  `plg_schema_ver` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `codo_plugins`
--

INSERT INTO `codo_plugins` (`plg_name`, `plg_type`, `plg_status`, `plg_weight`, `plg_schema_ver`) VALUES
('post_notify', 'plugin', 1, 0, '1'),
('sso', 'plugin', 0, 0, '1'),
('uni_login', 'plugin', 0, 0, '1');

-- --------------------------------------------------------

--
-- Table structure for table `codo_poll_log`
--

CREATE TABLE `codo_poll_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `poll_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `voted_on` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `codo_poll_options`
--

CREATE TABLE `codo_poll_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `poll_id` int(11) NOT NULL,
  `option_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `num_votes` int(11) NOT NULL,
  `option_status` int(11) NOT NULL,
  `option_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `codo_poll_questions`
--

CREATE TABLE `codo_poll_questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `topic_id` int(11) NOT NULL,
  `question` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `num_votable` int(11) NOT NULL,
  `can_recast` int(11) NOT NULL,
  `total_votes` int(11) NOT NULL DEFAULT 0,
  `public_vote_result` int(11) NOT NULL,
  `view_result_without_vote` int(11) NOT NULL,
  `end_time` int(11) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `codo_posts`
--

CREATE TABLE `codo_posts` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `topic_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `imessage` text COLLATE utf8_unicode_ci NOT NULL,
  `omessage` text COLLATE utf8_unicode_ci NOT NULL,
  `post_created` int(11) NOT NULL,
  `post_modified` int(11) DEFAULT NULL,
  `post_status` int(11) NOT NULL DEFAULT 1,
  `reputation` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `codo_posts`
--

INSERT INTO `codo_posts` (`post_id`, `topic_id`, `cat_id`, `uid`, `imessage`, `omessage`, `post_created`, `post_modified`, `post_status`, `reputation`) VALUES
(1, 1, 3, 1, 'Hi,  \n  \nThis is an example post in your codoforum installation.   \nYou can create/modify/delete all forum categories from the forum backend.  \n  \nPlease edit the forum title and description from the backend.   \n  \nThe only user available to login in the front-end is admin with the password that you set during the installation.\n \nYou may delete this post . \n  \nRegards,   \nCodologic Team', '<p>Hi,  </p>\n<p>This is an example post in your codoforum installation.<br>You can create/modify/delete all forum categories from the forum backend.  </p>\n<p>Please edit the forum title and description from the backend.   </p>\n<p>The only user available to login in the front-end is admin with the password that you set during the installation.</p>\n<p>You may delete this post . </p>\n<p>Regards,<br>Codologic Team</p>', 1401549322, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `codo_promotion_rules`
--

CREATE TABLE `codo_promotion_rules` (
  `id` int(10) UNSIGNED NOT NULL,
  `reputation` int(11) NOT NULL,
  `posts` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `rid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `codo_reports`
--

CREATE TABLE `codo_reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `topic_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `report_type` int(11) NOT NULL,
  `details` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `codo_report_types`
--

CREATE TABLE `codo_report_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(310) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(11) NOT NULL DEFAULT 10,
  `action` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `codo_report_types`
--

INSERT INTO `codo_report_types` (`id`, `name`, `count`, `action`) VALUES
(1, 'Spam', 10, 1),
(2, 'Offtopic', 10, 1),
(3, 'Other', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `codo_reputation`
--

CREATE TABLE `codo_reputation` (
  `id` int(10) UNSIGNED NOT NULL,
  `from_id` int(11) NOT NULL,
  `to_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `rep_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `codo_roles`
--

CREATE TABLE `codo_roles` (
  `rid` int(10) UNSIGNED NOT NULL,
  `rname` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `color` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `codo_roles`
--

INSERT INTO `codo_roles` (`rid`, `rname`, `color`) VALUES
(1, 'guest', NULL),
(2, 'user', NULL),
(3, 'moderator', NULL),
(4, 'administrator', NULL),
(5, 'unverified user', NULL),
(6, 'banned', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `codo_sessions`
--

CREATE TABLE `codo_sessions` (
  `sid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_active` int(11) NOT NULL,
  `session_data` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `codo_sessions`
--

INSERT INTO `codo_sessions` (`sid`, `last_active`, `session_data`) VALUES
('bjqqeg76lken3tha5gk4duqpe3', 1607828115, '5eb4fc86187f3view_inserted|b:1;5eb4fc8618832_csrf|s:32:\"264764e1fe5912695b19a9cc3827e9b6\";');

-- --------------------------------------------------------

--
-- Table structure for table `codo_signups`
--

CREATE TABLE `codo_signups` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(128) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `codo_signups`
--

INSERT INTO `codo_signups` (`id`, `username`, `token`) VALUES
(1, 'kimfergiesky', 'd1a694499a88779bd229f11c8912fe6b');

-- --------------------------------------------------------

--
-- Table structure for table `codo_smileys`
--

CREATE TABLE `codo_smileys` (
  `id` int(10) UNSIGNED NOT NULL,
  `symbol` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `weight` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `codo_smileys`
--

INSERT INTO `codo_smileys` (`id`, `symbol`, `image_name`, `weight`) VALUES
(1, ':S', 'worried.gif', NULL),
(2, '(wasntme)', 'itwasntme.gif', NULL),
(3, 'x(', 'angry.gif', NULL),
(4, '(doh)', 'doh.gif', NULL),
(5, '|-()', 'yawn.gif', NULL),
(6, ']:)', 'evilgrin.gif', NULL),
(7, '|(', 'dull.gif', NULL),
(8, '|-)', 'sleepy.gif', NULL),
(9, '(blush)', 'blush.gif', NULL),
(10, ':P', 'tongueout.gif', NULL),
(11, '(:|', 'sweat.gif', NULL),
(12, ';(', 'crying.gif', NULL),
(13, ':)', 'smile.gif', NULL),
(14, ':(', 'sad.gif', NULL),
(15, ':D', 'bigsmile.gif', NULL),
(16, '8)', 'cool.gif', NULL),
(17, ';)', 'wink.gif', NULL),
(18, '(mm)', 'mmm.gif', NULL),
(19, ':x', 'lipssealed.gif', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `codo_tags`
--

CREATE TABLE `codo_tags` (
  `tag_id` int(10) UNSIGNED NOT NULL,
  `tag_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `topic_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `codo_tags_allowed`
--

CREATE TABLE `codo_tags_allowed` (
  `tag_id` int(10) UNSIGNED NOT NULL,
  `tag_text` text COLLATE utf8_unicode_ci NOT NULL,
  `cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `codo_topics`
--

CREATE TABLE `codo_topics` (
  `topic_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cat_id` smallint(6) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `last_post_id` int(11) NOT NULL DEFAULT 0,
  `last_post_uid` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_post_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `topic_created` int(11) NOT NULL,
  `topic_updated` int(11) NOT NULL DEFAULT 0,
  `topic_close` int(11) NOT NULL DEFAULT 0,
  `last_post_time` int(11) NOT NULL,
  `no_posts` int(11) NOT NULL DEFAULT 0,
  `no_views` int(11) NOT NULL DEFAULT 0,
  `topic_status` int(11) NOT NULL DEFAULT 1,
  `redirect_to` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `codo_topics`
--

INSERT INTO `codo_topics` (`topic_id`, `title`, `cat_id`, `post_id`, `uid`, `last_post_id`, `last_post_uid`, `last_post_name`, `topic_created`, `topic_updated`, `topic_close`, `last_post_time`, `no_posts`, `no_views`, `topic_status`, `redirect_to`) VALUES
(1, 'Welcome to Codoforum', 3, 1, 1, 0, NULL, NULL, 1401549322, 0, 0, 1401549322, 1, 3, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `codo_unread_categories`
--

CREATE TABLE `codo_unread_categories` (
  `cat_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `read_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `codo_unread_topics`
--

CREATE TABLE `codo_unread_topics` (
  `cat_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `read_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `codo_users`
--

CREATE TABLE `codo_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pass` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL,
  `last_access` int(11) NOT NULL DEFAULT 0,
  `read_time` int(11) NOT NULL DEFAULT 0,
  `user_status` int(11) NOT NULL DEFAULT 1,
  `avatar` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `signature` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_posts` int(11) NOT NULL DEFAULT 0,
  `profile_views` int(11) NOT NULL DEFAULT 0,
  `oauth_id` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `reputation` int(11) NOT NULL DEFAULT 0,
  `last_notification_view_time` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `codo_users`
--

INSERT INTO `codo_users` (`id`, `username`, `name`, `pass`, `token`, `mail`, `created`, `last_access`, `read_time`, `user_status`, `avatar`, `signature`, `no_posts`, `profile_views`, `oauth_id`, `reputation`, `last_notification_view_time`) VALUES
(1, 'admin', 'admin', '$2a$08$4kDwSHx/zx9JIaI3NV/Ed.33j2xYJD8W.IsgmclJWb3ZVh5HoRS8G', NULL, 'rrgs.sagar@gmail.com', 1588919431, 1588919799, 0, 1, 'A_f2a200.png', NULL, 1, 7, '0', 0, 0),
(2, 'anonymous', 'Anonymous', 'youJustCantCrackThis', '', 'anonymous@localhost', 1588919431, 1588919431, 0, 0, '', '', 0, 0, '0', 0, 0),
(3, 'kimfergiesky', 'kimfergiesky', '$2a$08$sZA0R7r.1EBQuREL/V6Ji.DUI4yZoAZWXW2d78jXAtWEfR/DvyxdC', NULL, 'iazfpwguhx_1576842787@tfbnw.net', 1597635723, 1597635723, 0, 0, 'K_393973.png', NULL, 0, 0, '0', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `codo_user_preferences`
--

CREATE TABLE `codo_user_preferences` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` int(11) NOT NULL,
  `preference` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(400) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `codo_user_preferences`
--

INSERT INTO `codo_user_preferences` (`id`, `uid`, `preference`, `value`) VALUES
(1, 0, 'notification_frequency', 'immediate'),
(2, 0, 'real_time_notifications', 'yes'),
(3, 0, 'desktop_notifications', 'yes'),
(4, 0, 'send_emails_when_online', 'no'),
(5, 0, 'notification_type_on_create_topic', '4'),
(6, 0, 'notification_type_on_reply_topic', '3');

-- --------------------------------------------------------

--
-- Table structure for table `codo_user_roles`
--

CREATE TABLE `codo_user_roles` (
  `uid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `is_primary` int(11) NOT NULL,
  `is_promoted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `codo_user_roles`
--

INSERT INTO `codo_user_roles` (`uid`, `rid`, `is_primary`, `is_promoted`) VALUES
(1, 4, 1, 0),
(2, 1, 1, 0),
(3, 5, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `codo_views`
--

CREATE TABLE `codo_views` (
  `date` date NOT NULL,
  `views` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `codo_views`
--

INSERT INTO `codo_views` (`date`, `views`) VALUES
('2020-05-08', 22),
('2020-05-17', 1),
('2020-05-21', 5),
('2020-05-22', 16),
('2020-05-24', 3),
('2020-05-25', 5),
('2020-06-01', 1),
('2020-07-01', 4),
('2020-07-08', 4),
('2020-07-11', 1),
('2020-07-13', 1),
('2020-07-15', 15),
('2020-07-19', 1),
('2020-07-23', 11),
('2020-07-26', 1),
('2020-08-03', 1),
('2020-08-09', 1),
('2020-08-10', 1),
('2020-08-17', 51),
('2020-08-21', 14),
('2020-08-28', 1),
('2020-09-05', 1),
('2020-09-08', 3),
('2020-09-14', 18),
('2020-09-16', 1),
('2020-09-18', 11),
('2020-09-20', 1),
('2020-09-21', 1),
('2020-09-22', 5),
('2020-09-24', 2),
('2020-09-29', 6),
('2020-09-30', 5),
('2020-10-01', 4),
('2020-10-05', 1),
('2020-10-12', 2),
('2020-10-14', 1),
('2020-10-15', 2),
('2020-10-22', 1),
('2020-10-23', 3),
('2020-10-24', 3),
('2020-10-25', 2),
('2020-11-01', 2),
('2020-11-12', 1),
('2020-11-13', 1),
('2020-11-21', 1),
('2020-11-25', 1),
('2020-12-02', 10),
('2020-12-03', 1),
('2020-12-04', 1),
('2020-12-08', 2),
('2020-12-09', 17),
('2020-12-11', 1),
('2020-12-13', 1);

-- --------------------------------------------------------

--
-- Table structure for table `conversation`
--

CREATE TABLE `conversation` (
  `id` int(255) NOT NULL,
  `cid` varchar(300) NOT NULL,
  `projectid` varchar(300) NOT NULL,
  `freelancerid` varchar(300) NOT NULL,
  `clientid` varchar(300) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conversation`
--

INSERT INTO `conversation` (`id`, `cid`, `projectid`, `freelancerid`, `clientid`, `date_added`) VALUES
(1, '0vxSqcCa0T', 'bVbRUo36To', '715478889450', '296594131506', '2019-11-21 14:16:55'),
(2, '5UpuwAIti2', 'uJCOYwXrdO', '233802410288', '329616019298', '2019-11-21 14:16:55'),
(3, 'FxzwgxrbYs', 'PZgr7p7EeB', '753678237313', '981686315672', '2019-11-21 14:16:55'),
(4, 'YnBTwy2eFD', 'GhkalwKELF', '645447357569', '321267804911', '2019-11-21 14:16:55'),
(5, 'SHLn1hQctH', 'uJCOYwXrdO', '305378125552', '329616019298', '2019-11-21 14:16:55'),
(6, '5wEUCSLl8V', 'fi47zFrW8s', '228145236254', '969406884108', '2019-11-21 12:50:28'),
(7, 'vri2xrbG9X', 'WQjrwtmy7Q', '324036228471', '199513386617', '2019-11-21 12:50:28'),
(8, 'tpoMMHWVBC', 'e2qj4OYYIs', '199476311866', '188158648562', '2019-11-21 12:50:28'),
(10, 'z7Jfwz4l71', 'Wm0W6YvzLr', '715478889450', '431974897102', '2019-11-21 12:50:28'),
(11, 'L69bRrC2gL', 'GhkalwKELF', '434155361070', '321267804911', '2019-11-21 12:50:28'),
(12, 'mOHdEkq1LD', 'GhkalwKELF', '233802410288', '321267804911', '2019-11-21 12:50:28'),
(13, 'TrfOS6qMkb', '44ndkrA0am', '753678237313', '108278049269', '2019-11-21 12:50:28'),
(14, 'IMuITt77dx', 'eUSPl8YeQh', '228145236254', '981686315672', '2019-11-21 12:50:28'),
(15, 'anlel0IC6P', 'bVbRUo36To', '434155361070', '296594131506', '2019-11-21 12:50:28'),
(16, 'vwDtJR3X1m', 'W6nOQzaagZ', '233802410288', '156958966286', '2019-11-21 12:50:28'),
(17, 'M0jgj6y6wtNeBD', '44ndkrA0am', '233802410288', '108278049269', '2019-11-25 17:47:29'),
(18, '7R8cG47W1UV3kG', 'iBVQfiepeG6qeV', '233802410288', '108278049269', '2019-11-27 13:21:31'),
(19, 'o6mMF7DI3KnSd8', 'iBVQfiepeG6qeV', '753678237313', '108278049269', '2019-11-27 15:21:47'),
(21, 'IMh5eZQQQ14fwK', 'zMiBJlVhKk', '645447357569', '981686315672', '2019-11-28 20:33:02'),
(22, 'OX0xXjDwA5Srvl', 'zMiBJlVhKk', '715478889450', '981686315672', '2019-12-01 15:09:40');

-- --------------------------------------------------------

--
-- Table structure for table `conversation_reply`
--

CREATE TABLE `conversation_reply` (
  `id` int(255) NOT NULL,
  `cid` varchar(300) NOT NULL,
  `projectid` varchar(300) NOT NULL,
  `nid` varchar(300) NOT NULL,
  `user_sending` varchar(300) NOT NULL,
  `reply` longtext NOT NULL,
  `read_status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conversation_reply`
--

INSERT INTO `conversation_reply` (`id`, `cid`, `projectid`, `nid`, `user_sending`, `reply`, `read_status`, `date_added`) VALUES
(1, '0vxSqcCa0T', 'bVbRUo36To', '2', '715478889450', 'Hey I can do the work.', 1, '2019-11-21 12:50:28'),
(2, '0vxSqcCa0T', 'bVbRUo36To', '3', '296594131506', 'YesI will hire you.', 1, '2019-11-21 12:50:28'),
(3, '5UpuwAIti2', 'uJCOYwXrdO', '5', '233802410288', 'Hi Kevin, I can build the custom webpages at $100. I am a hard worker with great focus on great design.\r\nThank you. ', 1, '2019-11-21 12:50:28'),
(4, 'FxzwgxrbYs', 'PZgr7p7EeB', '7', '753678237313', 'Hi Gerald Myers.\r\n\r\nI am willing to do the transcribing work.\r\n\r\nI can do the work in 1 weeks time.', 1, '2019-11-21 12:50:28'),
(5, 'YnBTwy2eFD', 'GhkalwKELF', '9', '645447357569', 'Hi Margaret,\r\n\r\nI am good at Craft CMS, look at my work on my profile.\r\n\r\nI will be willing to work your project.\r\n\r\nThank you.', 1, '2019-11-21 12:50:28'),
(6, 'SHLn1hQctH', 'uJCOYwXrdO', '12', '305378125552', 'I am qualified Frontend Developer working for Duuuunk.com.\r\n\r\nI can do the work and produce high quality work.', 1, '2019-11-21 12:50:28'),
(7, '5wEUCSLl8V', 'fi47zFrW8s', '14', '228145236254', 'Hi Patricia,\r\n\r\nI can do the SEO for your website.\r\n\r\nWhich website is that?', 1, '2019-11-21 12:50:28'),
(8, 'vri2xrbG9X', 'WQjrwtmy7Q', '16', '324036228471', 'For online profiling and video/track tagging youtube it needs alot of work that\'s why I have posted my budget at $100.\r\n\r\nThank you.', 1, '2019-11-21 12:50:28'),
(9, 'tpoMMHWVBC', 'e2qj4OYYIs', '19', '188158648562', 'Hi Hellen,\r\n\r\ni have seen your profile and I am impressed.\r\n\r\nWould you want to this work of Quickbooks for me?\r\n\r\nYour reply will be much appreciated.\r\n\r\nThank you.', 1, '2019-11-21 12:50:28'),
(11, 'z7Jfwz4l71', 'Wm0W6YvzLr', '23', '431974897102', 'Hey Charles, are you willing to do this project for me?\r\n\r\nThank you.', 1, '2019-11-21 12:50:28'),
(12, 'L69bRrC2gL', 'GhkalwKELF', '25', '321267804911', 'Hi Dexter,\r\n\r\nI have seen on your profile that you are a Mobile Apps Developer.\r\n\r\nI am wondering if you know how to develop using Craft CMS?', 1, '2019-11-21 12:50:28'),
(13, 'mOHdEkq1LD', 'GhkalwKELF', '27', '321267804911', 'Hey Anthony Fisher,\r\n\r\nAre you able to work with Craft CMS, or are you just a frontend developer.', 1, '2019-11-21 12:50:28'),
(14, 'TrfOS6qMkb', '44ndkrA0am', '29', '108278049269', 'Hi Julia,\r\n\r\nAre you able to do this work?', 0, '2019-11-21 12:50:28'),
(15, 'z7Jfwz4l71', 'Wm0W6YvzLr', '31', '715478889450', 'Yes I will work on it.', 1, '2019-11-21 12:50:28'),
(16, 'IMuITt77dx', 'eUSPl8YeQh', '33', '981686315672', 'Hey do you want to work on this project?', 0, '2019-11-21 12:50:28'),
(17, 'IMuITt77dx', 'eUSPl8YeQh', '35', '228145236254', 'Yes I can do the work.', 1, '2019-11-21 12:50:28'),
(18, 'tpoMMHWVBC', 'e2qj4OYYIs', '39', '199476311866', 'Yes I can do the work, thank you.', 0, '2019-11-21 12:50:28'),
(19, 'z7Jfwz4l71', 'Wm0W6YvzLr', '42', '431974897102', 'Hi, I have hired you.\n\nI am sending you the files need so you can start to work.', 1, '2019-11-21 12:50:28'),
(20, 'z7Jfwz4l71', 'Wm0W6YvzLr', '45', '715478889450', 'Jesse, I have already finished your logo and uploaded the file. Please check to confirm if it\'s what you wanted.', 1, '2019-11-21 12:50:28'),
(21, 'YnBTwy2eFD', 'GhkalwKELF', '49', '321267804911', 'Hey I have hired you and posted a file. Can you start today?', 1, '2019-11-21 13:19:40'),
(22, 'SHLn1hQctH', 'uJCOYwXrdO', '52', '329616019298', 'Hi, I am going to hire you. and send the files today.', 1, '2019-11-21 13:19:40'),
(23, 'SHLn1hQctH', 'uJCOYwXrdO', '56', '305378125552', 'I have finished the work.', 0, '2019-11-21 13:19:40'),
(24, 'anlel0IC6P', 'bVbRUo36To', '66', '296594131506', 'Hey would like to work for me on this project?', 1, '2019-11-21 13:19:40'),
(25, 'anlel0IC6P', 'bVbRUo36To', '68', '434155361070', 'Yes, I would gladly do the job.', 1, '2019-11-21 13:19:40'),
(26, 'anlel0IC6P', 'bVbRUo36To', '70', '296594131506', 'I am sending the files right now.', 1, '2019-11-21 13:19:40'),
(27, 'anlel0IC6P', 'bVbRUo36To', '72', '296594131506', 'Can you build something like that on the file?', 1, '2019-11-21 13:19:40'),
(28, 'anlel0IC6P', 'bVbRUo36To', '74', '434155361070', 'I have finished the design and its PHP', 0, '2019-11-21 13:19:40'),
(29, 'vri2xrbG9X', 'WQjrwtmy7Q', '79', '199513386617', 'I have paid, now start the work. I expect it today.', 1, '2019-11-21 13:19:40'),
(30, 'vwDtJR3X1m', 'W6nOQzaagZ', '88', '156958966286', 'Hi Anthony, do you know how to use Salesforce?', 0, '2019-11-21 13:19:40'),
(31, 'vwDtJR3X1m', 'W6nOQzaagZ', '92', '233802410288', 'I would love to work on this Project. Yes I know salesforce.', 0, '2019-11-21 13:19:40'),
(33, 'M0jgj6y6wtNeBD', '44ndkrA0am', '104', '233802410288', 'Nice', 1, '2019-11-25 20:23:39'),
(35, 'M0jgj6y6wtNeBD', '44ndkrA0am', '107', '108278049269', 'working', 1, '2019-11-26 16:07:13'),
(36, 'M0jgj6y6wtNeBD', '44ndkrA0am', '108', '108278049269', 'Test', 1, '2019-11-26 17:05:29'),
(37, 'M0jgj6y6wtNeBD', '44ndkrA0am', '109', '233802410288', 'test', 1, '2019-11-26 21:14:08'),
(38, 'TrfOS6qMkb', '44ndkrA0am', '111', '753678237313', 'test', 0, '2019-11-27 06:24:06'),
(39, 'M0jgj6y6wtNeBD', '44ndkrA0am', '112', '108278049269', 'test', 1, '2019-11-27 06:48:48'),
(40, '7R8cG47W1UV3kG', 'iBVQfiepeG6qeV', '114', '108278049269', 'can you work on this', 1, '2019-11-27 13:21:31'),
(41, '7R8cG47W1UV3kG', 'iBVQfiepeG6qeV', '115', '233802410288', 'Yes I can', 1, '2019-11-27 13:23:31'),
(42, '7R8cG47W1UV3kG', 'iBVQfiepeG6qeV', '117', '233802410288', 'yes i can', 1, '2019-11-27 15:11:26'),
(43, 'o6mMF7DI3KnSd8', 'iBVQfiepeG6qeV', '119', '108278049269', 'hey', 0, '2019-11-27 15:21:47'),
(44, 'bfkBchX9Dkc5ko', 'zMiBJlVhKk', '125', '212335505903', 'I would love to the work.', 0, '2019-11-28 20:23:28'),
(45, 'IMh5eZQQQ14fwK', 'zMiBJlVhKk', '127', '645447357569', 'Test', 1, '2019-11-28 20:33:02'),
(46, 'OX0xXjDwA5Srvl', 'zMiBJlVhKk', '145', '715478889450', 'I can do this for $70.\r\n\r\nThanks.', 1, '2019-12-01 15:09:40');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(255) NOT NULL,
  `currency_code` varchar(300) NOT NULL,
  `currency_name` varchar(300) NOT NULL,
  `currency_symbol` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `currency_code`, `currency_name`, `currency_symbol`) VALUES
(1, 'USD', 'US Dollar', '$'),
(2, 'AUD', 'Australian dollar', '$'),
(3, 'BRL', 'Brazilian real', 'R$'),
(5, 'CAD', 'Canadian dollar', '$'),
(6, 'CLP', 'Chilean peso', '$'),
(7, 'CNY', 'Chinese yuan', 'Â¥'),
(8, 'DKK', 'Danish krone', 'kr'),
(9, 'EUR', 'Euro', 'â‚¬'),
(10, 'HKD', 'Hong Kong dollar', '$'),
(11, 'INR', 'Indian rupee', 'â‚¹'),
(12, 'IDR', 'Indonesian rupiah', 'Rp'),
(13, 'ILS', 'Israeli new shekel', 'â‚ª'),
(14, 'JPY', 'Japanese yen', 'Â¥'),
(15, 'KES', 'Kenyan shilling', 'Ksh'),
(16, 'KPW', 'North Korean won', 'â‚©'),
(17, 'KRW', 'South Korean won', 'â‚©'),
(18, 'MYR', 'Malaysian ringgit', 'RM'),
(19, 'MXN', 'Mexican peso', '$'),
(20, 'NZD', 'New Zealand dollar', '$'),
(21, 'NOK', 'Norwegian krone', 'kr'),
(22, 'PKR', 'Pakistani rupee', 'â‚¨'),
(23, 'PLN', 'Polish zÅ‚oty', 'zÅ‚'),
(24, 'PHP', 'Philippine peso', 'â‚±'),
(25, 'RUB', 'Russian ruble', 'â‚½'),
(26, 'SGD', 'Singapore dollar', '$'),
(27, 'ZAR', 'South African rand', 'R'),
(28, 'SEK', 'Swedish krona', 'kr'),
(29, 'CHF', 'Swiss franc', 'Fr'),
(30, 'TWD', 'New Taiwan dollar', '$'),
(31, 'TRY', 'Turkish lira', 'â‚º'),
(32, 'AED', 'United Arab Emirates dirham', 'Ø¯.Ø¥'),
(39, 'GG', 'GG', '('),
(40, 'GG', 'Mexican', '*'),
(41, 'GG', 'GG', '6');

-- --------------------------------------------------------

--
-- Table structure for table `dispute_conversation`
--

CREATE TABLE `dispute_conversation` (
  `id` int(255) NOT NULL,
  `cid` varchar(300) NOT NULL,
  `projectid` varchar(300) NOT NULL,
  `freelancerid` varchar(300) NOT NULL,
  `clientid` varchar(300) NOT NULL,
  `adminid` varchar(300) NOT NULL,
  `action` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dispute_conversation`
--

INSERT INTO `dispute_conversation` (`id`, `cid`, `projectid`, `freelancerid`, `clientid`, `adminid`, `action`, `date_added`) VALUES
(1, 'a2ehmqNvOs', 'GhkalwKELF', '645447357569', '321267804911', '1471436678', 2, '2019-11-21 13:36:58'),
(2, 'unmJ6WO4yk', 'fi47zFrW8s', '228145236254', '969406884108', '1471436678', 1, '2019-11-21 13:36:58'),
(3, 'hX39ssaxMyAASs', '44ndkrA0am', '233802410288', '108278049269', '1471436678', 2, '2019-12-01 14:23:42'),
(4, 'dX1bs5YyTZPllH', 'e2qj4OYYIs', '199476311866', '188158648562', '1471436678', 1, '2019-12-01 20:40:08');

-- --------------------------------------------------------

--
-- Table structure for table `dispute_conversation_reply`
--

CREATE TABLE `dispute_conversation_reply` (
  `id` int(255) NOT NULL,
  `cid` varchar(300) NOT NULL,
  `projectid` varchar(300) NOT NULL,
  `user_sending` varchar(300) NOT NULL,
  `reply` longtext NOT NULL,
  `read_status_freelancer` tinyint(4) NOT NULL,
  `read_status_client` tinyint(4) NOT NULL,
  `read_status_admin` tinyint(4) NOT NULL,
  `is_admin` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dispute_conversation_reply`
--

INSERT INTO `dispute_conversation_reply` (`id`, `cid`, `projectid`, `user_sending`, `reply`, `read_status_freelancer`, `read_status_client`, `read_status_admin`, `is_admin`, `date_added`) VALUES
(1, 'a2ehmqNvOs', 'GhkalwKELF', '321267804911', 'The Freelancer seems to not know Craft CMS, please return my money back. Thank you.', 1, 1, 1, 0, '2019-11-21 13:36:58'),
(2, 'a2ehmqNvOs', 'GhkalwKELF', '1471436678', 'What did the Freelancer do?', 1, 1, 1, 1, '2019-11-21 13:40:20'),
(3, 'a2ehmqNvOs', 'GhkalwKELF', '321267804911', 'She just sent the file exactly as I had sent her.', 1, 1, 1, 0, '2019-11-21 13:40:20'),
(4, 'a2ehmqNvOs', 'GhkalwKELF', '645447357569', 'Hi Admin, I fixed an error on the file. The Client got the file she wanted now she doesn\'t want to hire me. ', 1, 1, 1, 0, '2019-11-21 13:40:20'),
(5, 'a2ehmqNvOs', 'GhkalwKELF', '321267804911', 'No the file is exactly as I sent.', 0, 1, 1, 0, '2019-11-21 13:40:20'),
(6, 'a2ehmqNvOs', 'GhkalwKELF', '1471436678', 'I have seen the file, its exactly as the Client posted. So I would have to return the money to the Client.', 0, 1, 1, 1, '2019-11-21 13:40:20'),
(7, 'unmJ6WO4yk', 'fi47zFrW8s', '228145236254', 'The Client is not willing to release the funds and I have already finished the project.', 1, 1, 1, 0, '2019-11-21 13:40:20'),
(8, 'unmJ6WO4yk', 'fi47zFrW8s', '1471436678', 'Hey Patricia, I have seen Sharon the freelancer has finished the work. I will have to award the freelancer the money.', 1, 1, 1, 1, '2019-11-21 13:40:20'),
(9, 'unmJ6WO4yk', 'fi47zFrW8s', '969406884108', 'test', 0, 1, 1, 0, '2019-11-30 14:38:58'),
(10, 'hX39ssaxMyAASs', '44ndkrA0am', '108278049269', 'The freelancer isn\'t replying to my messages.', 1, 1, 1, 0, '2019-12-01 14:23:42'),
(12, 'hX39ssaxMyAASs', '44ndkrA0am', '233802410288', 'test', 1, 1, 1, 0, '2019-12-01 16:42:31'),
(13, 'dX1bs5YyTZPllH', 'e2qj4OYYIs', '199476311866', 'The client has refused to released the money.', 1, 0, 1, 0, '2019-12-01 20:40:08'),
(19, 'dX1bs5YyTZPllH', 'e2qj4OYYIs', '1471436678', 'Lets wait for the client to reply the dispute. Thanks.', 0, 0, 1, 1, '2019-12-02 15:24:53'),
(20, 'hX39ssaxMyAASs', '44ndkrA0am', '1471436678', 'Just a test', 1, 1, 1, 1, '2019-12-02 16:26:13');

-- --------------------------------------------------------

--
-- Table structure for table `escrow`
--

CREATE TABLE `escrow` (
  `id` int(255) NOT NULL,
  `proposalid` varchar(300) NOT NULL,
  `projectid` varchar(300) NOT NULL,
  `freelancerid` varchar(300) NOT NULL,
  `clientid` varchar(300) NOT NULL,
  `nid` int(70) NOT NULL,
  `budget` decimal(15,2) NOT NULL,
  `action` tinyint(4) NOT NULL,
  `read_status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `escrow`
--

INSERT INTO `escrow` (`id`, `proposalid`, `projectid`, `freelancerid`, `clientid`, `nid`, `budget`, `action`, `read_status`, `date_added`) VALUES
(1, '11', 'eUSPl8YeQh', '228145236254', '981686315672', 36, '100.00', 2, 1, '2019-11-21 10:38:02'),
(2, '12', 'e2qj4OYYIs', '199476311866', '188158648562', 40, '100.00', 2, 1, '2019-11-21 10:38:02'),
(3, '10', 'Wm0W6YvzLr', '715478889450', '431974897102', 41, '70.00', 2, 1, '2019-11-21 10:38:02'),
(4, '4', 'GhkalwKELF', '645447357569', '321267804911', 47, '150.00', 4, 0, '2019-11-21 10:38:02'),
(5, '6', 'uJCOYwXrdO', '305378125552', '329616019298', 53, '100.00', 2, 1, '2019-11-21 10:38:02'),
(6, '13', 'bVbRUo36To', '434155361070', '296594131506', 69, '450.00', 2, 1, '2019-11-21 10:38:02'),
(7, '8', 'WQjrwtmy7Q', '324036228471', '199513386617', 78, '60.00', 2, 0, '2019-11-21 10:38:02'),
(8, '7', 'fi47zFrW8s', '228145236254', '969406884108', 83, '150.00', 2, 1, '2019-11-21 10:38:02'),
(9, '14', 'W6nOQzaagZ', '233802410288', '156958966286', 93, '100.00', 2, 1, '2019-11-21 10:38:02'),
(13, '3', 'PZgr7p7EeB', '753678237313', '981686315672', 123, '70.00', 2, 1, '2019-11-28 17:34:14'),
(14, '19', '44ndkrA0am', '233802410288', '108278049269', 142, '100.00', 4, 1, '2019-11-30 17:35:07'),
(15, '24', 'zMiBJlVhKk', '715478889450', '981686315672', 150, '70.00', 1, 1, '2020-01-10 13:58:18');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(255) NOT NULL,
  `question` varchar(300) NOT NULL,
  `answer` longtext NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `question`, `answer`, `date_added`) VALUES
(6, 'What is Wave?', '<p>Wave is a Powerful Freelance Marketplace System.\r\n</p><p>It has the ability to change the users (Freelancers &amp; Clients).</p><p>Start a Freelance Marketplace Business with no hustle.<br></p>', '2019-11-12 12:50:45'),
(7, 'How does Wave generate revenue?', '<p>Wave makes money by taking 30% of payments paid to Freelancers. </p><p>You will change the percentage on the Admin Section.</p>', '2019-11-12 12:51:26'),
(8, 'How does Wave Pay Freelancers?', '<p>You as admin you pay the freelancers to their PayPal Emails.</p><p>Then you go to the \"Withdrawals Section\" and click Paid.<br></p><p>The date to pay the freelancers is 4 days after they request.</p>', '2019-11-12 12:52:01'),
(9, 'How does Wave handle Disputes?', '<p>When a project is under dispute, the Admin will be notified. </p><p>Then the Admin, Client and the Freelancer will start a dispute conversation in order to determine party at fault.</p><p> If the Party at fault is the Client, then the money will be awarded to the Freelancer. </p><p>If the Party at fault is the Freelancer, then the money will be returned to the Client.</p>', '2019-11-12 12:52:27');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(255) NOT NULL,
  `projectid` varchar(300) NOT NULL,
  `user_sending` varchar(300) NOT NULL,
  `user_receiving` varchar(300) NOT NULL,
  `nid` varchar(300) NOT NULL,
  `fileupload` varchar(300) NOT NULL,
  `type` varchar(300) NOT NULL,
  `extension` varchar(300) NOT NULL,
  `size` varchar(300) NOT NULL,
  `read_status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `projectid`, `user_sending`, `user_receiving`, `nid`, `fileupload`, `type`, `extension`, `size`, `read_status`, `date_added`) VALUES
(1, 'eUSPl8YeQh', '228145236254', '981686315672', '37', '1ywL15JJUgimg_3.jpg', 'image/jpeg', 'jpg', '32.578125', 1, '2019-11-21 10:38:02'),
(2, 'Wm0W6YvzLr', '431974897102', '715478889450', '43', 'euxmlRR6VWlogo.svg', 'image/svg+xml', 'svg', '5.4638671875', 1, '2019-11-21 10:38:02'),
(3, 'Wm0W6YvzLr', '715478889450', '431974897102', '44', 'tAONCakoYjlogo-mini.svg', 'image/svg+xml', 'svg', '1.9599609375', 1, '2019-11-21 10:38:02'),
(6, 'uJCOYwXrdO', '329616019298', '305378125552', '54', 'svLZVKb3hIindex.html', 'text/html', 'html', '5.59765625', 1, '2019-11-21 10:38:02'),
(7, 'uJCOYwXrdO', '305378125552', '329616019298', '55', 'Ps6kWNMcM9index.html', 'text/html', 'html', '5.59765625', 1, '2019-11-21 10:38:02'),
(8, 'bVbRUo36To', '296594131506', '434155361070', '71', 'wrr45XlIov1.png', 'image/png', 'png', '339.392578125', 1, '2019-11-21 10:38:02'),
(9, 'bVbRUo36To', '434155361070', '296594131506', '73', 'MssmvGuFaAindex.html', 'text/html', 'html', '4.9736328125', 0, '2019-11-21 10:38:02'),
(10, 'fi47zFrW8s', '969406884108', '228145236254', '84', 'vdTmHvR5P51.jpg', 'image/jpeg', 'jpg', '52.9609375', 1, '2019-11-21 10:38:02'),
(13, 'eUSPl8YeQh', '981686315672', '228145236254', '128', 'SO3kMxokWOBx1W.png', 'image/png', 'png', '9.3388671875', 1, '2019-11-29 07:13:19'),
(16, 'eUSPl8YeQh', '981686315672', '228145236254', '131', 'zUH8WMpiEasGdd.jpg', 'image/jpeg', 'jpg', '54.375', 1, '2019-11-29 11:40:05'),
(18, 'eUSPl8YeQh', '228145236254', '981686315672', '133', 'KF8FHt06l1jqI7.png', 'image/png', 'png', '6.234375', 1, '2019-11-29 12:04:07'),
(19, 'e2qj4OYYIs', '199476311866', '188158648562', '147', 'ceddull0TMKCNg.jpg', 'image/jpeg', 'jpg', '26.0009765625', 0, '2019-12-02 13:18:50');

-- --------------------------------------------------------

--
-- Table structure for table `funds`
--

CREATE TABLE `funds` (
  `id` int(255) NOT NULL,
  `paymentid` varchar(300) NOT NULL,
  `clientid` varchar(300) NOT NULL,
  `type` varchar(300) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `transaction_fee` decimal(15,2) NOT NULL,
  `complete` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `funds`
--

INSERT INTO `funds` (`id`, `paymentid`, `clientid`, `type`, `amount`, `transaction_fee`, `complete`, `date_added`) VALUES
(1, 'F8q4isS1a2', '321267804911', 'PayPal', '150.00', '2.30', 1, '2019-11-21 10:38:02'),
(2, 'MFHqoN1aiK', '981686315672', 'PayPal', '100.00', '2.30', 1, '2019-11-21 10:38:02'),
(3, 'hrUApfWRpM', '431974897102', 'Stripe', '100.00', '2.30', 1, '2019-11-21 10:38:02'),
(4, 'QPFWRI9u27', '188158648562', 'Stripe', '100.00', '2.30', 1, '2019-11-21 10:38:02'),
(5, 'icBgUkhxFf', '329616019298', 'PayPal', '100.00', '2.30', 1, '2019-11-21 10:38:02'),
(6, 'HiKIJbp2cp', '296594131506', 'Stripe', '450.00', '2.30', 1, '2019-11-21 10:38:02'),
(7, 'MofcuCigg3', '199513386617', 'PayPal', '75.00', '2.30', 1, '2019-04-26 14:58:49'),
(8, 'Xu35k96EDe', '969406884108', 'Stripe', '150.00', '2.30', 1, '2019-04-29 10:48:38'),
(9, 'G4RkmLphMe', '156958966286', 'PayPal', '100.00', '2.30', 1, '2019-04-29 11:07:37'),
(12, 'OCevJvAdOa', '981686315672', 'Stripe', '30.00', '2.30', 1, '2019-10-23 10:44:38'),
(13, 'reUV5m5KvV', '981686315672', 'PayPal', '30.00', '2.30', 1, '2019-10-24 05:01:42'),
(14, 'PCZ2IGnQgH', '981686315672', 'Stripe', '30.00', '2.30', 1, '2019-10-24 05:02:37'),
(15, 'YH09B1MI4V', '981686315672', 'Stripe', '10.00', '2.30', 1, '2019-10-24 21:17:36'),
(16, 'u0djenoyLM', '981686315672', 'Razorpay', '70.00', '2.30', 0, '2019-11-26 15:52:35'),
(17, 'm5qDjDAk5uushk', '981686315672', 'PayPal', '10.00', '2.50', 1, '2019-11-27 21:52:21'),
(18, 'rIbQwmM63lU2tY', '981686315672', 'Stripe', '10.00', '2.50', 1, '2019-11-28 14:32:48'),
(19, 'YWmBKGp1tOD6nU', '981686315672', 'Razorpay', '10.00', '2.50', 1, '2019-11-28 14:49:32'),
(20, 'VwSSdPMNSIeqrr', '981686315672', 'PayStack', '10.00', '2.50', 1, '2019-11-28 14:55:06'),
(21, 'ZrXLIN4z1yLUqg', '108278049269', 'Stripe', '100.00', '2.50', 1, '2019-11-30 17:34:37'),
(22, '7igoAr4ZGflksh', '981686315672', 'PayStack', '100.00', '2.50', 1, '2020-01-10 14:18:07'),
(23, 'eKbak3q2d5VkV5', '981686315672', 'PayStack', '100.00', '2.50', 1, '2020-01-11 14:26:20');

-- --------------------------------------------------------

--
-- Table structure for table `invite`
--

CREATE TABLE `invite` (
  `id` int(255) NOT NULL,
  `projectid` varchar(300) NOT NULL,
  `freelancerid` varchar(300) NOT NULL,
  `clientid` varchar(300) NOT NULL,
  `nid` varchar(300) NOT NULL,
  `action` tinyint(4) NOT NULL,
  `read_status` tinyint(4) NOT NULL,
  `date_declined` datetime NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invite`
--

INSERT INTO `invite` (`id`, `projectid`, `freelancerid`, `clientid`, `nid`, `action`, `read_status`, `date_declined`, `date_added`) VALUES
(1, 'e2qj4OYYIs', '199476311866', '188158648562', '18', 1, 1, '0000-00-00 00:00:00', '2019-11-21 10:38:02'),
(3, 'Wm0W6YvzLr', '715478889450', '431974897102', '22', 1, 1, '0000-00-00 00:00:00', '2019-11-21 10:38:02'),
(4, 'GhkalwKELF', '434155361070', '321267804911', '24', 3, 1, '0000-00-00 00:00:00', '2019-11-21 10:38:02'),
(5, 'GhkalwKELF', '233802410288', '321267804911', '26', 2, 1, '2019-11-21 10:42:02', '2019-11-21 10:38:02'),
(6, '44ndkrA0am', '753678237313', '108278049269', '28', 1, 1, '0000-00-00 00:00:00', '2019-11-21 10:38:02'),
(7, 'eUSPl8YeQh', '228145236254', '981686315672', '32', 1, 1, '0000-00-00 00:00:00', '2019-11-21 10:38:02'),
(8, 'bVbRUo36To', '434155361070', '296594131506', '65', 1, 1, '0000-00-00 00:00:00', '2019-11-21 10:38:02'),
(9, 'W6nOQzaagZ', '233802410288', '156958966286', '87', 1, 1, '0000-00-00 00:00:00', '2019-11-21 10:38:02'),
(10, 'iBVQfiepeG6qeV', '233802410288', '108278049269', '113', 1, 1, '2019-11-27 15:11:26', '2019-11-27 13:21:31'),
(11, 'iBVQfiepeG6qeV', '753678237313', '108278049269', '118', 2, 1, '2019-11-27 15:34:40', '2019-11-27 15:21:47');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(250) NOT NULL,
  `tracking` int(10) DEFAULT NULL,
  `job_id` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(250) NOT NULL,
  `service_id` int(250) NOT NULL,
  `subject` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `days` int(11) DEFAULT NULL,
  `nda` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `freelancer_id` int(250) NOT NULL,
  `review` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `material` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `layer_height` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `infil` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `fininshings` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `postage` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `shipping_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `shipping` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_shipping` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_f` float NOT NULL,
  `files` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(600) COLLATE utf8_unicode_ci NOT NULL,
  `approved` int(250) NOT NULL,
  `status` int(250) NOT NULL,
  `payment` int(250) NOT NULL,
  `quality_assurances` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `completed_date` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_date` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `received_date` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `tracking_number` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `extra` int(11) NOT NULL,
  `updated_at` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `tracking`, `job_id`, `user_id`, `service_id`, `subject`, `description`, `days`, `nda`, `freelancer_id`, `review`, `material`, `type`, `layer_height`, `infil`, `fininshings`, `color`, `postage`, `name`, `price`, `shipping_type`, `shipping`, `post_shipping`, `shipping_f`, `files`, `token`, `approved`, `status`, `payment`, `quality_assurances`, `completed_date`, `shipping_date`, `received_date`, `tracking_number`, `extra`, `updated_at`, `created_at`) VALUES
(1, NULL, '91611675294', 344, 1, 'cnc demostration', '<table class=\"w3-table-all notranslate\" style=\"box-sizing: inherit; width: 875px; border-width: 1px; border-style: solid; border-color: rgb(204, 204, 204); margin-top: 20px; margin-bottom: 20px; font-family: Verdana, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; background-color: rgb(255, 255, 255);\"><tbody style=\"box-sizing: inherit;\"><tr style=\"box-sizing: inherit; border-bottom: 1px solid rgb(221, 221, 221);\"><th style=\"box-sizing: inherit; padding: 8px 8px 8px 16px; vertical-align: top; width: 175px;\">Parameter</th><th style=\"box-sizing: inherit; padding: 8px; vertical-align: top; width: 699px;\">Description</th></tr><tr style=\"box-sizing: inherit; border-bottom: 1px solid rgb(221, 221, 221); background-color: rgb(241, 241, 241);\"><td style=\"box-sizing: inherit; padding: 8px 8px 8px 16px; vertical-align: top;\"><em style=\"box-sizing: inherit;\">object</em></td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">Required. Specifies a DateTime object returned by&nbsp;<a href=\"https://www.w3schools.com/php/func_date_date_create.asp\" style=\"box-sizing: inherit; color: inherit;\">date_create()</a></td></tr><tr style=\"box-sizing: inherit; border-bottom: 1px solid rgb(221, 221, 221);\"><td style=\"box-sizing: inherit; padding: 8px 8px 8px 16px; vertical-align: top;\"><em style=\"box-sizing: inherit;\">modify</em></td><td style=\"box-sizing: inherit; padding: 8px; vertical-align: top;\">Required. Specifies a date/time string</td></tr></tbody></table>', NULL, NULL, 334, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'Mr K', 100, '', 'HTN 584 JK', NULL, 10, '[\"1579511643sample3.jpg\"]', 'b56fb35f4dafdba78b63f8825fedecac', 0, 2, 0, '', '', '', '', '', 0, '2020-01-20 12:15:03', '2020-01-20 12:14:03'),
(2, NULL, '91614240460', 344, 1, 'test', '<p>fffffffffffffffffffffffff</p>', NULL, NULL, 334, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'lawrence bass', 6, '', '53, cluny rd', NULL, 15, '[]', '11c4c8fe439629959e2b473ff49695df', 0, 2, 0, '', '', '', '', '', 0, '2020-01-22 11:09:31', '2020-01-21 00:31:10'),
(3, NULL, '28434160692', 371, 7, 'TEST', '<p>vvv</p>', NULL, NULL, 372, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'vv', 120, '', 'vvvv', NULL, 5, '[]', 'a75c0c3efbd1f6f7311617e4e20cf60c', 0, 2, 0, '', '', '', '', '', 0, '2020-01-22 11:15:46', '2020-01-22 09:46:34'),
(4, NULL, '139027695752', 344, 1, 'Uploaded 3d Objects', '<p>This is testing of 3D objects</p>', NULL, NULL, 334, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'HQ1', 200, '', 'accc, no', NULL, 10, '[\"1579860157lotofcubes.obj\",\"1579860165multimesh.obj\",\"1579860170_1.png\"]', 'fb06a20c35b24e11dab11052407e565e', 0, 2, 0, '2020-01-24 16:25:38', '2020-01-25 15:12:19', '2020-01-25 14:05:57', '', 'AMDRASA65s165ss ', 0, '2020-01-24 14:30:39', '2020-01-24 13:02:59'),
(5, NULL, '61618281504', 344, 1, 'asa', '<p>sassa</p>', NULL, NULL, 334, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'acv', 10, '', 'assa', NULL, 1, '[\"1579955932lotofcubes.obj\"]', 'e100b6827e4a0ac568377c27b165e975', 0, 10, 0, '', '', '', '', '', 0, '2020-01-25 15:45:13', '2020-01-25 15:38:56'),
(6, NULL, '26859262472', 344, 1, 'aas', '<p>sasa</p>', NULL, NULL, 334, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'dsfsfd', 211, '', 'sdfsdf', NULL, 5, '[\"1579956613lotofcubes.obj\"]', 'a07552c7c9e7e811e86f71f489de73cd', 0, 2, 0, '2020-01-25 15:56:08', '2020-01-25 15:59:17', '2020-01-25 15:56:54', '', 'AMd54564', 0, '2020-01-25 15:51:23', '2020-01-25 15:50:16'),
(7, NULL, '83737730805', 344, 1, 'scs', '<p>scsc</p>', NULL, NULL, 334, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'cssc', 148, '', 'cssc', NULL, 7, '[\"1579957183lotofcubes.obj\"]', 'fe57aec6f86091d81ac2bf17cd610822', 0, 2, 0, '2020-01-25 16:07:20', '', '', '', '', 0, '2020-01-25 16:01:08', '2020-01-25 15:59:45'),
(8, NULL, '77425341539', 344, 1, 'pacca', '<p>saada</p>', NULL, NULL, 334, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'wffw', 3, '', 'fwfwfw', NULL, 1, '[]', '3c49236ce256cfa8056ea2966f26ec5d', 0, 2, 0, '', '', '', '', '', 0, '2020-01-27 11:47:35', '2020-01-27 10:10:11'),
(9, NULL, '96387008107', 344, 1, 'v', '<p>v</p>', NULL, NULL, 334, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'v', 1, '', 'v', NULL, 2, '[]', 'e19e6f6731adbfc2fab1499268e705ac', 0, 2, 0, '2020-02-02 11:20:47', '', '2020-02-02 11:24:18', '', 'tc78654433567777888', 0, '2020-01-27 11:51:32', '2020-01-27 11:48:07'),
(10, NULL, '91676879532', 344, 1, 'job testing', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</p>', NULL, NULL, 334, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'lawrence bass', 6, '', '33 Waterloo Rd, ,', NULL, 15, '[\"1580635772Capture9.PNG\"]', 'ffad4e3cdc7e4032a9e44fbea3d151e8', 0, 2, 0, '2020-02-03 22:18:03', '', '', '', '', 0, '2020-02-03 11:02:11', '2020-02-02 12:30:54'),
(11, NULL, '20549328761', 379, 1, 'test', '<p>sffffffffffffffffffffffffffffffffffffffffffffffffffff</p>', NULL, NULL, 334, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'dddddddddddddddddddddddddddddddddddddddd', 18.2, '', '33 Waterloo Rd, ,', NULL, 15, '[\"1580717593Capture10.PNG\"]', 'a0af2fd21cc84aff828046c0f0c77569', 0, 2, 0, '', '', '', '', '', 0, '2020-02-04 01:07:30', '2020-02-03 11:13:17'),
(12, NULL, '135963225210', 385, 2, 'This is testing ', '<p>This is a sample job&nbsp;</p><p><br></p><p>Just for testing purpose&nbsp;</p><p><br></p><p>I will update the same</p>', NULL, NULL, 335, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'bharat prajapat', 0, '', '213-b trade centor', NULL, 0, '[]', '75398616ec833be2808e759f6483a265', 0, 0, 0, '', '', '', '', '', 0, '2020-02-06 08:42:15', '2020-02-06 08:42:15'),
(13, NULL, '69570316596', 344, 8, 'fff', '<p>fff<br></p>', NULL, NULL, 343, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'fff', 0, '', 'fff', NULL, 0, '[]', '0b160e61b19358e92fa48966283b4056', 0, 0, 0, '', '', '', '', '', 0, '2020-02-08 09:32:39', '2020-02-08 09:32:39'),
(14, NULL, '153370928715', 344, 1, 'CRB', '<p>CRB</p>', NULL, NULL, 334, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'CRB', 200, '', 'CRB', NULL, 25, '[]', '54ef31fc2976860f55775d1b89a2d3e0', 0, 2, 0, '2020-02-08 09:51:33', '', '', '', '', 0, '2020-02-08 09:39:51', '2020-02-08 09:33:15'),
(15, NULL, '56926135044', 344, 1, 'test', '<p>test</p>', NULL, NULL, 334, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'lawrence bass', 6, '', '53, cluny rd', NULL, 15, '[]', 'e933450e53f000f7d0ff7d1394d3ff88', 0, 2, 0, '', '', '', '', '', 0, '2020-02-09 23:59:08', '2020-02-09 23:52:09'),
(16, NULL, '26882576187', 344, 2, 'AMNC', '<p>GGTA</p>', NULL, NULL, 335, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'AAA', 0, '', 'AAA', NULL, 0, '[\"1581328009mauijim-brand-logo.webp\"]', '42cdb7606431f35f447112abd181ce21', 0, 0, 0, '', '', '', '', '', 0, '2020-02-10 12:46:51', '2020-02-10 12:46:51'),
(17, NULL, '93298374892', 344, 8, 'acc', '<p>cacaca</p>', NULL, NULL, 343, NULL, NULL, '3DX', NULL, 'Grid: Strong 2D infill.', 'FDM', NULL, '', 'accaac', 0, '', 'cacacca', NULL, 0, '[\"1581328386sample3.jpg\"]', '8919f8f2bd2769130962b8f098de43e8', 0, 0, 0, '', '', '', '', '', 0, '2020-02-10 12:53:08', '2020-02-10 12:53:08'),
(18, NULL, '75907523616', 344, 2, 'test', '<p>jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj</p>', NULL, NULL, 335, NULL, '', '', '', NULL, '', '', '', 'lawrence', 0, '', '53, cluny rd', NULL, 0, '[]', 'ccae9f525e559b2ffd835cbd371e31fb', 0, 0, 0, '', '', '', '', '', 0, '2020-02-11 10:39:02', '2020-02-11 10:39:02'),
(19, NULL, '118804620975', 344, 2, 'PHP DEVELOPER', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</p>', NULL, NULL, 335, NULL, 'Iron', '3DX', '5mm', NULL, '3D Print', 'yellow', '', 'Lawrence', 0, '', '33 Waterloo Rd, ,', NULL, 0, '[\"15840616073-rings.png\"]', 'b27da73a8947f21e2e3489b5b14bed7c', 0, 0, 0, '', '', '', '', '', 0, '2020-03-13 04:06:53', '2020-03-13 04:06:53'),
(20, NULL, '95225596680', 344, 2, 'test', '<p>hello dsbddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd</p>', NULL, NULL, 335, NULL, '', '', '', NULL, '', '', '', 'test', 0, '', 'new zealand', NULL, 0, '[]', '2bd5ee40319a1c8ca805d24e03e6a4a3', 0, 0, 0, '', '', '', '', '', 0, '2020-04-17 06:14:38', '2020-04-17 06:14:38'),
(21, NULL, '28567698642', 344, 2, ',kkk', '<p>&nbsp; nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn</p>', NULL, NULL, 334, NULL, 'Iron', '3DX', '5mm', NULL, '3D Print', 'yellow', '', 'test', 6, '', '53, cluny rd', NULL, 15, '[]', 'e62283f38aae6dd1b79d3925784e3d92', 0, 2, 0, '', '', '', '', '', 0, '2020-04-17 06:36:05', '2020-04-17 06:32:49'),
(22, NULL, '82605774628', 399, 7, 'TEST Buy developer', '<p>TEST</p>', NULL, NULL, 372, NULL, 'PVC', '3DX', NULL, 'Grid: Strong 2D infill.', '3D Print', 'Silver', '', 'CLIENT A TEST', 300, '', '644 KHUHUIUI', NULL, 15, '[\"1588572557wallpapersden.com_k-league-of-legends-2020_1920x1080.jpg\",\"1588572568wallpapersden.com_k-league-of-legends-2020_1920x1080.jpg\",\"1588572574conductorDefault.PNG\"]', '1bc08339a86372aef5c6d5b51430e634', 0, 2, 0, '', '', '', '', '', 0, '2020-05-04 09:37:00', '2020-05-04 09:09:49'),
(23, NULL, '120742350336', 344, 2, 'test', '<p>cccccccccccccccccccccccccccccccccccc</p>', NULL, NULL, 334, NULL, '', '', '', NULL, '', '', '', 'test', 6, '', '53, cluny rd', NULL, 15, '[\"1588715082capture.PNG\"]', '4a950f194cdad2f36eb5fc41783e698c', 0, 2, 0, '2020-05-06 01:08:44', '', '2020-05-06 01:11:26', '', 'tc78654433567777888', 0, '2020-05-06 01:01:28', '2020-05-06 00:45:36'),
(24, NULL, '58782521230', 344, 2, 'job testing', '<p>sssssssssssssssssssssssssssssssssssssssssss</p>', NULL, NULL, 334, NULL, '', '', '', NULL, '', '', '', 'lawrence bass', 34, '', '33 Waterloo Rd, ,', NULL, 56, '[\"1588716786app-images.png\"]', '58cb2ee58150866ed9bdb283c4a99ca5', 0, 2, 0, '', '', '', '', '', 0, '2020-05-06 01:15:49', '2020-05-06 01:13:10'),
(25, NULL, '149341691788', 399, 7, 'TEST 49848', '<p>TEST 49848<br></p>', NULL, NULL, 372, NULL, 'PVC', '3DX', NULL, 'Grid: Strong 2D infill.', '3D Print', 'Silver', '', 'TEST 49848', 200, '', 'TEST 49848', NULL, 10, '[\"1588741399download.png\"]', 'eacaa2cb2ca094295a1413fc341603e8', 0, 2, 0, '', '', '', '', '', 0, '2020-05-06 08:43:27', '2020-05-06 08:03:22'),
(26, NULL, '54017699954', 399, 7, 'testr', 'gggr', NULL, NULL, 372, NULL, 'PVC', '3DX', NULL, 'Grid: Strong 2D infill.', '3D Print', 'Silver', '', 'SAA', 0, '', 'CCCC', NULL, 0, '[\"1588755877green.png\"]', '5aaf01970e602876f8757fd8e02e8b94', 0, 0, 0, '', '', '', '', '', 0, '2020-05-06 12:04:41', '2020-05-06 12:04:41'),
(27, NULL, '61964019234', 344, 2, 'job testing', 'DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD', NULL, NULL, 334, NULL, '', '', '', NULL, '', '', '', 'lawrence bass', 6, '', '33 Waterloo Rd, ,', NULL, 15, '[\"15888209964-circles.png\"]', '8f3c27da41b931653a188c6882602fea', 0, 2, 0, '', '', '', '', '', 0, '2020-05-07 06:28:49', '2020-05-07 06:10:06'),
(28, NULL, '138237379452', 399, 2, 'def5020088ab4e7ed182fa2b66d3c0362d704381e585ed62f8988bca8f1d7d870ee594d2db5504d722c92486430e4057f72d83ce05a1f7d1aa19225915cbeb94acd0cb88d0a3a1461ff67f7de98970d114892a47b4a04f', 'def5020082c81cce356db6a175ea21309c45e2fb12498e9cc73c2f99d8372bb631034afc10b3faacc1776dde135859b38027ce85c4f8adcb9dbccfeb1bfc050338f681d2f7dbdda2443d63351f24bb209e5d9e9dc2bc1c6575a4e15b2b06ff8aa7b4', NULL, NULL, 334, NULL, 'Iron', '3DX', '5mm', NULL, '3D Print', 'yellow', '', 'def502004fe17c90eff3b77d7825f3d19d6f7e094798938f55f78f738a7c7b5aafedcda3bb3325aa253f53d706a239feaf58b65ad500bd620c33b9b74b21456f6adf8577800d49a61e8d516c4678c83227dc104a7b6333b74c053fcb', 0, '', 'def502000a17a45054972ab134cad675fea5782d8cef1787debf4a95daceee37601a3563fd3acd333d4fd7155c64af1c1a6a11dcde786b5daf4b6f07debfcc101ead22ca5b4f437dd5b9341d62388a21d78c1061e4c7140b9b41e7c7', NULL, 0, '[\"1588935389green.png\"]', 'acbdcc129f02a7d84a8f95475b0a95b0', 0, 0, 0, '', '', '', '', '', 0, '2020-05-08 13:56:36', '2020-05-08 13:56:36'),
(29, NULL, '112814613975', 399, 7, 'def50200672643f300303a5576252732c57ee478c08865018b00501bb9caba133c379ebe035f7918fdfab7ea7e9799d329c8a3ddd62586158091ebd8bee85f46bacce0e6eb87ab99c5707fde9e2eb267c781ece71ed7609cb84f', 'def50200de538a8770690e39d2f4ff36df0428682901b3f71b1549fbcf2221e3aa3d443c4cb8f83a096d8fd5c762a665e11873fbde2097310fadec91dcc1fc25f5b69702847ec0425102ef9a19b563f409782dd30f0a92df97ddfce34397', NULL, NULL, 372, NULL, 'def5020063264bbfffa7bd765cecd39a2a6a5ea8a7183afb13a1c87288ccdb4789cccbf176f5adcaacc77a37ac292a933f0502fa43a0c78289687d1b927adb70cbd3f386699bc74dad387c8771e9856eb464957728320a', 'def50200ada76d3e6bfccd2a2efaa524b30db96d80149ce56dd02c89dec95404284afe6258b3a547dff11c87cced7d880e95c1a86829f78d2e3db7d5696682d901c61627baf8ec81029ed724c2b57c312f9818e70055f3', NULL, 'def502001d4d468d7e284e911dac03cf0418655abc487f1ab8c49c886513bc134a5b0f0ef544a66bcbc0ea787beed1bb423725293d305890a0e0798b3e325f33dd69796a41f54e82f8afcda701f33fcc82ad1580ebdae56c596887a8b9f23814badcc5fc65c9aea2e83977', 'def50200fc3b62002b2ba0cb3cf54e9d8d2f73e5d44c70b4bede7b1ee7f97b38f20bc49131aeb93ff1293bc53516071286292c2d89ad97d79d2f113817533c781aff8f69bbf6410e272b1a85b06d105e332375112bbcc5cfee76dbc3', 'def5020069a0cd39f4391b3eb7ce5d8b74287ece5c0b282e354c8852740110bd50c7e184954c6e1d5689e0618064c0f1e85fe606f8ffc707e1365e77580ce87b497517a4b630687ee69c1a1422273929add37038dd37f5d153cc', '', 'def50200e3f00fae8239358f5c5e508d491b2522b65f0dec45c2ee3b2e6ab675a5bee2bd9cacc8fe7cf9b213e87d98c8c26cc1fd85f1745bb4614d3eda60d520a980560cc36d45ace7fe68df4c452c5999506afa6430e0e98949db99', 200, '', 'def5020056d8ff67dd4e23268092ca9ebfa8377cc4e74b281521ff5551ce6f14304f550d7f260b648617c5c330c34ca166186e7163be6a235f95d80680db0625cfe475df05c97cc39bbb522550479d40cafb7fa5bdbe4fda759136f60128', NULL, 50, '[\"1588938037download.png\"]', 'bae6fb538ded5b6df8571ffb787b6b4c', 0, 2, 0, '', '', '', '', '', 0, '2020-05-08 15:46:04', '2020-05-08 14:43:45'),
(30, NULL, '54055619780', 399, 2, 'def502003075c34b7b18bd39860b5e598e993b1916839ba18ee55a7d1bb6df0a7a927d5fd739d13b14ece6faef9ecb1bb786460e044a3a8b5309b13f5e6ee3b6670db4aa882727f53326949f59f24a4ea16ff90345e88e7d11', 'def5020034bcdca36f51ce92bea7fd85cc7a84a7a15e3e77617372d8b08c43a72615bbf47fe59c49b56d1487bee03ec98ead5659cf19281aa47bfc915d40655dad03e94495bfce6e6c65509123c8fedfe9c653ce545221', NULL, '1589871170.jpg', 334, NULL, 'def502005e4d7d5da94f026837d1b1ff4369c85817bbbc7e4e7f3f254541c61298ca83fc0fb6cda28aece9fe325d5fe1cf971acc2373d2d9586f20b0bfbaba7b24fbe17c68346469cc73611d289a21c46f832731151aa741', 'def502005d3e4eaef0a1f3848b6d55559b2311648dd7d198e1b09a1abadef49eb589b2c908b17cce4aa4cbb35768625f0b4a2b5c3329534ce1919ba2fec393816240598740616fdfe67ce0a5dbc14e9356b67a0f316adc', 'def5020075df8ac8dbd57e26f7698cf40ec46d5beba53b8646033559ce1084a4b305c496656ff460a8cfc3df629aeac8c44e83b81658173bde360d693e6bd9d6109cb1aa02478a09fbb4cc41ca6f0194a049d81079b179', NULL, 'def5020007469979c45ece9ecce9abef0a2aea42ecc5e10f6592e4b129b74e4d3111957511f91ae7fd0ba99e3768d36a0b36a571fbefbeb9ab9673067eafc9dce85e606ae65c8fa32549d391010a5e0a910010514e47e134fcad1e39', 'def502008fe37d1dccbc7c82b234bf7f44398de5e830995f68d9abf35ae87a179ff10d26a5adf8dae2dc4d9e94291974b324e468fa31bb5e6594f7857908af02a7cf53630ea72e82e0c50acbc32286a9066550feb082857c03d0', '', 'def502002d289470ce337d68c2d92f49bd4671c811ccc63baf4982d86b6b571a891c3e98ff99a0db17a3d57d49e8ddb9aab0810753f9b37253c67c91894dfb56a5e5645759297c116f83e6e9378123ea9594dc2e87510ce082141864', 0, '', 'def50200178f61c447b22b21b83efc988efbf1d766085ec74eb0ee20e3cf6b23309844706da4f4112868a4784e092c9e735273a6889b8c849bfa516eb243f8d1c3f5ea8b59410d71d2eea7001167b0e36569068ef65d458e85b31ced', NULL, 0, '[\"1589871158blue.png\"]', '63d3bc1abf81fc3ebee9200967296cbe', 0, 0, 0, '', '', '', '', '', 0, '2020-05-19 09:52:50', '2020-05-19 09:52:50'),
(31, NULL, '106521409662', 399, 7, 'def50200f1766ea434d30766dd03d6e3e25801981c872f6766ae65509574ec479402f04d7293ff5817b9798eeb1ae9b457d41af69a05120b215a4db67428f4236051df80c48918694393a63c8306f68b2de0e8e94ef3a3', 'def502006f2955c9de8b24bd7d01c92bd673402ca0130b9fbf3dbd71fe6c827f74eab174d3b91e7fd3b69980a73d99a3c466dc1529ed063f976dcbded77b2d2f8cdb22c28be92743149372afae22af0a6d98133f5285b4ca2333eee784b0ab8c57', NULL, '1589871786.jpg', 372, NULL, 'def502004fe76087a8be93feabe9a37058868eb68d3a59835bd95a9b35e8921006052998b8444ba28e35c9f9115a0c20826e29d8dca1f5e1b9e14be64e1044ba335e85ba27d44bf015467015eef4ca9c3912efb33419dd', 'def50200625bde184775b9885824904ded705007bd8b8a8a220210869b63f957802b997b6fbc2c77777b4a7370ebfd09e9fa9c24d6b31fa9062603587d66c952c9188f3152e458d2b2d5f110831ff9f38c4e533138dcd9', NULL, 'def50200fe638237512c77fb0c291225901c5424d2b93caad9b5e23bb7a4fc9a6aa443c20cebfc39615ef6f743bde1e9daf00837a8fbf11319c76d6f391f5c7974ef4710315f6761a16d8a24b1bcca11a1e5fc04e143b924fe7470f1773e242d8b289d17f35ed6f214fdd3', 'def502004c1ce8debed2600d1632e5b17f1809545f54a622376d12fedda26a5a39f48b449e2435b7307332fea9999d9d76ea8101e01837c0a41f07c4c46b26fe796b3fc8fc58cbc0dc44aa9808bc3d1976bec105bf7b2c9378a64de0', 'def50200fe9370beaefb5989c4d42359caca5067818085ab8e8fb134f32dac5c25136ed3666549f0eef71ecdb10492c64bc9f88295f2d71f235e0bd7b5c257302a8c081940271a86e9841ae568325dee622b4a3c7665d5f745a0', '', 'def50200c417330b6b67838c149278a38ae9a1e3dfeb80371522df91c59f3e63b287d5ef42bc47191d0608d18ceb3c7361ca6a51ff99220fc8635aea78c70f063ebe862856f734b42779913b7e0a3a4a0cabb16f87e6d08f6d50a67a', 0, '', 'def502009721865c89825b4dba2b309347f3bd506ed1319a50c9126cc941ba600b0bfd290539211ada60faa2effe1f5e8e72820b62808ec7d8ad9ef80a7cb959c43c4148827818a7c423d65fbed1db6b63e20c003bb8bd62d697646f', NULL, 0, '[\"1589871776blue.png\"]', '5657a55de8d3356c0ca39c0d411f92a0', 0, 0, 0, '', '', '', '', '', 0, '2020-05-19 10:03:06', '2020-05-19 10:03:06'),
(32, NULL, '79493662850', 399, 7, 'def502002605f656ec64a7e0c3c86346b5daab26e8305e3153ee65e541c8b7f540fb10897fc374949c55a10868d0c7bbf1f581e63eca08a495c4974ae613a3cb13e902d0af5bcb75b32e4e4d5fcaccf816fd461940d00c035c59d5ac9bb7', 'def50200826da205753fd22fb5734cac97bd935c8bb6e9983764f9daaa2a4d67958c2ad9f3c0cb6c3583b8714b7b621d907b744489cd0de6f3ce199fae553c99baa7e3c1f2b514a0fb1f31f01a4ebf2bd02d643c2bcb46dde75d8519', NULL, '1589873257.jpg', 372, NULL, 'def50200cf99d12d5bfefb6eb37db46d0e24f76a6dcefaea2991b1fb4e2be4a27b9c2212f386cfa2c6d3b96d1bb48d0108fd5b4823bc87e5cdd1a1476dbd77d6ef7e6ea8c69a3e872297d9e42e42956c13936710bc7eb8', 'def5020092b8b5c939e8d56d70fa97970e3a01cde0c070c5affaba0e019a0301a3df87e5c0e5a09b35765350a3dd0928d9e4768baf0324bdf56843e36b0402ad3aa68c52e26fcee8d19ae14a83f4b144d07f550cec7362', NULL, 'def5020025d93e1385c38dcf4842870a63daac451fee92bf18dc39d8e73a8580b40a8c8498776e418b421ecc242fe765cdb7bc2e8659190c0cfa06974de12166acf012b24ef2571e4ae2d9067fb2261c59483828b075148187cc02d3f744d01a41826d29adfcf9a11a5bb0', 'def50200342388d37d2ef8eeaed4bf270da438e99479a918d760e4d8a833a64468147eccc37fa1d9d37743efc19666b8971638146328a368b1df032349986b149b83107c8f8d504cd69a2534c5a23ae0ef6baf7f201f19bd177700b9', 'def50200ad1ec3ff139967a71a411450d6faae3ace6b433268eea662e88b6d8df65108aabec988e6bf4ae0f5826ee6f66e4705cf8426af572bbaebab2f0ecf3a31baffe38ab5b1d9604ee4bdf1fbd0172b26bb343ad95e57f111', '', 'def5020047f7d1604b714378c6de46d412c08120127d51df91af2862e09fce88664ac4d513b985c3aaca1347c635d9b0b99fb0b182ecf024fba8606dc12ca9432efa46ce19762cd0e776b12d01b213da4d4b7f6daa70b65676c65a9e', 0, '', 'def50200db6a70605e1ff14081d3b2fc53ee378e10a00a4139319171cd8b82a0275fbc22e50877533c858ddd2c10f7f35773ffec9ad64191f434158a9d95e97b8126321f055de09cc51401ab3138c856acd78d74170a24d02bb2', NULL, 0, '[\"1589873208blue.png\"]', 'c6c365353b0b6f96bea6cb3fac46b7b8', 0, 0, 0, '', '', '', '', '', 0, '2020-05-19 10:27:37', '2020-05-19 10:27:37'),
(33, NULL, '46106604274', 399, 11, 'def50200793e89186953644ea02bba782b062c90b4b90b76ee01dbc4bd25446f62ec66f3103b434361ef1c5e26743b2632bbc520b29a5ec3217e299065b0c4815d330f8a8311c16ed46e2ad852a7607d67de00f981c1e263964f79ba7714', 'def50200393fb63b96fdf261870f6fe8453a3e95eedad09b72dbd5bbdb8f1861ed53a0f56ccfc663b4dc80ca77001ba50086258cda665df49989d2f593aeb256e3464da63b840585d73d92d3b52a65f8eb9ee00ba903695365b5', NULL, '1589882906.jpg', 354, NULL, 'def5020064e44f254577896b97488e01e7ae12caf0a0b6c6339ca04f8c7e9ebfc170b5b41da184f4479dc8e05f856298e0bf2f3562365289ca3b0c06d2cbd722ba81875f69d524e5f0797a74f42cc40c92874b6295a97c14d3', 'def502005c5db91a17bad52b33d995498772153467b790d0f69a32ed464341b5bcbd90db593f33a757c453ecd326f5f9005abc396c8cc3d61f1053f9a656214c7224f9511e5427fe988346d579a1a62e8a7f63a33789cd', 'def5020014a5e4475346ce4d5b8c86f09ce9787ab4f2bede64e08a8beb0d4bbafd32d266b4bec4c6d3471f99186fadbb68258e48d2d65967f40188ccec61b93ed6043183acced02c9ea8644b87ec9171e6a7cb941a1e3a', 'def50200eef15cfed597d5eafeaa4c27877e3f29a783db6500cf9a3f6307f59b940658832795ce5d01bb4ea9b5742d41a19ee143d21cac74e9f1808da92c8417db7619eb7716a82e5323d17fc1c0b5d21fcee10dbc353901b68bbbf4237e0d519763c7090aa458281bf7e5', 'def50200990c0f1c9c41e4509d115416d8e8e5f1ceca452c6a2fb5ccfd963fd53beb33e0890eba8fc91813c24b4bffee01627a23f341e257b150312ffe54795cd5f8576e3cb346f3e5f4cd3b3cf222ed2725bbd54a26a4', 'def502000c94468b8175bfc8ec6444f9d00f2f2874627c91a15e666eb037c609409b02c8b73ca75e3b445c6b4b37c97be0b8847d892aec127c026530d0b0c9139fbe6a043f8bb48248f86d3c2d24e34a2ac29ad2ad26aa25', 'def502005257479449c3559143fc1cd44aa0f3fc0bc2640800927afe6593cda9f61ff645adb030d5b8a27f33e2d7c8bd675a75446fb8bede658bc2aa8f4b03ee5a3bc7297e9d23a72dff882dd5afbc8185443ccb7ecee1e8663c571ed3f61b1ed1b72a76', 'def502005b3ca7fccf6306f26ea8bdfa6fe8f03091b1711ef11d1cbc5e4acb72ea9ff99166a0a7080d8540518fb3a59d19c19f3f220d2a6edab9d7ed35a3e59a04fa2edfec3bc9dea36586906a82b5eb550390dce82bcf761c821077', 20, '', 'def50200342b1c1058681398ab6eb5088cea49d44c22dbaa3413a7b8bf28aa8035688dae1257e51404a602637d0e01f40492407329107a1e8952744b7925f180d6dbdc31a99b885ef176cb58e5d8e6ac76c2024a3a63a0ff3bcb', 'def502009187248812888eb6439dab7c47d78a8467a898b238c1133891e10269713a893a02ee4dafa570a1ce7cb630b3ffd127e709d66c1bac81c3df8cb67f65a14e8f6b3dd4ecd9847269e468864f81a5f9f025dfce02eeffb1c1ea7fa90b882fdd00ea0f6a01', 10, '[\"1589882896conductorDefault.PNG\"]', 'dc915a3f0e39eea448c94c21ac507686', 0, 2, 0, '', '', '', '', '', 0, '2020-05-19 16:52:18', '2020-05-19 13:08:26'),
(34, NULL, '25439426976', 401, 2, 'def50200f2bbf65943f5801b5cb6e11ea38aa3f045de23149639da9d1d48c8d72ff257dc7f6d5f11061683fc71769453fbe1097d8a87b734265e2cfd65433d9d265b7f46b744837a1de33d0c1a8b794404cfcbb1a1abde43759c', 'def50200c4598eb97b6e4bd15ebf8314f4b4edc3966261911848c40335bcfd573e1976f88a0440a32bd7e142bdde39298108d2bdc239672915bccffdab66ad595c90ef089a349d231d282e349a6f51558b8f03d9b13624c4e7339a', NULL, '1589964186.jpg', 334, NULL, 'def50200c10482dd30384a10bca33f21a4f792fdf7f95f6ded49eba61d5775f5d45db6030f1052a9653e2fcf98a67e4d6a3a8a449cb7b663f2e9f56c5d8564fd34b1563955a06180435abc5c50f43789dcdb4f63402692a1', 'def502007fdba25bc6d125a45d09d04a7aeea706abb5d4a7c1d8df5af583aacde5e4a10d39fdf916d2155c9d5659c86f139b3fd0ff9b80c450f16cd9e1f1a10e86254217affe7391d9a15d74530d8e3c2d9ab3187b08ae', 'def50200554b3e11d22530f817483658bca2a2ea6242af32023257c8356a117b545d0c0635a2e25df5da8f4f80e3ad58ee8e984f87feccc7979f5fd29f9a87f0691c77ca93515c46ef3b8a01b16c46e9cdcdf3133ee9ea', NULL, 'def502000b6091abc843ee5e194c8ad0f5d446c3034cd802633b2dce18d292356d22609a40a2b93083d1ab03aa6f85a7e31dad92ca87758f1f4c325bfcaacd864a2e3d45ff386dd608d615aa00fbfb1a4ffd35df3ac16bde74da7f6d', 'def50200d42193bca1ee67d7466086af31899c2950520b7f71e7afd53c2b7c5bcb2ab222ff73f30f5145d251a0b7080852853f1b70adc23216e40a17b9b108f93a42066a2dd94d698c2bc17a158a4f896e49440d994aca77a2fe', NULL, 'def50200eefeff1b95dd9265314dd216510e01cfeb4ee4cc9806e6d37f3624afdbcf7ca010645af243d8de8b7065088c0d8b00f84fa8a0310bd29c571a179722f947e50f007e24ddc5062918329526c10166c81adf79c0cf3d795748df439a', 30, '', 'def502002ba6cffdc773447cc3f6a0a69e206dea6f0b94aa3be5ac8453076e2ea4f60dc2db40b49e85213be61125bbffda8d65d287fc6437d5b3687832b765d35c2e4eb9b75c9771f9c77917c1de4182d13d46caadbaab1d6da3d342', 'def50200c62184d07203d15e67b2b470de164669bf5aa64bfaedbc429852a015d965a01c7dd672a40a8afd11fc0cfef6765b933209b63a540744e342c34dd879f387aaee805ad01b2902f17c8f525224691c2c1a31a1ccf1dccb6d42ad04448d84ce', 10, '[\"1589964176blue.png\"]', '5673ea15d395d74187c754770b19f4d4', 0, 9, 0, '2020-05-20 12:17:12', '2020-05-20 14:15:43', '2020-05-20 12:19:22', '', '548798555', 0, '2020-05-20 12:14:43', '2020-05-20 11:43:06'),
(35, NULL, '23849616540', 401, 2, 'def502008900d9076f8ee3215a31dda2473f8fa8b1c65e097e3c67ac44a6e6b9c07fb82c7370e9d88ea723e0f6bb51becb720a410c58666f500713292ba0913678d9aeec2a43613d7fbe79433fcc60a387a4c48b6cd34a2a', 'def50200e543464cf2bef64ceab86f36f5411e8b51a0c3d4f4dfd5bbc97359d7a115c661cb8b1172f481e8cb1d642c2ffb1f4247a9bb0655aa3e610aa7ce2856b26cb33a2212f01f6e488228b809efe7ff9ed193963eeae221135e9b25', NULL, '1589974436.jpg', 334, 'def50200662e6457a7a8ea4fae66fe4c2f0f35220b144a9bb2ca94f84745af71104c5c67e0e44387b33d0ec23441d7bf3a24abfcafbdb26d74a72834154997d2dc9620a2da6a1c388423c1aba2c4271d4fa2d581cd17f63839b66c9586', 'def50200c6b2f0830fc969a0d1b5809933027fefcd43a472959275c288a151b48f8869cdee1a82582889f01c446f3c1b66afd1629f50c321df00a523a15013af374a32ea2a5e4127ebbfddc70171db876a8938fefe70c856', 'def5020007453f1ffe6c7aec49dde12f286f8b3e41ea0e89e321a508a735777edf50a205a2b910b282817a23a044b740eecf33c672e8325a121e4081271ad2b61cd407e29a01e49414115e78ee01d3fe5fc1cd9e63f818', 'def5020024d4ea21b6acd3d5adcb6f43041015bbf480f717a0707479911e835b956585137431f755dc9759ecb74efee15283a1fe1ee1b45ec83ac28cd97a8b6d2034d8107832c8a98ec0b9e49c72f4c3a4914e8918ba09', NULL, 'def502005b0b9bec4a388ccefb52a841aabaed085c21d31c42ad7dd58f8c5f8a6f773b38c44ffddc13a16b0eb82c8977fe0099877194c66be19853c87de9bb5abc098c31a0df01c1295ff1bf86c78ed8d806ef1fedf80997ebc743fa', 'def50200fe878bce19afc7d211f3d23a9ac4bb339e44c06bc611b6e7bd7b226e240b8125f6083d142390c9e0cf481e613b0b55ee2638da7002060388cc76b082cdad7bd2ca5d6699b1a2cb60a82b097eaa483b250f08c5eee0d8', NULL, 'def50200ea87e41f204e0fadbb56d3114fa130bc99b6171e64c65fdd40ae28d368d3c870b4dd74bb0b8b4c497f8eb6769ea25f3eb28dad51a73778e8beb7fb1c676ebab472d5f34ed2d64159641da74caf0ccdd884846cfbbf572e464d855a', 10, '', 'def50200c54eaa3621f2721b3da682f9a5edfb4316a8719989e3e931b56201738f548d4d9c33467daaa244ed03a2386e7d854c52d33ad5ae873af43eab16cd7788935704d0c99f8eb043bdd212450d92fccdd52009bc753f', 'def50200982b7076b345a1043fabcae1733e430d929f510fcbdd87d91c9fc08438bc8aa5407108ffef95405c42e8a0623a29e07bbfe9f58c4a563dda973571b72b8781f87f579e2cd6f6a0d89a614bb22f570c74f898be86', 5, '[\"1589974427blue.png\"]', 'c9e74c56ac986e60776f08ebd78adf35', 0, 9, 0, '2020-05-20 14:36:35', '2020-05-20 14:37:08', '2020-05-20 14:36:47', '', 'EZ2000000002', 0, '2020-05-20 14:35:18', '2020-05-20 14:33:56'),
(37, NULL, '39752811275', 344, 2, 'def50200312b456dfbb5c1aa996d578655a3f33db91fb20d2fbebc902439f106f900c74dcaa8ac141bfe04ba5ede1926c096522bbf21f45ed59457f88685ae07d9aaa1b5c9e17ae2cd25638f98792631a061f07a46007acc', 'def5020003419c993a741de845ecdc7afbe1501ba6d9080d81a9cdcff15f51dacaaeb0cca755e9d32b783e3136fca0dfa0071097b479446aa18d5c81191180e65351aa6c8d2801938dd090890ba5b63813670ad7053b267e31a7662589cfb66ddb5b7888a5d79252', NULL, '1590112451.jpg', 334, NULL, 'def50200fc39eef20f9fe7b27bc0a04f7ed500c60b638c79eda5b3697a91c126012ba2f9686d2db22867efc052a36b6f0e4e85b4c006854f20042b1c2cec19e32bc4e167f65000f9bef675d7230d10ee84e79b40c28127ab9c', 'def50200f1aa1df08930663d18bf8ac669824aa0bc0407f84f345dcea089fd1d39550979974f8cad406e97bda8a0be60ae989a59cd3f12e0ed032e49e1793f4ebeff472e05d859ece3c3dcbe7efeedccc184653f03a3a3', 'def50200cb99919f531a4fde4a1e7c704aac711a42d3b4288ca383137fbef5942939af1e36ac6eb9af04f856f514999886f2510814864c9277e75c97ec5e206db9cd2bb6a3cb7d0d81ae0674e2005068a3f163c9', NULL, 'def502006da56a6b1277341faab7f4fdda8851c7e94c789e19a9b7cf65fab2375179c0f52ad9011eca1ca3fbb76a7347be0928b141b64627f1f26b2e3b1d6b844334ca92ffa200c90aaa19384d5f6edda102b836', 'def5020078b22758b9f68fae0771eee6a7e35ff42cdafdc1f92917e02202e5c8f24296d2cdee7b4582be5f548c7571ed2c7e866ee6d4820bc60a83163def7154c8b70fe4f619239df750c7ae8330d39f547b1499', NULL, 'def50200db5eb6fefdf51652aa9affae38d1bedf75afc4de0a4796c8fe87cef227b37bc1390f8bc8c7619e6c301f364ba9460db0f3af0ddad10a1b25753af1472e95b3cdf73b35424232f13fb63499530362d389977552f78190fbfe5c2bc7ea8177', 6, '', 'def5020091caf54b8fc2f38d8951a028bffdfa70756e71736d9c236620c67e0c4e29463e01945169bb3a8ec540e47a4d8e7a68c1b9af69ed19cb8d1efc313e46518e96fcf6db7a5c415b71066ce61c1424fa1e4773945fc0fe5411cd70c310c91ebd40e348abe983650f152e86a98a980df7c02033c955a5a2515662', 'def502007c89fe5c008fe6069b330d6377900e792926139120abc3c591efec3d7a7db2a2d0550552e236e638e68a5b358ef7638d73b333be02b53f87a78446ef172e9e675b05f9f65c75d65c175f06a2b79987a2d465', 15, '[]', '615831dd1e6fd7a6fab673555bbe9ee1', 0, 9, 0, '2020-05-22 05:01:24', '2020-05-22 06:21:17', '2020-05-22 05:07:36', '', 'tc78654433567777888', 0, '2020-05-22 04:56:36', '2020-05-22 04:54:11'),
(38, NULL, '39759022225', 407, 2, 'def50200f22931afe97d089700f64ed70f1482a81781adc39e21f3ac780d5363880cca49119449da5a0b342707b213a6bbad2fc883bc2c30fe1701b9911e27508b5bcb0950987eede8b154a3b4d39797acc8d62d6d5bce0effd5ef4a', 'def50200bbb92f2ff4e44bda756055c636a5007e213a8d24e766e8aae615deb55e391e5d783a169242695079bc52a1937d477a32e526a20742bd89a60d6eef41f635308973effe1caf1f78464aeff4138c158450febd8a7e25', NULL, '1590360889.jpg', 334, 'def502005c69bd6fc6839a889c6172c69f0f0a2904cbbb165603b7c7ac489b696c4f3faf937b7e88a3df46766cd6d90aef1f80a80c59b94838d14920d2dfe4b15bc2bde0ead37a1c510f9f5899f39cbdfb3c2ec256f88f9653635b', 'def502000f8194c05b9cb0e17ed7bb5b33c82246671b99eb684ed8cf2cdf7a45055da7bdedfb1d2648655e9e8af15447545963db3df1c0c9cec3a8d5a344ff4494ad6ebaa42fd8f44a844ba7cf0fdf5fd5af9d1928e521dfd2b716', 'def50200c0e426e20b49c7b09c7aafcf04b5a7471032e8420dd9df6583fd780a48286a329e133055fcd2bfea41d2359cdb49be998698b9fbfdf272bedc062641985da0daa3bd3fb14b96086f51c739ecb19dbb870d1a46', 'def50200e75cfecfd1d4c2f6a1af73fdb8c295cc884ab9e7367e43ed2833af9a745dabeffd2ace69769fb6a40c8860b6bd1f5d44053a42a3a157a186b174c1f052fc6e8552653270df37770d133d23cdcee21933fba5cc', NULL, 'def50200407dfa80e1fe26a06bf0d55d4fa7198cb831c265c04f637923131d3eed7802a03c3d6fabb4a1b069bf4b21bd1caac9fa38667f8fbf6defb3dbe9144ac5171c7dfa346d1b97c1c8330af034f3c7fd8fc7c31fbdf074662772', 'def50200916dffe38ffd313ba04b299d56175814511c50c237775bd2a2371b0c3a54f7957c29a73c353f17077c123290152fe6f7ea1e49a752d8e016d77c716b4da5c70333fa7a09a65eb54f8975c6bd7320e91a', NULL, 'def50200e46b8cc4e109ba389dd1003dc4130557857163bf3c8057a9ceedbe2f7fe4a5def7be65c9a71b3ec3ddba8bcfd5d579fe5a0dfa89149f52c8049bc67674b7cc0182f677f73f5241ec72d6cc40b21b16a88e0ca31a', 600, '', 'def50200075730662c7c73fb249b5e4e98b2e70aa9ae65b3a803be301094251a9c6072ff89d9ea4240d3227522e8c8e1ee2bf215fb9bd0aa2a82a3eaf47b1e23086289283c040e0bec4edeb575a4314b651179aa4acdf141584426eb716b839024fb4bd4a741e5dbade26e08284435ab362d8557458f54b8d15e441cc6c642d5ca', 'def50200fbf9210b62f2de5ada1c5e9f20ab41a67acd32b4c15b7f0cce46ba44ec065d331ac122a4f81cda9af2466577261ead1ee42b9c27c445adbd173bcc9dd54e342dfd65fa8c4a4de20948fe065973f5d7665e7f2f7e6ee72c', 100, '[\"1590360794roboto (1).png\"]', '0bfe29fb77240408bfc851be92f4eddc', 0, 4, 0, '2020-05-25 03:00:56', '2020-05-25 03:58:49', '2020-05-26 09:56:41', '', 'EA522769831CN', 0, '2020-05-25 02:12:39', '2020-05-25 01:54:49'),
(39, NULL, '127232637120', 344, 2, 'def50200c459789c5312d4603fd6be451d8b610cc2c0c703d48be9269605c02dd993bff940760ea35020e24b0f14d12882d6ca790914547464b968c65ebfc2185955e7977afd0a1c9534388211595de6935cab25e0accfb942d83e169f96a61a', 'def50200049938c84a403a512e35678648c373319f82d8021af1eb588718659f0b73480b7f265de075a536b653b4cfbfef9edcd606a405886fefb50fc8e591d8684507e0433e8610820a39aade3bb369c17a804e6f3c3306a7aed64fe9', 15, '1590407964.jpg', 334, NULL, 'def50200a24922c50f7d310c5c671eab96fe383c5cdee02e891b47e7a45cbcb2e2a8c226de8db5058da39783287e6f638550e8c3bf8cd625b38fbe6a2f47e17c2409ce1177f716e97ac119fa4a5d5426970c1e948b02b1b16a', 'def502009c838de455f0105216e12efbf63bed491dc097bfced345834eb99350c26bf4ec08c0978912836fbf86f2507feeb541519007fda92f3d08317bfaf1f1958db9276126774b512a7760f7821b8628e4655d96cdec', 'def50200c869db9e7b99d36aa3ac670de358afa44ba048870b8570475910dd6f5d10212a7c39a734dfff63447e75125092e392d286b7b6b202c976ac8b7d3ab980f85915d9ee32feffc130bca774ac225891b8ed347d32', NULL, 'def50200014b14c532493353a4040342747080aa4b30b5b8dc490e5fc3d924d4838e845d8b4d3569027d2c64ad400664df3f9520fe317e65de4d4f57b4b2e3079ae8ce373ffe110d4c7358026cdd74035db18622966d3e3de5a70f13', 'def5020014a50bef43a140d52f90f69a1650fb287e54b796ec5df3b35062204e3985fb7a3908a2c20aea32e8eed11e6f78f86f831a4c8edd2cc2d2ee6c634841d9091cae4ac668a29b95477276c36ea5e61b568f48e4c36e266d', NULL, 'def502009eb40d96338e179d05700fdb9afe709d1af5fb1ae536fa5264d33521619e35b82eef92c2f27cd03179f5757a3389e58d0a899d049f67f9bbae8b099032454308f6643fd86cc0d07eac97c7ccf38af24fd10ca67879ff91177590a6c99d8f', 22, '', 'def50200de2515e89d7f4cf18c366ca48e986bee55f318ee685bf3629c1c01a42d9fb2d26dfce6fb772409d6aedad83305711b05854b82bb57a0cc2c9ed277b90b955500625e6883a30c9bf4e0557deb7d83ce7a0435987ccc', 'def50200310f669c36c32061f1bd751baa0fcd20ac450324b96fdd70f990a79a2073c84eb7f2c632935e8f671a2f417209d4c05191558ce5f83915d6d43967b2249336591778aa0da9828985805b0d2c5fb150f2e8971133ccd5bfa38abbf9827e5b3e4dc14f55', 6, '[\"1590407956download.png\"]', 'fce61019a4147bdc432145a248cd08b4', 0, 1, 0, '', '', '', '', '', 0, '2020-05-25 15:01:39', '2020-05-25 14:59:24'),
(40, NULL, '39760305500', 344, 2, 'def50200a0a424e4cf667e5a82596df499504da84aa662c624f0683738569e22d4d8e9b95267c81c1412fd56edd01895ffa440de50703b2d487a7a060f919f71e20ad994f9e3fdb44a0961237124fa1efd97d3293be21c31', 'def50200979d07bbf05f3ee9ee71da2b3eba15c759742ba5b0b9f47a5b4b52e251ca887b0d703bfd4db01e288711c7ad4ec0001b19375084e6c5ce7f567865b2c82b56d28e419968b1c3a20dbb763bcdfa7cfe002392def7c0', NULL, '1590412220.jpg', 334, NULL, 'def50200414a14c4131e300fe532db09cf08985b6821f5150be1bb67ec9b5e47f5b1de9dd74b031d936c1f318c6d467e51f22c28785cc15c899f888b6d41633be844b3bf1608dd0a4715e836ae6b0cc30d670e8a11096aef36', 'def502006bfeeda083d89ceb2c48128213bcdb3fab5e46804cdd6d73d494787fedd4a53ec5b70f4e958a76b5898b6425ceee5b8e87849d530f987a0ec857752fdcd63b45a25a7c007fbe40872ec486e1e25ad39a6665e6', 'def50200bf2976d43a9c2fb30522703c9f107f0d80a807fb1262f3f5e30ee345fc65bdcb389f85c6f39061ef673317f9279efe6126d41540fdf412df8c63614bd68cfa1b81beab18b974400792b5e49ce003d32f15a6cf', NULL, 'def502009fdfde21574b58357c748381e5f7a11b1116966c74c156c4d3bb02c1a0e3ce7ed5ec02005af420768ca19cda6e5b9b903489d6ebef9d8824052369cf711ba38bfcb8223223b9a254902a516aebbf5f303e5db5a5d482374b', 'def502001b1e59119f65df1692edb9aeda80fa9c1d3a994ff15cdf2da617eb4b77b7b6cfd228c62287443e73d265f6a7c670793936653444a82cac7c6a8c3fcb123a61dccf87a46992d13852db0be4f66e17b8e9f8d4ecbcca12', NULL, 'def5020038725872dba508f4ad3b5e45508dcf49ea86a93c8982831fc07e009ffdb7b4006657f3e1774e1328168894b7b3bd37eee75f3da840f248c55e0b142b1bed4ac2b5c219751f3204f9354d5b15cf8e335ec2e974f46078195ef91ec2be1627', 0, 'Express Shipping , Slow Boat Shipping', 'def50200c5f27445d6d52f413155e6b0102333f9e77eb3baf229b5ae6f731dccbbe369eacd30d542636c7d8ac46b57a74828ddc1c6675e6fac94858869b3d18d687c68febbe22008185ebda68fa6f951ef8c5be37e087480b18258162e2cf4677f27f8ab506f431aa7d08d03ab4c', 'def502002fc429a45d166cba660b659bf4f3310ed9d35ade3062527e6d6613f645d462e18eb0d64c128c676f193fee0e2bf3224700c444e2c85e29acf82d6f73043df760ec5ce0db2ab48fdcbf5ff24aae456f1f', 0, '[\"1590412212selfie.png\"]', 'ac5c419f1b96e1b146b91be1560678cd', 0, 0, 0, '', '', '', '', '', 0, '2020-05-25 16:10:20', '2020-05-25 16:10:20'),
(41, NULL, '55665631385', 344, 2, 'def50200fc25798053f798a1b4a5f256f8c8d943bc1cd9ddedaef95d935f15e18655a166dd988f709f84b61fbf57712724854444316c36874a6959fc7e314d0572dbbbd75c8d4f7382a89d9f5d18c35c892e5c483c2281', 'def50200dcdba620906561cafd68ddef0fb89ed89002d59c175f0bc87302fa9c2e6019661713e904526949a6e81fa2feb88d4500fdeab491c6d90419e3366b4cf0d35cc09174b6847a69b0192b2c2693ad9235f1cf23fe3b', 5, '1590446611.jpg', 334, NULL, 'def502008c4b063fd631f2c6fc1c82d64139be7a6e9400d80a2a5a97f714e25c1a402cf857198cdfe7862b9206dcd5346dade1b45d54ced058538faa2ea3620d040c5308bad686fcd970e1b2a8208736f3fd789d', 'def50200c7847c780f4fe1dd2133b59a164110354547dd34daeead65e7f9edfb5f97c8eb81fa9f8e4c98442518e94dd49906f35fbaa9bd7e076bba7447e8973c54527bba9e9de93cb0d0dc7f4f1846d0ff956006', 'def502007a8c0f8a37182e71a1a3eb6a97d80803fae4a9a7c766d971af2ca94bc44d7793c8f6b3768ccbca5aa1c97d421428d2b2a67e82e2ad1ff824553612f5bad47462fbc135a89353681a3318ad4496800ccd', NULL, 'def50200dfc3ea038649cfaadce4708f7283a7b9eece9ce457d433b87c18851ab72af7fc13e8bbe266acd73f564b3c5d24a073b6df98e8bae4394f9549223bec01cbf9d727e07b8b7c3260aeaab688361662d17c', 'def5020061d97e80fa38a154f4c39bb145842d467b1a74e8c5f091d83e9643f29ab0ba3f1b0588f4f5796784fb233dda2964d5081303058df06682172233a0e193dab8e6f8a772c1d06d486a57ec0666604177e5', NULL, 'def50200f78150b53da7715ff9769386d54a856f0f4ac56bc460660405cbccd1c98cb8a8e2f6740ec928cb6ed8b2e6bd177ed4f5537d578d428a545c96bd2af3bf99705cb09b61571cf0400805c0d4c17b7407c3c411690311c43f5b191c3e5508c6', 6, 'Express Shipping , Slow Boat Shipping', 'def50200acfefc0e243c6254496b52887a848cbcf5628ce3e4c4f4eaeda6a38711508e00ff5a668432f74d56cd769156e4b71d3cd71054f70b4e6b72ac8e6573c9c18e7a0864d243234d708476b416128d03e34122e5da4f4693ea347fc35a7a7acb303f1c4065f37f23350d574bcb00a8521334eb0e09f406d38ece', 'def50200111f1b7bfbae3b9ebccf85dc87d633e0a326f3a5ea604050c2392bf82f73d09e7933ce466df66e3b451b84846592c7da24684ca04fe369433c65fdba71cd9d5b6402e34502cfecc0a2083181e882524e', 5, '[]', 'f6b53ec81c0099c876bf41907c756fea', 0, 1, 0, '', '', '', '', '', 0, '2020-05-26 02:15:26', '2020-05-26 01:43:31'),
(42, NULL, '103380985955', 344, 2, 'def50200fc6660d46c03850201f66ad93a618a8c90cd8e4cda13763f077c88b4c0bc88a3d8f13c6c9f9e61ee4a9d87844061dbc2059947e5a948f0bab093a727c0241f27471644fb0a969a67fa576c6728ca9cdf13280a78', 'def50200c70b2aa52552d2837357512010830b9ebb53363b45b3380927ee77217984e48e8204e5679f489f4d179422b749b9fd288941b3b487ce56f38bca690fadd2a16a20f8bc6f80749f36e30ea994962a82e4a6d4146f', 7, '1590476707.jpg', 334, 'def50200d6c9e1611d1c2f9d6a5c9c258caea682437c2aa34f50fc800bbb00812fab3c4ea070b6e487559846cc93ab0c177ac7b27956863bf6d8f8c27b374827142988cce3864e0449b56e4c548c9b198efba77ff1f8476b9be24152ca', 'def502003aea5193914579505407be729d34c92af368478bbe7a3e5ad53263059bb0d5d580131985bd946263fc79ee4d4c529f3f4d9ee14d9f141b2bb36c97ed6cf56225352add9978330fabdae4ad68b578c6042dab3d32', 'def502002de8b3e51cc8448e373e7ca98065e8cabd8995c503cac075ea56181f0dfa85a3a78a8d8b395fd1ba69eec36092bc56cb6f17685175e7915ccd4267f0b29a5a4ea304173870e8c2b8c612dda9bb64912dcbc631', 'def5020069713da64ec5ca8b99eb1a2434b16cc014692293b8895af03c4c925fcb1515a9df013853be9703179b584a788eecc37ee07d33843127c6b8eeabf06521aaa01a49368be993f71bc2362f95efe6b8a024d1b8bb', NULL, 'def50200dbda5c5dcb97b0485f5cddb33d0d7320eac476cc969c760e134b34ab79e94a76d27ddbb3d6208893a197df1179de4090a4bdf1c58ba5125c047f9e1c5fd1ce2e6f3fdcb327978dfdb01933f5a0af67292556880141afa4ed', 'def5020033f7e9189eb66536673e7c9fe499f979f8a1720c929fe7395cc756e914032348a8104147434b3210f8b0415859f1959f91317ef2051a1638826e112d9335ce7bdbae6b3019eb018d9a1768d6481993ffb62de6d7c6f3', NULL, 'def50200ebb2a2d6e8a054669d2e2eff3279f3ff3092718fe0328ccff0da824cf333a12604d5c2d6309b069520af5a7e9afe45c7464d283af9a414f207c83ba955bfd089bfbc14741fedffcc57a6633ef88e536eb1390ca959907c0973147c4a122f', 10, 'Express Shipping', 'def502007ba8e8a3439e724737678c348f45060c2a9d024b86c7d8e6b897d855cb69bea9475fafb973b416056ba33bc2e39957025f18479ffe6168657de8a5fcff2d78f9c91f4e1db71513fb6b5a0c6578d95874f1d814347220cfeb2d80907a2a7d7ab360c9e169c77631b3e37e49240cfcd14896e820e250a97f367fb7eff7653e0bfbcffc7f94109a', 'def50200b2f90e2e37be3dd234af90576ec2ede91dc888f034f3932086d9b4b76e9bc92022f8dc20364379f28f3fc55bbc294aa5ad925fd5c7bce33e11d297bffbed602f12774255f167635eb80abaaefac7eb3e', 20, '[\"1590476417hongkong1081704.jpg\"]', '209204b987fc3d79767e54c534370a24', 0, 9, 0, '2020-05-26 10:25:01', '2020-05-26 10:33:08', '2020-05-26 10:28:57', '', 'TRKLIHIOHIIHIOC', 0, '2020-05-26 10:16:39', '2020-05-26 10:05:07'),
(43, NULL, '19092736272', 407, 2, 'def502003f975d7bbd121ab038974d7a754464f62b20cb44520d6172b15909762cd26664aa02013352179917148a64c441caaee1fc4e63c779da769b42a1f7258938bdbb7dee55a1f5ab0386e15d2c8c100bf969fe9154e6', 'def5020054bfb275bff7a55c3ec61541d617dc7ebbabcbe7a08a3872931ae08a312be432b0b02ecb4ace48c89611fec865dfac261dda8dd53408da1bc242911957018d5b8d746a4532a96bb544c60c41c608d544a34b14aa74a6927964e160', 5, '1591061356.jpg', 334, 'def50200dadbb337f1a3cb9c82df135a58569c0d43c682818bf13e7862656e6fd4e9832db3ebe563bf13c28f260b91060935f9641331e43fdce819c7d1a385e462ce2076d0e8ffe635152a6ce1605fbd6d191e4cd272eee9186b3f1f73e32f', 'def502007a8db02bf502140c12ce33ad95eb0eaa4f68a5dd5fce228bbd096d8f28ca4a5101e73eea4f0d0918af8ca01865f18b4bad60ce453f9345d575d09a1918d740e7e5ca7cbe27dfb5f251877b2c1e2823368406b87b', 'def502007de718853236ced841665b19c041852c2105c10797342aeda95dffebc9b324048ecb40bc3ce6f4e0cba1f501db58c5d4df5ecc1f412f3785245cb64f107f10f9a9b41fb02d5f69af8356a3707406753d41da99', 'def50200278f6403bdeb7211f0e503b28d060c588584a4f573d187c8c198158752bc7e8785c5fe64fae8135466c1bfdb57ebab670db0eadd39028c091c24001159e09e5feb59ffa2a26971379ce40e4b1fc78194', NULL, 'def50200e7f27a786cff7d2a9e9ae2edfec7166c8b0ff44a4d1dd0ad1eb446a069267b7fed5cfa949bc1b00fb182b318c0e3f91c64071fc76355a5cee064436634ae78335d5fc6ed01239b6c48609471842eaa06', 'def50200ad93495350fb2e458af5f315e04a91f46279df57c26de42ef319e18c6a1f85293052f1ce28e483231340c9607a80e28c7a44f6e16775c7d975cbef480ed40c74fd248b1d1f9e9da50175ee4073b85816', NULL, 'def50200fe91bc8634d3b61088ec0320b107532f8bc9dddf69a09814cd53dd86959da86d1625a72660b99e4c1253e9b725c9009a0e689b27e6f57b17211dc7bface9d1dacfeb80fcf8d37b9b4b43145c1208bd83cad35916', 6, 'Express Shipping , Slow Boat Shipping', 'def5020091ed54c6055d5ba432e66e61cc5707aef4e83230660a2a684204b30b116aac34885ce257fb274501a09e34dd084507315b420a8cf0b828fe2bec8bd2e9b7daa0d9511263162f616b9b38683fa8f1678a4cce827d668a0167178fafdae29acd931209b3ca07aee29a49a878f5eeedf6dcaa60a2f7d8c44f35ecc15e580a', 'def502001fe44b8ac21f7b81b0842b0d57a1d59e5c2ce9e2d8e42db49c0e05cd31c105f348a34252205e3a3a36da26a43d5dc9ee8d8d2ef1c9683cf49943d8ee980acd325581fabe840b65010c8f5838d90f147d', 15, '[\"15910612754-circle--new.png\"]', 'bc027d0cb08e3c913c7d1af01034d940', 0, 9, 0, '2020-06-02 04:50:20', '2020-07-01 02:22:42', '2020-06-02 05:14:09', '', 'EA522769831CN', 0, '2020-06-02 04:32:16', '2020-06-02 04:29:16'),
(44, NULL, '119433028200', 407, 2, 'def50200db181d144c8702cb1f5a08252180013f06afeb7f227a69589afc2b6f638027f5ab535d954ccbd74f02183b85bb9c0cb60449bddaa7d6c8a969b3b6a41b94e40950470099b1ce04ae8e4e910a938e738874da87ad6df492204ea93b', 'def502003bb3485be4a394ca4251ee38e62c5bc5ead002ebefc7bb09a3da87f79cf97eff2504b8dc1a9d5b7749e5f9c0abcbd278e7748944314197da930c9385929df2ae0b93198685d57b3e89997f85f727514f89ed0658a26f469bf86488a25fe61fe159f4ab2f5d6b9c0dd2d053ec09db53af3b0d5d513be871c5c47e5ecf361b3e7efc1620fe0e758807dee607', NULL, '1592440376.jpg', 334, NULL, 'def50200b80dc179dea28c07b1ec7e694dfb97929a8d0127cf165d8b07657b9ca49915b1de30618489c0481df3b04c7e5cae4c4967610bc1830c8167349d02803677b5cbe921545bc4fd8780b445e8b06751dab9c7424ecd', 'def502006e266c921aa8a341923d7567bd0dc63c95092c770676813206cc7997ed03b8ea338ef60b8466899015672124e1dee2639f001ac6cbf581dfd606181f92279533ba480b18dd4f9bb5dcf47c16b4c52f97', 'def50200eeaf82c33cfc47c6b7209ae1e69bc09e1986b13c2a6eaaae5c855d1a0e9cd692f257404638e1d0dad007a0355f741079156fdab670184d4a654fc22030674a8b8cdb93d23e1dc23968e013df1adc98b8', NULL, 'def50200a614a5d2eaf9f6cff26221c8da7b0d3563459d2cc85e4e31b9970b962ab3134775ffc57934341e4b89951c4b3229063b9032198987286b286e5737184cde32976012c40e741f08293059ad01fdc54f34', 'def502003716d9ebd5047de0064c41dbf5024e5cdc61717dff1c934b92abbf563cf38f509443456e89a21723ec3ebddc0748ac8e72760a9a8434df1ea819852e192fbda30793bb8d47ec6b62473db1e01414379e', NULL, 'def502007aaf190f31461fe78b022dd9f992eeebabac5f209f2cdca460a2fcd77db8a7efd73cf9421a35a642f0d9117f6e60743ba8a635fa169717a92feffefd011cd6f0ed8698e7f62253c18ad47428f5005dde2b3392cb', 0, 'Express Shipping , Slow Boat Shipping', 'def50200196a9a949a3366c4d5539036ddf6c55adc5c2d2778cbcc450de6009b25442a60d12e6f6c27370f1fcbd9d1ab59fd21cdadab8e2366f62587965b4674c8ed137fddcc45dc328b4a34f8c38a23009b8b66f61d0644a62ebf817f6e7f0ce95c071e0310235ec6fa30dfad44d1b90d14a40acdb33e49aa65adc1820f1a78b4', 'def5020051757ee28ce5530d250f89ba52cfd76e55aba70b1eec559107c9dc65d7bb0f6699077068cbca4230a993cea9fbf6ab251ca9924189cedc7e49815202cc9b4bfdb0ebdfb63e49bac4a0ecc6d972d30bf2', 0, '[]', '1a855a2b78273770f41838bae266c7e8', 0, 0, 0, '', '', '', '', '', 0, '2020-06-18 03:32:56', '2020-06-18 03:32:56'),
(45, NULL, '124346076504', 407, 2, 'def5020091449bbd84423a2e6dd40b122bcb8d8717b0fb041b6c31c417294a48280bc66e139aac785ab5d5b3e9f617e4d3fff96c1d0e8d1ac1b68f74c15aa025366c5aa30062773baca9a52a66b44b18652ff8f110c5ef9546d318024eeff3', 'def50200b0f5881b8c0b03a0bceda6b9d2bc66e40d19aeb1449ece73b66b99e8bcf0e509dd0fe066ee7b1242c143e772fbccfc89c0c4b0bc76771e8ec1796eeb586887ee296f13553fb220d5d712b1df87fc23c26aa92e85', 5, NULL, 334, NULL, 'def50200be8f8bc09108345e732fe643db32f9e6d9c90f7ede890fb630d1ddc40488943442d9a7b8aae7be7479b7de02db6e4807d62bcc6a5d4baa1be060598ce33b5b8eb2901f0aaf3b9ba38bed828bfe67b0318d8a5d15', 'def502005d20f1e02aa482e6b2cd531d06e708738a989e4e878a318955b6936292cdfe61ef0b6c14c6fe59e2ac6833ad754bb00d58f5ec30606a1f6c14851cac3a68fd86d4250531b3fac820f464bdf42149a77c67da47', 'def502004ed1c86e4ff0d1d2b8faf863f548ed5e785d240917916f27422410a414846709bc5522447e14ef7059f0b70fd5dec5e2dcc8ba4b746c0cff469b69b8406a5c5b9539b0769b3b169fa1277bc746e8d5ea', NULL, 'def5020025755e6e15357b88415396cb97570b72a62db6cd985b298880034082f5eb59c6e2faa291b1b0d24353ad8ce7cbec233b73586e48bd61e46432caab3475670445d294702dac61978c7ee3f4dbde6341880c8cb70db07f4b98', 'def50200d7c41cf3241a64d39d0267645773799a2108ea5920b995b3a1ea7efada462c0293bab16250f88615a484145f1c76d09ecc3289835e202a28ad6dea42b53d85305a779109b3e49cd6dad32795014853453a9a0f52f9b6', NULL, 'def502009d3d9b9c7eaf7900f2f4a3bbc71b73cc2223a77eea463718f90d556b632cdc0dc18182656b039410c4b877501b9b3dc6b9bfeb4c12d3a094830d11a372da1b72abe9ff715d7a15e793d1e2051e44e23624204928', 4, '', 'def50200e041455032e4a43759a6daf92a3e799de0adab8b34c3a76bec12b000cdc6dc3c54aa1ed04f9b7e39b13686480e98b0d184ee09415787ff7292647947115480aa4e3fba2983435249ecf4c1754ff37f7510d7231cd87831bc8b3a2d540140bbb7222210ca4c80825c901b985c84ee6a2164ded430409a1a276b5b2a0f2a', 'def502002afb04ad1f4de1a56e4c0cdb5757ad87b1d2f8ee176b363445b3a713ec6e686f0e422269afb945574c1ee56ffbfdead13e26c5731d07c2bcbe5675f69c05aff654514dbc5604b856b5da7c3d0794fec1', 3, '[]', 'ac40e536d8b61fd3ecdb0575b54c62f5', 0, 1, 0, '', '', '', '', '', 0, '2020-07-08 06:55:07', '2020-07-08 06:54:28');
INSERT INTO `jobs` (`id`, `tracking`, `job_id`, `user_id`, `service_id`, `subject`, `description`, `days`, `nda`, `freelancer_id`, `review`, `material`, `type`, `layer_height`, `infil`, `fininshings`, `color`, `postage`, `name`, `price`, `shipping_type`, `shipping`, `post_shipping`, `shipping_f`, `files`, `token`, `approved`, `status`, `payment`, `quality_assurances`, `completed_date`, `shipping_date`, `received_date`, `tracking_number`, `extra`, `updated_at`, `created_at`) VALUES
(46, NULL, '81311938791', 407, 2, 'def502002976347be39b973bc55df54fd6683028de0ef01f03628d9e74e5ce025369f5cff828cbd751cd97501234a9eefd10889d11ad3aad3b54dde841e29c7ac1a1f3c8ca6a15bf708b6b4af5e0ec5161cce4e0216b768f75ebe514419448', 'def50200160d836dba7eb93262bd3e20fc1e239f94d61a0caa6cc9b2a6fe585d035db3937c51112e2fe908789d43f96e9546089552002b0d29d90c8eb1021621762356adaf2bfce97e85ebc6d67009f84a4db19223885cf0', 5, NULL, 334, NULL, 'def502003031262719301ee0c65d7303d8389e1beed497b17bfb019bb836658b943a9f65a07e6b6c7259789c76cab6681a8a48e1d0a369e30b5b2a9d2a6e6d11a2ec638c5e73577d04225da355cac0e1bb19f2edbdf2147d68', 'def50200623ae540f08836a5bcf291ce5662eb32cd266ca193f29f54609ae09beddf78e3ec68ae947e1aa94b7f18010673610a2f5a06a9dd648bbcb4e136f26496535e5d291172be7ca8262ad9ca14a6c609f0446ed704', 'def50200406bc9b11f2b261910b0a1b67fdcc0574d0fa6f27d7d1ab189470e4ec51a8ebe4470cb34e400800b42a193ed8283652404ca824b3c2047e44cacd7d5a58b140e305dd7a7354b4a58d674fed30ee7a7f1aeb709', NULL, 'def502005f5f3bbf7deae5034b6ed5921d8efa490890730a455b6720ff5d7f188901c15b1cf88e7d266cf0e534b31e4055ca4d26f4e47255711317b7f6738e5cabde9532e6b823906ca793fe2a8bdd013b780c5cab76eabe39dde6b4', 'def502007f626bc780f43d9abbe0d1321ed0335ef4e1693cb495aa789639cff3478ff63e4543e69935d1baa9d3b9c511c01267536aef294400cc609fd99bfb61633baf3c0aa38af29bb28438b01f93b41206b73dd04dd0271001', NULL, 'def502001e94a25fd7820b1df6a78c56611e704d791b62b56f08ba62bf2451358982b1e17bcd9465b33611ebef7f8904056d3a3a64f7446de1594790df620e1e43187e1e556f4745634a6ef7a03c6c117340f1c83d611bbe', 18.2, 'Express Shipping', 'def50200e9865e3df75f0ee984c82f74ca6644e65fe01a9adabf3446b50e4e00f4eb52b5dd93e626dbb0d0cee8d671b861bb52b5486b020a89dab4c5c090724272b54a3d419c6c4916e189706406f98f50522d0126f402e372080d1c54f485730c29522159c742f1177fc8715cf7c982cbc419569e51415772bef889ac1f487d51', 'def5020094d85685efe07003395cb9acd5a3830518a57cc60e462a9070b41cdbd6608fd68c839f950291448b3eea58e6755f61487fcef4be68092d0a3889137c93513c4c85a03c93dd4dc95479b81851e31b92c2', 15, '[\"1594351733smartmockups_kaymx3wl.jpg\"]', 'd89a8b81c0124d65339adbe8da02ebb4', 0, 1, 0, '', '', '', '', '', 0, '2020-07-10 06:29:39', '2020-07-10 06:29:01'),
(47, NULL, '154949073513', 361, 0, 'ff', 'ff', NULL, NULL, 44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'f', 0, '', 'f', NULL, 0, 'NA', '12f29131c967061359ebe9f2d8360cc6', 0, 0, 0, '', '', '', '', '', 0, '2020-08-14 16:52:09', '2020-08-14 16:52:09'),
(48, NULL, '38347862112', 361, 0, 'ff', 'ff', NULL, NULL, 44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'f', 0, '', 'f', NULL, 0, 'NA', '53b3012632f2ef1a26cf2a098b144794', 0, 0, 0, '', '', '', '', '', 0, '2020-08-19 11:59:48', '2020-08-19 11:59:48'),
(49, NULL, '86282696394', 361, 0, 'ff', 'ff', NULL, NULL, 44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'f', 0, '', 'f', NULL, 0, 'NA', '6b026a725c0b3e07d88f9b0cd5bd95f5', 0, 0, 0, '', '', '', '', '', 0, '2020-08-19 12:01:51', '2020-08-19 12:01:51'),
(50, NULL, '154989290392', 361, 0, 'ff', 'ff', NULL, NULL, 44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'f', 0, '', 'f', NULL, 0, 'NA', '8f2a2a843e4f3af0e8d0333027019fb7', 0, 0, 0, '', '', '', '', '', 0, '2020-08-19 12:02:16', '2020-08-19 12:02:16'),
(51, NULL, '22369590502', 361, 0, 'ff', 'ff', NULL, NULL, 44, NULL, 'RF', NULL, NULL, NULL, NULL, NULL, NULL, 'f', 0, '', 'f', NULL, 0, 'NA', '4a4c70cff0153d769b38218abf8b210d', 0, 0, 0, '', '', '', '', '', 0, '2020-08-19 12:04:53', '2020-08-19 12:04:53'),
(52, NULL, '86282706870', 361, 0, 'ff', 'ff', NULL, NULL, 44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'f', 0, '', 'f', NULL, 0, 'NA', 'fb8261ec076d153e3e297554abc9d367', 0, 0, 0, '', '', '', '', '', 0, '2020-08-19 12:05:05', '2020-08-19 12:05:05'),
(53, NULL, '100663158204', 361, 0, 'ff', 'ff', NULL, NULL, 44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'f', 0, '', 'f', NULL, 0, 'NA', '7b2b0d42c89387160483db1ab8f52509', 0, 0, 0, '', '', '', '', '', 0, '2020-08-19 12:05:08', '2020-08-19 12:05:08'),
(54, NULL, '25565248848', 361, 0, 'ff', 'ff', NULL, NULL, 44, NULL, NULL, 'RF', 'RF', 'RF', 'F', 'RFR', 'FR', 'f', 0, '', 'f', NULL, 0, 'NA', '81baee033bc4c8df3649f0f4f9284387', 0, 0, 0, '', '', '', '', '', 0, '2020-08-19 12:07:33', '2020-08-19 12:07:33'),
(55, NULL, '68706606494', 361, 0, 'ff', 'ff', NULL, NULL, 44, NULL, 'RF', 'RF', 'RF', 'RF', 'F', 'RFR', 'FR', 'f', 0, '', 'f', NULL, 0, 'NA', '9aafa464a449c4434e6c78fec4c7e13f', 0, 0, 0, '', '', '', '', '', 0, '2020-08-19 12:07:38', '2020-08-19 12:07:38'),
(56, NULL, '52768205160', 361, 0, 'ff', 'ff', NULL, NULL, 44, NULL, 'RF', 'RF', 'RF', 'RF', 'F', 'RFR', 'FR', 'f', 0, '', 'f', NULL, 0, 'NA', 'fbd1580f95ea77f12d2bcbabc0953f7d', 0, 0, 0, '', '', '', '', '', 0, '2020-09-02 11:48:40', '2020-09-02 11:48:40'),
(57, NULL, '54376356910', 441, 0, 'ff', 'ff', NULL, NULL, 44, NULL, 'RF', 'RF', 'RF', 'RF', 'F', 'RFR', 'FR', 'f', 0, '', 'f', NULL, 0, 'NA', '6de94471ab45a1eeb7b8112251f7741b', 0, 0, 0, '', '', '', '', '', 0, '2020-09-05 14:16:55', '2020-09-05 14:16:55'),
(58, NULL, '17592352690', 441, 0, 'ff', 'ff', NULL, NULL, 0, NULL, 'RF', 'RF', 'RF', 'RF', 'F', 'RFR', 'FR', 'f', 0, '', 'f', NULL, 0, 'NA', '95e61184ec86ba451ad1beb081064370', 0, 0, 0, '', '', '', '', '', 0, '2020-09-05 14:19:50', '2020-09-05 14:19:50'),
(59, NULL, '92804344258', 361, 0, 'ff', 'ff', NULL, NULL, 44, NULL, 'RF', 'RF', 'RF', 'RF', 'F', 'RFR', 'FR', 'f', 0, '', 'f', NULL, 0, 'NA', 'bf62fefef1e0f7547b0c279afadc877d', 0, 0, 0, '', '', '', '', '', 0, '2020-09-14 12:15:01', '2020-09-14 12:15:01'),
(60, NULL, '116818476154', 344, 7, 'def5020094ec3ad602899e5c458919776ec95c96e400b35d7717bf94f7d07b5fd66aa197aa01bd99eafe5630fa4d5c90cdbfd769e221191349e76272bcc0fe7b0f1a0d77f069c456fbd03e32fe96c452302dd8b272f03d37', 'def502002db23d9056a2b0e759e9ab79bd5f0f5f4985588a930f5e4cf80033e7917f95839231dbe9d4a7efd0a21c2f302874cc84be17f7f556919458d7e9e217b71aef1d39a5f79198e2295d3d804df4bad9b0c912b018ad', NULL, NULL, 372, NULL, 'def5020017c4bc472b5d65fa0a297e50692c72e5fadbe69ddc47ce3771990b1aa2d86978dc760a579c6f686fa883f9cac566e89d78147578a4773c0909ece59ddee313edb4620aa06201dcab57a520bde4fe3faa', 'def50200b92b30c30bd94b4908f7a5ec23e624a91d7e34205c2886d5da8894587e1b81ee6f14d680413d0a3d33ffad55dca8b294abdde83ba1bd1f888b76d83f22ee97f185d78f8a01c9d94ef544fa6b5ad0cc40', NULL, 'def50200da32f55eb2a2e7768655163c16568869da46f7cdbc6621e25397fcb511b1dc3452a5738c1dc9d5930dc3f6c90984430f4bbef824608371a38a6c6894a246193d5e91fb28d67ef310d9d2fc22fa2bb368', 'def5020052015224188a9fda01f30616e6170e01580b5bc96896f2e5e41eb236219ed7d6707319052e3938466698a69b5293d0d307b8b9f4dbd70ef91c2f4c6b3ae051b06ffd1f8718e1e603808aaa06407e3e0a', 'def50200ec39f4a7c093a54aa6a4891d9e5f7a0a108fd3cbd0972855c81b86b5c61125f3311c5e7068f045886181fb3b9070e11bff76a2b9e0d9d2dc84fd362d5bdfea7cf2f0408946fa9a7460eece02ab79695e', NULL, 'def5020091293d346573480f28d6fb8c43b5bbea121f44144c1ef05b32f71a9157277e5990e6f356fae906d2701fb8a9f8c10289c5b145e6892a797ad6f8317b3b9fdf4b129af2f21475630bb70b8fb77bcb69e133b22b14', 0, '', 'def502005abb3930f2cf5f464279b83aa1c95ea8065aaa3864a00daa95e38f7e7559351408f17158887deecfd1fe69b9ef68572dcde85bdb6f995754fcc417b0ae47dc73dbb2c5507081aa9397ffb5cfc730e85596a2c1b486e66187370f0214', 'def50200f7648374744e952f1d7592b10ef39fa662e3d42bab18b2045711375508a2c798ad57bc80aa6dabda508e75f611fe319054418624a47afa24915269d81b257ded716ec8adeb957b233cc5d5e4d101319d', 0, '[]', '427e64004f0693ccbfa968a8950de0db', 0, 0, 0, '', '', '', '', '', 0, '2020-09-16 13:44:58', '2020-09-16 13:44:58'),
(61, NULL, '100815967413', 344, 0, '111', '2222', NULL, NULL, 362, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gerald K Myers', 0, '', '', NULL, 0, 'NA', '6a11eebd47a489606f48dff0a0b139e3', 0, 0, 0, '', '', '', '', '', 0, '2020-09-16 13:50:51', '2020-09-16 13:50:51'),
(62, NULL, '57618941472', 0, 0, '', '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', NULL, 0, 'NA', 'b2cb673583788ae315504f02e52adac9', 0, 0, 0, '', '', '', '', '', 0, '2020-09-19 17:35:52', '2020-09-19 17:35:52'),
(63, NULL, '123249686868', 344, 2, 'def50200b6bacf7fe174cdc8f50e3780fc64ef0924f85e211c509b21ac885a1b2191ad07f9147ae479d918d1d602b8f9ee400b292508752f5fbee03cef02e0e64e41b08a59f365f316cd54447a69210ce26a06c208fe4c324026ba04b64255', 'def5020016a8dcc15f50ada00bca5aa931b008daee75fecdeaf295bf44975417beda206b440518a0888b2017a62f3b17227175a12059d4a02817388c3bebc3fb68b028d8be8141b5b3dce0ffb9508957df53b066d4969531', 8, '1600645284.jpg', 334, NULL, 'def502000b019bd949bd66d0b16305b0aaa84d821b747bd8dc16b528cbec581a5abc442273f66d96ca73f0e3ee607a4dd52ac3c2c3a6ace7b45ca3717014d9540fab4d74638ac0414986e9c57b1a17baf82558915366e393', 'def50200148c8828a0417aa8ca91c2d7d736f9ac4a62d8353eb2cffe8a359048540ebede43621fd4a8cc185feb6665c309176511a54b13fad8b81a0d662b82891ddadc0ef44e51546784c8232b192af43f95e5e7b5cfed', 'def502008ea46970ed622de1638b9df39f81ee3414ade2b53fb1ef487c81be3f2f6f55f06653005653f01772240e312ff56997f143a61e957e3082142687db99a5b5ebbcc2feaaf4770bc819d4d227d0765c544fc4768b', NULL, 'def5020059d30d5b56b11f9b9ab9fe201636b7770e7f0f3eb2be3eef8dc86a3aa1c5df15ca4bfa1ed2bac78fad6fe25f38e951b7af97ac72b5677128ee62f67fb0f6538c7b744ad461865ca21a4abc2a8f1498613a51b9878e0bc26e', 'def50200abca8406957a1ed10047ac43bbdb4322671cee573116e82f5488a7ce871fdb573647404e9d6d1382da7d1a64a56da9f88ed0ec83ed08b59be7df3c3deb911f27634e435bbf1b04a9236698e9c346db1cb6646e8ed2f4', NULL, 'def502002bce188f09038dbeaf38e950e7cd766343d6a2a41106385b059f4baf3032f27859ae31bc5a7ffae4ceb80a9d91ef2aea840a5d46dc8c1ada093b3ed881b6e76aaefaf9a3a293350e180955f0fa82d5bebded52191c16399bdd385ac6c5f9', 18.2, 'Express Shipping , Slow Boat Shipping', 'def502006a0057ee638c2c6d93532c5b50f9042c0d692759029271b07bae844b309861ea7a1d6106f989406e7ef1c19f0e521e61c7a70bd3f4f4b94dc58c814c38f823a8953e83e678d4d34ae45f75297d7a450ec37e0fe21cb64099f652e8dd83fe8a4adba3f6bbf423ec77f8023093378b8700215182a01ecdecee86d996929c', 'def50200cdecc282aa589058df0eca95fdeec5f105fdc2f0595a31ea56e269206e043443031ddd24bc899774f56920fe8aab435cbace884ad209735de4dd3dfd94eee2df3aa3e68323783024c2c01f8a67467928', 15, '[\"1600645244mmexport1599616869429.jpg\"]', 'e7d96fef27456ae5e3b10f226b2dde3b', 0, 4, 0, '2020-09-21 09:53:01', '', '2020-09-21 09:53:36', '', 'KB669238003GB', 0, '2020-09-21 09:47:21', '2020-09-21 02:41:24'),
(64, NULL, '62429512860', 0, 0, '', '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', NULL, 0, 'a:0:{}', 'de993088fb36bd4a6698632bde0abb35', 0, 0, 0, '', '', '', '', '', 0, '2020-09-22 09:39:00', '2020-09-22 09:39:00'),
(65, NULL, '72034097535', 0, 0, '', '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', NULL, 0, 'a:0:{}', 'd588ac28fd77021d16b33eebbd33c71b', 0, 0, 0, '', '', '', '', '', 0, '2020-09-22 09:55:23', '2020-09-22 09:55:23'),
(66, NULL, '129661384149', 0, 0, '', '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', NULL, 0, 'a:0:{}', '279627fcf4aed1d5cbc34b22edf363ea', 0, 0, 0, '', '', '', '', '', 0, '2020-09-22 09:57:09', '2020-09-22 09:57:09'),
(67, NULL, '44821223104', 0, 0, '', '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', NULL, 0, 'a:0:{}', 'ce339e4d9976c46aee3100153a7540e5', 0, 0, 0, '', '', '', '', '', 0, '2020-09-22 09:59:28', '2020-09-22 09:59:28'),
(68, NULL, '33615917811', 0, 0, 'test', 'test', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', NULL, 0, 'a:0:{}', '1029c6eb1c3671116e43df77dca9e29a', 0, 0, 0, '', '', '', '', '', 0, '2020-09-22 09:59:51', '2020-09-22 09:59:51'),
(69, NULL, '51224264192', 0, 0, 'test', 'test', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', NULL, 0, 'a:0:{}', '9f8d2d82c13a6dc5d0c3cb7bd222b7c1', 0, 0, 0, '', '', '', '', '', 0, '2020-09-22 10:04:16', '2020-09-22 10:04:16'),
(70, NULL, '51224264352', 0, 0, 'test', 'test', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', NULL, 0, 'a:0:{}', 'a828e67c71987f8d89a98bd479eae90a', 0, 0, 0, '', '', '', '', '', 0, '2020-09-22 10:04:21', '2020-09-22 10:04:21'),
(71, NULL, '118456111536', 0, 0, 'test', 'test', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', NULL, 0, 'a:0:{}', '7e6a4573fdfe4f0714ad26f45d5cb12d', 0, 0, 0, '', '', '', '', '', 0, '2020-09-22 10:04:24', '2020-09-22 10:04:24'),
(72, NULL, '150471913102', 0, 0, 'test', 'test', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', NULL, 0, 'a:0:{}', 'f07997a46dbfb6cbf7d73b293750586c', 0, 0, 0, '', '', '', '', '', 0, '2020-09-22 11:57:13', '2020-09-22 11:57:13'),
(73, NULL, '35216833718', 0, 0, 'test', 'test', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', NULL, 0, 'a:0:{}', '0389deed185edb46f4e929b38fb3f344', 0, 0, 0, '', '', '', '', '', 0, '2020-09-22 11:59:29', '2020-09-22 11:59:29'),
(74, NULL, '48022955820', 0, 0, 'test', 'test', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', NULL, 0, 'a:0:{}', '7c6101b90144743df4d2682a9db7d826', 0, 0, 0, '', '', '', '', '', 0, '2020-09-22 11:59:54', '2020-09-22 11:59:54'),
(75, NULL, '120057398850', 0, 0, 'test', 'test', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', NULL, 0, 'a:1:{i:0;s:49:\"1600765318Screenshot from 2020-09-22 13-11-16.png\";}', 'df6668ef0261dd43d8e6ea14c2ca341e', 0, 0, 0, '', '', '', '', '', 0, '2020-09-22 12:01:58', '2020-09-22 12:01:58'),
(76, NULL, '81639113634', 344, 0, '1111', '2222', NULL, NULL, 0, NULL, 'Iron', '3DX', '5mm', NULL, '3D Print', 'yellow', NULL, 'Gerald K Myers', 0, '', '', NULL, 0, 'a:3:{i:0;s:18:\"1600766934file.jpg\";i:1;s:18:\"1600766934file.jpg\";i:2;s:18:\"1600766934file.jpg\";}', '796a256d1c8614647c0053b5f2cba36e', 0, 0, 0, '', '', '', '', '', 0, '2020-09-22 12:28:54', '2020-09-22 12:28:54'),
(77, NULL, '104049867675', 344, 2, 'def50200d736364a5a8358d950351ae2fa5a43dbccf4c53e5442ca9d7dcf0dc07763abd6615eeda5f1d16fb4800376052c14b51bb664efd775b4994c0f7b3e955dad39ecfb795154708b4a890ac299223de332fc7df51085', 'def50200b00871ab804fb649c35a9a7ebcc68f28f5341b3e09f7a98be9bf613647767bd32e75f2176ce8f38ef0eea45a712dd8e5ee3f8c8d1b2495959fd0281a28267b033e4427a6787d07105ceadf640ec9601e07433485', 5, NULL, 334, NULL, 'def50200f12ca8d0812ca08ba97b9851bf2f0c6684a4d821f63f1db953cee94c3c85ea6e0a7cd5635df584eed5a87f74c8ce7265665e910acfd2d360e90cc23b9fe38c4be2373ea4e3b2e8d669227802e07ea07cdd67d9de', 'def50200d97260c580f03ca3ba917287267c51c7b85dcc2dc3e17769a0fa8296a641d604aef85b93e597df0dda5625aaea14b858135346d742ced7386d9d0f40c558b69b8f762046162c2375f89288ac29fe6f0b3f3821', 'def502006a7fa4531ddd1a87f72ec79465a2ce9cd9a58ade2ce2e158bf84251485ccc3571893bf849fd70b9d3b2e0623628ca6a01c20b4101527ebd048f847b82db48536ca9b7e1a916dbeaba0d95aadba5a2909c101da', NULL, 'def502007e26f307a599482b35e18b03b0373700bc3dc5d5bb3444d53e08397b4a7dd1d5a2e3a8e3506864b411039cd5021c2e1c4f9660557cee9c4dc193846113ad3584328e9ca26d67573e5483b2089575493a4c140c93d538e150', 'def5020027b9d45b721fa5682f92fce796d96976858b6124388ef4d70d4fad6a62056f650dde5c7bfb9621c90a111568a967571ff91656517dbbe482174770e12d17d29e05f9944762ef2fb6d46e5455dab6929302b8d865f951', NULL, 'def50200926cba2f6c3a7137795aed019c374b7b942226f756c8fecc8053fa5b79fe2d5a3ca1bab27346db18b526150d4e205128e6d0aae19f8f0f84d3c1ddab580c69b8911562463f752baab2ea6b9979add1c0c018cf630d97d342fc32cc12fb73', 100, 'Express Shipping , Slow Boat Shipping', 'def502004aad51e60eb694450f5d87c0d60e7a817037503879ec5f61362a591a3fd819b7daf6ff795fd1cc4a47d0bfa3cc2b532325416fd805f88abc3e34c0ef9fa49afb8a5e1600a287321641434954ed15b2b74aa7d9240c', 'def5020075cd886bd1abaaa9207da466705ab5aba73b4b9a998fd4cbb3abc1068e5e66d8bbb5074835166e69c59057fcd44c17ddf2e13316d52356af73386191e4b0d90b604e0fcc14cc9dcc6b60926ee0c76c38', 10, '[\"1600767192Simulator Screen Shot - iPhone 11 Pro Max - 2020-09-22 at 16.15.05.png\",\"1600767192Simulator Screen Shot - iPhone 11 Pro Max - 2020-09-22 at 16.15.08.png\",\"1600767193Simulator Screen Shot - iPhone 11 Pro Max - 2020-09-22 at 16.15.10.png\"]', '6238b0f31ec8d4c62271591f22176aa0', 0, 1, 0, '', '', '', '', '', 0, '2020-09-24 08:23:18', '2020-09-22 12:33:15'),
(78, NULL, '147270638336', 344, 0, '11111', '22222', NULL, NULL, 0, NULL, 'Iron', '3DX', '5mm', 'Grid: Strong 2D infill.', 'FDM', 'gray', 'slow shipping', 'Gerald K Myers', 0, '', '1,2', NULL, 0, '[\"1600767807file.jpg\",\"1600767807file.jpg\",\"1600767808file.jpg\",\"1600767808file.jpg\"]', 'ff9117bba0f88d546b5d6654fa585209', 0, 0, 0, '', '', '', '', '', 0, '2020-09-22 12:43:28', '2020-09-22 12:43:28'),
(79, NULL, '38418434880', 344, 2, 'def5020084cfe848ac14389a142d8132231e50243087c04307bf1f7b0e8d748d5377b31beb25d6ba1d782fd2e8da8cd84c11f1c7c290cf4097a1f2f0fd2f1906b2ce25ea65462003629d64ff6e3eebf4228fbc657a4f', 'def5020043ab8e091bebf64813734e6911b93def61d6d02849bf26e331e041c230e99400ea7fe7a9263855ec0b3f55da6f396fef1c4c67d1787a285c8c8d08134977c18cb44f7fd4d911a86eee94dbd2b9e08a4cfbf14e', 1, NULL, 334, NULL, 'def50200d610ab2f8d0cdfcb1a065684f128b4b5e9a1b8606b541ca80229b470e783046df4db9983c72bd2053fb2becd1a25a9aa9ce26889e5c40cbf3621fcd192862535722dd37f0c5ca4052cedac17e000f270', 'def502003766b4e33f2328b37d04c6a930b37ed298e33c08473e99bcb969bd51c1720fa63b1f68150ac1d12dbaaee031fcf4b4a7cca5669bcd07f42dcac9b1b684ddf6ff864c40b9621d1a42737ee97876d68043', 'def50200ff2b0d473ce19b0d849d91310cd3b96c59d9559ac87acebea5cb6a0bb1252b79cb7c8a4397875df18172196f83907a36c11612bde6d609f409c42e6a2457fa32bdf6f6267ee07491de5617b79a20e582', NULL, 'def5020052bd6bb0d4c3beeb6877177aa5d2c5c456153a29ac4bb3c27a44fc9ffe675335e1f49ad219f76b375b1005e07c1612bf377fcf6b13b10dddce6a4c308cef6817d463a3d332df53e4078242d8c549b770', 'def502002fc9a2a6c6e14e8ab98c14a758bcf2d6411c6dc9bad2ab929475348cad940d548af59be7f37b192ae462422610fba08a644c7f478dc367d524ed5ab9dc1fbb589addfa359b2a753acf22688a47502c88', NULL, 'def5020067598397cea81a9a958c806dc01c8f03245c781606c1720137285ca609ca03edde23fce37e6c88616d57bc9378c6bb597b1ef19c4f24c4ec362b7e978de66195179f0f7c2b7aa8e8c6facc762405deda864ba0653ba6200adee36fddb60e', 10, 'Express Shipping , Slow Boat Shipping', 'def50200caec9f318dae3c4ffe26534e20d6ea43c8d5787ffd582044a5cfc5927dceb2c61e4c8c9a0e6181d77a834686a5bb1aaae14c6cc26430a47362131d265d281dfd603568ca57aab919ee561ade772737e6d9853062f75e', 'def502005b75ab1c04a8b0d4981a68da6d8c0aa8a5ad75d508b539a260f08334f6d33f89ce68d42fab96adc702c620e69fe8cf98f3615296ced356ee32653d17a473ce71c6afa8df26334625b1e466ddad2b1715', 2, '[]', '910301b874b9aada6cc3de96479902b3', 0, 10, 0, '', '', '', '', '', 0, '2020-09-23 08:13:02', '2020-09-22 12:48:40'),
(80, NULL, '78437640967', 344, 0, 'Sdcdscdscds', 'Gvdfv dù FSV đè. Để dfrsvfdvfd', NULL, NULL, 0, NULL, 'Plastic', '3DX', NULL, 'Grid: Strong 2D infill.', 'FDM', 'yellow', NULL, 'Gerald K Myers', 0, '\"11111\"', 'Express Shipping,Slow Boat Shipping', NULL, 0, '[\"1600768182file.jpg\",\"1600768182file.jpg\",\"1600768183file.jpg\",\"1600768183file.jpg\"]', 'd1678013e82cb03b40440a31bb7771db', 0, 0, 0, '', '', '', '', '', 0, '2020-09-22 12:49:43', '2020-09-22 12:49:43'),
(81, NULL, '153673782144', 344, 0, 'Dsdfsfdfdfd', 'Gfgcsmim im đạm đem m dùm', NULL, NULL, 343, NULL, NULL, '3DX', NULL, 'Grid: Strong 2D infill.', 'FDM', NULL, NULL, 'Gerald K Myers', 0, '\"11111\"', 'Express Shipping,Slow Boat Shipping', NULL, 0, '[\"1600768564file.jpg\",\"1600768564file.jpg\",\"1600768564file.jpg\"]', 'b0264df9edae5c6427d7fb6d70634ddd', 0, 0, 0, '', '', '', '', '', 0, '2020-09-22 12:56:04', '2020-09-22 12:56:04'),
(82, NULL, '52825401189', 344, 0, '11111', '222222', 5, NULL, 334, NULL, 'Iron', '3DX', '5mm', NULL, '3D Print', 'yellow', NULL, 'Gerald K Myers', 100, '\"Express Shipping,Slow Boat Shipping\"', '333333', NULL, 10, '[\"1600769732file.jpg\",\"1600769732file.jpg\"]', '077770589beaf08c92396d1967ed80f1', 0, 1, 0, '', '', '', '', '', 0, '2020-09-23 07:50:59', '2020-09-22 13:15:33'),
(83, NULL, '99247766040', 344, 8, 'Test subject', 'Test description', NULL, NULL, 343, NULL, NULL, '3DX', NULL, 'Grid: Strong 2D infill.', 'FDM', NULL, NULL, 'Gerald K Myers', 0, '\"Express Shipping\"', 'Test shipping address', NULL, 0, '[\"1600770420file.jpg\",\"1600770420file.jpg\"]', 'f920a92b033edac30ff67e6e90696c55', 0, 0, 0, '', '', '', '', '', 0, '2020-09-22 13:27:00', '2020-09-22 13:27:00'),
(84, NULL, '128061699920', 344, 10, '1111', '2222', NULL, NULL, 362, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gerald K Myers', 0, '\"\"', '3333', NULL, 0, '[\"1600771249file.jpg\",\"1600771249file.jpg\"]', '3d37e0a2adc5cd7cd4e20d7fb1593b00', 0, 0, 0, '', '', '', '', '', 0, '2020-09-22 13:40:49', '2020-09-22 13:40:49'),
(85, NULL, '67232398800', 344, 10, '111', '222', NULL, NULL, 362, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '333', 0, '\"Express Shipping \"', '444', NULL, 0, '[\"1600771400Simulator Screen Shot - iPhone 11 Pro Max - 2020-09-22 at 17.27.49.png\",\"1600771400Screen Shot 2020-09-22 at 17.12.42.png\"]', '9496afa67a553dc74f022352606c808b', 0, 0, 0, '', '', '', '', '', 0, '2020-09-22 13:43:20', '2020-09-22 13:43:20'),
(86, NULL, '62430088773', 344, 10, '111', '222', NULL, NULL, 362, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gerald K Myers', 0, '\"\"', '333', NULL, 0, '[\"1600771506file.jpg\",\"1600771506file.jpg\"]', 'c4a46c7ca815058fa89fdf1f0e9ad0b3', 0, 0, 0, '', '', '', '', '', 0, '2020-09-22 13:45:07', '2020-09-22 13:45:07'),
(87, NULL, '150472542056', 344, 10, '2222', '2222', NULL, NULL, 362, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gerald K Myers', 0, '\"Express Shipping\"', '2222', NULL, 0, '[\"1600771724file1.jpg\",\"1600771724file2.jpg\"]', '2a3e1e7687dcd8a5f97fe7feccf8e2c0', 0, 0, 0, '', '', '', '', '', 0, '2020-09-22 13:48:44', '2020-09-22 13:48:44'),
(88, NULL, '49625862866', 344, 7, 'Test', 'Ghhhhhhhffffgvvvvvgyyyyhhjjjjjjkkkiinbbbbbbbbbbbbbbbbbbbvvvvvvvvvv.    Hhhhhhhhhhhhhhhhhhhhhhhhhhbbbnnnjjjjjffddsssdsdddfghytyiiiuueerfhjjjkkk,,,l,kmnnnnnbbhgxssdfgghhhhgghhhghjjggyytuuiiijuyhoopohggj', NULL, NULL, 372, NULL, 'PVC', '3DX', NULL, 'Grid: Strong 2D infill.', '3D Print', 'Silver', NULL, 'Gerald K Myers', 0, '\"Express Shipping,Slow Boat Shipping\"', '53 cluny rd plimerton hhhhhhhhhhhhhhhhhhhh', NULL, 0, '[\"1600834286file1.jpg\",\"1600834286file2.jpg\",\"1600834286file3.jpg\"]', '31da9803521b594429fb797f1253a5df', 0, 0, 0, '', '', '', '', '', 0, '2020-09-23 07:11:26', '2020-09-23 07:11:26'),
(89, NULL, '97650910295', 344, 2, 'Fffghhiuyghtdhhjkkmjmkmmmkmjjjjjj', 'Testijgfghfghgffhgff', 56, NULL, 334, NULL, 'Steel', '3DX', '5mm', NULL, '3D Print', 'yellow', NULL, 'Gerald K Myers', 18.2, '\"Express Shipping,Slow Boat Shipping\"', 'Fghhjjjjjhhhhhhhhhhhhyyyyyyyyyyyyyyyyggggggggggggg', NULL, 15, '[\"1600834595file1.jpg\",\"1600834595file2.jpg\"]', '8beefcb17b0b3b142fa991c10f9ff8ad', 0, 10, 0, '', '', '', '', '', 0, '2020-09-24 08:27:42', '2020-09-23 07:16:35'),
(90, NULL, '152079499230', 344, 2, 'Check job process', 'Hi. I’m looking for a person or team who can finalize my app', 5, NULL, 334, 'def50200dd92f5375dd2032111253d8b3db904c01f7004efc5ea29aa895eadd23a9cb31731b93f710ffbd08dd3c41abbfaf59c12a770dbf7d936480b2a7a456661e9e83c0911adedfceb586ef6c6b07fd76a2f86704367559a006f6ded', 'Iron', '3DX', '5mm', NULL, '3D Print', 'yellow', NULL, 'Gerald K Myers', 1000, '\"Express Shipping\"', '123456', NULL, 10, '[]', '443b7737aea9be7cec6b27bedb68935e', 0, 9, 0, '2020-09-23 08:18:01', '2020-09-23 08:19:28', '2020-09-23 08:18:17', '', '22222', 0, '2020-09-23 08:16:22', '2020-09-23 07:53:54'),
(91, NULL, '115260875136', 344, 12, 'Test Subject', 'Test Description', NULL, NULL, 406, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Test Name', 0, '\"Express Shipping, Slow Beat Shipping\"', 'Test Location', NULL, 0, '[\"1600845488IMG_20200915_0947404369346768613497542.jpg\",\"1600845488IMG_20200904_150034.jpg\",\"1600845488IMG_20200904_150027.jpg\"]', '09661b9dd3a521e0009f88ce9b571086', 0, 0, 0, '', '', '', '', '', 0, '2020-09-23 10:18:08', '2020-09-23 10:18:08'),
(92, NULL, '99252421744', 344, 12, 'Test Subject', 'Test Description', NULL, NULL, 406, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Test Name', 0, '\"Express Shipping, Slow Beat Shipping\"', 'Test Location', NULL, 0, '[\"1600845512IMG_20200915_0947404369346768613497542.jpg\",\"1600845512IMG_20200904_150034.jpg\",\"1600845512IMG_20200904_150027.jpg\"]', '96d014b203f989b260d3ec6a672398c4', 0, 0, 0, '', '', '', '', '', 0, '2020-09-23 10:18:32', '2020-09-23 10:18:32'),
(93, NULL, '46424648492', 344, 7, 'Test1', 'Test Content', NULL, NULL, 372, NULL, 'PVC', '3DX', NULL, 'Grid: Strong 2D infill.', '3D Print', 'Silver', 'Silver', 'Test Name', 0, '\"Express Shipping\"', 'Test Location', NULL, 0, '[\"1600849948IMG_20200904_150027.jpg\",\"1600849948IMG_20200915_0912421543800292251039947.jpg\"]', '132cf16e568a496f557390303e12d98e', 0, 0, 0, '', '', '', '', '', 0, '2020-09-23 11:32:28', '2020-09-23 11:32:28'),
(94, NULL, '16009254060', 344, 2, 'Check job process 1', 'Description here', 2, NULL, 334, NULL, 'Iron', '3DX', '5mm', NULL, '3D Print', 'yellow', NULL, 'Gerald K Myers', 100, '\"Express Shipping\"', '1111', NULL, 10, '[]', 'f7f492d9fc3d0a419e0ce1e647a5c548', 0, 4, 0, '2020-09-24 10:20:32', '', '2020-09-24 10:21:49', '', 'ABCD1234', 0, '2020-09-24 10:14:05', '2020-09-24 08:30:06'),
(95, NULL, '153689606400', 344, 2, 'Check API process 2', 'Desc', 3, NULL, 334, 'def502000f49d64b626f2fb0f0f645d29b8cbe6875f87f8642d041365996e88740f3200867fdc9bae76063d0bf9857009bcd85065404e70871cac089577fb96ac3b9204a0a7b3f34da60758bb3081d5ce8bda4d2d27c18eabceb41a588', 'Iron', '3DX', '5mm', NULL, '3D Print', 'yellow', NULL, 'Gerald K Myers', 100, '\"Express Shipping\"', '1111', NULL, 10, '[]', '7b8aa2e7cace3121efd63495ac717373', 0, 9, 0, '2020-09-24 14:07:41', '2020-09-24 14:30:51', '2020-09-24 14:19:13', '', '11111', 0, '2020-09-24 13:37:56', '2020-09-24 10:43:20'),
(96, NULL, '102459789504', 344, 2, 'check job android', 'shhdhdhd', 1, NULL, 334, NULL, 'Steel', '3DX', '5mm', NULL, '3D Print', 'yellow', 'yellow', 'pgong', 1111, '\"Express Shipping\"', '111111', NULL, 11, '[\"160093421120200916_205636.jpg\",\"1600934211Screenshot_20200923-111210_iTro.jpg\"]', '547e6337f2df3fd8a6a1f5287254cfec', 0, 2, 0, '', '', '', '', '', 0, '2020-09-29 11:49:42', '2020-09-24 10:56:51'),
(97, NULL, '60837947750', 344, 2, 'Check job process #3', 'Desc here', 5, NULL, 334, NULL, 'Iron', '3DX', '5mm', NULL, '3D Print', 'yellow', NULL, 'Gerald K Myers', 1000, '\"Slow Boat Shipping\"', '111111', NULL, 10, '[\"1600998625file1.jpg\",\"1600998625file2.jpg\"]', 'b42ac02ecff612ecb0541fbacc913460', 0, 2, 0, '', '', '', '', '', 0, '2020-09-25 04:58:43', '2020-09-25 04:50:25'),
(98, NULL, '52833035838', 344, 2, 'Check job process #4', 'Đefdfgfgfg', 3, NULL, 334, NULL, 'Plastic', '3DX', '5mm', NULL, '3D Print', 'yellow', NULL, 'Gerald K Myers', 100, '\"Express Shipping\"', '111111', NULL, 10, '[]', 'adc430cd937d5a94941fb4492ba29bc3', 0, 10, 0, '', '', '', '', '', 0, '2020-09-29 10:34:37', '2020-09-25 05:31:26'),
(99, NULL, '65651752332', 344, 2, 'Check job process #5', 'Desc', 3, NULL, 334, NULL, 'Steel', '3DX', '5mm', NULL, '3D Print', 'yellow', NULL, 'Gerald K Myers', 10, '\"Express Shipping\"', '111111', NULL, 2, '[]', '0a96e10eb697b5731757fba1dcd7db8b', 0, 10, 0, '', '', '', '', '', 0, '2020-09-29 10:19:06', '2020-09-28 06:04:12'),
(100, NULL, '20817522258', 344, 2, 'Check job process 7', 'Đàng', 1, NULL, 334, 'def5020010aa356d8b04ef896daa6fd4b2a4ebc599626ddfe176574c87853021c08fa3f2fd12f870e3ecb650c65bf441dd8204b73031d7ce596d3a05b8e7aa24e3f74d753e318116f986dcc252ffc1769f9109cb', 'Iron', '3DX', '5mm', NULL, '3D Print', 'yellow', NULL, 'Gerald K Myers', 100, '\"Express Shipping\"', '111111', NULL, 1, '[]', 'eb038a1c18ba1bb6a305d640d40e8751', 0, 2, 0, '2020-09-29 11:25:20', '2020-09-29 11:44:00', '2020-09-29 11:38:10', '', '11111', 0, '2020-09-30 19:48:13', '2020-09-29 05:51:06'),
(101, NULL, '68858704073', 344, 2, 'Job 8', 'Fdfgfgf', 1, NULL, 334, NULL, 'Iron', '3DX', '5mm', NULL, '3D Print', 'yellow', NULL, 'Gerald K Myers', 10, '\"Express Shipping\"', '111111', NULL, 1, '[]', '8131397452e6ae9d8b690efff56f148b', 0, 2, 0, '', '', '', '', '', 0, '2020-09-29 10:41:09', '2020-09-29 10:40:11'),
(102, NULL, '91278261627', 344, 2, 'Job number 9', 'Fdfdfd', 4, NULL, 334, NULL, 'Iron', '3DX', '5mm', NULL, NULL, NULL, NULL, 'Gerald K Myers', 120, '\"Express Shipping\"', '111111\n222222', NULL, 10, '[]', 'ca90b7ada016c1c813e4f7f36e67759c', 0, 2, 0, '', '', '', '', '', 0, '2020-09-29 12:55:08', '2020-09-29 12:50:11'),
(103, NULL, '41637264448', 344, 2, 'Check job 10', 'Dsfdfdfd', 1, NULL, 334, 'def50200278d02ff6f6b68a380925ae53e681ef21f49271c53bf8511c765d7fabde9fbc1da94540cf66c88e54f20091451f6605320f98d0f69319c846a748a318935d95e31a063192e69776222db9272bc137e84074359f4db9992df14e96301429fce', 'Iron', '3DX', '5mm', NULL, '3D Print', 'yellow', NULL, 'Gerald K Myers', 100, '\"Express Shipping\"', '11111\n2222\n3333', NULL, 1, '[]', 'ebff15a0122e3d73b86e4181fac142d2', 0, 9, 0, '2020-09-30 05:50:34', '2020-09-30 05:54:22', '2020-09-30 05:52:16', '', '11111', 0, '2020-09-30 05:40:19', '2020-09-30 05:34:08'),
(104, NULL, '86477549940', 344, 2, 'Check job push notification', 'Dessss', 20, NULL, 334, NULL, 'Iron', '3DX', '5mm', NULL, '3D Print', 'yellow', NULL, 'Gerald K Myers', 300, '\"Express Shipping\"', '11111\n2222\n3333', NULL, 30, '[]', '3eff8cc07e5e43e327eb9cd409d1bde4', 0, 2, 0, '', '', '', '', '', 0, '2020-09-30 12:57:30', '2020-09-30 06:21:50'),
(105, NULL, '73666128772', 344, 2, 'Test', 'Testoooookjjhh.   Hhhhhhhgh\n\n\nHhjkkkkkk\n\n\n\nHggjjgghjjkk\n\n\n\nHjjgjhyuhyuujh\n\n\n\nYyhggjfhhh', 20, NULL, 334, NULL, 'Steel', '3DX', '5mm', NULL, '3D Print', 'yellow', NULL, 'Gerald K Myers', 250, '\"Express Shipping,Slow Boat Shipping\"', '53 clung \n\n\nTest\n\nTest\n\n\nTest\n\n\nTest\n\nTest\n\n\nTest\n\nTest', NULL, 30, '[\"1601437582file1.jpg\",\"1601437582file2.jpg\"]', 'e56051d95deac20051bdc7b3c5787f4f', 0, 2, 0, '', '', '', '', '', 0, '2020-09-30 12:44:52', '2020-09-30 06:46:22'),
(106, NULL, '57652566156', 344, 2, 'Tesst 20', 'Test desc', 18, NULL, 334, NULL, 'Iron', '3DX', '5mm', NULL, '3D Print', 'yellow', 'yellow', 'Gerald K Myers', 200, '\"Express Shipping\"', '11111\n2222\n3333', NULL, 15, '[\"1601460171IMG_20200915_0912421543800292251039947.jpg\"]', '391a763705d9e07578c964297bd8bae2', 0, 2, 0, '', '', '', '', '', 0, '2020-09-30 13:04:21', '2020-09-30 13:02:51'),
(107, NULL, '112102226180', 344, 7, 'Test 21', 'tesst desc', NULL, NULL, 372, NULL, 'PVC', '3DX', NULL, 'Grid: Strong 2D infill.', '3D Print', 'Silver', 'Silver', 'Gerald K Myers', 0, '\"Express Shipping\"', '11111\n2222\n3333', NULL, 0, '[]', '17ec2965d2722a34b5c7062f735be8a6', 0, 0, 0, '', '', '', '', '', 0, '2020-09-30 13:06:14', '2020-09-30 13:06:14'),
(108, NULL, '136124137315', 344, 2, 'Test 22', 'fdsefsef', 20, NULL, 334, NULL, 'Iron', '3DX', '5mm', NULL, '3D Print', 'yellow', 'yellow', 'Gerald K Myers', 110, '\"Express Shipping\"', '11111\n2222\n3333', NULL, 10, '[]', 'f8973866684e3690828d167c3e9142de', 0, 2, 0, '', '', '', '', '', 0, '2020-09-30 13:08:05', '2020-09-30 13:07:19'),
(109, NULL, '20818987293', 344, 2, 'Test 23', 'sfsrferf', 12, NULL, 334, NULL, 'Iron', '3DX', '5mm', NULL, '3D Print', 'yellow', 'yellow', 'Gerald K Myers', 100, '\"Express Shipping\"', '11111\n2222\n3333', NULL, 15, '[]', '957b64abeaaee89b1366784dcf58a71b', 0, 2, 0, '', '', '', '', '', 0, '2020-09-30 13:10:21', '2020-09-30 13:09:21'),
(110, NULL, '121722529024', 344, 2, 'Job push noti 1', 'Jdjdbhd', 3, NULL, 334, NULL, 'Iron', '3DX', '5mm', NULL, '3D Print', 'yellow', NULL, 'Gerald K Myers', 1000, '\"Express Shipping\"', '11111\n2222\n3333', NULL, 10, '[]', 'dd1d9ee0e8e9aa741ec8899031e3d04e', 0, 1, 0, '', '', '', '', '', 0, '2020-10-02 07:18:04', '2020-10-02 07:17:04'),
(111, NULL, '88089229965', 344, 2, 'Check job push 2', '11111', 1, NULL, 334, NULL, 'Steel', NULL, NULL, NULL, NULL, NULL, NULL, 'Gerald K Myers', 1, '\"\"', '11111\n2222\n3333', NULL, 1, '[]', '25e9f80f156f2244dfc327fb75625eb7', 0, 1, 0, '', '', '', '', '', 0, '2020-10-02 10:24:30', '2020-10-02 10:06:03'),
(112, NULL, '102520454912', 344, 2, 'Job push 1', 'Jsjdbdh', 11, NULL, 334, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gerald K Myers', 1000, '\"\"', '11111\n2222\n3333', NULL, 11, '[]', '13f0b19e4791736b0b7e317873d5cd6e', 0, 1, 0, '', '', '', '', '', 0, '2020-10-05 10:15:25', '2020-10-05 10:15:08'),
(113, NULL, '148975077522', 344, 2, 'Job push 2', 'Jsjdbndjdp', 1, NULL, 334, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gerald K Myers', 100, '\"\"', '11111\n2222\n3333', NULL, 1, '[]', '6a8671ca6e58118b13c4a31635d676c4', 0, 1, 0, '', '', '', '', '', 0, '2020-10-05 10:24:03', '2020-10-05 10:22:34'),
(114, NULL, '102520503104', 344, 2, 'Job push 3', 'Hdhhdhdbd', 1, NULL, 334, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gerald K Myers', 1000, '\"\"', '11111\n2222\n3333', NULL, 1, '[]', 'f21426ce39b2d8e947d9c58af87d57e5', 0, 2, 0, '', '', '', '', '', 0, '2020-10-05 10:50:57', '2020-10-05 10:27:41'),
(115, NULL, '52862297334', 344, 2, 'Job push 6', 'Hshhdbd', 1, NULL, 334, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gerald K Myers', 1000, '\"\"', '11111\n2222\n3333', NULL, 1, '[]', 'f81b56662c188879c67e275084587810', 0, 1, 0, '', '', '', '', '', 0, '2020-10-05 11:50:10', '2020-10-05 11:49:58'),
(116, NULL, '108928373324', 344, 2, 'Job push 7', 'Jsjdbnđjd', 1, NULL, 334, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gerald K Myers', 1000, '\"\"', '11111\n2222\n3333', NULL, 1, '[]', 'b2f24a5f8e26a88efb96b23fa4edb699', 0, 1, 0, '', '', '', '', '', 0, '2020-10-05 11:51:05', '2020-10-05 11:50:43'),
(117, NULL, '100918942866', 344, 2, 'Job push 8', 'Hdhdhhdhdo', 1, NULL, 334, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gerald K Myers', 1000, '\"\"', '11111\n2222\n3333', NULL, 1, '[]', 'c933b2caee5f5e9595dbe5fce777c48c', 0, 1, 0, '', '', '', '', '', 0, '2020-10-05 11:53:18', '2020-10-05 11:53:02'),
(118, NULL, '22426435878', 344, 2, 'Jib push 9', 'Hdhdhd', 1, NULL, 334, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gerald K Myers', 1, '\"\"', '11111\n2222\n3333', NULL, 1, '[]', '78d891b4b05fb46fee452c47db763d89', 0, 1, 0, '', '', '', '', '', 0, '2020-10-05 11:58:05', '2020-10-05 11:57:57'),
(119, NULL, '107326556434', 344, 2, 'Push 11', 'Hhsbsb', 1, NULL, 334, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gerald K Myers', 100, '\"\"', '11111\n2222\n3333', NULL, 1, '[]', '5894f2cb846a2bdefb325275bc899299', 0, 2, 0, '', '', '', '', '', 0, '2020-10-05 12:56:04', '2020-10-05 12:08:22'),
(120, NULL, '110530440636', 344, 2, 'Push 11', 'Jsjdjdj', 1, NULL, 334, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gerald K Myers', 100, '\"\"', '11111\n2222\n3333', NULL, 1, '[]', '674825f0a53e765068348256b37ba07c', 0, 4, 0, '2020-10-05 12:57:14', '', '2020-10-05 13:00:46', '', '11111', 0, '2020-10-05 12:53:35', '2020-10-05 12:34:04'),
(121, NULL, '78497927039', 344, 2, 'Test notification', 'Test noti', 10, NULL, 334, NULL, 'Iron', '3DX', '5mm', NULL, '3D Print', 'yellow', 'yellow', 'Gerald K Myers', 150, '\"Express Shipping\"', '11111\n2222\n3333', NULL, 20, '[]', '0740ef50ee66cba24e33f34b5ad12565', 0, 3, 0, '2020-10-13 04:05:41', '', '', '', '', 0, '2020-10-06 18:44:43', '2020-10-06 18:35:11'),
(122, NULL, '68909569676', 379, 2, 'test', 'hello ghjmmbbhjnnnjkkkkkmmmmmmmmmmm', 3, NULL, 334, NULL, 'Iron', '3DX', '5mm', NULL, '3D Print', 'yellow', 'yellow', 'Lawrence Bass', 18.2, '\"Express Shipping\"', 'teat', NULL, 15, '[\"1602548132IMG_20201012_124944.jpg\"]', '9c8aac496fda78860f4ff84533477680', 0, 10, 0, '', '', '', '', '', 0, '2020-10-13 03:27:52', '2020-10-13 03:15:32'),
(123, NULL, '32051027900', 379, 2, 'Test', 'Ttffhhhhhhj', 8, NULL, 334, NULL, 'Steel', '3DX', '5mm', NULL, '3D Print', 'yellow', NULL, 'Lawrence Bass', 18.2, '\"Slow Boat Shipping\"', 'def50200cb0eff59b9d3567d209023abff1b0058455e06a0cd489ce6b29b252f8988bf2a0604dbd5d4e1d714ca6c8652b3164cf348164d5070914f4e71a0af42c36e9d3e1ee7881d34dd43f96fa0193587faf38bd39e40bb7283446d619694d851a652d68c2fd64e', NULL, 15, '[\"1602551395file1.jpg\"]', 'c5aece4da59871d13c61f18053ee18cc', 0, 1, 0, '', '', '', '', '', 0, '2020-10-13 04:10:41', '2020-10-13 04:09:55'),
(124, NULL, '91346048079', 344, 2, 'Check job 1', 'Fdfdfdfdfdfdfd', 1, NULL, 334, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gerald K Myers', 1000, '\"Express Shipping\"', '111111', NULL, 1, '[]', 'dd6b2c9002688706cdd97b4e3777f983', 0, 10, 0, '', '', '', '', '', 0, '2020-10-13 12:08:37', '2020-10-13 07:10:47'),
(125, NULL, '33653819787', 344, 2, 'job 2l', 'hwhshso', 1, NULL, 334, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gerald K Myers', 100, '\"Express Shipping\"', '111111', NULL, 1, '[]', '939e5f0b810793eb5b0f541a545ee280', 0, 10, 0, '', '', '', '', '', 0, '2020-10-13 07:30:57', '2020-10-13 07:20:47'),
(126, NULL, '57692278476', 344, 2, 'Check job with image', 'Aknfkdnkfd', NULL, NULL, 334, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gerald K Myers', 0, '\"\"', '111111', NULL, 0, '[\"1602563291file1.jpg\",\"1602563291file2.jpg\",\"1602563291file3.jpg\"]', '1d1b51dde8b8db15723df35ed0eaa606', 0, 0, 0, '', '', '', '', '', 0, '2020-10-13 07:28:11', '2020-10-13 07:28:11'),
(127, NULL, '150640952550', 344, 2, 'job with image android', 'hshgsgsgs', NULL, NULL, 334, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gerald K Myers', 0, '\"Express Shipping\"', '111111', NULL, 0, '[\"1602563325Screenshot_20201013-112116_One UI Home.jpg\",\"1602563325Screenshot_20201013-112022_Connecto3D.jpg\",\"1602563325Screenshot_20201013-111939_Connecto3D.jpg\"]', '54fb18f3e11f35343417aa016cdcca85', 0, 0, 0, '', '', '', '', '', 0, '2020-10-13 07:28:45', '2020-10-13 07:28:45'),
(128, NULL, '17628213042', 344, 2, 'Test image', 'image', 1, NULL, 334, NULL, 'Iron', '3DX', '5mm', NULL, '3D Print', 'yellow', 'yellow', 'Gerald K Myers', 1000, '\"Express Shipping\"', '111111', NULL, 1, '[\"1602564822IMG_20200915_0947404369346768613497542.jpg\"]', '28694501a4650ce00bbaef771c7770b2', 0, 2, 0, '', '', '', '', '', 0, '2020-10-13 08:06:45', '2020-10-13 07:53:42'),
(129, NULL, '67308585792', 449, 2, 'test fiel', 'sbsbsb', NULL, NULL, 334, NULL, 'Steel', '3DX', '5mm', NULL, '3D Print', 'yellow', 'yellow', 'Quang Truong Bui', 0, '\"Express Shipping\"', 'def5020042181f271c97c8ac3080276c4a63d0dcd9aa7578a1225c986456ddca72f7f4df537b19b513d2881bb98ce0a525d99b014c69d1de75ba8a60d954c822a4005d271a8f83e8b7e2907469ef0922ecb51962', NULL, 0, '[\"1602585376Screenshot_2020-10-06-18-50-30.png\"]', 'f4beeed85678fad6c64ac1cafbbadf99', 0, 0, 0, '', '', '', '', '', 0, '2020-10-13 13:36:16', '2020-10-13 13:36:16'),
(130, NULL, '19231064088', 449, 2, 'dghshs', 'hshshsjs', NULL, NULL, 334, NULL, 'Iron', '3DX', '5mm', NULL, '3D Print', 'yellow', 'yellow', 'Quang Truong Bui', 0, '\"Express Shipping\"', 'def5020042181f271c97c8ac3080276c4a63d0dcd9aa7578a1225c986456ddca72f7f4df537b19b513d2881bb98ce0a525d99b014c69d1de75ba8a60d954c822a4005d271a8f83e8b7e2907469ef0922ecb51962', NULL, 0, '[\"1602588674NT BrSE - JD EN.pdf\"]', '4c1994bcdc98b2788ff08158aa867889', 0, 0, 0, '', '', '', '', '', 0, '2020-10-13 14:31:14', '2020-10-13 14:31:14'),
(131, NULL, '83334677868', 449, 2, 'Test1', 'ahahah', NULL, NULL, 334, NULL, 'Steel', '3DX', '5mm', NULL, '3D Print', 'yellow', 'yellow', 'Quang Truong Bui', 0, '\"Express Shipping\"', 'def5020042181f271c97c8ac3080276c4a63d0dcd9aa7578a1225c986456ddca72f7f4df537b19b513d2881bb98ce0a525d99b014c69d1de75ba8a60d954c822a4005d271a8f83e8b7e2907469ef0922ecb51962', NULL, 0, '[\"1602589959Screenshot_2020-10-06-18-50-30.png\"]', 'ea5a21fb7260ff35fd075643deadb396', 0, 0, 0, '', '', '', '', '', 0, '2020-10-13 14:52:39', '2020-10-13 14:52:39'),
(132, NULL, '108976121904', 449, 2, 'test 2', 'zbzb', NULL, NULL, 334, NULL, 'Steel', '3DX', '5mm', NULL, '3D Print', 'yellow', 'yellow', 'Quang Truong Bui', 0, '\"Express Shipping\"', 'def5020042181f271c97c8ac3080276c4a63d0dcd9aa7578a1225c986456ddca72f7f4df537b19b513d2881bb98ce0a525d99b014c69d1de75ba8a60d954c822a4005d271a8f83e8b7e2907469ef0922ecb51962', NULL, 0, '[\"1602590028IMG_20201004_082746.jpg\"]', 'ed854f72245c100584c2ccda0335b1a3', 0, 0, 0, '', '', '', '', '', 0, '2020-10-13 14:53:48', '2020-10-13 14:53:48'),
(133, NULL, '72116554185', 449, 2, 'Test 3', 'wvzvzg', 15, NULL, 334, NULL, 'Plastic', '3DX', '5mm', NULL, '3D Print', 'yellow', 'yellow', 'Quang Truong Bui', 300, '\"Slow Boat Shipping\"', 'def5020042181f271c97c8ac3080276c4a63d0dcd9aa7578a1225c986456ddca72f7f4df537b19b513d2881bb98ce0a525d99b014c69d1de75ba8a60d954c822a4005d271a8f83e8b7e2907469ef0922ecb51962', NULL, 30, '[\"1602590093What Makes You Beautiful - One Direction.mp3\"]', 'eac2458cc976cd07c8b64a91f245c57b', 0, 1, 0, '', '', '', '', '', 0, '2020-10-15 04:58:15', '2020-10-13 14:54:53'),
(134, NULL, '70516348496', 449, 7, 'test', 'cc hjj', NULL, NULL, 372, NULL, 'PVC', '3DX', NULL, 'Grid: Strong 2D infill.', '3D Print', 'Silver', 'Silver', 'Quang Truong Bui', 0, '\"Express Shipping\"', 'def5020042181f271c97c8ac3080276c4a63d0dcd9aa7578a1225c986456ddca72f7f4df537b19b513d2881bb98ce0a525d99b014c69d1de75ba8a60d954c822a4005d271a8f83e8b7e2907469ef0922ecb51962', NULL, 0, '[\"1602644284IMG_20201002_174434.jpg\"]', 'fa468c2d16d187ef5649e72ed579ecb3', 0, 0, 0, '', '', '', '', '', 0, '2020-10-14 05:58:04', '2020-10-14 05:58:04'),
(135, NULL, '100966638717', 449, 7, 'trfgh', 'hh', NULL, NULL, 372, NULL, 'PVC', '3DX', NULL, 'Grid: Strong 2D infill.', '3D Print', 'Silver', 'Silver', 'Quang Truong Bui', 0, '\"Slow Boat Shipping\"', 'def5020042181f271c97c8ac3080276c4a63d0dcd9aa7578a1225c986456ddca72f7f4df537b19b513d2881bb98ce0a525d99b014c69d1de75ba8a60d954c822a4005d271a8f83e8b7e2907469ef0922ecb51962', NULL, 0, '[\"1602645059B612_20201002_121010_696.jpg\"]', 'e006c0097977bd59a417fbd3d0fba34d', 0, 0, 0, '', '', '', '', '', 0, '2020-10-14 06:10:59', '2020-10-14 06:10:59'),
(136, NULL, '104171990260', 449, 7, 'anh', 'dfgh', NULL, NULL, 372, NULL, 'PVC', '3DX', NULL, 'Grid: Strong 2D infill.', '3D Print', 'Silver', 'Silver', 'Quang Truong Bui', 0, '\"Express Shipping\"', 'def5020042181f271c97c8ac3080276c4a63d0dcd9aa7578a1225c986456ddca72f7f4df537b19b513d2881bb98ce0a525d99b014c69d1de75ba8a60d954c822a4005d271a8f83e8b7e2907469ef0922ecb51962', NULL, 0, '[\"1602646004B612_20201002_083521_786.jpg\"]', 'dc68eddbc34569a8c59eacc951bd2dba', 0, 0, 0, '', '', '', '', '', 0, '2020-10-14 06:26:44', '2020-10-14 06:26:44'),
(137, NULL, '157059432852', 344, 2, 'attach', 'uhshshs\n', NULL, NULL, 334, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gerald K Myers', 0, '\"Express Shipping\"', '111111', NULL, 0, '[\"1602647274Hoa Vo Sac - Jack_ K-ICM.mp3\"]', 'b7848743bc2f3179a241933502524561', 0, 0, 0, '', '', '', '', '', 0, '2020-10-14 06:47:54', '2020-10-14 06:47:54'),
(138, NULL, '112190375430', 379, 2, 'tesjjr', 'jjsjkkdkkkjd', 67, NULL, 334, NULL, 'Steel', '3DX', '5mm', NULL, '3D Print', 'yellow', 'yellow', 'Lawrence Bass', 18.2, '\"Slow Boat Shipping\"', 'def50200cb0eff59b9d3567d209023abff1b0058455e06a0cd489ce6b29b252f8988bf2a0604dbd5d4e1d714ca6c8652b3164cf348164d5070914f4e71a0af42c36e9d3e1ee7881d34dd43f96fa0193587faf38bd39e40bb7283446d619694d851a652d68c2fd64e', NULL, 15, '[]', '36313fab77bd272235b17793790b2b6c', 0, 1, 0, '', '', '', '', '', 0, '2020-10-15 03:03:36', '2020-10-15 02:54:09'),
(139, NULL, '33657220359', 379, 2, 'Testo', 'Yyyhhhgggfgggggghhhhhhhhhjjjhhjj', 23, NULL, 334, NULL, 'Steel', '3DX', '5mm', NULL, '3D Print', 'yellow', NULL, 'Lawrence Bass', 18.2, '\"Express Shipping\"', 'def50200cb0eff59b9d3567d209023abff1b0058455e06a0cd489ce6b29b252f8988bf2a0604dbd5d4e1d714ca6c8652b3164cf348164d5070914f4e71a0af42c36e9d3e1ee7881d34dd43f96fa0193587faf38bd39e40bb7283446d619694d851a652d68c2fd64e', NULL, 15, '[\"1602724779file1.jpg\",\"1602724779file2.jpg\"]', '20dd22be1d3313341be47f41b0bf1db0', 0, 1, 0, '', '', '', '', '', 0, '2020-10-15 04:21:18', '2020-10-15 04:19:39'),
(140, NULL, '75328336414', 449, 2, 'File test', 'bsbzh', NULL, NULL, 334, NULL, 'Steel', '3DX', '5mm', NULL, '3D Print', 'yellow', 'yellow', 'Quang Truong Bui', 0, '\"Express Shipping\"', 'def5020042181f271c97c8ac3080276c4a63d0dcd9aa7578a1225c986456ddca72f7f4df537b19b513d2881bb98ce0a525d99b014c69d1de75ba8a60d954c822a4005d271a8f83e8b7e2907469ef0922ecb51962', NULL, 0, '[\"1602730562VID_20201003_163200.mp4\"]', 'af52bd4f5b4e6d658b3eef22fc73f933', 0, 0, 0, '', '', '', '', '', 0, '2020-10-15 05:56:02', '2020-10-15 05:56:02'),
(141, NULL, '144247786200', 445, 2, 'Demo fb', 'Hsjsjdjp', 1, NULL, 334, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Phong Nguy?n Nam', 100, '\"Express Shipping\"', 'Hsnbdndnd', NULL, 1, '[]', 'b19ab9eec125898c573a8024e3b2ae80', 0, 1, 0, '', '', '', '', '', 0, '2020-10-15 12:13:19', '2020-10-15 12:13:00'),
(142, NULL, '108991108356', 384, 2, 'tesbbjjkkkkkkngghdjjjjhdhjjdjguhejjhdjjdjjdjjjjjjdjjjeikekskjdhggyejhueuduuueshjejjdjjjjdjjdjejjdjdjksjekkskekkekekkdkdk', 'jujdejdjjsjsjjsjsjjskkskkklllllllllmbdjdjjdjnnsnnsnkdkrkskkdkorknsjhhxkisbdgjshjmjgfvnnnejjsjjdjdjjjjdjenhrjjeejjejrjejjrkjdiidijdjdjdiiirrjririrdjjdjdjjdjjjs', 45, NULL, 334, NULL, 'Iron', '3DX', '5mm', NULL, '3D Print', 'yellow', 'yellow', 'Awa Francis', 18.2, '\"Express Shipping\"', '53 Cluny bnhhjkkjdjsjjsnhdbdndkmkskdmmdmdmdndmmdmdmdmdjdjjdjjdjdjjdjdjkdkdjjdjdjjdjdjjdk', NULL, 15, '[]', '9e53143f23cc49a8ca9510cc4ce9b853', 0, 1, 0, '', '', '', '', '', 0, '2020-10-16 04:21:07', '2020-10-16 04:06:57'),
(143, NULL, '56098414645', 384, 2, 'tesg', 'hhjkmmm', 6, NULL, 334, NULL, 'Steel', '3DX', '5mm', NULL, '3D Print', 'yellow', 'yellow', 'Awa Francis', 18.2, '\"Express Shipping\"', 'hjsjkdjdikksi', NULL, 15, '[]', 'e6c4c907836cae67f2ea628e64a23a6f', 0, 1, 0, '', '', '', '', '', 0, '2020-10-16 04:32:10', '2020-10-16 04:30:47'),
(144, NULL, '73729477948', 445, 2, 'job push android', 'gsbbhd', 6, NULL, 334, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Phong Nguy?n Nam', 888, '\"Express Shipping\"', 'hshhhshsns', NULL, 7, '[]', '90f48087515d812764497988460bf5a7', 0, 1, 0, '', '', '', '', '', 0, '2020-10-16 05:19:59', '2020-10-16 05:18:58'),
(145, NULL, '153870228000', 445, 2, 'job push 3', 'hhdudhdj', 9, NULL, 334, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Phong Nguy?n Nam', 99, '\"Express Shipping\"', 'bdhdh', NULL, 9, '[]', '425ad422216d4c3d51b6689a35f3166d', 0, 1, 0, '', '', '', '', '', 0, '2020-10-16 05:21:46', '2020-10-16 05:21:15'),
(146, NULL, '136239272535', 445, 2, 'Job push nsjjd', 'Sjjdjdjd', 9, NULL, 334, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Phong Nguy?n Nam', 999, '\"Express Shipping\"', 'Ndndnjdj', NULL, 9, '[]', 'b64d60a402b017b414b80afd17129fb3', 0, 1, 0, '', '', '', '', '', 0, '2020-10-16 05:23:35', '2020-10-16 05:22:51'),
(147, NULL, '121813999660', 449, 2, 'Test app notify', 'sdsdds', 20, NULL, 334, NULL, 'Iron', '3DX', '5mm', NULL, '3D Print', 'yellow', 'yellow', 'Quang Truong Bui', 500, '\"Express Shipping\"', 'def5020042181f271c97c8ac3080276c4a63d0dcd9aa7578a1225c986456ddca72f7f4df537b19b513d2881bb98ce0a525d99b014c69d1de75ba8a60d954c822a4005d271a8f83e8b7e2907469ef0922ecb51962', NULL, 50, '[\"1602815785IMG_20200915_0912421543800292251039947.jpg\"]', '75ef59bacd58c5723e3bbb412c6f6c2e', 0, 1, 0, '', '', '', '', '', 0, '2020-10-16 05:36:49', '2020-10-16 05:36:25'),
(148, NULL, '104183131780', 449, 2, 'Test 2', 'dfgdfg', 5, NULL, 334, NULL, 'Steel', '3DX', '5mm', NULL, '3D Print', 'yellow', 'yellow', 'Quang Truong Bui', 100, '\"Express Shipping\"', 'def5020042181f271c97c8ac3080276c4a63d0dcd9aa7578a1225c986456ddca72f7f4df537b19b513d2881bb98ce0a525d99b014c69d1de75ba8a60d954c822a4005d271a8f83e8b7e2907469ef0922ecb51962', NULL, 11, '[]', 'c3d955d132089a7406f930a7d4a5a13c', 0, 1, 0, '', '', '', '', '', 0, '2020-10-16 06:03:51', '2020-10-16 06:03:32'),
(149, NULL, '118608495444', 344, 2, 'Test 3', 'sdfsefs', 9, NULL, 334, NULL, 'Iron', '3DX', '5mm', NULL, '3D Print', 'yellow', 'yellow', 'Gerald K Myers', 121, '\"Express Shipping\"', '111111', NULL, 12, '[]', '9278db1dcb0a952cecd7372d51f58ef8', 0, 2, 0, '', '', '', '', '', 0, '2020-10-16 06:08:07', '2020-10-16 06:05:06'),
(150, NULL, '110594483400', 449, 2, 'test noti 4', 'cvb', 21, NULL, 334, NULL, 'Iron', '3DX', '5mm', NULL, '3D Print', 'yellow', 'yellow', 'Quang Truong Bui', 456, '\"Express Shipping\"', 'def5020042181f271c97c8ac3080276c4a63d0dcd9aa7578a1225c986456ddca72f7f4df537b19b513d2881bb98ce0a525d99b014c69d1de75ba8a60d954c822a4005d271a8f83e8b7e2907469ef0922ecb51962', NULL, 23, '[]', '0529ea99be6abc6ef1ad7e14e95cea32', 0, 1, 0, '', '', '', '', '', 0, '2020-10-16 06:23:45', '2020-10-16 06:23:20'),
(151, NULL, '33659192805', 449, 2, 'test noti 5', 'chj', 23, NULL, 334, NULL, 'Iron', '3DX', '5mm', NULL, '3D Print', 'yellow', 'yellow', 'Quang Truong Bui', 255, '\"Express Shipping\"', 'def5020042181f271c97c8ac3080276c4a63d0dcd9aa7578a1225c986456ddca72f7f4df537b19b513d2881bb98ce0a525d99b014c69d1de75ba8a60d954c822a4005d271a8f83e8b7e2907469ef0922ecb51962', NULL, 32, '[]', '9d63720b0aba289269a3bfb6da978af3', 0, 1, 0, '', '', '', '', '', 0, '2020-10-16 06:25:34', '2020-10-16 06:25:05'),
(152, NULL, '75332483835', 449, 2, 'test noti 6', 'cbjj', 5, NULL, 334, NULL, 'Iron', '3DX', '5mm', NULL, '3D Print', 'yellow', 'yellow', 'Quang Truong Bui', 100, '\"Express Shipping\"', 'def5020042181f271c97c8ac3080276c4a63d0dcd9aa7578a1225c986456ddca72f7f4df537b19b513d2881bb98ce0a525d99b014c69d1de75ba8a60d954c822a4005d271a8f83e8b7e2907469ef0922ecb51962', NULL, 10, '[]', 'ddd860cef16088c646dad60fe7139765', 0, 1, 0, '', '', '', '', '', 0, '2020-10-16 06:27:01', '2020-10-16 06:26:45');
INSERT INTO `jobs` (`id`, `tracking`, `job_id`, `user_id`, `service_id`, `subject`, `description`, `days`, `nda`, `freelancer_id`, `review`, `material`, `type`, `layer_height`, `infil`, `fininshings`, `color`, `postage`, `name`, `price`, `shipping_type`, `shipping`, `post_shipping`, `shipping_f`, `files`, `token`, `approved`, `status`, `payment`, `quality_assurances`, `completed_date`, `shipping_date`, `received_date`, `tracking_number`, `extra`, `updated_at`, `created_at`) VALUES
(153, NULL, '89757858736', 449, 2, 'test noti 8', 'ccgg', 10, NULL, 334, NULL, 'Steel', '3DX', '5mm', NULL, '3D Print', 'yellow', 'yellow', 'Quang Truong Bui', 200, '\"Express Shipping\"', 'def5020042181f271c97c8ac3080276c4a63d0dcd9aa7578a1225c986456ddca72f7f4df537b19b513d2881bb98ce0a525d99b014c69d1de75ba8a60d954c822a4005d271a8f83e8b7e2907469ef0922ecb51962', NULL, 20, '[]', '6d6a16a5dabab8d25ed0044d2e9c86b3', 0, 1, 0, '', '', '', '', '', 0, '2020-10-16 06:28:51', '2020-10-16 06:28:26'),
(154, NULL, '28850751864', 445, 2, 'hhshehhe', 'uệhehhejejej', 8, NULL, 334, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Phong Nguy?n Nam', 888, '\"Express Shipping\"', 'heheheh', NULL, 8, '[\"160281954820190624_203425.jpg\"]', '80f432ec5c6832172e12efd7b4fc3498', 0, 1, 0, '', '', '', '', '', 0, '2020-10-16 06:40:00', '2020-10-16 06:39:08'),
(155, NULL, '43276137597', 449, 2, 'test file', 'vsha', NULL, NULL, 334, NULL, 'Iron', '3DX', '5mm', NULL, '3D Print', 'yellow', 'yellow', 'Quang Truong Bui', 0, '\"Express Shipping\"', 'def5020042181f271c97c8ac3080276c4a63d0dcd9aa7578a1225c986456ddca72f7f4df537b19b513d2881bb98ce0a525d99b014c69d1de75ba8a60d954c822a4005d271a8f83e8b7e2907469ef0922ecb51962', NULL, 0, '[\"16028199112020-10-02-071350807.jpg\"]', 'd8c6e937af962d4de090334de4049284', 0, 0, 0, '', '', '', '', '', 0, '2020-10-16 06:45:11', '2020-10-16 06:45:11'),
(156, NULL, '36864869706', 449, 2, 'file 2', 'we', NULL, NULL, 334, NULL, 'Iron', '3DX', '5mm', NULL, '3D Print', 'yellow', 'yellow', 'Quang Truong Bui', 0, '\"Express Shipping\"', 'def5020042181f271c97c8ac3080276c4a63d0dcd9aa7578a1225c986456ddca72f7f4df537b19b513d2881bb98ce0a525d99b014c69d1de75ba8a60d954c822a4005d271a8f83e8b7e2907469ef0922ecb51962', NULL, 0, '[]', '970b69d9f01fbad1ca1081e80c89c4f9', 0, 0, 0, '', '', '', '', '', 0, '2020-10-16 06:53:42', '2020-10-16 06:53:42'),
(157, NULL, '40070524550', 449, 2, 'test fiel 3', 'hssh', NULL, NULL, 334, NULL, 'Steel', '3DX', '5mm', NULL, '3D Print', 'yellow', 'yellow', 'Quang Truong Bui', 0, '\"Express Shipping\"', 'def5020042181f271c97c8ac3080276c4a63d0dcd9aa7578a1225c986456ddca72f7f4df537b19b513d2881bb98ce0a525d99b014c69d1de75ba8a60d954c822a4005d271a8f83e8b7e2907469ef0922ecb51962', NULL, 0, '[\"1602820982MVIMG_20200305_152602.jpg\"]', '404273e957ede16574103803b35c3b14', 0, 0, 0, '', '', '', '', '', 0, '2020-10-16 07:03:02', '2020-10-16 07:03:02'),
(158, NULL, '118627211006', 379, 2, 'test', 'Hello test ', NULL, NULL, 334, NULL, 'Iron', '3DX', '5mm', NULL, '3D Print', 'yellow', 'yellow', 'Lawrence Bass', 0, '\"Express Shipping\"', 'def50200a186e6bec99e7e644658bf4861e574b32a8d04901db7ea8ecee5a3d347444b398eda0bf55d9874c7b120da74d287f8d6fa2a1f9236c1ea45282abb8c4133d9b366fa3d0ac5cc0372a67b865ac6d81003cf0b506b7d4e6bf20cba5a8cac84f9939891fe8ff73d02fa740f8ea596fae77a293543813bfd75cd883179af30117af0be98d09cc4557f493849fa5c8f4dd46f3a130ccf613246b1d0e31d8bbee382ec930b13209746d4ee10ed801b7110b7a38a25a83818b6f913249e622f32e9400d5f7e228deda7e4fb2a62613583bcc63af9c3532eb1ace2fc21071f60ba9417fc01d719df27a3a5fc1d6899e8ef697182c0ddacd42dc33458ee46916af7e8d58f56956d15237d1cfa3d15535ed52bf3fba0622b11b1227ef43a4813a656090674', NULL, 0, '[\"1603070419IMG_20200825_073633.jpg\"]', '1bcca3abea28921a34e2c58af58681f8', 0, 0, 0, '', '', '', '', '', 0, '2020-10-19 04:20:19', '2020-10-19 04:20:19'),
(159, NULL, '80153541050', 379, 2, 'Text', 'Testers', 3, NULL, 334, NULL, 'Iron', '3DX', '5mm', NULL, '3D Print', 'yellow', NULL, 'Lawrence Bass', 18.2, '\"Slow Boat Shipping\"', 'def50200cb0eff59b9d3567d209023abff1b0058455e06a0cd489ce6b29b252f8988bf2a0604dbd5d4e1d714ca6c8652b3164cf348164d5070914f4e71a0af42c36e9d3e1ee7881d34dd43f96fa0193587faf38bd39e40bb7283446d619694d851a652d68c2fd64e', NULL, 15, '[\"1603070821file1.jpg\"]', 'd7ed39a08fa684b3353e38799c7c71c5', 0, 1, 0, '', '', '', '', '', 0, '2020-10-19 04:27:50', '2020-10-19 04:27:01'),
(160, NULL, '121839591140', 344, 2, 'test', 'test ', 34, NULL, 334, NULL, 'Iron', '3DX', '5mm', NULL, '3D Print', 'yellow', 'yellow', 'Gerald K Myers', 18.2, '\"Slow Boat Shipping\"', '111111', NULL, 15, '[\"1603152515IMG_20200828_110338.jpg\"]', 'd86542a1bd204196ed9c37fd0657ec82', 0, 1, 0, '', '', '', '', '', 0, '2020-10-20 03:11:04', '2020-10-20 03:08:35'),
(161, NULL, '68936979037', 449, 2, 'test 1', 'sgsh', NULL, NULL, 334, NULL, 'Iron', '3DX', '5mm', NULL, '3D Print', 'yellow', 'yellow', 'Quang Truong Bui', 0, '\"Express Shipping\"', 'def5020042181f271c97c8ac3080276c4a63d0dcd9aa7578a1225c986456ddca72f7f4df537b19b513d2881bb98ce0a525d99b014c69d1de75ba8a60d954c822a4005d271a8f83e8b7e2907469ef0922ecb51962', NULL, 0, '[\"1603185559IMG_20200911_1438147305327667255421212.jpg\"]', '38da8ce4447141956e95d4c3e85c33ba', 0, 0, 0, '', '', '', '', '', 0, '2020-10-20 12:19:19', '2020-10-20 12:19:19'),
(162, NULL, '76953061776', 449, 2, 'test 3', 'fgh', NULL, NULL, 334, NULL, 'Iron', '3DX', '5mm', NULL, '3D Print', 'yellow', 'yellow', 'Quang Truong Bui', 0, '\"Express Shipping\"', 'def5020042181f271c97c8ac3080276c4a63d0dcd9aa7578a1225c986456ddca72f7f4df537b19b513d2881bb98ce0a525d99b014c69d1de75ba8a60d954c822a4005d271a8f83e8b7e2907469ef0922ecb51962', NULL, 0, '[]', '45f91887db26e9d7b78f1b4f06ba4e91', 0, 0, 0, '', '', '', '', '', 0, '2020-10-20 13:13:07', '2020-10-20 13:13:07'),
(163, NULL, '46492521716', 449, 2, 'test 4', 'w vsva', NULL, NULL, 334, NULL, 'Plastic', '3DX', '5mm', NULL, '3D Print', 'yellow', 'yellow', 'Quang Truong Bui', 0, '\"Express Shipping\"', 'def5020042181f271c97c8ac3080276c4a63d0dcd9aa7578a1225c986456ddca72f7f4df537b19b513d2881bb98ce0a525d99b014c69d1de75ba8a60d954c822a4005d271a8f83e8b7e2907469ef0922ecb51962', NULL, 0, '[\"16031904042020-10-02-075239034.jpg\"]', '3cbf3f3ce4b3aed7f7f227f615b16a9a', 0, 0, 0, '', '', '', '', '', 0, '2020-10-20 13:40:04', '2020-10-20 13:40:04'),
(164, NULL, '136271275545', 449, 2, ' tét 6', 'gagga', NULL, NULL, 334, NULL, 'Steel', '3DX', '5mm', NULL, '3D Print', 'yellow', 'yellow', 'Quang Truong Bui', 0, '\"Express Shipping\"', 'def5020042181f271c97c8ac3080276c4a63d0dcd9aa7578a1225c986456ddca72f7f4df537b19b513d2881bb98ce0a525d99b014c69d1de75ba8a60d954c822a4005d271a8f83e8b7e2907469ef0922ecb51962', NULL, 0, '[\"16031914772020-10-02-075239034.jpg\"]', 'cda8e6fe7f2fd41ad3cb8f2b4873a226', 0, 0, 0, '', '', '', '', '', 0, '2020-10-20 13:57:57', '2020-10-20 13:57:57'),
(165, NULL, '17635723314', 445, 2, 'yvycy', 'ycycyy', 1, NULL, 334, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Phong Nguy?n Nam', 1000, '\"Express Shipping\"', 'yvyvy hvuvu', NULL, 1, '[\"160324757420190303_115947.jpg\"]', '3e4467e0ee1f2e58802f65db029f73f1', 0, 1, 0, '', '', '', '', '', 0, '2020-10-21 05:40:59', '2020-10-21 05:32:54'),
(166, NULL, '38477946840', 445, 2, 'vbhhhhggg', 'ywywhehehhehev hegge', NULL, NULL, 334, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Phong Nguy?n Nam', 0, '\"Express Shipping\"', 'yehshehhejhe. hehehe', NULL, 0, '[\"160324778520190303_134615.jpg\"]', 'f358a2226bbc49943709762ec506dc88', 0, 0, 0, '', '', '', '', '', 0, '2020-10-21 05:36:25', '2020-10-21 05:36:25'),
(167, NULL, '25651968640', 445, 2, 'iêje', 'jejejeh', NULL, NULL, 334, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Phong Nguy?n Nam', 0, '\"Express Shipping\"', 'bshshhs', NULL, 0, '[]', 'e9218400cb61b705743b2d48a350fd08', 0, 0, 0, '', '', '', '', '', 0, '2020-10-21 05:40:40', '2020-10-21 05:40:40'),
(168, NULL, '19239099960', 344, 2, '111', '222', NULL, NULL, 334, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gerald K Myers', 0, '\"Express Shipping\"', '111111', NULL, 0, '[\"1603258330file1.docx\"]', '630ebf7d82c16dd92a67a8cf5fdb5853', 0, 0, 0, '', '', '', '', '', 0, '2020-10-21 08:32:10', '2020-10-21 08:32:10'),
(169, NULL, '134687201460', 379, 2, 'test', 'teast', NULL, NULL, 334, NULL, 'Iron', '3DX', '5mm', NULL, '3D Print', 'yellow', 'yellow', 'Lawrence Bass', 0, '\"Express Shipping\"', 'def50200a186e6bec99e7e644658bf4861e574b32a8d04901db7ea8ecee5a3d347444b398eda0bf55d9874c7b120da74d287f8d6fa2a1f9236c1ea45282abb8c4133d9b366fa3d0ac5cc0372a67b865ac6d81003cf0b506b7d4e6bf20cba5a8cac84f9939891fe8ff73d02fa740f8ea596fae77a293543813bfd75cd883179af30117af0be98d09cc4557f493849fa5c8f4dd46f3a130ccf613246b1d0e31d8bbee382ec930b13209746d4ee10ed801b7110b7a38a25a83818b6f913249e622f32e9400d5f7e228deda7e4fb2a62613583bcc63af9c3532eb1ace2fc21071f60ba9417fc01d719df27a3a5fc1d6899e8ef697182c0ddacd42dc33458ee46916af7e8d58f56956d15237d1cfa3d15535ed52bf3fba0622b11b1227ef43a4813a656090674', NULL, 0, '[\"1603419057app-debug (8).apk\"]', '9c99e31b100dba924c0f6951d7218985', 0, 0, 0, '', '', '', '', '', 0, '2020-10-23 05:11:05', '2020-10-23 05:11:05'),
(170, NULL, '75360725571', 379, 2, 'jjio', 'hj', NULL, NULL, 334, NULL, 'Iron', '3DX', '5mm', NULL, '3D Print', 'yellow', 'yellow', 'Lawrence Bass', 0, '\"Express Shipping\"', 'def50200a186e6bec99e7e644658bf4861e574b32a8d04901db7ea8ecee5a3d347444b398eda0bf55d9874c7b120da74d287f8d6fa2a1f9236c1ea45282abb8c4133d9b366fa3d0ac5cc0372a67b865ac6d81003cf0b506b7d4e6bf20cba5a8cac84f9939891fe8ff73d02fa740f8ea596fae77a293543813bfd75cd883179af30117af0be98d09cc4557f493849fa5c8f4dd46f3a130ccf613246b1d0e31d8bbee382ec930b13209746d4ee10ed801b7110b7a38a25a83818b6f913249e622f32e9400d5f7e228deda7e4fb2a62613583bcc63af9c3532eb1ace2fc21071f60ba9417fc01d719df27a3a5fc1d6899e8ef697182c0ddacd42dc33458ee46916af7e8d58f56956d15237d1cfa3d15535ed52bf3fba0622b11b1227ef43a4813a656090674', NULL, 0, '[\"160341969320190107_163456.mp4\"]', '0ca5829a5c164efc2ad8307507006b10', 0, 0, 0, '', '', '', '', '', 0, '2020-10-23 05:21:33', '2020-10-23 05:21:33'),
(171, NULL, '107714214079', 344, 2, 'def50200c87f4a9e887b9a18ba2dedbb495115a9d08333a5259775fbd82061a7af632434204e5b0bcb99f57da551efebb1899173fbeacff46283490d832c4d483075d100de71751cfab4e4bfa3a7a03ee1a8dfc7293da1db0566b4', 'def50200518158fc81f1633b529188abb8c4d5c1d03c8fdc7ef49a8012f69bc6c7bff7ac7aa31756014b0da9c64747286542862ce4e8a219c288174cebf32ac47557be44f7ddbe8b6944977f8939f652f3cac4502cc3a9d4b353aeb070200e', NULL, NULL, 334, NULL, 'def502000b14fdfaacb7e8e5a6d1ab3f90517e0b62a6c5ec8e09ce3bb7148eb5499d9eeafa9f9240a44bd936ccf1d87e572f5c2cca56d78432a1e6e29c1e4c7a7913540adfb68cdcb216d387a9701a0538a1447874128bfc', 'def502004b32f30e4a016e306baaa444cfba623b03b160349c4b4f13554851243ac5e479682d2531d6ab05a26730b6141e46fba1bd064c32a656912dd961196c6d820c3c4d8e8e31338fa87cccacf25076a269c2ab1c0b', 'def502002e166dc1b0d0fa56caf603ca14e36310054b9fb8655a560053a9c9ab3b612a98f193d628db2aa495a1b356b5deddffded82c574a0a1fb01a4315b9f4b5ebc9f33436f642c59b1252eaac1a0425f78832a30198', NULL, 'def50200b11c6b33dd295559c898d7155f39a6aa50eac2856a6bdcefd1d8d1b41c66e24507227c8a6b3254e91188ee2165f7b1f72ac335bfa45ac0007fc95cad4fc657dae55775281c704f9ebbdd2321264fc7f02ad8291b2b6d5704', 'def50200c360c8123cc3cbefde2925c0a582b2d35496ce797d1ab634a8fe98294cfd0af951f04dce6e74893df28153da6257e2272e620b6d718abba2f528a2ad2b048f5cb500efda7afb90012bee9274d768e95c62ed054c8188', NULL, 'def5020093bb7f08825a87e817e01c4878587e657e749901d6ad58c0d30c9ec5d0d17f0a3ff262178cbe940dd87bbc363fa244929ccfb9db093f31486ebcb5447456caf5b2033242c9c68bce4c54c17050677e61fc0864cdc0b2', 0, 'Express Shipping', 'def50200588a74af3cd6c6aada864c524ce73d4da2db504c796dca8380155d3dacb1d16b8c95d4c48dfb179e25561649e10e6b4428fb4ae54ccef5154ecc82f22488d0336af7d0d3665289c9f5d833a994ce19105710bb25f22d', 'def5020029ca53c4318c07e3917a0647398baa25d5bf0fe615e9349d857b9cf9d5150e939d69a5899fbde109399de67d60eeaba2aeb5eaca27ca8c8702da9bd9a83a016b5729d009ab8b3fd636ae7ac853581f5d', 0, '[]', 'b3ff0b6e8b0a114362f1c2d12850795b', 0, 0, 0, '', '', '', '', '', 0, '2020-12-11 11:20:37', '2020-12-11 11:20:37');

-- --------------------------------------------------------

--
-- Table structure for table `job_actions`
--

CREATE TABLE `job_actions` (
  `id` int(250) NOT NULL,
  `job_id` int(250) NOT NULL,
  `from_by` int(250) NOT NULL COMMENT '0 for free,1 for client',
  `action_type` int(250) NOT NULL COMMENT '0 for action,1 for file',
  `name` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_actions`
--

INSERT INTO `job_actions` (`id`, `job_id`, `from_by`, `action_type`, `name`, `created_at`) VALUES
(1, 0, 0, 0, '1579785034sp2.png', '2020-01-23 16:10:34'),
(2, 0, 0, 0, '1579785089sp2.png', '2020-01-23 16:11:29'),
(3, 2, 0, 0, '1579785111sp2.png', '2020-01-23 16:11:51'),
(4, 2, 0, 1, '1579785148sp2.png', '2020-01-23 16:12:28'),
(5, 2, 0, 1, '1579785154sp2.png', '2020-01-23 16:12:34'),
(6, 2, 0, 1, '1579785196sp2.png', '2020-01-23 16:13:16'),
(7, 2, 0, 1, '1579785216sp2.png', '2020-01-23 16:13:36'),
(8, 2, 0, 1, '1579785235sp2.png', '2020-01-23 16:13:55'),
(9, 4, 0, 1, '1579869364_1.png', '2020-01-24 15:39:08'),
(10, 4, 0, 1, '1579869365texture with space.png', '2020-01-24 15:39:08'),
(11, 4, 0, 1, '1579869596lotofcubes.obj', '2020-01-24 15:40:01'),
(12, 4, 0, 0, 'Request To Quality Assurances Approved ', '2020-01-24 15:57:58'),
(13, 4, 0, 0, 'Request To Quality Assurances Approved ', '2020-01-24 16:00:11'),
(14, 4, 1, 0, 'Quality Assurances Approved', '2020-01-24 16:25:38'),
(15, 4, 1, 0, 'Request For Shipping', '2020-01-25 13:27:13'),
(16, 4, 1, 0, 'Request For Shipping', '2020-01-25 13:29:08'),
(17, 0, 0, 0, 'Tracking Number Added ', '2020-01-25 14:04:44'),
(18, 4, 0, 0, 'Tracking Number Added ', '2020-01-25 14:05:57'),
(19, 4, 0, 0, 'Request To Complete ', '2020-01-25 14:30:03'),
(20, 4, 0, 0, 'Request To Complete ', '2020-01-25 14:30:19'),
(21, 4, 1, 0, 'Completed', '2020-01-25 15:12:19'),
(22, 4, 0, 0, 'Request To Complete ', '2020-01-25 15:24:25'),
(23, 6, 0, 1, '1579956723_1.png', '2020-01-25 15:52:07'),
(24, 6, 0, 0, 'Request To Quality Assurances Approved ', '2020-01-25 15:52:56'),
(25, 6, 0, 0, 'Request To Quality Assurances Approved ', '2020-01-25 15:55:24'),
(26, 6, 1, 0, 'Quality Assurances Approved', '2020-01-25 15:56:08'),
(27, 6, 1, 0, 'Request For Shipping', '2020-01-25 15:56:13'),
(28, 6, 1, 0, 'Request For Shipping', '2020-01-25 15:56:19'),
(29, 6, 0, 0, 'Tracking Number Added ', '2020-01-25 15:56:54'),
(30, 6, 0, 0, 'Request To Complete ', '2020-01-25 15:57:00'),
(31, 6, 0, 0, 'Request To Complete ', '2020-01-25 15:58:52'),
(32, 6, 1, 0, 'Completed', '2020-01-25 15:59:17'),
(33, 7, 0, 1, '1579957341_1.png', '2020-01-25 16:02:23'),
(34, 7, 0, 0, 'Request To Quality Assurances Approved ', '2020-01-25 16:02:27'),
(35, 7, 1, 0, 'Recheck Job', '2020-01-25 16:06:43'),
(36, 7, 1, 0, 'Quality Assurances Approved', '2020-01-25 16:07:20'),
(37, 9, 1, 0, 'Recheck Job', '2020-01-27 13:37:05'),
(38, 9, 0, 0, 'Request To Quality Assurances Approved ', '2020-02-02 11:16:44'),
(39, 9, 1, 0, 'Quality Assurances Approved', '2020-02-02 11:20:47'),
(40, 9, 0, 1, '1580631747Capture10.PNG', '2020-02-02 11:22:34'),
(41, 9, 0, 0, 'Tracking Number Added ', '2020-02-02 11:24:18'),
(42, 9, 0, 0, 'Request To Complete ', '2020-02-02 11:25:56'),
(43, 9, 0, 0, 'Request To Complete ', '2020-02-02 11:26:08'),
(44, 10, 1, 0, 'Quality Assurances Approved', '2020-02-03 22:18:03'),
(45, 10, 1, 0, 'Request For Shipping', '2020-02-03 22:18:18'),
(46, 11, 1, 0, 'Recheck Job', '2020-02-04 15:57:34'),
(47, 14, 0, 0, 'Request To Quality Assurances Approved ', '2020-02-08 09:50:12'),
(48, 14, 0, 1, '1581144644sample3.jpg', '2020-02-08 09:50:48'),
(49, 14, 1, 0, 'Quality Assurances Approved', '2020-02-08 09:51:33'),
(50, 15, 0, 0, 'Request To Quality Assurances Approved ', '2020-04-09 03:58:23'),
(51, 10, 0, 0, 'Request To Complete ', '2020-04-17 06:22:15'),
(52, 21, 0, 0, 'Request To Quality Assurances Approved ', '2020-04-17 06:36:56'),
(53, 22, 0, 0, 'Request To Quality Assurances Approved ', '2020-05-04 09:40:03'),
(58, 22, 0, 1, '1588577251download.png', '2020-05-04 10:27:35'),
(59, 22, 0, 1, '1588577300ckvhDXlwsA0XGzNWu9CucMmky5jZExCqqQO4xNYrESQ.jpg', '2020-05-04 10:28:23'),
(60, 23, 0, 1, '1588716413Capture5.PNG', '2020-05-06 01:07:20'),
(61, 23, 0, 1, '1588716424background.jpg', '2020-05-06 01:07:20'),
(62, 23, 0, 1, '1588716436Capture2.PNG', '2020-05-06 01:07:20'),
(63, 23, 0, 0, 'Request To Quality Assurances Approved ', '2020-05-06 01:07:41'),
(64, 23, 0, 0, 'Request To Quality Assurances Approved ', '2020-05-06 01:07:48'),
(65, 23, 1, 0, 'Quality Assurances Approved', '2020-05-06 01:08:44'),
(66, 23, 1, 0, 'Request For Shipping', '2020-05-06 01:09:03'),
(67, 23, 1, 0, 'Request For Shipping', '2020-05-06 01:09:33'),
(68, 23, 0, 0, 'Tracking Number Added ', '2020-05-06 01:11:26'),
(69, 24, 0, 1, '1588717055Capture5.PNG', '2020-05-06 01:17:43'),
(70, 24, 1, 0, 'Recheck Job', '2020-05-06 01:18:59'),
(71, 25, 0, 1, '1588745055logo.png', '2020-05-06 09:04:18'),
(72, 25, 1, 0, 'BHTAUSD', '2020-05-06 09:23:24'),
(73, 25, 1, 0, 'Plese rebuild its', '2020-05-06 09:23:59'),
(74, 25, 1, 0, 'CVVV', '2020-05-06 09:26:29'),
(75, 25, 1, 0, 'dtttarrs', '2020-05-06 12:12:22'),
(76, 27, 0, 1, '1588822611app-images.png', '2020-05-07 06:36:55'),
(77, 27, 1, 0, 'the size is wrong', '2020-05-07 06:38:21'),
(78, 34, 0, 1, '1589966115download.png', '2020-05-20 12:15:19'),
(79, 34, 1, 0, 'Quality Assurances Approved', '2020-05-20 12:15:42'),
(80, 34, 1, 0, 'Quality Assurances Approved', '2020-05-20 12:17:12'),
(81, 34, 0, 0, 'Tracking Number Added ', '2020-05-20 12:19:22'),
(82, 34, 1, 0, 'Completed', '2020-05-20 14:15:43'),
(83, 35, 0, 1, '1589974551conductorDefault.PNG', '2020-05-20 14:35:54'),
(84, 35, 1, 0, 'Hay Plej', '2020-05-20 14:36:10'),
(85, 35, 0, 0, 'Request To Quality Assurances Approved ', '2020-05-20 14:36:23'),
(86, 35, 1, 0, 'Quality Assurances Approved', '2020-05-20 14:36:35'),
(87, 35, 0, 0, 'Tracking Number Added ', '2020-05-20 14:36:47'),
(88, 35, 1, 0, 'Completed', '2020-05-20 14:37:08'),
(89, 37, 0, 1, '1590112684RO.png', '2020-05-22 04:58:10'),
(90, 37, 1, 0, 'Quality Assurances Approved', '2020-05-22 05:01:24'),
(91, 37, 0, 0, 'Tracking Number Added ', '2020-05-22 05:07:36'),
(92, 37, 1, 0, 'Completed', '2020-05-22 06:21:17'),
(93, 38, 0, 1, '1590362093vector-rocket-ship-27.jpg', '2020-05-25 02:15:23'),
(94, 38, 0, 1, '1590362111screen-capture.webm', '2020-05-25 02:15:23'),
(95, 38, 0, 0, 'Request To Quality Assurances Approved ', '2020-05-25 02:20:34'),
(96, 38, 0, 0, 'Request To Quality Assurances Approved ', '2020-05-25 02:55:55'),
(97, 38, 0, 0, 'Request To Quality Assurances Approved ', '2020-05-25 02:56:05'),
(98, 38, 0, 0, 'Request To Quality Assurances Approved ', '2020-05-25 02:57:09'),
(99, 38, 0, 1, '1590364773roboto.png', '2020-05-25 02:59:48'),
(100, 38, 1, 0, 'Quality Assurances Approved', '2020-05-25 03:00:56'),
(101, 38, 0, 0, 'Tracking Number Added ', '2020-05-25 03:28:06'),
(102, 38, 1, 0, 'Completed', '2020-05-25 03:58:49'),
(103, 38, 0, 0, 'Tracking Number Updated to EA522769831CNx', '2020-05-26 09:56:26'),
(104, 38, 0, 0, 'Tracking Number Updated to EA522769831CN', '2020-05-26 09:56:41'),
(105, 38, 0, 0, 'Tracking Number Updated to EA522769831CNc', '2020-05-26 09:59:07'),
(106, 38, 0, 0, 'Tracking Number Updated to EA522769831CN', '2020-05-26 09:59:14'),
(107, 42, 0, 1, '1590477466ckvhDXlwsA0XGzNWu9CucMmky5jZExCqqQO4xNYrESQ.jpg', '2020-05-26 10:19:41'),
(108, 42, 0, 0, 'Request To Quality Assurances Approved ', '2020-05-26 10:21:03'),
(109, 42, 1, 0, 'please notit ', '2020-05-26 10:23:14'),
(110, 42, 1, 0, 'Quality Assurances Approved', '2020-05-26 10:25:01'),
(111, 42, 1, 0, 'Request For Shipping', '2020-05-26 10:27:14'),
(112, 42, 1, 0, 'Waiting For Shipping', '2020-05-26 10:27:39'),
(113, 42, 0, 0, 'Tracking Number Added TRKLIHIOHIIHIO', '2020-05-26 10:28:57'),
(114, 42, 0, 0, 'Tracking Number Updated to TRKLIHIOHIIHIOC', '2020-05-26 10:29:09'),
(115, 42, 0, 0, 'Request To Complete ', '2020-05-26 10:30:05'),
(116, 42, 0, 0, 'Request To Complete ', '2020-05-26 10:31:07'),
(117, 42, 0, 0, 'Request To Complete ', '2020-05-26 10:31:34'),
(118, 42, 1, 0, 'Completed', '2020-05-26 10:33:08'),
(119, 43, 0, 1, '1591062068background.jpg', '2020-06-02 04:41:13'),
(120, 43, 1, 0, 'test one ', '2020-06-02 04:42:30'),
(121, 43, 0, 0, 'Request To Quality Assurances Approved ', '2020-06-02 04:43:44'),
(122, 43, 0, 0, 'Request To Quality Assurances Approved ', '2020-06-02 04:49:53'),
(123, 43, 1, 0, 'Quality Assurances Approved', '2020-06-02 04:50:20'),
(124, 43, 0, 0, 'Tracking Number Added EA522769831CN', '2020-06-02 05:14:09'),
(125, 43, 1, 0, 'Completed', '2020-07-01 02:22:42'),
(126, 63, 0, 1, '1600670992mmexport1599616893072.jpg', '2020-09-21 09:50:02'),
(127, 63, 1, 0, 'Quality Assurances Approved', '2020-09-21 09:53:01'),
(128, 63, 0, 0, 'Tracking Number Added KB669238003GB', '2020-09-21 09:53:36'),
(129, 63, 0, 0, 'Tracking Number Updated to KB669238003GB', '2020-09-22 08:24:14'),
(130, 43, 0, 1, '1600752308Screen Shot 2020-09-22 at 11.53.33.png', '2020-09-22 08:25:13'),
(131, 90, 0, 1, '1600838221Simulator Screen Shot - iPhone 11 Pro Max - 2020-09-23 at 10.44.54.png', '2020-09-23 08:17:04'),
(132, 90, 1, 0, 'please recheck', '2020-09-23 08:17:23'),
(133, 90, 0, 0, 'Request To Quality Assurances Approved ', '2020-09-23 08:17:37'),
(134, 90, 1, 0, 'Quality Assurances Approved', '2020-09-23 08:18:01'),
(135, 90, 1, 0, 'Waiting For Shipping', '2020-09-23 08:18:06'),
(136, 90, 0, 0, 'Tracking Number Added 11111', '2020-09-23 08:18:17'),
(137, 90, 0, 0, 'Tracking Number Updated to 22222', '2020-09-23 08:18:27'),
(138, 90, 1, 0, 'Completed', '2020-09-23 08:19:28'),
(139, 90, 0, 1, '1600838458icon_install_app@3x.png', '2020-09-23 08:21:03'),
(140, 94, 0, 1, '1600931819background1.jpeg', '2020-09-24 10:17:29'),
(141, 94, 0, 1, '1600931863avatar2.jpeg', '2020-09-24 10:17:50'),
(142, 94, 1, 0, 'There is a bug', '2020-09-24 10:18:45'),
(143, 94, 0, 0, 'Request To Quality Assurances Approved ', '2020-09-24 10:19:50'),
(144, 94, 1, 0, 'Quality Assurances Approved', '2020-09-24 10:20:32'),
(145, 94, 0, 0, 'Tracking Number Added ABCD1234', '2020-09-24 10:21:49'),
(146, 94, 0, 0, 'Request To Complete ', '2020-09-24 10:22:34'),
(147, 95, 0, 1, '1600945191danh sách api.pdf', '2020-09-24 13:59:57'),
(148, 95, 0, 1, '1600945214Screen Shot 2020-09-23 at 17.47.15.png', '2020-09-24 14:00:17'),
(149, 95, 0, 0, 'Request To Quality Assurances Approved ', '2020-09-24 14:06:48'),
(150, 95, 1, 0, 'Not good', '2020-09-24 14:07:18'),
(151, 95, 1, 0, 'Quality Assurances Approved', '2020-09-24 14:07:41'),
(152, 95, 1, 0, 'Waiting For Shipping', '2020-09-24 14:16:30'),
(153, 95, 0, 0, 'Tracking Number Added 11111', '2020-09-24 14:19:13'),
(154, 95, 0, 0, 'Request To Complete ', '2020-09-24 14:23:14'),
(155, 95, 0, 0, 'Request To Complete ', '2020-09-24 14:23:19'),
(156, 95, 1, 0, 'Completed', '2020-09-24 14:30:51'),
(157, 97, 0, 1, '1601000648danh sách api.docx', '2020-09-25 05:24:14'),
(158, 100, 0, 1, '1601365114Simulator Screen Shot - iPad Pro (12.9-inch) (4th generation) - 2020-09-28 at 12.05.38.png', '2020-09-29 10:38:41'),
(159, 100, 0, 1, '1601365117Simulator Screen Shot - iPhone 8 Plus - 2020-09-28 at 12.00.57.png', '2020-09-29 10:38:41'),
(160, 100, 1, 0, 'Check', '2020-09-29 11:19:42'),
(161, 100, 1, 0, 'Check', '2020-09-29 11:24:54'),
(162, 100, 1, 0, 'Quality Assurances Approved', '2020-09-29 11:25:20'),
(163, 100, 1, 0, 'Waiting For Shipping', '2020-09-29 11:25:41'),
(164, 100, 1, 0, 'Waiting For Shipping', '2020-09-29 11:37:44'),
(165, 100, 0, 0, 'Tracking Number Added 11111', '2020-09-29 11:38:10'),
(166, 100, 1, 0, 'Completed', '2020-09-29 11:44:00'),
(167, 100, 1, 0, 'Check', '2020-09-29 23:21:20'),
(168, 100, 1, 0, 'Check', '2020-09-29 23:21:22'),
(169, 103, 0, 1, '1601433932Keen | Invoice 1.pdf', '2020-09-30 05:45:35'),
(170, 103, 1, 0, 'Quality Assurances Approved', '2020-09-30 05:50:35'),
(171, 103, 1, 0, 'Waiting For Shipping', '2020-09-30 05:52:07'),
(172, 103, 0, 0, 'Tracking Number Added 11111', '2020-09-30 05:52:16'),
(173, 100, 1, 0, 'Check', '2020-09-30 05:54:15'),
(174, 103, 1, 0, 'Completed', '2020-09-30 05:54:22'),
(175, 114, 0, 1, '1601884844Screen Shot 2020-10-05 at 14.42.22.png', '2020-10-05 11:00:47'),
(176, 114, 1, 0, 'not done', '2020-10-05 11:16:16'),
(177, 120, 0, 1, '1601891643Screen Shot 2020-10-05 at 14.34.27.png', '2020-10-05 12:54:05'),
(178, 119, 0, 1, '1601891792Screen Shot 2020-10-05 at 14.42.22.png', '2020-10-05 12:56:35'),
(179, 120, 0, 0, 'Request To Quality Assurances Approved ', '2020-10-05 12:56:59'),
(180, 120, 1, 0, 'Quality Assurances Approved', '2020-10-05 12:57:14'),
(181, 120, 0, 0, 'Tracking Number Added 11111', '2020-10-05 13:00:46'),
(182, 121, 0, 1, '1601999161ic_avatar.jpg', '2020-10-06 18:46:05'),
(183, 121, 0, 1, '1601999243nha_tro.jpg', '2020-10-06 18:47:26'),
(184, 121, 0, 1, '1602001459giay_3.png', '2020-10-06 19:24:23'),
(185, 121, 0, 1, '1602001547ic_hcm.jpg', '2020-10-06 19:25:50'),
(186, 121, 0, 1, '1602001574mkns.jpg', '2020-10-06 19:26:17'),
(187, 121, 0, 1, '1602001781Untitled-3.png', '2020-10-06 19:29:44'),
(188, 121, 0, 1, '1602001893logo_connecto3d.jpg', '2020-10-06 19:31:36'),
(189, 121, 1, 0, 'Quality Assurances Approved', '2020-10-13 04:05:41'),
(190, 121, 1, 0, 'Waiting For Shipping', '2020-10-13 04:06:14'),
(191, 149, 0, 1, '1602817716avatar_default.jpg', '2020-10-16 06:08:41'),
(192, 149, 0, 1, '1602818150giay_1.png', '2020-10-16 06:15:53');

-- --------------------------------------------------------

--
-- Table structure for table `job_payments`
--

CREATE TABLE `job_payments` (
  `id` int(250) NOT NULL,
  `uid` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(250) DEFAULT NULL,
  `job_id` int(250) DEFAULT NULL,
  `plan_id` int(250) DEFAULT NULL,
  `amount` varchar(5000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `job_token` varchar(5000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_type` varchar(5000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_data` blob DEFAULT NULL,
  `status` int(250) DEFAULT NULL,
  `updated_at` varchar(5000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `job_payments`
--

INSERT INTO `job_payments` (`id`, `uid`, `user_id`, `job_id`, `plan_id`, `amount`, `job_token`, `payment_type`, `payment_data`, `status`, `updated_at`, `created_at`) VALUES
(1, '157951170349', 344, 1, 6, '110', '3', 'paystack', 0x7b226d6f6465223a22706179737461636b222c2264617461223a227b5c227265666572656e63655c223a5c2239376b4448336e63416e76534e745c222c5c227472616e735c223a5c223434393939393530345c222c5c227374617475735c223a5c22737563636573735c222c5c226d6573736167655c223a5c22417070726f7665645c222c5c227472616e73616374696f6e5c223a5c223434393939393530345c222c5c227472787265665c223a5c2239376b4448336e63416e76534e745c227d222c22746f6b656e5f6964223a2262373033303661363335643331653466386336316332313636326165336632393861393764643732653766646334666362376162346265326361343165656339227d, 0, '2020-01-20 12:15:03', '2020-01-20 12:15:03'),
(2, '157968057161', 344, 2, 6, '21', '1', 'paystack', 0x7b226d6f6465223a22706179737461636b222c2264617461223a227b5c227265666572656e63655c223a5c2268687861653252435a71427a75725c222c5c227472616e735c223a5c223435333336323032365c222c5c227374617475735c223a5c22737563636573735c222c5c226d6573736167655c223a5c22417070726f7665645c222c5c227472616e73616374696f6e5c223a5c223435333336323032365c222c5c227472787265665c223a5c2268687861653252435a71427a75725c227d222c22746f6b656e5f6964223a2264633834663330366635363264373237636137313230373539373630643362636537396338383963623233303838353639306365633731343632323961313137227d, 0, '2020-01-22 11:09:31', '2020-01-22 11:09:31'),
(3, '157968094670', 371, 3, 6, '125', '31', 'paystack', 0x7b226d6f6465223a22706179737461636b222c2264617461223a227b5c227265666572656e63655c223a5c2239756f464e38624751426e44774d5c222c5c227472616e735c223a5c223435333336393639355c222c5c227374617475735c223a5c22737563636573735c222c5c226d6573736167655c223a5c22417070726f7665645c222c5c227472616e73616374696f6e5c223a5c223435333336393639355c222c5c227472787265665c223a5c2239756f464e38624751426e44774d5c227d222c22746f6b656e5f6964223a2264633834663330366635363264373237636137313230373539373630643362636537396338383963623233303838353639306365633731343632323961313137227d, 0, '2020-01-22 11:15:46', '2020-01-22 11:15:46'),
(4, '157986543990', 344, 4, 6, '210', '2', 'paystack', 0x7b226d6f6465223a22706179737461636b222c2264617461223a227b5c227265666572656e63655c223a5c2241316863317046734b5059646a495c222c5c227472616e735c223a5c223435363837373032315c222c5c227374617475735c223a5c22737563636573735c222c5c226d6573736167655c223a5c22417070726f7665645c222c5c227472616e73616374696f6e5c223a5c223435363837373032315c222c5c227472787265665c223a5c2241316863317046734b5059646a495c227d222c22746f6b656e5f6964223a2233313865623762386434656139333062373063643261613764366565356130303132386463373133666131333837316234343732633939333839623265646436227d, 0, '2020-01-24 14:30:39', '2020-01-24 14:30:39'),
(5, '157995668365', 344, 6, 6, '216', '4', 'paystack', 0x7b226d6f6465223a22706179737461636b222c2264617461223a227b5c227265666572656e63655c223a5c223538773857726a525730746b44525c222c5c227472616e735c223a5c223435383537343434355c222c5c227374617475735c223a5c22737563636573735c222c5c226d6573736167655c223a5c22417070726f7665645c222c5c227472616e73616374696f6e5c223a5c223435383537343434355c222c5c227472787265665c223a5c223538773857726a525730746b44525c227d222c22746f6b656e5f6964223a2263353962396134613363333331666463326564316561633265633666626336323834663361636561326233326332626530653561323639346230316363383334227d, 0, '2020-01-25 15:51:23', '2020-01-25 15:51:23'),
(6, '157995726819', 344, 7, 6, '155', '5', 'paystack', 0x7b226d6f6465223a22706179737461636b222c2264617461223a227b5c227265666572656e63655c223a5c2263506d4f5a764253344c637150705c222c5c227472616e735c223a5c223435383538353737355c222c5c227374617475735c223a5c22737563636573735c222c5c226d6573736167655c223a5c22417070726f7665645c222c5c227472616e73616374696f6e5c223a5c223435383538353737355c222c5c227472787265665c223a5c2263506d4f5a764253344c637150705c227d222c22746f6b656e5f6964223a2263353962396134613363333331666463326564316561633265633666626336323834663361636561326233326332626530653561323639346230316363383334227d, 0, '2020-01-25 16:01:08', '2020-01-25 16:01:08'),
(11, '158011461081', 382, 8, 6, '4', '6', 'paypal', 0x7b2275726c223a22636c69656e745c2f636f6e6669726d5f6a6f625f70617970616c222c22746f6b656e5f6964223a2237336539363262323562353438616638313434393531316461313761323266396531353132306437366565343564306266373663326663316365343964656364222c22737562736372697074696f6e5f6964223a223132222c227061796d656e746964223a2231644275546c65634e7446796636222c22706179737461636b5f6964223a22554f53566267375a394a64475730222c227061795f746f6b656e223a2236222c227061795f616d6f756e74223a2234222c227061795f6a6f625f6964223a2238222c227761766555736572223a22393831363836333135363732222c22666f72223a226a6f62222c2274797065223a2272657475726e222c226d6f6465223a2270617970616c222c2270617965725f656d61696c223a2272616a2e776f726b686f6c69637340676d61696c2e636f6d222c2270617965725f6964223a22354e464b455732545933544c51222c2270617965725f737461747573223a22554e5645524946494544222c2266697273745f6e616d65223a224d79222c226c6173745f6e616d65223a2253746f7265222c22616464726573735f6e616d65223a224d792053746f7265222c22616464726573735f737472656574223a223130312c56696a6179204e61676172222c22616464726573735f63697479223a22496e646f7265222c22616464726573735f7374617465223a22494e222c22616464726573735f636f756e7472795f636f6465223a225553222c22616464726573735f7a6970223a223435323031222c227265736964656e63655f636f756e747279223a225553222c2274786e5f6964223a22324a353637323535435433313830333345222c226d635f63757272656e6379223a22555344222c226d635f67726f7373223a22342e3030222c2270726f74656374696f6e5f656c69676962696c697479223a22494e454c494749424c45222c227061796d656e745f67726f7373223a22342e3030222c227061796d656e745f737461747573223a2250656e64696e67222c2270656e64696e675f726561736f6e223a22756e696c61746572616c222c227061796d656e745f74797065223a22696e7374616e74222c2268616e646c696e675f616d6f756e74223a22302e3030222c227368697070696e67223a22302e3030222c226974656d5f6e616d65223a22537562736372697074696f6e222c227175616e74697479223a2231222c2274786e5f74797065223a227765625f616363657074222c227061796d656e745f64617465223a22323032302d30312d32375430383a34323a34305a222c226e6f746966795f76657273696f6e223a22554e56455253494f4e4544222c227665726966795f7369676e223a22415355394f7641384439632e56327756584a346542396f4f4a706277416d5371643645766948444b697151545530717379396b736e71656e227d, 0, '2020-01-27 11:43:30', '2020-01-27 11:43:30'),
(12, '158011465772', 382, 8, 6, '4', '6', 'paypal', 0x7b2275726c223a22636c69656e745c2f636f6e6669726d5f6a6f625f70617970616c222c22746f6b656e5f6964223a2237336539363262323562353438616638313434393531316461313761323266396531353132306437366565343564306266373663326663316365343964656364222c22737562736372697074696f6e5f6964223a223132222c227061796d656e746964223a2231644275546c65634e7446796636222c22706179737461636b5f6964223a22554f53566267375a394a64475730222c227061795f746f6b656e223a2236222c227061795f616d6f756e74223a2234222c227061795f6a6f625f6964223a2238222c227761766555736572223a22393831363836333135363732222c22666f72223a226a6f62222c2274797065223a2272657475726e222c226d6f6465223a2270617970616c222c2270617965725f656d61696c223a2272616a2e776f726b686f6c69637340676d61696c2e636f6d222c2270617965725f6964223a22354e464b455732545933544c51222c2270617965725f737461747573223a22554e5645524946494544222c2266697273745f6e616d65223a224d79222c226c6173745f6e616d65223a2253746f7265222c22616464726573735f6e616d65223a224d792053746f7265222c22616464726573735f737472656574223a223130312c56696a6179204e61676172222c22616464726573735f63697479223a22496e646f7265222c22616464726573735f7374617465223a22494e222c22616464726573735f636f756e7472795f636f6465223a225553222c22616464726573735f7a6970223a223435323031222c227265736964656e63655f636f756e747279223a225553222c2274786e5f6964223a22324a353637323535435433313830333345222c226d635f63757272656e6379223a22555344222c226d635f67726f7373223a22342e3030222c2270726f74656374696f6e5f656c69676962696c697479223a22494e454c494749424c45222c227061796d656e745f67726f7373223a22342e3030222c227061796d656e745f737461747573223a2250656e64696e67222c2270656e64696e675f726561736f6e223a22756e696c61746572616c222c227061796d656e745f74797065223a22696e7374616e74222c2268616e646c696e675f616d6f756e74223a22302e3030222c227368697070696e67223a22302e3030222c226974656d5f6e616d65223a22537562736372697074696f6e222c227175616e74697479223a2231222c2274786e5f74797065223a227765625f616363657074222c227061796d656e745f64617465223a22323032302d30312d32375430383a34323a34305a222c226e6f746966795f76657273696f6e223a22554e56455253494f4e4544222c227665726966795f7369676e223a22415355394f7641384439632e56327756584a346542396f4f4a706277416d5371643645766948444b697151545530717379396b736e71656e227d, 0, '2020-01-27 11:44:17', '2020-01-27 11:44:17'),
(16, '158114399118', 344, 14, 6, '225', '303', 'paypal', 0x7b2275726c223a22636c69656e745c2f636f6e6669726d5f6a6f625f70617970616c222c22746f6b656e5f6964223a2232643030376132356139303932383332303563623265623766303765353130313630306631346235336431626362396364613130313733653134626534346334222c22737562736372697074696f6e5f6964223a223139222c227061796d656e746964223a22784d50636750306e784b43706356222c22706179737461636b5f6964223a226b55637548793079583141326e64222c227761766555736572223a22393831363836333135363732222c227061795f746f6b656e223a22333033222c227061795f616d6f756e74223a22323235222c227061795f6a6f625f6964223a223134222c22666f72223a226a6f62222c2274797065223a2272657475726e222c226d6f6465223a2270617970616c222c2270617965725f656d61696c223a2272616a2e776f726b686f6c69637340676d61696c2e636f6d222c2270617965725f6964223a22354e464b455732545933544c51222c2270617965725f737461747573223a22554e5645524946494544222c2266697273745f6e616d65223a224d79222c226c6173745f6e616d65223a2253746f7265222c22616464726573735f6e616d65223a224d792053746f7265222c22616464726573735f737472656574223a223130312c56696a6179204e61676172222c22616464726573735f63697479223a22496e646f7265222c22616464726573735f7374617465223a22494e222c22616464726573735f636f756e7472795f636f6465223a225553222c22616464726573735f7a6970223a223435323031222c227265736964656e63655f636f756e747279223a225553222c2274786e5f6964223a223233333433373735303034313638393432222c226d635f63757272656e6379223a22555344222c226d635f67726f7373223a223232352e3030222c2270726f74656374696f6e5f656c69676962696c697479223a22494e454c494749424c45222c227061796d656e745f67726f7373223a223232352e3030222c227061796d656e745f737461747573223a2250656e64696e67222c2270656e64696e675f726561736f6e223a22756e696c61746572616c222c227061796d656e745f74797065223a22696e7374616e74222c2268616e646c696e675f616d6f756e74223a22302e3030222c227368697070696e67223a22302e3030222c226974656d5f6e616d65223a22537562736372697074696f6e222c227175616e74697479223a2231222c2274786e5f74797065223a227765625f616363657074222c227061796d656e745f64617465223a22323032302d30322d30385430363a33373a31345a222c226e6f746966795f76657273696f6e223a22554e56455253494f4e4544222c227665726966795f7369676e223a224174666d794b336b415378534446694a2d37494b526c50383638576b4151417543704635534e714a7976557736424e7a5a43704d7a307968227d, 0, '2020-02-08 09:39:51', '2020-02-08 09:39:51'),
(17, '158857422086', 399, 22, 6, '315', '940', 'paypal', 0x7b2275726c223a22636c69656e745c2f636f6e6669726d5f6a6f625f70617970616c222c22746f6b656e5f6964223a2265363337653435666561326433313234393136653137623861633366376537303762643034363536346231396231303933636533373562326163306433383636222c22737562736372697074696f6e5f6964223a223332222c227061796d656e746964223a2247526950655a397a4e42506d6a4f222c22706179737461636b5f6964223a2259424e52526864634f6953315161222c227761766555736572223a22323335333435363837323938222c227061795f746f6b656e223a22393430222c227061795f616d6f756e74223a22333135222c227061795f6a6f625f6964223a223232222c22666f72223a226a6f62222c2274797065223a2272657475726e222c226d6f6465223a2270617970616c222c2270617965725f656d61696c223a2272616a2e776f726b686f6c69637340676d61696c2e636f6d222c2270617965725f6964223a22354e464b455732545933544c51222c2270617965725f737461747573223a22554e5645524946494544222c2266697273745f6e616d65223a224d79222c226c6173745f6e616d65223a2253746f7265222c22616464726573735f6e616d65223a224d792053746f7265222c22616464726573735f737472656574223a223130312c56696a6179204e61676172222c22616464726573735f63697479223a22496e646f7265222c22616464726573735f7374617465223a22494e222c22616464726573735f636f756e7472795f636f6465223a225553222c22616464726573735f7a6970223a223435323031222c227265736964656e63655f636f756e747279223a225553222c2274786e5f6964223a2238324a32303334354a3837323731343030222c226d635f63757272656e6379223a22555344222c226d635f67726f7373223a223331352e3030222c2270726f74656374696f6e5f656c69676962696c697479223a22494e454c494749424c45222c227061796d656e745f67726f7373223a223331352e3030222c227061796d656e745f737461747573223a2250656e64696e67222c2270656e64696e675f726561736f6e223a22756e696c61746572616c222c227061796d656e745f74797065223a22696e7374616e74222c2268616e646c696e675f616d6f756e74223a22302e3030222c227368697070696e67223a22302e3030222c226974656d5f6e616d65223a22537562736372697074696f6e222c227175616e74697479223a2231222c2274786e5f74797065223a227765625f616363657074222c227061796d656e745f64617465223a22323032302d30352d30345430363a33353a34335a222c226e6f746966795f76657273696f6e223a22554e56455253494f4e4544222c227665726966795f7369676e223a2241485745736b76415554584f666c572e792d497247376339354c74354134326b5a63583945624379587943494c566462396e483548384378227d, 0, '2020-05-04 09:37:00', '2020-05-04 09:37:00'),
(18, '39956151651', 399, 25, NULL, '210', '943', 'paypal', 0x7b2275726c223a22636c69656e745c2f636f6e6669726d5f6a6f625f70617970616c222c22746f6b656e5f6964223a2262636261663765663335393865333435316562393163623532346532303365653335306663336463343630623139356565636466373639373334666439323463222c227761766555736572223a22323335333435363837323938222c227061795f746f6b656e223a22393433222c227061795f616d6f756e74223a22323130222c227061795f6a6f625f6964223a223235222c227061796d656e746964223a223356626672366749577761747167222c22706179737461636b5f6964223a22316a37374f497539526b56773550222c22666f72223a226a6f62222c2274797065223a2272657475726e222c226d6f6465223a2270617970616c222c2270617965725f656d61696c223a2272616a2e776f726b686f6c69637340676d61696c2e636f6d222c2270617965725f6964223a22354e464b455732545933544c51222c2270617965725f737461747573223a22554e5645524946494544222c2266697273745f6e616d65223a224d79222c226c6173745f6e616d65223a2253746f7265222c22616464726573735f6e616d65223a224d792053746f7265222c22616464726573735f737472656574223a223130312c56696a6179204e61676172222c22616464726573735f63697479223a22496e646f7265222c22616464726573735f7374617465223a22494e222c22616464726573735f636f756e7472795f636f6465223a225553222c22616464726573735f7a6970223a223435323031222c227265736964656e63655f636f756e747279223a225553222c2274786e5f6964223a223153313437363833525635383838323431222c226d635f63757272656e6379223a22555344222c226d635f67726f7373223a223231302e3030222c2270726f74656374696f6e5f656c69676962696c697479223a22494e454c494749424c45222c227061796d656e745f67726f7373223a223231302e3030222c227061796d656e745f737461747573223a2250656e64696e67222c2270656e64696e675f726561736f6e223a22756e696c61746572616c222c227061796d656e745f74797065223a22696e7374616e74222c2268616e646c696e675f616d6f756e74223a22302e3030222c227368697070696e67223a22302e3030222c226974656d5f6e616d65223a22537562736372697074696f6e222c227175616e74697479223a2231222c2274786e5f74797065223a227765625f616363657074222c227061796d656e745f64617465223a22323032302d30352d30365430353a31383a33335a222c226e6f746966795f76657273696f6e223a22554e56455253494f4e4544222c227665726966795f7369676e223a22416b656c4c646f7648326a6464797949797641574b526562734b463241506d375a422e6c59487a652d3843486456485a4b4a4c65336b7951227d, NULL, '2020-05-06 08:38:13', '2020-05-06 08:38:13'),
(19, '158874373118', 399, 25, NULL, '210', '943', 'paypal', 0x7b2275726c223a22636c69656e745c2f636f6e6669726d5f6a6f625f70617970616c222c22746f6b656e5f6964223a2262636261663765663335393865333435316562393163623532346532303365653335306663336463343630623139356565636466373639373334666439323463222c227761766555736572223a22323335333435363837323938222c227061795f746f6b656e223a22393433222c227061795f616d6f756e74223a22323130222c227061795f6a6f625f6964223a223235222c227061796d656e746964223a223356626672366749577761747167222c22706179737461636b5f6964223a22316a37374f497539526b56773550222c22666f72223a226a6f62222c2274797065223a2272657475726e222c226d6f6465223a2270617970616c222c2270617965725f656d61696c223a2272616a2e776f726b686f6c69637340676d61696c2e636f6d222c2270617965725f6964223a22354e464b455732545933544c51222c2270617965725f737461747573223a22554e5645524946494544222c2266697273745f6e616d65223a224d79222c226c6173745f6e616d65223a2253746f7265222c22616464726573735f6e616d65223a224d792053746f7265222c22616464726573735f737472656574223a223130312c56696a6179204e61676172222c22616464726573735f63697479223a22496e646f7265222c22616464726573735f7374617465223a22494e222c22616464726573735f636f756e7472795f636f6465223a225553222c22616464726573735f7a6970223a223435323031222c227265736964656e63655f636f756e747279223a225553222c2274786e5f6964223a223153313437363833525635383838323431222c226d635f63757272656e6379223a22555344222c226d635f67726f7373223a223231302e3030222c2270726f74656374696f6e5f656c69676962696c697479223a22494e454c494749424c45222c227061796d656e745f67726f7373223a223231302e3030222c227061796d656e745f737461747573223a2250656e64696e67222c2270656e64696e675f726561736f6e223a22756e696c61746572616c222c227061796d656e745f74797065223a22696e7374616e74222c2268616e646c696e675f616d6f756e74223a22302e3030222c227368697070696e67223a22302e3030222c226974656d5f6e616d65223a22537562736372697074696f6e222c227175616e74697479223a2231222c2274786e5f74797065223a227765625f616363657074222c227061796d656e745f64617465223a22323032302d30352d30365430353a31383a33335a222c226e6f746966795f76657273696f6e223a22554e56455253494f4e4544222c227665726966795f7369676e223a22416b656c4c646f7648326a6464797949797641574b526562734b463241506d375a422e6c59487a652d3843486456485a4b4a4c65336b7951227d, NULL, '2020-05-06 08:42:11', '2020-05-06 08:42:11'),
(20, '158874375394', 399, 25, NULL, '210', '943', 'paypal', 0x7b2275726c223a22636c69656e745c2f636f6e6669726d5f6a6f625f70617970616c222c22746f6b656e5f6964223a2262636261663765663335393865333435316562393163623532346532303365653335306663336463343630623139356565636466373639373334666439323463222c227761766555736572223a22323335333435363837323938222c227061795f746f6b656e223a22393433222c227061795f616d6f756e74223a22323130222c227061795f6a6f625f6964223a223235222c227061796d656e746964223a223356626672366749577761747167222c22706179737461636b5f6964223a22316a37374f497539526b56773550222c22666f72223a226a6f62222c2274797065223a2272657475726e222c226d6f6465223a2270617970616c222c2270617965725f656d61696c223a2272616a2e776f726b686f6c69637340676d61696c2e636f6d222c2270617965725f6964223a22354e464b455732545933544c51222c2270617965725f737461747573223a22554e5645524946494544222c2266697273745f6e616d65223a224d79222c226c6173745f6e616d65223a2253746f7265222c22616464726573735f6e616d65223a224d792053746f7265222c22616464726573735f737472656574223a223130312c56696a6179204e61676172222c22616464726573735f63697479223a22496e646f7265222c22616464726573735f7374617465223a22494e222c22616464726573735f636f756e7472795f636f6465223a225553222c22616464726573735f7a6970223a223435323031222c227265736964656e63655f636f756e747279223a225553222c2274786e5f6964223a223153313437363833525635383838323431222c226d635f63757272656e6379223a22555344222c226d635f67726f7373223a223231302e3030222c2270726f74656374696f6e5f656c69676962696c697479223a22494e454c494749424c45222c227061796d656e745f67726f7373223a223231302e3030222c227061796d656e745f737461747573223a2250656e64696e67222c2270656e64696e675f726561736f6e223a22756e696c61746572616c222c227061796d656e745f74797065223a22696e7374616e74222c2268616e646c696e675f616d6f756e74223a22302e3030222c227368697070696e67223a22302e3030222c226974656d5f6e616d65223a22537562736372697074696f6e222c227175616e74697479223a2231222c2274786e5f74797065223a227765625f616363657074222c227061796d656e745f64617465223a22323032302d30352d30365430353a31383a33335a222c226e6f746966795f76657273696f6e223a22554e56455253494f4e4544222c227665726966795f7369676e223a22416b656c4c646f7648326a6464797949797641574b526562734b463241506d375a422e6c59487a652d3843486456485a4b4a4c65336b7951227d, NULL, '2020-05-06 08:42:33', '2020-05-06 08:42:33'),
(21, '158874380754', 399, 25, NULL, '210', '943', 'paypal', 0x7b2275726c223a22636c69656e745c2f636f6e6669726d5f6a6f625f70617970616c222c22746f6b656e5f6964223a2262636261663765663335393865333435316562393163623532346532303365653335306663336463343630623139356565636466373639373334666439323463222c227761766555736572223a22323335333435363837323938222c227061795f746f6b656e223a22393433222c227061795f616d6f756e74223a22323130222c227061795f6a6f625f6964223a223235222c227061796d656e746964223a223356626672366749577761747167222c22706179737461636b5f6964223a22316a37374f497539526b56773550222c22666f72223a226a6f62222c2274797065223a2272657475726e222c226d6f6465223a2270617970616c222c2270617965725f656d61696c223a2272616a2e776f726b686f6c69637340676d61696c2e636f6d222c2270617965725f6964223a22354e464b455732545933544c51222c2270617965725f737461747573223a22554e5645524946494544222c2266697273745f6e616d65223a224d79222c226c6173745f6e616d65223a2253746f7265222c22616464726573735f6e616d65223a224d792053746f7265222c22616464726573735f737472656574223a223130312c56696a6179204e61676172222c22616464726573735f63697479223a22496e646f7265222c22616464726573735f7374617465223a22494e222c22616464726573735f636f756e7472795f636f6465223a225553222c22616464726573735f7a6970223a223435323031222c227265736964656e63655f636f756e747279223a225553222c2274786e5f6964223a223153313437363833525635383838323431222c226d635f63757272656e6379223a22555344222c226d635f67726f7373223a223231302e3030222c2270726f74656374696f6e5f656c69676962696c697479223a22494e454c494749424c45222c227061796d656e745f67726f7373223a223231302e3030222c227061796d656e745f737461747573223a2250656e64696e67222c2270656e64696e675f726561736f6e223a22756e696c61746572616c222c227061796d656e745f74797065223a22696e7374616e74222c2268616e646c696e675f616d6f756e74223a22302e3030222c227368697070696e67223a22302e3030222c226974656d5f6e616d65223a22537562736372697074696f6e222c227175616e74697479223a2231222c2274786e5f74797065223a227765625f616363657074222c227061796d656e745f64617465223a22323032302d30352d30365430353a31383a33335a222c226e6f746966795f76657273696f6e223a22554e56455253494f4e4544222c227665726966795f7369676e223a22416b656c4c646f7648326a6464797949797641574b526562734b463241506d375a422e6c59487a652d3843486456485a4b4a4c65336b7951227d, NULL, '2020-05-06 08:43:27', '2020-05-06 08:43:27'),
(22, '1588822129100', 344, 27, NULL, '21', '20', 'paypal', 0x7b2275726c223a22636c69656e745c2f636f6e6669726d5f6a6f625f70617970616c222c22746f6b656e5f6964223a2235333839393565326432333034656363656163343261326136653031333234393536323165303437363862343864633638303432633737613664396166386466222c227061795f746f6b656e223a223230222c227061795f616d6f756e74223a223231222c227061795f6a6f625f6964223a223237222c227061796d656e746964223a226a4f45534843386e714a51306a34222c22706179737461636b5f6964223a22776a44326b374b654f6a4f6e356e222c227761766555736572223a22393831363836333135363732222c22666f72223a226a6f62222c2274797065223a2272657475726e222c226d6f6465223a2270617970616c222c2270617965725f656d61696c223a2272616a2e776f726b686f6c69637340676d61696c2e636f6d222c2270617965725f6964223a22354e464b455732545933544c51222c2270617965725f737461747573223a22554e5645524946494544222c2266697273745f6e616d65223a224d79222c226c6173745f6e616d65223a2253746f7265222c22616464726573735f6e616d65223a224d792053746f7265222c22616464726573735f737472656574223a223130312c56696a6179204e61676172222c22616464726573735f63697479223a22496e646f7265222c22616464726573735f7374617465223a22494e222c22616464726573735f636f756e7472795f636f6465223a225553222c22616464726573735f7a6970223a223435323031222c227265736964656e63655f636f756e747279223a225553222c2274786e5f6964223a223333383130363936374339353232363459222c226d635f63757272656e6379223a22555344222c226d635f67726f7373223a2232312e3030222c2270726f74656374696f6e5f656c69676962696c697479223a22494e454c494749424c45222c227061796d656e745f67726f7373223a2232312e3030222c227061796d656e745f737461747573223a2250656e64696e67222c2270656e64696e675f726561736f6e223a22756e696c61746572616c222c227061796d656e745f74797065223a22696e7374616e74222c2268616e646c696e675f616d6f756e74223a22302e3030222c227368697070696e67223a22302e3030222c226974656d5f6e616d65223a22537562736372697074696f6e222c227175616e74697479223a2231222c2274786e5f74797065223a227765625f616363657074222c227061796d656e745f64617465223a22323032302d30352d30375430333a32383a31345a222c226e6f746966795f76657273696f6e223a22554e56455253494f4e4544222c227665726966795f7369676e223a224138744e313472797133774d392e654e6c753856474743347777747a4152624571726c4c41504d7158564d67414d37625a6876636f556777227d, NULL, '2020-05-07 06:28:49', '2020-05-07 06:28:49'),
(26, '158894196424', 399, 29, NULL, '250', '971', 'paypal', 0x6465663530323030646664363839663761396133323835316434333338616539623862636638383831613061623739306563616135616136386138366337323339303866636661666433386134393931303666393762663439663930643962653332663035643862346361383031376464343339383064316461366165623238326561656262316336633034643830663265313165313062376266346333663132393032346532356666646135336565383531643362663863386136343063326636333431333731666231663230646337643537356338393331633563386331646565356330643236373939636662363534323831336237313837376434333661653536333334396530616134333966633337336338663535633465383365623935343739643032663330636362363532326532636165373435633464316635366236393430303362376564666632326362303836336362653733303264383236333361363565653632663461633065643164363863343265303731616464306438343535633461373439376636323566616332353661653263633436666136643665343234653438633839633632343234326264626631386434303732646365373463393466666430653565633137303063333163346563303136323434323661323035363536653632666661666264383637313439303935333036353465393438633965633139653638383130666666383136666239343962303161613163653731646363306664633134663261666536333033303730373339343861333766343461333638363961336361656137613362356436653864353061636466653766343430316534313962326233656163646463306334363238663737653133383235366239626665376163303062626333336361386161343433613630393963626435346537316436663661376364653239663632383061646537336533336135626238323331386133323431346565386666653438353638376161656433313832623465383835316665333765396534356531316565653061616533306662663361373630306235376165353530656635353861323064356463343735333330316337353833623631393162663833333635326638376362363030306435623931616465343233613164323637656663333262636662623633383563336332313336313036656332326337326262313336396665323062336534386638366665386263356337646635663431326236653163313664656430653234666236663334653964356462613930383938666466303439656164353030663934343662643735313133363362353265356131633838653238616338303036646563303637386630643639356166636333343666353634643661663831313762666466323766316466623736666332643532333932643131393261323931323862623434646665356232663235373332613237323935323437376632623930616433336238303238346362633366666438326562326431653638666662646164316565323563336130356364646561393234313139393634326232313266656361376633376565356535336632346561366130666663613639363132363032373831353161636265613431353537326138376330643664323838663438316338653165346662646632323565626665623264313766376434343537633230613033373337366433333738613439316266623132376466666432343362353530373066396663386534656461663037363239393133356131656436363465323365663239623638393362303064313439343833323663643666626538646336323461356663363663363733336539323537646565323264616663366335663064643136376337613133383731363434633531646561666531663838663166323563313863393266396131316636666139323632663566356338636439356233663335303431396533613730323664383334626265363739613666363635346464373230643932636434666234323162333262343038633563613532656266663466363232666432653935386235356665333435333265363039643130303865616238616162663830653331306665333139393565346631346138616564613163636635613830643966393238303038323532353839646332643661343237643962396233336466326465343330623838636339373232313138336164616566376262396164313763623331636566313864643939623435616161616465623466636564613766616336663266643838616431346139626131333931353962396330363239633766323765306362316463643739643536383139353536666462653464316430336136633031646234623963643665333034376566663363646432386136326630343461633334393930366237336663376631653132646630663363383637313330666530376436383234336664323237636462396535626134383661353031396135393863343464363164333562643366326664313761616564346333333338373630666566393331613835643634633863373039396363316137393334343463396235346631663039323563393130326131316133326337623564303066326635383936633864616231633462363861396538306264663463643935333961363630386461396630633933633630666161383264636336616264323966313834383333303233383839383261303633653939393966666233363937653863333939633138653363363935313938313733326239303534356336633236636136643666633764643732626564366531656139356266373163303538626437306437333037316336643234323139393736343565656233303731366361333532326335313631646132386339306436363038666464373231393831386363343833353531303463636634353835323335656230653635656538623739333235643737306531386464626234303966323862323264376633386466393532663035373133653061313039376135316363353264373032303438333139313233663364353638346635656432383863616338333534393337616266633339643133323038313233636234353066303364633234663861653662626135326332336631386266656331616539383664353131376238386565633033363537623437653031666433343430663134303666643162393438633836366633363431383366323836, NULL, '2020-05-08 15:46:04', '2020-05-08 15:46:04'),
(27, '158989633870', 399, 33, NULL, '30', '988', 'paypal', 0x6465663530323030323435383639656264663733346139636265323231336339373739313837316639623430303065323561653731366635353732646666636362633639323936383665343261623836643938656139616531303062313430656337393765623939336261333930663462313330363334376637316137613465626235623537396639656565393566623966353433313939653466633232646161646333353931616638373265636631646166323562616538666437613166316531313031393030333663333766343932303030373032396532343833316264343237636338306232373663393765636430373136386662656165323364383935616539393430613437633262396364333638353539633238393164353236396638616532626530623036613862346132383632336333396362303336653239333937656637333036323365313936653238343033353837643264613238626536316662633864356335643363376164313064376234633639653436306233326331373264613634343965303539626138313037303139623535373362616264343733396535616637643565373638326431363239626334343735343732626530646635353330636638373737353864623365313464306365663762653038353762333666343031393731343131333031636133633831323033346131353733303462626263303930633635353430663534616339346666343161303738316335356239646133386630653262303261663235333762373735313065363161373463376231623239366235356330363831633332336538373334363438626439636464306662373265653434393263633935376134323733323436636362393534616638656130343263316563656365633030336632356362333133633233353864323663343930343336316132393032376234313461366132343763656263323738616434363762346331626532643734313438626165343761636630356330633038643632643066373837373735346639616230613362313632343534643831326535336530663264393430373131306134393534343637633861386665386261666234366465316461323033353439356134326230336638353439383837366661383166303732353733316264316466663736313734643565623834323139396436643766393934636665383966393437613564613734303066316139623433643630636332323839623638656138653633613435326262343330313131653734663833303230616337346631663830373539393732653736396635656137323863373763353662346336393339363161663636613131656362313734343961623430633536313333613266363030356630663062643832323761613066366562633966616163393939653032363965663135363739303861333662353431373961373736653263323463653763393034363966323462646233393562373339653835363137356630336465313531323930353662343765613036303833396162393639306136313863396564313635373036633732353436396132623130313833386130366566616335326361383962383931623036363230333632616163666261653061343639306432383331646438306664373534373563353161326433336465666334306232623161613238333962663732636366663362626136633064383932623062626465616163303038383133633562363231303861316133336232386237373366613933343463313961663638663261313766636332323334336561633631343564653966376233303537386664353466303966373362666562353333346461373534313839303739323435303736626565386161656264366332353130303133613133366633326564643763636335623031386562623931343037613266633138303363623631643466333338633337326162366533336164376234306136373839643666333366303935323262626465353662326633653137636562313562393465353262386137323231653134346431656361633265383431626233333637626362666339373731376565666335373764303161663666353662643531313066323661663335396339303838373664643935633861343031323738623432326137373534633839623731643534386262333738343135346163346539383666613733633135306430386161343631303965376135636538393133633237663232316338666336326137356333633535643962336437323832643931396333396463653631666261613064306538643161316536356534633764373038373930623261663139656533396536313035633230643031343934356464393634353661396164376634336239666537393966666665373462623761353866326134656435396333356138353465343038313438346561336538326431323662656666653131356430386637336164636139623136353534383134353265343964393632363831656361326534353137316132663032326132356232356532396633653437633835306564353036333132643163363765396130623031326637343839326564633335373136353861656464386433626263623363356362663334346463343962356134313531303761346538623564653934373335636433653365383235656566633364643635633839633132653361646234616537613036366663323964393236626661303436663862353430306665333433323938306333626636313735376136356539623437326361386262326262323139656230343837366435386666303437376236366634333431636231383338333738353632636535353431366463326236353538356432313564346366373730636363363032336431373265336532373231373839626366653337626261356131626537656536356162353235393538336433316639393138363638343734663730303661633537373037396662353438366638383333373464383061663239383536646436353865633332343664636564363134303235373061356435633336346534613831306564623539356537326262373936646530373734383731373065346134653631396463343432656261653638336131633934623361653262363839653462333931623462643639373136366535333665373134383739323230313164306166323637323637353033386230376533336162, NULL, '2020-05-19 16:52:18', '2020-05-19 16:52:18'),
(28, '158996608341', 401, 34, NULL, '40', '1048', 'paypal', 0x64656635303230303133363138666334373732356238613136376434363339376330386130643461653363333162353030643731316537613331663264303332656663313533366461663436663334313037363262356630376337383930636138623731353231653563343563396263656436363762376338396361373932663037333234623661646436613232663765343362323564653534656234386366323137336234336463633930656130323438323835373537373634613535613134396136643465643164386664356230363339386634303863613662393663333866613734306233373366363235353564313638643639326462376564316466666537383866343635373431613932306135636364333630343530613032663735633638326436633433613138393162303262366561663165306538646135383534383163613531303032363162333364333165336438343462666139343639646338643663653361363338313932633961646161386232386538383035653066396365393438396465663930363337633534333435626139666566323231623064663962663332396231356139663662363364353631373261383638376234326261303039633530656130323333663865393832633664616166353735663761613432383431326130633536613362666332643163306662333764386133386232643136653938333737333838376338383966383065616334643533653263383833633035333134343936633830376537303531316663646432323066643262343962353262636633643061353038613536626330346364663233306133343036343161376334356231636566336135613131306538623864373634633366343234623031663531346465353833323632363363643162646333346663333031663531363133643932643638656561396265363535376236663737303737666133323063363839623230663439326239623933323531383033656538616436373833613963633364353665646164303435613866356664636537663562323932363461653835656533383738366165393364343533653039653337343032363831333465383330613861646139636634663963353263663138303730306363376262383333626635333830333362623361636238623835613931303464376438303530643763636230623261646663313435396162646264376562356134336237393533373961363131633964363662383035386635643464393038336531393131623538656437343137396336326434306238356266393233356239393934386334383339313234363261663832633865646337383135336164356666626133623130383765333138356561323331376230643065653361656637316661336238616532306137666131396665383561383335323436323966373062356332636631313866333965623261386131393061373735373637353433313364393162333337623431613966636230326132633437393136383364653033396431653134343637323664623634346463333461343930383263636131313033396233336533643938303165373134346531653331353761633237383038303564643262363632303138333339333932633239366665373431303535326231386633373830623334613662393861383764623461343431323737373866623433383331393362353362336135643736623663333764376132643630333333363462346336383762363030306133363530643764336438323639666634383431306236363232316339333132393961383733336535343761386636633761353364613862363165373639316134656337376161346461353364363939393663623037323063396261333130326333343631343666616236623939393832666665323365313636323239636334383262363230633861323166353532353936626366323634623632383639373162326265333139316562396663396263616135333765663732623635316163356665363866373735636463623035663066653834626535383133323536383832646538653839343635663938333866383635343831396530623138333466623437353066326239666430313538646364323537323066303231333764306463383131653739656430383239666134663339343665393534653039666632626630616662643730363139306337363331316264656333353636323139383566376366343531326438326430363661376466326237653962383639613766623438666264353666393766313363633430633034376538373730646564336433373239653537373330393062323466323134653538623537336330623837653761353133333864633336333338613632306335666262303831663164353062323035663630343862663761393462643435663063356532653462363639353364303062376163623766396433356434643137643638393139616233393061366539353861346638383033616463383565346630663865636239616438353161373662343865393964343532383736656664613835386337353439656333313736333939616162346131633965323835633036633462393038633139356264616565333831383731626333633865393066383061393262616233636333333966366132643466623335383163646531303139353762383834393532613935666239643338313133623039326138383561323132356565383038353066326533666264393335623532306166383763623339353235343435653863383664643366323237333534353566656631373836636535396434376435386162663439396336663033636138343837376566383637626561333431343230353337306465366639306333336535623466396632623365356132626431383562376563363939666638363533363266316565346366326535383337373866633463346432663262623830363837623663373837643866646162386531313062666639313835616161646536343538663838356632313733633963393364653635376262353362343566633539336337363966633539666461353430363933303530343838303437333533396465613064323961653533376333303935316232626131346161313765316336343434343335386362666466383562623863646665376235333933393063356636383235386336666135636561366461656532343634626338353765663537346438336438663566, NULL, '2020-05-20 12:14:43', '2020-05-20 12:14:43'),
(29, '158997451831', 401, 35, NULL, '15', '1049', 'paypal', 0x64656635303230306665363961313137643762316533633236386537373431383962356230383736333736636537663063376332383266363136626437623263626137356531363431356633363036356663653865313035343137363835363561663330656262313230346139393164366531313866646338303731313763316334353732336438663764666634626430386439383965356431336631613462626563323135303965383462333735613564313834373735653666386163663137623365343562323335356663393035323065666562653430346636316265653537356234376532373866663363303539623230366536656163613035343735306166383966643739366261663839643066666366613139633235343232343963616363363237653463616564346137663963633832613230333237303831316432353765323762643137303136326434326462343362363964306533303864343437313062376632313331656134363630313738396537643562656631636536306166373365623730626662396334313561396233633865356332306636386636373864626234376463396430336236306361646165343137626565653765623534326632663232326465343663646232326530316131343233633132303462393939396565326466643863383933616264353834616564396266643030386230353530306366303232346637656136393461633737323562636662653466306432616463666539316637643538373435656265323837333961613035656364313132376534323134636430653133363066323962343532356137623762323065303031353762306532633735626366623337643165653231386134636631323964613937373064333465306531313235316437636334646436303063633235386262623364623065616534373539306661343161353361376238373331356435336566316637336233326637383637613462303662336632353061623030326531303238636365363762353936333332323436333932383831643331306332393561653331326535663533323339393166316538346363363861306337326162333839656332386365363339626232626531643662633339323335383136383530303039323531326265323932353731336165353636656131336361613135653636353364333366323431393563666464383435373438646530323264623961383831316263643366356239363162616436313665663330303362313634353236346666616165323061363561386335623535336239643062313861663365353931633661303262326265643662323737313433666231366164356365626635326135666664633164613036663666356339313031383738356366396430306633376564623938326332386333646633613830633337343234613138613234373765323132616164323965336266653034366465316330366531303738333839663066316562633662626237383937323762383564343632333834653132623737316562363935353333643732666134626536633136616364633639663332396439393662383235643138626633376537363963383162356536343131373538653664623166346337343032613631393432373538353630613161623930633737356434316235303830653632356134326663313062373835353635623139366235363231356563616430303034353263616437323230343834383665666336346162613338646465663530643930656161363436366237623262613032373563613937346364326335323164626537353732303939613764613064386238663363356530653133636239353132343037313264303531346366393337316334636636316431666364313633643636613834613637393739376661323835393934353839353930316534396333373435303236643464393636366163356234613562643962346264663638326466343130663937663832393163666639356162363838633339623837303133323738383238376162306631383934333562376135636165393838336166346539613730653532383534313762303065336138376233373134346463373639326364653330656335356362613430313563363265633262306366343433373838613765653731323464343963313563363131316130653963616637633034666366656535363863343032326337323536303537633163306363646238386333393634313931313139623261346164303638643765613631636666313539316563396165633936363135376165313865373530353937323538356338646231313932376133363766373338386166636663633934623431333936393564663233346163663837663738386139363231623530623038356666623939343836376136343933323166386564663831666437396563653665616638386263333734323663373435616537386530396361386133346233623236373735633432363238373066333237653963623834366134623537323236623836666630396134393065373631333137636235396638656666623462336236313731376461303535623435366639653664326537303361653933306239373465333633653366323633303165656238613139323634343331653130666561633638333765336338646663366335646365356364373266636565613736626464666664396533346563393531303661643439616231343761346362653832306530663663653036383632373035353537323432303032343439643666643265376166336337313362323636643664653161623165643162303830663961636331336564666136336564366433623137313534343038333736363366316533633236313737323937343133356661343231396135326633633861353864323538636464376437643634353735353738653333626531643263313633303563306638643362633934333566656136336565386661656461323662623134643436386639313133373565393965363562393035366635626231653461616534393537616236393034336139626262386337393034633236333964313535356536626665363464386533613735653961316466303331313463363965626538306630653566303130333765303236356531346163346665653332633135653164376130333631636161323163666361353761376363353532343365633462333031386335366362636233626464363464326365, NULL, '2020-05-20 14:35:18', '2020-05-20 14:35:18'),
(30, '159011259690', 344, 37, NULL, '21', '25', 'paypal', 0x64656635303230306436633131393039343436323231353837373164373133646262363766646630396433623535346239373739333436303939376131613334383264333538353863313064383437333435336236353361363136633561393135616437393361626339343063636638643538356461393434306530636266623165303830373632383261316338623832383730653965666333393563353363313333306364386662336166353363643638373538316266363533323534616233643866656533623832633035383664613864383838343233643432366237623033366262323362343337333734643465323834646237333965383066323562363334646530323564326334663966346566663330333432313735343931336134376630663939653537393630383734383536346131353539653039636434613039623530643937333438326362343935336163626532356662336137376630353138343836316438353631626339623862333464333061363737636435343664636432306338396235313462343234326465356438323365363661393263376132353134626339393666613838363339383933613530393966303731386238316636313761616166313832373835633164326633393131623863656139323734303237313430306164633963386365396239643932633830656265313231666230386534343534666563633135383033343337353233643765316665333032616564366463386231653162366665383330353863313265623861623865333538633763386636613535326235373831363536373239636435313632306662363930653138643663333064396631316639333631313436646333383934383763613663313739636361383236373439373664373839346238313430396630326264326631316162336234366333616562663035393763303065633536633963323065356263306531366534366363356564363637623235383163353933633333383939643134353165303761393038373932633963393137636430303661393434633130363261393430636132346263366630623338373562333865653238316463613437326133646563326663333734656564656436393765353339393161643066666564346565323766313132383834353862616264343731316565326265316234643065326664343934663131653639633865333362323366373330353366356539383031363339356266363763313361646265663362663432326331383161393263626234316238646434326138396137356239646436616335396134373737663964343931626230373836366236623465623432333335653066613537636361313736663430333331616666653136343835316237373239326531346336343561363162633963383735633833626138303837316633326262646462646161636434303366313662356261363632333032396235303763383137353234376335643032373366636239313133373366656431613335313663643638333062626138363862666363366532353962393163623231663863333066313839373631373262616563393537323633306162623237636161666266616337333866373033636235626435393130396662306365346638323062343566653464613033313337386135373532663136613938623531373932333735386631393633383034623466323537346565353662363038663431313736373763333131666237623865393636633931393136373530623637623731366165353334373735373761373463373435633337633637373036623164336233633534656334376261393731303836343136643237613738646261383431393737343836636532653632303739376139346336316537653339383434636465316331613065616462653963663232313237383364306532323230353866306135646532353437333636316634623735393164336133393039353236343061666132306161316535386161383865396263353661656365646236656464336266396536386136626363326361396438383264396339316231383735643465343063303561623935333462643437356461653465363038376139353962346165623630366538626563306161613138313931333935613065626533623762393930336361303832393334386537386462353666376339653439623138643930303666326233633733303939323533386661613233386537366337633163346164626439643032303462363631316637633934383665363238346136633561613261626661393436353832643039636634613738626334653338623965323032356639653532366663656163343137633938373462393662303766626533373965333436656532346330663761393363663334636234646533616630626338306266626339333133303332303565343861363534646536336162623231383136353231666666636532663337363232373630636334376265393962613535646335316131636662633535376164663636616163643161643664356433383832396637346133623439373136353738366539336334353962393132366332623033313463343765326664383465343564393334333366653638613237343437346434313265633763383330643930393661356661353562393531613935356133366664313235323137393230313533373132613138613137383734373836623931613134373366343737346363653763623139386364333063323036363163376135393762303633653364346361653230666637643965393061326463346434666234376436306633356235623735383038653539346163303734303261646631363062366633316433363433343564386663306636383661333330316466393262366330356163643663316636366135623136366134366137363836383631653730633565356261616636633064336363343537363565313733353337303735333030336332653538666138393164666564656436663335663062623337616338376166323463626438366266353738393838396433393566653831306630386631353063383039396565646233623837653764326262636562306361343332393961613465356365383439623232356363303632383832386265363466613936383665316333303863613833663038306339386338633461643537326233326261323934623962353736, NULL, '2020-05-22 04:56:36', '2020-05-22 04:56:36');
INSERT INTO `job_payments` (`id`, `uid`, `user_id`, `job_id`, `plan_id`, `amount`, `job_token`, `payment_type`, `payment_data`, `status`, `updated_at`, `created_at`) VALUES
(31, '1590361959100', 407, 38, NULL, '700', '1168', 'paypal', 0x64656635303230306265363136613134396632613130656237643930633961303666636633366235663365623231303134653364326537313164663032633464373236306132353231313661393135343132613235636261636238636433616633313032313435353038326136353033373136306537343564613536373837646439383035326630636131376434353961303137316432653033656365306633646439316438326238653435383962353339646235363535643331333536626662663530303633343637373364343738653763343636643064643530313731336634613530343036353239383335666532613536663738363235343063656432343033633734663662373163323962336330363762623632653961613937386531393336313363323634616431366238393065313264366665643330343463656135373837633261353839356530396161313362373864656264336364633235613232393639333631643837346564616664313034343434613838313461643935636561303238303031386263386331306338353863313035393431613566326262343932306431306665343565353262643566646237626539323031393830613638393361373036383631623161383063303339333162316666343663653537346337366664343930363361653733633038363065386438373734613436366161363231643964636338373562303466386462626535613136663466663866636230346164646431386565393633333731373334313733633264326633653130303232373838303066633932663839386137356233353038616562633663386633373563333565613961323639613063383239353937306261323938333334353733613162303430636636363830353831383935636134333462666466386166396232343633383133303937356636376230613064303765396431643636393665343464366464316563646566393331623931343663646266636439633938373062663537356334363135316663316335346336353830636562316366356630313036383436383262363636626532316439646362653162396262393363616566363362383462393836316366313238303039313830326530396662306661313266353832356536333931616236376237313431653532303631653764343737313938343830373039643764373764656633366362316564323731373438386530366435653062646637626666373665613233333632616165303666646437356563343064663663633238636562653361373738643365616434306463663630616237316631653930636332613233333437386234376535373164333537373964633635366337613264323163333966343532336164316663386364326366393035633064626335313236616131633439356564363763343033663030363934356536396161356162396630626162336466303435333365396334303666346337613036646363303431633735646666633964306366666238643032353238343130353732396136663139623135666164346636356665373633373338653638613062613432323733613631303365363266333333366537393031393861646535326338343836333432653164313935316464346133613363643266323639626331613265383265623430633065396636376330616331306463316239333163643164623339303339393738373132356262343133316438386665626164386363336138646563333363663134326238666538393334333139363938383361636630326633326461386263376536306461613464313961663162383631636263336331666237613263656631336632633238343862313662383766656339333931653535626537613165363039623830656465663337326231373331333733326233363663376134393430636334636533616535663461376537336465623035306431636364306138633431343336343735633737393234306463353835383865363366353333613561366635373434653365323134316432386438613962316233313833386435373363356165343937333730336663373235663761643562623133313364646138333262393739383635626638623130383634376131643934316265303633653565616663363730663331623832623864373434386339313530313964303337336136393830626630623736326632646336653839386134373165633361386539326665346164663531656161616239613934643463363339393537376337346339373137646535306435363765326539323064313834346236396237656139373233613864396130363934393532343266333465346364656636616135323334623237663832303761623138393937373531313332393133376539643734326132343465363461346361363438333930336237633139306635366463316635626265346132393837303439613561613838366235653665333566313733326264663336376366316537306235643861386534616635396231663765383631623965373532316232303538623630323864373962656333663038653362313363646566616230633339613535313031626638623439326430363134343632326137353737343730333330343062343162393236366662356263346439343634323763366166373965393438656566383831383761643139393135613133616537336462333636303439343732386164323238396563643438373537386236306663333666396266376637633365613066383863346130663235303333396531333938313332376461666264306530333565393262343362663338396334616530336565313336353530646430313436303739613632323833613437323233376664666333306330653333643437366330616137656430616433383333353533303034616635636432373533346462626235366537353861613162636232363833326332366638663161383563636665313365653635613235346566656232333334363031663238353534343339333831656132303635326530306139346230326538363462613265633836636666616465636230323338373666623532303030326639373565616439646364333335353939643239656534373736393464313131363438393138336630643532376332313635643665336566313336396265646663353765663038316532353139636330353733393461626330303031, NULL, '2020-05-25 02:12:39', '2020-05-25 02:12:39'),
(32, '159047739986', 344, 42, NULL, '30', '28', 'paypal', 0x6465663530323030373861393166306262353631373361646432633630663764636536643463366463363264376266323061626462393032323961323739663734303536653735373837666465666535626137663531633366333734626464643537663632626561653536663237363533643634333965376631623562373539336636636330316534346432306232316639636438353039336239323631366230363264613166326166333539323938303030386133373238643837626335653234613762666132643835363435633663353637343365643334336363396163386638396632666363343035363761656235396266623766343163306366613664623262386466316563633464353537613462353532336435393131386635316234323432353062303239633761663663376333636662373963393165393664616164613532373561316436616635386663396433376238343165313364616632393131313765336661336664386533653437356361316438656461663761386234396333653939343061343064623266326637663331333839386661353861626639343866623135613063316236623963356562306165373635393861636430383661346363653735393932333962633036666331353431393764323333366563633163626162326230333966383764383239373030356265316138663636323864653565626535393766643530373565646536366431643339313035653962343439366430666465303234323334343331326563346531343132643866616632323062356264656466316337646365373333626561323233613131663738616139346530653763393331313134393765376437663437393162376638363839336338666464346331646130303738323734636465376132383136373835623037393336343464636235336533656638653861643163353765613837313861306131316432633835633133396132353539646565643266633239343630366535616539633536623334653561643835633666323365646231396365323732353932326334633536353136323265383139383665663231326532656566656461383462393764353563326430613766646334353166626336653634306364616531363931613063663635616533383139666563383936333532626361623035366465663335303632376435623066653733616461653365303134346162326633636434363937316534333732323835373666373930656633633336646537616664323930616639363531633436396561623533626630363036373066636265323538383464623335646135373866346462316234643339396662306136663765646564303137366563333937383562336163316433376432616439303230383636346534353133313863653037313732333162633663393432386632343939626263636334303235643534366464626633373536303763396463656261346662306636363434383139396365303832363931363562376664303134633266663864386330383238363066613136303462643766343561316630343333316637326330633539356261656630656531393664393461656531373836373439333233373132646435653537383534326362373634326537333061353338646362316133336630366664343531386163373532636465333937393764363439663531643237653264326539643535613466333034653935653161356330396230353965653136383661343433626634306433623161356562366137663334323462653062623661656434626437616433393764333032396161613564333339316535356536363663363365326466303832346661633135653438613739663330653633643737373132343934656139303337613835323263653936656364303632616364626633396638343163363865366530663464336230333136633962353037653564643864386136336664636262313861656563613836306264616338303337313232653933356135343732326339636539356335376134656631333264313161623734323533323638656664303234393663373532633263613834373038386637633665346138326638326533666666653565336665623336393932653732363562353035663761316638383034333165653363626533393164336462323534396139306463626239323931383033366431383739643338396535383165663738323666626462316466316337303361363231383139366163666435303637336539653364353161313831303631373937306332666235363633643034633436323433393139663831306333343231346637386635663735613333383961373365356666363631636365623635386430353536356134633265326536313039636235363361616463336434383235656335326162353436356135616130313332326465346461386431643062646538643436343430646631623262636238353563656665323066633961316465613732633761383064653864343231363530383562663336626133353132303338326462653162376134313663323536643538353863373562366532373630396532356331633931623831623433633931356563346163616436633034663135626665323738666332353638653265646232653732346631646161656565616633383839333562626136323630393435613863343666306563333035636562626235656266356539613935303237353432393566633563623161373932376136626665323563363333616136313836613838303639633032646130363936646466626534656162383161376364383263663230383163373837636661333361353231353638626237373234326633306339313839643638383564656465336134316436383536663132643939656432356436303436343465663431653662343462343036393736633839303935313333363362383737373466303534663761386363376139343236643437666561323337323165663336333461616439396436306139333062643636343539616535303163316431643334366333333464303761663232663734363635643732313465393937346230613233653335323937636265323236666266306236323730643666646261343335336466623333303233, NULL, '2020-05-26 10:16:39', '2020-05-26 10:16:39'),
(33, '159106153695', 407, 43, NULL, '21', '1170', 'paypal', 0x646566353032303032613561363631313732346632656234623261326631303136636263633065306166303665303563393865653632376335386138363933373036393532663132653366633435323138646339313362613834613137306564396334366266663666623232333431613866626134316663623234383361363834373562333034343165643463353735376635376136376137333734656561636239663735656466623266336232313965326161343334373738643363306161636239373865353166303261656231356135363234653333363164656635396666653864323731623533396562386664323639353965373761336435366263643032383534383832346639326638356334346130333163396532663438653865353433343734343637383864653961623139646465343836623164366432326265623731376166396637643963633339313734646263363463393637336639326264666166363266306362616139383963626538323137383139646435366631386335636565386162393036643831396430393136633935363036393239393666326538323262386663633366653633383336393437333135313161373638303539663832323261666131313432613438303239316565363361633133373631383966623537346262386163383462306538636131323736386139353031393264396137616665363838333433306136313537363839663137613661383434333338323064393762643161633531353632383966383663376536656230313161306163396134653064336135356637656134383366373632373636613165623065356235663132336266626562333831313733303465336233373061643163373061643333396631613431643865653262343661323663623639383532383039633231666636313534343761366239633731313633363136626130376665656432306230353238616533366230333837396139316439633463363736366164373461633263333661653033386362336466643530303533613933656166343139376163366231303661346539656430613937366138313662383036633936323339616531646134663130636637623534653330633637303039326262656465643166353334643830333561656161363636653466383336373262386361346333393239323463623866303935373734393235656339613437316165323438306666346534393063613939336636363064336163336539626661383233643734346336303363646361326330636334383036616134326534316631626462613261353037363731643563653964386332316262333265306664666233636361333862393962373536356436373736313838653135633166393539633061323636363339333962653134396134616436663161356665393764373231373136386366666430373637313463626636323634323833386261623765383735663234656163326233613530366536666339333834386165633935326263313330326136633436393639346434363861386338613537323230396130343434333436663230663666323235393965666462353938383232626339656565383438376564613865376531633537393137333838373330626162666639343435643138356132656539333163396638626663666535663764376633353463383839663636376162343234613939666136393161313663396139393732343631396331303435303166313436383964646663623666396438656263323566373538643230633334653832643330343435383635616137373566386636323864636566323336303331656134356266323663343131616639663036383039313033636366613431646266366337323063353932626431663530373966313662666431613934646466613936613133643937653937363135383163616665616139613762653462623564646561333534623233323734316230643731623464336134613661363336613439653633333135353134623831306535613136363666643263386432343663313336646461613637303438313066633531386236643736393566623232663936663832643636343362343362346634386463303339636535646239356534393135313665643765346331623565636137336334616533336238393732393364633735363535353138323337396430636638663131306432313633313033333230666364356338376464623863646332623363366136353335333530633638333635316631633138303464663932383034646530333662376565623838643531613837313737353066643164343536343037656335336531356263366635653765316262343330343531373364616165613137666234653434383930353938613439643261343531303131633939373036306466356236636439643163356361306639653235326431623837363334616130363061396339303332366132316364396130303330383937376437366635383637366433626461313863303832366465656334626137366166303863393635636566356237623637643538633264393736316261643034613137666233366238613136616235343837663834616133313033393437653738643034353763633438626530396130663761356561333534623730623630353764653637373632616662346632386462653438353133623561663736646136653632353565393465346263666633386233393738336331633137343739336233623035613666653963313539633366393862326561643739613838343937613734396133343132626362363739303638633864393034623737623864666536303635653835626162396232373531653333366431383762626365383462366363303131323964636239626334616565613337646237356237633863356230626462323634343436346437316238656532633137393131666632383265306265643633326337363863333963666666376132313133313761303830653235353932303530386137343735393436653366343639306163396165363138636463386439323535656263386636643234616439663035313864616635633862346239613933636565356661326333343030376133383630323461386230363039346332306633653162346139, NULL, '2020-06-02 04:32:16', '2020-06-02 04:32:16'),
(35, NULL, 344, 42, 4, '500', '56465', 'stripe', 0x7b69643a31307d, NULL, '2020-08-19 09:55:14', '2020-08-19 09:55:14'),
(36, NULL, 344, 42, 4, '500', '56465', 'stripe', 0x7b69643a31307d, NULL, '2020-08-19 11:11:12', '2020-08-19 11:11:12'),
(37, NULL, 344, 42, 4, '500', '56465', 'stripe', 0x7b69643a31307d, NULL, '2020-09-17 08:07:00', '2020-09-17 08:07:00'),
(38, '160067072077', NULL, NULL, NULL, NULL, NULL, 'paypal', 0x6465663530323030616362363130666636623462386237346332383961663536653032313237633466626130336632633137336133386163623666366439386332323135313630356165326531626630643038646239653036636534363164373565633035666534316636353161643433366435653231633561313039663937396334646430306435633936363838386130343132393830356436316239646261663435363333653337313130646431663533333731343239346638323263636432626466663330353339626231336266316433376536313631376332663736353266326131333534313737626435323231663761646130376363663761333830616466303637346438636133316336323963636334663931383130313132656561363430376662666433343933363033316638336236356536316130376132613861666132336332636431373136373735333237333230393833323361613133393865646539663161316162336365336237373439346664613632323732666561313563353939616632346330386337613838316365373632326466376235376461653739316665313831363537646430663831646231323732373132653234353264636536373838303639343134333636666161366136303565396234646464313736396131616462336164306638316335663234333261613639613333373866363138643135653431396262643237383935336531616533396262393033383635666639366663616231343930366566666234366165306636323139333934666164313138366331326531633631613132333735653063613937316666373334626333613861613531373862363139626631656634373162336237313165396234393739356233393331343431653766363232323163643832643663303165376332663138306335623931666261393934373163313332353464393561626236633161643866303763333566663336333732383063636331616139303435373362366233646261346166303735626238666363616363326639656663373638623930633464613938393761643036383336313963633036663234393562373063666333303166663233396532656464396635353433306430303039616461393133396265353465316263366261393166313430653861613931333636633536386138333561666333646361306532373261653365343763383561343439383136653661363132656165363431376166363366643164653536386661336636343933363561643433336534646436313335313939376661663336326164653138346431393366613938643233373462353238666361623332383934383931313364356238393364316366333033636234633232666531376338653664306331653235376463396435656362626265623965383131356361613734363165646361313832643962396666373763636333313464323137316130393438663462306537623334663666616239626566303366313838636666353862363835383663636662663435353636396565353661333964643363663439643263396331623261636261333965373934383730336163343534393136373665623937383130326466343137376332363763363736306134386534306266383961303631313937336137656236643030656265363436663139313665613737666333373664663931666461663663643465316366386333626266643830386261303238313233326437666238383965353934346530346335323864623231353937353765633132333265313364376139386665396666333665633331656364373433613335336539336262653466636665616364336364326336386334353338376266626164303433333663613262353362393837626438363138343333396331386438343936383337306363633530323633663465633666316161636636343462306335393633346638393361376263366363336539663939666238363738313437353062313036383738653137663266633665336532343133653862616331386539626135633531623833633761626165316661666165653330393065663339356164626562323765623061326536633035616366316363356465646235376233386134393437343635653838323331383033396533363133666139616330643465643763303966356633313964613762623365393064623332353330636237326430653732316361376130353266366530633739626232343933323030393264373232376362623534396361306331316539663633333562323534306266343534343138323633313138376130393238313065303561623537663631633464346135306134623966396534336565633366653064363366643738626436316164366431336336643331353961613263306236656566656635623635363332656233396365653166346163643162656166313136386366366135343239373831383363633332303538613164373532346462333463616632376236366632373965396364326632353464616262666531626430363936396264396538326233633331393337303663383939303362346462393965643433656466626261633534373932363935396162653338313265393735663738323065663438323032653163343566653562616633366434636366646361333561663262373631616239343930653565363030373462613837633335333565353139633339643165323936643439303362393831613638643135313864363532353166316366616134, NULL, '2020-09-21 09:45:20', '2020-09-21 09:45:20'),
(39, '160067084128', 344, 63, NULL, '33.2', '937', 'paypal', 0x64656635303230303038653465343764366431313866366230383039366366636266633866353937356135633033323339373765326136336161313433346436656265366162373137636661393331306266656662373662376163633930336264643263636634396533363966306539663639623030363431616136626233303834656238663339386230653966323230656538323633636135633833616530363265613962303662336335363465306263343637316439613235383235633133313737336132653633653835373261626136656638663737366233393139396435353064346464353034313865336334343862373736303963396233326232303637383436616639333237343334326335656530303930613662633965396236313532303633366234303231343232643037376631393631643039626332613864353238653739396232393163356137616161373034633035626332303934303136613363626336393434623437623339623935363665303364306535616234633063326330653035386334653661383432303966623531636339663937626331336461663661326436326635643663633037373061663864613661353561313039353661333938613134656436326430663864626433666435313138383334373662353261626165666134353137326663306366356465383332393530373835383634306662623963303037386535343535613465396462353639353439383631613263663039363735333466613630353165303263396132363036373439633039326431323366343335643364616336653135336563656231306561623462316632333839663339323336393033363236663535376235633037643836376239386634303837613839333931383533316538326362396438383432633561616536343962636139323866613137616139343764633362323963666130613338323465306137383837333861383261666436343662363737626464633232363230373438393462333437656234663530396662386465356163343864326664616263356330303463326639323938353336313134303839343639636663643738336464353538366364383935333031663539613830353062633432383432396262313432626235363361383733393439653638653461343734343330633134616133373261366665323338393630613337303834626465323731313731633138306337386364663231316534316133366138326338623431653431613830326234383864646431356430303561663664396566313039353536656232323137663930356534313966653836656533323133376461653532633263346434303135343537393862653163393061613731346562633632396162623363353238346139393630633665623633383863383963316461633632313231363866346465623134323630363061353931363733383230313133333133363964626465643131623036316335386535393035653166633338383634633830323166396630363334383735396463626234303732346430646664616131656666313039316131616134646237656331343037383462353936306539636638613731336461613530663434383734353131343565333561626664396233653531616530376435393465646232373936623439326132663930343766373461616163643437623061393130386535336433613637343762393134663639343230346238353961633936343531636532656335333035646438373464313436393662666538363331333238363930303736313339333438636564316666396361653839656661303137356263363564663961323165333730613033373735343639353537386163643964643935373731366638313832636235316561616336343663303934383833613139336330343031386531656631333637663338386132383230313536653236313634303030373230633932666665623334326662376633356638333834623038356361383031373738396138393162386263303336643533626665633134626564303036373233366163336334646362613864336232333631316239333135396137616361663333393935343964663234636465323566333265373936633166653138613265613930633262383966623231626430393532373032623231363066393338303431616131643735616465343336616130356639383833386362313765636437393139333135623934376534623235393930626337313139636331643539623837626135303937663862396632343136353564343362366461633664666462646261323466666239366465363639663532323765366637336139316430613964383636333666383534663864353933656239653763316333643238636631383133363664393939646638616666333030383633383732343731373636663338343737636137303862393233626139646436393863356461303633643036373235393633353837363333336632663835363431633330303465393165353062303235326534636336653130633930643964613631643161636561393961356339666534376239616230326233323364353762303163623736636666356239316132366463656234643739643061613766366361626138653838666230353061353636326337643261626539343533353465663239323231346163666630633530656261353838646261313036316130393739623563333631653664336366306464313265346465613735376632376132343238643234623337346636616264333039306336613430346363393961653032306134353165623539396565373937663066393733623965646135343038333137393435663132343065666639336431653732653035303036386637626466386631653839363638393636336364373035373531336238646432626531616166363262656337383063656464306237623861626564306565333030636435386635336131393035336538353432386536386166386430373231313833303739373239306632663838363030636437346331326561316334316234343964613335396664333963376138333636373932313766653862336136346630336437306537333136643336636663343363643064303839633163643434386637333739646233396538356263663665633863616461626632616135656138333861353732643163636338633837646639303466323962316262346361313861336432656330393837663262363939356538353431313066636430303935326636336637633363643439353233636133373636323935643461313530613130336564363539343131636137376433643462623831646531613862373534353935, NULL, '2020-09-21 09:47:21', '2020-09-21 09:47:21'),
(40, '160083751944', NULL, NULL, NULL, NULL, NULL, 'paypal', 0x6465663530323030656663636432656237613832646361326136663261313365643435393062396664323134326338363134633035656536363164643064346466326564646362643732356162643038346131306563306366363336633434366665633139316134336635316563383837366631616430306634333364383631376339313338333066656562356237656632616630333136353666336566356530616361323638663665383866646166336539326565326533393363363065666333366164616537616636343833653366633366333139383031376163393237663637623235303738363136656539303265653661663232373835306465353961303639646132653264303537333335363737303835336233636230616664303530333764376633313735353635326338626430333565326136333533306637316264343335333864356330626430333835356464356464666238653632623564333561323866373535653939333335653639333863336166353037393166343562346632613638376239343137663939666466636461656561336435336139656237626230386533633833383564393266393137376336333331386134353465383731313231623431306632643934383431343839366366613830386536653537653663633765643961346234316532323866633761636533343732316666326333623039383562346638303637303531316262383532636238376536336563346534613462626665623736653031306136393436313566633131623232363534633936623031396238643030343963363663636334366638616436643262393336373834303030383765636333386337313538666638373133333436323462313433333236633631363036656465653335376365613065393663393037636135303436656361333466646134646336643461653363646134613734346337613837333632333637373464383762373862306231353136653735393136653564353235613231303938663132343961643565643963303734376266646339653362626637396431363761353062336566343933376363333835313263613664313935316362643231376139626265376438323866666532623438346332306334356435643631633764653366326637323836643437346630646235326337656531313138303664663764623831636662623933626163303061643035386537323763616238393437363637636265373732303137383763343738373632386237646463343339306632636538626335366630383061313836323239653736353432616363623333353862336266366438616665366265303634383233376533333039313338366463636239323061646636306338393433623136623038313961316365626130353935303330343630366435356165333034366435663664353664313836613663326263623465333536323561366533656130356235343737373035616532653262336165633663383430643831396265393433303766363537656361623161373237383266323766353162626165663632323965373036333237373530333434396237336638303363323361313034616264353066316566353132343035373661326433376630393333643433303234303163333435373037616439353538303764663531373762363437323366336530616131303035323237663566376263616231303361646430326161666631336165333534366666376666623635303262616361346436383762303034613538383064636136383038653062376266653334373935653062383461613036666238396536643264333365666637643461313435616231656139323862363030396632633465313236636330666332316364633537613962363564666564383365343239666336613637373965363566353938373535346637373738343464383939643237646334363862333838343564333638636532343364636232633934636530366465643162663863643165666663353432303834643536303762623461633437663836636663313239336166363433323439343462343466313761346132366365643038343132643538366539353239623134656265353531646361383561353565646635323335376532306534656164336234646131393766643431616263313339366563376563303763653632643130623133363938356539616262313964393562366138373935306630386161333936653534306162643432333061313266616265623237666361336663393765666534303734623662613534376630643935373166366161396539343961616531613161626337353130396532323663663737316631636363303965393731303430663863663062363437623166633339323236383036643164663366323137306364616461613730643435623134353434396464393935616237656637386537653561363038326539626632386635383566363166366364303462616563383038623632363435633564393234323261356537363761346131633365643966313166386165656264633139316562343035393533393533663363663331666138663336633135343837366134613833336333663737643566623736313231666333633538306335616534643931646161303835663532316438316339323366663038626633363438353834303131363735343937353066323461313963363431636263376666363261396234616236313139626261393434353336643839616630393833386335303265333134633435303038373066623062, NULL, '2020-09-23 08:05:19', '2020-09-23 08:05:19'),
(41, '160083813567', NULL, NULL, NULL, NULL, NULL, 'paypal', 0x6465663530323030376431333430366137393938386666613634373461323161383963613735373136323638616130636231646135366639353131346466643663643664353766373536386432613465376362376534376266633931396630333165326365323165633062323162333734636232656330633739373630626433363539613730363339346234353538646162633762646535343035376138346634366437653639656462353535366330393930383332373733316663636630366663363665353630393565666538333131656564613664333730363635303663383366613535323239353062363230313731396461393633656638613364616139333237356630333366613066373934363838393864383737663233356537366165653838363362613736386436386536613261346161353235353165333639336133306161366238343438346439633332356262316634646461653362363966353766393130376634313761613436623831393862663961343735663033373763666438303039616632363535316536636239313761633131663632376430323466306431303061623534356634376166363163373037656533393833663335376535383265663035623764383337633064313864653831383030653433376331356633393430323033316338353233386238326561386564636664343632373231366261396532366336383534653630643533323264393832303937333836386530653364306238343739303763373733383534653534393061663434643062326266313062616131666233333964663965373439336638363333626637363632383439663564653735353234376635663134326634303763343931383066363562343831646637633230363732633166623161383861623134653634656136366435646337353137313232663033666135333034333037303663383531626665343562346635363563303263643263303637383239663734613033343337656536356534363564346661323735323732373234366162633631346564356362393866636139323932363666326231316134393135633562613261326536653833393635323763353731363862303666356332313664303036366433613861666237366634323637353735376666663364386166353333666465613632333232393833646335353262353238393334343731313236396537303034373536373563336533333261636639313261326236623164643666313036346634333663373436613639626637616232393762356630356133333636646466353238623239343130613230653163633936643538663065336165373030316235373638616565346364376562663139313638626663396366303866313165626435356333323739303163326638633164386664613532383963643634613862383531666136333761303231316538313064623435323432383135623634643064303836313237656662373834363565623933636232343738323531363766613731353161396338636237333234663038346366633938393166636261303331336131353732393761316664386238633664356265363633346565366438653730373766613235616337633134653561653964666630353837396330363866633239333230323663353461346338313839336664666634646239333162346661363833346430323565626135313266633234616264623862636136303538663933313033623336643561373230616338626536656630656266646366653231373962333935393364653064316131396134336235623663343936306665303764363264373065613132373765613165353964633832346666646437323832376139376636383336343661613834643634383266316634316265333336663262313931326634303633343130363333643763396230626230656164323966666235366464643833393232383233323130303864303636623535653530353735353866623664326535376431636634353536363463346237623664353433623562353535383232336436313862386133623335636137663366306530646236623166303262393431313965646363363066313033376663616431646261313166623639373932343436393038373434626632313066333030393134383033363031396365333132633661376264613334643138326530396465633362353131393731626133393935343835393932343334313131666436323562363762396131303438353264313965333036303738656531386236643866353236373638613939316664316139623935666162636264373237313165386564653434636662366338323832353833333564633830656138373934616530623139323962646663333634376131316335613336666631316239626433663336386236363865613730396639653662643030346637356635643936353538613763663236323761383565343438393139633361663932373764623362353536313739613666373063363466643161353665633233343261636463636466356237623165303162643165623365366636386530376564386564663937353338666538663539396463626239373033323031326264396265616166313832613263663563363733643632333639343331333239333633383862363239376334623830643165636431643161336634646634633862663835393835386530323165333338346365356639326366623232653032393166313838393535316563373531613066356139343031363364653662346634653630, NULL, '2020-09-23 08:15:35', '2020-09-23 08:15:35'),
(42, '160083818281', 344, 90, NULL, '1010', '939', 'paypal', 0x64656635303230306264393633663366313737396563656264366661633865626639313732316162363161376162396638626462343062336162613230363162333665373633666631346566633465663063646433363765373362613561336231383963616161633164623063366439643733353333353830346530613864666131363136616538323162663430303532313066666262363461646539613463343334356461373732313235653133613338616266346566386162616633396264386266393130653437653565623866323138396138663336346133623064653661386664353835653131316435373535366564643963626434633162613164393036363832623563303562633130363763343738323766393937313537393065326361336535666332303938626433656236633131373261626433613130306633636130323938643938303233353537616435376136623835393538353566383563316231333538356332373566663464353365653762663837373437643031666461643134383534313766386334623533313563306162633462363466633861393464663732363561626566343730633763616535343830326335613534666439656631616461363465393361363136363165613666386363653063323438373236343866386462393632663336666630623336373638356133383835383665313432666462333933636363646332343330306138326133653433373364613234343736323664366564366233313261373238333236336437363635663264633931656234636639383631323532353239666164656365396565383739663863366666386265326634613434353930343165353433373366346231656439373561333739366435313036633761666166616361643637343038343839653538646163303336346662623338393331666539306663383265306563373638666335623561356133396466323934376233653964356663636335303666343061346463373963343830343734616365363462663531363235373735666431333235623137383132666562343761386266343931643837366663646239613034623166396361343939626231306438343336636666396636316463643133393231376639633333333036616333376361353732356534343435306336656463613866306635616462386161633336356462613263633366306335626663616466303838346338363336393630373265383864626335386233346466303230633463613965366164653431346331303737616330623433396333396337636339303130623833393633626239356361343461336237313836633561383032393164386565616561646566386334373235656439353636653061316438373434613331656435633761356438336337613837333639383864336635643266336265396461353732313261303032356535666633613863326164643637363230663037393738633336353932373435646364343833643433666534363836366435323761363664613365383865396233376132326464613964306136373433613938643961346462326435646439306235646361306536393533353365383461313363633834313866623666303464363036643537323131346531393566643335393533626134333864633164343232373936343165313866633464623430323738313834343863626239643333316531636265363866333766316663643735346333323031313334303364636363316665616565333938386234626236643632343632636332663835613632616630663436666364643238373435343632383936396162663830383931303165366232643637323530623265383939356464666161343939383232326234613363353034653534636562656561626131646662343365353562383766363238633239333034636165366136343463316332336166373262323363663930396234396232643833663437306636643064386432653962333866633965333233343963616535643133303235613538373036663732633237396439623564633134313364333963656537373134656666373965353332393364373963353366393263643666343134383434666535333633393864633061636263343133616136373764396165626330346335653631376363376132653932643965653566623439343662356136666130623666323939653636643636373537303864383835343166303831633463356230343566666534366237643137343036366236623361656436316530633131333134386566613666313337343466373233633865323632656531323064613735396562346634663263626561393939326135343834336634663934613562323761303166353434336330336461323035633630393538383766346663623437363762623537333532643036636562633464356264616539333864633562326535323938363933333531303938666133373935363437363335323434376364316662636561353430343639393731636136373364316336373162313637376434613162643039353336376234333635343961366239666639386533663638333031623465633863383061623163306231363337333731323330653236303464353265346338313363373261383235326362623566343638356561643638316531343030353031323761626563653031373138363732623963393238613161373131336133343963313733656633303433373763623330356438346132633063663436333261633563643239326338356466373064636332303731386134363034356365613465656131613166313233353961666337343537373533353734313939383565323566393161313962343933343964623536656435623036353531613036333831646533623036616534626563643435323034356235363366353961623738323139666535636333356561373635343935663239393966316534333864396231313563653638396134313363363738396665373662326365626161396363613233386639376631356633656338393731666562653065633462613165353766316261653464353536616237333131636135336464393432613031323337393035346635666165643261396430316633636633663463303861306232303966333433303831646265393263356263303063316131383735393864636339313334373831356462646464643638323165323134323666646533386134353030393435366332633764383266323934396466393033643637383239646438333165343534393532343565616138376461363864623064306637333563316265653063346162393333373564616361323939363966343835663830336439336232633965363537396632623861, NULL, '2020-09-23 08:16:22', '2020-09-23 08:16:22'),
(43, '160092533712', NULL, NULL, NULL, NULL, NULL, 'paypal', 0x6465663530323030366438633632653835353362343762623330616337616632313831316531343531373333396636636430313061613864633866633732393839656237663938373735636139613165653130303935343730663432633864323464663730303539336130393230346133643234303233343766303236323562386537306263636131336633326131386237666138376466393935376537323161366637343239386530363532613036353230346264313239303239396436646231313266373539666365366561633530633636383762393266343634623332643732386466373365376336313535633165636135313966303463326635336163643530303837323563643934336633636165363039306138663238373032363463313435376132333566343233666365303665356435363133636665653563393763313762326337393635313563346639663566323838623636386330366464396339613562626331643862393137343639343030656630386139323330386662363330376131333738626139363461356566653537633636346263656161353665396165363031336632343338383863616431373862353134353939313436646332363035353436396131333233333031356537366534346233303636646137383161376234656231626535346465313330373436393966353339316439646532313338306161393164363861303164373737373636303839653038643038393839303836653064316332303563356131386131303965323433343662663836633638373864366135633663373362373136316536363238383937636536336236346130646436363835636662636132353939333235303931363838353037633066336233633530353963353166633133386634643166383439323066623933623565393831306635633139653837373930643634646436656335396666653963623532306633353662656232616639373135396331323063303632356537363066383733346230353834393133616337326537323136323462643834626264616634393235303935366233333562616138616262376264343633393832613636656163383630353136336337656132373036303465613961323161306364633739343636363061373235656463393634653063313565386633353039326238306161643930386162336630626465376436626630613663636438323363623038653132303165306635353935306566333837366333326438666239616462316536336133666237353265663162653365343263363265393934373031666134343538366365393962343939636631313031376631333265306236323139356162343938386665346261303366373730663938366334383932386130626366383137336531616266363333613330393865643462376661393134386431373332626263646232613434366336393039353236303236656661316464633662323439653839376166626365613532336366356262356338356535613534393530393463636237316366366537343431613330376533363333393762333130366164363966643239623137316638306461353835613930333761626565653238363666326564356161666634353365663330306238366131363338306233323062663331373264313363346163356636393235643432393930386464376630656635363731373030313063666663386333386161386465386164616130643332373766313634336366666361396232343533643732633234336239643463306336626565636263343566623865323839653936376634306631323134666436376631623236613839393236323864343462323162653633323539393432623630366238303238666565366534623466326263383065326563326562666234373663303937653031303965383833373537373030323437383638373930376662313064336462326230373532656662386664313366646465613430383131653839323232366330363561353962616434643464346433366138333130633466303363353938613434323837353731383630393834353965626331303330656635663132393931306232633662666439336266323363316238616663363832656439623264313632623639333264333762633764636562366139393736353030343737303161313934333363616563313938333731323864363533613532393235643830343461643230356336616338653363373734333039656139376538363433626162343262333133623966376339313238656266353839393236313734666639386632323964396334656437343035306463356336396466366430353764383663336166333131353264393263383866623833393761313438336334306331636436363135623833326564363438376564653030343466656135646266323262363331353863646237386333623730613738396533643332313931356133616634663039653261643134386666373563633938303534376130653939613134626137366536653237663235646639643962386661383332643862663138396662623465643035326263303132396537623664356535656261363937643936633032656433633231343466656462363136366230383633636137396438393961666136663261323066336239366365366134346639343539613632343633636465653932353239643430303637626137626465323837373139623930653366653965383739353135633437623665303864323436313739303161323666633031, NULL, '2020-09-24 08:28:57', '2020-09-24 08:28:57'),
(44, '160092547242', NULL, NULL, NULL, NULL, NULL, 'paypal', 0x6465663530323030306237663235646436613836323036313835366331626238383436633534643535386531383264656631363138656538623736386330323863653065326565666430383262326365646631663766363063353033323738396335353138613638316530323937633565353065616132386666343935393334633535363661346532363464383039303062613961323461396136316362626636333064636263643463613732323531356266356562343566633066633961393633376264343431623430653138323161353463653438333830633464623562336366356334646561323234303932646266396665303732636339643839356332663264363233633934323234343234393163313065393035663861363238393933636233346261333263336162323138653666346265343635326462313535663838666434396335363139323362343038353863386437396638616137623733366239356632356430653630646439376461333434343334363339633437366130303237613961616634363061363038303437646431346162316664383664343165613931656633303932376635663332383861633762303264356431363764323364326461653366333936373164313532396333353038623962333238613736346662393337306638383036393262303336613833386161316163336161633462643139633565366237393936316631376162366330326437613931363839343034663331393161623935333266313065346635623331636134353662366662393861386665386139373131613965616232333130666563346233646263386137653738643339343263323739616534343662363435613332373766623062333833636437306563323034363632656565353431393839663933323030396232366262336538353036326164653438353666306638383836663635346461383331383366386237336131636565313037356162643061636339643938393336383132386464383832613333616434656133393033393039636231616431613935623434326162643030313037323065663535626232653265333434363835376334336263306630303634386433623261346363646132343039363531363666663163616130346265313463393731636630356163313137333833623462636238636362376665396539343936666438313639663237373030303963396662663462363532636264646663313463373263633138353466373466303861393035393032393663303663626338323766336231353437656666653138386332616261303365326366616333376566323665316231633932646338303937643763336561616464656438333366353930323762393731353035663030303134393839623936383730613966333931653734663836333734336136343130646265306462613338326439366334333530366331346131383632643234306331626539316134643535626437663239383835643338393763323563356237646334303531656435386339396163303733313639666362393963343539663437366361363263353233393238653831646563363939356562633233663063373361656131353531313332396536633739666636353935663237653063343962613936643562303364356139333930343132316336633862633265383032393963613735393064626464353934393064373835626635343435393533383838383161383535666434656665383662346139366134636631626138383665613561373963303063616131643731323765653036366539626632303439386536343731643930363964366563323434313964613464336337663364643331316234626163323964656464666465616338336639346533343933613764306537646432663939373632316631356134626235303635623634333665636263383332366432663634313830333561343137663465623832633232326439343131323763616363373831656139626666643431353039656531363437656164646534613164663936313630646465616536393437353938663565636538663161653633383231313331663637336533326264626362356638613932616535366666303764613964363132393634623665656333363032356436646165666362653430353664636533316662656533383863633733663465396534613161623830336161313139613962396230613530306363323336353439356337643235373335373037346161653634663538613734663664616536326330663137666533393265366634643733626433356263303261346630646531333366333162616466336463323737356261326563643065303461373039346136333561313131643564663432303566636134303535313330383033343338656561346632326439393963343735333233633638613764623432363831626363393137313866653561356233363961303031353935383239663339663531386634336633373764616134316138616531386330386463376537306531303764393436616166356231666636646337333239326538343232616433336365383334313262356530303361356334376532613437323664326165613231636166353463323461613762386139316132326239333635633730323432386662373235646134333564333664626232623730626432383066616537633935356438616131306434666631353234613563303239306638303739366234376331386239643037666562663036333139633133353261326531, NULL, '2020-09-24 08:31:12', '2020-09-24 08:31:12');
INSERT INTO `job_payments` (`id`, `uid`, `user_id`, `job_id`, `plan_id`, `amount`, `job_token`, `payment_type`, `payment_data`, `status`, `updated_at`, `created_at`) VALUES
(45, '160092561446', NULL, NULL, NULL, NULL, NULL, 'paypal', 0x6465663530323030343562646237336139323637306138656239353439353332336264616134646130396430393762653030663363363930363966373438373864623162626235613139353631616530323035363665393039653930353163343366306265343665376639393738306438626562363737393331616264346264656231653330356630363130653834336136633761346432303935616230336131386366656335643033326264636433353737306333623664353130383430313638316366343833333939633539643561306232346463343430313637343033306264666337346636303833303864626366386665646361373535663636623536663662613433666661653935633066326639633663393566366264633461333332353334613261623937373939303265396633383835333132613266326633656530653363373138313330336335653837383362373736656436643762393163323834366565303765663730326636386433313032396463346361336130663437353137373337613563366132313063366662386332613738653866333430663966656261633336646238353535633035333035373866663139626230623361333434373634386365313830623563313835343634636535643661653036363262616436396364636239326533643432663664333136396439653734383535393165333734623035343833323938616365303132363737386432393461613066643562353937613335346333393563366133366465303433376130333138376234393963613235653064333930383465616565306238633966393166623333323364643234613032373862643630653337613330356465386333626162656665643462313335353932373133373536613364356333306231343631396665633834306231393964353364646464353464396231363639353531386564643862616166373931343036363939633863626139643461626531376465653065306439633832386534353464303235396331316163323661376536333932346366356163383031353634363932623335396135313839343332343833623561666431336339656536633962313365393166363665633561393338366132666436356434623461636133373630326232653163373435396364653636613935373438393332363739353433363938633862333766373366393163383034623661363632663030616666626538313139323635383534613662636163363136313563306364646266356662306436353634343262326662313030376137316662316133393534366232303330323332393766313865613835343436363861323164313732626265336131633231363434363262356338626366396263393965346536393536396536363265333165336137633734623635393732306264346630323539333337383763306338636665393437313238366532376461373464323865626163633935363364636639376638623533653630643363653432616239326634323337373062306537393963636131333639326664653862316539623763623666326465633839336439333064613762383665343934663535303638343164653664643937616561366232313262323864316332623432383538323439633138653465333739303263386165633636353837633861323066363366663531653133663364303334663433623462646232363739323066303337336230356338636561333063326533636630323131663934643730653937313130353735373433393132313930383730383536623636333738336466343163383865306433623963386439626364643832663030376237643063643430626336383935623064373066393735366434396331613036633539343034656364633561396430663632663435323366646431653931353836313064643266623234336431666637656335366535383636353533316537373538396461386236303638376436346536346334386264663964373039323636306365623032306338313066376663353130376366303838336630396365613939643738303932386662643963306366313136613031396632343739353639303261646538343230323733373566666564386235623937366462316464336138353735373830363733623864646339323561623263306437373534353865323763366136323233666263353436633934353765356261613737316635646363323335663633363236656433373065633366346635356434643936343134663131636432363538653138356635633965353738323965346662326335343766363238666531613336343661643938623666366361663934356364393939323735323137356637316262376432323162353936396565373934613335656462346561313730336138663333333335353662353331656265323234653332306534616566396463646664656133303666656336343031643931323830326166353563613330636438363634303236653365326566343539313963343239346538316364653531356164373463633262306132353735646438653439356230333962663431616463383834616334346534386161623632613164663135633537653439323533313461626134316539666565393165326631306238633135363138303139343437343765, NULL, '2020-09-24 08:33:34', '2020-09-24 08:33:34'),
(46, '160093164578', 344, 94, NULL, '110', '1198', 'paypal', 0x6465663530323030333337303337663632636430663039626365663430363135336234346431353238326631316239333263353561623530333365366666323863616235353761666263653763393839393837333439386431623663333863626132353764373831336166326164366335366432336339653961336539303233396463336239373361663635333034373132643964343339633764636233376265623664663664616639376636623633666135616137326534323034653439643162326261373164333939343665613637323963646637343064313837303631626138663563333631323666353765356363373736626636306166303733636464313966343239643536346138343531353433386631613761333765323133613739316334663235353662366430623735353831343536326266373835393831323431316336393662303033303461643166616361373066326235613837643036666464353331313361376333303234666563613939316462663264313230656434333835633062326664633537633662393862626566343533333166396334623232326430653563646538636537396666656537623465333730393234363465366666313961643130636364396231313464386638323331396534353738366664626134633361666137323237623638633935626661663361373433306535366238353431613334376236383639353763366265663732303437363137326232383331616134393537616536363733313735356638356463346463613162346635633533623733393336323930623435373630386665626138353438346364353135633834393164386264653765303831353266383131303561393638303438353332366233653539396530303730666163386165373763343761636331666231646439623561366238353835326533623237303264613763383463323366346530623638393638363236646662626231396465366135636434336430333165396266383932653139353535396530366435333631326331366366306330613537343434646165616332646232336362313761396565346435393962306431656232346338316564633834306430373736316139636138633236366437383036313761643663633964373261306238343861336634386464623066643430633631643032356337666133383165613265613831306133386162653962323161646530373531343237303633373262643334333239343561376364646530386666636162343535386334333463666630363130346630323535616137353031323335663934366233383862653031393434313065633332616537353036643230353534643664346530353039613331343437346332303536336365313730656563376262303565623838393835323230383830336332316663386562366538396133306461633563363436633339386631653332653766353732393932363735313933303063373430323465376336343464626531616430373039666333623036343433303231363330346138663266353436653066353633356237663939653133626639383663636332656532643233356431316233323363303866633034363866306333313036636464343930653535393964333231376263663864663466653639643038353532666536333835386633356438306262633638623362613336396531623135343935663433613362636638343965363436626237346461656137653631303633336664323035336263393339386264633038386138356337643665343261353461326438666634636133323330656665386562666261376666316363396331626532616637306565396562393331386562643735323064396232636562633764326461336334346165383438373065363433346363333063383564663438323937386330333361633233326264613233396236306363623366623737633730653966626434303766356566323764613732646234653737663166323338636564646135323638386439643034623535303962323337663561643963633764396438356532626564373131656361356266613835383034366235643434653934383736303962326266656135313430623535303765376666393339383031623535393830623861393061333339646662326466616532313438616338323035303435396135633163336364623963633638363039333136383531666538663434393736643933636332626463313730353264303935353237613565636535663839633863396630626534633432643563303730653266336538323636373663313635346335313133626635396662346232393031653236393130396137353635336631356361306536303430616231306337653764643138373264643235346564383138636466666365366434616336303135633436343930616439623166663834323835396561343763303232656631666266656363663263336464366361316463376630373166386331383437356462616634333465613832613737326339383962333932363262643435623461646433616439313063666137633566656230373366396533333036326165343035343938636637643137623164613130363161646665303130323636316435396565663631303863663562653737343637363630393432313063633537356564666533653633613261666237326336343535323435653733373638313732633436363131633234303539666438343733383932643032653433653939383930666365353230663139336535313938356238656264666534616666656535303230383163383163623464376231376161656566383837373239326637376233656130396466383938393939363035376564623532636162626239656664656332376435333461383664653536663733623935346361616539313139306635666362326539353830363434343333656161336635326261396264356665663238353765333336643661616339643562306561656461316234303062643330653461653834653637636234363962316435363761383634363433613131633131663538646331323236653931643933363663373436323461393233346438623361303833613366646561303365353261353839623166653132646138663830633332656564663064643938333733336230653763393166366430313838376363666163313034346338366138323866623739333933663034326536336466343630333564353232636332393165646162346638613832616631306138316261623131333536303965646238626162656433643637663934343138333036616366656632636437653631623038333463383536383935633838643630373764306538343232363738333663366466643335336234353834613836303132316336316637306464333536333964643734646665, NULL, '2020-09-24 10:14:05', '2020-09-24 10:14:05'),
(47, '160094383624', NULL, NULL, NULL, NULL, NULL, 'paypal', 0x6465663530323030666433663939333332373638626333616533326431356261663638343435356133366436396362656336646330643030333963323831646337353865326463636439653761356466373336333865343831643130323330386261646338333436343864663234323561633461333339336137323564666435303464626166373862313030323335633136313034643439303330633063313264333930633361633562306565366234346536366538306439653861646233346665613463316632323962356664386231343037363932323166363263626130306163343031393736313966653930653436653531626265323837613636326338343964346633363961353461323639303938373835633233646263656132613631653235396136313463616432383864336236643563363962663861353666393833393731643137303963346537343838393030366361663931663133393061373232376264656237316136346165386562663938346636373233303539633732363462353837306665346330313936313032636434393830316532643338376565333961393432623938643563613133363166663964363962303261643538353738366135616636353936353364356465623239333665646166336239386534623937396164386165633161323531306634663762646461663433376363613933323033316135613731623865616463303735363838323436356533616331353333323539323666326365393439366638393539613066373366323332393339636265623366303631663961383336626336336434353063643139363134633239316332363562363335353661316561616366396338373234383536343230326635393463353131313236386531363935353536383265383039613966663539373861313238366339383239313736646439336366303136326633383864653339343863373732376431356434316436336137303735356533373137333439396361643239613864353530613839326535363261383333336465633437323838366538663532623332346437376334363862316632383030643435383865313564393139626130616263333239653166663232346537656131303533306630323566303762306639366233636466303364356531373135303337306139646362303661323433613964373833323262346433616438323564643632626265343134613237336261633632346166653739666236313632373761616564323563383764336462326332396666646333353766656331383263623263313462333137326339353739333664396437653636393937353034633434613836346637663831383636316661663730393134383266313635663335613833373435323831653661336362616166386262663636643637356238346537663039393835623461373762633135366634646434306433343636326363336333663464633231363065643762623034616230313634623331663530613631653238626634633336303136373030616330636361343136393565353138643863653639613562396630306134313465313736393239313762386562643364633932663035393730643733633736386261323635643630613131386663346133336562353964313261613161393230653338303361313064386265356163386632333265643462323366326230633938316163653466613663396462633230313866333465666161663334313464623339313762313433333436303764306437643935316637333336363034613233656331613961633434663339373061363963376237306332393665633835333530336236626438386330633831356264336163356266373065316335336631313131616339653665313839303939633330336662303634376439363935633662623465343235613334666665396338376562356132653735313332346336653264643562626564386339376665326636376335663439393466376537313762393963363034363566636564373838333862393731616165333737313139323534303836343939363964303131666336393866313033616366666661373036643635396231633837383034336131393530313830303964376130633134386362666630356636316335356432663164376331313961326265336161636335383139356134343162323830643639326532646566626330613639636338386264633530633665343236656462663966613964323832653837623831313034393330376239376462666465393763316164356664363033626230616665323366643839616362393033303239323266626437633539663964653438643362303765386134346465343037343837336136376363383937306137383534393864313431636666326631376466386562396338633065366334313863316334356339373766363835633032363866643430633363653864656338373965386130646633366366336631336432353162326336663834336262346536326436366137636134646536643464613736306464656236643134656136343065303766336232613434363265363733663233303263616631316236653561396132666165636331333230343166663762383939653333626131353732633130643533633238666632633138653735326264336532646665656434663563376131363564373237373639373038313463376536636663303135393263346536333035363761626164343163613833376538303362636131353232643830616439353234, NULL, '2020-09-24 13:37:16', '2020-09-24 13:37:16'),
(48, '160094387642', 344, 95, NULL, '110', '1203', 'paypal', 0x64656635303230303531303233346134303661626665613835363264653763313334386266383438383563356331313636623534623265366263623263313836633436643066386161353366313631653336323237333539326564356436653537353038386564353663373332653963316161663531303435646261653434626332353337623339356138623137333065333336646466353935306163356532653966623432653039626365373630636539653837666236336335646631663330653636373066633563663331666262373765356230316430643631353935306266373937306133323030646137626136633637346136353835333765376437653136353530653665326261626631323339656262643839643362623962393839626337326336333436393465373639336632663836393164306339613930396131316466656563393738383532633936373164336338303433653233636165643932333239386266613265306161623037643738336635363731373934323464343565353036313538343362613765306164393235363631343835303963633736366137313732366231346665326637626539653962636630353363656330666631316339636565666133653362663332323737393233326663373234336563373863333732643533333532616532373635343632353164316638616464623634636231373339666534343639663630633635643437643032663933313636623631323335356230663030343732646630383061336261376330613732323565633863636333653635333637376265323966353364313863356461346465613436626261623834336135396564646263393864653864326536646565313165343937303862326664386139356138663337616266323363346238373830316465636362666534316437343964643164333661313433353836636333636231666264306361663136313365363564366439623966336361373935383935363732363539333934313039333632626630383433643830343632343362646232666138363665373632363766373466363930613935646333396637313239393766613039343433396365303163623131373437656461626362623030326562393564366330633031393339653637666632613630303536366539373138613835396438373439363864356433323666613532373238393561656430346334373032613032356266306433653037636131616433306338353833386232623562313833313531386336343831353233346133646265343630383134343962633661396539363466633536613431313937613332666438666633616239373064376361633364623166623063393335386563323637346661306436316338373339383535613736633634326162393564656236393334393030376464316136373433663664386263626231623366353437646163353439666363663730653164363636343632626538373132383830373863343264303163636539633035613065343538623833393031633364653964363538646261363938303061633665653263663835313233633638343636343762313836643833653436636664653066633635636537663635643765646632313737383436653163656666626161613434306337393462313832653835343262336436636462346239383939383866313934663535333565333438636463633636653865323832303266653762313962353930616666346364373539303037623338366637333133393531656265333339353433376166386664633563343462616138376465303238306661393033306534623334366538303563616464386133316635616366363233316262356561643165316265616236626536643738646261623861386634303938663262346365646566616263393465373335613764656336396361353530306430616138346464353963366266663362323631663436383938316337373139613430373764346139393131306237333436306636343961633333656330326666623637366432643932383733616665393264313766303437316665313433646361383536373732613231393238393539316233653334656437646434323661393232633635613464663831343637663632643230663639373564623438656434383561306637363864373935363264616230386166363634663039653437633139313861393939333634333262636138396635363264646336386332326134376663373131623234636665656539613934356465623235306635383365646561353865376639306164313132343435313739396136326663626262373233363636323866373730643134356336663337613264356130306561366566323434366230353264396136613530393239646439353766343537316364346664306164313734613238393866363139363130316466353036373232646662633733336362386564373738366635333764353837376662636230313235633332393062306536386366636635313432303363343863343531653032353839343564393566343136613964373639343063333836366666626439613134653630656234653862303030646331613230373330646464386265346362643262323331386535633433373565633333366464303838613235356434643263333165386134393162303338376231386339616466313866333636393935346536373030323037363564623561653063643237353762396535303862323863373964346436306366346534633836316335353536623734353363663964303330366462316535313766306236613361626531356230366436353932353064343564366337383030343733633131613235646231356565376337363134373735366262303936373866623135333539316135373764343061313638393932626134346439643165373565366234336137356232363539396363376330306366653763393838383339643538643332396638613538646666663361643639343161653861346130646466373263323232356232383435366635316439336537393530346531343562623466623137366436646264386333643461323465656637303963306362623837343030653165663036623565313135373232636535316165666639383362326138633033633538626464393939336436313065363766363935626436643831343939313538313564383963353737353830396338343236356531656435343337323636626130653735316462656237636536613863346238343266616432656634313262636535386661613064666639613737356262353732303762313530303239373535633961363139386637653031613438346162336132353631316237643364, NULL, '2020-09-24 13:37:56', '2020-09-24 13:37:56'),
(49, '160099908557', NULL, NULL, NULL, NULL, NULL, 'paypal', 0x6465663530323030346462396236356236323863373232326434643562353930626334653333393135666231323464323230353633653533666234306533393665323633383033623134343938336532633766366238386338306339383331653338313338316266366137363062646137323062346333663764343331356432623462333738643837393538343366663164616465393837643136663334343364653361326363336161393935373131316565666537323566636431303864636234376236366466396262666638376633353430353139633735353632376631366262663865613334643937643338323931313034373266366466363935623165633464356232666664316661316134626131613830613930326366646531653238343664373765333336366263653937363061313464666433636134326334363434346566393738636338386532346363636132336463336336363365366230383261306639383664653138626234633137303936656162313462613736666434653365363363616561316665636566323665656463393434383064643464633639653666306265356536363233373530326537396230396162393939343038303435383432303266623038613436386662663739373530633732353339333430313161343137383036383038333933636634396361373562636135643238663935353736633637323431393063353863323262633764616338353965386338343236316462656365393238353736333135303934363164383333623437646266666562623439383333333030396236353638373430666363323836383939623036666164353563623033373365316336373534333263396237396639663132626131323566316436663733613764323063333437383139336563643333383239343032643863643939386430656465343262333633623531613936616362353564313232616438663535646230633837336361366436636163656436626538373866633335653162653465373634656535363830356463333638326166376334383066653833376261653164643431383034663365633433356539316336363563333862356561323036633034366132383162616465636664363432336136383833366362316632396464653161336463666561666135303430653762643231623437613133613931366438356535623631636131663430653962343633373563333365313764663432313065613333373538333632336134323332303164306261623261393166393165376633336533626234303966306634653438306237346633303531666335643230343666313562386636346365343934613661656635396165366539336132363331366666383566306265343739373532363634633532653930623961626561313636646261396630663864666637613965653334303831623736316437303235383266623561393431316237383939616261646638643938626664613339316337616635326435373661633230323832346238386532376533376431653164633065366261643432646233316664333032333362303936386663613564356461376663333239653164623133393665333662363338633335373832633661316134353261363564356233643437326139633432353938393862316663333365666337313661343138343231323165643038353064653032316339343263353238663034626138666235653264666633393433373762373834656462666136616262376161633965376163623966626334646434393465616138353932303864333161663031613537396464663732346235643035353234343966356437633632363436613562666162653664346430323865663266363564353166623939313536393434623530343630373037643337343362346664363566636239613638336466323833353838333438303864386530393865646263343461396665353737333035656265663733383737376135616363626133363064663636663434343961666134323137656262366162306563363966386561326636643563373430636364343262396236313565373431326236363866383266326331366331333030326233393762366236363466623530633038633866393433323036366463636362663563373834333933383762343238353933666138636131643435323433383337313338313731363833393738326138353833356538313963656130383266613730393733326134386635333464663964646236356230353963663930363637646230336661393938313639653736306431343836636133323633636666323730306537336637323436383265303137643134303035666334363165316235653164366437343665626539636338373230396531303432386264633037353631623764663937313865393535373637336337393164663435633965663134326439383062383265363165623435646239613639613232393937343236626139393537316435623232663362323231396234343037373736323336346265343032323166623233643033326636326538613332326262663235366231333166656131613236376561613730343764633661616333643262663438396237626430383632343233643636383931386436316438643535303562383334306333373338336431633466623232396464373262316137303334626336616430343262666638643432353966653234646435333532633237663233356633386536336130373362633534303561663466646166633865373538383938, NULL, '2020-09-25 04:58:05', '2020-09-25 04:58:05'),
(50, '160099912345', 344, 97, NULL, '1010', '1201', 'paypal', 0x646566353032303038323162366331323066346166633932613438393539363163663061646435653064643234626239346334656237343265643361366233663732323465373536303833303666653266396638313265636430663630393632643330333638616166376466656437306539656238346134343431373135653638303531653936366135303137663234656230383131373061306236336461616433646262633433303063633633636438613034626535303164316666306132646164376430343735393032633661653838656339653234393466626361316235656136323431636161653065303833383163346335396534623539663838613039623036323864616363613738653766303234346130313165356566323264303037653137643966313766663233323561363230303334386666353837626330303965363532623339633265393837346666363338633731633835613236303861363237316438343966383063353961616232313033346437366365326637653439623938336535613839646137376364613239336636623037343835376434343435356163396230363639306538303764323938336564323064626561383239616637353837613062316162336161343133663831633433393361383033626439643439363764346338353637386338353239626230343565616366393037336366646230303530343939663039343234333534353237633738336564636564373234623365643466633130373532356364363939373439386338663434656438636465613735323366326361356233663637333763373934666531323065633165663130376231366438383830643366303636393130386539336165613438663631643531363638316439303236623665336639396330366430313735323664353133373934626262343336383264636233346538363237316664366234343361383465396634393161623738643361623730383937633635633833346166373035366239613533313832393931666234646436626163353536343763623036643062653835613638656661303662656533333537656438303632386638636232643366343930363831623530643863376365626363656361643633333734383338313032303433386538636439353461323833336338613461333332323833373662373765663630623462323063633532333430616363363865623563626436396538383132633436303435393632343536303537636362643639316331623233353037353061306532393630613739613162353561316635646331323163353639333034623537336435643362366236363164303563373836373933633833303837666432303234383936383635343564386636616535663830363461316137336330326566353366383364653664623636633532623364306536383837643161306134383539353236363962633564346537653737666261373661643530623162313137633264396163346537656539343630393437626336613232396436356437333263316633396139323231313166346636663032333462336330646637313037623134623734363062306561646263623636663564666564343231633134383739383664323763366138373930306632636337633364616362373461373634653066623664373463373862643837643663626563666333623961313332373836636236366630383333323661373237323465336137323934303864393063373230303534353635353839366534623430393161383366656337333538353335393536643233343736356134383030613739623131623331393634326232323364383364653430363438626464323738323865353363383033393561643562366533383165373333333638363763333136333564346563303463633030626631633633306434393330616634343336613463333134633733323266613730633362383038376335653666383438643862663735366361393565346531626365366166633238346561613432633065656362616565656630366334666163356463656262363366626537303830656431363539336338363832323662353363343438623733343165366163363833656663303535626230303435363232366535653836313437323963623263656130353931313333633634363635346235663166613530626635333665343265626461333238663166663030653062306536613164626636363938613934636133313364626532653933303531323131643461626139306561363830306264653931363061346135396562323963343065346561383735323066393031653562396339383032363431366632376166396639343431303165306366303461366139636534646232653233373863633563613532616133633330363137663232643866333736396435636430623261386461376336303739356562393230663139633333303736323931623063316339656139633336323465643264663061633339396133356235316661363161666265323534376230633835616138653836393630343063373835363164323535363065656637313065646539323732656565383361363436623335616261333339643765663062316663303130623436663466616234306433383939303136666632333535303966656136333339323032333663626164323537366430303463356332333336386261393135346335386537386333396635383431316634346432343766383737363433623738343436623937306366653530306265623366646665346565383963346331333439373061333331623666303136663030663665643237386638383234643664343834633061373363363335343738333661326336393562306461323039636638373035373365666635663966383137343166633338636530636636376335396531326361386234353536666663326435373564666361643532633534363737366162313134366231373564636534633963663561333964313630336537633263613761313935303866383136383161343731636665323734333536346362636630633063623565653034306539363931306339336366623930613832656264663538323731363137346134343466643130366637303033613833383666343336356538613535666530623235373161356538383835376432633064383338613537326561346331663139383036653531316530313439346563663765636263333731623466363533363236363831656562633134356562316166383232333937316533633431333365626662323931393966636364353737333030303564313238353165616634663933646661356638363034353164383763613832353031626236303363613438376461653165333132, NULL, '2020-09-25 04:58:43', '2020-09-25 04:58:43'),
(51, '160135260241', 344, 100, 6, '101', '1200', 'paypal', 0x646566353032303032663639393962653936613262323030306538666230326362643064386333336632663934303263386330373331333334656266643637376361303736653661353536386538373563663764613562306434636633386165333131323362613061396639343236333261386138333736623362373664303162353732356361316163646564336634393461383861313435363662613962623864336661376332353033306634353364356631623762323864623364343434646564363136336333343230616666396238323731633734313765303261646165643830666661383963386137323164633330393264393136613138313462343262333264363339643738396439383735613230323631663462613865353931336462613034626165663133346439656334386139306637613361303932386637343835643231646430656436353231616361333861623963643536636162653861653562313838303533646234353631356461303636323663386361343936353137663639376364383632356435636362386639383964333736373730303766326539346438396364613465356361376534653338653737353534373762326235323434666334373134323238333536393931383330646262373133326137656637353863653631386632373564653136613734353261353163306131323361666530623866623731, NULL, '2020-09-29 07:10:02', '2020-09-29 07:10:02'),
(52, '160135265861', 344, 100, 6, '101', '1200', 'paypal', 0x646566353032303038393536373038656638386338363530656464653437343066663134623665656664656130623530313561613061363439316232306663393536336564316335653039383064383132623136616234366533313932646638386665373431326235633139363865363939393733333236656262313763316138376239656437623634333530396263313630323735653663373332623564363336663562643839323334666364336431386232376130303362666634313434613935313138666464646665356466643066386638313032643130313464613334636563616638333335643136323431653937313033626466393665653963626363343662646432333532666262386438653633376534303635356563306162633531643663616561353432306638313138353033306530613131636635393530316130653430663636326233336630316261386365356637383662613066343166343634386465653662313935653163343738363231356639303766383862663064396530363835613965353932376264366561333934316339366164613135626630353463383738626339613666393038316431653134653265633864623735643664376431363431303230613134383836393432393061633333356531323937656133366261333537623530646631363966623561396464643235623030383030386237303265, NULL, '2020-09-29 07:10:58', '2020-09-29 07:10:58'),
(53, '160135266029', 344, 100, 6, '101', '1200', 'paypal', 0x646566353032303032323532303131633232343830663463373334353035393363636462373536313839386138623665616364343962396130653261613661316130396332366636646531626634666463363337353866303963653266313364633434653738306433353837333432656531383534663864613231386135383565633237323537633430353863663631653739376637636136356266303932353139316133636462323033613137393533303035613538626466666665333337623763626461323839396137633635306430356638663835656532393433356361383938313366313861626666376237393962323139333763663162623330336539613264353334356533663234376235663263303038396538353532323932333563363762643564613366323939326531353462663562626532633164323631636230383361396361333965373834323734653264616239646365313431373061396638333739323432663635323634383461613263333265663163313232313932643561376263333964386662633064633033356136316138393163613030623262323365613535313636623863316561336133633638366637356131626535663066356566323037626438316436663038633164373538616161383139346666356533353031613537343531373235616235356463623831656166363837333265373063343865, NULL, '2020-09-29 07:11:00', '2020-09-29 07:11:00'),
(54, '160136526950', 344, 101, 6, '11', '1202', 'paypal', 0x64656635303230303537333633656561623866663933303339373064366163396266653439376534363366666538373366643766393237626632373534643138633032346363323138613639656533303534376166323637383239653731396631373064396135343765623835313235303039663537623964333736643238396433303434313436363662643364363332363763306237313535326264663637643732323439396666363634653631303035626461343265363234323466613939653763333331666633396566396464643762653038616532316434643765666465356164636137393133326339336334376631656264656665316663636137323434623939663164383365343835326136613962393461666334373335383864323734633934343864326230616363366238616235656565316535396330353336383062643662623533383239356333323737353034303039383436663237663436303930303364373132313732393532333937373835613463356435363339633835613534303831333637333336343132313663343664313230613964633162366535353234623430323863373062626235616363303631643532383466386132663662353338333739323734363964633730336161626638376635626561346439613939376262353439373337306132323361316635666566316538373062303033373632, NULL, '2020-09-29 10:41:09', '2020-09-29 10:41:09'),
(55, '160136938222', 344, 96, 6, '1122', '938', 'paypal', 0x64656635303230306235346334366563616231633934386131313837393162326161613133376133643538326265386539663064386239663436653135613130636434363861373666333562396234356336663535383236656430373566353037393736613938333363336134376531376230333338333331363934363463383638396563323538636134356231336166656534323133656464346232353630646132386337363036383565336133616463333864633731316335656264666430393735303235353136346163366463356130303535356137303166363938633462366437633338356164316639636539353062616435373231666639383763653430613430383734633666616139383539373462393565343633643566393336333531653031656435336163353630663339393262653433396638323961633036383635643730356431383066353961663438626161306539313430336663303631373133343932383037306166313038313437343139366337303137333332373964303237633531336531663365656333343939336236656566336638653930393436356532653462653831653234663234313966326264306563663066323064323238643335613362306439333066313434653239333531336133643939336661306336333664353061613035666432313430653537386239313731663962336261303833, NULL, '2020-09-29 11:49:42', '2020-09-29 11:49:42'),
(56, '160137306867', 344, 100, 6, '101', '1200', 'paypal', 0x646566353032303039626461643133343764623136393364353666383332373237323561323563643162653836633566373261636661386234623766383139363434623661613231393163336237306263373266313266663531616536343237633337613138336533333737643832313438356139316235353334626663646532366239326533396331613839343766306161616133383437303966663934326335323931336636313834363736393335373931333232343462616461653165386332386661323165373364366432613363636335333964636466633538366137326631366163613336376633636663383033626466663636333663383162613034666131396439386534323033666462363839646339663965396466616164326334333765356136616435323438663866363035666465616534396535616539323232313963393331633436643139336166366631343239613162386366326438373631316661666462366636373835633762326636306537393730393466616535363130346135373233383937663766656633636637616335623734333665363434383135626366613536353230663166656331613532333835363361376231616366343966346561626239653937336664323465333064363039363835393265373736643463323364396262343635316634386335343262636130366637653530336130396664, NULL, '2020-09-29 12:51:08', '2020-09-29 12:51:08'),
(57, '160137330848', 344, 102, 6, '130', '1199', 'paypal', 0x646566353032303061646366323762333137613631666237653932336634386439643665356436393038303432626661643135363464633161636664373835633936356133393963323665393364613765653238376563633638653137336163343336333561613034663863623634373633316136326166356565373365383663383765353531633362613861663761363838346538623536333633313066306132343535653230353830616161326231346231633439366235373362373036343138313732623762396365626365653664623132313064323938663433323864386165643061306136366233386336616563346466643861336538326538663532363732323063373232316166613031373333333963363434393738336661346565386463633762356336666666396233326236303534613834643131613238643732376439303032326164366362366230396239316662386564643164616236336531636538396563373735636165633037316366643430306331613336653339656236643066623662306637356439366263363737343034613830663839326134346238643330613335396264656135366336303236663230633438336366623638303537363234386164343233373934633561306236316232396439656166313463363834363865393765323266353865313636316363336433303131623461626664323765, NULL, '2020-09-29 12:55:08', '2020-09-29 12:55:08'),
(58, '160140480814', 344, 100, 6, '101', '1200', 'paypal', 0x646566353032303065343539393938633162366462306164343165633666343934373833336631663537333534343635626633303530303038666665616334303962656236376239363263383330363230313334316435346238303933633763306139383262363766333965306430323234343836656663366263643062396261616165303734383037343866633164383166626534353435343365663338383265663961643636303736376634656565323366626432646563306464616631373531303964333039653564376466346364623266356264613665653934346164326535333266363030633639313362633239393338633234663038343562386538353838656232623339623232326164643062666363363165343731633263616264623134313661643062356561353530323762316364333531363336656566306165383633353030666634343834653136643531353637303630623032363264616466623532346465663765303061613962353230653962376366383739616334356235626361663637383365656337313736396261646661653535373561613665653235393331653439343439646531323766393831353261383065366265336330633830373539346166386238626235646633353431383862383663343763306136623761356633363336346237363365353832663563656363343334363462376634656233, NULL, '2020-09-29 21:40:08', '2020-09-29 21:40:08'),
(59, '160140527194', 344, 100, 6, '101', '1200', 'paypal', 0x646566353032303031353135363535366436336639356634663732393036653837333735313765363639613732623334613737333033306164656333303338313361656632623363306639306166386637656439396232653737663535306534663462383161613865333764313166616232376563616562343766643333366434653739306661393666323432363330393337373065336336633464326433383531306331623662656437306564386334363361643366623266663238613232646363386637353137663635336434353565623337396364376531613835326539653631343135663339346162663364333962356231313562623232373038393339613830663135383561396233383564376662633333613636343730396433656135363262323263303036306638383532383761323664336663613132633337303134653331353837393836616565653863373837353336316337653661356462613264613439326666623131663863303061613737363731656363633031373066326131333966333731353936323937346331396630393963313061376163386532383034656238383533343438623836643835613561643939383239376636363065656631343863333239336431636138623066643339666137316237396231643136326164376238366136613063376437663635613335666561393065393631363131646364, NULL, '2020-09-29 21:47:51', '2020-09-29 21:47:51'),
(60, '160143361974', 344, 103, 6, '101', '1228', 'paypal', 0x646566353032303063613134356538333630613536346636313465333666656335623136346363636539386462386532396335323435656538343633663230613065383463396530303536643938666132386636643435396134393535373964313632353236396365626435353564326363653064363134643464396634663663646463613634386235373639613765343734656136313335616434326633643037656138333336373165303832376363653364383833666633623430663232383466646464303136393237346533363335366439303164656434353235646237626637666636646262653432663263663736636137646135616237623830326464663734666230613666623935636363306239626234303038623734336338323162346366613263626237643332383162636238643631373930306139383734613539373234353632336331636634643832303430316230643161666230663565666531663332623630363636326430303161373033643233616332333130313738643761323562343335393830663539333139323232626431646262373738623430306131356135386565663432356663316565343936333933376436313333643731633962346264376364356236313235623063366165356631373564313939663033376537343038336632353232356239336165316666393539623766643234646339663435, NULL, '2020-09-30 05:40:19', '2020-09-30 05:40:19'),
(61, '160145909292', 344, 105, 6, '250', '1230', 'paypal', 0x646566353032303062306462613234356137633332393030623466346635346365373632343835306138663536383634363930303535313064623736303364646438313664356663306665643337646533376336333332383139383835616335626334386565323030383561353737646636306435653238313237623934376238376639323762613363386665626564303032353134636161383432343732376565363438383966396461643461306632656237323963346562613131323335626339386531623735313261326366363365633937616131323164666437303565386639353564613530333765653639326432636630666261613033396232313435316534656166663130653135666338373330616135373065636430663535303235396437363338383264316530303465356334376564666562383635343864633164363131313863386337323435326135303131626164613364363638653365663336326531363635313931636130643930366434396665653130663235613038613530613663343362643038383032396664343563316166336535643363376461313730643762663664646536623237653264336430396265636534656361353863633466343232663361386162396165363539343233353063386361663538626465343835663863306536306164623066663637393065366233383663643566333030646234, NULL, '2020-09-30 12:44:52', '2020-09-30 12:44:52'),
(62, '160145985047', 344, 104, 6, '330.0', '1246', 'paypal', 0x64656635303230303062306132613738356333393133333937616537363134366139343964323738616130393230633637393939313834656235323266316533636430366464303865303331623337356161353532316139353935643032303062643333306536313164303561623237303636393033643735623038373166373462366534356538303831393130623662383561313031353138353565323737623766633237386434343661656438346639316531333534633030313464366138333962386539623938356431616431343561386662643635663665656236393637666632363466306662333732313432326535653736633337353531623639376533633266623235613162303537373061336438613061613761313537663038633061303336343963613265623634306232666135623638383539333264373230313132646433386666353435393234303632333665386234343237333333643830613934316363316138616565336163626562613561663333656130346335386462303063613138636561633432346336666561383131643537363062333635393362353234333635326365663663663132373833343464316231373431386362653234656638323030383630323033663933313264323466343632633939633330613432666366353431656363306532633930353166373733656530666530343735396531613631616165, NULL, '2020-09-30 12:57:30', '2020-09-30 12:57:30'),
(63, '160146026148', 344, 106, 6, '215.0', '1229', 'paypal', 0x64656635303230303831356330353361633431613531633836303637656162643833393662336265643663343037313735333739336634346436626232383363376637646530656562356331383766633832333661346261323738363832353631643965653063326531663664346131306131376530383335306664653536386263313439306332346337626265373131623232353366323863356265316661396132303834663733373066666330333331303533386662343731386161343630373461623162346438653237313636326236363631306437383262326230306534373436326163336338386539363536346432633736333236376366636439363432313839373465636162373032303239356138633664363333663830376530643233633764373834653135643935316162333961353335633834316162363235356534653565333231353433363365623763613563353736373833636633356366623133626363333236636632323363393462363939626431363132383338613263326665346436316663613639383866393961396431373932323730323436623834653135383064396564363763343965663063303662363535393533613737343462353335326532343938613861333035663035313336336663353036383834313539653662613962383232643838643564333033626233613266313836336466373836353865323033, NULL, '2020-09-30 13:04:21', '2020-09-30 13:04:21'),
(64, '160146048514', 344, 108, 6, '120.0', '1247', 'paypal', 0x64656635303230306366653438306636623039353161633338323538396633666437653431643638343234303333383566343566393261646161663338626661613663646137633262363262373131663465616464343364663866366335306261646437343965653464626166623039636336643565643663656430393936613564653832656136356339333137333536353039343835383230333161623035653832323735353032656131353362303330393363333165626661333631623461363936383034313136346637386661366631636530633731316131336534373137656663346630643235633864656361386665396135353135653438613530616364316364353961333835646134343966333038373930386233613362323666336331333539373966656431613832326634643937666433646132313833353665303735396364323932663337626330633335633939666233656135363830313438313862316461316262353938396566346239633339643939393262353737383832613131353361306137306162663064313666623231626137666631343939636163393432363130303839343966336363633062303661333037633063643634313535356563393461663239313131353762383035353765663937383337353035663133336361633139363361623062333339373764656234343031303337613861393064313963353836, NULL, '2020-09-30 13:08:05', '2020-09-30 13:08:05'),
(65, '160146062165', 344, 109, 6, '115.0', '1248', 'paypal', 0x64656635303230306664353662386633393363626631336264626163343565653365383664616636626333666432333336663530616463663861336337653134663564373733626535313436306630663038393237623035336535343131383862636262376639316666636630306535373064613066663862623165323837373232356630316264623233333630636635663338353663613462346664323364633965393464343134306163656466383639643234373162653332316636396561396237626364373464663239636366316230333335313865363663626133393964643139646330393764633932316136653038666537613265666635653034393536633439326135343561636566656537336163383937313132373730666563343536353164386234316465376437373634376130323534323461653739646366616235626238396234373962623136373338333039656439633033636261353237636334306462643239376134613236626636666436636666363830653938323634626162326465343835653732343034646665663563666230306338396263373563633237633136306333623931313138373736393764323964663332333563386137386563323565323837326433356630356333313666383165653263616661653139326635613433626661636239343163373636393331633262643865303033326664633062333865, NULL, '2020-09-30 13:10:21', '2020-09-30 13:10:21'),
(66, '160148449125', 344, 100, 6, '101', '1200', 'paypal', 0x646566353032303031386566626665633963666261373163643666623930663631333134343665613431643130316166326164383231633839316332663131616438353662613065336435356265386536313737356134643361666533636662613466333531633534353061303466363330633031333139623536626631316136343966366337636363353737656464353836653561376539633439323533646365366633613562386638393034633131656234643137303764616365386261363630613566393664383132616238663665336262383332333061313064363030396130396333313334356636663032383362626636393666303865663033363031303866326537666133623338366534326436336231383663633563366662326432663330373362343936393939396337663963333730353764643332306161623265346633393263663463623332616538616333663135393562643161306138323566346637643763613439343962653939626236346462663837303066393731353430373831356564333761373233383761316439396164373665383063653365303763366462333136613164623035626163373134666435633234616366663436636237623537346632613238643938363530646661323136366238333063616661396166636331646562343433373334306333336164333737343339313637316339636165, NULL, '2020-09-30 19:48:11', '2020-09-30 19:48:11'),
(67, '160148449381', 344, 100, 6, '101', '1200', 'paypal', 0x646566353032303030306362343331363137353135306166613831306230323433366566383838663335666134353537656632323462666334636665313931343264323932326432353866303937396632663864626631343139616430306265613564343764666561333639663563656234313638663339623239373461373232323139393861316632343034633236623865343834393430643634623636343064616138393261376438313462353539373537323038663962656666366261336636303432303132636134346634346631333865313161396237633762323037643133386237343761623737616137633132653461313639633439373563663236383162653635393564346466663330636136626234666431663837313431363262333562666165613936323231663533366165623637333838343436663630613266373863313265653635376364323630643237383861346137336338373737323631303034316637303136343530633361663065643664333634666361316132353163303733623433653162333065653939303464653965373063373033356335363536393439623262663635623365323331346136363361643832353964373639656537336336313434353764666566336231353338363939656635313661396238393333326632643663623037643964643037633332393764386365323664323466323666, NULL, '2020-09-30 19:48:13', '2020-09-30 19:48:13'),
(68, '160188425755', 344, 114, 6, '1001', '1264', 'paypal', 0x6465663530323030303336356138343664376135663065643430343764333938366433373364636539303130633165313837336362383166613634386330306135656337326438303034613161363339313539633335623931643034386561373265363063363331363930656163313736366435346662343833383434643563323630303866636166646333643364623165303136313737346632336530353063363838656637323037636363306338323538303963666661663535613833326462336632626135633939366235633030393731316137393530346439386235646232623832633531643562366661616539636661336433623162316130383739613265386265363666373638383838653836643231386133373435366332366463373437396236376662326166366338343233616338326331316166636537376166643737613033636435653961383166353333316165613665356436383066303364353662343931633331363062353462353662633232383761646332373338333430613734663439313234353738636664366462663937313137656534653666626139396135363930326535636131643037313661386638386164333565393563316337633235353562623562656133356134653930623062363933393930366663646361623461303630336231313937376633383963363665656131326263353764333337383839, NULL, '2020-10-05 10:50:57', '2020-10-05 10:50:57');
INSERT INTO `job_payments` (`id`, `uid`, `user_id`, `job_id`, `plan_id`, `amount`, `job_token`, `payment_type`, `payment_data`, `status`, `updated_at`, `created_at`) VALUES
(69, '160189161589', 344, 120, 6, '101', '1265', 'paypal', 0x646566353032303035376432353037343835313637326431363261613139326230346265633331653932356662316432626337663737323430376136376632343134373432316266343833316161613461623436623939656435363038363065643239356464623139343166643534303966636366396431373834613539656135316136613335396332363435613165663038396331623862653533363232653730346461613833313039336261313165363561613433386663323435373261626635653039656261376564323863366362336239383338313133646438623732623063386231616431353863343430303638346538373862346265643931666261626461316564663863353531616561663662653530646332616638376463366462316466323634356637643438666138383133326430653965346330613638646134383233363465343337663135316436653138626438613735303064303763353034316263666163306665613065386463343035343437653439333731333866653838346235353666663430393762323564326434616534336261333538356135636138336334313666383136666666346131386237653764346538386338356430346261313563316333376566383638393732353135343266336331343530383534356239643434353032643539616537353736313639303531386261383537366166333037, NULL, '2020-10-05 12:53:35', '2020-10-05 12:53:35'),
(70, '160189176439', 344, 119, 6, '101', '1266', 'paypal', 0x646566353032303031363362343231326166663136346531653663623434663763653166333964366536363163323835653966306436663437623033636533343562643739343035623936373433303533663661666461353531396665356335646434613265363862633065356636646638373133613035356636323561393834303664623261336232616433376630663435653361643365316265346431666237316536636539343730393133386435353565303636383837336332626466633062633433396433326639336365626266643264646230336366643565373964396263613039623536393630653166326233333764643765306337373939393831366137313566353261383262323431336162626538653531323832613065313834313864356532333464326237396336383466353636356161393232626265656332646665316264386365613436383065346533366636303430336633646531616666646531346434393765326630663130616266343038663762316638646262333838623832373139653432373932316236623462383439643239353936363964663065326332323238303639333432366535346333646631363631633438323361316165366463356262343033623662373931303631633864636637323366666561613361396634323964333561626335333531323036353763353662623563336532313462, NULL, '2020-10-05 12:56:04', '2020-10-05 12:56:04'),
(71, '160199908315', 344, 121, 6, '170.0', '1268', 'paypal', 0x64656635303230303963303063343335373933386133633265303066363664396533306265376530373034393937613335336162376535363961643966653231383835373664333136313330346238616364663534613035333263356533393932643937653437316362383932353264663236623133666131303438623266656237303065373261303364633438326637653236643564373562393136663362633138323963306434356339656663363837323930656462646533346233303366643532646637333134356166373634613261326338353731393737326136613166366462623865333364383762633363393236636135376665633664323231316236616335386262646538316331303634316164636639353035613435666438613431656634346637666632326264386133646161383636303864636537343861313831393464383237613435313063303231633534323031646238666461303038336266326133643030343861333466633636663538356135393761303337356439633563633561663061643334633663396465346439323033336165393233333035373432646263363635613838336137353937366363613731343862343763656364383031383830383630363436623832623136613430663739626333333066373034646665373635373832323035346539346564376461653666626466613334306437336266383862, NULL, '2020-10-06 18:44:43', '2020-10-06 18:44:43'),
(72, '160256560538', 344, 128, 6, '1001.0', '1267', 'paypal', 0x646566353032303031313632386535363631346435363863336631353534353861653239636532313236346339356131626639396234613033353834376337656632376562623734376630376662303064316261663164663233623139346532616361656463366363626363386338303065353733343064356238343230386239303231303435336536386236323466323532336139353066346134626634393862623230636234383331636264646361393835613565663334346438353037653664623263343231336539666134316334666333376364303961376435336564303037613838626433613764303639313135386362363931383535343139333538666265373732393935313734383130363739333234333736353966376539613039653263316332343930383839656439633666353939303030353536303864623330366164633463306437333463323762336262613362303838366339623931303563643633623634646633613736653630663064326437373633393264393139323864653334313765306533343163373534376434363136333661353233333664366430343438366239653239633934396132653665383562363934323461646539356263303832373763356133316232643233363564303132323339613164643764663532343862653261363165613561643335623131616366613239333039393039323461353236386533, NULL, '2020-10-13 08:06:45', '2020-10-13 08:06:45'),
(73, '160281768769', 344, 149, 6, '133.0', '1269', 'paypal', 0x64656635303230303936643131303462633334653037306631343066326562653161313665646633303737633432643237653763653334633939646233656232346239623466343266363235343832376233313739636231393837643562636162333662643832343566303661366333383562623132643837393437626231323931363734666164363461633363316333636237336332393365666461333630333864633561623861336464366637633966303936353731383363383065383933653837313934666133613366633565616266343766303839373231656566336234363262616636373134636539366639613238373932356366653134616530313461313435306435383832396232643536363961343666663036306165663633646563306138376330336235366663373035616431393230306662303766393565636465346162643932393538623537633162336332613064306133363265663039346634313939313763623430613861653362313835633264356163353364323566396362323031633936343630623339313463386162626262363239366462346662336262373763333038663034343064316462366130353830393261653032383930316465623836353463363634623265613834656238663730343062633336393235353838363835343131383061613132373166616564386338636236636466336332323736643939, NULL, '2020-10-16 06:08:07', '2020-10-16 06:08:07');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(255) NOT NULL,
  `projectid` varchar(300) DEFAULT NULL,
  `user_sending` varchar(300) NOT NULL,
  `user_receiving` varchar(300) NOT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `read_status` tinyint(4) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `customer_message` text DEFAULT NULL,
  `job_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `projectid`, `user_sending`, `user_receiving`, `type`, `read_status`, `date_added`, `customer_message`, `job_id`) VALUES
(1, NULL, '233802410288', '981686315672', NULL, 0, '2020-10-06 18:35:38', 'Our team has quoted your job. Please go to the project page.', 121),
(2, NULL, '233802410288', '981686315672', NULL, 0, '2020-10-06 18:46:05', 'Quality assurance, please check  your project page', 121),
(3, NULL, '233802410288', '981686315672', NULL, 0, '2020-10-06 18:47:27', 'Quality assurance, please check  your project page', 121),
(4, NULL, '233802410288', '981686315672', NULL, 1, '2020-10-06 19:24:23', 'Quality assurance, please check  your project page', 121),
(5, NULL, '233802410288', '981686315672', NULL, 0, '2020-10-06 19:25:51', 'Quality assurance, please check  your project page', 121),
(6, NULL, '233802410288', '981686315672', NULL, 0, '2020-10-06 19:26:17', 'Quality assurance, please check  your project page', 121),
(7, NULL, '233802410288', '981686315672', NULL, 1, '2020-10-06 19:29:45', 'Quality assurance, please check  your project page', 121),
(8, NULL, '233802410288', '981686315672', NULL, 1, '2020-10-06 19:31:36', 'Quality assurance, please check  your project page', 121),
(9, NULL, '233802410288', '113415621757297919960', NULL, 1, '2020-10-13 03:24:04', 'Our team has quoted your job. Please go to the project page.', 122),
(10, NULL, '233802410288', '113415621757297919960', NULL, 1, '2020-10-13 04:10:41', 'Our team has quoted your job. Please go to the project page.', 123),
(11, NULL, '233802410288', '981686315672', NULL, 1, '2020-10-13 07:11:19', 'Our team has quoted your job. Please go to the project page.', 124),
(12, NULL, '233802410288', '981686315672', NULL, 1, '2020-10-13 07:21:07', 'Our team has quoted your job. Please go to the project page.', 125),
(13, NULL, '233802410288', '981686315672', NULL, 0, '2020-10-13 08:01:29', 'Our team has quoted your job. Please go to the project page.', 128),
(14, NULL, '233802410288', '113415621757297919960', NULL, 1, '2020-10-15 03:03:36', 'Our team has quoted your job. Please go to the project page.', 138),
(15, NULL, '233802410288', '113415621757297919960', NULL, 1, '2020-10-15 04:21:18', 'Our team has quoted your job. Please go to the project page.', 139),
(16, NULL, '233802410288', '', NULL, 0, '2020-10-15 04:58:15', 'Our team has quoted your job. Please go to the project page.', 133),
(17, NULL, '233802410288', '108415457321877289984', NULL, 0, '2020-10-15 12:13:19', 'Our team has quoted your job. Please go to the project page.', 141),
(18, NULL, '233802410288', '2530567290501481', NULL, 1, '2020-10-16 04:21:07', 'Our team has quoted your job. Please go to the project page.', 142),
(19, NULL, '233802410288', '2530567290501481', NULL, 1, '2020-10-16 04:32:10', 'Our team has quoted your job. Please go to the project page.', 143),
(20, NULL, '233802410288', '108415457321877289984', NULL, 0, '2020-10-16 05:19:59', 'Our team has quoted your job. Please go to the project page.', 144),
(21, NULL, '233802410288', '108415457321877289984', NULL, 0, '2020-10-16 05:21:46', 'Our team has quoted your job. Please go to the project page.', 145),
(22, NULL, '233802410288', '108415457321877289984', NULL, 0, '2020-10-16 05:23:35', 'Our team has quoted your job. Please go to the project page.', 146),
(23, NULL, '233802410288', '', NULL, 0, '2020-10-16 05:36:49', 'Our team has quoted your job. Please go to the project page.', 147),
(24, NULL, '233802410288', '', NULL, 0, '2020-10-16 06:03:52', 'Our team has quoted your job. Please go to the project page.', 148),
(25, NULL, '233802410288', '981686315672', NULL, 1, '2020-10-16 06:05:29', 'Our team has quoted your job. Please go to the project page.', 149),
(26, NULL, '233802410288', '981686315672', NULL, 1, '2020-10-16 06:08:43', 'Quality assurance, please check  your project page', 149),
(27, NULL, '233802410288', '981686315672', NULL, 0, '2020-10-16 06:15:55', 'Quality assurance, please check  your project page', 149),
(28, NULL, '233802410288', '981686315672', NULL, 0, '2020-10-16 06:22:33', 'Quality assurance, please check  your project page', 149),
(29, NULL, '233802410288', '', NULL, 0, '2020-10-16 06:23:45', 'Our team has quoted your job. Please go to the project page.', 150),
(30, NULL, '233802410288', '', NULL, 0, '2020-10-16 06:25:34', 'Our team has quoted your job. Please go to the project page.', 151),
(31, NULL, '233802410288', '', NULL, 0, '2020-10-16 06:27:01', 'Our team has quoted your job. Please go to the project page.', 152),
(32, NULL, '233802410288', '', NULL, 0, '2020-10-16 06:28:51', 'Our team has quoted your job. Please go to the project page.', 153),
(33, NULL, '233802410288', '108415457321877289984', NULL, 0, '2020-10-16 06:40:00', 'Our team has quoted your job. Please go to the project page.', 154),
(34, NULL, '233802410288', '113415621757297919960', NULL, 1, '2020-10-19 04:27:50', 'Our team has quoted your job. Please go to the project page.', 159),
(35, NULL, '233802410288', '981686315672', NULL, 0, '2020-10-20 03:11:04', 'Our team has quoted your job. Please go to the project page.', 160),
(36, NULL, '233802410288', '108415457321877289984', NULL, 1, '2020-10-21 05:40:59', 'Our team has quoted your job. Please go to the project page.', 165);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(255) NOT NULL,
  `escrow_id` varchar(300) NOT NULL,
  `projectid` varchar(300) NOT NULL,
  `freelancerid` varchar(300) NOT NULL,
  `clientid` varchar(300) NOT NULL,
  `nid` varchar(300) NOT NULL,
  `client_money` decimal(15,2) NOT NULL,
  `freelancer_money` decimal(15,2) NOT NULL,
  `company_money` decimal(15,2) NOT NULL,
  `complete` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `escrow_id`, `projectid`, `freelancerid`, `clientid`, `nid`, `client_money`, `freelancer_money`, `company_money`, `complete`, `date_added`) VALUES
(1, '3', 'Wm0W6YvzLr', '715478889450', '431974897102', '46', '70.00', '49.00', '21.00', 1, '2019-11-21 10:38:02'),
(2, '5', 'uJCOYwXrdO', '305378125552', '329616019298', '57', '100.00', '70.00', '30.00', 1, '2019-11-21 10:38:02'),
(3, '1', 'eUSPl8YeQh', '228145236254', '981686315672', '60', '100.00', '70.00', '30.00', 1, '2019-11-21 10:38:02'),
(4, '6', 'bVbRUo36To', '434155361070', '296594131506', '75', '450.00', '315.00', '135.00', 1, '2019-11-21 10:38:02'),
(5, '7', 'WQjrwtmy7Q', '324036228471', '199513386617', '80', '60.00', '42.00', '18.00', 1, '2019-11-21 10:38:02'),
(6, '8', 'fi47zFrW8s', '228145236254', '969406884108', '86', '150.00', '105.00', '45.00', 1, '2019-11-21 10:54:54'),
(7, '9', 'W6nOQzaagZ', '233802410288', '156958966286', '94', '100.00', '70.00', '30.00', 1, '2019-11-21 10:54:54'),
(9, '13', 'PZgr7p7EeB', '753678237313', '981686315672', '135', '70.00', '49.00', '21.00', 1, '2019-11-29 15:14:31');

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int(250) NOT NULL,
  `name` varchar(2500) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `description` varchar(3000) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(250) NOT NULL COMMENT '0=deactive,1=active',
  `token` float NOT NULL,
  `per_token_amount` float NOT NULL,
  `month` int(11) NOT NULL,
  `updated_at` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `name`, `price`, `description`, `status`, `token`, `per_token_amount`, `month`, `updated_at`, `created_at`) VALUES
(6, 'Fox', 60, '<p>the unique plan</p>', 1, 6, 25, 5, '2020-01-17 15:47:46', ''),
(11, 'test', 80, '<p>test</p>', 1, 3, 0, 6, '2020-02-12 05:39:19', '2020-02-12 05:39:19');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `id` int(255) NOT NULL,
  `userid` varchar(300) NOT NULL,
  `description` longtext NOT NULL,
  `imagelocation` varchar(300) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`id`, `userid`, `description`, `imagelocation`, `date_added`) VALUES
(1, '233802410288', 'I made this for a company.', '4gcPsskgtW4.png', '2019-11-21 10:54:54'),
(2, '753678237313', 'Here is one of my blog post.', 'VdviNU3uGe4.png', '2019-11-21 10:54:54'),
(3, '715478889450', 'Pop Culture Screen Prints', '1556120225n-believe-05-550x354.jpg', '2019-11-21 10:54:54'),
(4, '645447357569', 'I developed this with my team for a company.', 'R75wqWd4n8preview_image.png', '2019-11-21 10:54:54'),
(5, '296482705384', 'Great branding for a company.', 'aZznXhhomoday_9_player_2x.png', '2019-11-21 10:54:54'),
(6, '199476311866', 'A powerful presentation we did for our company.', 'K9v8ppFM1Ggivey.png', '2019-11-21 10:54:54'),
(7, '305378125552', 'This is a social network my team and I were developing.', 'A3Ou3krbqqydzk.png', '2019-11-21 10:54:54'),
(8, '228145236254', 'A perfect example of my work.', 'hiBHEinqxzsearch_engine_optimization.jpg', '2019-11-21 10:54:54'),
(9, '324036228471', 'A short film we created with my team.', '1556105574n-believe-18-550x354.jpg', '2019-11-21 10:54:54'),
(10, '434155361070', 'Just perfect!!', '1556106203dribbble_1.png', '2019-11-21 10:54:54'),
(13, '715478889450', 'Just Perfect', '1556120202aa1-9e36-4791-b848-5f5a8813e7aa_2x.jpeg', '2019-11-21 10:54:54'),
(14, '233802410288', 'Success is not an accident', 'ApRweeMEpJnatoni_2x.png', '2019-11-21 10:54:54'),
(17, '233802410288', 'test', 'bsdm4UtXZhbSwS.jpg', '2019-11-21 14:16:55');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(255) NOT NULL,
  `projectid` varchar(300) NOT NULL,
  `userid` varchar(300) NOT NULL,
  `freelancerid` varchar(300) NOT NULL,
  `title` varchar(300) NOT NULL,
  `slug` mediumtext NOT NULL,
  `budget` decimal(15,2) NOT NULL,
  `category` varchar(300) NOT NULL,
  `skills` mediumtext NOT NULL,
  `description` longtext NOT NULL,
  `closed` int(70) NOT NULL,
  `complete` tinyint(4) NOT NULL,
  `complete_date` datetime NOT NULL,
  `hired_date` datetime NOT NULL,
  `disputed_date` datetime NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `projectid`, `userid`, `freelancerid`, `title`, `slug`, `budget`, `category`, `skills`, `description`, `closed`, `complete`, `complete_date`, `hired_date`, `disputed_date`, `date_added`) VALUES
(1, 'PZgr7p7EeB', '981686315672', '753678237313', 'Transcriber required to transcribe 2 audio files', 'transcriber-required-to-transcribe-2-audio-files', '100.00', 'Writing & Translation', 'Transcription', '<p>Transcriber required for transcribing x2 audio files.\r\n\r\nWe are Mac users, so if it can be transcribed into pages that would be good. If not, Word is fine.\r\n\r\n</p><p>We will have a further requirement for this in the future, so it would be great to find someone we can have an ongoing relationship with.</p><p>The idea is to edit a â€œuser manualâ€ based on the transcripts.\r\n\r\nThe files are around 1h and 15 mins each.\r\n\r\nThank you and please let me know if you have any questions.</p>', 1, 1, '2019-11-29 15:14:31', '2019-11-28 17:34:14', '0000-00-00 00:00:00', '2019-11-21 10:54:54'),
(2, 'e2qj4OYYIs', '188158648562', '199476311866', 'I need a Quickbooks certified bookkeeper to work with my clients', 'i-need-a-quickbooks-certified-bookkeeper-to-work-with-my-clients', '200.00', 'Management & Finance', 'Sage Peachtree Complete Accounting ,Financial Accounting ,Certified Public Accountant (CPA) ', '<p>We are a new bookeeping and accountancy practice based in the UK.\r\n</p><p>I require an experienced bookkeeper who is Quickbooks certified to work remotely with a number of my clients.\r\n</p><p>Although there will be a small amount of work initially, I expect the volume to increase over time.\r\n</p><p>You must have excellent attention to detail and good communication skills.</p>', 1, 1, '2019-12-02 16:15:24', '0000-00-00 00:00:00', '2019-12-01 20:40:09', '2019-11-21 10:54:54'),
(3, 'Wm0W6YvzLr', '431974897102', '715478889450', 'Logo re draw and also possible redesign', 'logo-re-draw-and-also-possible-redesign', '50.00', 'Logo Design', 'Logo Design ,Adobe Muse ', '<p>We want to have our rough logo re designed/drawn and submitted to us in the various formats, we require vector, jpeg and png etc plus a Favicon, - we would also be interested in having a Facebook, twitter page designed but most important thing is the logo.\r\n\r\n</p><p>We will try to up load the current thoughts on design - but we are still open to a clear and good idea if the designer have a knock out design to put forward.\r\n</p><p>\r\nPricing is a guide\r\n\r\n\r\nWhilst we have a good idea of the design this is formed from an online self generated system and we are also open to any obvious or clear design improvements or suggestions. </p>', 1, 1, '2019-04-26 12:51:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2019-11-21 10:54:54'),
(4, 'GhkalwKELF', '321267804911', '', 'Craft CMS - translation and payment integration', 'craft-cms-translation-and-payment-integration', '150.00', 'Web, Mobile & Software Development', 'Craft CMS', '<p>I am looking for a developer to work with on an ongoing basis. </p><p>The first two elements involve Craft CMS specifically translating two pages and integrating a new payment method. </p>', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2019-11-21 10:54:54'),
(5, 'uJCOYwXrdO', '329616019298', '305378125552', 'Individual Custom Webpages', 'individual-custom-webpages', '120.00', 'Web, Mobile & Software Development', 'Bootstrap,PHP ,HTML5 ,HTML ,CSS3 ', '<p>We are looking for a talented designer who can design 5 custom pages for the hosting side of our business.\r\n\r\n</p><p>The page names would be\r\nBusiness Hosting\r\nWebsite Hosting\r\nWordPress Hosting\r\nWordPress Premium Credits.\r\n\r\n</p><p>The subjects are not the most interesting and thatâ€™s why we need someone with a bit of imagination to design 4 super pages.\r\n\r\n</p><p>We would supply all the copy and images\r\n\r\nThe pages would need to be written in php, as they need to be converted into custom pages for WHMCS\r\n</p><p>Please see\r\nhttps://www.inmotionhosting.com/support/edu/whmcs/how-to-create-a-custom-page-for-whmcs.</p><p>\r\n\r\nWe already have rough ideas of what the pages should be like, but want someone to spice them up!</p>', 1, 1, '2019-04-26 14:09:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2019-11-21 10:54:54'),
(6, '44ndkrA0am', '108278049269', '', 'Accounting and book keeping outsourcing', 'accounting-and-book-keeping-outsourcing', '70.00', 'Management & Finance', 'Certified Public Accountant (CPA) ', '<p>I run my own small accounting firm I want to outsource some of the \r\nservices would you send me more information about you and the way you do\r\n the outsourcing, the N.D.A , the agreement and other related details.</p>', 0, 0, '0000-00-00 00:00:00', '2019-11-30 17:35:07', '2019-12-01 16:54:07', '2019-11-21 11:54:54'),
(7, 'bVbRUo36To', '296594131506', '434155361070', 'Full Time Developer needed Urgent', 'full-time-developer-needed-urgent', '450.00', 'Web, Mobile & Software Development', 'PHP ,MySQL Programming ,jQuery ,JavaScript ,Instagram API ', '<p>We are a company called Kustom Design Printing Ltd. Weâ€™re looking for a \r\nfull stack web developer to work with us full-time on a long-term \r\nfreelance basis, This role would involve remote working from your \r\nlocation.<br>\r\n<br>\r\nSince being founded in 2007, weâ€™ve become one of the fastest growing \r\nbespoke label and sticker printing companies in the UK. We have four \r\nbranded websites, and therefore require full-time web development \r\nexpertise to grow our large online presence.<br>\r\n<br>\r\nWe already have a full stack freelancer who works with us full-time on a\r\n remote basis, so you would work alongside this person to:<br>\r\n<br>\r\nâ€¢	Rebuild our existing websites and build other new websites<br>\r\nâ€¢	Maintain and improve our existing sites and systems<br>\r\nâ€¢	Collaborate with third party agencies where required<br>\r\nâ€¢	Collaborate with our in-house marketing/CRO consultant<br>\r\nâ€¢	Create bespoke back-end systems as well as front-end UX<br>\r\nâ€¢	Create web apps and e-commerce based systems<br>\r\n<br>\r\nAn example of one of our websites is here: https://www.discountstickerprinting.co.uk/<br>\r\n<br>\r\nAs an example of a web app, one of the core features is our order \r\ncalculator: https://www.discountstickerprinting.co.uk/quote/shape/<br>\r\n<br>\r\nWhile this current site is ASP.NET, one of your first roles would be to help re-create this site, and others, in PHP.<br>\r\nSkills required would be:<br>\r\n<br>\r\nâ€¢	PHP<br>\r\nâ€¢	MYSQL<br>\r\nâ€¢	JavaScript<br>\r\nâ€¢	JQUERY<br>\r\nâ€¢	APIs<br>\r\nâ€¢	HTML<br>\r\nâ€¢	CSS<br>\r\nâ€¢	Bootstrap<br>\r\n<br>\r\nThis would be a full-time role, mainly during UK office hours, but with a\r\n degree of flexibility providing that weekly hours are fulfilled. Youâ€™d \r\nbe able to work from any location, and all communication would be online\r\n based via Slack.<br>\r\n<br>\r\nIf you are interested in this role, please let me know and we can discuss further.</p>', 1, 1, '2019-11-28 11:54:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2019-11-21 11:54:54'),
(8, 'WQjrwtmy7Q', '199513386617', '324036228471', 'Online profiling and video/track tagging you tube', 'online-profiling-and-video-track-tagging-you-tube', '50.00', 'Proofreading & Editing', 'Video editing,Video Conversion', '<p>Hi! Iâ€™m a classical violinist and  Iâ€™m looking for help to help my \r\nonline profile and to tag my name in you tube tracks so they come up \r\nwhen my make is googled plus adding a google profile and adding tracks I\r\n am playing on. </p><p>I can send you links to all the tracks on you tube and Spotify Iâ€™m playing on. <br>\r\nThanks!!</p>', 1, 1, '2019-11-28 11:54:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2019-11-21 11:54:54'),
(9, 'fi47zFrW8s', '969406884108', '228145236254', 'Title Tag and META Tag work + SEO for whole website', 'title-tag-and-meta-tag-work-seo-for-whole-website', '200.00', 'SEO Keyword Optimization', 'SEO Keyword Research ,SEO Backlinking,Search Engine Optimization (SEO) ', '<p>I am looking for someone who can help me improve my current SEO and how \r\nmy page appears on google\'s search. I want to improve my SEO and \r\ntargeting to get my brand to the top of google search. Are you able to \r\nhelp with this?<br>\r\n<br>\r\nThank you.</p>', 1, 1, '2019-11-26 10:54:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2019-11-21 11:54:54'),
(10, 'W6nOQzaagZ', '156958966286', '233802410288', 'Develop and support with Salesforce', 'develop-and-support-with-salesforce', '120.00', 'Website Builders', 'Salesforce.com ,Salesforce App Development ,Salesforce Apex ', '<p>We have Salesforce implemented but we would like to develop it a bit further and to have training/explanation on how to use it. <br>\r\nIs that something you can help with?<br>\r\nMany thanks.</p>', 1, 1, '2019-11-25 11:54:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2019-11-21 11:54:54'),
(11, 'eUSPl8YeQh', '981686315672', '228145236254', 'Facebook and Instagram Marketing Campaign', 'facebook-and-instagram-marketing-campaign', '100.00', 'Sales & Marketing', 'Social Media Marketing,Instagram Marketing ,Facebook Marketing ', '<p>We\'re searching for an experienced Facebook marketer to work on Facebook\r\n &amp; Instagram ad campaigns for our niche product. We sell \r\npersonalised posters through our website that are aimed at memorable \r\noccasions: i.e. wedding anniversaries, child births, birthdays, etc. Due\r\n to the nature of the product (posters) we believe Facebook and \r\nInstagram ads should play a key role in our marketing strategy. <br>\r\n<br>\r\nWe\'re looking for an experienced freelancer with proven track record in \r\nsuccessfully launching and managing Facebook and Instagram ad campaigns.\r\n <br>\r\n<br>\r\nWe will provide all creative materials and will assist you during the \r\nprocess to help you understand the market and product better.<br>\r\n<br>\r\nYour tasks will consist of launching and managing Facebook campaigns \r\ninitially only in the UK and sending a weekly report with the campaign \r\nperformance.</p>', 1, 1, '2019-11-26 11:54:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2019-11-21 11:54:54'),
(12, 'zMiBJlVhKk', '981686315672', '715478889450', 'I Need Android and IOS App', 'i-need-android-and-ios-app', '200.00', 'Mobile App Development', 'Mobile UI Design ,Mobile Programming ,Mobile App Development ', '<p>I am looking someone who will be expert me the Magento backend mobile app projects.<br>\r\nWe need to create a mobile ( IOS and Android  ) https://shopappy.com for\r\n this project. we need similar functionality that is the current \r\nwebsite.         </p>', 1, 0, '0000-00-00 00:00:00', '2020-01-10 13:58:19', '0000-00-00 00:00:00', '2019-11-21 11:54:54'),
(13, 'jzGyWMvUjX', '431974897102', '', 'Seo, link building ', 'seo-link-building', '200.00', 'SEO Keyword Optimization', 'SEO Keyword Research ,SEO Backlinking,Search Engine Optimization (SEO) ', '<p>Please write * Done * in the top of the bid <br>\r\n<br>\r\nWe would like to hire someone to help us improve the ranking of our website for 3 keywords <br>\r\n<br>\r\nThis is the url of the website: https://navnehalskÃ¦de.com/<br>\r\nThe 3 keywords are: <br>\r\n1) navnehalskÃ¦de <br>\r\n2) navne halskÃ¦de <br>\r\n3) halskÃ¦de med navn <br>\r\n<br>\r\nPlease have a look at the website before you bid and let us know nearly \r\nhow many months it will take and what the price is gonne be pr month. <br>\r\n<br>\r\nWe are gonne make 3 month seo first to se the result and take it from there <br>\r\n<br>\r\nOnly white hat seo according to the google guidelines <br>\r\n<br>\r\nLooking forward to start the project <br>\r\n<br>\r\nBest Regards        </p>', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2019-11-21 11:54:54'),
(14, 'MB72dOMuMX', '156958966286', '', 'New website built', 'new-website-built', '150.00', 'Web, Mobile & Software Development', 'Bootstrap,PHP ,Laravel Framework ,CSS3 ', '<p>I\'m looking for a freelancer who can build a website and offer support on an ongoing basis.<br>\r\n<br>\r\nThe site will have 3 levels - public access/ free subscription access / upsell (which requires multiple selections)</p>', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2019-11-21 11:54:54'),
(15, '3QVIGXavUgxGq2', '188158648562', '', 'Diet Website', 'diet-website', '850.00', 'Graphics & Design', 'Zope,Zoomla', '<p>test</p><p>&lt;script&gt;alert(\'Nice\');&lt;/script&gt;<br></p><p><br></p>', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2019-11-21 14:52:36'),
(16, 'iBVQfiepeG6qeV', '108278049269', '', 'Facebook Campaign Management', 'facebook-campaign-management', '100.00', 'Social Media Graphics', 'Facebook Marketing ', '<p>Hi, i\'m seeking Facebook campaign management and setup with some ad \r\ndesign included for a new well engineering company. Please provide a \r\nquote based on this information and let me know if further is required. I\r\n look forward to discussing. Thanks.<br></p>', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2019-11-27 06:13:03');

-- --------------------------------------------------------

--
-- Table structure for table `proposals`
--

CREATE TABLE `proposals` (
  `id` int(255) NOT NULL,
  `projectid` varchar(300) NOT NULL,
  `freelancerid` varchar(300) NOT NULL,
  `clientid` varchar(300) NOT NULL,
  `nid` varchar(300) NOT NULL,
  `budget` decimal(15,2) NOT NULL,
  `action` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proposals`
--

INSERT INTO `proposals` (`id`, `projectid`, `freelancerid`, `clientid`, `nid`, `budget`, `action`, `date_added`) VALUES
(1, 'bVbRUo36To', '715478889450', '296594131506', '1', '400.00', 3, '2019-11-21 11:54:54'),
(2, 'uJCOYwXrdO', '233802410288', '329616019298', '4', '100.00', 3, '2019-11-21 11:54:54'),
(3, 'PZgr7p7EeB', '753678237313', '981686315672', '6', '70.00', 2, '2019-11-21 11:54:54'),
(4, 'GhkalwKELF', '645447357569', '321267804911', '8', '150.00', 1, '2019-11-21 11:54:54'),
(5, 'eUSPl8YeQh', '199476311866', '981686315672', '10', '200.00', 3, '2019-11-21 11:54:54'),
(6, 'uJCOYwXrdO', '305378125552', '329616019298', '11', '100.00', 2, '2019-11-21 11:54:54'),
(7, 'fi47zFrW8s', '228145236254', '969406884108', '13', '150.00', 2, '2019-11-21 11:54:54'),
(8, 'WQjrwtmy7Q', '324036228471', '199513386617', '15', '60.00', 2, '2019-11-21 11:54:54'),
(9, 'W6nOQzaagZ', '434155361070', '156958966286', '17', '120.00', 3, '2019-11-21 11:54:54'),
(10, 'Wm0W6YvzLr', '715478889450', '431974897102', '30', '70.00', 2, '2019-11-21 11:54:54'),
(11, 'eUSPl8YeQh', '228145236254', '981686315672', '34', '100.00', 2, '2019-11-21 11:54:54'),
(12, 'e2qj4OYYIs', '199476311866', '188158648562', '38', '100.00', 2, '2019-11-21 11:54:54'),
(13, 'bVbRUo36To', '434155361070', '296594131506', '67', '450.00', 2, '2019-11-21 11:54:54'),
(14, 'W6nOQzaagZ', '233802410288', '156958966286', '91', '100.00', 2, '2019-11-21 11:54:54'),
(19, '44ndkrA0am', '233802410288', '108278049269', '103', '100.00', 1, '2019-11-25 20:23:39'),
(20, '44ndkrA0am', '753678237313', '108278049269', '110', '100.66', 1, '2019-11-27 06:24:06'),
(23, 'zMiBJlVhKk', '645447357569', '981686315672', '126', '60.00', 3, '2019-11-28 20:33:02'),
(24, 'zMiBJlVhKk', '715478889450', '981686315672', '144', '70.00', 2, '2019-12-01 15:09:40');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(255) NOT NULL,
  `projectid` varchar(300) NOT NULL,
  `user_sending` varchar(300) NOT NULL,
  `user_receiving` varchar(300) NOT NULL,
  `nid` varchar(300) NOT NULL,
  `rate` int(250) NOT NULL,
  `description` mediumtext NOT NULL,
  `read_status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `projectid`, `user_sending`, `user_receiving`, `nid`, `rate`, `description`, `read_status`, `date_added`) VALUES
(1, 'uJCOYwXrdO', '305378125552', '329616019298', '58', 5, 'He is a phenomenon Client to work with.', 1, '2019-11-21 11:54:54'),
(2, 'uJCOYwXrdO', '329616019298', '305378125552', '59', 5, 'Great Freelancer to work with. ', 0, '2019-11-21 11:54:54'),
(3, 'eUSPl8YeQh', '981686315672', '228145236254', '61', 4, 'The Freelancer tried to her ability, but I was expecting more results from the Facebook and Instagram Campaign.', 1, '2019-11-21 11:54:54'),
(4, 'eUSPl8YeQh', '228145236254', '981686315672', '62', 5, 'Great Client to work with, I will work hard to improve on the Campaigns next time.', 1, '2019-11-21 11:54:54'),
(5, 'Wm0W6YvzLr', '715478889450', '431974897102', '63', 5, 'The work description was great. I had fun doing the work.', 1, '2019-11-21 11:54:54'),
(6, 'Wm0W6YvzLr', '431974897102', '715478889450', '64', 5, 'He delivered the logo as I wanted.', 0, '2019-11-21 11:54:54'),
(7, 'bVbRUo36To', '296594131506', '434155361070', '76', 5, 'Just a Perfect Developer.', 0, '2019-11-21 11:54:54'),
(8, 'bVbRUo36To', '434155361070', '296594131506', '77', 5, 'Great Client to work with.', 0, '2019-11-21 11:54:54'),
(9, 'WQjrwtmy7Q', '199513386617', '324036228471', '81', 3, 'The freelancer was not co-operative.', 1, '2019-11-21 11:54:54'),
(10, 'WQjrwtmy7Q', '324036228471', '199513386617', '82', 3, 'The Client was not co-operative also.', 1, '2019-11-21 11:54:54'),
(11, 'fi47zFrW8s', '228145236254', '969406884108', '89', 4, 'Great Client to work with.', 1, '2019-11-21 11:54:54'),
(12, 'fi47zFrW8s', '969406884108', '228145236254', '90', 2, 'The Freelancer did not perform the work as I wanted.', 0, '2019-11-21 11:54:54'),
(13, 'W6nOQzaagZ', '156958966286', '233802410288', '95', 4, 'Great person to work with.', 1, '2019-11-21 11:54:54'),
(15, 'PZgr7p7EeB', '981686315672', '753678237313', '137', 3, 'Test', 0, '2019-11-29 21:25:50'),
(17, 'W6nOQzaagZ', '233802410288', '156958966286', '139', 4, 'Nice', 0, '2019-11-30 06:10:15');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `id` int(255) NOT NULL,
  `userid` varchar(300) NOT NULL,
  `number` varchar(300) NOT NULL,
  `read_status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`id`, `userid`, `number`, `read_status`, `date_added`) VALUES
(1, '233802410288', '518-935-0966', 1, '2019-11-21 11:54:54'),
(2, '645447357569', '518-340-1163', 1, '2019-11-21 11:54:54'),
(3, '324036228471', '518-340-1163', 1, '2019-11-21 11:54:54'),
(4, '228145236254', '518-935-0966', 1, '2019-11-21 11:54:54'),
(5, '296482705384', '518-935-0966', 1, '2019-11-21 11:54:54'),
(6, '329616019298', '518-340-1163', 1, '2019-11-21 11:54:54'),
(10, '101250463084965587858', 'd391e', 0, '2020-02-04 15:50:09'),
(11, '614006552994', '0064212326209', 0, '2020-06-02 04:33:45');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `job_id` int(250) NOT NULL,
  `description_of` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(250) NOT NULL,
  `name` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `material` varchar(1500) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(1500) COLLATE utf8_unicode_ci NOT NULL,
  `layer_height` varchar(1500) COLLATE utf8_unicode_ci NOT NULL,
  `infil` varchar(1500) COLLATE utf8_unicode_ci NOT NULL,
  `fininshings` varchar(1500) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(1500) COLLATE utf8_unicode_ci NOT NULL,
  `postage` varchar(1500) COLLATE utf8_unicode_ci NOT NULL,
  `freelancer` int(250) NOT NULL,
  `status` int(250) NOT NULL,
  `updated_at` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `description`, `material`, `type`, `layer_height`, `infil`, `fininshings`, `color`, `postage`, `freelancer`, `status`, `updated_at`, `created_at`) VALUES
(2, 'HTC', '<p>a</p>', '[\"Iron\",\"Steel\",\"Plastic\"]', '[\"3DX\"]', '[\"5mm\"]', '', '[\"3D Print\"]', '[\"yellow\"]', '', 334, 1, '2020-10-29 07:54:44', '2020-01-15 08:33:07'),
(7, 'TESTRO', '<p>TEST</p>', '[\"PVC\"]', '[\"3DX\"]', '', '[\"Grid: Strong 2D infill.\"]', '[\"3D Print\"]', '[\"Silver\"]', '', 372, 1, '2020-02-10 11:48:38', '2020-01-22 09:45:41'),
(8, 'NEWR', '<p>ssa</p>', '', '[\"3DX\"]', '', '[\"Grid: Strong 2D infill.\"]', '[\"FDM\"]', '', '', 343, 1, '2020-02-10 11:36:23', '2020-01-27 12:25:18'),
(9, 'CNC 3d', '<p>AMCC</p>', '[\"Plastic\",\"PVC\"]', '[\"3DX\"]', '', '[\"Grid: Strong 2D infill.\"]', '[\"FDM\"]', '[\"gray\",\"yellow\"]', '', 383, 0, '2020-02-10 11:48:20', '2020-02-10 11:23:47'),
(10, 'test', '<p>gggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg</p>', '', '', '', '', '', '', '', 362, 1, '2020-04-13 02:05:22', '2020-04-13 02:05:22'),
(11, 'MADC', '<p>sdesggsr</p>', '[\"Iron\",\"Steel\",\"Plastic\",\"PVC\",\"test2\"]', '[\"3DX\",\"2DX\"]', '[\"5mm\",\"10mm\",\"15mm\"]', '[\"Grid: Strong 2D infill.\"]', '[\"FDM\",\"3D Print\"]', '[\"gray\",\"yellow\",\"Silver\"]', '[\"slow shipping\",\"Express Shipping\",\"Both Shipping\"]', 354, 1, '2020-05-19 13:00:50', '2020-05-19 12:49:46'),
(12, 'test', '<p>hhhhhhhhhhhhhhh</p>', '', '', '', '', '', '', '', 406, 1, '2020-05-22 04:29:27', '2020-05-22 04:29:00'),
(13, 'test200', '<p>testt</p>', '', '', '', '', '', '', '', 450, 1, '2020-10-28 03:52:49', '2020-10-28 03:52:49');

-- --------------------------------------------------------

--
-- Table structure for table `service_color`
--

CREATE TABLE `service_color` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_color`
--

INSERT INTO `service_color` (`id`, `name`, `created_at`) VALUES
(1, 'gray', '2020-02-10 09:43:49'),
(2, 'yellow', '2020-02-10 10:19:41'),
(3, 'Silver', '2020-02-10 11:41:47');

-- --------------------------------------------------------

--
-- Table structure for table `service_fininshings`
--

CREATE TABLE `service_fininshings` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_fininshings`
--

INSERT INTO `service_fininshings` (`id`, `name`, `created_at`) VALUES
(3, 'FDM', '2020-02-10 10:17:11'),
(4, '3D Print', '2020-02-10 11:41:33');

-- --------------------------------------------------------

--
-- Table structure for table `service_infil`
--

CREATE TABLE `service_infil` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_infil`
--

INSERT INTO `service_infil` (`id`, `name`, `created_at`) VALUES
(1, 'Grid: Strong 2D infill.', '2020-02-10 09:46:39'),
(2, 'test101', '2020-05-22 04:17:03');

-- --------------------------------------------------------

--
-- Table structure for table `service_layer_height`
--

CREATE TABLE `service_layer_height` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_layer_height`
--

INSERT INTO `service_layer_height` (`id`, `name`, `created_at`) VALUES
(3, '5mm', '2020-02-10 11:40:58'),
(4, '10mm', '2020-02-10 11:41:08'),
(5, '15mm', '2020-02-10 11:41:18');

-- --------------------------------------------------------

--
-- Table structure for table `service_material`
--

CREATE TABLE `service_material` (
  `id` int(11) NOT NULL,
  `name` varchar(700) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_material`
--

INSERT INTO `service_material` (`id`, `name`, `created_at`) VALUES
(3, 'Iron', '2020-02-10 11:39:57'),
(4, 'Steel', '2020-02-10 11:40:04'),
(5, 'Plastic', '2020-02-10 11:40:13'),
(6, 'PVC', '2020-02-10 11:40:21'),
(7, 'test2', '2020-04-17 06:54:48'),
(8, 'test45', '2020-05-22 04:30:30');

-- --------------------------------------------------------

--
-- Table structure for table `service_postage`
--

CREATE TABLE `service_postage` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_postage`
--

INSERT INTO `service_postage` (`id`, `name`, `created_at`) VALUES
(1, 'slow shipping', '2020-05-19 12:25:03'),
(2, 'Express Shipping', '2020-05-19 12:27:07'),
(3, 'Both Shipping', '2020-05-19 13:00:22'),
(4, 'lawrence', '2020-10-22 09:21:36');

-- --------------------------------------------------------

--
-- Table structure for table `service_type`
--

CREATE TABLE `service_type` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_type`
--

INSERT INTO `service_type` (`id`, `name`, `created_at`) VALUES
(1, '3DX', '2020-02-10 10:29:05'),
(2, '2DX', '2020-02-10 11:40:41');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `language` varchar(50) CHARACTER SET utf8 NOT NULL,
  `theme` varchar(50) CHARACTER SET utf8 NOT NULL,
  `sitename` varchar(300) CHARACTER SET utf8 NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 NOT NULL,
  `keywords` varchar(255) CHARACTER SET utf8 NOT NULL,
  `analytics` varchar(200) CHARACTER SET utf8 NOT NULL,
  `timezone` varchar(300) CHARACTER SET utf8 NOT NULL,
  `logo` varchar(300) CHARACTER SET utf8 NOT NULL,
  `favicon` varchar(300) CHARACTER SET utf8 NOT NULL,
  `contact_email` varchar(300) CHARACTER SET utf8 NOT NULL,
  `contact_phone` varchar(300) CHARACTER SET utf8 NOT NULL,
  `contact_location` varchar(300) CHARACTER SET utf8 NOT NULL,
  `facebook` varchar(200) CHARACTER SET utf8 NOT NULL,
  `instagram` varchar(200) CHARACTER SET utf8 NOT NULL,
  `twitter` varchar(200) CHARACTER SET utf8 NOT NULL,
  `smtp_host` varchar(300) CHARACTER SET utf8 NOT NULL,
  `smtp_username` varchar(300) CHARACTER SET utf8 NOT NULL,
  `smtp_password` varchar(300) CHARACTER SET utf8 NOT NULL,
  `smtp_encryption` varchar(300) CHARACTER SET utf8 NOT NULL,
  `smtp_port` varchar(300) CHARACTER SET utf8 NOT NULL,
  `currency` int(50) NOT NULL,
  `paypal_active` tinyint(4) NOT NULL,
  `sandbox` tinyint(4) NOT NULL,
  `paypal_email` varchar(300) CHARACTER SET utf8 NOT NULL,
  `stripe_active` tinyint(4) NOT NULL,
  `stripe_secret_key` varchar(300) CHARACTER SET utf8 NOT NULL,
  `stripe_public_key` varchar(300) CHARACTER SET utf8 NOT NULL,
  `razorpay_active` tinyint(4) NOT NULL,
  `razorpay_key_id` varchar(300) CHARACTER SET utf8 NOT NULL,
  `how_client` longtext CHARACTER SET utf8 NOT NULL,
  `how_freelancer` longtext CHARACTER SET utf8 NOT NULL,
  `how_client_image` varchar(200) CHARACTER SET utf8 NOT NULL,
  `how_freelancer_image` varchar(200) CHARACTER SET utf8 NOT NULL,
  `refund_policy` longtext CHARACTER SET utf8 NOT NULL,
  `terms` longtext CHARACTER SET utf8 NOT NULL,
  `privacy_policy` longtext CHARACTER SET utf8 NOT NULL,
  `revenue` int(200) NOT NULL,
  `transaction_fee` decimal(15,2) NOT NULL,
  `pay_freelancers` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `withdrawal_limit` decimal(15,2) NOT NULL,
  `paystack_active` tinyint(4) NOT NULL,
  `paystack_key` varchar(300) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `language`, `theme`, `sitename`, `title`, `description`, `keywords`, `analytics`, `timezone`, `logo`, `favicon`, `contact_email`, `contact_phone`, `contact_location`, `facebook`, `instagram`, `twitter`, `smtp_host`, `smtp_username`, `smtp_password`, `smtp_encryption`, `smtp_port`, `currency`, `paypal_active`, `sandbox`, `paypal_email`, `stripe_active`, `stripe_secret_key`, `stripe_public_key`, `razorpay_active`, `razorpay_key_id`, `how_client`, `how_freelancer`, `how_client_image`, `how_freelancer_image`, `refund_policy`, `terms`, `privacy_policy`, `revenue`, `transaction_fee`, `pay_freelancers`, `withdrawal_limit`, `paystack_active`, `paystack_key`) VALUES
(1, 'english', 'boxplace', 'Connecto3d', 'Powerful Freelance Marketplace System with ability to change the Users (Freelancers & Clients)', 'Powerful Freelance Marketplace System with ability to change the Users (Freelancers & Clients)', 'Powerful Freelance Marketplace System with ability to change the Users (Freelancers & Clients)', 'UA-79656468-7', 'Africa/Nairobi', 'wjjQWZX4jy6h4o.png', 'VWNzLjimfdEw36.png', 'themashabrand@gmail.com', '+4433556677', 'United States', 'https://www.facebook.com', 'https://www.instagram.com', 'https://www.twitter.com', 'mail.host.com', 'username', 'password', 'tls', '465', 1, 2, 1, 'themashabrandbusiness@gmail.com', 1, 'sk_test_IMq9XsThe0AEDUNEdYwwZdxS', 'pk_test_0sPQBhDwhX7x4kn3azVd0Jnn', 1, 'rzp_test_dfBtLvDuaRMdkR', '<p><b>Posting Projects</b><br></p><p>After registration, you will be \r\nable to login in your account where you can post a project.</p><p><b>Hiring Freelancers<br></b></p><p>After\r\n posting your project, you will receive proposals from interested \r\nfreelancers. You can look at their profiles and even send them messages \r\nfor more discussions.</p><p>After you are satisfied you have found the right Freelancer, go a head and hire him/her.</p><p><b>Adding Funds<br></b></p><p>You\r\n will not be able to hire a Freelancer if your Funds Account is $0.00 on\r\n your dashboard. </p><p>So what you do is go to the Funds section and add some \r\nmoney through either PayPal, Stripe, PayStack or Razorpay.</p><p><b>Escrow<br></b></p><p>Escrow\r\n is where the money will be held until the project is complete. </p><p>When you\r\n hire a Freelancer, the money will not be sent to the Freelancer\'s \r\naccount, instead it will be held by the Wave Company. </p><p><b>Disputes<br></b></p><p>If\r\n at any time you have a problem with the Freelancer, you can start a \r\nDispute in which Wave Company will have a dispute conversations between \r\nyou and the Freelancer.</p><p>The Wave Company will decide if the the money from Escrow should be Returned to the Client or Awarded to the Freelancer.<br></p><p> </p>', '<p><b>Looking for Projects</b><br></p><p>You can look for projects in \r\nwhich you seem fit with your skills. Then post a proposal where you will\r\n get a response from the Client.<br></p><p><b>Invited to Projects<br></b></p><p>At times a Client may invite you to do a project for him/her, you will get a notification concerning the Invite.<br></p><p><b>Building your Portfolio<br></b></p><p>Clients\r\n before they hire anyone, they always check their Portfolio, Work \r\nExperience, Education Experience and even About yourself. So remember to\r\n build your Portfolio.<br></p><p><b>Escrow<br></b></p><p>Escrow\r\n is where the money will be held until the project is complete. </p><p>When you get hired , the money will not be sent to the your \r\naccount, instead it will be held by the Wave Company. </p><p><b>Disputes<br></b></p><p>If\r\n at any time you have a problem with the Client, you can start a \r\nDispute in which Wave Company will have a dispute conversations between \r\nyou and the Client.</p><p>The Wave Company will decide if the the money from Escrow should be Returned to the Client or Awarded to the Freelancer.<br></p>', 'A1xp2l2j0JdqgI.jpg', 'aTrW7aAurd9xBY.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do \r\neiusmod tempor incididunt ut labore et dolore magna aliqua. Massa tempor\r\n nec feugiat nisl pretium. Mauris sit amet massa vitae tortor \r\ncondimentum lacinia. Amet commodo nulla facilisi nullam vehicula. \r\nImperdiet sed euismod nisi porta lorem mollis aliquam. </p><p>Tempor nec \r\nfeugiat nisl pretium fusce id velit ut. Sed lectus vestibulum mattis \r\nullamcorper. Id venenatis a condimentum vitae sapien pellentesque \r\nhabitant. Laoreet sit amet cursus sit amet dictum sit amet justo. \r\nTincidunt arcu non sodales neque sodales ut. Tincidunt nunc pulvinar \r\nsapien et ligula ullamcorper malesuada. Sit amet nulla facilisi morbi \r\ntempus iaculis urna id volutpat. Enim diam vulputate ut pharetra.</p><p>\r\nAt erat pellentesque adipiscing commodo elit at imperdiet dui \r\naccumsan. Netus et malesuada fames ac turpis egestas integer eget \r\naliquet. Mi proin sed libero enim sed faucibus turpis in. Mauris a diam \r\nmaecenas sed enim ut sem. Condimentum id venenatis a condimentum vitae \r\nsapien pellentesque habitant morbi.<br></p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do \r\neiusmod tempor incididunt ut labore et dolore magna aliqua. Massa tempor\r\n nec feugiat nisl pretium. Mauris sit amet massa vitae tortor \r\ncondimentum lacinia. Amet commodo nulla facilisi nullam vehicula. \r\nImperdiet sed euismod nisi porta lorem mollis aliquam. </p><p>Tempor nec \r\nfeugiat nisl pretium fusce id velit ut. Sed lectus vestibulum mattis \r\nullamcorper. Id venenatis a condimentum vitae sapien pellentesque \r\nhabitant. Laoreet sit amet cursus sit amet dictum sit amet justo. \r\nTincidunt arcu non sodales neque sodales ut. Tincidunt nunc pulvinar \r\nsapien et ligula ullamcorper malesuada. Sit amet nulla facilisi morbi \r\ntempus iaculis urna id volutpat. Enim diam vulputate ut pharetra.</p><p>\r\nAt erat pellentesque adipiscing commodo elit at imperdiet dui \r\naccumsan. Netus et malesuada fames ac turpis egestas integer eget \r\naliquet. Mi proin sed libero enim sed faucibus turpis in. Mauris a diam \r\nmaecenas sed enim ut sem. Condimentum id venenatis a condimentum vitae \r\nsapien pellentesque habitant morbi.<br></p>', '<br><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do \r\neiusmod tempor incididunt ut labore et dolore magna aliqua. Massa tempor\r\n nec feugiat nisl pretium. Mauris sit amet massa vitae tortor \r\ncondimentum lacinia. Amet commodo nulla facilisi nullam vehicula. \r\nImperdiet sed euismod nisi porta lorem mollis aliquam. </p><p>Tempor nec \r\nfeugiat nisl pretium fusce id velit ut. Sed lectus vestibulum mattis \r\nullamcorper. Id venenatis a condimentum vitae sapien pellentesque \r\nhabitant. Laoreet sit amet cursus sit amet dictum sit amet justo. \r\nTincidunt arcu non sodales neque sodales ut. Tincidunt nunc pulvinar \r\nsapien et ligula ullamcorper malesuada. Sit amet nulla facilisi morbi \r\ntempus iaculis urna id volutpat. Enim diam vulputate ut pharetra.</p><p>\r\nAt erat pellentesque adipiscing commodo elit at imperdiet dui \r\naccumsan. Netus et malesuada fames ac turpis egestas integer eget \r\naliquet. Mi proin sed libero enim sed faucibus turpis in. Mauris a diam \r\nmaecenas sed enim ut sem. Condimentum id venenatis a condimentum vitae \r\nsapien pellentesque habitant morbi.<br></p>', 30, '2.50', '4', '20.00', 1, 'pk_test_f70f1e66c2dfd5385acf7ef2ef30361e6427ebd5');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(255) NOT NULL,
  `name` varchar(300) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `name`) VALUES
(1, 'Zurb Foundation'),
(2, 'Zope'),
(3, 'Zoomla'),
(4, 'Zoho CRM'),
(5, 'Zoho Creator'),
(6, 'ZK'),
(7, 'Zimbra Development'),
(8, 'Zimbra Administration'),
(9, 'Zimbra Marketing'),
(10, 'Zennolab ZennoPoster'),
(11, 'Zendesk API Development '),
(12, 'Zendesk'),
(13, 'Zend Studio'),
(14, 'Zend Framework'),
(15, 'Zen Cart'),
(16, 'Zaxwerks'),
(17, 'zapier'),
(18, 'Zabbix'),
(19, 'YUI Library '),
(20, 'YouTube Marketing'),
(21, 'YouTube Development '),
(22, 'Yola '),
(23, 'Yoga'),
(24, 'Yii'),
(25, 'Yandex MatrixNet'),
(26, 'Yandex API '),
(27, 'YAML'),
(28, 'Yahoo! Store'),
(29, 'Yahoo! Search Marketing'),
(30, 'Yahoo! Query Language'),
(31, 'Yahoo! Messenger '),
(32, 'Yahoo! Merchant Solutions '),
(33, 'Yahoo Developer Skills'),
(34, 'Yahoo! Advertising Solutions'),
(35, 'XUL'),
(36, 'XSLT'),
(37, 'XSL'),
(38, 'XSD'),
(39, 'XRumer'),
(40, 'XQuery '),
(41, 'XPath'),
(42, 'XOOPS'),
(43, 'XMPP'),
(44, 'xml web services'),
(45, 'XML-RPC'),
(46, 'XML'),
(47, 'Xlinesoft PHPRunner'),
(48, 'Xilinx'),
(49, 'XHTML'),
(50, 'Xero'),
(51, 'XenForo'),
(52, 'Xen Hypervisor'),
(53, 'Xen Cloud Platform'),
(54, 'SAP Xcelsius'),
(55, 'Xbox'),
(56, 'Xara Xtreme'),
(57, 'XAMPP'),
(58, 'XAML'),
(59, 'Xamarin'),
(60, 'Xactimate'),
(61, 'X86 assembly language'),
(62, 'X-Cart'),
(63, 'WxWidgets'),
(64, 'Wu'),
(65, 'Slang-style Writing'),
(66, 'Writing'),
(67, 'Wrap Advertising'),
(68, 'Windows Presentation Foundation (WPF) '),
(69, 'WordPress e-Commerce'),
(70, 'Wowza Media Server'),
(71, 'Worldspan'),
(72, 'Worldbuilding'),
(73, 'Workshop Facilities'),
(74, 'Workforce Management'),
(75, 'Worketc'),
(76, 'Wordpress Plugin'),
(77, 'WordPress'),
(78, 'Wordperfect'),
(79, 'Wordfast'),
(80, 'Word processing'),
(81, 'Word-of-Mouth'),
(82, 'Woocommerce'),
(83, 'WML Script '),
(84, 'WiX'),
(85, 'Wireless Security'),
(86, 'Wireless Network Implementation'),
(87, 'Wireframing'),
(88, 'Winsock'),
(89, 'WinRunner'),
(90, 'Windows XP Administration'),
(91, 'Microsoft Windows Workflow Foundation'),
(92, 'Windows Vista'),
(93, 'Microsoft Windows Template Library'),
(94, 'Microsoft Windows Phone 7 App Development '),
(95, 'Windows Phone'),
(96, 'Windows NT Administration '),
(97, 'Microsoft Windows Movie Maker'),
(98, 'Windows Mobile'),
(99, 'microsoft windows media connect'),
(100, 'Windows Forms Development'),
(101, 'Microsoft Windows Azure'),
(102, 'Windows App Development'),
(103, 'Windows Administration'),
(104, 'Windows 8 App Development '),
(105, 'Windows 8 Administration '),
(106, 'Windows 7 Administration'),
(107, 'WinDev Mobile'),
(108, 'WinDev '),
(109, 'Wind Power Consulting'),
(110, 'WinAutomation'),
(111, 'Win32 App Development'),
(112, 'WiMAX'),
(113, 'Wilcom EmbroideryStudio'),
(114, 'Wilcom Embroidery Digitization'),
(115, 'Wikipedia'),
(116, 'Wiki'),
(117, 'Wicket'),
(118, 'Wi-Fi'),
(119, 'WHMCS Development'),
(120, 'WebHost Manager (WHM) '),
(121, 'Whiteboard Animation'),
(122, 'White Paper Writing'),
(123, 'Westlaw'),
(124, 'Welsh'),
(125, 'Welding'),
(126, 'Weka'),
(127, 'Weebly'),
(128, 'Website Wireframing'),
(129, 'Website Prototyping'),
(130, 'Website Development'),
(131, 'Website Baker'),
(132, 'Website Analytics'),
(133, 'WebRTC'),
(134, 'Oracle WebLogic'),
(135, 'Webisode Production'),
(136, 'Webisode Presentation'),
(137, 'WebGL'),
(138, 'Webflow'),
(139, 'webERP'),
(140, 'webeeh'),
(141, 'WebApp Pentesting'),
(142, 'Web Testing'),
(143, 'Web Services Development'),
(144, 'Web Services'),
(145, 'Web scraping'),
(146, 'Web Programming'),
(147, 'Palm webOS Application Development'),
(148, 'Web Hosting'),
(149, 'Web Host Manager'),
(150, 'Web design'),
(151, 'Web Crawler'),
(152, 'Content Management'),
(153, 'Web Analytics'),
(154, 'Windows Communication Foundation (WCF)'),
(155, 'Wave Accounting'),
(156, 'Watercolor Painting'),
(157, 'Wardrobe Styling'),
(158, 'WAN Optimization'),
(159, 'WAN'),
(160, 'WAMP'),
(161, 'W3C Widget API'),
(162, 'VxWorks'),
(163, 'Vulnerability assessment'),
(164, 'Vugen Scripting'),
(165, 'VTK'),
(166, 'vtiger Development'),
(167, 'vtiger Adminstration'),
(168, 'VSS'),
(169, 'Virtual storage access method (VSAM)'),
(170, 'V-Ray'),
(171, 'VPN'),
(172, 'volusion'),
(173, 'Volleyball'),
(174, 'Voldemort'),
(175, 'VOIP Software'),
(176, 'VOIP Administration'),
(177, 'VoiceXML'),
(178, 'Voice Talent'),
(179, 'Voice Over '),
(180, 'VMware ESX Server'),
(181, 'VMware Administration'),
(182, 'VLSI'),
(183, 'VLookup Tables'),
(184, 'VKontakte API'),
(185, 'Vizrt'),
(186, 'Visualization'),
(187, 'visualforce'),
(188, 'Visual Merchandising'),
(189, 'Visual FoxPro'),
(190, 'Visual Dataflex'),
(191, 'Visual Basic'),
(192, 'Visual Arts'),
(193, 'virus removal'),
(194, 'Virtuoso'),
(195, 'VirtueMart'),
(196, 'Virtualization'),
(197, 'Virtual Private Server (VPS)'),
(198, 'Virtual Machine'),
(199, 'Virtual Currency'),
(200, 'Virtual Assistant'),
(201, 'Viral marketing'),
(202, 'Violin Performance'),
(203, 'Violin Composition'),
(204, 'Vim'),
(205, 'Vietnamese'),
(206, 'VIDVOX VDMX'),
(207, 'Videography'),
(208, 'Video Upload'),
(209, 'Video Streaming'),
(210, 'Video Sales Letter'),
(211, 'Video Ripping'),
(212, 'Video Publishing'),
(213, 'Video production'),
(214, 'Video Post Editing'),
(215, 'Video editing'),
(216, 'Video Conversion'),
(217, 'vicidial'),
(218, 'VHDL'),
(219, 'VFX Design'),
(220, 'VFX Animation'),
(221, 'Vertica'),
(222, 'Version Control'),
(223, 'Verilog / VHDL'),
(224, 'Venture Capital Consulting'),
(225, 'Vendor Management Systems'),
(226, 'Velocity Template Engine'),
(227, 'Veeam'),
(228, 'VectorWorks'),
(229, 'vCita'),
(230, 'VBulletin'),
(231, 'vbseo'),
(232, 'VBScript'),
(233, 'VBA'),
(234, 'VB.NET'),
(235, 'Varnish Cache'),
(236, 'Valgrind'),
(237, 'Vagrant'),
(238, 'Vaadin Framework'),
(239, 'UV Mapping'),
(240, 'Users Guide Writing'),
(241, 'User Experience Design'),
(242, 'User acceptance testing'),
(243, 'USB Electronics'),
(244, 'Usability testing'),
(245, 'Urdu'),
(246, 'Urban Design'),
(247, 'UnrealScript'),
(248, 'Unreal Engine'),
(249, 'Unix System Administration'),
(250, 'Unix shell'),
(251, 'Unix'),
(252, 'Unity'),
(253, 'Unit Testing'),
(254, 'Unify Corporation'),
(255, 'Unify SQLBase'),
(256, 'Unify'),
(257, 'Unified Threat Management'),
(258, 'Underwriting'),
(259, 'unbounce'),
(260, 'UML'),
(261, 'Umbraco'),
(262, 'Ulead VideoStudio'),
(263, 'Ulead COOL 3D'),
(264, 'Ukrainian'),
(265, 'User interface design'),
(266, 'Ubuntu'),
(267, 'Ubercart'),
(268, 'U.S. Culture'),
(269, 'Typography'),
(270, 'TYPO3'),
(271, 'Typing'),
(272, 'Typesetting'),
(273, 'TypePad'),
(274, 'Twitter Marketing'),
(275, 'Bootstrap'),
(276, 'twitter api'),
(277, 'Twilio API'),
(278, 'Twig'),
(279, 'TV Broadcasting'),
(280, 'Turkish'),
(281, 'Turbo C'),
(282, 'Tumblr'),
(283, 'TSR'),
(284, 'TSM Administration'),
(285, 'Trusts Estates and Wills'),
(286, 'Tropo'),
(287, 'Trixbox'),
(288, 'Triakis VSIL'),
(289, 'Travel Writing'),
(290, 'Travel Planning'),
(291, 'Travel Agent'),
(292, 'Translation Yiddish English'),
(293, 'Translation Welsh English'),
(294, 'Translation Vietnamese English'),
(295, 'Translation Urdu English'),
(296, 'Translation Ukrainian English'),
(297, 'Translation Turkish English'),
(298, 'Translation Thai English'),
(299, 'Translation Telugu English'),
(300, 'Translation Tamil English'),
(301, 'Translation Tagalog English '),
(302, 'Translation Swedish English'),
(303, 'Translation Swahili English'),
(304, 'Translation Spanish French'),
(305, 'Translation Spanish English'),
(306, 'Translation Slovenian English'),
(307, 'Translation Slovak English'),
(308, 'Translation Serbian English'),
(309, 'Translation Russian English'),
(310, 'Translation Romanian English'),
(311, 'Translation Portuguese English'),
(312, 'Translation Polish German'),
(313, 'Translation Polish English'),
(314, 'Translation Persian English'),
(315, 'Translation Norwegian English'),
(316, 'Translation Mandarin English'),
(317, 'Translation Maltese English'),
(318, 'Translation Malay English'),
(319, 'Translation Macedonian English'),
(320, 'Translation Lithuanian English'),
(321, 'Translation Latvian English'),
(322, 'Translation Latin English'),
(323, 'Translation Korean English'),
(324, 'Translation Kannada English'),
(325, 'Translation Japanese English'),
(326, 'Translation Italian English'),
(327, 'Translation Irish English'),
(328, 'Translation Indonesian English'),
(329, 'Translation Icelandic English'),
(330, 'Translation Hungarian English'),
(331, 'Translation Hindi English'),
(332, 'Translation Hebrew English'),
(333, 'Translation Haitian Creole English'),
(334, 'Translation Gujarati English'),
(335, 'Translation Greek English'),
(336, 'Translation German Polish'),
(337, 'Translation German French'),
(338, 'Translation German English'),
(339, 'Translation Georgian English'),
(340, 'Translation Galician English'),
(341, 'Translation French Spanish'),
(342, 'Translation French German'),
(343, 'Translation French English'),
(344, 'Translation Finnish English'),
(345, 'Translation Filipino English'),
(346, 'Translation Estonian English'),
(347, 'Translation English Yiddish'),
(348, 'Translation English Welsh'),
(349, 'Translation English Vietnamese'),
(350, 'Translation English Urdu'),
(351, 'Translation English Ukrainian'),
(352, 'Translation English Turkish'),
(353, 'Translation English Thai'),
(354, 'Translation English Telugu'),
(355, 'Translation English Tamil'),
(356, 'Translation English Tagalog'),
(357, 'Translation English Swedish'),
(358, 'Translation English Swahili'),
(359, 'Translation English Spanish'),
(360, 'Translation English Slovenian'),
(361, 'Translation English Slovak'),
(362, 'Translation English Serbian'),
(363, 'Translation English Russian'),
(364, 'Translation English Romanian'),
(365, 'Translation English Portuguese'),
(366, 'Translation English Polish'),
(367, 'Translation English Persian'),
(368, 'Translation English Norwegian'),
(369, 'Translation English Mandarin'),
(370, 'Translation English Maltese'),
(371, 'Translation English Malay'),
(372, 'Translation English Macedonian'),
(373, 'Translation English Lithuanian'),
(374, 'Translation English Latvian'),
(375, 'Translation English Latin'),
(376, 'Translation English Kyrgyz'),
(377, 'Translation English Korean'),
(378, 'Translation English Kannada'),
(379, 'Translation English Japanese'),
(380, 'Translation English Italian'),
(381, 'Translation English Irish'),
(382, 'Translation English Indonesian'),
(383, 'Translation English Icelandic'),
(384, 'Translation English Hungarian'),
(385, 'Translation English Hindi'),
(386, 'Translation English Hebrew'),
(387, 'Translation English Haitian Creole'),
(388, 'Translation English Gujarati'),
(389, 'Translation English Greek'),
(390, 'Translation English German'),
(391, 'Translation English Georgian'),
(392, 'Translation English Galician'),
(393, 'Translation English French'),
(394, 'Translation English Finnish'),
(395, 'Translation English Filipino'),
(396, 'Translation English Estonian'),
(397, 'Translation English Dutch'),
(398, 'Translation English Danish'),
(399, 'Translation English Czech'),
(400, 'Translation English Croatian'),
(401, 'Translation English Chinese'),
(402, 'Translation English Catalan'),
(403, 'Translation English Bulgarian'),
(404, 'Translation English Brazilian Portuguese'),
(405, 'Translation English Bengali'),
(406, 'Translation English Belariusan'),
(407, 'Translation English Armenian'),
(408, 'Translation English Arabic'),
(409, 'Translation English Albanian'),
(410, 'Translation English Afrikaans'),
(411, 'Translation Dutch English'),
(412, 'Translation Danish English'),
(413, 'Translation Czech English'),
(414, 'Translation Croatian English'),
(415, 'Translation Chinese English'),
(416, 'Translation Catalan English'),
(417, 'Translation Bulgarian English'),
(418, 'Translation Brazilian Portuguese English'),
(419, 'Translation Bengali English'),
(420, 'Translation Belarusian English'),
(421, 'Translation Armenian English'),
(422, 'Translation Arabic English'),
(423, 'Translation Albanian English'),
(424, 'Translation Afrikaans English'),
(425, 'Translation'),
(426, 'Transcription'),
(427, 'Transcreation'),
(428, 'Transaction Processing'),
(429, 'traffic geyser'),
(430, 'Trademark Consulting'),
(431, 'trade2bharat'),
(432, 'Trade Show Exhibition Design'),
(433, 'Trade marketing'),
(434, 'Trade Law'),
(435, 'Trac'),
(436, 'TQM'),
(437, 'Tourism'),
(438, 'Tortoise SVN'),
(439, 'Torque Game Engine'),
(440, 'Tornado'),
(441, 'Toon Boom Studio'),
(442, 'Toon Boom Harmony'),
(443, 'Toktumi'),
(444, 'Tk'),
(445, 'Tizen'),
(446, 'Time Management'),
(447, 'TIBCO ActiveMatrix BusinessWorks'),
(448, 'Theology'),
(449, 'The Pixel Farm PFTrack'),
(450, 'The Foundry NUKE'),
(451, 'Thai'),
(452, 'Team Foundation Server'),
(453, 'Texture Artist'),
(454, 'Textpattern '),
(455, 'Textile Engineering'),
(456, 'Testopia'),
(457, 'Testing Framework'),
(458, 'TestLodge'),
(459, 'TestLink'),
(460, 'TestComplete'),
(461, 'Test Driven Development'),
(462, 'Test Case Design'),
(463, 'Test Automation'),
(464, 'Tesseract'),
(465, 'Teradata'),
(466, 'Templates'),
(467, 'Telugu'),
(468, 'Telerik'),
(469, 'Telephone Handling'),
(470, 'Telemarketing'),
(471, 'Telecommunications Engineering'),
(472, 'Tekla Structures'),
(473, 'Technical writing'),
(474, 'Technical Translation '),
(475, 'Technical Support '),
(476, 'Technical Recruiter '),
(477, 'Technical Editing'),
(478, 'Technical Documentation '),
(479, 'technical analysis'),
(480, 'TeamViewer'),
(481, 'Tealeaf cxImpact'),
(482, 'Teaching Physics'),
(483, 'Teaching Mathematics'),
(484, 'Teaching English'),
(485, 'Teaching Algebra'),
(486, 'TCP/IP'),
(487, 'Tcl/Tk'),
(488, 'Taxonomy'),
(489, 'Tax preparation'),
(490, 'Tax Law'),
(491, 'Tastypie'),
(492, 'TAPI'),
(493, 'Tapestry'),
(494, 'Tamil'),
(495, 'Tally .ERP'),
(496, 'Tally Shoper'),
(497, 'Talend Open Studio'),
(498, 'Tagalog'),
(499, 'Tableau Software'),
(500, 'Transact-SQL'),
(501, 'T-Shirt Design'),
(502, 'Systems Development'),
(503, 'System Programming'),
(504, 'System Automation'),
(505, 'System Analysis'),
(506, 'System Administration'),
(507, 'Synthetic Aperture Color Finesse'),
(508, 'Synopsis Writing'),
(509, 'Syncsort'),
(510, 'Symfony'),
(511, 'Symbian Development'),
(512, 'Sybase Programming'),
(513, 'SWT'),
(514, 'SWiSH Max'),
(515, 'Swing'),
(516, 'Swift'),
(517, 'Swedish'),
(518, 'Software Configuration Management '),
(519, 'Apache Subversion (SVN) '),
(520, 'Sustainable Energy '),
(521, 'SurveyMonkey'),
(522, 'Survey Design '),
(523, 'Supply chain management '),
(524, 'supervisory skills'),
(525, 'Supervised learning '),
(526, 'SunGard '),
(527, 'SugarCRM Development '),
(528, 'Subversion'),
(529, 'Subtitling '),
(530, 'Style Guide Development '),
(531, 'Structured Cabling'),
(532, 'Structural Engineering '),
(533, 'Structural Analysis '),
(534, 'StrongMail '),
(535, 'Stripe '),
(536, 'Stress Management '),
(537, 'Stream Processing '),
(538, 'Strategic planning '),
(539, 'Stratasys '),
(540, 'Storyboarding '),
(541, 'Stored Procedure Development '),
(542, 'Stock Management '),
(543, 'Standard Template Library (STL) '),
(544, 'Still Life Painting '),
(545, 'Sticker Design '),
(546, 'Stereoscopy '),
(547, 'stenography '),
(548, 'Steinberg WaveLab '),
(549, 'Steinberg Cubase '),
(550, 'Statpoint Statgraphics '),
(551, 'Statistics '),
(552, 'Statistical Computing '),
(553, 'Stationery Design '),
(554, 'Stata '),
(555, 'Startup Consulting '),
(556, 'Stakeholder Management '),
(557, 'STAAD '),
(558, 'SSL '),
(559, 'SQL Server Integration Services (SSIS) '),
(560, 'SSI '),
(561, 'SSH '),
(562, 'Squid '),
(563, 'SquareSpace '),
(564, 'SQR '),
(565, 'Sqoop '),
(566, 'SQLite Programming '),
(567, 'SQLite Administration '),
(568, 'SQL Programming '),
(569, 'SQL CLR '),
(570, 'SQL Azure '),
(571, 'SQL'),
(572, 'SQA'),
(573, 'Spring Security '),
(574, 'Spring Framework '),
(575, 'Spree '),
(576, 'Spreadsheets '),
(577, 'Sports Writing '),
(578, 'Special Purpose Machines Design '),
(579, 'Splunk '),
(580, 'Spiral Graphics Genetica '),
(581, 'Spine JS'),
(582, 'Sphinx '),
(583, 'Speech Writing '),
(584, 'Sparx Systems Enterprise Architect '),
(585, 'Spanish '),
(586, 'SpamAssassin '),
(587, 'Spacewalk '),
(588, 'Soundtrack Pro'),
(589, 'Sound Forge '),
(590, 'Sound Effects'),
(591, 'sound editing'),
(592, 'Sound Design'),
(593, 'Sony Vegas'),
(594, 'ACID Pro'),
(595, 'SolidWorks '),
(596, 'Solid Edge '),
(597, 'Solaris Administration '),
(598, 'Software Testing '),
(599, 'Software QA Testing '),
(600, 'Software Licensing '),
(601, 'Software Documentation '),
(602, 'Software Defined Networking (SDN) '),
(603, 'Software Debugging '),
(604, 'Socket Programming'),
(605, 'SocialEngine'),
(606, 'Social Networking Development '),
(607, 'Social Network Administration '),
(608, 'Social Media Optimization (SMO) '),
(609, 'Social Media Marketing'),
(610, 'Social Media Management '),
(611, 'Social bookmarking '),
(612, 'soapUI'),
(613, 'SOAP'),
(614, 'Snort '),
(615, 'SNMP'),
(616, 'SnagIt '),
(617, 'SMTP '),
(618, 'SMS Gateway '),
(619, 'SMS '),
(620, 'SMPP '),
(621, 'SMO'),
(622, 'Smarty'),
(623, 'SmartFoxServer'),
(624, 'Smalltalk '),
(625, 'Slovenian'),
(626, 'Slovakian'),
(627, 'Slogans '),
(628, 'skype development'),
(629, 'Skype'),
(630, 'Sketching'),
(631, 'Sketch'),
(632, 'Skeleton '),
(633, 'SkaDate'),
(634, 'Six Sigma'),
(635, 'SiteScope'),
(636, 'Telerik Sitefinity CMS '),
(637, 'Sitecore'),
(638, 'SiteBuildIt '),
(639, 'SIP '),
(640, 'Sinhala '),
(641, 'Singing'),
(642, 'Sinatra Framework '),
(643, 'Simulink'),
(644, 'Simplified Chinese'),
(645, 'SimpleDB'),
(646, 'Simple DirectMedia Layer'),
(647, 'SilverStripe'),
(648, 'Silex Framework '),
(649, 'SigmaPlot '),
(650, 'Siemens NX '),
(651, 'Sibelius'),
(652, 'SHOUTcast '),
(653, 'Short Story Writing '),
(654, 'Shopify Templates '),
(655, 'Shopify'),
(656, 'ShiVa3D '),
(657, 'Microsoft SharePoint Designer '),
(658, 'Session Description Protocol '),
(659, 'Servoy '),
(660, 'Servlet '),
(661, 'Service Level Management'),
(662, 'Service Cloud Development'),
(663, 'Service Cloud Administration '),
(664, 'Sermon'),
(665, 'Serialization '),
(666, 'Serial Port Interfacing '),
(667, 'Serenic Navigator '),
(668, 'Serbian'),
(669, 'Sequential Art '),
(670, 'SEOMoz '),
(671, 'SEO Writing '),
(672, 'SEO Keyword Research '),
(673, 'SEO Backlinking'),
(674, 'SEO Audit '),
(675, 'Search Engine Optimization (SEO) '),
(676, 'SENuke X '),
(677, 'Sentiment analysis '),
(678, 'sensable claytrix '),
(679, 'Sendmail '),
(680, 'Sencha GXT '),
(681, 'Sencha Touch '),
(682, 'Semiconductor '),
(683, 'Search engine marketing (SEM)'),
(684, 'Selling '),
(685, 'Selenium WebDriver '),
(686, 'Selenium '),
(687, 'Security Infrastructure'),
(688, 'Security Engineering '),
(689, 'Security Analysis '),
(690, 'Internet Security '),
(691, 'Section 508 Compliance '),
(692, 'SDLX '),
(693, 'SDL Trados '),
(694, 'SDL Passolo'),
(695, 'Sculpture'),
(696, 'Sculpting '),
(697, 'ScrumWorks '),
(698, 'Scrum'),
(699, 'Scripts & Utilities'),
(700, 'Scripting '),
(701, 'Script.aculo.us '),
(702, 'Screenwriting '),
(703, 'Scrapy '),
(704, 'scrapebox '),
(705, 'SCORM'),
(706, 'Scientific Writing '),
(707, 'Scientific Research '),
(708, 'Scientific Computation'),
(709, 'Scheme '),
(710, 'Scenario Planning'),
(711, 'Scalr '),
(712, 'Scale Modeling '),
(713, 'Scalable transaction processing '),
(714, 'Scala'),
(715, 'SCADA'),
(716, 'Savant3 '),
(717, 'Satire '),
(718, 'sassie mystery shopping'),
(719, 'Sass'),
(720, 'SAS'),
(721, 'SilverStripe'),
(722, 'SAP Warehouse Management'),
(723, 'SAP Web Dynpro'),
(724, 'SAP Sybase Adaptive Server Enterprise '),
(725, 'SAP Solution Manager '),
(726, 'SAP SD'),
(727, 'SAP Programming'),
(728, 'SAP NetWeaver'),
(729, 'SAP Materials Management'),
(730, 'SAP Manufacturing Execution '),
(731, 'SAP Logistics Execution '),
(732, 'SAP Hana'),
(733, 'SAP AG'),
(734, 'SAP ERP HCM '),
(735, 'SAP ERP'),
(736, 'SAP CRM'),
(737, 'SAP BusinessOne'),
(738, 'SAP Business Objects'),
(739, 'SAP BSP'),
(740, 'SAP BASIS '),
(741, 'SAP Analysis'),
(742, 'SAP ABAP '),
(743, 'SAP2000 '),
(744, 'SAP'),
(745, 'Samba'),
(746, 'Salesgenie.com '),
(747, 'Salesforce.com '),
(748, 'Salesforce App Development '),
(749, 'Salesforce Apex '),
(750, 'Sales Writing '),
(751, 'Sales Promotion '),
(752, 'Sales management '),
(753, 'Sales Letters '),
(754, 'Sales '),
(755, 'Salary Surveys '),
(756, 'SAI '),
(757, 'Sage Peachtree Complete Accounting '),
(758, 'Sage ERP Accpac '),
(759, 'Sabre '),
(760, 'Sassu '),
(761, 'SaaS '),
(762, 'S '),
(763, 'Russian Language '),
(764, 'Rational Unified Process (RUP) '),
(765, 'Ruby on Rails '),
(766, 'Ruby '),
(767, 'RTOS '),
(768, 'RTML '),
(769, 'RTLinux '),
(770, 'RTL '),
(771, 'RSS '),
(772, 'RSpec '),
(773, 'RPG Writing '),
(774, 'RPG (OS/400) '),
(775, 'RPG Development '),
(776, 'Rotoscoping '),
(777, 'Robotscope '),
(778, 'Root Cause Analysis '),
(779, 'Roomorama API '),
(780, 'Romanian '),
(781, 'Robotics '),
(782, 'Robot Framework '),
(783, 'Java Remote Method Invocation (Java RMI) '),
(784, 'Risk management '),
(785, 'RightScale '),
(786, 'Richfaces '),
(787, 'Rhodes Framework '),
(788, 'Rhino Service Bus '),
(789, 'RhinoScript '),
(790, 'Rhinoceros 3D '),
(791, 'Red Hat Enterprise Linux (RHEL) '),
(792, 'Red Hat Certified Engineer (RHCE) '),
(793, 'RFID '),
(794, 'Autodesk Revit Architecture '),
(795, 'Reviews '),
(796, 'Reverse engineering '),
(797, 'RETS '),
(798, 'Retail Ops Management '),
(799, 'Retail Merchandising '),
(800, 'Resume Writing '),
(801, 'REST '),
(802, 'Responsys Marketing '),
(803, 'Responsys Development '),
(804, 'Responsys Administration '),
(805, 'Responsive Web Design '),
(806, 'Resource Description Framework (RDF) '),
(807, 'Resin '),
(808, 'Research Papers '),
(809, 'Research '),
(810, 'Requirements analysis '),
(811, 'Requirement Management '),
(812, 'Reputation Management '),
(813, 'RepRap '),
(814, 'report writing '),
(815, 'Remoting '),
(816, 'Remote Sensing '),
(817, 'Relationship Management '),
(818, 'Relational Databases '),
(819, 'Regular Expressions '),
(820, 'Regression testing '),
(821, 'Refinery CMS '),
(822, 'Redmine '),
(823, 'Redis '),
(824, 'Red Hat Administration '),
(825, 'Red5 '),
(826, 'Recruiting '),
(827, 'Records Management '),
(828, 'Recommender Systems '),
(829, 'Recipe Writing '),
(830, 'Receptionist Skills '),
(831, 'Receipt Parsing '),
(832, 'Realist Painting '),
(833, 'Realbasic '),
(834, 'Real time stream processing '),
(835, 'Real Estate Management '),
(836, 'Real Estate Law '),
(837, 'Real Estate IDX '),
(838, 'Real Estate Appraisal '),
(839, 'Razor Template Engine '),
(840, 'IBM Rational Rose '),
(841, 'Retail Sales Management '),
(842, 'Raspberry Pi '),
(843, 'RapidWorks '),
(844, 'Rapid Prototyping '),
(845, 'Rapid Miner '),
(846, 'Raphael JS '),
(847, 'RAID Administration '),
(848, 'RADIUS '),
(849, 'Radio personality '),
(850, 'Radio Broadcasting '),
(851, 'Radiant Zemax '),
(852, 'Radiant CMS '),
(853, 'Rackspace Cloud Servers '),
(854, 'Rackspace '),
(855, 'RabbitMQ '),
(856, 'R-Hadoop '),
(857, 'R '),
(858, 'QuickFIX '),
(859, 'quick sales system '),
(860, 'Quartz Composer '),
(861, 'quartz '),
(862, 'Quark Xpress '),
(863, 'Quantity Surveying '),
(864, 'Quantitative Analysis '),
(865, 'Qualitative Research '),
(866, 'Qt '),
(867, 'QS Cad '),
(868, 'Qooxdoo '),
(869, 'QNX '),
(870, 'Qmail '),
(871, 'QlikTech QlikView '),
(872, 'qhse '),
(873, 'QGIS '),
(874, 'Qcodo '),
(875, 'QA Management '),
(876, 'QA Engineering '),
(877, 'Quality of Service (Q-oS) '),
(878, 'Q '),
(879, 'Python SciPy '),
(880, 'Python Numpy '),
(881, 'Python '),
(882, 'pyro '),
(883, 'PyQt '),
(884, 'Pylons '),
(885, 'Pyjamas '),
(886, 'Pure Data '),
(887, 'Purchasing Management '),
(888, 'Puppet Administration '),
(889, 'Punjabi '),
(890, 'punching '),
(891, 'Punch Home Design Studio Pro '),
(892, 'Publishing Fundamentals '),
(893, 'Public speaking '),
(894, 'Public Relations '),
(895, 'PTGui '),
(896, 'PTC Creo Elements/Pro '),
(897, 'Psychometric Examination '),
(898, 'PSPICE '),
(899, 'PSD2CMS '),
(900, 'PSD to XHTML '),
(901, 'PSD to Wordpress '),
(902, 'PSD to MailChimp '),
(903, 'psd to html '),
(904, 'Prototype Javascript Framework '),
(905, 'Protoshare '),
(906, 'ProTools '),
(907, 'Proposal Writing '),
(908, 'Property Tax '),
(909, 'Property Management '),
(910, 'Property Development '),
(911, 'Propellerhead Reason '),
(912, 'Proofreading '),
(913, 'Prolog '),
(914, 'Project Scheduling '),
(915, 'Project Planning '),
(916, 'Project Management professional '),
(917, 'Project management '),
(918, 'Program Management '),
(919, 'Pro-E '),
(920, 'Product management '),
(921, 'Product Liability '),
(922, 'Product Development '),
(923, 'Product Design '),
(924, 'Product Descriptions '),
(925, 'Processing '),
(926, 'Process improvement '),
(927, 'Process architecture '),
(928, 'Private Clouds '),
(929, 'Privacy '),
(930, 'Print Layout Design '),
(931, 'Print design '),
(932, 'Print Advertising '),
(933, 'PrimeFaces '),
(934, 'Oracle Primavera '),
(935, 'Prezi '),
(936, 'PrestaShop '),
(937, 'Press Release Writing '),
(938, 'Press Advertising '),
(939, 'PreSonus Studio One '),
(940, 'Presentations '),
(941, 'Presentation Design '),
(942, 'Predictive Analytics '),
(943, 'Prepress '),
(944, 'PRADO PHP Framework '),
(945, 'Pay Per Click Advertising '),
(946, 'Windows PowerShell '),
(947, 'Power Builder '),
(948, 'PostScript '),
(949, 'PostgreSQL Programming '),
(950, 'PostgreSQL Administration '),
(951, 'Postfix SMTP Server '),
(952, 'Posterous '),
(953, 'Poster Design '),
(954, 'Poser '),
(955, 'POS Terminal Development '),
(956, 'Portuguese '),
(957, 'Portlets '),
(958, 'Portfolio Performance Modeling '),
(959, 'Portrait Painting '),
(960, 'Pomodoro Technique '),
(961, 'Polymer Clay Sculpting '),
(962, 'Polish '),
(963, 'Policy Writing '),
(964, 'Poetry '),
(965, 'Podio '),
(966, 'Pocket PC '),
(967, 'PMDS '),
(968, 'Plumbing '),
(969, 'Plone '),
(970, 'Plivo '),
(971, 'Pligg '),
(972, 'Plesk '),
(973, 'PLC Programming '),
(974, 'PLC & SCADA '),
(975, 'Play Framework '),
(976, 'Platform Migration '),
(977, 'Pixologic Zbrush '),
(978, 'Pinterest Marketing '),
(979, 'Pinnacle Studio '),
(980, 'Pig '),
(981, 'Piano Performance '),
(982, 'Piano Composition '),
(983, 'Physics '),
(984, 'Physical Fitness '),
(985, 'PHP-Nuke '),
(986, 'phpMyDirectory '),
(987, 'phpMyAdmin '),
(988, 'phpfox '),
(989, 'PhpBB '),
(990, 'PHP '),
(991, 'PhotoScape '),
(992, 'Photography '),
(993, 'Photograph Color Correction '),
(994, 'Photo Retouching '),
(995, 'Photo Manipulation '),
(996, 'Photo Editing '),
(997, 'PhoneGap '),
(998, 'Phone Support '),
(999, 'Phing '),
(1000, 'PfSense '),
(1001, 'Petroleum Engineering '),
(1002, 'PESTEL '),
(1003, 'Pervasive Software '),
(1004, 'Personal Development '),
(1005, 'Persian '),
(1006, 'PerlDancer '),
(1007, 'Perl Mojolicious '),
(1008, 'Perl Catalyst '),
(1009, 'Perl '),
(1010, 'Performing arts '),
(1011, 'Performance Tuning '),
(1012, 'Performance testing '),
(1013, 'Perforce '),
(1014, 'Oracle Peoplesoft Development '),
(1015, 'Oracle Peoplesoft Administration '),
(1016, 'PeopleCode '),
(1017, 'Pentaho '),
(1018, 'Penetration Testing '),
(1019, 'PEAR '),
(1020, 'Peachtree Accounting '),
(1021, 'PDF Conversion '),
(1022, 'PCI Compliance '),
(1023, 'PCB Design '),
(1024, 'PCAP '),
(1025, 'PBworks Development '),
(1026, 'PBwiki '),
(1027, 'Payroll Processing '),
(1028, 'Paypal Integration '),
(1029, 'PayPal Development '),
(1030, 'Payment Processing '),
(1031, 'Payment Gateway Integration '),
(1032, 'Pay per click '),
(1033, 'Pattern recognition '),
(1034, 'Patent Law '),
(1035, 'Pashto '),
(1036, 'Pascal '),
(1037, 'ParticleIllusion '),
(1038, 'Parse Mobile App Platform '),
(1039, 'Pardot Marketing '),
(1040, 'Pardot Development '),
(1041, 'Pardot Development '),
(1042, 'Pardot Administration '),
(1043, 'Parallels Virtual Desktop '),
(1044, 'Paralegal Services '),
(1045, 'Papervision3D '),
(1046, 'Papercraft '),
(1047, 'Panoramic Stitching '),
(1048, 'Palm App Development '),
(1049, 'Palm'),
(1050, 'Paint.NET '),
(1051, 'Packaging Design '),
(1052, 'P-CAD '),
(1053, 'Outbound Sales '),
(1054, 'OSPF '),
(1055, 'OSGi '),
(1056, 'OsCommerce '),
(1057, 'osclass '),
(1058, 'OS/2 '),
(1059, 'ORMLite '),
(1060, 'ORM '),
(1061, 'Organizational Development '),
(1062, 'Organizational Behavior '),
(1063, 'Order processing '),
(1064, 'Order Entry '),
(1065, 'Orchard CMS '),
(1066, 'OrCAD '),
(1067, 'OrangeCRM '),
(1068, 'Oracle User Productivity Kit '),
(1069, 'Oracle Upgrade '),
(1070, 'Oracle Unified Method '),
(1071, 'Oracle Universal Content Management '),
(1072, 'Oracle Transportation Management '),
(1073, 'Oracle Team Productivity Center '),
(1074, 'Oracle Taleo '),
(1075, 'Oracle Sun Ray '),
(1076, 'Oracle SOA Suite '),
(1077, 'Oracle Siebel '),
(1078, 'Oracle RightNow '),
(1079, 'Oracle Reports '),
(1080, 'Oracle Real Application Clusters (RAC) '),
(1081, 'Oracle Programming '),
(1082, 'Oracle Primavera '),
(1083, 'Oracle Policy Automation'),
(1084, 'Oracle PLSQL '),
(1085, 'Oracle PL/SQL '),
(1086, 'oracle performance tuning '),
(1087, 'Oracle Patching '),
(1088, 'Orace OBIEE Plus '),
(1089, 'Oracle Java EE '),
(1090, 'Oracle Hyperion Planning '),
(1091, 'Oracle Global Trade Management '),
(1092, 'Oracle Fusion Middleware '),
(1093, 'Oracle Fusion Applications '),
(1094, 'Oracle Forms '),
(1095, 'Oracle Financials Applications '),
(1096, 'Oracle Enterprise Service Bus'),
(1097, 'Oracle Endeca '),
(1098, 'Oracle E-Business Suite '),
(1099, 'Oracle Demantra '),
(1100, 'Oracle Database Administration '),
(1101, 'Oracle database '),
(1102, 'Oracle Data Guard '),
(1103, 'Oracle CRM On Demand '),
(1104, 'Oracle Complex Events Processing '),
(1105, 'Oracle BRM '),
(1106, 'Oracle ATG Web Commerce '),
(1107, 'Oracle Application Server '),
(1108, 'Oracle Application Framework '),
(1109, 'Oracle APEX '),
(1110, 'Oracle Agile '),
(1111, 'Oracle Administration '),
(1112, 'Optimizepress '),
(1113, 'Optimizely '),
(1114, 'Operations Research '),
(1115, 'Operations Management '),
(1116, 'Operating Systems Development '),
(1117, 'OpenX '),
(1118, 'OpenWrt '),
(1119, 'OpenVZ '),
(1120, 'OpenVPN '),
(1121, 'OpenVMS '),
(1122, 'OpenVBX '),
(1123, 'OpenType '),
(1124, 'OpenTok Development '),
(1125, 'opentext '),
(1126, 'openSUSE '),
(1127, 'OpenStack '),
(1128, 'OpenSocial '),
(1129, 'OpenSIPS '),
(1130, 'OpenLayers '),
(1131, 'OpenGL ES '),
(1132, 'OpenGL '),
(1133, 'Openflow '),
(1134, 'OpenERP Development '),
(1135, 'OpenERP Administration '),
(1136, 'openemm '),
(1137, 'OpenCV '),
(1138, 'OpenCL '),
(1139, 'OpenCart '),
(1140, 'OpenBSD '),
(1141, 'OpenBravo PoS '),
(1142, 'OpenACS '),
(1143, 'OpenOffice '),
(1144, 'ooVoo Development '),
(1145, 'OOPS '),
(1146, 'Object Oriented Programming (OOP) '),
(1147, 'Online Writing '),
(1148, 'Online Help '),
(1149, 'Online Community Management '),
(1150, 'On-Page Optimization '),
(1151, 'OmniGraffle '),
(1152, 'Online Transaction Processing (OLTP) '),
(1153, 'OLE Automation '),
(1154, 'OLAP '),
(1155, 'Oil painting '),
(1156, 'OGRE '),
(1157, 'Office Administration '),
(1158, 'Off-page Optimization '),
(1159, 'Odoo '),
(1160, 'odesk api '),
(1161, 'ODBC '),
(1162, 'OCX '),
(1163, 'GNU Octave '),
(1164, 'OCR Tesseract '),
(1165, 'OCR algorithms '),
(1166, 'Occupational Health '),
(1167, 'OCaml '),
(1168, 'Objective-J '),
(1169, 'Objective-C '),
(1170, 'Object Pascal '),
(1171, 'Object Oriented PHP '),
(1172, 'Object oriented design '),
(1173, 'OAuth '),
(1174, 'NVIDIA Mental Ray '),
(1175, 'Nutrition '),
(1176, 'Nursing '),
(1177, 'NUKE '),
(1178, 'Nuendo '),
(1179, 'nservicebus '),
(1180, 'Novell NetWare '),
(1181, 'Notary public '),
(1182, 'NoSQL '),
(1183, 'Norwegian '),
(1184, 'NopCommerce '),
(1185, 'Non-linear editing system '),
(1186, 'Non-Fiction Writing '),
(1187, 'Non-disclosure Agreements '),
(1188, 'Node.js '),
(1189, 'Ning Marketing '),
(1190, 'Ning Development '),
(1191, 'NI Multisim '),
(1192, 'NHibernate '),
(1193, 'Nginx '),
(1194, 'ngcore '),
(1195, 'NFS Implementation '),
(1196, 'NFS Administration '),
(1197, 'Nextengine '),
(1198, 'Next Limit RealFlow'),
(1199, 'Next Limit Maxwell Render '),
(1200, 'Nexmo '),
(1201, 'Newsletter Writing '),
(1202, 'News Writing Style '),
(1203, 'Neuro-linguistic programming '),
(1204, 'Network Security '),
(1205, 'Network Programming '),
(1206, 'Network Planning '),
(1207, 'Network Pentesting '),
(1208, 'Network Monitoring '),
(1209, 'Network Engineering '),
(1210, 'Network Design '),
(1211, 'Network Analysis '),
(1212, 'Network Administration '),
(1213, 'NetSuite Development '),
(1214, 'NetSuite Administration '),
(1215, 'Netfabb '),
(1216, 'Netezza '),
(1217, 'NetBSD '),
(1218, 'NetBeans '),
(1219, 'Neo4j '),
(1220, 'Negotiation '),
(1221, 'Navigation System Implementation '),
(1222, 'Navigation System Design'),
(1223, 'Natural language processing '),
(1224, 'Narration '),
(1225, 'Nanotechnology '),
(1226, 'Nagios '),
(1227, 'n2cms '),
(1228, 'MySQL Programming '),
(1229, 'MySQL Administration '),
(1230, 'Myspace Marketing '),
(1231, 'MySpace API '),
(1232, 'MYOB Administration '),
(1233, 'MXML '),
(1234, 'Model View ViewModel (MVVT) '),
(1235, 'MVC Framework '),
(1236, 'Music Producing '),
(1237, 'Music engraving '),
(1238, 'Music Dubbing '),
(1239, 'Musical composition '),
(1240, 'Music Arrangement '),
(1241, 'Music'),
(1242, 'Murals '),
(1243, 'Munin '),
(1244, 'Multithreaded Programming '),
(1245, 'Multi-touch Hardware Programming '),
(1246, 'Multi-touch Hardware Development '),
(1247, 'Multi Level Marketing (MLM) '),
(1248, 'mtek '),
(1249, 'Microsoft adCenter '),
(1250, 'Microsoft Visual Studio LightSwitch '),
(1251, 'MS Office 365 '),
(1252, 'MS-DOS Administration '),
(1253, 'Multi Router Traffic Grapher (MRTG) '),
(1254, 'MQL 4'),
(1255, 'Multiprotocol Label Switching (MPLS) '),
(1256, 'MPD '),
(1257, 'Mozenda Scraper '),
(1258, 'MovableType '),
(1259, 'Motivational Speaking '),
(1260, 'Motion graphics '),
(1261, 'Microsoft Office SharePoint Server '),
(1262, 'morae '),
(1263, 'Mootools '),
(1264, 'MoonScript '),
(1265, 'Moonfruit SiteMaker '),
(1266, 'Moodle '),
(1267, 'Mono '),
(1268, 'Mongrel '),
(1269, 'MongoDB '),
(1270, 'Molecule Editors '),
(1271, 'MODx '),
(1272, 'Modul8 '),
(1273, 'Model Sheet Drawing '),
(1274, 'Model Sheet Design '),
(1275, 'Mockito '),
(1276, 'Mocha '),
(1277, 'Mobile UI Design '),
(1278, 'Mobile Programming '),
(1279, 'Mobile Development Framework '),
(1280, 'Mobile App Testing '),
(1281, 'Mobile App Development '),
(1282, 'Mobile Advertising '),
(1283, 'mobi '),
(1284, 'MLS Consulting '),
(1285, 'Mixpanel '),
(1286, 'Miva Merchant '),
(1287, 'Minitab '),
(1288, 'Mining Engineering '),
(1289, 'Minecraft '),
(1290, 'MindTouch '),
(1291, 'Mind Mapping '),
(1292, 'Mikrotik RouterOS '),
(1293, 'Mikrotik RouterBOARD '),
(1294, 'MIDI '),
(1295, 'MicroStrategy '),
(1296, 'Microstock Photography '),
(1297, 'Microstration v8 '),
(1298, 'Microsoft Word '),
(1299, 'Microsoft Windows Server '),
(1300, 'Microsoft Windows Powershell '),
(1301, 'Microsoft Visual Studio '),
(1302, 'Microsoft Visual C++ '),
(1303, 'Visual Basic '),
(1304, 'Microsoft Visio '),
(1305, 'Microsoft Virtual Server '),
(1306, 'Microsoft Transaction Server (MTS) '),
(1307, 'Microsoft SQL SSRS '),
(1308, 'Microsoft SQL SSAS '),
(1309, 'Microsoft SQL Server Service Broker '),
(1310, 'Microsoft SQL Server Notification Services '),
(1311, 'Microsoft SQL Server Programming '),
(1312, 'Microsoft SQL Server Administration '),
(1313, 'Microsoft SQL CE '),
(1314, 'Microsoft Small Business Server Administration '),
(1315, 'Microsoft Silverlight '),
(1316, 'Microsoft SharePoint Development '),
(1317, 'Microsoft SharePoint Administration '),
(1318, 'Microsoft Server '),
(1319, 'Microsoft SCVMM '),
(1320, 'Microsoft SCCM '),
(1321, 'Microsoft Publisher '),
(1322, 'Microsoft Project '),
(1323, 'Microsoft PowerPoint '),
(1324, 'Microsoft Outlook Development '),
(1325, 'Microsoft Outlook '),
(1326, 'Microsoft OneNote '),
(1327, 'Microsoft Office '),
(1328, 'Microsoft Message Queue Server (MMSQ) '),
(1329, 'Microsoft MapPoint '),
(1330, 'Microsoft Lync Server '),
(1331, 'Microsoft Kinect Development '),
(1332, 'Microsoft Infopath '),
(1333, 'Microsoft Hyper-V Server '),
(1334, 'Microsoft Hyper V '),
(1335, 'Microsoft Dynamics GP '),
(1336, 'Microsoft Expression Studio '),
(1337, 'Microsoft Exchange Server '),
(1338, 'Microsoft Excel PowerPivot '),
(1339, 'Microsoft Excel '),
(1340, 'Microsoft Entity Framework '),
(1341, 'Microsoft Dynamics ERP '),
(1342, 'Microsoft Dynamics Development '),
(1343, 'Microsoft Dynamics CRM '),
(1344, 'Microsoft Dynamics Administration '),
(1345, 'Windows Media Connect '),
(1346, 'Microsoft Commerce Server '),
(1347, 'Microsoft Certified Information Technology Professional (MCITP) '),
(1348, 'Microsoft Business Intelligence Studio '),
(1349, 'Microsoft Active Directory '),
(1350, 'Microsoft Access Programming '),
(1351, 'Microsoft Access Administration '),
(1352, 'Microcontroller Programming '),
(1353, 'Microcontroller Design '),
(1354, 'Microsoft Foundation Classes (MFC) '),
(1355, 'Methods Engineering '),
(1356, 'Meteor '),
(1357, 'MetaTrader 4 (MT4) '),
(1358, 'Merise '),
(1359, 'Mercurial '),
(1360, 'MerchantRun GlobalLink '),
(1361, 'MerchantRun '),
(1362, 'Menu Design '),
(1363, 'Memcached '),
(1364, 'Meego Development '),
(1365, 'Medical Writing '),
(1366, 'Medical Translation '),
(1367, 'Medical transcription '),
(1368, 'Medical Records Research '),
(1369, 'Medical Law '),
(1370, 'Medical Informatics '),
(1371, 'Medical Imaging '),
(1372, 'Medical Illustration '),
(1373, 'Medical Billing and Coding '),
(1374, 'MediaWiki '),
(1375, 'Media relations '),
(1376, 'Media buying '),
(1377, 'Mechatronics '),
(1378, 'Mechanical Engineering '),
(1379, 'Mechanical Design '),
(1380, 'MCP '),
(1381, 'Multi-Criteria Decision Analysis '),
(1382, 'McAfee VirusScan '),
(1383, 'McAfee SAAS '),
(1384, 'McAfee ePolicy Orchestrator '),
(1385, 'Maxon Cinema 4D '),
(1386, 'Maxon BodyPaint 3D '),
(1387, 'Max '),
(1388, 'Apache Maven '),
(1389, 'MATLAB'),
(1390, 'Mathematics '),
(1391, 'Mathematica '),
(1392, 'MathCad '),
(1393, 'Materials Engineering '),
(1394, 'Mastercam '),
(1395, 'Master Production Schedule '),
(1396, 'Martial Arts '),
(1397, 'Marriage Counseling '),
(1398, 'Marketo '),
(1399, 'Marketing strategy '),
(1400, 'Marketing Cloud Marketing '),
(1401, 'Marketing Cloud Development '),
(1402, 'Marketing Cloud Administration '),
(1403, 'Marketing Automation '),
(1404, 'Market research '),
(1405, 'Marathi '),
(1406, 'MapReduce '),
(1407, 'Mapr '),
(1408, 'Maple '),
(1409, 'Mapinfo '),
(1410, 'MAPI '),
(1411, 'Manufacturing Design '),
(1412, 'Manufacturing '),
(1413, 'Manual Test Execution '),
(1414, 'Mantis '),
(1415, 'Manga '),
(1416, 'Mandarin '),
(1417, 'Management Skills '),
(1418, 'Management Development '),
(1419, 'Management Consulting '),
(1420, 'ManageEngine '),
(1421, 'Mambo '),
(1422, 'Malware '),
(1423, 'Malayalam '),
(1424, 'Malay '),
(1425, 'Makerbot '),
(1426, 'Make Build Script '),
(1427, 'MailEnable '),
(1428, 'mailchimp '),
(1429, 'Mail Server Implementation '),
(1430, 'Mail Merge '),
(1431, 'Magic Tricks '),
(1432, 'Magic Bullet Looks '),
(1433, 'Magic Bullet Colorista '),
(1434, 'Magento '),
(1435, 'Magazine Layout '),
(1436, 'Maemo '),
(1437, 'MadCap Software '),
(1438, 'Machine learning '),
(1439, 'Machine Design '),
(1440, 'Macedonian '),
(1441, 'Macaw '),
(1442, 'Mac OSX Administration '),
(1443, 'Mac OS App Development '),
(1444, 'm0n0wall '),
(1445, 'Lyrics Writing '),
(1446, 'Lucene Search '),
(1447, 'Lua '),
(1448, 'Loyalty Marketing '),
(1449, 'Lotus Notes '),
(1450, 'IBM Lotus Domino '),
(1451, 'Lotus Approach '),
(1452, 'Logo Design '),
(1453, 'LogMeIn Rescue '),
(1454, 'LogMeIn Hamachi '),
(1455, 'LogiXML '),
(1456, 'Logistics & Shipping '),
(1457, 'Logic Pro '),
(1458, 'Log4j '),
(1459, 'Localization '),
(1460, 'LoadRunner '),
(1461, 'Load testing '),
(1462, 'Load Balancing '),
(1463, 'Learning Management System (LMS) '),
(1464, 'LivePerson '),
(1465, 'Live Chat Software '),
(1466, 'Live Chat Operator '),
(1467, 'Litigation '),
(1468, 'Lithuanian '),
(1469, 'Lithium Framework '),
(1470, 'Literature Review '),
(1471, 'Lisp '),
(1472, 'LiquidPlanner '),
(1473, 'Linux System Administration '),
(1474, 'Slackware Linux '),
(1475, 'linq to sql '),
(1476, 'linq to entities '),
(1477, 'LINQ '),
(1478, 'Linkvana '),
(1479, 'LinkedIn Recruiting '),
(1480, 'LinkedIn Development '),
(1481, 'Link Wheel '),
(1482, 'Link Building '),
(1483, 'Linguistics '),
(1484, 'lingo '),
(1485, 'Linear Programming '),
(1486, 'LimeSurvey '),
(1487, 'LimeJS '),
(1488, 'Lightworks '),
(1489, 'Lightwave 3d '),
(1490, 'Lighttpd '),
(1491, 'Lighting Design '),
(1492, 'Liferay '),
(1493, 'Licensing '),
(1494, 'LibreOffice '),
(1495, 'libGDX '),
(1496, 'libcurl '),
(1497, 'LexisNexis Practice Advisor '),
(1498, 'LexisNexis Accurint '),
(1499, 'Level Design '),
(1500, 'Lettering '),
(1501, 'Letter Writing '),
(1502, 'Lesson Plan Writing '),
(1503, 'LESS '),
(1504, 'Leptonica '),
(1505, 'LemonStand '),
(1506, 'Legal writing '),
(1507, 'Legal Translation '),
(1508, 'Legal Transcription '),
(1509, 'Legal research '),
(1510, 'Legal Consulting '),
(1511, 'Lectora '),
(1512, 'Lean Consulting '),
(1513, 'Lead generation '),
(1514, 'LDAP '),
(1515, 'Latvian '),
(1516, 'LaTeX '),
(1517, 'Lasso '),
(1518, 'laser engraving '),
(1519, 'Laravel Framework '),
(1520, 'Filipino - Visayan Dialect '),
(1521, 'Landscape design '),
(1522, 'Landing Pages '),
(1523, 'LANDesk '),
(1524, 'LAN Implementation '),
(1525, 'LAN Administration '),
(1526, 'LAMP Administration '),
(1527, 'LabWindows/CVI '),
(1528, 'LabVIEW '),
(1529, 'Label and Package Design '),
(1530, 'Kyrgyz '),
(1531, 'KVM Virtualization '),
(1532, 'KVM Switches '),
(1533, 'KVM '),
(1534, 'Korn shell '),
(1535, 'Korean '),
(1536, 'Kohana '),
(1537, 'KnockoutJS '),
(1538, 'KiXtart '),
(1539, 'KitchenDraw '),
(1540, 'KISSMetrics '),
(1541, 'Kindle Fire Apps '),
(1542, 'Kindle Fire '),
(1543, 'Kindle App Development '),
(1544, 'Kickstarter Marketing '),
(1545, 'Keynote '),
(1546, 'Keyboarding '),
(1547, 'Key/Value Stores '),
(1548, 'Kernel '),
(1549, 'Kerkythea '),
(1550, 'Kerberos '),
(1551, 'Kentico CMS '),
(1552, 'Kendo UI '),
(1553, 'Kannada '),
(1554, 'Kaltura '),
(1555, 'Kajabi '),
(1556, 'Kaizen '),
(1557, 'Junos '),
(1558, 'JUnit '),
(1559, 'Juniper Routers '),
(1560, 'JSTL '),
(1561, 'JSP '),
(1562, 'json '),
(1563, 'Jsharp '),
(1564, 'JavaServer Faces (JSF) '),
(1565, 'JQuery Mobile '),
(1566, 'jQuery '),
(1567, 'JPA '),
(1568, 'Joomla Migration '),
(1569, 'Joomla Fabrik '),
(1570, 'Joomla! '),
(1571, 'JOnAS '),
(1572, 'JomSocial Development '),
(1573, 'Job Description Writing '),
(1574, 'Job Definition Format (JDF) '),
(1575, 'Job Costing '),
(1576, 'JNDI '),
(1577, 'JNCIA-Junos '),
(1578, 'JMS '),
(1579, 'JMeter '),
(1580, 'Jinja2 '),
(1581, 'Jingle Program Production '),
(1582, 'Jimdo '),
(1583, 'Jig and Fixture Design '),
(1584, 'JFC '),
(1585, 'Jewish Theology '),
(1586, 'Jewelry Design '),
(1587, 'JetPack '),
(1588, 'Jenkins '),
(1589, 'JDeveloper '),
(1590, 'JDBC '),
(1591, 'Oracle JD Edwards EnterpriseOne '),
(1592, 'JCL '),
(1593, 'JBPM '),
(1594, 'JBoss Seam '),
(1595, 'JBoss '),
(1596, 'JAXB '),
(1597, 'JavaScript '),
(1598, 'Javanese '),
(1599, 'JavaFX '),
(1600, 'Java Servlets Development '),
(1601, 'Java ME '),
(1602, 'Java EE '),
(1603, 'Java '),
(1604, 'JasperReports '),
(1605, 'Japanese '),
(1606, 'J2SE '),
(1607, 'J2ME '),
(1608, 'J2EE '),
(1609, 'IT Service Management '),
(1610, 'ITK '),
(1611, 'ITIL '),
(1612, 'iTextSharp '),
(1613, 'Italian '),
(1614, 'IT Management '),
(1615, 'Issue Tracking Systems '),
(1616, 'ISO 9001 '),
(1617, 'ISO 9000 '),
(1618, 'Islamic theology '),
(1619, 'Islamic Banking '),
(1620, 'ISEB '),
(1621, 'ISA Server '),
(1622, 'IRM Income Tax Audits '),
(1623, 'IronPython '),
(1624, 'ireport '),
(1625, 'IRC Server Administration '),
(1626, 'Iptables '),
(1627, 'IPsec '),
(1628, 'IPMI '),
(1629, 'iPhone UI Design '),
(1630, 'iPhone App Development '),
(1631, 'iPad UI Design '),
(1632, 'iPad App Development '),
(1633, 'iOS Development '),
(1634, 'Ionic Framework '),
(1635, 'Invoicing '),
(1636, 'Invitation Design '),
(1637, 'Investment Research '),
(1638, 'Investigative Reporting '),
(1639, 'Inventory Management '),
(1640, 'Intuit Quicken '),
(1641, 'Intuit QuickBooks '),
(1642, 'Intuit Lacerte Tax '),
(1643, 'Intranet Implementation '),
(1644, 'Intranet Architecture '),
(1645, 'Interviewing '),
(1646, 'Intersystems Cache '),
(1647, 'interspire '),
(1648, 'Interprise Suite ERP '),
(1649, 'internet surveys '),
(1650, 'Internet Security '),
(1651, 'Internet research '),
(1652, 'Internet Marketing '),
(1653, 'International taxation '),
(1654, 'International Law '),
(1655, 'Internal Auditing '),
(1656, 'Interior design '),
(1657, 'InterBase '),
(1658, 'Interactive Voice Response '),
(1659, 'Interaction design '),
(1660, 'IntelliJ IDEA '),
(1661, 'IntelliCred '),
(1662, 'Intellectual Property Law '),
(1663, 'Integrated Circuits '),
(1664, 'Insurance Consulting '),
(1665, 'Instrumentation '),
(1666, 'Instructional design '),
(1667, 'InstallShield '),
(1668, 'Installer Development '),
(1669, 'Instagram Marketing '),
(1670, 'Instagram API '),
(1671, 'Inno Setup '),
(1672, 'Inkscape '),
(1673, 'ingress filtering '),
(1674, 'Ingress '),
(1675, 'InfusionSoft Marketing '),
(1676, 'Infusionsoft Development '),
(1677, 'Infusionsoft Administration '),
(1678, 'Infragistics '),
(1679, 'Informix Programming '),
(1680, 'Informix Administration '),
(1681, 'informatique '),
(1682, 'Information Security '),
(1683, 'Information Management '),
(1684, 'Information design '),
(1685, 'Information Builders WebFOCUS '),
(1686, 'Information Architecture '),
(1687, 'Informatica '),
(1688, 'Infographics '),
(1689, 'Industrial Engineering '),
(1690, 'Industrial design '),
(1691, 'Indonesian '),
(1692, 'Indexing '),
(1693, 'Inbound marketing '),
(1694, 'In-Game Advertising '),
(1695, 'IMS '),
(1696, 'Immigration Law '),
(1697, 'Imaging '),
(1698, 'Image Processing'),
(1699, 'Image Editing '),
(1700, 'IMacros'),
(1701, 'Illustration'),
(1702, 'Internet Information Services (IIS) '),
(1703, 'ifbyphone API Development '),
(1704, 'ifbyphone Administration '),
(1705, 'IDRISI '),
(1706, 'IdeaBlade DevForce '),
(1707, 'IContact '),
(1708, 'Icon Design '),
(1709, 'IClone '),
(1710, 'Icefaces '),
(1711, 'ICD Coding '),
(1712, 'IBM z/VM Administration '),
(1713, 'IBM System x '),
(1714, 'IBM WebSphere '),
(1715, 'IBM Watson '),
(1716, 'IBM Tivoli Framework '),
(1717, 'IBM System Storage '),
(1718, 'IBM SPSS '),
(1719, 'IBM SmartCloud '),
(1720, 'IBM SameTime '),
(1721, 'IBM System p '),
(1722, 'IBM PowerPC Programming '),
(1723, 'IBM Lotus Symphony '),
(1724, 'IBM Lotus Notes Traveler '),
(1725, 'IBM DB2 Programming '),
(1726, 'IBM DB2 Administration '),
(1727, 'IBATIS '),
(1728, 'Hypnosis '),
(1729, 'Hybris '),
(1730, 'Hardware Prototyping '),
(1731, 'HVAC System Design '),
(1732, 'Hungarian '),
(1733, 'Humor Writing '),
(1734, 'Human Sciences '),
(1735, 'Human Resource Management '),
(1736, 'HubSpot '),
(1737, 'HTML5 '),
(1738, 'HTML '),
(1739, 'HRM '),
(1740, 'Human Resource Information Systems '),
(1741, 'HR Benefits '),
(1742, 'HP-UX Administration '),
(1743, 'HP-UX '),
(1744, 'HP Quality Center '),
(1745, 'HP QuickTest Professional (HPQTP) '),
(1746, 'HP Network Management Center (HPNMC) '),
(1747, 'HP Cloud '),
(1748, 'Houdini '),
(1749, 'HotDog '),
(1750, 'Hospitality '),
(1751, 'HootSuite '),
(1752, 'Home Design '),
(1753, 'Home Automation '),
(1754, 'History '),
(1755, 'Hindi '),
(1756, 'Highcharts '),
(1757, 'Hibernate '),
(1758, 'hi5 '),
(1759, 'Heroku '),
(1760, 'Helpdesk '),
(1761, 'Hebrew '),
(1762, 'Health Level 7 '),
(1763, 'headus UVLayout '),
(1764, 'HBase '),
(1765, 'HaXe '),
(1766, 'Haitian Creole '),
(1767, 'Haskell '),
(1768, 'Hardware Troubleshooting '),
(1769, 'haproxy '),
(1770, 'HAML '),
(1771, 'Hadoop '),
(1772, 'Fuzzing '),
(1773, 'Fusebox '),
(1774, 'Fundraising '),
(1775, 'Functional testing '),
(1776, 'Full-text Search Engines '),
(1777, 'fuel cms '),
(1778, 'FTP '),
(1779, 'Microsoft FrontPage '),
(1780, 'Frontend Development '),
(1781, 'Friendster '),
(1782, 'French '),
(1783, 'Freeswitch '),
(1784, 'FreePBX '),
(1785, 'FreeMarker '),
(1786, 'Freelance Marketing '),
(1787, 'FreeBSD '),
(1788, 'Fraud Mitigation '),
(1789, 'Fraud Analysis '),
(1790, 'Franchise Consulting '),
(1791, 'Field-Programmable Gate Array (FPGA) '),
(1792, 'FoxPro Programming '),
(1793, 'FoxPro Administration '),
(1794, 'FourSquare Development '),
(1795, 'Forum Posting '),
(1796, 'Forum Moderation '),
(1797, 'Forum Development '),
(1798, 'Fortran '),
(1799, 'Format & Layout '),
(1800, 'Form-Z '),
(1801, 'Foreign Exchange Trading '),
(1802, 'FontForge '),
(1803, 'Font Development '),
(1804, 'Flyer Design '),
(1805, 'Flowcharts '),
(1806, 'Flask '),
(1807, 'Flash 3D '),
(1808, 'FL Studio '),
(1809, 'Five9 '),
(1810, 'First aid '),
(1811, 'Firewall '),
(1812, 'Firefox Plugin Development '),
(1813, 'Firebird '),
(1814, 'Fire Protection Engineering '),
(1815, 'Fire OS Development '),
(1816, 'Finnish '),
(1817, 'Finite Element Analysis '),
(1818, 'Financial Writing '),
(1819, 'Financial Reporting '),
(1820, 'Financial Prospectus Writing '),
(1821, 'Financial modeling '),
(1822, 'Financial Management '),
(1823, 'Financial Forecasting '),
(1824, 'Financial analysis '),
(1825, 'Financial Accounting '),
(1826, 'Finale '),
(1827, 'Final Draft '),
(1828, 'Final Cut Pro X '),
(1829, 'Final Cut Pro '),
(1830, 'Film Production '),
(1831, 'Film Dubbing '),
(1832, 'Film Direction '),
(1833, 'Film criticism '),
(1834, 'Filipino '),
(1835, 'Filing '),
(1836, 'FileMaker '),
(1837, 'Field-Map '),
(1838, 'Fiction Writing '),
(1839, 'Fiber Optics '),
(1840, 'FFmpeg '),
(1841, 'Fetchmail '),
(1842, 'Fedora '),
(1843, 'Federal Acquisition Regulations '),
(1844, 'Feature Writing '),
(1845, 'FBML '),
(1846, 'Facebook Javascript (FBJS) '),
(1847, 'Fax '),
(1848, 'Fashion Modeling '),
(1849, 'Fashion design '),
(1850, 'Family Law '),
(1851, 'Fact Checking '),
(1852, 'Facelets '),
(1853, 'Facebook Marketing '),
(1854, 'facebook games development '),
(1855, 'Facebook Development '),
(1856, 'FAAC '),
(1857, 'F# '),
(1858, 'eZ Publish '),
(1859, 'Eyeon Fusion '),
(1860, 'Ext JS '),
(1861, 'Expression Engine '),
(1862, 'Express Scribe '),
(1863, 'Exim '),
(1864, 'Excel VBA '),
(1865, 'ExactTarget '),
(1866, 'evolus pencil '),
(1867, 'EViews '),
(1868, 'Event planning '),
(1869, 'Event Management '),
(1870, 'Eucalyptus Cloud '),
(1871, 'Etsy Administration '),
(1872, '\"Extract, Transform and Load (ETL)\" '),
(1873, 'ETABS '),
(1874, 'Essbase '),
(1875, 'Essay Writing '),
(1876, 'ESL Teaching '),
(1877, 'Erwin '),
(1878, 'Enterprise Resource Planning (ERP) '),
(1879, 'Erotica Writing '),
(1880, 'Erlang '),
(1881, 'ERDAS IMAGINE '),
(1882, 'Environmental science '),
(1883, 'Environmental Law '),
(1884, 'Entrepreneurship '),
(1885, 'Entity Framework '),
(1886, 'ADO.NET Entity Framework '),
(1887, 'english tutoring '),
(1888, 'English Spelling '),
(1889, 'English Punctuation '),
(1890, 'English Proofreading '),
(1891, 'English Grammar '),
(1892, 'English '),
(1893, 'Engineering drawing '),
(1894, 'Engineering Design '),
(1895, 'Energy Engineering '),
(1896, 'Employment Law '),
(1897, 'EMC Symmetrix '),
(1898, 'embroidery digitization '),
(1899, 'Embroidery '),
(1900, 'Ember.js '),
(1901, 'Embedded Systems '),
(1902, 'Embedded Linux '),
(1903, 'Embedded C '),
(1904, 'Email Technical Support '),
(1905, 'Email Marketing '),
(1906, 'Email Handling '),
(1907, 'Email Etiquette '),
(1908, 'Email Deliverability '),
(1909, 'Eloqua '),
(1910, 'Elliptic Curve Cryptography (ECC) '),
(1911, 'Elgg '),
(1912, 'Electronics '),
(1913, 'Electronic Workbench '),
(1914, 'Electronic funds transfer '),
(1915, 'Electronic Design '),
(1916, 'Electrical engineering '),
(1917, 'Electrical Drawing '),
(1918, 'Elastix '),
(1919, 'Elasticsearch '),
(1920, 'Elance '),
(1921, 'Ektron '),
(1922, 'Ekiga '),
(1923, 'Enterprise JavaBeans (EJB) '),
(1924, 'Edufire '),
(1925, 'Education Technology '),
(1926, 'Edius '),
(1927, 'Editorial Writing '),
(1928, 'Editing '),
(1929, 'Electronic data interchange (EDI) '),
(1930, 'EDGE '),
(1931, 'Economics '),
(1932, 'Economic Analysis '),
(1933, 'Econometrics '),
(1934, 'Ecommerce Platform Development '),
(1935, 'ECMAScript '),
(1936, 'Eclipse '),
(1937, 'eBooks '),
(1938, 'ebook Writing '),
(1939, 'eBook Design '),
(1940, 'eBay Web Services '),
(1941, 'eBay Motors '),
(1942, 'eBay Marketing '),
(1943, 'eBay Listing/Writing '),
(1944, 'eBay API '),
(1945, 'Eagle '),
(1946, 'E4X '),
(1947, 'ePub '),
(1948, 'eLearning '),
(1949, 'EHealth '),
(1950, 'Dwolla API '),
(1951, 'DVD Studio Pro '),
(1952, 'dvd mastering '),
(1953, 'Dutch '),
(1954, 'Dundas Chart Controls '),
(1955, 'DTS '),
(1956, 'DSL Troubleshooting '),
(1957, 'Drupal '),
(1958, 'Drums '),
(1959, 'Dropbox API '),
(1960, 'Drop Shipping '),
(1961, 'Drones '),
(1962, 'Driving '),
(1963, 'Device Driver Development '),
(1964, 'Drawing '),
(1965, 'Drafting '),
(1966, 'DotNetNuke '),
(1967, 'DOS '),
(1968, 'Domain Migration '),
(1969, 'Dojo Toolkit '),
(1970, 'Document review '),
(1971, 'Document Object Model '),
(1972, 'Document Conversion '),
(1973, 'Document Control '),
(1974, 'Doctrine ORM '),
(1975, 'Docker '),
(1976, 'DocBook '),
(1977, 'DNSsec '),
(1978, 'DNS '),
(1979, 'dmaic '),
(1980, 'Django '),
(1981, 'DJing '),
(1982, 'Distributed computing '),
(1983, 'Distance Education '),
(1984, 'Display Ads '),
(1985, 'Disaster recovery '),
(1986, 'DirectX '),
(1987, 'DirectShow '),
(1988, 'Directory Submission '),
(1989, 'Direct marketing '),
(1990, 'Dinamica Ego '),
(1991, 'Dimdim Development '),
(1992, 'Digital Signal Processing '),
(1993, 'Digital Sculpting '),
(1994, 'Digital scrapbooking '),
(1995, 'Digital Photography '),
(1996, 'Digital painting '),
(1997, 'Digital Ocean '),
(1998, 'Digital Mapping ');
INSERT INTO `skills` (`id`, `name`) VALUES
(1999, 'Digital Engineering '),
(2000, 'Digital Electronics '),
(2001, 'Digital Access Pass '),
(2002, 'Diffbot '),
(2003, 'Dietetics '),
(2004, 'Dialux '),
(2005, 'DHTML '),
(2006, 'DHCP '),
(2007, 'DevOps '),
(2008, 'DevExpress '),
(2009, 'DevExpress Reporting '),
(2010, 'Desktop Support '),
(2011, 'Desktop Publishing '),
(2012, 'Desktop Applications '),
(2013, 'Desk.com Development '),
(2014, 'Desk.com Administration '),
(2015, 'Derivatives '),
(2016, 'Dental Technology '),
(2017, 'Demandware '),
(2018, 'Delphi '),
(2019, 'DELFTship '),
(2020, 'Deja Vu '),
(2021, 'Defect Tracking '),
(2022, 'Debian OS '),
(2023, 'DCOM '),
(2024, 'DBMS '),
(2025, 'dBase Programming '),
(2026, 'dBase Administration '),
(2027, 'IBM InfoSphere DataStage '),
(2028, 'DataLife Engine '),
(2029, 'Database testing '),
(2030, 'database programming '),
(2031, 'Database Modeling '),
(2032, 'database management '),
(2033, 'Database design '),
(2034, 'Database Cataloguing '),
(2035, 'Database Caching '),
(2036, 'Database Administration '),
(2037, 'Data Warehousing '),
(2038, 'Data Visualization '),
(2039, 'Data Sufficiency '),
(2040, 'Data Structures '),
(2041, 'Data Sheet Writing '),
(2042, 'Data scraping '),
(2043, 'Data Science '),
(2044, 'Data Recovery '),
(2045, 'Data Protection '),
(2046, 'Data Modeling '),
(2047, 'Data mining '),
(2048, 'Data Logistics '),
(2049, 'Data Interpretation '),
(2050, 'Data Ingestion '),
(2051, 'Data Entry '),
(2052, 'Data Engineering '),
(2053, 'Data Encoding '),
(2054, 'Data Cleansing '),
(2055, 'Data Center Operations '),
(2056, 'Data Backup '),
(2057, 'Data Analytics '),
(2058, 'DART '),
(2059, 'Danish '),
(2060, 'Dancing '),
(2061, 'DaVinci Resolve '),
(2062, 'd3.js '),
(2063, 'D Programming Language '),
(2064, 'Czech '),
(2065, 'CVS '),
(2066, 'Customer support '),
(2067, 'Customer service '),
(2068, 'Custom CMS '),
(2069, 'Curriculum Development '),
(2070, 'CURL '),
(2071, 'CUDA '),
(2072, 'Cucumber '),
(2073, 'Cubecart '),
(2074, 'CSU/DSU '),
(2075, 'CSS3 '),
(2076, 'CSS'),
(2077, 'CS-Cart '),
(2078, 'SAP Crystal Reports '),
(2079, 'Cryptography '),
(2080, 'Crowdfunding '),
(2081, 'Croatian '),
(2082, 'CRM '),
(2083, 'Criminal Law '),
(2084, 'CRE Loaded '),
(2085, 'Creative writing '),
(2086, 'Creative & Talent '),
(2087, 'Web Crawling '),
(2088, 'CPU Design '),
(2089, 'CppUnit '),
(2090, 'CPanel '),
(2091, 'Covers & Packaging '),
(2092, 'Cover Letter Writing '),
(2093, 'Cover Design '),
(2094, 'Counseling Psychology '),
(2095, 'CouchDB '),
(2096, 'Cost accounting '),
(2097, 'Cosmos OS '),
(2098, 'COSMO-RS Chemical Engineering '),
(2099, 'Corporate Taxes '),
(2100, 'Corporate Strategy '),
(2101, 'Corporate Law '),
(2102, 'Corporate Finance '),
(2103, 'Corporate Brand Identity '),
(2104, 'Corona '),
(2105, 'Corel Ventura '),
(2106, 'Corel Painter '),
(2107, 'Corel Paint Shop Pro '),
(2108, 'CorelDRAW '),
(2109, 'Core Java '),
(2110, 'CORBA '),
(2111, 'Copywriting '),
(2112, 'Copyright '),
(2113, 'Copy editing '),
(2114, 'Cooking '),
(2115, 'Conversion Rate Optimization '),
(2116, 'Contract Manufacturing '),
(2117, 'Contract Law '),
(2118, 'Contract Drafting '),
(2119, 'Continuous Integration '),
(2120, 'Content Writing '),
(2121, 'Content Moderation '),
(2122, 'Content Management System '),
(2123, 'Contao CMS '),
(2124, 'Consumer Protection '),
(2125, 'Construction Monitoring '),
(2126, 'Construction '),
(2127, 'Constant Contact '),
(2128, 'Conflict Resolution '),
(2129, 'Concrete5 CMS '),
(2130, 'ConceptShare Development '),
(2131, 'Concept Software InPage '),
(2132, 'Concept Design '),
(2133, 'Concept Artistry '),
(2134, 'COMSOL Multiphysics '),
(2135, 'comsat '),
(2136, 'Computer vision '),
(2137, 'Computer Skills '),
(2138, 'Computer Repair '),
(2139, 'Computer Networking '),
(2140, 'Comptuer Maintenance '),
(2141, 'Computer Hardware Installation '),
(2142, 'Computer Hardware Design '),
(2143, 'Computer Graphics '),
(2144, 'Computer Engineering '),
(2145, 'Computer Assembly '),
(2146, 'Computer Aided Manufacturing (CAM) '),
(2147, 'Computational Linguistics '),
(2148, 'Computational Fluid Dynamics (CFD) '),
(2149, 'Compositing '),
(2150, 'Compliance '),
(2151, 'Complaint Management '),
(2152, 'Compiler '),
(2153, 'Compensation '),
(2154, 'Communications '),
(2155, 'Common Language Runtime '),
(2156, 'Commercials '),
(2157, 'Commercial Lending '),
(2158, 'Comic Writing '),
(2159, 'Comic Art '),
(2160, 'Comet '),
(2161, 'Comedy Writing '),
(2162, 'Component Object Model (Microsoft COM) '),
(2163, 'Collection Agencies '),
(2164, 'Collaborative filtering '),
(2165, 'CollabNet TeamForge '),
(2166, 'ColdFusion '),
(2167, 'Cold calling '),
(2168, 'Cognos '),
(2169, 'CoffeeScript '),
(2170, 'CodeWarrior '),
(2171, 'CoDeSys '),
(2172, 'CodeIgniter '),
(2173, 'Code Refactoring '),
(2174, 'Cocos2d '),
(2175, 'Cocoa Touch '),
(2176, 'Cocoa '),
(2177, 'COBOL '),
(2178, 'CNC Programming '),
(2179, 'CMS Development '),
(2180, 'Cluster Computing '),
(2181, 'CloudForge '),
(2182, 'Cloudera '),
(2183, 'Cloud Security Framework '),
(2184, 'Clojure '),
(2185, 'Clipping Path '),
(2186, 'Climate Sciences '),
(2187, 'ClickBank'),
(2188, 'clerical skills '),
(2189, 'ClearQuest '),
(2190, 'Clear Books '),
(2191, 'Clean Technology '),
(2192, 'Classifieds Posting '),
(2193, 'ClamAV '),
(2194, 'Civil Law '),
(2195, 'Civil Engineering '),
(2196, 'CiviCRM '),
(2197, 'Citrix XenServer '),
(2198, 'Citrix NetScaler '),
(2199, 'Cisco CallManager '),
(2200, 'cisco routers '),
(2201, 'Cisco PIX '),
(2202, 'Cisco IOS '),
(2203, 'Cisco Certified Network Associate (CCNA) '),
(2204, 'Cisco Certified Internetwork Expert (CCIE) '),
(2205, 'Cisco Certified Entry Networking Technician (CCENT) '),
(2206, 'Cisco Certified Design Professional (CCDP) '),
(2207, 'Cisco Certified Design Expert (CCDE) '),
(2208, 'Cisco Certified Design Associate (CCDA) '),
(2209, 'Cisco ASA '),
(2210, 'Circuit Design '),
(2211, 'Cinematography '),
(2212, 'Customer Information Control System (CICS) '),
(2213, 'Chrome OS '),
(2214, 'Chrome Extension '),
(2215, 'Chroma key '),
(2216, 'Christian theology '),
(2217, 'Chinese '),
(2218, 'Childrens Writing '),
(2219, 'Child Counseling '),
(2220, 'Chicago Manual of Style '),
(2221, 'Chemistry '),
(2222, 'Chemical Engineering '),
(2223, 'Check Point '),
(2224, 'chat support '),
(2225, 'Chart.js '),
(2226, 'Character Design '),
(2227, 'Chaos Group V-Ray '),
(2228, 'Change Management '),
(2229, 'CGI '),
(2230, 'CG Artwork '),
(2231, 'Certified Public Accountant (CPA) '),
(2232, 'Certified Information Systems Security Professional (CISSP) '),
(2233, 'Centreon '),
(2234, 'Central Reservation Systems '),
(2235, 'Central Desktop Development '),
(2236, 'CentOS '),
(2237, 'Violoncello '),
(2238, 'Celemony Melodyne '),
(2239, 'CDMA '),
(2240, 'Cisco Certified Network Professional (CCNP) '),
(2241, 'Cavium OCTEON Plus MIPS64 '),
(2242, 'Cavium Octeon Fusion '),
(2243, 'CATIA '),
(2244, 'Catholic Theology '),
(2245, 'Catch Phrases '),
(2246, 'Catalan '),
(2247, 'Apache Cassandra '),
(2248, 'Caspio Programming '),
(2249, 'Caspio Administration '),
(2250, 'Cartooning '),
(2251, 'Cartography & Maps '),
(2252, 'Caricature Drawing '),
(2253, 'Carbide.c++ '),
(2254, 'Capture NX2 '),
(2255, 'Capistrano '),
(2256, 'Cantonese '),
(2257, 'Camtasia '),
(2258, 'Calligraphy '),
(2259, 'Call Handling '),
(2260, 'Call Center Management '),
(2261, 'Calendar Management '),
(2262, 'Calculus '),
(2263, 'Cakewalk Sonar '),
(2264, 'CakePHP '),
(2265, 'Cairngorm '),
(2266, 'Cadence Platform '),
(2267, 'Computer-Aided Design '),
(2268, 'Cache Management '),
(2269, 'C Shell '),
(2270, 'C++ '),
(2271, 'C# '),
(2272, 'C '),
(2273, 'Business Writing '),
(2274, 'Business valuation '),
(2275, 'Business Scenario Development '),
(2276, 'Business Proposal Writing '),
(2277, 'Business Process Reengineering '),
(2278, 'Business Process Modeling '),
(2279, 'Business Planning '),
(2280, 'Business Modeling '),
(2281, 'Business Mathematics '),
(2282, 'Business Management '),
(2283, 'Business IT Alignment '),
(2284, 'Business intelligence '),
(2285, 'Business Development '),
(2286, 'Business Continuity Planning '),
(2287, 'Business Coaching '),
(2288, 'Business Card Design '),
(2289, 'Business Analysis '),
(2290, 'Bulk Marketing '),
(2291, 'Bulgarian '),
(2292, 'Buildium '),
(2293, 'Building Regulations '),
(2294, 'Building Estimation '),
(2295, 'Bugzilla '),
(2296, 'Budgeting & Forecasting '),
(2297, 'BuddyPress '),
(2298, 'Brochure Design '),
(2299, 'BroadVision QuickSilver '),
(2300, 'BroadVision ClearVale '),
(2301, 'Broadcast Engineering '),
(2302, 'Broadcast Advertising '),
(2303, 'BREW '),
(2304, 'Brand Ambassador '),
(2305, 'Brand Management '),
(2306, 'Brand Licensing '),
(2307, 'Brand Consulting '),
(2308, 'BPO IT services '),
(2309, 'BPO Call Center '),
(2310, 'Business Process Execution Language (BPEL) '),
(2311, 'BPCS '),
(2312, 'Box2D '),
(2313, 'Box.net Development '),
(2314, 'Bosnian '),
(2315, 'Borland SilkTest '),
(2316, 'Borland C++ Builder '),
(2317, 'Bootstrap '),
(2318, 'Boost '),
(2319, 'BoonEx Dolphin '),
(2320, 'Bookkeeping '),
(2321, 'Book Writing '),
(2322, 'Book Cover Design '),
(2323, 'BuildMyRank Writing '),
(2324, 'Bluetooth '),
(2325, 'blue.box '),
(2326, 'Blog Writing '),
(2327, 'Blog Development '),
(2328, 'Blog Commenting '),
(2329, 'Blitz BASIC '),
(2330, 'Blender3D '),
(2331, 'BlazeDS '),
(2332, 'Blackboard '),
(2333, 'BlackBerry JDE '),
(2334, 'Blackberry app development '),
(2335, 'Black Box Testing '),
(2336, 'BizTalk Server '),
(2337, 'BitRock Installbuilder '),
(2338, 'Bitrix Intranet '),
(2339, 'Bitrix '),
(2340, 'Bitcoin '),
(2341, 'BIRT '),
(2342, 'Biotechnology '),
(2343, 'Biostatistics '),
(2344, 'Biology '),
(2345, 'Biography Writing '),
(2346, 'Bioinformatics '),
(2347, 'Bing Ads '),
(2348, 'BigCommerce '),
(2349, 'Big Data '),
(2350, 'Border Gateway Protocol '),
(2351, 'BGL Simple Fund '),
(2352, 'Betfair '),
(2353, 'BeOS '),
(2354, 'Bentley Microstation '),
(2355, 'Bengali '),
(2356, 'Benefits Law '),
(2357, 'Belle Nuit Subtitler '),
(2358, 'Behavioral Event Interviewing '),
(2359, 'Behavior Driven Development (BDD) '),
(2360, 'bbPress '),
(2361, 'Bassoon '),
(2362, 'Basque '),
(2363, 'Basic '),
(2364, 'Bash shell scripting '),
(2365, 'Bash '),
(2366, 'Basecamp '),
(2367, 'Business Activity Monitoring '),
(2368, 'Bartending '),
(2369, 'Banner Ad Design '),
(2370, 'Banner Ads '),
(2371, 'Bankruptcy '),
(2372, 'Bank Reconciliation '),
(2373, 'Balsamiq '),
(2374, 'Baking '),
(2375, 'Bada '),
(2376, 'Bacula '),
(2377, 'Backbone.js '),
(2378, 'B2B Marketing '),
(2379, 'Axure RP '),
(2380, 'Axiom Productivity Tools '),
(2381, 'Axiom MicroStation Productivity Toolkit '),
(2382, 'Axiis '),
(2383, 'Axapta '),
(2384, 'Abstract Window Toolkit (AWT) '),
(2385, 'Awk '),
(2386, 'aWeber '),
(2387, 'Away3D '),
(2388, 'Avid Pro Tools '),
(2389, 'Avid '),
(2390, 'Aviation '),
(2391, 'AVEVA PDMS '),
(2392, 'Avaya '),
(2393, 'Avactis '),
(2394, 'Automotive Engineering '),
(2395, 'Automation '),
(2396, 'Automated Testing '),
(2397, 'Automated Call Distribution '),
(2398, 'AutoLISP '),
(2399, 'Autoit '),
(2400, 'AutoHotKey '),
(2401, 'Autodys AcceliCAD '),
(2402, 'Autodesk Softimage '),
(2403, 'Autodesk Sketchbook Pro '),
(2404, 'Autodesk Revit '),
(2405, 'Autodesk Navisworks '),
(2406, 'Autodesk Mudbox '),
(2407, 'Autodesk Maya '),
(2408, 'Autodesk Inventor '),
(2409, 'Autodesk Autocad Civil3D '),
(2410, 'Autodesk 3D Studio Max '),
(2411, 'Autodesk '),
(2412, 'AutoCAD '),
(2413, 'Authorize.Net Development '),
(2414, 'Author-It '),
(2415, 'Augmented Reality '),
(2416, 'Autodesk Architecture '),
(2417, 'Auditing '),
(2418, 'Audio Restoration '),
(2419, 'Audio Production '),
(2420, 'Audio Postediting '),
(2421, 'Audio Post Production '),
(2422, 'Audio Mixing '),
(2423, 'Audio Mastering '),
(2424, 'Audio Engineering '),
(2425, 'Audio Editing '),
(2426, 'Audio Design '),
(2427, 'Audacity '),
(2428, 'Auctiva '),
(2429, 'Atom '),
(2430, 'Atmel AVR '),
(2431, 'ATM Implementation '),
(2432, 'Atlassian JIRA '),
(2433, 'Atlassian GreenHopper '),
(2434, 'Atlassian Confluence '),
(2435, 'Atlas '),
(2436, 'ATL '),
(2437, 'Asynchronous I/O '),
(2438, 'Astrophysics '),
(2439, 'Astrology '),
(2440, 'Asterisk '),
(2441, 'Assembly Language '),
(2442, 'Assembla '),
(2443, 'Aspen HYSYS '),
(2444, 'AspectJS '),
(2445, 'AspDotNetStorefront '),
(2446, 'ASP.NET MVC '),
(2447, 'ASP.NET '),
(2448, 'ASP '),
(2449, 'ASIO '),
(2450, 'IBM AS/400 Control Language '),
(2451, 'Arts & Crafts '),
(2452, 'ArtRage '),
(2453, 'Artlantis Studio '),
(2454, 'Artlantis Render '),
(2455, 'Artisteer '),
(2456, 'ArtiosCAD '),
(2457, 'Artificial Neural Networks '),
(2458, 'Artificial Intelligence '),
(2459, 'Articulate Studio '),
(2460, 'Articulate Storyline '),
(2461, 'Articulate Presenter '),
(2462, 'Articulate Engage '),
(2463, 'Articulate '),
(2464, 'Article Writing '),
(2465, 'Article Submission '),
(2466, 'Article Spinning '),
(2467, 'Article Rewriting '),
(2468, 'Article curation '),
(2469, 'Art Direction '),
(2470, 'Art curation '),
(2471, 'ARM '),
(2472, 'Arduino '),
(2473, 'ARCserve '),
(2474, 'ArcScene '),
(2475, 'Architectural Rendering '),
(2476, 'Architecture '),
(2477, 'ArchiCAD '),
(2478, 'ArcGIS '),
(2479, 'Arbitration '),
(2480, 'Arabic '),
(2481, 'Appointment Setting '),
(2482, 'Application Server '),
(2483, 'Application Programming '),
(2484, 'Application Lifecycle Management '),
(2485, 'Applicant Tracking Systems '),
(2486, 'AppleScript '),
(2487, 'Apple Xcode '),
(2488, 'Apple WebObjects '),
(2489, 'Apple UIKit Framework '),
(2490, 'Apple Motion '),
(2491, 'Apple iWork '),
(2492, 'Apple iWeb '),
(2493, 'iOS Jailbreaking '),
(2494, 'Apple iMovie '),
(2495, 'Apple iBooks '),
(2496, 'Appian BPM Suite '),
(2497, 'Appian '),
(2498, 'AppFuse '),
(2499, 'Appcelerator Titanium '),
(2500, 'App Usability Analysis '),
(2501, 'App Store '),
(2502, 'Apollo '),
(2503, 'API Documentation '),
(2504, 'API Development '),
(2505, 'Apache Tomcat '),
(2506, 'Apache Tiles '),
(2507, 'Apache Thrift '),
(2508, 'Apache Struts '),
(2509, 'Apache Spark '),
(2510, 'Apache Solr '),
(2511, 'Apache Shirol '),
(2512, 'Apache Jakarta POI '),
(2513, 'Apache OFBiz '),
(2514, 'Apache Nutch '),
(2515, 'Apache Mahout '),
(2516, 'Apache Kafka '),
(2517, 'Apache Hive '),
(2518, 'Apache Flume '),
(2519, 'Apache CXF '),
(2520, 'Apache Cordova '),
(2521, 'Apache Cocoon '),
(2522, 'Apache CloudStack '),
(2523, 'Apache Click '),
(2524, 'Apache Camel '),
(2525, 'Apache Avro '),
(2526, 'Apache Ant '),
(2527, 'Apache administration '),
(2528, 'AP Style Writing '),
(2529, 'Antitrust '),
(2530, 'Antispam and Antivirus '),
(2531, 'Antenna Design '),
(2532, 'ANSYS '),
(2533, 'ANSI C '),
(2534, 'Anime Studio '),
(2535, 'Animation '),
(2536, 'AngularJS '),
(2537, 'Android SDK '),
(2538, 'Android App Development '),
(2539, 'Android '),
(2540, 'Analytics '),
(2541, 'Analog Electronics '),
(2542, 'AMQP '),
(2543, 'Amplifiers and Filters '),
(2544, 'American Sign Language '),
(2545, 'aMember '),
(2546, 'Amazon Webstore '),
(2547, 'Amazon Web Services '),
(2548, 'Amazon S3 '),
(2549, 'Amazon Relational Database Service '),
(2550, 'Amazon MWS '),
(2551, 'Mechanical Turk API '),
(2552, 'Amazon EC2 '),
(2553, 'Amazon Appstore '),
(2554, 'Amanda Backup '),
(2555, 'Amadeus '),
(2556, 'Altium Designer '),
(2557, 'Alternative Dispute Resolution '),
(2558, 'Alternative3D '),
(2559, 'Alpha '),
(2560, 'Alibre Design '),
(2561, 'Algorithms '),
(2562, 'Algorithm Development '),
(2563, 'Alfresco user '),
(2564, 'Alfresco development '),
(2565, 'Album Cover Design '),
(2566, 'Albanian '),
(2567, 'Akka '),
(2568, 'AJAX '),
(2569, 'AIX '),
(2570, 'Amharic Language '),
(2571, 'Agriculture '),
(2572, 'Agile software developmennt '),
(2573, 'Afrikaans '),
(2574, 'Affiliate Marketing '),
(2575, 'Advertising '),
(2576, 'Advanced Business Application Programming (ABAP) '),
(2577, 'ADVA '),
(2578, 'Adobe Wallaby '),
(2579, 'Adobe Soundbooth '),
(2580, 'Adobe RoboHelp '),
(2581, 'Adobe Premiere Pro '),
(2582, 'Adobe Premiere Elements '),
(2583, 'Adobe Premiere '),
(2584, 'Adobe Photoshop Lightroom '),
(2585, 'Adobe Photoshop '),
(2586, 'Adobe PDF '),
(2587, 'Adobe PageMaker '),
(2588, 'Adobe Muse '),
(2589, 'Adobe LiveCycle Designer '),
(2590, 'Adobe Photoshop Lightroom '),
(2591, 'Adobe Insight '),
(2592, 'Adobe InDesign '),
(2593, 'Adobe InCopy '),
(2594, 'Adobe Imageready '),
(2595, 'Adobe Illustrator '),
(2596, 'AGAL '),
(2597, 'Adobe GoLive '),
(2598, 'Adobe FreeHand '),
(2599, 'Adobe Framemaker '),
(2600, 'Adobe Flex '),
(2601, 'Adobe Flash '),
(2602, 'Adobe Fireworks '),
(2603, 'Adobe Encore '),
(2604, 'Adobe eLearning Suite '),
(2605, 'Adobe Dreamweaver '),
(2606, 'Adobe Director '),
(2607, 'Adobe Digital Marketing Suite '),
(2608, 'Adobe Creative Suite '),
(2609, 'Adobe Contribute '),
(2610, 'Adobe Content Server '),
(2611, 'Adobe Captivate '),
(2612, 'Adobe Business Catalyst '),
(2613, 'Adobe Audition '),
(2614, 'Adobe Analytics '),
(2615, 'Adobe AIR '),
(2616, 'Adobe After Effects '),
(2617, 'Adobe Acrobat '),
(2618, 'ADO.NET '),
(2619, 'ActiveX Data Objects (ADO) '),
(2620, 'Administrative Support '),
(2621, 'ADK '),
(2622, 'Adaptive Algorithms '),
(2623, 'Adaco '),
(2624, 'Ada '),
(2625, 'Ad Servers '),
(2626, 'Ad Posting '),
(2627, 'Ad Planning & Buying '),
(2628, 'ActiveX '),
(2629, 'ActiveCollab '),
(2630, 'Active Listening '),
(2631, 'Active Directory '),
(2632, 'ActionScript 3 '),
(2633, 'ActionScript '),
(2634, 'Actian '),
(2635, 'ACT! '),
(2636, 'Acrylic Painting '),
(2637, 'Acronis '),
(2638, 'Acquisitions '),
(2639, 'ACPI '),
(2640, 'ACDSee '),
(2641, 'Accounts Receivable Management '),
(2642, 'Accounts Payable Management '),
(2643, 'AccountMate '),
(2644, 'Accounting '),
(2645, 'Account Management '),
(2646, 'Academic Writing '),
(2647, 'Absynth '),
(2648, 'Ableton Live '),
(2649, 'AbleCommerce '),
(2650, 'Abaqus '),
(2651, 'A/B Testing '),
(2652, 'Ab Initio '),
(2653, 'A2Billing '),
(2654, '3ds Max '),
(2655, '3D Systems '),
(2656, '3D Scanning '),
(2657, '3D Rigging '),
(2658, '3D Rendering '),
(2659, '3D Printing '),
(2660, '3D Modeling '),
(2661, '3D Design '),
(2662, '3D Animation '),
(2663, '2D Design '),
(2664, '2D Animation '),
(2665, '1ShoppingCart '),
(2666, '.NET Remoting '),
(2667, '.NET Framework '),
(2668, 'NET Compact Framework '),
(2670, 'Craft CMS'),
(2671, 'Salesforce'),
(2672, 'tets');

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `id` int(11) NOT NULL,
  `uid` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `plan_id` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `plan_name` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `plan_price` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `plan_token` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `plan_token_amount` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `plan_month` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `amount` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `mode` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci NOT NULL,
  `starter` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `expiry` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL COMMENT '0=deactive,1=active',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`id`, `uid`, `user_id`, `plan_id`, `plan_name`, `plan_price`, `plan_token`, `plan_token_amount`, `plan_month`, `amount`, `mode`, `details`, `starter`, `expiry`, `status`, `updated_at`, `created_at`) VALUES
(2, '691579511550', 344, '6', 'Fox', '60', '6', '25', '5', '60', 'paystack', '{\"mode\":\"paystack\",\"data\":\"{\\\"reference\\\":\\\"YWoPoWxQRdlQh9\\\",\\\"trans\\\":\\\"449997308\\\",\\\"status\\\":\\\"success\\\",\\\"message\\\":\\\"Approved\\\",\\\"transaction\\\":\\\"449997308\\\",\\\"trxref\\\":\\\"YWoPoWxQRdlQh9\\\"}\",\"amount\":\"60\",\"token_id\":\"b70306a635d31e4f8c61c21662ae3f298a97dd72e7fdc4fcb7ab4be2ca41eec9\"}', '2020-01-20 12:12:47', '2020-06-20 12:12:47', 1, '2020-01-20 06:42:47', '2020-01-20 12:12:30'),
(3, '981579675382', 371, '6', 'Fox', '60', '6', '25', '5', '60', 'paystack', '{\"mode\":\"paystack\",\"data\":\"{\\\"reference\\\":\\\"1pWM4XBht7cfCs\\\",\\\"trans\\\":\\\"453276128\\\",\\\"status\\\":\\\"success\\\",\\\"message\\\":\\\"Approved\\\",\\\"transaction\\\":\\\"453276128\\\",\\\"trxref\\\":\\\"1pWM4XBht7cfCs\\\"}\",\"amount\":\"60\",\"token_id\":\"dc84f306f562d727ca7120759760d3bce79c889cb230885690cec7146229a117\"}', '2020-01-22 09:43:47', '2020-06-22 09:43:47', 1, '2020-01-22 09:43:47', '2020-01-22 09:43:02'),
(4, '721579681027', 371, '6', 'Fox', '60', '6', '25', '5', '60', 'paystack', '{\"mode\":\"paystack\",\"data\":\"{\\\"reference\\\":\\\"v9fWlsjEPzUNEL\\\",\\\"trans\\\":\\\"453371463\\\",\\\"status\\\":\\\"success\\\",\\\"message\\\":\\\"Approved\\\",\\\"transaction\\\":\\\"453371463\\\",\\\"trxref\\\":\\\"v9fWlsjEPzUNEL\\\"}\",\"amount\":\"60\",\"token_id\":\"dc84f306f562d727ca7120759760d3bce79c889cb230885690cec7146229a117\"}', '2020-01-22 11:21:05', '2020-06-22 11:21:05', 1, '2020-01-22 11:21:05', '2020-01-22 11:17:07'),
(5, '561579681309', 371, '6', 'Fox', '60', '6', '25', '5', '60', 'paystack', '{\"mode\":\"paystack\",\"data\":\"{\\\"reference\\\":\\\"VZMJ349ES25gsR\\\",\\\"trans\\\":\\\"453376488\\\",\\\"status\\\":\\\"success\\\",\\\"message\\\":\\\"Approved\\\",\\\"transaction\\\":\\\"453376488\\\",\\\"trxref\\\":\\\"VZMJ349ES25gsR\\\"}\",\"amount\":\"60\",\"token_id\":\"dc84f306f562d727ca7120759760d3bce79c889cb230885690cec7146229a117\"}', '2020-01-22 11:22:02', '2020-06-22 11:22:02', 1, '2020-01-22 11:22:02', '2020-01-22 11:21:49'),
(6, '841579769182', 375, '6', 'Fox', '60', '6', '25', '5', '', '', '', '', '', 0, '2020-01-23 08:46:22', '2020-01-23 11:46:22'),
(7, '531580068305', 379, '6', 'Fox', '60', '6', '25', '5', '60', 'paypal', '{\"url\":\"subscription\\/confirm_payment\",\"token_id\":\"18e8c77a02d40681ac91cfa45e2db56e69dd5ac5c581efb6eae93adbd9059e25\",\"subscription_id\":\"7\",\"paymentid\":\"TIYoNprEoxTDI8\",\"paystack_id\":\"8oMfDC2hYCVUhv\",\"pay_token\":\"302\",\"pay_amount\":\"21\",\"pay_job_id\":\"10\",\"waveUser\":\"113415621757297919960\",\"for\":\"subscription\",\"type\":\"return\",\"mode\":\"paypal\",\"amount\":\"60\",\"pid\":\"TIYoNprEoxTDI8\",\"payer_email\":\"raj.workholics@gmail.com\",\"payer_id\":\"5NFKEW2TY3TLQ\",\"payer_status\":\"UNVERIFIED\",\"first_name\":\"My\",\"last_name\":\"Store\",\"address_name\":\"My Store\",\"address_street\":\"101,Vijay Nagar\",\"address_city\":\"Indore\",\"address_state\":\"IN\",\"address_country_code\":\"US\",\"address_zip\":\"45201\",\"residence_country\":\"US\",\"txn_id\":\"35B50215KP9744739\",\"mc_currency\":\"USD\",\"mc_gross\":\"60.00\",\"protection_eligibility\":\"INELIGIBLE\",\"payment_gross\":\"60.00\",\"payment_status\":\"Pending\",\"pending_reason\":\"unilateral\",\"payment_type\":\"instant\",\"handling_amount\":\"0.00\",\"shipping\":\"0.00\",\"item_name\":\"Subscription\",\"quantity\":\"1\",\"txn_type\":\"web_accept\",\"payment_date\":\"2020-02-03T07:59:06Z\",\"notify_version\":\"UNVERSIONED\",\"verify_sign\":\"As0tSVNxPxcLJCZkiB6ydL0-0F3uAWQ0-zaFQcRWZMzOpEuXZfP0F2Jf\"}', '2020-02-03 11:00:27', '2020-07-03 11:00:27', 1, '2020-02-03 11:00:27', '2020-01-26 22:51:45'),
(8, '681580102329', 381, '6', 'Fox', '60', '6', '25', '5', '', '', '', '', '', 0, '2020-01-27 05:18:49', '2020-01-27 08:18:49'),
(12, '101580108733', 382, '6', 'Fox', '60', '6', '25', '5', '60', 'paypal', '{\"url\":\"subscription\\/confirm_payment\",\"token_id\":\"73e962b25b548af81449511da17a22f9e15120d76ee45d0bf76c2fc1ce49decd\",\"subscription_id\":\"12\",\"paymentid\":\"UK0IUnQQ0yjrkV\",\"paystack_id\":\"e5Ir5A9iu2S40u\",\"waveUser\":\"175377620335847\",\"for\":\"subscription\",\"type\":\"return\",\"mode\":\"paypal\",\"amount\":\"60\",\"pid\":\"UK0IUnQQ0yjrkV\",\"payer_email\":\"raj.workholics@gmail.com\",\"payer_id\":\"5NFKEW2TY3TLQ\",\"payer_status\":\"UNVERIFIED\",\"first_name\":\"My\",\"last_name\":\"Store\",\"address_name\":\"My Store\",\"address_street\":\"101,Vijay Nagar\",\"address_city\":\"Indore\",\"address_state\":\"IN\",\"address_country_code\":\"US\",\"address_zip\":\"45201\",\"residence_country\":\"US\",\"txn_id\":\"2D131986FH401184S\",\"mc_currency\":\"USD\",\"mc_gross\":\"60.00\",\"protection_eligibility\":\"INELIGIBLE\",\"payment_gross\":\"60.00\",\"payment_status\":\"Pending\",\"pending_reason\":\"unilateral\",\"payment_type\":\"instant\",\"handling_amount\":\"0.00\",\"shipping\":\"0.00\",\"item_name\":\"Subscription\",\"quantity\":\"1\",\"txn_type\":\"web_accept\",\"payment_date\":\"2020-01-27T07:06:39Z\",\"notify_version\":\"UNVERSIONED\",\"verify_sign\":\"AUf75XkRDGun5O10fh-HcxJHDnXPA3-T3C3CznYsoUKQluL6fePnWu8E\"}', '2020-01-27 10:08:11', '2020-06-27 10:08:11', 1, '2020-01-27 10:08:11', '2020-01-27 10:05:33'),
(13, '131580114955', 344, '6', 'Fox', '60', '6', '25', '5', '60', 'paypal', '{\"url\":\"subscription\\/confirm_payment\",\"token_id\":\"73e962b25b548af81449511da17a22f9e15120d76ee45d0bf76c2fc1ce49decd\",\"subscription_id\":\"13\",\"paymentid\":\"zLJiuYO3Ser04m\",\"paystack_id\":\"m0TC5I0NlqLEqj\",\"pay_token\":\"6\",\"pay_amount\":\"4\",\"pay_job_id\":\"8\",\"waveUser\":\"981686315672\",\"for\":\"subscription\",\"type\":\"return\",\"mode\":\"paypal\",\"amount\":\"60\",\"pid\":\"zLJiuYO3Ser04m\",\"payer_email\":\"raj.workholics@gmail.com\",\"payer_id\":\"5NFKEW2TY3TLQ\",\"payer_status\":\"UNVERIFIED\",\"first_name\":\"My\",\"last_name\":\"Store\",\"address_name\":\"My Store\",\"address_street\":\"101,Vijay Nagar\",\"address_city\":\"Indore\",\"address_state\":\"IN\",\"address_country_code\":\"US\",\"address_zip\":\"45201\",\"residence_country\":\"US\",\"txn_id\":\"5YK27262VW621692H\",\"mc_currency\":\"USD\",\"mc_gross\":\"60.00\",\"protection_eligibility\":\"INELIGIBLE\",\"payment_gross\":\"60.00\",\"payment_status\":\"Pending\",\"pending_reason\":\"unilateral\",\"payment_type\":\"instant\",\"handling_amount\":\"0.00\",\"shipping\":\"0.00\",\"item_name\":\"Subscription\",\"quantity\":\"1\",\"txn_type\":\"web_accept\",\"payment_date\":\"2020-01-27T08:49:19Z\",\"notify_version\":\"UNVERSIONED\",\"verify_sign\":\"A54a3Dk7RvCgq-wm2DkaPgjfKvGrAgf70RtOSubAxFqvwWTvGczLnkIg\"}', '2020-01-27 11:50:15', '2020-06-27 11:50:15', 1, '2020-01-27 11:50:15', '2020-01-27 11:49:15'),
(15, '661580362375', 383, '6', 'Fox', '60', '6', '25', '5', '', '', '', '', '', 0, '2020-01-30 05:32:55', '2020-01-30 08:32:55'),
(16, '781580770111', 384, '6', 'Fox', '60', '6', '25', '5', '60', 'paypal', '{\"url\":\"subscription\\/confirm_payment\",\"token_id\":\"6399b68e6dc7aa47ca6f16d2f5cafaf94cbeff93afa8bf02e555c569dbb42e8b\",\"pay_token\":\"331\",\"pay_amount\":\"33.2\",\"pay_job_id\":\"11\",\"paymentid\":\"HL5lHX0JxYHaP5\",\"paystack_id\":\"0uliwJCx6HI3bz\",\"waveUser\":\"2530567290501481\",\"subscription_id\":\"16\",\"for\":\"subscription\",\"type\":\"return\",\"mode\":\"paypal\",\"amount\":\"60\",\"pid\":\"HL5lHX0JxYHaP5\",\"payer_email\":\"raj.workholics@gmail.com\",\"payer_id\":\"5NFKEW2TY3TLQ\",\"payer_status\":\"UNVERIFIED\",\"first_name\":\"My\",\"last_name\":\"Store\",\"address_name\":\"My Store\",\"address_street\":\"101,Vijay Nagar\",\"address_city\":\"Indore\",\"address_state\":\"IN\",\"address_country_code\":\"US\",\"address_zip\":\"45201\",\"residence_country\":\"US\",\"txn_id\":\"27V44071356284811\",\"mc_currency\":\"USD\",\"mc_gross\":\"60.00\",\"protection_eligibility\":\"INELIGIBLE\",\"payment_gross\":\"60.00\",\"payment_status\":\"Pending\",\"pending_reason\":\"unilateral\",\"payment_type\":\"instant\",\"handling_amount\":\"0.00\",\"shipping\":\"0.00\",\"item_name\":\"Subscription\",\"quantity\":\"1\",\"txn_type\":\"web_accept\",\"payment_date\":\"2020-02-03T22:48:37Z\",\"notify_version\":\"UNVERSIONED\",\"verify_sign\":\"AbyBVr3dED.bu7BAyaus3c71W21NAyFuR78gaCB8emVAvLR9zR.acjMJ\"}', '2020-02-04 01:49:14', '2020-07-04 01:49:14', 1, '2020-02-04 01:49:14', '2020-02-04 01:48:31'),
(17, '931580820155', 385, '6', 'Fox', '60', '6', '25', '5', '60', 'razorpay', '{\"mode\":\"razorpay\",\"hidden\":\"Hidden Element\",\"amount\":\"60\",\"token_id\":\"f468ed64e4484a9b0424a29e2cefa8a497c0494b98912818187afbdceb5c602a\",\"razorpay_payment_id\":\"pay_ECfbXAlEKUXwj0\"}', '2020-02-04 15:43:37', '2020-07-04 15:43:37', 1, '2020-02-04 15:43:37', '2020-02-04 15:42:35'),
(18, '481581139399', 386, '6', 'Fox', '60', '6', '25', '5', '60', 'paypal', '{\"url\":\"subscription\\/confirm_payment\",\"token_id\":\"2d007a25a909283205cb2eb7f07e5101600f14b53d1bcb9cda10173e14be44c4\",\"waveUser\":\"328078408471\",\"subscription_id\":\"18\",\"paymentid\":\"TchdEmnPHtFwng\",\"paystack_id\":\"RxRGl3QVoYdwpS\",\"for\":\"subscription\",\"type\":\"return\",\"mode\":\"paypal\",\"amount\":\"60\",\"pid\":\"TchdEmnPHtFwng\",\"payer_email\":\"raj.workholics@gmail.com\",\"payer_id\":\"5NFKEW2TY3TLQ\",\"payer_status\":\"UNVERIFIED\",\"first_name\":\"My\",\"last_name\":\"Store\",\"address_name\":\"My Store\",\"address_street\":\"101,Vijay Nagar\",\"address_city\":\"Indore\",\"address_state\":\"IN\",\"address_country_code\":\"US\",\"address_zip\":\"45201\",\"residence_country\":\"US\",\"txn_id\":\"2MH49036YW916792U\",\"mc_currency\":\"USD\",\"mc_gross\":\"60.00\",\"protection_eligibility\":\"INELIGIBLE\",\"payment_gross\":\"60.00\",\"payment_status\":\"Pending\",\"pending_reason\":\"unilateral\",\"payment_type\":\"instant\",\"handling_amount\":\"0.00\",\"shipping\":\"0.00\",\"item_name\":\"Subscription\",\"quantity\":\"1\",\"txn_type\":\"web_accept\",\"payment_date\":\"2020-02-08T05:23:39Z\",\"notify_version\":\"UNVERSIONED\",\"verify_sign\":\"A8zwHQ4-aE7ylPb09wRIJzpnJRQ2AhliqsmJ0MsXosaauEE2GWqIOWYP\"}', '2020-02-08 08:24:49', '2020-07-08 08:24:49', 1, '2020-02-08 08:24:49', '2020-02-08 08:23:19'),
(20, '281581145259', 387, '6', 'Fox', '60', '6', '25', '5', '60', 'paypal', '{\"url\":\"subscription\\/confirm_payment\",\"token_id\":\"2d007a25a909283205cb2eb7f07e5101600f14b53d1bcb9cda10173e14be44c4\",\"subscription_id\":\"20\",\"paymentid\":\"mkAjFOqIJh0tvt\",\"paystack_id\":\"FLUJyzv2fj7DMu\",\"pay_token\":\"303\",\"pay_amount\":\"225\",\"pay_job_id\":\"14\",\"waveUser\":\"318884073140\",\"for\":\"subscription\",\"type\":\"return\",\"mode\":\"paypal\",\"amount\":\"60\",\"pid\":\"P9ieqEV76JFq81\",\"payer_email\":\"raj.workholics@gmail.com\",\"payer_id\":\"5NFKEW2TY3TLQ\",\"payer_status\":\"UNVERIFIED\",\"first_name\":\"My\",\"last_name\":\"Store\",\"address_name\":\"My Store\",\"address_street\":\"101,Vijay Nagar\",\"address_city\":\"Indore\",\"address_state\":\"IN\",\"address_country_code\":\"US\",\"address_zip\":\"45201\",\"residence_country\":\"US\",\"txn_id\":\"72J40263D0458184K\",\"mc_currency\":\"USD\",\"mc_gross\":\"60.00\",\"protection_eligibility\":\"INELIGIBLE\",\"payment_gross\":\"60.00\",\"payment_status\":\"Pending\",\"pending_reason\":\"unilateral\",\"payment_type\":\"instant\",\"handling_amount\":\"0.00\",\"shipping\":\"0.00\",\"item_name\":\"Subscription\",\"quantity\":\"1\",\"txn_type\":\"web_accept\",\"payment_date\":\"2020-02-08T07:01:06Z\",\"notify_version\":\"UNVERSIONED\",\"verify_sign\":\"ABGcaoBsYGeXGJvXJiMcqgpkjLCfA3RqQd5k-C3UrgNk3n1ibhNuh4YO\"}', '2020-02-08 10:02:17', '2020-07-08 10:02:17', 1, '2020-02-08 10:02:17', '2020-02-08 10:00:59'),
(21, '1001581332781', 388, '6', 'Fox', '60', '6', '25', '5', '60', 'paypal', '{\"url\":\"subscription\\/confirm_payment\",\"token_id\":\"2d007a25a909283205cb2eb7f07e5101600f14b53d1bcb9cda10173e14be44c4\",\"subscription_id\":\"21\",\"paymentid\":\"5IXOMVzdYnlQCp\",\"paystack_id\":\"u0572wvVEmkZkn\",\"pay_token\":\"303\",\"pay_amount\":\"225\",\"pay_job_id\":\"14\",\"waveUser\":\"249149631999\",\"for\":\"subscription\",\"type\":\"return\",\"mode\":\"paypal\",\"amount\":\"60\",\"pid\":\"q6XDXzAKrrTCr2\",\"payer_email\":\"raj.workholics@gmail.com\",\"payer_id\":\"5NFKEW2TY3TLQ\",\"payer_status\":\"UNVERIFIED\",\"first_name\":\"My\",\"last_name\":\"Store\",\"address_name\":\"My Store\",\"address_street\":\"101,Vijay Nagar\",\"address_city\":\"Indore\",\"address_state\":\"IN\",\"address_country_code\":\"US\",\"address_zip\":\"45201\",\"residence_country\":\"US\",\"txn_id\":\"3YD58194YF0748649\",\"mc_currency\":\"USD\",\"mc_gross\":\"60.00\",\"protection_eligibility\":\"INELIGIBLE\",\"payment_gross\":\"60.00\",\"payment_status\":\"Pending\",\"pending_reason\":\"unilateral\",\"payment_type\":\"instant\",\"handling_amount\":\"0.00\",\"shipping\":\"0.00\",\"item_name\":\"Subscription\",\"quantity\":\"1\",\"txn_type\":\"web_accept\",\"payment_date\":\"2020-02-10T11:06:29Z\",\"notify_version\":\"UNVERSIONED\",\"verify_sign\":\"AP0qMsOXStcy400hx--0QDri3uTrAUdNHe8D1Jt25LOnEi.tFDqRfgb4\"}', '2020-02-10 14:12:09', '2020-07-10 14:12:09', 1, '2020-02-10 14:12:09', '2020-02-10 14:06:21'),
(25, '601581334783', 389, '6', 'Fox', '60', '6', '25', '5', '60', 'paypal', '{\"url\":\"subscription\\/confirm_payment\",\"token_id\":\"2d007a25a909283205cb2eb7f07e5101600f14b53d1bcb9cda10173e14be44c4\",\"subscription_id\":\"25\",\"paymentid\":\"7Ec3GwZfZ2ipQP\",\"paystack_id\":\"r77Ll5FC4j6EmX\",\"pay_token\":\"303\",\"pay_amount\":\"225\",\"pay_job_id\":\"14\",\"waveUser\":\"211722611476\",\"for\":\"subscription\",\"type\":\"return\",\"mode\":\"paypal\",\"amount\":\"60\",\"pid\":\"3TS7qQ9PBsbjg1\",\"payer_email\":\"raj.workholics@gmail.com\",\"payer_id\":\"5NFKEW2TY3TLQ\",\"payer_status\":\"UNVERIFIED\",\"first_name\":\"My\",\"last_name\":\"Store\",\"address_name\":\"My Store\",\"address_street\":\"101,Vijay Nagar\",\"address_city\":\"Indore\",\"address_state\":\"IN\",\"address_country_code\":\"US\",\"address_zip\":\"45201\",\"residence_country\":\"US\",\"txn_id\":\"0PR32532B41204747\",\"mc_currency\":\"USD\",\"mc_gross\":\"60.00\",\"protection_eligibility\":\"INELIGIBLE\",\"payment_gross\":\"60.00\",\"payment_status\":\"Pending\",\"pending_reason\":\"unilateral\",\"payment_type\":\"instant\",\"handling_amount\":\"0.00\",\"shipping\":\"0.00\",\"item_name\":\"Subscription\",\"quantity\":\"1\",\"txn_type\":\"web_accept\",\"payment_date\":\"2020-02-10T11:39:49Z\",\"notify_version\":\"UNVERSIONED\",\"verify_sign\":\"Aw27tHfcYMtMlvL295qTe7aH2MUEApVuQZiRajHNRdZ1csZ2qZRYnRXx\"}', '2020-02-10 14:40:24', '2020-07-10 14:40:24', 1, '2020-02-10 14:40:24', '2020-02-10 14:39:43'),
(26, '331584356149', 344, '11', 'test', '80', '3', '0', '6', '80', 'paystack', '{\"mode\":\"paystack\",\"data\":\"{\\\"reference\\\":\\\"lTjRVEuIXwpO3b\\\",\\\"trans\\\":\\\"562807341\\\",\\\"status\\\":\\\"success\\\",\\\"message\\\":\\\"Approved\\\",\\\"transaction\\\":\\\"562807341\\\",\\\"trxref\\\":\\\"lTjRVEuIXwpO3b\\\"}\",\"amount\":\"80\",\"token_id\":\"cc8f1b11f836651a346ac5a055b029ab8fd74a05511332eb4fd0e5e2248fa2ce\"}', '2020-03-16 13:56:15', '2020-09-16 13:56:15', 1, '2020-03-16 13:56:15', '2020-03-16 13:55:49'),
(27, '631584357417', 344, '6', 'Fox', '60', '6', '25', '5', '60', 'paystack', '{\"mode\":\"paystack\",\"data\":\"{\\\"reference\\\":\\\"3Tg8HTJWYvNn17\\\",\\\"trans\\\":\\\"562837212\\\",\\\"status\\\":\\\"success\\\",\\\"message\\\":\\\"Approved\\\",\\\"transaction\\\":\\\"562837212\\\",\\\"trxref\\\":\\\"3Tg8HTJWYvNn17\\\"}\",\"amount\":\"60\",\"token_id\":\"cc8f1b11f836651a346ac5a055b029ab8fd74a05511332eb4fd0e5e2248fa2ce\"}', '2020-03-16 14:17:14', '2020-08-16 14:17:14', 1, '2020-03-16 14:17:14', '2020-03-16 14:16:57'),
(30, '581587371732', 344, '11', 'test', '80', '3', '0', '6', '80', 'paypal', '{\"url\":\"subscription\\/confirm_payment\",\"token_id\":\"cdfe7d901395ef7039bc84bd688ecf838eb0d9881022f05ab4a8fce25dbf8e59\",\"waveAdmin\":\"1471436678\",\"pay_token\":\"13\",\"pay_amount\":\"21\",\"pay_job_id\":\"21\",\"paymentid\":\"N0FG2uyU4669Cw\",\"paystack_id\":\"EOQ5XcvXHlGxkZ\",\"waveUser\":\"981686315672\",\"subscription_id\":\"30\",\"for\":\"subscription\",\"type\":\"return\",\"mode\":\"paypal\",\"amount\":\"80\",\"pid\":\"N0FG2uyU4669Cw\",\"payer_email\":\"raj.workholics@gmail.com\",\"payer_id\":\"5NFKEW2TY3TLQ\",\"payer_status\":\"UNVERIFIED\",\"first_name\":\"My\",\"last_name\":\"Store\",\"address_name\":\"My Store\",\"address_street\":\"101,Vijay Nagar\",\"address_city\":\"Indore\",\"address_state\":\"IN\",\"address_country_code\":\"US\",\"address_zip\":\"45201\",\"residence_country\":\"US\",\"txn_id\":\"33K86953XY8445401\",\"mc_currency\":\"USD\",\"mc_gross\":\"80.00\",\"protection_eligibility\":\"INELIGIBLE\",\"payment_gross\":\"80.00\",\"payment_status\":\"Pending\",\"pending_reason\":\"unilateral\",\"payment_type\":\"instant\",\"handling_amount\":\"0.00\",\"shipping\":\"0.00\",\"item_name\":\"Subscription\",\"quantity\":\"1\",\"txn_type\":\"web_accept\",\"payment_date\":\"2020-04-20T08:35:41Z\",\"notify_version\":\"UNVERSIONED\",\"verify_sign\":\"AzV2n3El0ruB4GhBC0woccDy6xzAAS7Be46x8-3OmiAnovxCl3Rm8xHl\"}', '2020-04-20 11:36:21', '2020-10-20 11:36:21', 1, '2020-04-20 11:36:21', '2020-04-20 11:35:32'),
(32, '291588571762', 399, '6', 'Fox', '60', '6', '25', '5', '60', 'paypal', '{\"url\":\"subscription\\/confirm_payment\",\"token_id\":\"e637e45fea2d3124916e17b8ac3f7e707bd046564b19b1093ce375b2ac0d3866\",\"waveUser\":\"235345687298\",\"subscription_id\":\"32\",\"paymentid\":\"tyeKjzSmY8skwx\",\"paystack_id\":\"exNRRqBFWXVZYb\",\"for\":\"subscription\",\"type\":\"return\",\"mode\":\"paypal\",\"amount\":\"60\",\"pid\":\"tyeKjzSmY8skwx\",\"payer_email\":\"raj.workholics@gmail.com\",\"payer_id\":\"5NFKEW2TY3TLQ\",\"payer_status\":\"UNVERIFIED\",\"first_name\":\"My\",\"last_name\":\"Store\",\"address_name\":\"My Store\",\"address_street\":\"101,Vijay Nagar\",\"address_city\":\"Indore\",\"address_state\":\"IN\",\"address_country_code\":\"US\",\"address_zip\":\"45201\",\"residence_country\":\"US\",\"txn_id\":\"3M730291F7903674X\",\"mc_currency\":\"USD\",\"mc_gross\":\"60.00\",\"protection_eligibility\":\"INELIGIBLE\",\"payment_gross\":\"60.00\",\"payment_status\":\"Pending\",\"pending_reason\":\"unilateral\",\"payment_type\":\"instant\",\"handling_amount\":\"0.00\",\"shipping\":\"0.00\",\"item_name\":\"Subscription\",\"quantity\":\"1\",\"txn_type\":\"web_accept\",\"payment_date\":\"2020-05-04T05:56:12Z\",\"notify_version\":\"UNVERSIONED\",\"verify_sign\":\"A1CVNNuzxC4M9W1C0xzofRchPGbjAMeJzzceCzMiT1-SdYZXvOb5ePyL\"}', '2020-05-04 08:57:13', '2020-10-04 08:57:13', 1, '2020-05-04 08:57:13', '2020-05-04 08:56:02'),
(35, '391588941229', 399, '11', 'test', '80', '3', '0', '6', '80', 'paypal', '{\"url\":\"subscription\\/confirm_payment\",\"token_id\":\"8e1283280b1621437b82a51a8f46177d60eb78fce0cf5c9d3d7eebf2a48e8821\",\"waveUser\":\"235345687298\",\"pay_token\":\"945\",\"pay_amount\":\"250\",\"pay_job_id\":\"29\",\"paymentid\":\"KktngYkn8qaHfn\",\"paystack_id\":\"8b9M1LuK1ixptV\",\"subscription_id\":\"35\",\"for\":\"subscription\",\"type\":\"return\",\"mode\":\"paypal\",\"amount\":\"80\",\"pid\":\"KktngYkn8qaHfn\",\"payer_email\":\"raj.workholics@gmail.com\",\"payer_id\":\"5NFKEW2TY3TLQ\",\"payer_status\":\"UNVERIFIED\",\"first_name\":\"My\",\"last_name\":\"Store\",\"address_name\":\"My Store\",\"address_street\":\"101,Vijay Nagar\",\"address_city\":\"Indore\",\"address_state\":\"IN\",\"address_country_code\":\"US\",\"address_zip\":\"45201\",\"residence_country\":\"US\",\"txn_id\":\"1SM39584BP356324W\",\"mc_currency\":\"USD\",\"mc_gross\":\"80.00\",\"protection_eligibility\":\"INELIGIBLE\",\"payment_gross\":\"80.00\",\"payment_status\":\"Pending\",\"pending_reason\":\"unilateral\",\"payment_type\":\"instant\",\"handling_amount\":\"0.00\",\"shipping\":\"0.00\",\"item_name\":\"Subscription\",\"quantity\":\"1\",\"txn_type\":\"web_accept\",\"payment_date\":\"2020-05-08T12:33:53Z\",\"notify_version\":\"UNVERSIONED\",\"verify_sign\":\"AwqIV5ppArMTpCGp1bmYVg55ltUGAGR73kLlIzMf.uADQFDqS6ffG7cF\"}', '2020-05-08 15:34:24', '2020-11-08 15:34:24', 1, '2020-05-08 15:34:24', '2020-05-08 15:33:49'),
(36, '121588944103', 399, '6', 'Fox', '60', '6', '25', '5', '60', 'paypal', 'def502003ed43552bb1959b6a9293acdea8bfe7dca601470c645d4b021ee38baac4758c74d8349d258255c88815e4faf95ab8bf6c11ec028e838fa886d844943b760a5dcb1f4e2468fb17ccb93220d19b41117459260e5f94d3e5e19c5b17e2cbd4aa771cdf9c7c1669602c91a94a8cb9150045cc5bba1ad7941c1bcc23291036a4582fd0e54b8aa20b9f2e052955702e9c45e609862704b0f33991ab566b3cd1be8fb389a356c2588749484be29b3d3ac22ff80c40e102f02e2260ca4709bb8349aec99c2e0a8fafbe42be98f63970ec840e3f774b827b9e6d1264b4b6486a4006db9e2e548d2c672b36ccd9af93104ec09bdd6c4357688487eeb4493cf736151bee1182b71ba1b5a11f1c4782384ac818a6b5524795f440c8524a2207110c41d957cfa9ef7a5ee8601398b15de5d65515f9738510d0b265ebaeeb97f38f14d10e7d09672b4804dd2071e386226f0b768773fb1c259ca45ab8fd6c226158f86daeb51fbe17bda1d8a16095901ed5e3d68214b735f19cc304d49eb3275bad16d7ea47a85bc9dfb48a76fdcf791976e37d697bf753f53e10f323b35a43344995f35141c9d204983fcf69325a983d43a4f86f0c6d6786fb03f7a27da91013d517d64ff20fcadb7480ab55fdcaa7abf0f572a2a7735992ed2ec19c3e7846c123855c65b8f6203eb614f6d497129a43873d5576c7a9202e51438d6ef04056dab6f9ae363bfeb1dbb6eb2f56c4bd35c8b02b5d8b14f569e166c77cb213ed151c71791c750582dbc38bf351db3ed9298663a2575d8f3286d00cd6fa704bde42ef0839260556cab97261026b840204adab7e90898930cc4b23097bd2c43794c6b51ea77fbd526dac78650c395e0ffa1026998a8d41b86af413439474dcf9dc348a9130afdae8d2c77be59d862e165fb9cd004f30de5fcb36180f483412f8be8b3760814ac963743eaf1bb95c6bd6f4eff3fada9122d8f9f8562872dd3e57647e78c8ac21867532ed8853a54454eb2c3d548eb59ad0b52cd9d2bf2d5eb62c1126c24b8db1be4b8f468976d4a37338dd8536f0285505e21680a0f9c622af4ed899181b75d725b43a8ae00a3d0beaf107a75eac8e095a09f760cd5abb08d94ffda35eb9a28f381d0a103dc5981c671b5a4686d26fdd3ce7f5d438e7c6377a3e88300c8a01b67bd4ca3a754bfa31646d2da142e48423d73dd35325d3a0cfa35e6fb303e05ee3d04626d8728d158c788ba9c4c36a73d305a23d43ea00131509977627d9ce27cde9a20ba9160d994f60955b50293af070306f81c0dcf94a78d17bc060566888de7308c2ee6132be27442629060cce27b47af51f3fad8e01e06ee487125d07d647a95f85edeca6b307a5d67fcdf1a2c1e4f8280d82909314d898fa644fcdba86ef91b8c5ecf7aafdecc6faf5c7daa2d9b1c73197e09963c3fd9bba89423be9f3774c65012dc6fb65696b35c516ca9d461e1048d4f35658526ed84ba75e4e8cb7807c3c1dde2aa55cbef2b3079b61940eab559d75b877e7dfae2c06e3481c37a23c374eb15ff5439488124d275c911bbcb256b4601528e07e0d0f0690426c6f85e84670c7d80913f50d87202a5eddd2451c50a8b681f8c6be1692b52f3efccfcd8a99d4fb5aecfa9858fbd4c819e1cbe73afc2ef4e19fdb0445902abd12457c647fd5f943233403cb5bcfd6dfef73e8a2c150ead41a64e0d8047d59984d29b297e776f5500d52e01e05b85851ea65f71b590', '2020-05-08 16:22:24', '2020-10-08 16:22:24', 1, '2020-05-08 16:22:24', '2020-05-08 16:21:43'),
(38, '251589894904', 399, '6', 'Fox', '60', '6', '25', '5', '60', 'paypal', 'def50200b6956ad27440a795d2dc10bc20e51c0459826a8fa845713f829c60d303e35f281d7bfbc958a28ca291991d8bd450652609095ad236641eaa8ed4e263e91ccfbebb2398233f566e5889c2d563cacf366e3946edd10e6aa9f2ad26ccb3fcf3f1f74c3ea7376aa295c2af9355f42edcf6a9b08438764f46067430d0bc4540249db3c9c1355300f1a4668c602feb501983c4f8d37780d5e93d81fdbb73f2805ea8e6c6a10dd6546d740dfc7dab8da2ab0db2f9f14fc7560bc0abfbe986dffdffcf2e0c5492e2d8837a8acff147ff666cc11698826ad51bfbb5bfbd2d95774ea62e7d1218e5e01dde66fbac524d70bac4ce81f4d85ef665e0a9f616284c00a27e82a6b0c8f242a0fad14086980be69b704b3f49a7bbe7e39492a35960cb95006eef4620d88b6a4ba4e8c70687c4d28de2121e488e9097242bf217f5ef24efb6f175c8800afec7d5089accccf071b0f297e7554c9b246be48e91f5d98b3cdc9eee65f50dc7cf9e9e063fe0fb7659db55087c1b8d352a973ddde43a8d26a2727ebed71e0ef9135930f26a8b9544a143346beaa7b0e598e569d21f5d7c725c1974bc78a257bec5fccdeaae5817684db267c96b6f5dc43a472c1f8b7e8d0f7b2cb618a1c8793dbe0158b631c863d66700f30c20f78d0212312dbd7daab8e8f7469e2d05437910f32d3f475da9caed49c9c35761070f04844ba51e0dc3f5868330708ee37a0173255bb80ee55b35de158b43d9994eb3784fb69633bd0817e72248cf4321d257bc08370f6e5099a5cf70c9003f06ef26f8fb4ffb61b5da257617307ab76db7c7c0fe0b225e45bf2d804bcda78e793e75b6050b3c4354133a0e90ff51e0d3eec1751466b4f2849f6eeaeda691a2e03b667395036efd3f8887d6f599f3b26d90a0ce110fbe05a6baaf2a3221f3314ee43f4814eee3ecf03f3ec43980193ede05591540ad8357119fdb27fe610a45858315f1f52467d3da82a8e583808e2b91fd3c4971db48b66a0a171375abe309dec0eacdcc496ab0a23d5b49246f1b68b0a039718300f6d039dc61a12844a524babebcda1e2bda9c4a56834fcdd3e37df1817adfa913e15916ec4fb78de164bb76471fba46993aeb40a37a8825640ff69df162ed9076e64cfab9bab83bcb84b79d18d2f339f1f22c19a9ac22a1aab255e14c37c2fae3aaf9c4edccc558f858c06ed589d427f6910506a1609dabbb3b8f4a0adf5bbdc5c8405f72089de5c4482f6cfdf30cae98281e81bd71d79bd487b92e41b381642e464c5ff3481bf9efb078fc79c3b2c6cf02a9843d1f77654e4d78162062ab45b28aa40f392d3bed53c6d721e88cec8023334e3021ce8fea738de0ad90b62c09a1a9c1c17e10a8580cfa4b62a7909b8e00d56bdaf4e49131685ec57743e4f7919290698db0d8fd1f40892922ef0d585cc33ba68a80d44b37b3e686c116f21af91a268a6da755d0e3bce022067c17b04833f09e2366a23ee6e5987bdcdcd03fe2d8c5817050a1675c85f018ab531ebada94132aba22118509d6d6f9bfaccabaf71815e5fc9bf5a43a9f2696ea0e2d81cf2b4390d3f9d9f71299fcd55f6e65b0cae15b0dbd6d3cbc0f725fcbb27641e04f34fb406ca12e2d295032766f9f7409176711d58290b3fef9aedbf594568fa79f14aae0', '2020-05-19 16:29:26', '2020-10-19 16:29:26', 1, '2020-05-19 16:29:26', '2020-05-19 16:28:24'),
(39, '461589954702', 401, '6', 'Fox', '60', '6', '25', '5', '60', 'paypal', 'def502006380e0f7b953c8c486163aeadec606e9bb8b8adec60d4d7ea77621dfa401fcc5aa9d44be1e6d82434f6d6a05adc44e0444c5a9e0e89842928a147748fa8b52e7bc3d6ad7d18b7993579ee3741417e9dba2cc50ca5b9e62297400f8b570a4b854a3d95a74a33f9cd5ef201679d93c41bf929ac868fb778976999906a158c5ffc43c656f7f3ef7287829101c21e78e7455454ee61c202aa20d77c16553518a1d070013f5a8d83d14d9fae404e505b3106ab484389ba81199c23f15c86b7a8e55c77165e3682aaa848e3dde9a5e024b0ae8a5bc33834c799cafaaef057dbf47bea64da19c4a06e0222fdaf354839ea82c098cd68087e0bab976c77e4d29bdaa994f7deb1beb0b616c27b4f39b438b85cbd9386aa636ded8b47cf7f9e4ca844f61aefeab08a9f2bbea398f0ab17b80dc57f03ade32ef01d4268aaf3a93e8007c3e16806fc63b855b2c52d910f22d7c1e199f7a0ff9112e21c92a14bcdb1df82498d01607358f690a455b4d595eaeabd3e399554b405e3d7e3aea171c9c4650d3900972acbde736c74657829dd1eaf72d5b56b0156c97c74d04027f99f6d0eed9d1fbe0ca28686e87eca49c12649ce87f997153e8cfc50075212e1c1480ffaedafc72c64680ed809942e7a5e595bff1a735cd49b24409affdc2d8942e93c2b2933cfce9ad871a66d22c4c7a53108eda66e5bdc8c5f7b42cbcf47364e188ff98b4d271091e36c31cc805b44042037f7140fd8b3f3bc835209300a568d786b1cbccedc60441903bdd445dbf3df5e645d7855ca3e07264fe767b88acd7a93f6b5ebbe1fcaca7931920aea9743b7716f739a66dd48fa4c83a30b0b178cf63c2f9acb99dc5340bcca1dacc9d913e0fe6c2ea1b3e426e24b239bbb19dd8e2fd3f46b0ddb0b394f7bbc8410dbba47c8f80e0d62e9f3d64ed44e29c8f66c2c1589e07f0f1dd7c261cea9050e0ee772d7f0c79199fd2a2a3724ffb92bf26b7c26d79e5b1bf54bba625f20205a84739edb6b1d7266f8bf12d41f18cde28ceefc03b873260b5ca11f003dc6e29c390ae41d59c5e5a4dc6b6be196d1319e50078158f1d8d5653906f0a6e8b99125c4739bc7f62e72c38904dfb318583ff86462eb58299e46125fffe753485341f26a5405920adaf1a306ba0ed03fa6a526f7fa7a84593f4317bf101307a799edb5099402044fefd7fcdf26572262d5629c4c5e01a10f424ed50114424e99313379893b9b2e632a102ab873d796c7ae9a61e887c63b490863688e3c272e22758e4059e3af5e927aa87aee9f3afe3697d9e62af93eb455ea2e3b27a6ced56e9a49f170eb37dbe86b92dc5285c2112ab686555be86648d871068ae19ded842e58767abd981d496dd85e2f2b3a7a15b081ce32650952107cb5e7698f78c6880aaab88d8a76403162657791b036311fb3e496c4ef2fbdd39b61cb5129da932a562b6fb108adee1762e14bd6b9ed1f0e5249902e02de1e78cd0f5d4a0cf2f1b297a5f73fd52ccfe3ca64e00de96032aa9ec6efa43f0d12655ef967ab7c801a4a494884f3ed3a83c7d6e69e3d917ab0d266604b3c05e4af02c5494b8b29146b98d6f9e118e8f4d73284634fc337f787f7a48cd408d79e428a061a8d35b0cf4b7a38644a2b93d563f4bd50e42468a3f251538436395f02bed414b395f9ba4', '2020-05-20 09:35:05', '2020-10-20 09:35:05', 1, '2020-05-20 09:35:05', '2020-05-20 09:05:02'),
(40, '771590053453', 348, '6', 'Fox', '60', '6', '25', '5', '60', 'paypal', 'def50200a040c9c2f473ddaa98a594d20d2ddaa17fdc21b72469fd73df203e5e9a5bb7ece5629a537d14429403519b69e6f10bda3536a809cd93d60d87be1bd7fd7c544446c15648e62cddaf32c11b16f6eb0573f66fe9e51e7df82aa24eba410336a3f2bc51c593fe86d9f5957c9d197d77059aa52bc07a57e27004137e57a3093e621e8d8a6905035c1d8ae5477408107568dba237ecc97714c145bbc6fb56690688a7b8782398781c5e1f93d8f5dd57230946832fae97e5fdd3668332e7cda3c6d8d8bd5d3abc347c950b10bd912b9c10f1a9577e74c6b8c35060c22f9549f7534fe4319b438142c64520590eb8ded750f08ffbfa5e3564efad7c9cfe8fe04c7073fce8bf110dc7083b133146836fd1c5567738ceb8f12407c182f5f24841f76cb07cfb8184a997be08071410c6c22315b296e4bf2475ddbb6d9998f6d99861b9cddb4bfc2b9ec54908d452cedd1d28ade0aa702069fa825f3b01bf63e5e0bc17f986bdf7c4e4378a2279d256c7f116fd7f72fd0344892faa6f66336b1a9aa200915c0b1e0ff1476f39f9513f14c38ac3752db343c81a2d8f63804d9984ad3e120c4af6c9a4b60cbbf40817696f12f68a7cc174d6454f33226c83ba40105c219a36fac943f984512f9bf954c1ef8581531b89a135a4ccbcaf99dc5a1f63a102ebe02f42b9cf34cf20dacfe73749744794b1545ba073da7b6f23396a2bb5c142159a477e632e1b9d9337031e189f881babcb5eec102a3694bba181c10035449d12a4f79a7473ce28ebbd887da5c535d81e061a36cf394bda33564e6dc7a9bd5eaf5f30305270a532ab423d2552a07c6db88a03a9efbe14d5fae237646a4c68a757e22fba95cb84a39361900e94ac5bc5ecd1a621581e872342a7329b7684b8b4fe5c9adc9e17e11ac3c6112fb2757d8df29d49f8e5c81a7e7b6355927c275da513ff45eb3535fd53904c9a4671d013a57eafbd9cb97f7486e69d093a8b05a90bd8e9f3af5dd9a1615956ed214d9d85ad3c7244e18aa973ebc16d97680c7a2d9a855181634ddeb997917d20fd5b4d60b4bc80435e7888d03e7b87c3df10a90ec7ec631798c3a19d175c4fc45dc707e692735dc28e1c7ca308b37af99c62953e8e206cdea03eefee1e97e1c0313199da235a64de205df27e7ffa55124d1e313799bd84d938423fadb7dca289942382b43222b4af40e62f5432de8b9fde2531b51ed8a0dd9c59f43d6eac365d13b018ec412e2dd8c5265b603474f216c251f52f9a21910a2fb0e3286401ce68253154fdecddfa6176e7568330e662c1e585fcfa38cb34acbf316b46088af0e608601adf1d0078a3c8297c90107add94f3f2ff0339a2eb8fa0c60dd667558868cab99fad543dc4e8da2082862cfc05f4a5286a6990a98c625e440243b56d77e9bc639445306862ecd589ddead1b05d238b3aebfa2942dd39481f5cd9d54d4f3c1b7b427d6c9eb0edf7ce8318d64f9fab3b0827e7393ac3caafb39deb2e7b1c245b081f071acf3f43ddd7b14d555348031a65ec874b45b99a4eef0b6d5b03a9b4ff63ce7f2ec273fb23f779418bfd2f67917a896a0324d1675c6530f65d3896dd8fc44712a7619ecb4e18f5c01585626f4737b224f942b45cea4eaf99bf2b40c88be8cb888f403656a44bc4919fea', '2020-05-21 12:31:46', '2020-10-21 12:31:46', 1, '2020-05-21 12:31:46', '2020-05-21 12:30:53'),
(41, '541590055087', 403, '6', 'Fox', '60', '6', '25', '5', '60', 'paypal', 'def50200efa98d144cb33fae66184c197f2f39ec483d6db2d780c8010503b0bb686fd0c7c1b2d989b0360a5f7b6008aa9838eae3b3a81423c1d4a3bb66e41d32caeafa463ac59c5bfc207594bd1ee6e19d169947d498956c35ceafa1e4e83f2ddf2b5031b25574db69e1b30173c719f352336901a93e83d3116a31853a2b6038471b6f00446ede8a38e9d478edf2cde2ae2c0e21e536da4b997d3404468e3ba8971ce3e17b259116042e1359be082979ce190cd506443f6d18234f3ed0377774c922a90bd242b4f0935b09338d7f51e3dc19ce884abcf994cd2d7d48e2d171b486348d600e653116895b8399167288d9c5399fe440f4990f15f76daf2b62b0f01ae011fe955e70488b02a1f9c1a41687e2bd334ab23aba2d4278f3251412ca5e55ec9e075c4e4e7a93d275dc7240ff76a4c74ae26df85a32b0548afe3a3d5f62fccf318db50269a0949542dd869a7ea959e0137c4543bd40b32f6584dc25a3895fe5d0fddd21dad8cc305da1ea41a389eae903ebffb4907751a61632b73e7f963f9b22537b81bc4b9924ef08b55c7424218f17614e62ef1e105493140b49061444b5b5111115806e850ca861787924a0c32e69c92d4654ec362e5bfa1d92b5e28a226d80836d30974a30842c1f63b4076261a3540f3dc32be57fc62faceb389d8d26bde20c3507d6b3ffc3afd6e996d261ba0e810fc2377bc5e92f3afab676c84833d3fef77ae469ca56fd1d25cbd7171e7e155a3d03c55ebb2260a666a39b595211fe29b1d1b99ee8d049ab3363c75db050d30990df0a6beb6b3080954463151e2eba40e4d9aea9da1edff535fd6d5f5953e8c2ddee031b2c48ed1db3d2b2d0d7aeec4092ca477ee6ffd29ba831600d5ad65db1d0bf0649b7125e123dd75345ede746638442a2d790baa6ed82acc69ddb6615d25540e9d660a61cc81c650dfedb743e356df1e55e091194e2a8a9e792f79aa053fc2d9b3dced474a9cea655a0291f9e3e8cbce4b09d8a6938352b1d78a9e4a38a9346ebca1a4a76a5036ab9e80c6320688f4624bc8e539f3278930168ffc4c06ac7dd1652ee28bccfd2cdf0dab8678b6b120fca4880cd12333fd4bc235ce89a4e6d543b1ff9c0f5785942632cac39c3a151d501a9e818fca3da9c335c8af2dfbec9d81cd49a42fab571c1cdb4215d9e011ead070e294f1ae90f43e31ee880d8a0f0b8d2f51c6d06879a0d9db4ffdc38e3bc613a593764c680a68b5680b6393a994931edf70aa55dc53c3be349fad51e27832149e99642b5454aaf092dfcbb5567623eea913c66f87f9a1656aa8fb344c0860b39fe1df4df2dd80e12def3da4c5fc85adf93b10bebbcef46d89e6bc107a710c3b360c976d8f2fdf6afa9fc675f526163482778b94f06e9f9e6a628899ef194514d62903d987a5af2a8d07f3cb56dfb908f0e985987939fbcf55e11313bad1aa62ce13881762996b04ae04a964c5cce5ca5d996ef2ae2ad86a7ed86d131c95515a71dec6ba6b50a6811a8c2c6c5b1cdb734c1029f381a1c11f30e3dfd0541a22e95ce1a2b796b71f05bb799d5d347fd32d83956b506c7d253e38489a9e3899c6a1cd8502a48efad3acab75c53282729ca2901bdf62d353c1b4b396a282257d8a65d46e1e51f100efc6cf10450ed0ff6a06f3f036c', '2020-05-21 12:58:55', '2020-10-21 12:58:55', 1, '2020-05-21 12:58:55', '2020-05-21 12:58:07'),
(42, '771590058496', 404, '6', 'Fox', '60', '6', '25', '5', '60', 'paypal', 'def502009e1da2f61d5c3a6eb0c0d6506d7caf2c4a9de8853dd4f1be6973df4f8da80fe0cbdf2c4395ff5c3ddd60cba66a4f680ffce0d8b1f1106f463df974a005e57f3a65f79d4eb60a29019adeec132d09f29e1be998fc0942c3ab92933d9422004d97e78cbd6635dbf6a221acc2ab43fe9c7115046375d143fe610d427b2fc81ec4d20bd175cb06f30fc2acd07fbc5b7eec295576bdad01df8f490597190671929a080b5e5f028fc8ab96b34248767ce8e4fb5f1ac1333fba768d9beec223ba7b4afdcc6e5f3c7d1e6fa0e1124d0cd29bb59f5d325d781ff695a2a7d7149805850b383b142ff932ed9db905506b3d287d6fa904c23a1587318177eefa56ff5b9e412e1914cd82b6fe6ae7cc2f5ee94f4b04fa6b1e8c6d807cb68abae5e14620d207b8bac9e588dc1265b8ab9389985c45086fc33d1e7465e3504755931fb77aa56ab9e91e993628dc5733355e9d1edb301b6e794b15b5e6d82b98e946bea6516774ac16269e9b2174850caef41f05123cc4a03d3fe3b62bdb3926a8d2e64b8e55b17841bfdab46f98861af2f145acadaaed6b213e339b3795b6f5dc162a7c169bda99eec607f72401d13c6472f7f058a897f3b4ce2d72af34e352c356c26199b5369c08a0cb15200bdfe5671892c15a5f6ab6c4dc7fc120d08df7eb3167411aadb7bff3b3b440a3847543304ece98c397693a16fd16a0409ed6f6baf7956bcb57a57bbaa8ae84cc216129cbbad0ff3705313781f86cc4f03c12b52ec6d84b567604adad4aada62f060214d7ab3a53af9ecaa56a44b4cbdb6e04bc65fe51d9346b525efc058eec1e657c0369a57c27120a15073ef831842144872ea0f4def7cdf5010c2f2e80066dac9518ac25769d96fd441898ac12fa28a9151b61bebf4a1add4c7d82f6b7703b5f476353d892659e92252d3e8c612f5ebf64762aed2cd5018cf02ba2ca9b68d121fe9c3a96dede6c48763efd4f1af16d50879ba502b5d18f8463b7bacc7fc4cc758522092105880a3d5dc991a54a1f920ad211df05b91d6caee51f90e3e4a284db8d953ba48d1613b5b0367d93e74c95bf91a2d28bae96b2138d2a43ac55ac556ca87d1499b7ff71420464ede4b5a00861a23f95cf61e4fa395f0c8cfd3f3abac665315d7dd638e7ee26d21055a0337a3d8aec8987d2eac86b4b5c9cca400f205bee8be5787194ecf3e008b1a12f41dbc05f96da5a2d2e494d59e6f572ee36b66de824fbe42236176f01b5ffb9648a44beefe8775db9bbb604d9b43288d1f565820f56322c9f88aec1142f2601b2ce794dcb0b9cf0f7d97a80e4af5bf88c13d119033bcf1dcc9e9d7606b8884c86ed07c12df3ee8df79db9da28f21e684c09fcc27fb07e71bbccd3189603c863bcb59ef56d0f3df8cb152bbc5eee8c8b5c7c58620ba620c3ca359897ed1eb63427781235ebdf0682e127b6627cf7927145bd2f20bfee189b785917f01a388b4f58970f29208cf0fe7e4c9542808a01ee541897dddb24d78a8952d26aaf69f40c5cb641bd82be67caca4eeb7c0be4346859ad8b86f773b86dcd5f3be7140c8e4db2f73a9ebbeded8ce072b3dd78f0f9be00b141760f7493b853f08fab60e95f8b909533fb299c07ed3e0561df2050ec98844ee2b683701dc29c605f8a573d1fdd4bc4912daa7ce62fbb86871283', '2020-05-21 13:55:46', '2020-10-21 13:55:46', 1, '2020-05-21 13:55:46', '2020-05-21 13:54:56'),
(43, '251590359393', 407, '6', 'Fox', '60', '6', '25', '5', '60', 'paypal', 'def50200e552531f78d5202fdec08104375a0029d34d42d427b3c9e388b38f93f3bcfce45ff6ee4d2e6162d0346f03290e182b456c054de4e497abb9a6d51048ec95fe27dc35295ec5535c96dfeb636183d837245cfb2ee20d5f3d352a2e1935c6f704c27daf9ddcac336f344da9f76d03a2f32128b47b8fecd5fc81b6f8e06522ec16239378810b97b3a679acbfdfa1fcec5d9c37868d65a2c4443db812995a7ce796277718cb557f5852d17cc1f7a3f3c28a3d25f856c572c5c14d2676e5a465c106b64a1f6106e27cc06fc92e9336f21c2947a70e5f8babd6031f8b8bb2a89c485356ac8d8cf93053b23f0f10f72e5d8ecc47695f1845b296159aabe928c3a984b09f5be325b7f3d0a56eb5cb5b08af6341472e0029ac9fce88e941e562a656f175ff7b47c224857ab4c03d00b075ffd7efc7aec4fe50145a2d996cd2123fafbad151801eeced4047130c78add1d766d76483e2c5bdbacd95322ad3d1076ea5dd2820b9d1d1bd8ec97194d3ef4a92fe92c3d62775baf461a67633e3d108a7b661bd4bfbb2e5d460f5773c97e577c2cd7c6a17970d9458527c4acc92d2872c91c08630c836eedae5d0d7bdc2e873e300d87ea9553a63be75a59cbfeab36175abd1c064a1ae0ba49b1460cfd009e76574e2a12e8f5b6aa425e012602040f8d2d182a29f6cd566ca2281e4efdbfd6cf887761470497e2039c5fad20718efe8d3e1e0ee33d92a05e41e3bb8fc2d295bf0b09a4287f71bf2578901a5b4c95373085346d329a9bb06b5d298e5070283b73a5ddcc0f74964307eb956ad26ba14ff5ebb56be2aca6a6aa71fa913cfccf0276cf8a32fe1594de45c416b03378a777c6d0d83b795b6faeeaa4bb28a0a7d1b5a9cb18a4eb67e1cd83c3255ff1582aa0d2b70df01bab8a7add091bd3b8fae16b7bdd0680a78bc0f8c59fec65e404cac61290b5241a997979de821f721bcfa91316d00915d5a7581680b160c608862eb2f13f3522021d0871d4ff6dbb1a06944fd9f0fb768091720c9803c1a55b3f33e06c19c6544bbc0f4a46ab47077ff17b305388b0dba933282efadb10fa7161db8bb651adc150282ac4aa020238a61ad1e3d43a2648ad725e667a67f6b6db4f108cdda7eaf9a0642d7601b771d2d909b048eeb52df0661f0e09e69a9f62300ada22192bb4f657c9d84ac37940fa157500e90be7e61c0591822eaf452717b93186093bbb2d482800ef22ca47e6580597f5a250151b3cbc9479ceef4ec5d009ad2e645bf254123c02af1c02a2f9a5b4ae841ad22e6959c7bae9322a513035d908681a1893df7fc5fe98721a28adccdb51fca5d314db5518a320a36bb2db0c5a5d128d69f266689c70c61715a917fd79d55dac97a3c44f8edcfa2308498a6a15d14c52a3450a386decdf551e593c0fcec9bc3e90d5f2ea988b3ba4d50c50226077b2dc3c6f94f337522ac643aef4280e28ba78ed5b01c3ee83e9644de16ab68bde4f31d33d7f05d3c1a013f7dc8143cd49371dbe053110f568939d2e32cafb56623b5415e9dde781f153ff6aa0510de9d0ab3ca9468a68f97cdbe7330535ad3bf8bb43e7e3e80010217802b1a1e120b85281f3c144ee17f3d5cc4cefd29041995e28cfef2ebd594461c47c0e6fbc8dda61f1764053fda130708fda3c02b84', '2020-05-25 01:33:32', '2020-10-25 01:33:32', 1, '2020-05-25 01:33:32', '2020-05-25 01:29:53'),
(44, '1001592440456', 407, '11', 'test', '80', '3', '0', '6', '', '', '', '', '', 0, '2020-06-18 00:34:16', '2020-06-18 03:34:16'),
(45, '551596952902', 412, '6', 'Fox', '60', '6', '25', '5', '', '', '', '', '', 0, '2020-08-09 06:01:42', '2020-08-09 09:01:42'),
(47, '591597635472', 414, '6', 'Fox', '60', '6', '25', '5', '', '', '', '', '', 0, '2020-08-17 03:37:52', '2020-08-17 06:37:52'),
(48, '1001597636719', 413, '6', 'Fox', '60', '6', '25', '5', '', '', '', '', '', 0, '2020-08-17 03:58:39', '2020-08-17 06:58:39'),
(50, '501600071664', 445, '6', 'Fox', '60', '6', '25', '5', '', '', '', '', '', 0, '2020-09-14 08:21:04', '2020-09-14 11:21:04'),
(55, '851600756308', 448, '6', 'Fox', '60', '6', '25', '5', '', '', '', '', '', 0, '2020-09-22 06:31:48', '2020-09-22 09:31:48'),
(57, '641600931576', 344, '6', 'Fox', '60', '6', '25', '5', '60', 'paypal', 'def50200f00e5616c2105343ab09a1c53c97ab064a5f6da1f1c8b63110f48097c94c36fe99a3f200974e99248b6ad3d02c441b39b5fe18000c79ca3a849ce9a86b93906c5de8fee19bc13bc18ad8d03098a5a226499551a8b9684d55bc98c3e56f70329c8f90d11e80a4ae6718740bbaeeb9651ff8055c802c0962fe1f417575f9b4dabdcbd5242cc93569b9c3ca4a6e825fb61ad1ed89df62e85e434342e3fddf846a2cd7f05fda0af7c3d5db4c7df6c6231a712262015b448277e62c0e17c8ca0dae27851ac62e389d0527fd6b08b139748b2743cdbe762522bbd01a57a2bab3b3b05bebb82e4405aaa8dda3ee50586264153a871b24002ea4378de8bf8f7eeca80fd9ba873557a4c1a13890e4b3abaa79e9a86edf5c2d101f2e72fc2bfa1f5cd66c796dde1d586391c55726920512cf7cceb42992840f48c702c4a0b5d22e6fccb09e3565bf940f0f96f318a3de8e111b5fda7080c332665c10749d1140ddacf4d382101e6eff9c6cb8696fd1351641c3c343df3876be885ea38c7416b714a29ba4ede06a0d5595cc825283ee824e0e61dee97123a78896d9852aa60a627a6f9678fba0f0588cb4356389f6800a133d93c17fd944f0a0244bdd822aac7d72f34d36bb3915693e030b9091623910cb252e1d4fd05be88582a75b3627022782f8cea5adff1f6504b71b42d06ee4242aa9ba72f67f38d6f36132a5d7a0d8902c6a8ca5ede01bf5710a424de591a8bf5aff670b8b941de3bc9a88a17763bb47b1e9be23600088e1fd52445879d997696934f2b3ad90678698a00f1a38ebc1862ae1dc78babc4e0d4e149b3d3aecd4ace62d42a038d7d937f529b209ca651b093e5336890a848a8a3fe43b2106ffb9833211fcf725804da4b82f0eeae518dbf2c58aace34da3480eb7d720298fa3819703654ca6af2ed62249f7a15bc458442be3489df4278dc6345425233322118fad762c6471496c5cb34ba405122fa3863c864e18a150a9f805e2b5f77986750ebc7ffeb6e4183b47a628c192949da9748bb10371b520a3733c9a01936266cfe4ec4285cbaaf60d9e20e9ca5840e42aab33108b5ef77edc060fa74d71129cfb8491bc02c8be00166645c0348268d47d500bc06e93192b0e739119d5d3d56f2d87d8598db13aaa2c75513526174be821ea25df487743908ae4c83396d60301ad9a9289b8024044f3e7a097b1c9e81457688ded63e3f5ea322c0339549c13e5a1989f2205e2455c59cfed2dd3287291d1f1c290d761ce57f27f6e3fc85f34a08edf707ca4e7a699a4b863a7cb1c92851c42fca3af71b25d00489397440422318ce48546b4ce33e6ebc601ea3003fd8add37b5f0c944248c3c743f12a59e2e53f3ca6428bdb305be11cfb87939f66967b5963e19874ce9e81e6957b5f8b0f9bac08f098b195e0d9828fcc3309e2e9ae89b726c7769467a3419ca316715c2bcfaf2e4e750c9c1c6db2ed4b9d59a46107808aea8abc25c08b8e6ada9804dd6c79db54ecc86569d7fed826984aa629f6d82ecf45d0c8b1468fb2fcebf3ca991f9d51d99b5ae29621c6feb0d5c127de30e56063a332ca1d223e1d498c5c203a17abffadf72170c5554f1e8a22a5d75ef832ca9c07e05cb9d557b1648eb6356e1b1813ffda8dd4fb28ae27a9a65183599b824401ce239b9a1f19d39747c2e3fa3855bd79c3c43f301cb12e28e49b51642e1b43993392f71fff90357157767d41c4a21f159307b55e25bc75839565c1f164ffe195c9e294e04abf2415411cf14', '2020-09-24 10:13:23', '2021-02-24 10:13:23', 1, '2020-09-24 10:13:23', '2020-09-24 10:12:56'),
(59, '481601377872', 344, '11', 'test', '80', '3', '0', '6', '80', 'paypal', 'def502005803cdf40e6c5ed4d2c9affd027ba8142cfb0eecd488c15cd78dd54236ef373bd84b3604b124d7ce3009b936ed4fb13bc86e748f45c6589a583d23d795e677d165b1d83c2c1974c194b7a13e487af54c0cf0e69a2b22b4560295bdad10d56495969f57bd7dd85fcb05a36c86ff70f462e76b36947cdffa3accbf93906b21d3abc42f01941b3df61b10a970a279c310ae817c0a725d2d4cab827c9d7e8d899008d8cabd1264f27661df8ed69117561449c7b9a3df2fead3c53ef86e15d0989b13251775f7a5dd1e17fa232a4ccf57a09e991236c4a13c33a240243b61003963fd0b7772577fa5cb36bae399b369d8df3ac3fe5d8946450087c29d1025dcb67434e4778c0f413036bb0b4e002a76de5f5430bf47befb90ae56135730e738e09b45fe88c2a410cc75b81913f5868336f0e71477688987e75088d619bcf04f672b82b91c8d988df5b22bb03585a707acbde9e40396bf1d8cb4fda7d0cdc2e57e31c05bfc0e815dc5f915808ffc8b55fcf3d1ff2a3885f5b8ae567a8985664b71df490489e6cb41ab0038cc3984c7a54ef7814c57230e59b9ac90ef44cc3e356cf47b74102a5ad75a4a0aa843f38e9c10e48278f0d11cfcbaa758e3c689bd7aa9d022a50c6e6ace944251b434b39bc6f6c514568de53ba6cc3ac29a60bbea9e01678c968df696cf990fbf9f0cdf061176415102ab6fd38ced7edd26a825ef0c3c109aac731af808e86d4d8ac817cadae42e979a81c0010fb742471f47f48f1132402a8a0f47a03a93782de3272028de2bafab1c80fe071183f0844365fedbe45518692044d5c81c87f21f214b14d8bf0b0025e843335d7e1995c1174b8172f5621ed7e250108a2e03d016300c243e8a7b4d3a983aed3222d9852ea2144c74e35beee09f7658d61bf058d6da222311f4b00a5c07c8c3a83cd3522f9a7abdc7f8748e1a605fd6a7b2e53283fff2011bf495082ab2ed38eb74b163677bd3063278b4b870eb4177daa9b20f3d556e257cd6efd5dec6309a820127225bad2947aba0b236d4b9b004908e383e2ed12f999fdc7b8244211fba9014e4fc879dae7e98f8e13419430cd864f8596c348ddc9aaa7546f5db52aeb29017151675f956927e6e771b69fefa39139ded44d1321e093c2578c44720f37f74f714474f0cd45a56bb22c593642b30ecb6f463025ba35a3d65d1d491cf614ccb7753577169b9322e87f9347a3028e68546448fe6b70c15ae77c2aa16e9b2527730a1a26e3235b324b6c72a7909ac0ac1b2837581b833b0f73b1a142d9e67a9aeb7f252c77c788ff68c2881d2dbc155428daea8b898b90f20b9f7c70e43ccc774f6d6b5b510b9db8d1b72de3bfc2270756b16512e350392b32038274925ca07487b8cb6e81764150c8f1105954a3f4da46b7c9f30d45dfd5614fbab685c3a48cbcd869d5f6ff4280d7e4a0d5ea9613bfa83c5f0cd8bdb6d758ea23fa8270143726232d2c211a35a14006ada95eb44a32ef932547590b8aaab7df86934aeb94e0412df5fd24fc8e4e28abda41bb4c44197cdac1f739b8067e27cf710c37decc70f0ca38173b6649ee7e093e0fea52948ead36472fdc6f39bc74af025d136e482a0e8e6a0a9c5f3ec4c03507a5bd5672124e3fe5a2d61e3323542e8c54eee441554fc9a770a665599a9567970a6b037801d5cbbbdeef2d68f0f6d811ff9bb864e011dd34d71126430019a11b92177499596c4eeb08ee13ae07046cef1f766f5847730e2d07c9992e17a31cf899a7670e6b4e4', '2020-09-29 14:11:42', '2021-03-29 14:11:42', 1, '2020-09-29 14:11:42', '2020-09-29 14:11:12'),
(60, '621601377914', 344, '11', 'test', '80', '3', '0', '6', '80', 'paypal', 'def5020076d78164eaff955b405af05d559a4f0be5185bb8322fa7772306098767cf8aec605d4066234bbcb25122503409bfda610e241e0e231b6c880096ed496c60aa48f9f83a74ef6c5793dcbcc40044388d4364416bbd9ccf45f16664ed0bab9d22a4620f8cfe5b5d09a6e5c71ebfdccf6af7d295ba435ab90287c4be1861fe366c3a565a2712ce10da1309b751bfe3e4b12773440c6145729f3c535efe3191142c1568cf5328f9e5413a398f15f1ff69dd51d5532db15f6d5ca29dce1113ac8d38f29ff31a7bcbd7673490a488d9bb950138f426fe31b35a3e5bd93e35b98616c25e39974cbc77666a1c286c4568121e81452f0d081c85b1dcd639eb05bffb698e520a6a98641301559a40ad4d7952f2e0f297110b50b06ff4cbae86bcc5af1c9137f601e4326f76454e4d6cc1ac764a5de03fb47b2c1ea9b308acd83b9146e1976c9f71095534d0dbdd35b7b12deac8118307f86d8674c6b97fcdde9cf46437c10c5b822f40b57811bfca0a838a51f78cc360688110a70f4d61a967cb9dff0cc8a84e4cd987436e33383926644f4d0edf0d263a590f8bd45d1857248c387750443da4b7e7900d054760643c7ca97224089b58ee22ecf6453b2a72724f6f8e97828ddc4cdefbeea49b4f243a66ac1ee87a68551b85ff09379bc1c667dfbd7bc433fcf113b6423921c7515f46187d4d13e2a7fa43ba9fc6a49856884cd7d10b99c9ef5cbf44b1d93d5efb73fdca33c508df44da962079479fffd2b314a24f17024983e78391e1247629e0e7269224378ff0a31c9ae5255774a39a10a9e1d5a4c3323f9320d4699767c7c082241df17b56b3e88c61a5b30ce6adae94fe1eaad6b279fa33329ae8a077d605f1eb2520c4c89d2325b300d5836e28607c54c830613c8d4ba06d6fbb763e6e1a6ce7061a28ad0e532af24d77e3b728cd02d1d1dc1c0d4fc5a18c84550e05e1862c7fc061c96d501ba5cd8d344496ab1dbb37d7db2f2064a6646f5a6161f21c5fb43dbbfc7a4f51051896026d42fe27eec1dbd9e64a79f4ba8eec8c95a217a7caeb678847fcf313435cb9e84f99970f5087c7f459ab69cfdf0cfdfac08ed17da82430079caf840221d033ec513a28119d7874163454ba879cdb4e28f4eb367b516009536fa72a250a998a688d6f7d79f57a774a4c002f0d8e131d5d70cabbfacdd69d67c70a93d93416a2c045a44565ddda7064b11391a462b58ee079a06cbabaa826b1d87e5534009adcfb316e225173b7dad470d2d98b3a953a263feec979baeee8fa722f74cfd6a1078b281dbdf594b2fb80e93959d703be458c4d735d512bec33cce948a54ccb278f10849ea18b9549ff949f8bed5377b086e672a36a7322c0203ca8881dc00597ae2ec5cd8c7aacbf3fc7858dd646509d37dfa9c5a5a12a4bde427aeeb167ecc71bfb76475465a5d7b42f54a07871d3a237226485f3471ae2501c1fa2169e0b3f6f60d542285845cefdadb8cea83da868e60f9c2fcae44797fa710848bbb76e19e3030b5205a84d556c664de4fc194a7b8b5f8792c7f4d900352c25a6022b6765a310543b3a2ebfc72f768d559cc1aed9f05b91f584a4399b7aede07a09fc8628441bbe89a4bfe60a26bbab683d41ee054c9531119e5ad1ba45705157fdb870cc01366faab2eb8cd23cbb84fe04ad53925b873c954608f312b1b5ab9ebbbdbfa04eb670404bc6f8bfaa46953385c2301b520ecb50ac6bfa4f463a8b9b78c45dda4613e3b3562c50e880d3c5f2f85d2008681e53be', '2020-09-29 14:12:25', '2021-03-29 14:12:25', 1, '2020-09-29 14:12:25', '2020-09-29 14:11:54'),
(62, '691601884139', 344, '6', 'Fox', '60', '6', '25', '5', '60', 'paypal', 'def502001c404290c2b77bbf834367663ac9e83f71cc54eb1fe01f6e47dd2bd60b58760088f94c2d03eb21cb18e22985c139bb92f30c962dbdd7ebc594d62757ba863c96b99fedcdd382928668cffce68a93ec8aa77c8e61f9533ca7838552f587e40385b5d9ffe0d9586d1f6b60fefbc2912ce3dc67dc47990f793af6bab06357afea1760dd437a9fcb0c7cd93c090a216dfad957be152465c2aa1691154ac9afccde8f5a3eff2a6b21ef90c8c0a07a619f1c56fbd0a3777b008f4ea5c3b8ebec22cefdb202c2da6b35e4dee53f4e4b7354fefc6bacc9a0e759ffa372fc821c5c17ec6f476d9d0767c143134ca44f4fd370adab6c8182fb4f2daafdab9694aad1b5e5032b27a3a2335ee94313769132fb9974804405e3ba91c3d9ab94949c4ffa6a59b1d2303d7b4d13d36557752d5981a08d05704a50b679e5783fba4466ef11f7d4c5a8ba99495fd4aa30bc612babf0415e7d79b220221f681449e18ec624f0181a82f0930b4f4623fbee98edbc83b41e3dee7157827f4bcda705c956b2da44f295f1d8328def4d6849d1293b5151aab8529430ba821654a17b5c5a602fc51ad7fdf4e1b6ab33b4ce7e9ed47c6f768ae3637eedcab0ac8ed8c686d3cf2119f7ad955dc22bdda7d4a0ba25775464e5047b42974f730724033fc5da5231f3c72524b7104f29c38ad3ab6268df56fc13a6657ef4de14fe533c9267a4fc707c403ed51c230ad4faddbb77ac18865f10a6b87b73661b4fa665d16798d7b18d7a844c127ce83a154cd226107e03348d74bc87c64b2c683f13ba5e382250f779327d44007a7a05020b3bb371780767dcb3dc5fb251dbe2d1f7ae0b8772daf924fb53575ab84004753f7e6a884622611ae08c58b1c7c4e09860969f87c8cc42d94fde439d260872ced1bddd86c4175ea4d04346e1e880eef777e1e56e08ec90d6bc4590ae36a23860d9784064d115933d5a265a6e7e86d2b6e07822dd6c94b152a6769c5387e52452cf1f1fd549ee3c9884ab2a9be2c3d84b9e5a342a726eae789aab7103a0d88c0aab8c4ae812b100ab4565794730c1a9ce170022a46226c62255fc0903af801baaa92584e9e2236b788357c41da28169d800473bbc15bbe355dd958e6e121f2c849a60b265877afe48504414ca3b77871d287392e53a792001862cd215326279e996d6f14352dc676bda875e10143b1bad99514d8f8cde161c58b67e22e23b100488ac2fa6a82b505edde1844f36438a37d01ea8535a4f776835aa4f291e06c1490ed176fc9175efc537d1d36ece65cfb62e4e61520aad49d2b2eddd92378a240ecf9ae8a4c8fe940f635f68c50c23654d293cb1a12a73a8ec049c858421c824348534065419f42926e021e0279a6d33d9e838a89cd2571ef63ce1809e4d3c22f87aa6469c767b157b60eefeb5a242ce947928e09b422a1e26dcfafa89556fd7621faf58f22b19ded39128a970ff4abe99a4c901320345feb134d9a7b677971621bd7b11dcf20deb6153b4114cf0ff42fbcbc101636d4e5f2d0df6bf68ed4b74b614ef9b92cd881dae51e59315397a33de6ee71b39bf127a841dc5a611ac34c33d592efb5913cc0395ded215985563af5b8664e7ff5a88547635063a2afba8587bc71a030ce70ea7e95835d4154fb33d338d740d1af172ec2be583bcbb8e90b742b7a5589f37c3c5cd8afe1aca1c195418ab82db9ac85915599453d1aa8ae22aaa23b1e2053ae300cd7b6a20ea6c021ee6068f6657f96828005dade1829d6fb49155d640', '2020-10-05 10:49:33', '2021-03-05 10:49:33', 1, '2020-10-05 10:49:33', '2020-10-05 10:48:59'),
(63, '141602565475', 344, '6', 'Fox', '60', '6', '25', '5', '', '', '', '', '', 0, '2020-10-13 05:04:35', '2020-10-13 08:04:35');

-- --------------------------------------------------------

--
-- Table structure for table `subscription_tokens`
--

CREATE TABLE `subscription_tokens` (
  `id` int(250) NOT NULL,
  `uid` varchar(2500) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(250) NOT NULL,
  `subscription_id` int(250) NOT NULL,
  `amount` float NOT NULL,
  `payment_id` int(250) NOT NULL,
  `status` int(11) NOT NULL,
  `expiry` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subscription_tokens`
--

INSERT INTO `subscription_tokens` (`id`, `uid`, `user_id`, `subscription_id`, `amount`, `payment_id`, `status`, `expiry`, `updated_at`, `created_at`) VALUES
(1, '177914', 344, 2, 25, 2, 1, '2020-02-20 12:12:47', '2020-01-22 11:09:31', '2020-01-20 12:12:47'),
(2, '73328', 344, 2, 25, 4, 1, '2020-02-20 12:12:47', '2020-01-24 14:30:39', '2020-01-20 12:12:47'),
(3, '369712', 344, 2, 25, 1, 1, '2020-02-20 12:12:47', '2020-01-20 12:15:03', '2020-01-20 12:12:47'),
(4, '288707', 344, 2, 25, 5, 1, '2020-02-20 12:12:47', '2020-01-25 15:51:23', '2020-01-20 12:12:47'),
(5, '557050', 344, 2, 25, 6, 1, '2020-02-20 12:12:47', '2020-01-25 16:01:08', '2020-01-20 12:12:47'),
(6, '129038', 344, 2, 25, 13, 1, '2020-02-20 12:12:47', '2020-01-27 11:47:35', '2020-01-20 12:12:47'),
(7, '522883', 344, 2, 25, 0, 0, '2020-03-20 12:12:47', '2020-01-20 12:12:47', '2020-01-20 12:12:47'),
(8, '291743', 344, 2, 25, 0, 0, '2020-03-20 12:12:47', '2020-01-20 12:12:47', '2020-01-20 12:12:47'),
(9, '106229', 344, 2, 25, 0, 0, '2020-03-20 12:12:47', '2020-01-20 12:12:47', '2020-01-20 12:12:47'),
(10, '577049', 344, 2, 25, 0, 0, '2020-03-20 12:12:47', '2020-01-20 12:12:47', '2020-01-20 12:12:47'),
(11, '354576', 344, 2, 25, 0, 0, '2020-03-20 12:12:47', '2020-01-20 12:12:47', '2020-01-20 12:12:47'),
(12, '44259', 344, 2, 25, 0, 0, '2020-03-20 12:12:47', '2020-01-20 12:12:47', '2020-01-20 12:12:47'),
(13, '560976', 344, 2, 25, 0, 1, '2020-04-20 12:12:47', '2020-04-17 06:36:05', '2020-01-20 12:12:47'),
(14, '520694', 344, 2, 25, 0, 0, '2020-04-20 12:12:47', '2020-01-20 12:12:47', '2020-01-20 12:12:47'),
(15, '185898', 344, 2, 25, 0, 0, '2020-04-20 12:12:48', '2020-01-20 12:12:48', '2020-01-20 12:12:48'),
(16, '773684', 344, 2, 25, 0, 0, '2020-04-20 12:12:48', '2020-01-20 12:12:48', '2020-01-20 12:12:48'),
(17, '111921', 344, 2, 25, 0, 0, '2020-04-20 12:12:48', '2020-01-20 12:12:48', '2020-01-20 12:12:48'),
(18, '690638', 344, 2, 25, 0, 0, '2020-04-20 12:12:48', '2020-01-20 12:12:48', '2020-01-20 12:12:48'),
(19, '623467', 344, 2, 25, 0, 0, '2020-05-20 12:12:48', '2020-01-20 12:12:48', '2020-01-20 12:12:48'),
(20, '140732', 344, 2, 25, 22, 1, '2020-05-20 12:12:48', '2020-05-07 06:28:49', '2020-01-20 12:12:48'),
(21, '32502', 344, 2, 25, 0, 0, '2020-05-20 12:12:48', '2020-01-20 12:12:48', '2020-01-20 12:12:48'),
(22, '419352', 344, 2, 25, 0, 0, '2020-05-20 12:12:48', '2020-01-20 12:12:48', '2020-01-20 12:12:48'),
(23, '74104', 344, 2, 25, 0, 0, '2020-05-20 12:12:48', '2020-01-20 12:12:48', '2020-01-20 12:12:48'),
(24, '197551', 344, 2, 25, 0, 0, '2020-05-20 12:12:48', '2020-01-20 12:12:48', '2020-01-20 12:12:48'),
(25, '209746', 344, 2, 25, 30, 1, '2020-06-20 12:12:48', '2020-05-22 04:56:36', '2020-01-20 12:12:48'),
(26, '847230', 344, 2, 25, 0, 0, '2020-06-20 12:12:48', '2020-01-20 12:12:48', '2020-01-20 12:12:48'),
(27, '605144', 344, 2, 25, 0, 0, '2020-06-20 12:12:48', '2020-01-20 12:12:48', '2020-01-20 12:12:48'),
(28, '405575', 344, 2, 25, 32, 1, '2020-06-20 12:12:48', '2020-05-26 10:16:39', '2020-01-20 12:12:48'),
(29, '218089', 344, 2, 25, 0, 0, '2020-06-20 12:12:48', '2020-01-20 12:12:48', '2020-01-20 12:12:48'),
(30, '339626', 344, 2, 25, 0, 0, '2020-06-20 12:12:48', '2020-01-20 12:12:48', '2020-01-20 12:12:48'),
(31, '326120', 371, 3, 25, 3, 1, '2020-02-22 09:43:47', '2020-01-22 11:15:46', '2020-01-22 09:43:47'),
(32, '616720', 371, 3, 25, 0, 0, '2020-02-22 09:43:47', '2020-01-22 09:43:47', '2020-01-22 09:43:47'),
(33, '664066', 371, 3, 25, 0, 0, '2020-02-22 09:43:47', '2020-01-22 09:43:47', '2020-01-22 09:43:47'),
(34, '318905', 371, 3, 25, 0, 0, '2020-02-22 09:43:47', '2020-01-22 09:43:47', '2020-01-22 09:43:47'),
(35, '510103', 371, 3, 25, 0, 0, '2020-02-22 09:43:47', '2020-01-22 09:43:47', '2020-01-22 09:43:47'),
(36, '217271', 371, 3, 25, 0, 0, '2020-02-22 09:43:47', '2020-01-22 09:43:47', '2020-01-22 09:43:47'),
(37, '624838', 371, 3, 25, 0, 0, '2020-03-22 09:43:47', '2020-01-22 09:43:47', '2020-01-22 09:43:47'),
(38, '817188', 371, 3, 25, 0, 0, '2020-03-22 09:43:47', '2020-01-22 09:43:47', '2020-01-22 09:43:47'),
(39, '547553', 371, 3, 25, 0, 0, '2020-03-22 09:43:47', '2020-01-22 09:43:47', '2020-01-22 09:43:47'),
(40, '145614', 371, 3, 25, 0, 0, '2020-03-22 09:43:47', '2020-01-22 09:43:47', '2020-01-22 09:43:47'),
(41, '802651', 371, 3, 25, 0, 0, '2020-03-22 09:43:47', '2020-01-22 09:43:47', '2020-01-22 09:43:47'),
(42, '379229', 371, 3, 25, 0, 0, '2020-03-22 09:43:47', '2020-01-22 09:43:47', '2020-01-22 09:43:47'),
(43, '976783', 371, 3, 25, 0, 0, '2020-04-22 09:43:47', '2020-01-22 09:43:47', '2020-01-22 09:43:47'),
(44, '356744', 371, 3, 25, 0, 0, '2020-04-22 09:43:47', '2020-01-22 09:43:47', '2020-01-22 09:43:47'),
(45, '150921', 371, 3, 25, 0, 0, '2020-04-22 09:43:47', '2020-01-22 09:43:47', '2020-01-22 09:43:47'),
(46, '105763', 371, 3, 25, 0, 0, '2020-04-22 09:43:47', '2020-01-22 09:43:47', '2020-01-22 09:43:47'),
(47, '732117', 371, 3, 25, 0, 0, '2020-04-22 09:43:47', '2020-01-22 09:43:47', '2020-01-22 09:43:47'),
(48, '76608', 371, 3, 25, 0, 0, '2020-04-22 09:43:47', '2020-01-22 09:43:47', '2020-01-22 09:43:47'),
(49, '314646', 371, 3, 25, 0, 0, '2020-05-22 09:43:47', '2020-01-22 09:43:47', '2020-01-22 09:43:47'),
(50, '716063', 371, 3, 25, 0, 0, '2020-05-22 09:43:47', '2020-01-22 09:43:47', '2020-01-22 09:43:47'),
(51, '839407', 371, 3, 25, 0, 0, '2020-05-22 09:43:47', '2020-01-22 09:43:47', '2020-01-22 09:43:47'),
(52, '193370', 371, 3, 25, 0, 0, '2020-05-22 09:43:47', '2020-01-22 09:43:47', '2020-01-22 09:43:47'),
(53, '705115', 371, 3, 25, 0, 0, '2020-05-22 09:43:47', '2020-01-22 09:43:47', '2020-01-22 09:43:47'),
(54, '354491', 371, 3, 25, 0, 0, '2020-05-22 09:43:47', '2020-01-22 09:43:47', '2020-01-22 09:43:47'),
(55, '563841', 371, 3, 25, 0, 0, '2020-06-22 09:43:47', '2020-01-22 09:43:47', '2020-01-22 09:43:47'),
(56, '766384', 371, 3, 25, 0, 0, '2020-06-22 09:43:47', '2020-01-22 09:43:47', '2020-01-22 09:43:47'),
(57, '67223', 371, 3, 25, 0, 0, '2020-06-22 09:43:47', '2020-01-22 09:43:47', '2020-01-22 09:43:47'),
(58, '743063', 371, 3, 25, 0, 0, '2020-06-22 09:43:47', '2020-01-22 09:43:47', '2020-01-22 09:43:47'),
(59, '91152', 371, 3, 25, 0, 0, '2020-06-22 09:43:47', '2020-01-22 09:43:47', '2020-01-22 09:43:47'),
(60, '46854', 371, 3, 25, 0, 0, '2020-06-22 09:43:47', '2020-01-22 09:43:47', '2020-01-22 09:43:47'),
(61, '767891', 371, 4, 25, 0, 0, '2020-02-22 11:17:23', '2020-01-22 11:17:23', '2020-01-22 11:17:23'),
(62, '466868', 371, 4, 25, 0, 0, '2020-02-22 11:17:23', '2020-01-22 11:17:23', '2020-01-22 11:17:23'),
(63, '506579', 371, 4, 25, 0, 0, '2020-02-22 11:17:23', '2020-01-22 11:17:23', '2020-01-22 11:17:23'),
(64, '838934', 371, 4, 25, 0, 0, '2020-02-22 11:17:23', '2020-01-22 11:17:23', '2020-01-22 11:17:23'),
(65, '113100', 371, 4, 25, 0, 0, '2020-02-22 11:17:23', '2020-01-22 11:17:23', '2020-01-22 11:17:23'),
(66, '361953', 371, 4, 25, 0, 0, '2020-02-22 11:17:23', '2020-01-22 11:17:23', '2020-01-22 11:17:23'),
(67, '574519', 371, 4, 25, 0, 0, '2020-03-22 11:17:23', '2020-01-22 11:17:23', '2020-01-22 11:17:23'),
(68, '606467', 371, 4, 25, 0, 0, '2020-03-22 11:17:23', '2020-01-22 11:17:23', '2020-01-22 11:17:23'),
(69, '521500', 371, 4, 25, 0, 0, '2020-03-22 11:17:23', '2020-01-22 11:17:23', '2020-01-22 11:17:23'),
(70, '523760', 371, 4, 25, 0, 0, '2020-03-22 11:17:23', '2020-01-22 11:17:23', '2020-01-22 11:17:23'),
(71, '868331', 371, 4, 25, 0, 0, '2020-03-22 11:17:23', '2020-01-22 11:17:23', '2020-01-22 11:17:23'),
(72, '418556', 371, 4, 25, 0, 0, '2020-03-22 11:17:23', '2020-01-22 11:17:23', '2020-01-22 11:17:23'),
(73, '81646', 371, 4, 25, 0, 0, '2020-04-22 11:17:23', '2020-01-22 11:17:23', '2020-01-22 11:17:23'),
(74, '785114', 371, 4, 25, 0, 0, '2020-04-22 11:17:23', '2020-01-22 11:17:23', '2020-01-22 11:17:23'),
(75, '297044', 371, 4, 25, 0, 0, '2020-04-22 11:17:23', '2020-01-22 11:17:23', '2020-01-22 11:17:23'),
(76, '246608', 371, 4, 25, 0, 0, '2020-04-22 11:17:23', '2020-01-22 11:17:23', '2020-01-22 11:17:23'),
(77, '296595', 371, 4, 25, 0, 0, '2020-04-22 11:17:23', '2020-01-22 11:17:23', '2020-01-22 11:17:23'),
(78, '130424', 371, 4, 25, 0, 0, '2020-04-22 11:17:23', '2020-01-22 11:17:23', '2020-01-22 11:17:23'),
(79, '72015', 371, 4, 25, 0, 0, '2020-05-22 11:17:23', '2020-01-22 11:17:23', '2020-01-22 11:17:23'),
(80, '136496', 371, 4, 25, 0, 0, '2020-05-22 11:17:23', '2020-01-22 11:17:23', '2020-01-22 11:17:23'),
(81, '669943', 371, 4, 25, 0, 0, '2020-05-22 11:17:23', '2020-01-22 11:17:23', '2020-01-22 11:17:23'),
(82, '548547', 371, 4, 25, 0, 0, '2020-05-22 11:17:23', '2020-01-22 11:17:23', '2020-01-22 11:17:23'),
(83, '697068', 371, 4, 25, 0, 0, '2020-05-22 11:17:23', '2020-01-22 11:17:23', '2020-01-22 11:17:23'),
(84, '91142', 371, 4, 25, 0, 0, '2020-05-22 11:17:23', '2020-01-22 11:17:23', '2020-01-22 11:17:23'),
(85, '457758', 371, 4, 25, 0, 0, '2020-06-22 11:17:23', '2020-01-22 11:17:23', '2020-01-22 11:17:23'),
(86, '504173', 371, 4, 25, 0, 0, '2020-06-22 11:17:23', '2020-01-22 11:17:23', '2020-01-22 11:17:23'),
(87, '858578', 371, 4, 25, 0, 0, '2020-06-22 11:17:23', '2020-01-22 11:17:23', '2020-01-22 11:17:23'),
(88, '408184', 371, 4, 25, 0, 0, '2020-06-22 11:17:23', '2020-01-22 11:17:23', '2020-01-22 11:17:23'),
(89, '125800', 371, 4, 25, 0, 0, '2020-06-22 11:17:23', '2020-01-22 11:17:23', '2020-01-22 11:17:23'),
(90, '585006', 371, 4, 25, 0, 0, '2020-06-22 11:17:23', '2020-01-22 11:17:23', '2020-01-22 11:17:23'),
(91, '944187', 371, 4, 25, 0, 0, '2020-02-22 11:17:30', '2020-01-22 11:17:30', '2020-01-22 11:17:30'),
(92, '451303', 371, 4, 25, 0, 0, '2020-02-22 11:17:30', '2020-01-22 11:17:30', '2020-01-22 11:17:30'),
(93, '705847', 371, 4, 25, 0, 0, '2020-02-22 11:17:30', '2020-01-22 11:17:30', '2020-01-22 11:17:30'),
(94, '887759', 371, 4, 25, 0, 0, '2020-02-22 11:17:30', '2020-01-22 11:17:30', '2020-01-22 11:17:30'),
(95, '649178', 371, 4, 25, 0, 0, '2020-02-22 11:17:30', '2020-01-22 11:17:30', '2020-01-22 11:17:30'),
(96, '769379', 371, 4, 25, 0, 0, '2020-02-22 11:17:30', '2020-01-22 11:17:30', '2020-01-22 11:17:30'),
(97, '449610', 371, 4, 25, 0, 0, '2020-03-22 11:17:30', '2020-01-22 11:17:30', '2020-01-22 11:17:30'),
(98, '544624', 371, 4, 25, 0, 0, '2020-03-22 11:17:30', '2020-01-22 11:17:30', '2020-01-22 11:17:30'),
(99, '505341', 371, 4, 25, 0, 0, '2020-03-22 11:17:30', '2020-01-22 11:17:30', '2020-01-22 11:17:30'),
(100, '844082', 371, 4, 25, 0, 0, '2020-03-22 11:17:30', '2020-01-22 11:17:30', '2020-01-22 11:17:30'),
(101, '203741', 371, 4, 25, 0, 0, '2020-03-22 11:17:30', '2020-01-22 11:17:30', '2020-01-22 11:17:30'),
(102, '849068', 371, 4, 25, 0, 0, '2020-03-22 11:17:30', '2020-01-22 11:17:30', '2020-01-22 11:17:30'),
(103, '28139', 371, 4, 25, 0, 0, '2020-04-22 11:17:30', '2020-01-22 11:17:30', '2020-01-22 11:17:30'),
(104, '44138', 371, 4, 25, 0, 0, '2020-04-22 11:17:30', '2020-01-22 11:17:30', '2020-01-22 11:17:30'),
(105, '146021', 371, 4, 25, 0, 0, '2020-04-22 11:17:30', '2020-01-22 11:17:30', '2020-01-22 11:17:30'),
(106, '535524', 371, 4, 25, 0, 0, '2020-04-22 11:17:30', '2020-01-22 11:17:30', '2020-01-22 11:17:30'),
(107, '676526', 371, 4, 25, 0, 0, '2020-04-22 11:17:30', '2020-01-22 11:17:30', '2020-01-22 11:17:30'),
(108, '23634', 371, 4, 25, 0, 0, '2020-04-22 11:17:30', '2020-01-22 11:17:30', '2020-01-22 11:17:30'),
(109, '437021', 371, 4, 25, 0, 0, '2020-05-22 11:17:30', '2020-01-22 11:17:30', '2020-01-22 11:17:30'),
(110, '708026', 371, 4, 25, 0, 0, '2020-05-22 11:17:30', '2020-01-22 11:17:30', '2020-01-22 11:17:30'),
(111, '362778', 371, 4, 25, 0, 0, '2020-05-22 11:17:30', '2020-01-22 11:17:30', '2020-01-22 11:17:30'),
(112, '732504', 371, 4, 25, 0, 0, '2020-05-22 11:17:30', '2020-01-22 11:17:30', '2020-01-22 11:17:30'),
(113, '98564', 371, 4, 25, 0, 0, '2020-05-22 11:17:30', '2020-01-22 11:17:30', '2020-01-22 11:17:30'),
(114, '826074', 371, 4, 25, 0, 0, '2020-05-22 11:17:30', '2020-01-22 11:17:30', '2020-01-22 11:17:30'),
(115, '204802', 371, 4, 25, 0, 0, '2020-06-22 11:17:30', '2020-01-22 11:17:30', '2020-01-22 11:17:30'),
(116, '685848', 371, 4, 25, 0, 0, '2020-06-22 11:17:30', '2020-01-22 11:17:30', '2020-01-22 11:17:30'),
(117, '681785', 371, 4, 25, 0, 0, '2020-06-22 11:17:30', '2020-01-22 11:17:30', '2020-01-22 11:17:30'),
(118, '219439', 371, 4, 25, 0, 0, '2020-06-22 11:17:30', '2020-01-22 11:17:30', '2020-01-22 11:17:30'),
(119, '945146', 371, 4, 25, 0, 0, '2020-06-22 11:17:30', '2020-01-22 11:17:30', '2020-01-22 11:17:30'),
(120, '665810', 371, 4, 25, 0, 0, '2020-06-22 11:17:30', '2020-01-22 11:17:30', '2020-01-22 11:17:30'),
(121, '595529', 371, 4, 25, 0, 0, '2020-02-22 11:21:06', '2020-01-22 11:21:06', '2020-01-22 11:21:06'),
(122, '407136', 371, 4, 25, 0, 0, '2020-02-22 11:21:06', '2020-01-22 11:21:06', '2020-01-22 11:21:06'),
(123, '773854', 371, 4, 25, 0, 0, '2020-02-22 11:21:06', '2020-01-22 11:21:06', '2020-01-22 11:21:06'),
(124, '877612', 371, 4, 25, 0, 0, '2020-02-22 11:21:06', '2020-01-22 11:21:06', '2020-01-22 11:21:06'),
(125, '288046', 371, 4, 25, 0, 0, '2020-02-22 11:21:06', '2020-01-22 11:21:06', '2020-01-22 11:21:06'),
(126, '921086', 371, 4, 25, 0, 0, '2020-02-22 11:21:06', '2020-01-22 11:21:06', '2020-01-22 11:21:06'),
(127, '31165', 371, 4, 25, 0, 0, '2020-03-22 11:21:06', '2020-01-22 11:21:06', '2020-01-22 11:21:06'),
(128, '481670', 371, 4, 25, 0, 0, '2020-03-22 11:21:06', '2020-01-22 11:21:06', '2020-01-22 11:21:06'),
(129, '432521', 371, 4, 25, 0, 0, '2020-03-22 11:21:06', '2020-01-22 11:21:06', '2020-01-22 11:21:06'),
(130, '823741', 371, 4, 25, 0, 0, '2020-03-22 11:21:06', '2020-01-22 11:21:06', '2020-01-22 11:21:06'),
(131, '342647', 371, 4, 25, 0, 0, '2020-03-22 11:21:06', '2020-01-22 11:21:06', '2020-01-22 11:21:06'),
(132, '228270', 371, 4, 25, 0, 0, '2020-03-22 11:21:06', '2020-01-22 11:21:06', '2020-01-22 11:21:06'),
(133, '344969', 371, 4, 25, 0, 0, '2020-04-22 11:21:06', '2020-01-22 11:21:06', '2020-01-22 11:21:06'),
(134, '380987', 371, 4, 25, 0, 0, '2020-04-22 11:21:06', '2020-01-22 11:21:06', '2020-01-22 11:21:06'),
(135, '637410', 371, 4, 25, 0, 0, '2020-04-22 11:21:06', '2020-01-22 11:21:06', '2020-01-22 11:21:06'),
(136, '620991', 371, 4, 25, 0, 0, '2020-04-22 11:21:06', '2020-01-22 11:21:06', '2020-01-22 11:21:06'),
(137, '449685', 371, 4, 25, 0, 0, '2020-04-22 11:21:06', '2020-01-22 11:21:06', '2020-01-22 11:21:06'),
(138, '280186', 371, 4, 25, 0, 0, '2020-04-22 11:21:06', '2020-01-22 11:21:06', '2020-01-22 11:21:06'),
(139, '518166', 371, 4, 25, 0, 0, '2020-05-22 11:21:06', '2020-01-22 11:21:06', '2020-01-22 11:21:06'),
(140, '267395', 371, 4, 25, 0, 0, '2020-05-22 11:21:06', '2020-01-22 11:21:06', '2020-01-22 11:21:06'),
(141, '717016', 371, 4, 25, 0, 0, '2020-05-22 11:21:06', '2020-01-22 11:21:06', '2020-01-22 11:21:06'),
(142, '279676', 371, 4, 25, 0, 0, '2020-05-22 11:21:06', '2020-01-22 11:21:06', '2020-01-22 11:21:06'),
(143, '686430', 371, 4, 25, 0, 0, '2020-05-22 11:21:06', '2020-01-22 11:21:06', '2020-01-22 11:21:06'),
(144, '572784', 371, 4, 25, 0, 0, '2020-05-22 11:21:06', '2020-01-22 11:21:06', '2020-01-22 11:21:06'),
(145, '221398', 371, 4, 25, 0, 0, '2020-06-22 11:21:06', '2020-01-22 11:21:06', '2020-01-22 11:21:06'),
(146, '157086', 371, 4, 25, 0, 0, '2020-06-22 11:21:06', '2020-01-22 11:21:06', '2020-01-22 11:21:06'),
(147, '550964', 371, 4, 25, 0, 0, '2020-06-22 11:21:06', '2020-01-22 11:21:06', '2020-01-22 11:21:06'),
(148, '431548', 371, 4, 25, 0, 0, '2020-06-22 11:21:06', '2020-01-22 11:21:06', '2020-01-22 11:21:06'),
(149, '991882', 371, 4, 25, 0, 0, '2020-06-22 11:21:06', '2020-01-22 11:21:06', '2020-01-22 11:21:06'),
(150, '666864', 371, 4, 25, 0, 0, '2020-06-22 11:21:06', '2020-01-22 11:21:06', '2020-01-22 11:21:06'),
(151, '978100', 371, 5, 25, 0, 0, '2020-02-22 11:22:02', '2020-01-22 11:22:02', '2020-01-22 11:22:02'),
(152, '138970', 371, 5, 25, 0, 0, '2020-02-22 11:22:02', '2020-01-22 11:22:02', '2020-01-22 11:22:02'),
(153, '435978', 371, 5, 25, 0, 0, '2020-02-22 11:22:02', '2020-01-22 11:22:02', '2020-01-22 11:22:02'),
(154, '801121', 371, 5, 25, 0, 0, '2020-02-22 11:22:02', '2020-01-22 11:22:02', '2020-01-22 11:22:02'),
(155, '457892', 371, 5, 25, 0, 0, '2020-02-22 11:22:02', '2020-01-22 11:22:02', '2020-01-22 11:22:02'),
(156, '808658', 371, 5, 25, 0, 0, '2020-02-22 11:22:02', '2020-01-22 11:22:02', '2020-01-22 11:22:02'),
(157, '578400', 371, 5, 25, 0, 0, '2020-03-22 11:22:02', '2020-01-22 11:22:02', '2020-01-22 11:22:02'),
(158, '81893', 371, 5, 25, 0, 0, '2020-03-22 11:22:02', '2020-01-22 11:22:02', '2020-01-22 11:22:02'),
(159, '765732', 371, 5, 25, 0, 0, '2020-03-22 11:22:02', '2020-01-22 11:22:02', '2020-01-22 11:22:02'),
(160, '958046', 371, 5, 25, 0, 0, '2020-03-22 11:22:02', '2020-01-22 11:22:02', '2020-01-22 11:22:02'),
(161, '304702', 371, 5, 25, 0, 0, '2020-03-22 11:22:02', '2020-01-22 11:22:02', '2020-01-22 11:22:02'),
(162, '975157', 371, 5, 25, 0, 0, '2020-03-22 11:22:02', '2020-01-22 11:22:02', '2020-01-22 11:22:02'),
(163, '66594', 371, 5, 25, 0, 0, '2020-04-22 11:22:02', '2020-01-22 11:22:02', '2020-01-22 11:22:02'),
(164, '271603', 371, 5, 25, 0, 0, '2020-04-22 11:22:02', '2020-01-22 11:22:02', '2020-01-22 11:22:02'),
(165, '878935', 371, 5, 25, 0, 0, '2020-04-22 11:22:02', '2020-01-22 11:22:02', '2020-01-22 11:22:02'),
(166, '995365', 371, 5, 25, 0, 0, '2020-04-22 11:22:02', '2020-01-22 11:22:02', '2020-01-22 11:22:02'),
(167, '644124', 371, 5, 25, 0, 0, '2020-04-22 11:22:02', '2020-01-22 11:22:02', '2020-01-22 11:22:02'),
(168, '940599', 371, 5, 25, 0, 0, '2020-04-22 11:22:02', '2020-01-22 11:22:02', '2020-01-22 11:22:02'),
(169, '71583', 371, 5, 25, 0, 0, '2020-05-22 11:22:02', '2020-01-22 11:22:02', '2020-01-22 11:22:02'),
(170, '976186', 371, 5, 25, 0, 0, '2020-05-22 11:22:02', '2020-01-22 11:22:02', '2020-01-22 11:22:02'),
(171, '729125', 371, 5, 25, 0, 0, '2020-05-22 11:22:02', '2020-01-22 11:22:02', '2020-01-22 11:22:02'),
(172, '170711', 371, 5, 25, 0, 0, '2020-05-22 11:22:02', '2020-01-22 11:22:02', '2020-01-22 11:22:02'),
(173, '559220', 371, 5, 25, 0, 0, '2020-05-22 11:22:02', '2020-01-22 11:22:02', '2020-01-22 11:22:02'),
(174, '357505', 371, 5, 25, 0, 0, '2020-05-22 11:22:02', '2020-01-22 11:22:02', '2020-01-22 11:22:02'),
(175, '889276', 371, 5, 25, 0, 0, '2020-06-22 11:22:02', '2020-01-22 11:22:02', '2020-01-22 11:22:02'),
(176, '19950', 371, 5, 25, 0, 0, '2020-06-22 11:22:02', '2020-01-22 11:22:02', '2020-01-22 11:22:02'),
(177, '104218', 371, 5, 25, 0, 0, '2020-06-22 11:22:02', '2020-01-22 11:22:02', '2020-01-22 11:22:02'),
(178, '548050', 371, 5, 25, 0, 0, '2020-06-22 11:22:02', '2020-01-22 11:22:02', '2020-01-22 11:22:02'),
(179, '466091', 371, 5, 25, 0, 0, '2020-06-22 11:22:02', '2020-01-22 11:22:02', '2020-01-22 11:22:02'),
(180, '224260', 371, 5, 25, 0, 0, '2020-06-22 11:22:02', '2020-01-22 11:22:02', '2020-01-22 11:22:02'),
(271, '812958', 382, 12, 25, 0, 0, '2020-02-27 10:08:11', '2020-01-27 10:08:11', '2020-01-27 10:08:11'),
(272, '938258', 382, 12, 25, 0, 0, '2020-02-27 10:08:11', '2020-01-27 10:08:11', '2020-01-27 10:08:11'),
(273, '185179', 382, 12, 25, 0, 0, '2020-02-27 10:08:11', '2020-01-27 10:08:11', '2020-01-27 10:08:11'),
(274, '859134', 382, 12, 25, 0, 0, '2020-02-27 10:08:11', '2020-01-27 10:08:11', '2020-01-27 10:08:11'),
(275, '476990', 382, 12, 25, 0, 0, '2020-02-27 10:08:11', '2020-01-27 10:08:11', '2020-01-27 10:08:11'),
(276, '385677', 382, 12, 25, 0, 0, '2020-02-27 10:08:11', '2020-01-27 10:08:11', '2020-01-27 10:08:11'),
(277, '171046', 382, 12, 25, 0, 0, '2020-03-27 10:08:11', '2020-01-27 10:08:11', '2020-01-27 10:08:11'),
(278, '767887', 382, 12, 25, 0, 0, '2020-03-27 10:08:11', '2020-01-27 10:08:11', '2020-01-27 10:08:11'),
(279, '965959', 382, 12, 25, 0, 0, '2020-03-27 10:08:11', '2020-01-27 10:08:11', '2020-01-27 10:08:11'),
(280, '143429', 382, 12, 25, 0, 0, '2020-03-27 10:08:11', '2020-01-27 10:08:11', '2020-01-27 10:08:11'),
(281, '285163', 382, 12, 25, 0, 0, '2020-03-27 10:08:11', '2020-01-27 10:08:11', '2020-01-27 10:08:11'),
(282, '277407', 382, 12, 25, 0, 0, '2020-03-27 10:08:11', '2020-01-27 10:08:11', '2020-01-27 10:08:11'),
(283, '646668', 382, 12, 25, 0, 0, '2020-04-27 10:08:11', '2020-01-27 10:08:11', '2020-01-27 10:08:11'),
(284, '471592', 382, 12, 25, 0, 0, '2020-04-27 10:08:11', '2020-01-27 10:08:11', '2020-01-27 10:08:11'),
(285, '278030', 382, 12, 25, 0, 0, '2020-04-27 10:08:11', '2020-01-27 10:08:11', '2020-01-27 10:08:11'),
(286, '219315', 382, 12, 25, 0, 0, '2020-04-27 10:08:11', '2020-01-27 10:08:11', '2020-01-27 10:08:11'),
(287, '421636', 382, 12, 25, 0, 0, '2020-04-27 10:08:11', '2020-01-27 10:08:11', '2020-01-27 10:08:11'),
(288, '694103', 382, 12, 25, 0, 0, '2020-04-27 10:08:11', '2020-01-27 10:08:11', '2020-01-27 10:08:11'),
(289, '513458', 382, 12, 25, 0, 0, '2020-05-27 10:08:11', '2020-01-27 10:08:11', '2020-01-27 10:08:11'),
(290, '987434', 382, 12, 25, 0, 0, '2020-05-27 10:08:11', '2020-01-27 10:08:11', '2020-01-27 10:08:11'),
(291, '741380', 382, 12, 25, 0, 0, '2020-05-27 10:08:11', '2020-01-27 10:08:11', '2020-01-27 10:08:11'),
(292, '669414', 382, 12, 25, 0, 0, '2020-05-27 10:08:11', '2020-01-27 10:08:11', '2020-01-27 10:08:11'),
(293, '138200', 382, 12, 25, 0, 0, '2020-05-27 10:08:11', '2020-01-27 10:08:11', '2020-01-27 10:08:11'),
(294, '612322', 382, 12, 25, 0, 0, '2020-05-27 10:08:11', '2020-01-27 10:08:11', '2020-01-27 10:08:11'),
(295, '703775', 382, 12, 25, 0, 0, '2020-06-27 10:08:11', '2020-01-27 10:08:11', '2020-01-27 10:08:11'),
(296, '663872', 382, 12, 25, 0, 0, '2020-06-27 10:08:11', '2020-01-27 10:08:11', '2020-01-27 10:08:11'),
(297, '22169', 382, 12, 25, 0, 0, '2020-06-27 10:08:11', '2020-01-27 10:08:11', '2020-01-27 10:08:11'),
(298, '419236', 382, 12, 25, 0, 0, '2020-06-27 10:08:11', '2020-01-27 10:08:11', '2020-01-27 10:08:11'),
(299, '546943', 382, 12, 25, 0, 0, '2020-06-27 10:08:11', '2020-01-27 10:08:11', '2020-01-27 10:08:11'),
(300, '909997', 382, 12, 25, 0, 0, '2020-06-27 10:08:11', '2020-01-27 10:08:11', '2020-01-27 10:08:11'),
(301, '165138', 344, 13, 25, 14, 1, '2020-02-27 11:50:15', '2020-01-27 11:51:32', '2020-01-27 11:50:15'),
(302, '149094', 344, 13, 25, 15, 1, '2020-02-27 11:50:15', '2020-02-03 11:02:11', '2020-01-27 11:50:15'),
(303, '685658', 344, 13, 25, 16, 1, '2020-02-27 11:50:15', '2020-02-08 09:39:51', '2020-01-27 11:50:15'),
(304, '258757', 344, 13, 25, 0, 1, '2020-02-27 11:50:15', '2020-02-09 23:59:08', '2020-01-27 11:50:15'),
(305, '549657', 344, 13, 25, 0, 0, '2020-02-27 11:50:15', '2020-01-27 11:50:15', '2020-01-27 11:50:15'),
(306, '689526', 344, 13, 25, 0, 0, '2020-02-27 11:50:15', '2020-01-27 11:50:15', '2020-01-27 11:50:15'),
(307, '583934', 344, 13, 25, 0, 0, '2020-03-27 11:50:15', '2020-01-27 11:50:15', '2020-01-27 11:50:15'),
(308, '803027', 344, 13, 25, 0, 0, '2020-03-27 11:50:15', '2020-01-27 11:50:15', '2020-01-27 11:50:15'),
(309, '374588', 344, 13, 25, 0, 0, '2020-03-27 11:50:15', '2020-01-27 11:50:15', '2020-01-27 11:50:15'),
(310, '498276', 344, 13, 25, 0, 0, '2020-03-27 11:50:15', '2020-01-27 11:50:15', '2020-01-27 11:50:15'),
(311, '518254', 344, 13, 25, 0, 0, '2020-03-27 11:50:15', '2020-01-27 11:50:15', '2020-01-27 11:50:15'),
(312, '443153', 344, 13, 25, 0, 0, '2020-03-27 11:50:15', '2020-01-27 11:50:15', '2020-01-27 11:50:15'),
(313, '523642', 344, 13, 25, 0, 0, '2020-04-27 11:50:15', '2020-01-27 11:50:15', '2020-01-27 11:50:15'),
(314, '144401', 344, 13, 25, 0, 0, '2020-04-27 11:50:15', '2020-01-27 11:50:15', '2020-01-27 11:50:15'),
(315, '493021', 344, 13, 25, 0, 0, '2020-04-27 11:50:15', '2020-01-27 11:50:15', '2020-01-27 11:50:15'),
(316, '591410', 344, 13, 25, 0, 0, '2020-04-27 11:50:15', '2020-01-27 11:50:15', '2020-01-27 11:50:15'),
(317, '633028', 344, 13, 25, 0, 0, '2020-04-27 11:50:15', '2020-01-27 11:50:15', '2020-01-27 11:50:15'),
(318, '623369', 344, 13, 25, 0, 0, '2020-04-27 11:50:15', '2020-01-27 11:50:15', '2020-01-27 11:50:15'),
(319, '759856', 344, 13, 25, 0, 0, '2020-05-27 11:50:15', '2020-01-27 11:50:15', '2020-01-27 11:50:15'),
(320, '495185', 344, 13, 25, 0, 0, '2020-05-27 11:50:15', '2020-01-27 11:50:15', '2020-01-27 11:50:15'),
(321, '319691', 344, 13, 25, 0, 0, '2020-05-27 11:50:15', '2020-01-27 11:50:15', '2020-01-27 11:50:15'),
(322, '829023', 344, 13, 25, 0, 0, '2020-05-27 11:50:15', '2020-01-27 11:50:15', '2020-01-27 11:50:15'),
(323, '299690', 344, 13, 25, 0, 0, '2020-05-27 11:50:15', '2020-01-27 11:50:15', '2020-01-27 11:50:15'),
(324, '204576', 344, 13, 25, 0, 0, '2020-05-27 11:50:15', '2020-01-27 11:50:15', '2020-01-27 11:50:15'),
(325, '499587', 344, 13, 25, 0, 0, '2020-06-27 11:50:15', '2020-01-27 11:50:15', '2020-01-27 11:50:15'),
(326, '552739', 344, 13, 25, 0, 0, '2020-06-27 11:50:15', '2020-01-27 11:50:15', '2020-01-27 11:50:15'),
(327, '880600', 344, 13, 25, 0, 0, '2020-06-27 11:50:15', '2020-01-27 11:50:15', '2020-01-27 11:50:15'),
(328, '414691', 344, 13, 25, 0, 0, '2020-06-27 11:50:15', '2020-01-27 11:50:15', '2020-01-27 11:50:15'),
(329, '240250', 344, 13, 25, 0, 0, '2020-06-27 11:50:15', '2020-01-27 11:50:15', '2020-01-27 11:50:15'),
(330, '638687', 344, 13, 25, 0, 0, '2020-06-27 11:50:15', '2020-01-27 11:50:15', '2020-01-27 11:50:15'),
(331, '407883', 379, 7, 25, 0, 1, '2020-03-03 11:00:27', '2020-02-04 01:07:30', '2020-02-03 11:00:27'),
(332, '318410', 379, 7, 25, 0, 0, '2020-03-03 11:00:27', '2020-02-03 11:00:27', '2020-02-03 11:00:27'),
(333, '790883', 379, 7, 25, 0, 0, '2020-03-03 11:00:27', '2020-02-03 11:00:27', '2020-02-03 11:00:27'),
(334, '907376', 379, 7, 25, 0, 0, '2020-03-03 11:00:27', '2020-02-03 11:00:27', '2020-02-03 11:00:27'),
(335, '157011', 379, 7, 25, 0, 0, '2020-03-03 11:00:27', '2020-02-03 11:00:27', '2020-02-03 11:00:27'),
(336, '100538', 379, 7, 25, 0, 0, '2020-03-03 11:00:27', '2020-02-03 11:00:27', '2020-02-03 11:00:27'),
(337, '704675', 379, 7, 25, 0, 0, '2020-04-03 11:00:27', '2020-02-03 11:00:27', '2020-02-03 11:00:27'),
(338, '551194', 379, 7, 25, 0, 0, '2020-04-03 11:00:27', '2020-02-03 11:00:27', '2020-02-03 11:00:27'),
(339, '308586', 379, 7, 25, 0, 0, '2020-04-03 11:00:27', '2020-02-03 11:00:27', '2020-02-03 11:00:27'),
(340, '622857', 379, 7, 25, 0, 0, '2020-04-03 11:00:27', '2020-02-03 11:00:27', '2020-02-03 11:00:27'),
(341, '406328', 379, 7, 25, 0, 0, '2020-04-03 11:00:27', '2020-02-03 11:00:27', '2020-02-03 11:00:27'),
(342, '72972', 379, 7, 25, 0, 0, '2020-04-03 11:00:27', '2020-02-03 11:00:27', '2020-02-03 11:00:27'),
(343, '691212', 379, 7, 25, 0, 0, '2020-05-03 11:00:27', '2020-02-03 11:00:27', '2020-02-03 11:00:27'),
(344, '557492', 379, 7, 25, 0, 0, '2020-05-03 11:00:27', '2020-02-03 11:00:27', '2020-02-03 11:00:27'),
(345, '420709', 379, 7, 25, 0, 0, '2020-05-03 11:00:27', '2020-02-03 11:00:27', '2020-02-03 11:00:27'),
(346, '222824', 379, 7, 25, 0, 0, '2020-05-03 11:00:27', '2020-02-03 11:00:27', '2020-02-03 11:00:27'),
(347, '568658', 379, 7, 25, 0, 0, '2020-05-03 11:00:27', '2020-02-03 11:00:27', '2020-02-03 11:00:27'),
(348, '163479', 379, 7, 25, 0, 0, '2020-05-03 11:00:27', '2020-02-03 11:00:27', '2020-02-03 11:00:27'),
(349, '127320', 379, 7, 25, 0, 0, '2020-06-03 11:00:27', '2020-02-03 11:00:27', '2020-02-03 11:00:27'),
(350, '393282', 379, 7, 25, 0, 0, '2020-06-03 11:00:27', '2020-02-03 11:00:27', '2020-02-03 11:00:27'),
(351, '38875', 379, 7, 25, 0, 0, '2020-06-03 11:00:27', '2020-02-03 11:00:27', '2020-02-03 11:00:27'),
(352, '423394', 379, 7, 25, 0, 0, '2020-06-03 11:00:27', '2020-02-03 11:00:27', '2020-02-03 11:00:27'),
(353, '877157', 379, 7, 25, 0, 0, '2020-06-03 11:00:27', '2020-02-03 11:00:27', '2020-02-03 11:00:27'),
(354, '185273', 379, 7, 25, 0, 0, '2020-06-03 11:00:27', '2020-02-03 11:00:27', '2020-02-03 11:00:27'),
(355, '42537', 379, 7, 25, 0, 0, '2020-07-03 11:00:27', '2020-02-03 11:00:27', '2020-02-03 11:00:27'),
(356, '502918', 379, 7, 25, 0, 0, '2020-07-03 11:00:27', '2020-02-03 11:00:27', '2020-02-03 11:00:27'),
(357, '419543', 379, 7, 25, 0, 0, '2020-07-03 11:00:27', '2020-02-03 11:00:27', '2020-02-03 11:00:27'),
(358, '756227', 379, 7, 25, 0, 0, '2020-07-03 11:00:27', '2020-02-03 11:00:27', '2020-02-03 11:00:27'),
(359, '737769', 379, 7, 25, 0, 0, '2020-07-03 11:00:27', '2020-02-03 11:00:27', '2020-02-03 11:00:27'),
(360, '391520', 379, 7, 25, 0, 0, '2020-07-03 11:00:27', '2020-02-03 11:00:27', '2020-02-03 11:00:27'),
(361, '516837', 384, 16, 25, 0, 0, '2020-03-04 01:49:14', '2020-02-04 01:49:14', '2020-02-04 01:49:14'),
(362, '209085', 384, 16, 25, 0, 0, '2020-03-04 01:49:14', '2020-02-04 01:49:14', '2020-02-04 01:49:14'),
(363, '927894', 384, 16, 25, 0, 0, '2020-03-04 01:49:14', '2020-02-04 01:49:14', '2020-02-04 01:49:14'),
(364, '980265', 384, 16, 25, 0, 0, '2020-03-04 01:49:14', '2020-02-04 01:49:14', '2020-02-04 01:49:14'),
(365, '642981', 384, 16, 25, 0, 0, '2020-03-04 01:49:14', '2020-02-04 01:49:14', '2020-02-04 01:49:14'),
(366, '425014', 384, 16, 25, 0, 0, '2020-03-04 01:49:14', '2020-02-04 01:49:14', '2020-02-04 01:49:14'),
(367, '22612', 384, 16, 25, 0, 0, '2020-04-04 01:49:14', '2020-02-04 01:49:14', '2020-02-04 01:49:14'),
(368, '919495', 384, 16, 25, 0, 0, '2020-04-04 01:49:14', '2020-02-04 01:49:14', '2020-02-04 01:49:14'),
(369, '840371', 384, 16, 25, 0, 0, '2020-04-04 01:49:14', '2020-02-04 01:49:14', '2020-02-04 01:49:14'),
(370, '916946', 384, 16, 25, 0, 0, '2020-04-04 01:49:14', '2020-02-04 01:49:14', '2020-02-04 01:49:14'),
(371, '129576', 384, 16, 25, 0, 0, '2020-04-04 01:49:14', '2020-02-04 01:49:14', '2020-02-04 01:49:14'),
(372, '985002', 384, 16, 25, 0, 0, '2020-04-04 01:49:14', '2020-02-04 01:49:14', '2020-02-04 01:49:14'),
(373, '959564', 384, 16, 25, 0, 0, '2020-05-04 01:49:14', '2020-02-04 01:49:14', '2020-02-04 01:49:14'),
(374, '740679', 384, 16, 25, 0, 0, '2020-05-04 01:49:14', '2020-02-04 01:49:14', '2020-02-04 01:49:14'),
(375, '692133', 384, 16, 25, 0, 0, '2020-05-04 01:49:14', '2020-02-04 01:49:14', '2020-02-04 01:49:14'),
(376, '982323', 384, 16, 25, 0, 0, '2020-05-04 01:49:14', '2020-02-04 01:49:14', '2020-02-04 01:49:14'),
(377, '245012', 384, 16, 25, 0, 0, '2020-05-04 01:49:14', '2020-02-04 01:49:14', '2020-02-04 01:49:14'),
(378, '271360', 384, 16, 25, 0, 0, '2020-05-04 01:49:14', '2020-02-04 01:49:14', '2020-02-04 01:49:14'),
(379, '351247', 384, 16, 25, 0, 0, '2020-06-04 01:49:14', '2020-02-04 01:49:14', '2020-02-04 01:49:14'),
(380, '377578', 384, 16, 25, 0, 0, '2020-06-04 01:49:14', '2020-02-04 01:49:14', '2020-02-04 01:49:14'),
(381, '201299', 384, 16, 25, 0, 0, '2020-06-04 01:49:14', '2020-02-04 01:49:14', '2020-02-04 01:49:14'),
(382, '10782', 384, 16, 25, 0, 0, '2020-06-04 01:49:14', '2020-02-04 01:49:14', '2020-02-04 01:49:14'),
(383, '561361', 384, 16, 25, 0, 0, '2020-06-04 01:49:14', '2020-02-04 01:49:14', '2020-02-04 01:49:14'),
(384, '31735', 384, 16, 25, 0, 0, '2020-06-04 01:49:14', '2020-02-04 01:49:14', '2020-02-04 01:49:14'),
(385, '645710', 384, 16, 25, 0, 0, '2020-07-04 01:49:14', '2020-02-04 01:49:14', '2020-02-04 01:49:14'),
(386, '641963', 384, 16, 25, 0, 0, '2020-07-04 01:49:14', '2020-02-04 01:49:14', '2020-02-04 01:49:14'),
(387, '305023', 384, 16, 25, 0, 0, '2020-07-04 01:49:14', '2020-02-04 01:49:14', '2020-02-04 01:49:14'),
(388, '486077', 384, 16, 25, 0, 0, '2020-07-04 01:49:14', '2020-02-04 01:49:14', '2020-02-04 01:49:14'),
(389, '401266', 384, 16, 25, 0, 0, '2020-07-04 01:49:14', '2020-02-04 01:49:14', '2020-02-04 01:49:14'),
(390, '881889', 384, 16, 25, 0, 0, '2020-07-04 01:49:14', '2020-02-04 01:49:14', '2020-02-04 01:49:14'),
(391, '486423', 385, 17, 25, 0, 0, '2020-03-04 15:43:37', '2020-02-04 15:43:37', '2020-02-04 15:43:37'),
(392, '820400', 385, 17, 25, 0, 0, '2020-03-04 15:43:37', '2020-02-04 15:43:37', '2020-02-04 15:43:37'),
(393, '779317', 385, 17, 25, 0, 0, '2020-03-04 15:43:37', '2020-02-04 15:43:37', '2020-02-04 15:43:37'),
(394, '940325', 385, 17, 25, 0, 0, '2020-03-04 15:43:37', '2020-02-04 15:43:37', '2020-02-04 15:43:37'),
(395, '640112', 385, 17, 25, 0, 0, '2020-03-04 15:43:37', '2020-02-04 15:43:37', '2020-02-04 15:43:37'),
(396, '149743', 385, 17, 25, 0, 0, '2020-03-04 15:43:37', '2020-02-04 15:43:37', '2020-02-04 15:43:37'),
(397, '496404', 385, 17, 25, 0, 0, '2020-04-04 15:43:37', '2020-02-04 15:43:37', '2020-02-04 15:43:37'),
(398, '162744', 385, 17, 25, 0, 0, '2020-04-04 15:43:37', '2020-02-04 15:43:37', '2020-02-04 15:43:37'),
(399, '637609', 385, 17, 25, 0, 0, '2020-04-04 15:43:37', '2020-02-04 15:43:37', '2020-02-04 15:43:37'),
(400, '301588', 385, 17, 25, 0, 0, '2020-04-04 15:43:37', '2020-02-04 15:43:37', '2020-02-04 15:43:37'),
(401, '786325', 385, 17, 25, 0, 0, '2020-04-04 15:43:37', '2020-02-04 15:43:37', '2020-02-04 15:43:37'),
(402, '54907', 385, 17, 25, 0, 0, '2020-04-04 15:43:37', '2020-02-04 15:43:37', '2020-02-04 15:43:37'),
(403, '559854', 385, 17, 25, 0, 0, '2020-05-04 15:43:37', '2020-02-04 15:43:37', '2020-02-04 15:43:37'),
(404, '870309', 385, 17, 25, 0, 0, '2020-05-04 15:43:37', '2020-02-04 15:43:37', '2020-02-04 15:43:37'),
(405, '75628', 385, 17, 25, 0, 0, '2020-05-04 15:43:37', '2020-02-04 15:43:37', '2020-02-04 15:43:37'),
(406, '961159', 385, 17, 25, 0, 0, '2020-05-04 15:43:37', '2020-02-04 15:43:37', '2020-02-04 15:43:37'),
(407, '890728', 385, 17, 25, 0, 0, '2020-05-04 15:43:37', '2020-02-04 15:43:37', '2020-02-04 15:43:37'),
(408, '94055', 385, 17, 25, 0, 0, '2020-05-04 15:43:37', '2020-02-04 15:43:37', '2020-02-04 15:43:37'),
(409, '831865', 385, 17, 25, 0, 0, '2020-06-04 15:43:37', '2020-02-04 15:43:37', '2020-02-04 15:43:37'),
(410, '819173', 385, 17, 25, 0, 0, '2020-06-04 15:43:37', '2020-02-04 15:43:37', '2020-02-04 15:43:37'),
(411, '922276', 385, 17, 25, 0, 0, '2020-06-04 15:43:37', '2020-02-04 15:43:37', '2020-02-04 15:43:37'),
(412, '611070', 385, 17, 25, 0, 0, '2020-06-04 15:43:37', '2020-02-04 15:43:37', '2020-02-04 15:43:37'),
(413, '996173', 385, 17, 25, 0, 0, '2020-06-04 15:43:37', '2020-02-04 15:43:37', '2020-02-04 15:43:37'),
(414, '607941', 385, 17, 25, 0, 0, '2020-06-04 15:43:37', '2020-02-04 15:43:37', '2020-02-04 15:43:37'),
(415, '754216', 385, 17, 25, 0, 0, '2020-07-04 15:43:37', '2020-02-04 15:43:37', '2020-02-04 15:43:37'),
(416, '597352', 385, 17, 25, 0, 0, '2020-07-04 15:43:37', '2020-02-04 15:43:37', '2020-02-04 15:43:37'),
(417, '370133', 385, 17, 25, 0, 0, '2020-07-04 15:43:37', '2020-02-04 15:43:37', '2020-02-04 15:43:37'),
(418, '324310', 385, 17, 25, 0, 0, '2020-07-04 15:43:37', '2020-02-04 15:43:37', '2020-02-04 15:43:37'),
(419, '183741', 385, 17, 25, 0, 0, '2020-07-04 15:43:37', '2020-02-04 15:43:37', '2020-02-04 15:43:37'),
(420, '889652', 385, 17, 25, 0, 0, '2020-07-04 15:43:37', '2020-02-04 15:43:37', '2020-02-04 15:43:37'),
(421, '936552', 386, 18, 25, 0, 0, '2020-03-08 08:24:49', '2020-02-08 08:24:49', '2020-02-08 08:24:49'),
(422, '989905', 386, 18, 25, 0, 0, '2020-03-08 08:24:49', '2020-02-08 08:24:49', '2020-02-08 08:24:49'),
(423, '107099', 386, 18, 25, 0, 0, '2020-03-08 08:24:49', '2020-02-08 08:24:49', '2020-02-08 08:24:49'),
(424, '133128', 386, 18, 25, 0, 0, '2020-03-08 08:24:49', '2020-02-08 08:24:49', '2020-02-08 08:24:49'),
(425, '721980', 386, 18, 25, 0, 0, '2020-03-08 08:24:49', '2020-02-08 08:24:49', '2020-02-08 08:24:49'),
(426, '777284', 386, 18, 25, 0, 0, '2020-03-08 08:24:49', '2020-02-08 08:24:49', '2020-02-08 08:24:49'),
(427, '98050', 386, 18, 25, 0, 0, '2020-04-08 08:24:49', '2020-02-08 08:24:49', '2020-02-08 08:24:49'),
(428, '792850', 386, 18, 25, 0, 0, '2020-04-08 08:24:49', '2020-02-08 08:24:49', '2020-02-08 08:24:49'),
(429, '497891', 386, 18, 25, 0, 0, '2020-04-08 08:24:49', '2020-02-08 08:24:49', '2020-02-08 08:24:49'),
(430, '165477', 386, 18, 25, 0, 0, '2020-04-08 08:24:49', '2020-02-08 08:24:49', '2020-02-08 08:24:49'),
(431, '426271', 386, 18, 25, 0, 0, '2020-04-08 08:24:49', '2020-02-08 08:24:49', '2020-02-08 08:24:49'),
(432, '385936', 386, 18, 25, 0, 0, '2020-04-08 08:24:49', '2020-02-08 08:24:49', '2020-02-08 08:24:49'),
(433, '306760', 386, 18, 25, 0, 0, '2020-05-08 08:24:49', '2020-02-08 08:24:49', '2020-02-08 08:24:49'),
(434, '961387', 386, 18, 25, 0, 0, '2020-05-08 08:24:49', '2020-02-08 08:24:49', '2020-02-08 08:24:49'),
(435, '457912', 386, 18, 25, 0, 0, '2020-05-08 08:24:49', '2020-02-08 08:24:49', '2020-02-08 08:24:49'),
(436, '63964', 386, 18, 25, 0, 0, '2020-05-08 08:24:49', '2020-02-08 08:24:49', '2020-02-08 08:24:49'),
(437, '311640', 386, 18, 25, 0, 0, '2020-05-08 08:24:49', '2020-02-08 08:24:49', '2020-02-08 08:24:49'),
(438, '829079', 386, 18, 25, 0, 0, '2020-05-08 08:24:49', '2020-02-08 08:24:49', '2020-02-08 08:24:49'),
(439, '13941', 386, 18, 25, 0, 0, '2020-06-08 08:24:49', '2020-02-08 08:24:49', '2020-02-08 08:24:49'),
(440, '773610', 386, 18, 25, 0, 0, '2020-06-08 08:24:49', '2020-02-08 08:24:49', '2020-02-08 08:24:49'),
(441, '61192', 386, 18, 25, 0, 0, '2020-06-08 08:24:49', '2020-02-08 08:24:49', '2020-02-08 08:24:49'),
(442, '626085', 386, 18, 25, 0, 0, '2020-06-08 08:24:49', '2020-02-08 08:24:49', '2020-02-08 08:24:49'),
(443, '206403', 386, 18, 25, 0, 0, '2020-06-08 08:24:49', '2020-02-08 08:24:49', '2020-02-08 08:24:49'),
(444, '576454', 386, 18, 25, 0, 0, '2020-06-08 08:24:49', '2020-02-08 08:24:49', '2020-02-08 08:24:49'),
(445, '494080', 386, 18, 25, 0, 0, '2020-07-08 08:24:49', '2020-02-08 08:24:49', '2020-02-08 08:24:49'),
(446, '232088', 386, 18, 25, 0, 0, '2020-07-08 08:24:49', '2020-02-08 08:24:49', '2020-02-08 08:24:49'),
(447, '552208', 386, 18, 25, 0, 0, '2020-07-08 08:24:49', '2020-02-08 08:24:49', '2020-02-08 08:24:49'),
(448, '975947', 386, 18, 25, 0, 0, '2020-07-08 08:24:49', '2020-02-08 08:24:49', '2020-02-08 08:24:49'),
(449, '457176', 386, 18, 25, 0, 0, '2020-07-08 08:24:49', '2020-02-08 08:24:49', '2020-02-08 08:24:49'),
(450, '621333', 386, 18, 25, 0, 0, '2020-07-08 08:24:49', '2020-02-08 08:24:49', '2020-02-08 08:24:49'),
(451, '83557', 387, 20, 25, 0, 0, '2020-03-08 10:02:17', '2020-02-08 10:02:17', '2020-02-08 10:02:17'),
(452, '893661', 387, 20, 25, 0, 0, '2020-03-08 10:02:17', '2020-02-08 10:02:17', '2020-02-08 10:02:17'),
(453, '400371', 387, 20, 25, 0, 0, '2020-03-08 10:02:17', '2020-02-08 10:02:17', '2020-02-08 10:02:17'),
(454, '419543', 387, 20, 25, 0, 0, '2020-03-08 10:02:17', '2020-02-08 10:02:17', '2020-02-08 10:02:17'),
(455, '317342', 387, 20, 25, 0, 0, '2020-03-08 10:02:17', '2020-02-08 10:02:17', '2020-02-08 10:02:17'),
(456, '778225', 387, 20, 25, 0, 0, '2020-03-08 10:02:17', '2020-02-08 10:02:17', '2020-02-08 10:02:17'),
(457, '727120', 387, 20, 25, 0, 0, '2020-04-08 10:02:17', '2020-02-08 10:02:17', '2020-02-08 10:02:17'),
(458, '250792', 387, 20, 25, 0, 0, '2020-04-08 10:02:17', '2020-02-08 10:02:17', '2020-02-08 10:02:17'),
(459, '163426', 387, 20, 25, 0, 0, '2020-04-08 10:02:17', '2020-02-08 10:02:17', '2020-02-08 10:02:17'),
(460, '268477', 387, 20, 25, 0, 0, '2020-04-08 10:02:17', '2020-02-08 10:02:17', '2020-02-08 10:02:17'),
(461, '284046', 387, 20, 25, 0, 0, '2020-04-08 10:02:17', '2020-02-08 10:02:17', '2020-02-08 10:02:17'),
(462, '681266', 387, 20, 25, 0, 0, '2020-04-08 10:02:17', '2020-02-08 10:02:17', '2020-02-08 10:02:17'),
(463, '842528', 387, 20, 25, 0, 0, '2020-05-08 10:02:17', '2020-02-08 10:02:17', '2020-02-08 10:02:17'),
(464, '67693', 387, 20, 25, 0, 0, '2020-05-08 10:02:17', '2020-02-08 10:02:17', '2020-02-08 10:02:17'),
(465, '937089', 387, 20, 25, 0, 0, '2020-05-08 10:02:17', '2020-02-08 10:02:17', '2020-02-08 10:02:17'),
(466, '387222', 387, 20, 25, 0, 0, '2020-05-08 10:02:17', '2020-02-08 10:02:17', '2020-02-08 10:02:17'),
(467, '869074', 387, 20, 25, 0, 0, '2020-05-08 10:02:17', '2020-02-08 10:02:17', '2020-02-08 10:02:17'),
(468, '560069', 387, 20, 25, 0, 0, '2020-05-08 10:02:17', '2020-02-08 10:02:17', '2020-02-08 10:02:17'),
(469, '535097', 387, 20, 25, 0, 0, '2020-06-08 10:02:17', '2020-02-08 10:02:17', '2020-02-08 10:02:17'),
(470, '808197', 387, 20, 25, 0, 0, '2020-06-08 10:02:17', '2020-02-08 10:02:17', '2020-02-08 10:02:17'),
(471, '56357', 387, 20, 25, 0, 0, '2020-06-08 10:02:17', '2020-02-08 10:02:17', '2020-02-08 10:02:17'),
(472, '519156', 387, 20, 25, 0, 0, '2020-06-08 10:02:17', '2020-02-08 10:02:17', '2020-02-08 10:02:17'),
(473, '811449', 387, 20, 25, 0, 0, '2020-06-08 10:02:17', '2020-02-08 10:02:17', '2020-02-08 10:02:17'),
(474, '27450', 387, 20, 25, 0, 0, '2020-06-08 10:02:17', '2020-02-08 10:02:17', '2020-02-08 10:02:17'),
(475, '922254', 387, 20, 25, 0, 0, '2020-07-08 10:02:17', '2020-02-08 10:02:17', '2020-02-08 10:02:17'),
(476, '53903', 387, 20, 25, 0, 0, '2020-07-08 10:02:17', '2020-02-08 10:02:17', '2020-02-08 10:02:17'),
(477, '951994', 387, 20, 25, 0, 0, '2020-07-08 10:02:17', '2020-02-08 10:02:17', '2020-02-08 10:02:17'),
(478, '300594', 387, 20, 25, 0, 0, '2020-07-08 10:02:17', '2020-02-08 10:02:17', '2020-02-08 10:02:17'),
(479, '550261', 387, 20, 25, 0, 0, '2020-07-08 10:02:17', '2020-02-08 10:02:17', '2020-02-08 10:02:17'),
(480, '234677', 387, 20, 25, 0, 0, '2020-07-08 10:02:17', '2020-02-08 10:02:17', '2020-02-08 10:02:17'),
(481, '827949', 388, 21, 25, 0, 0, '2020-03-10 14:12:09', '2020-02-10 14:12:09', '2020-02-10 14:12:09'),
(482, '71895', 388, 21, 25, 0, 0, '2020-03-10 14:12:09', '2020-02-10 14:12:09', '2020-02-10 14:12:09'),
(483, '277354', 388, 21, 25, 0, 0, '2020-03-10 14:12:09', '2020-02-10 14:12:09', '2020-02-10 14:12:09'),
(484, '798529', 388, 21, 25, 0, 0, '2020-03-10 14:12:09', '2020-02-10 14:12:09', '2020-02-10 14:12:09'),
(485, '851781', 388, 21, 25, 0, 0, '2020-03-10 14:12:09', '2020-02-10 14:12:09', '2020-02-10 14:12:09'),
(486, '895885', 388, 21, 25, 0, 0, '2020-03-10 14:12:09', '2020-02-10 14:12:09', '2020-02-10 14:12:09'),
(487, '336334', 388, 21, 25, 0, 0, '2020-04-10 14:12:09', '2020-02-10 14:12:09', '2020-02-10 14:12:09'),
(488, '288001', 388, 21, 25, 0, 0, '2020-04-10 14:12:09', '2020-02-10 14:12:09', '2020-02-10 14:12:09'),
(489, '238629', 388, 21, 25, 0, 0, '2020-04-10 14:12:09', '2020-02-10 14:12:09', '2020-02-10 14:12:09'),
(490, '160450', 388, 21, 25, 0, 0, '2020-04-10 14:12:09', '2020-02-10 14:12:09', '2020-02-10 14:12:09'),
(491, '784633', 388, 21, 25, 0, 0, '2020-04-10 14:12:09', '2020-02-10 14:12:09', '2020-02-10 14:12:09'),
(492, '625251', 388, 21, 25, 0, 0, '2020-04-10 14:12:09', '2020-02-10 14:12:09', '2020-02-10 14:12:09'),
(493, '469318', 388, 21, 25, 0, 0, '2020-05-10 14:12:09', '2020-02-10 14:12:09', '2020-02-10 14:12:09'),
(494, '205952', 388, 21, 25, 0, 0, '2020-05-10 14:12:09', '2020-02-10 14:12:09', '2020-02-10 14:12:09'),
(495, '327866', 388, 21, 25, 0, 0, '2020-05-10 14:12:09', '2020-02-10 14:12:09', '2020-02-10 14:12:09'),
(496, '677770', 388, 21, 25, 0, 0, '2020-05-10 14:12:09', '2020-02-10 14:12:09', '2020-02-10 14:12:09'),
(497, '734472', 388, 21, 25, 0, 0, '2020-05-10 14:12:09', '2020-02-10 14:12:09', '2020-02-10 14:12:09'),
(498, '574082', 388, 21, 25, 0, 0, '2020-05-10 14:12:09', '2020-02-10 14:12:09', '2020-02-10 14:12:09'),
(499, '243545', 388, 21, 25, 0, 0, '2020-06-10 14:12:09', '2020-02-10 14:12:09', '2020-02-10 14:12:09'),
(500, '750863', 388, 21, 25, 0, 0, '2020-06-10 14:12:09', '2020-02-10 14:12:09', '2020-02-10 14:12:09'),
(501, '280838', 388, 21, 25, 0, 0, '2020-06-10 14:12:09', '2020-02-10 14:12:09', '2020-02-10 14:12:09'),
(502, '819796', 388, 21, 25, 0, 0, '2020-06-10 14:12:09', '2020-02-10 14:12:09', '2020-02-10 14:12:09'),
(503, '568799', 388, 21, 25, 0, 0, '2020-06-10 14:12:09', '2020-02-10 14:12:09', '2020-02-10 14:12:09'),
(504, '997901', 388, 21, 25, 0, 0, '2020-06-10 14:12:09', '2020-02-10 14:12:09', '2020-02-10 14:12:09'),
(505, '217170', 388, 21, 25, 0, 0, '2020-07-10 14:12:09', '2020-02-10 14:12:09', '2020-02-10 14:12:09'),
(506, '627752', 388, 21, 25, 0, 0, '2020-07-10 14:12:09', '2020-02-10 14:12:09', '2020-02-10 14:12:09'),
(507, '475393', 388, 21, 25, 0, 0, '2020-07-10 14:12:09', '2020-02-10 14:12:09', '2020-02-10 14:12:09'),
(508, '20179', 388, 21, 25, 0, 0, '2020-07-10 14:12:09', '2020-02-10 14:12:09', '2020-02-10 14:12:09'),
(509, '277714', 388, 21, 25, 0, 0, '2020-07-10 14:12:09', '2020-02-10 14:12:09', '2020-02-10 14:12:09'),
(510, '379090', 388, 21, 25, 0, 0, '2020-07-10 14:12:09', '2020-02-10 14:12:09', '2020-02-10 14:12:09'),
(841, '774557', 389, 25, 25, 0, 0, '2020-03-10 14:40:24', '2020-02-10 14:40:24', '2020-02-10 14:40:24'),
(842, '823869', 389, 25, 25, 0, 0, '2020-03-10 14:40:24', '2020-02-10 14:40:24', '2020-02-10 14:40:24'),
(843, '235862', 389, 25, 25, 0, 0, '2020-03-10 14:40:24', '2020-02-10 14:40:24', '2020-02-10 14:40:24'),
(844, '847464', 389, 25, 25, 0, 0, '2020-03-10 14:40:24', '2020-02-10 14:40:24', '2020-02-10 14:40:24'),
(845, '802644', 389, 25, 25, 0, 0, '2020-03-10 14:40:24', '2020-02-10 14:40:24', '2020-02-10 14:40:24'),
(846, '925419', 389, 25, 25, 0, 0, '2020-03-10 14:40:24', '2020-02-10 14:40:24', '2020-02-10 14:40:24'),
(847, '186281', 389, 25, 25, 0, 0, '2020-04-10 14:40:24', '2020-02-10 14:40:24', '2020-02-10 14:40:24'),
(848, '417687', 389, 25, 25, 0, 0, '2020-04-10 14:40:24', '2020-02-10 14:40:24', '2020-02-10 14:40:24'),
(871, '596688', 344, 2, 0, 0, 0, '2020-02-29 10:21:25', '2020-02-12 10:21:25', '2020-02-12 10:21:25'),
(872, '375831', 344, 2, 0, 0, 0, '2020-02-29 10:21:25', '2020-02-12 10:21:25', '2020-02-12 10:21:25'),
(873, '238376', 344, 2, 0, 0, 0, '2020-02-29 10:21:25', '2020-02-12 10:21:25', '2020-02-12 10:21:25'),
(874, '464591', 344, 26, 0, 0, 0, '2020-04-16 13:56:15', '2020-03-16 13:56:15', '2020-03-16 13:56:15'),
(875, '412443', 344, 26, 0, 0, 0, '2020-04-16 13:56:15', '2020-03-16 13:56:15', '2020-03-16 13:56:15'),
(876, '821398', 344, 26, 0, 0, 0, '2020-04-16 13:56:15', '2020-03-16 13:56:15', '2020-03-16 13:56:15'),
(877, '119813', 344, 26, 0, 0, 1, '2020-05-16 13:56:15', '2020-05-06 01:01:28', '2020-03-16 13:56:15'),
(878, '497541', 344, 26, 0, 0, 0, '2020-05-16 13:56:15', '2020-03-16 13:56:15', '2020-03-16 13:56:15'),
(879, '431703', 344, 26, 0, 0, 0, '2020-05-16 13:56:15', '2020-03-16 13:56:15', '2020-03-16 13:56:15'),
(880, '55856', 344, 26, 0, 0, 0, '2020-06-16 13:56:15', '2020-03-16 13:56:15', '2020-03-16 13:56:15'),
(881, '18738', 344, 26, 0, 0, 0, '2020-06-16 13:56:15', '2020-03-16 13:56:15', '2020-03-16 13:56:15'),
(882, '293005', 344, 26, 0, 0, 0, '2020-06-16 13:56:15', '2020-03-16 13:56:15', '2020-03-16 13:56:15'),
(883, '953033', 344, 26, 0, 0, 0, '2020-07-16 13:56:15', '2020-03-16 13:56:15', '2020-03-16 13:56:15'),
(884, '201999', 344, 26, 0, 0, 0, '2020-07-16 13:56:15', '2020-03-16 13:56:15', '2020-03-16 13:56:15'),
(885, '966013', 344, 26, 0, 0, 0, '2020-07-16 13:56:15', '2020-03-16 13:56:15', '2020-03-16 13:56:15'),
(886, '950450', 344, 26, 0, 0, 0, '2020-08-16 13:56:15', '2020-03-16 13:56:15', '2020-03-16 13:56:15'),
(887, '155971', 344, 26, 0, 0, 0, '2020-08-16 13:56:15', '2020-03-16 13:56:15', '2020-03-16 13:56:15'),
(888, '938946', 344, 26, 0, 0, 0, '2020-08-16 13:56:15', '2020-03-16 13:56:15', '2020-03-16 13:56:15'),
(889, '630134', 344, 26, 0, 0, 0, '2020-09-16 13:56:15', '2020-03-16 13:56:15', '2020-03-16 13:56:15'),
(890, '303392', 344, 26, 0, 0, 0, '2020-09-16 13:56:15', '2020-03-16 13:56:15', '2020-03-16 13:56:15'),
(891, '66821', 344, 26, 0, 0, 0, '2020-09-16 13:56:15', '2020-03-16 13:56:15', '2020-03-16 13:56:15'),
(892, '958403', 344, 27, 25, 0, 0, '2020-04-16 14:17:14', '2020-03-16 14:17:14', '2020-03-16 14:17:14'),
(893, '251236', 344, 27, 25, 0, 0, '2020-04-16 14:17:14', '2020-03-16 14:17:14', '2020-03-16 14:17:14'),
(894, '139329', 344, 27, 25, 0, 0, '2020-04-16 14:17:14', '2020-03-16 14:17:14', '2020-03-16 14:17:14'),
(895, '582795', 344, 27, 25, 0, 0, '2020-04-16 14:17:14', '2020-03-16 14:17:14', '2020-03-16 14:17:14'),
(896, '530922', 344, 27, 25, 0, 0, '2020-04-16 14:17:14', '2020-03-16 14:17:14', '2020-03-16 14:17:14'),
(897, '27190', 344, 27, 25, 0, 0, '2020-04-16 14:17:14', '2020-03-16 14:17:14', '2020-03-16 14:17:14'),
(898, '841326', 344, 27, 25, 0, 0, '2020-05-16 14:17:14', '2020-03-16 14:17:14', '2020-03-16 14:17:14'),
(899, '812663', 344, 27, 25, 0, 1, '2020-05-16 14:17:14', '2020-05-06 01:15:49', '2020-03-16 14:17:14'),
(900, '67984', 344, 27, 25, 0, 0, '2020-05-16 14:17:14', '2020-03-16 14:17:14', '2020-03-16 14:17:14'),
(901, '116967', 344, 27, 25, 0, 0, '2020-05-16 14:17:14', '2020-03-16 14:17:14', '2020-03-16 14:17:14'),
(902, '62871', 344, 27, 25, 0, 0, '2020-05-16 14:17:14', '2020-03-16 14:17:14', '2020-03-16 14:17:14'),
(903, '232094', 344, 27, 25, 0, 0, '2020-05-16 14:17:14', '2020-03-16 14:17:14', '2020-03-16 14:17:14'),
(904, '386171', 344, 27, 25, 0, 0, '2020-06-16 14:17:14', '2020-03-16 14:17:14', '2020-03-16 14:17:14'),
(905, '60060', 344, 27, 25, 0, 0, '2020-06-16 14:17:14', '2020-03-16 14:17:14', '2020-03-16 14:17:14'),
(906, '751834', 344, 27, 25, 0, 0, '2020-06-16 14:17:14', '2020-03-16 14:17:14', '2020-03-16 14:17:14'),
(907, '241941', 344, 27, 25, 0, 0, '2020-06-16 14:17:14', '2020-03-16 14:17:14', '2020-03-16 14:17:14'),
(908, '180252', 344, 27, 25, 0, 0, '2020-06-16 14:17:14', '2020-03-16 14:17:14', '2020-03-16 14:17:14'),
(909, '102208', 344, 27, 25, 0, 0, '2020-06-16 14:17:14', '2020-03-16 14:17:14', '2020-03-16 14:17:14'),
(910, '946791', 344, 27, 25, 0, 0, '2020-07-16 14:17:14', '2020-03-16 14:17:14', '2020-03-16 14:17:14'),
(911, '973939', 344, 27, 25, 0, 0, '2020-07-16 14:17:14', '2020-03-16 14:17:14', '2020-03-16 14:17:14'),
(912, '590494', 344, 27, 25, 0, 0, '2020-07-16 14:17:14', '2020-03-16 14:17:14', '2020-03-16 14:17:14'),
(913, '577433', 344, 27, 25, 0, 0, '2020-07-16 14:17:14', '2020-03-16 14:17:14', '2020-03-16 14:17:14'),
(914, '220285', 344, 27, 25, 0, 0, '2020-07-16 14:17:14', '2020-03-16 14:17:14', '2020-03-16 14:17:14'),
(915, '570928', 344, 27, 25, 0, 0, '2020-07-16 14:17:14', '2020-03-16 14:17:14', '2020-03-16 14:17:14'),
(916, '288753', 344, 27, 25, 0, 0, '2020-08-16 14:17:14', '2020-03-16 14:17:14', '2020-03-16 14:17:14'),
(917, '937376', 344, 27, 25, 0, 0, '2020-08-16 14:17:14', '2020-03-16 14:17:14', '2020-03-16 14:17:14'),
(918, '965093', 344, 27, 25, 0, 0, '2020-08-16 14:17:14', '2020-03-16 14:17:14', '2020-03-16 14:17:14'),
(919, '168160', 344, 27, 25, 0, 0, '2020-08-16 14:17:14', '2020-03-16 14:17:14', '2020-03-16 14:17:14'),
(920, '570880', 344, 27, 25, 0, 0, '2020-08-16 14:17:14', '2020-03-16 14:17:14', '2020-03-16 14:17:14'),
(921, '193197', 344, 27, 25, 0, 0, '2020-08-16 14:17:14', '2020-03-16 14:17:14', '2020-03-16 14:17:14'),
(922, '308138', 344, 30, 0, 0, 0, '2020-05-20 11:36:21', '2020-04-20 11:36:21', '2020-04-20 11:36:21'),
(923, '927024', 344, 30, 0, 0, 0, '2020-05-20 11:36:21', '2020-04-20 11:36:21', '2020-04-20 11:36:21'),
(924, '868261', 344, 30, 0, 0, 0, '2020-05-20 11:36:21', '2020-04-20 11:36:21', '2020-04-20 11:36:21'),
(925, '292249', 344, 30, 0, 0, 0, '2020-06-20 11:36:21', '2020-04-20 11:36:21', '2020-04-20 11:36:21'),
(926, '678037', 344, 30, 0, 0, 0, '2020-06-20 11:36:21', '2020-04-20 11:36:21', '2020-04-20 11:36:21'),
(927, '574375', 344, 30, 0, 0, 0, '2020-06-20 11:36:21', '2020-04-20 11:36:21', '2020-04-20 11:36:21'),
(928, '267252', 344, 30, 0, 0, 0, '2020-07-20 11:36:21', '2020-04-20 11:36:21', '2020-04-20 11:36:21'),
(929, '889183', 344, 30, 0, 0, 0, '2020-07-20 11:36:21', '2020-04-20 11:36:21', '2020-04-20 11:36:21');
INSERT INTO `subscription_tokens` (`id`, `uid`, `user_id`, `subscription_id`, `amount`, `payment_id`, `status`, `expiry`, `updated_at`, `created_at`) VALUES
(930, '930568', 344, 30, 0, 0, 0, '2020-07-20 11:36:21', '2020-04-20 11:36:21', '2020-04-20 11:36:21'),
(931, '771587', 344, 30, 0, 0, 0, '2020-08-20 11:36:21', '2020-04-20 11:36:21', '2020-04-20 11:36:21'),
(932, '931201', 344, 30, 0, 0, 0, '2020-08-20 11:36:21', '2020-04-20 11:36:21', '2020-04-20 11:36:21'),
(933, '560813', 344, 30, 0, 0, 0, '2020-08-20 11:36:21', '2020-04-20 11:36:21', '2020-04-20 11:36:21'),
(934, '345213', 344, 30, 0, 0, 0, '2020-09-20 11:36:21', '2020-04-20 11:36:21', '2020-04-20 11:36:21'),
(935, '647756', 344, 30, 0, 0, 0, '2020-09-20 11:36:21', '2020-04-20 11:36:21', '2020-04-20 11:36:21'),
(936, '650063', 344, 30, 0, 0, 0, '2020-09-20 11:36:21', '2020-04-20 11:36:21', '2020-04-20 11:36:21'),
(937, '400932', 344, 30, 0, 39, 1, '2020-10-20 11:36:21', '2020-09-21 09:47:21', '2020-04-20 11:36:21'),
(938, '414532', 344, 30, 0, 55, 1, '2020-10-20 11:36:21', '2020-09-29 11:49:42', '2020-04-20 11:36:21'),
(939, '395678', 344, 30, 0, 42, 1, '2020-10-20 11:36:21', '2020-09-23 08:16:22', '2020-04-20 11:36:21'),
(940, '202956', 399, 32, 25, 17, 1, '2020-06-04 08:57:13', '2020-05-04 09:37:00', '2020-05-04 08:57:13'),
(941, '398356', 399, 32, 25, 0, 1, '2020-06-04 08:57:13', '2020-05-06 08:07:12', '2020-05-04 08:57:13'),
(942, '233745', 399, 32, 25, 0, 1, '2020-06-04 08:57:13', '2020-05-06 08:17:21', '2020-05-04 08:57:13'),
(943, '780150', 399, 32, 25, 21, 1, '2020-06-04 08:57:13', '2020-05-06 08:43:27', '2020-05-04 08:57:13'),
(944, '421028', 399, 32, 25, 23, 1, '2020-06-04 08:57:13', '2020-05-08 15:27:34', '2020-05-04 08:57:13'),
(945, '448864', 399, 32, 25, 24, 1, '2020-06-04 08:57:13', '2020-05-08 15:33:05', '2020-05-04 08:57:13'),
(946, '338412', 399, 32, 25, 0, 0, '2020-07-04 08:57:13', '2020-05-04 08:57:13', '2020-05-04 08:57:13'),
(947, '477673', 399, 32, 25, 0, 0, '2020-07-04 08:57:13', '2020-05-04 08:57:13', '2020-05-04 08:57:13'),
(948, '188930', 399, 32, 25, 0, 0, '2020-07-04 08:57:13', '2020-05-04 08:57:13', '2020-05-04 08:57:13'),
(949, '215783', 399, 32, 25, 0, 0, '2020-07-04 08:57:13', '2020-05-04 08:57:13', '2020-05-04 08:57:13'),
(950, '126479', 399, 32, 25, 0, 0, '2020-07-04 08:57:13', '2020-05-04 08:57:13', '2020-05-04 08:57:13'),
(951, '224709', 399, 32, 25, 0, 0, '2020-07-04 08:57:13', '2020-05-04 08:57:13', '2020-05-04 08:57:13'),
(952, '270983', 399, 32, 25, 0, 0, '2020-08-04 08:57:13', '2020-05-04 08:57:13', '2020-05-04 08:57:13'),
(953, '719714', 399, 32, 25, 0, 0, '2020-08-04 08:57:13', '2020-05-04 08:57:13', '2020-05-04 08:57:13'),
(954, '556599', 399, 32, 25, 0, 0, '2020-08-04 08:57:13', '2020-05-04 08:57:13', '2020-05-04 08:57:13'),
(955, '517312', 399, 32, 25, 0, 0, '2020-08-04 08:57:13', '2020-05-04 08:57:13', '2020-05-04 08:57:13'),
(956, '59451', 399, 32, 25, 0, 0, '2020-08-04 08:57:13', '2020-05-04 08:57:13', '2020-05-04 08:57:13'),
(957, '862869', 399, 32, 25, 0, 0, '2020-08-04 08:57:13', '2020-05-04 08:57:13', '2020-05-04 08:57:13'),
(958, '213110', 399, 32, 25, 0, 0, '2020-09-04 08:57:13', '2020-05-04 08:57:13', '2020-05-04 08:57:13'),
(959, '169320', 399, 32, 25, 0, 0, '2020-09-04 08:57:13', '2020-05-04 08:57:13', '2020-05-04 08:57:13'),
(960, '345826', 399, 32, 25, 0, 0, '2020-09-04 08:57:13', '2020-05-04 08:57:13', '2020-05-04 08:57:13'),
(961, '716585', 399, 32, 25, 0, 0, '2020-09-04 08:57:13', '2020-05-04 08:57:13', '2020-05-04 08:57:13'),
(962, '403259', 399, 32, 25, 0, 0, '2020-09-04 08:57:13', '2020-05-04 08:57:13', '2020-05-04 08:57:13'),
(963, '57080', 399, 32, 25, 0, 0, '2020-09-04 08:57:13', '2020-05-04 08:57:13', '2020-05-04 08:57:13'),
(964, '688917', 399, 32, 25, 0, 0, '2020-10-04 08:57:13', '2020-05-04 08:57:13', '2020-05-04 08:57:13'),
(965, '560236', 399, 32, 25, 0, 0, '2020-10-04 08:57:13', '2020-05-04 08:57:13', '2020-05-04 08:57:13'),
(966, '827783', 399, 32, 25, 0, 0, '2020-10-04 08:57:13', '2020-05-04 08:57:13', '2020-05-04 08:57:13'),
(967, '451161', 399, 32, 25, 0, 0, '2020-10-04 08:57:13', '2020-05-04 08:57:13', '2020-05-04 08:57:13'),
(968, '818759', 399, 32, 25, 0, 0, '2020-10-04 08:57:13', '2020-05-04 08:57:13', '2020-05-04 08:57:13'),
(969, '470206', 399, 32, 25, 0, 0, '2020-10-04 08:57:13', '2020-05-04 08:57:13', '2020-05-04 08:57:13'),
(970, '210848', 399, 35, 0, 25, 1, '2020-06-08 15:34:24', '2020-05-08 15:40:07', '2020-05-08 15:34:24'),
(971, '732834', 399, 35, 0, 26, 1, '2020-06-08 15:34:24', '2020-05-08 15:46:04', '2020-05-08 15:34:24'),
(972, '134468', 399, 35, 0, 0, 0, '2020-06-08 15:34:24', '2020-05-08 15:34:24', '2020-05-08 15:34:24'),
(973, '549220', 399, 35, 0, 0, 0, '2020-07-08 15:34:24', '2020-05-08 15:34:24', '2020-05-08 15:34:24'),
(974, '279294', 399, 35, 0, 0, 0, '2020-07-08 15:34:24', '2020-05-08 15:34:24', '2020-05-08 15:34:24'),
(975, '577072', 399, 35, 0, 0, 0, '2020-07-08 15:34:24', '2020-05-08 15:34:24', '2020-05-08 15:34:24'),
(976, '819356', 399, 35, 0, 0, 0, '2020-08-08 15:34:24', '2020-05-08 15:34:24', '2020-05-08 15:34:24'),
(977, '590508', 399, 35, 0, 0, 0, '2020-08-08 15:34:24', '2020-05-08 15:34:24', '2020-05-08 15:34:24'),
(978, '378565', 399, 35, 0, 0, 0, '2020-08-08 15:34:24', '2020-05-08 15:34:24', '2020-05-08 15:34:24'),
(979, '670518', 399, 35, 0, 0, 0, '2020-09-08 15:34:24', '2020-05-08 15:34:24', '2020-05-08 15:34:24'),
(980, '970610', 399, 35, 0, 0, 0, '2020-09-08 15:34:24', '2020-05-08 15:34:24', '2020-05-08 15:34:24'),
(981, '315781', 399, 35, 0, 0, 0, '2020-09-08 15:34:24', '2020-05-08 15:34:24', '2020-05-08 15:34:24'),
(982, '636380', 399, 35, 0, 0, 0, '2020-10-08 15:34:24', '2020-05-08 15:34:24', '2020-05-08 15:34:24'),
(983, '893419', 399, 35, 0, 0, 0, '2020-10-08 15:34:24', '2020-05-08 15:34:24', '2020-05-08 15:34:24'),
(984, '276466', 399, 35, 0, 0, 0, '2020-10-08 15:34:24', '2020-05-08 15:34:24', '2020-05-08 15:34:24'),
(985, '923501', 399, 35, 0, 0, 0, '2020-11-08 15:34:24', '2020-05-08 15:34:24', '2020-05-08 15:34:24'),
(986, '968818', 399, 35, 0, 0, 0, '2020-11-08 15:34:24', '2020-05-08 15:34:24', '2020-05-08 15:34:24'),
(987, '599941', 399, 35, 0, 0, 0, '2020-11-08 15:34:24', '2020-05-08 15:34:24', '2020-05-08 15:34:24'),
(988, '419864', 399, 36, 25, 27, 1, '2020-06-08 16:22:24', '2020-05-19 16:52:18', '2020-05-08 16:22:24'),
(989, '514831', 399, 36, 25, 0, 0, '2020-06-08 16:22:24', '2020-05-08 16:22:24', '2020-05-08 16:22:24'),
(990, '231746', 399, 36, 25, 0, 0, '2020-06-08 16:22:24', '2020-05-08 16:22:24', '2020-05-08 16:22:24'),
(991, '582733', 399, 36, 25, 0, 0, '2020-06-08 16:22:24', '2020-05-08 16:22:24', '2020-05-08 16:22:24'),
(992, '747100', 399, 36, 25, 0, 0, '2020-06-08 16:22:24', '2020-05-08 16:22:24', '2020-05-08 16:22:24'),
(993, '908980', 399, 36, 25, 0, 0, '2020-06-08 16:22:24', '2020-05-08 16:22:24', '2020-05-08 16:22:24'),
(994, '901873', 399, 36, 25, 0, 0, '2020-07-08 16:22:24', '2020-05-08 16:22:24', '2020-05-08 16:22:24'),
(995, '130334', 399, 36, 25, 0, 0, '2020-07-08 16:22:24', '2020-05-08 16:22:24', '2020-05-08 16:22:24'),
(996, '554354', 399, 36, 25, 0, 0, '2020-07-08 16:22:24', '2020-05-08 16:22:24', '2020-05-08 16:22:24'),
(997, '336508', 399, 36, 25, 0, 0, '2020-07-08 16:22:24', '2020-05-08 16:22:24', '2020-05-08 16:22:24'),
(998, '451156', 399, 36, 25, 0, 0, '2020-07-08 16:22:24', '2020-05-08 16:22:24', '2020-05-08 16:22:24'),
(999, '355857', 399, 36, 25, 0, 0, '2020-07-08 16:22:24', '2020-05-08 16:22:24', '2020-05-08 16:22:24'),
(1000, '591170', 399, 36, 25, 0, 0, '2020-08-08 16:22:24', '2020-05-08 16:22:24', '2020-05-08 16:22:24'),
(1001, '374640', 399, 36, 25, 0, 0, '2020-08-08 16:22:24', '2020-05-08 16:22:24', '2020-05-08 16:22:24'),
(1002, '634791', 399, 36, 25, 0, 0, '2020-08-08 16:22:24', '2020-05-08 16:22:24', '2020-05-08 16:22:24'),
(1003, '155822', 399, 36, 25, 0, 0, '2020-08-08 16:22:24', '2020-05-08 16:22:24', '2020-05-08 16:22:24'),
(1004, '726787', 399, 36, 25, 0, 0, '2020-08-08 16:22:24', '2020-05-08 16:22:24', '2020-05-08 16:22:24'),
(1005, '554118', 399, 36, 25, 0, 0, '2020-08-08 16:22:24', '2020-05-08 16:22:24', '2020-05-08 16:22:24'),
(1006, '949723', 399, 36, 25, 0, 0, '2020-09-08 16:22:24', '2020-05-08 16:22:24', '2020-05-08 16:22:24'),
(1007, '656433', 399, 36, 25, 0, 0, '2020-09-08 16:22:24', '2020-05-08 16:22:24', '2020-05-08 16:22:24'),
(1008, '700627', 399, 36, 25, 0, 0, '2020-09-08 16:22:24', '2020-05-08 16:22:24', '2020-05-08 16:22:24'),
(1009, '620814', 399, 36, 25, 0, 0, '2020-09-08 16:22:24', '2020-05-08 16:22:24', '2020-05-08 16:22:24'),
(1010, '756916', 399, 36, 25, 0, 0, '2020-09-08 16:22:24', '2020-05-08 16:22:24', '2020-05-08 16:22:24'),
(1011, '262448', 399, 36, 25, 0, 0, '2020-09-08 16:22:24', '2020-05-08 16:22:24', '2020-05-08 16:22:24'),
(1012, '516664', 399, 36, 25, 0, 0, '2020-10-08 16:22:24', '2020-05-08 16:22:24', '2020-05-08 16:22:24'),
(1013, '790516', 399, 36, 25, 0, 0, '2020-10-08 16:22:24', '2020-05-08 16:22:24', '2020-05-08 16:22:24'),
(1014, '797245', 399, 36, 25, 0, 0, '2020-10-08 16:22:24', '2020-05-08 16:22:24', '2020-05-08 16:22:24'),
(1015, '678378', 399, 36, 25, 0, 0, '2020-10-08 16:22:24', '2020-05-08 16:22:24', '2020-05-08 16:22:24'),
(1016, '175581', 399, 36, 25, 0, 0, '2020-10-08 16:22:24', '2020-05-08 16:22:24', '2020-05-08 16:22:24'),
(1017, '309338', 399, 36, 25, 0, 0, '2020-10-08 16:22:24', '2020-05-08 16:22:24', '2020-05-08 16:22:24'),
(1018, '602113', 399, 38, 25, 0, 0, '2020-06-19 16:29:26', '2020-05-19 16:29:26', '2020-05-19 16:29:26'),
(1019, '926136', 399, 38, 25, 0, 0, '2020-06-19 16:29:26', '2020-05-19 16:29:26', '2020-05-19 16:29:26'),
(1020, '454103', 399, 38, 25, 0, 0, '2020-06-19 16:29:26', '2020-05-19 16:29:26', '2020-05-19 16:29:26'),
(1021, '43794', 399, 38, 25, 0, 0, '2020-06-19 16:29:26', '2020-05-19 16:29:26', '2020-05-19 16:29:26'),
(1022, '490068', 399, 38, 25, 0, 0, '2020-06-19 16:29:26', '2020-05-19 16:29:26', '2020-05-19 16:29:26'),
(1023, '361095', 399, 38, 25, 0, 0, '2020-06-19 16:29:26', '2020-05-19 16:29:26', '2020-05-19 16:29:26'),
(1024, '217346', 399, 38, 25, 0, 0, '2020-07-19 16:29:26', '2020-05-19 16:29:26', '2020-05-19 16:29:26'),
(1025, '857014', 399, 38, 25, 0, 0, '2020-07-19 16:29:26', '2020-05-19 16:29:26', '2020-05-19 16:29:26'),
(1026, '933689', 399, 38, 25, 0, 0, '2020-07-19 16:29:26', '2020-05-19 16:29:26', '2020-05-19 16:29:26'),
(1027, '543173', 399, 38, 25, 0, 0, '2020-07-19 16:29:26', '2020-05-19 16:29:26', '2020-05-19 16:29:26'),
(1028, '515051', 399, 38, 25, 0, 0, '2020-07-19 16:29:26', '2020-05-19 16:29:26', '2020-05-19 16:29:26'),
(1029, '825692', 399, 38, 25, 0, 0, '2020-07-19 16:29:26', '2020-05-19 16:29:26', '2020-05-19 16:29:26'),
(1030, '148489', 399, 38, 25, 0, 0, '2020-08-19 16:29:26', '2020-05-19 16:29:26', '2020-05-19 16:29:26'),
(1031, '947626', 399, 38, 25, 0, 0, '2020-08-19 16:29:26', '2020-05-19 16:29:26', '2020-05-19 16:29:26'),
(1032, '810415', 399, 38, 25, 0, 0, '2020-08-19 16:29:26', '2020-05-19 16:29:26', '2020-05-19 16:29:26'),
(1033, '837416', 399, 38, 25, 0, 0, '2020-08-19 16:29:26', '2020-05-19 16:29:26', '2020-05-19 16:29:26'),
(1034, '956222', 399, 38, 25, 0, 0, '2020-08-19 16:29:26', '2020-05-19 16:29:26', '2020-05-19 16:29:26'),
(1035, '834839', 399, 38, 25, 0, 0, '2020-08-19 16:29:26', '2020-05-19 16:29:26', '2020-05-19 16:29:26'),
(1036, '871290', 399, 38, 25, 0, 0, '2020-09-19 16:29:26', '2020-05-19 16:29:26', '2020-05-19 16:29:26'),
(1037, '460130', 399, 38, 25, 0, 0, '2020-09-19 16:29:26', '2020-05-19 16:29:26', '2020-05-19 16:29:26'),
(1038, '483454', 399, 38, 25, 0, 0, '2020-09-19 16:29:26', '2020-05-19 16:29:26', '2020-05-19 16:29:26'),
(1039, '744004', 399, 38, 25, 0, 0, '2020-09-19 16:29:26', '2020-05-19 16:29:26', '2020-05-19 16:29:26'),
(1040, '538137', 399, 38, 25, 0, 0, '2020-09-19 16:29:26', '2020-05-19 16:29:26', '2020-05-19 16:29:26'),
(1041, '536368', 399, 38, 25, 0, 0, '2020-09-19 16:29:26', '2020-05-19 16:29:26', '2020-05-19 16:29:26'),
(1042, '715462', 399, 38, 25, 0, 0, '2020-10-19 16:29:26', '2020-05-19 16:29:26', '2020-05-19 16:29:26'),
(1043, '871484', 399, 38, 25, 0, 0, '2020-10-19 16:29:26', '2020-05-19 16:29:26', '2020-05-19 16:29:26'),
(1044, '847425', 399, 38, 25, 0, 0, '2020-10-19 16:29:26', '2020-05-19 16:29:26', '2020-05-19 16:29:26'),
(1045, '199766', 399, 38, 25, 0, 0, '2020-10-19 16:29:26', '2020-05-19 16:29:26', '2020-05-19 16:29:26'),
(1046, '332670', 399, 38, 25, 0, 0, '2020-10-19 16:29:26', '2020-05-19 16:29:26', '2020-05-19 16:29:26'),
(1047, '459266', 399, 38, 25, 0, 0, '2020-10-19 16:29:26', '2020-05-19 16:29:26', '2020-05-19 16:29:26'),
(1048, '882550', 401, 39, 25, 28, 1, '2020-06-20 09:35:05', '2020-05-20 12:14:43', '2020-05-20 09:35:05'),
(1049, '387210', 401, 39, 25, 29, 1, '2020-06-20 09:35:05', '2020-05-20 14:35:18', '2020-05-20 09:35:05'),
(1050, '263558', 401, 39, 25, 0, 0, '2020-06-20 09:35:05', '2020-05-20 09:35:05', '2020-05-20 09:35:05'),
(1051, '476700', 401, 39, 25, 0, 0, '2020-06-20 09:35:05', '2020-05-20 09:35:05', '2020-05-20 09:35:05'),
(1052, '844213', 401, 39, 25, 0, 0, '2020-06-20 09:35:05', '2020-05-20 09:35:05', '2020-05-20 09:35:05'),
(1053, '52525', 401, 39, 25, 0, 0, '2020-06-20 09:35:05', '2020-05-20 09:35:05', '2020-05-20 09:35:05'),
(1054, '941840', 401, 39, 25, 0, 0, '2020-07-20 09:35:05', '2020-05-20 09:35:05', '2020-05-20 09:35:05'),
(1055, '740893', 401, 39, 25, 0, 0, '2020-07-20 09:35:05', '2020-05-20 09:35:05', '2020-05-20 09:35:05'),
(1056, '614761', 401, 39, 25, 0, 0, '2020-07-20 09:35:05', '2020-05-20 09:35:05', '2020-05-20 09:35:05'),
(1057, '915473', 401, 39, 25, 0, 0, '2020-07-20 09:35:05', '2020-05-20 09:35:05', '2020-05-20 09:35:05'),
(1058, '488581', 401, 39, 25, 0, 0, '2020-07-20 09:35:05', '2020-05-20 09:35:05', '2020-05-20 09:35:05'),
(1059, '170760', 401, 39, 25, 0, 0, '2020-07-20 09:35:05', '2020-05-20 09:35:05', '2020-05-20 09:35:05'),
(1060, '288082', 401, 39, 25, 0, 0, '2020-08-20 09:35:05', '2020-05-20 09:35:05', '2020-05-20 09:35:05'),
(1061, '693543', 401, 39, 25, 0, 0, '2020-08-20 09:35:05', '2020-05-20 09:35:05', '2020-05-20 09:35:05'),
(1062, '650928', 401, 39, 25, 0, 0, '2020-08-20 09:35:05', '2020-05-20 09:35:05', '2020-05-20 09:35:05'),
(1063, '186681', 401, 39, 25, 0, 0, '2020-08-20 09:35:05', '2020-05-20 09:35:05', '2020-05-20 09:35:05'),
(1064, '464944', 401, 39, 25, 0, 0, '2020-08-20 09:35:05', '2020-05-20 09:35:05', '2020-05-20 09:35:05'),
(1065, '17007', 401, 39, 25, 0, 0, '2020-08-20 09:35:05', '2020-05-20 09:35:05', '2020-05-20 09:35:05'),
(1066, '274264', 401, 39, 25, 0, 0, '2020-09-20 09:35:05', '2020-05-20 09:35:05', '2020-05-20 09:35:05'),
(1067, '990875', 401, 39, 25, 0, 0, '2020-09-20 09:35:05', '2020-05-20 09:35:05', '2020-05-20 09:35:05'),
(1068, '767529', 401, 39, 25, 0, 0, '2020-09-20 09:35:05', '2020-05-20 09:35:05', '2020-05-20 09:35:05'),
(1069, '279099', 401, 39, 25, 0, 0, '2020-09-20 09:35:05', '2020-05-20 09:35:05', '2020-05-20 09:35:05'),
(1070, '730966', 401, 39, 25, 0, 0, '2020-09-20 09:35:05', '2020-05-20 09:35:05', '2020-05-20 09:35:05'),
(1071, '377279', 401, 39, 25, 0, 0, '2020-09-20 09:35:05', '2020-05-20 09:35:05', '2020-05-20 09:35:05'),
(1072, '991685', 401, 39, 25, 0, 0, '2020-10-20 09:35:05', '2020-05-20 09:35:05', '2020-05-20 09:35:05'),
(1073, '548964', 401, 39, 25, 0, 0, '2020-10-20 09:35:05', '2020-05-20 09:35:05', '2020-05-20 09:35:05'),
(1074, '859689', 401, 39, 25, 0, 0, '2020-10-20 09:35:05', '2020-05-20 09:35:05', '2020-05-20 09:35:05'),
(1075, '964677', 401, 39, 25, 0, 0, '2020-10-20 09:35:05', '2020-05-20 09:35:05', '2020-05-20 09:35:05'),
(1076, '146606', 401, 39, 25, 0, 0, '2020-10-20 09:35:05', '2020-05-20 09:35:05', '2020-05-20 09:35:05'),
(1077, '94096', 401, 39, 25, 0, 0, '2020-10-20 09:35:05', '2020-05-20 09:35:05', '2020-05-20 09:35:05'),
(1078, '292499', 348, 40, 25, 0, 0, '2020-06-21 12:31:48', '2020-05-21 12:31:48', '2020-05-21 12:31:48'),
(1079, '515724', 348, 40, 25, 0, 0, '2020-06-21 12:31:48', '2020-05-21 12:31:48', '2020-05-21 12:31:48'),
(1080, '758852', 348, 40, 25, 0, 0, '2020-06-21 12:31:48', '2020-05-21 12:31:48', '2020-05-21 12:31:48'),
(1081, '276688', 348, 40, 25, 0, 0, '2020-06-21 12:31:48', '2020-05-21 12:31:48', '2020-05-21 12:31:48'),
(1082, '646787', 348, 40, 25, 0, 0, '2020-06-21 12:31:48', '2020-05-21 12:31:48', '2020-05-21 12:31:48'),
(1083, '144993', 348, 40, 25, 0, 0, '2020-06-21 12:31:48', '2020-05-21 12:31:48', '2020-05-21 12:31:48'),
(1084, '27114', 348, 40, 25, 0, 0, '2020-07-21 12:31:48', '2020-05-21 12:31:48', '2020-05-21 12:31:48'),
(1085, '247691', 348, 40, 25, 0, 0, '2020-07-21 12:31:48', '2020-05-21 12:31:48', '2020-05-21 12:31:48'),
(1086, '809284', 348, 40, 25, 0, 0, '2020-07-21 12:31:48', '2020-05-21 12:31:48', '2020-05-21 12:31:48'),
(1087, '988221', 348, 40, 25, 0, 0, '2020-07-21 12:31:48', '2020-05-21 12:31:48', '2020-05-21 12:31:48'),
(1088, '829809', 348, 40, 25, 0, 0, '2020-07-21 12:31:48', '2020-05-21 12:31:48', '2020-05-21 12:31:48'),
(1089, '904939', 348, 40, 25, 0, 0, '2020-07-21 12:31:48', '2020-05-21 12:31:48', '2020-05-21 12:31:48'),
(1090, '810978', 348, 40, 25, 0, 0, '2020-08-21 12:31:48', '2020-05-21 12:31:48', '2020-05-21 12:31:48'),
(1091, '517826', 348, 40, 25, 0, 0, '2020-08-21 12:31:48', '2020-05-21 12:31:48', '2020-05-21 12:31:48'),
(1092, '409226', 348, 40, 25, 0, 0, '2020-08-21 12:31:48', '2020-05-21 12:31:48', '2020-05-21 12:31:48'),
(1093, '405975', 348, 40, 25, 0, 0, '2020-08-21 12:31:48', '2020-05-21 12:31:48', '2020-05-21 12:31:48'),
(1094, '158890', 348, 40, 25, 0, 0, '2020-08-21 12:31:48', '2020-05-21 12:31:48', '2020-05-21 12:31:48'),
(1095, '189121', 348, 40, 25, 0, 0, '2020-08-21 12:31:48', '2020-05-21 12:31:48', '2020-05-21 12:31:48'),
(1096, '334629', 348, 40, 25, 0, 0, '2020-09-21 12:31:48', '2020-05-21 12:31:48', '2020-05-21 12:31:48'),
(1097, '578516', 348, 40, 25, 0, 0, '2020-09-21 12:31:48', '2020-05-21 12:31:48', '2020-05-21 12:31:48'),
(1098, '660064', 348, 40, 25, 0, 0, '2020-09-21 12:31:48', '2020-05-21 12:31:48', '2020-05-21 12:31:48'),
(1099, '604163', 348, 40, 25, 0, 0, '2020-09-21 12:31:48', '2020-05-21 12:31:48', '2020-05-21 12:31:48'),
(1100, '185871', 348, 40, 25, 0, 0, '2020-09-21 12:31:48', '2020-05-21 12:31:48', '2020-05-21 12:31:48'),
(1101, '669367', 348, 40, 25, 0, 0, '2020-09-21 12:31:48', '2020-05-21 12:31:48', '2020-05-21 12:31:48'),
(1102, '471857', 348, 40, 25, 0, 0, '2020-10-21 12:31:48', '2020-05-21 12:31:48', '2020-05-21 12:31:48'),
(1103, '984126', 348, 40, 25, 0, 0, '2020-10-21 12:31:48', '2020-05-21 12:31:48', '2020-05-21 12:31:48'),
(1104, '456636', 348, 40, 25, 0, 0, '2020-10-21 12:31:48', '2020-05-21 12:31:48', '2020-05-21 12:31:48'),
(1105, '112830', 348, 40, 25, 0, 0, '2020-10-21 12:31:48', '2020-05-21 12:31:48', '2020-05-21 12:31:48'),
(1106, '534684', 348, 40, 25, 0, 0, '2020-10-21 12:31:48', '2020-05-21 12:31:48', '2020-05-21 12:31:48'),
(1107, '369233', 348, 40, 25, 0, 0, '2020-10-21 12:31:48', '2020-05-21 12:31:48', '2020-05-21 12:31:48'),
(1108, '614244', 403, 41, 25, 0, 0, '2020-06-21 12:58:55', '2020-05-21 12:58:55', '2020-05-21 12:58:55'),
(1109, '508021', 403, 41, 25, 0, 0, '2020-06-21 12:58:55', '2020-05-21 12:58:55', '2020-05-21 12:58:55'),
(1110, '724998', 403, 41, 25, 0, 0, '2020-06-21 12:58:55', '2020-05-21 12:58:55', '2020-05-21 12:58:55'),
(1111, '748071', 403, 41, 25, 0, 0, '2020-06-21 12:58:55', '2020-05-21 12:58:55', '2020-05-21 12:58:55'),
(1112, '948887', 403, 41, 25, 0, 0, '2020-06-21 12:58:55', '2020-05-21 12:58:55', '2020-05-21 12:58:55'),
(1113, '656802', 403, 41, 25, 0, 0, '2020-06-21 12:58:55', '2020-05-21 12:58:55', '2020-05-21 12:58:55'),
(1114, '768333', 403, 41, 25, 0, 0, '2020-07-21 12:58:55', '2020-05-21 12:58:55', '2020-05-21 12:58:55'),
(1115, '99906', 403, 41, 25, 0, 0, '2020-07-21 12:58:55', '2020-05-21 12:58:55', '2020-05-21 12:58:55'),
(1116, '843771', 403, 41, 25, 0, 0, '2020-07-21 12:58:55', '2020-05-21 12:58:55', '2020-05-21 12:58:55'),
(1117, '885452', 403, 41, 25, 0, 0, '2020-07-21 12:58:55', '2020-05-21 12:58:55', '2020-05-21 12:58:55'),
(1118, '244835', 403, 41, 25, 0, 0, '2020-07-21 12:58:55', '2020-05-21 12:58:55', '2020-05-21 12:58:55'),
(1119, '311046', 403, 41, 25, 0, 0, '2020-07-21 12:58:55', '2020-05-21 12:58:55', '2020-05-21 12:58:55'),
(1120, '304362', 403, 41, 25, 0, 0, '2020-08-21 12:58:55', '2020-05-21 12:58:55', '2020-05-21 12:58:55'),
(1121, '452442', 403, 41, 25, 0, 0, '2020-08-21 12:58:55', '2020-05-21 12:58:55', '2020-05-21 12:58:55'),
(1122, '858471', 403, 41, 25, 0, 0, '2020-08-21 12:58:55', '2020-05-21 12:58:55', '2020-05-21 12:58:55'),
(1123, '796512', 403, 41, 25, 0, 0, '2020-08-21 12:58:55', '2020-05-21 12:58:55', '2020-05-21 12:58:55'),
(1124, '40839', 403, 41, 25, 0, 0, '2020-08-21 12:58:55', '2020-05-21 12:58:55', '2020-05-21 12:58:55'),
(1125, '873367', 403, 41, 25, 0, 0, '2020-08-21 12:58:55', '2020-05-21 12:58:55', '2020-05-21 12:58:55'),
(1126, '738428', 403, 41, 25, 0, 0, '2020-09-21 12:58:55', '2020-05-21 12:58:55', '2020-05-21 12:58:55'),
(1127, '91410', 403, 41, 25, 0, 0, '2020-09-21 12:58:55', '2020-05-21 12:58:55', '2020-05-21 12:58:55'),
(1128, '196101', 403, 41, 25, 0, 0, '2020-09-21 12:58:55', '2020-05-21 12:58:55', '2020-05-21 12:58:55'),
(1129, '735164', 403, 41, 25, 0, 0, '2020-09-21 12:58:55', '2020-05-21 12:58:55', '2020-05-21 12:58:55'),
(1130, '89226', 403, 41, 25, 0, 0, '2020-09-21 12:58:55', '2020-05-21 12:58:55', '2020-05-21 12:58:55'),
(1131, '474082', 403, 41, 25, 0, 0, '2020-09-21 12:58:55', '2020-05-21 12:58:55', '2020-05-21 12:58:55'),
(1132, '809620', 403, 41, 25, 0, 0, '2020-10-21 12:58:55', '2020-05-21 12:58:55', '2020-05-21 12:58:55'),
(1133, '494501', 403, 41, 25, 0, 0, '2020-10-21 12:58:55', '2020-05-21 12:58:55', '2020-05-21 12:58:55'),
(1134, '895433', 403, 41, 25, 0, 0, '2020-10-21 12:58:55', '2020-05-21 12:58:55', '2020-05-21 12:58:55'),
(1135, '478488', 403, 41, 25, 0, 0, '2020-10-21 12:58:55', '2020-05-21 12:58:55', '2020-05-21 12:58:55'),
(1136, '318113', 403, 41, 25, 0, 0, '2020-10-21 12:58:55', '2020-05-21 12:58:55', '2020-05-21 12:58:55'),
(1137, '471294', 403, 41, 25, 0, 0, '2020-10-21 12:58:55', '2020-05-21 12:58:55', '2020-05-21 12:58:55'),
(1138, '955378', 404, 42, 25, 0, 0, '2020-06-21 13:55:46', '2020-05-21 13:55:46', '2020-05-21 13:55:46'),
(1139, '490909', 404, 42, 25, 0, 0, '2020-06-21 13:55:46', '2020-05-21 13:55:46', '2020-05-21 13:55:46'),
(1140, '246512', 404, 42, 25, 0, 0, '2020-06-21 13:55:46', '2020-05-21 13:55:46', '2020-05-21 13:55:46'),
(1141, '219607', 404, 42, 25, 0, 0, '2020-06-21 13:55:46', '2020-05-21 13:55:46', '2020-05-21 13:55:46'),
(1142, '794580', 404, 42, 25, 0, 0, '2020-06-21 13:55:46', '2020-05-21 13:55:46', '2020-05-21 13:55:46'),
(1143, '518629', 404, 42, 25, 0, 0, '2020-06-21 13:55:46', '2020-05-21 13:55:46', '2020-05-21 13:55:46'),
(1144, '327957', 404, 42, 25, 0, 0, '2020-07-21 13:55:46', '2020-05-21 13:55:46', '2020-05-21 13:55:46'),
(1145, '403850', 404, 42, 25, 0, 0, '2020-07-21 13:55:46', '2020-05-21 13:55:46', '2020-05-21 13:55:46'),
(1146, '617343', 404, 42, 25, 0, 0, '2020-07-21 13:55:46', '2020-05-21 13:55:46', '2020-05-21 13:55:46'),
(1147, '391596', 404, 42, 25, 0, 0, '2020-07-21 13:55:46', '2020-05-21 13:55:46', '2020-05-21 13:55:46'),
(1148, '336535', 404, 42, 25, 0, 0, '2020-07-21 13:55:46', '2020-05-21 13:55:46', '2020-05-21 13:55:46'),
(1149, '673522', 404, 42, 25, 0, 0, '2020-07-21 13:55:46', '2020-05-21 13:55:46', '2020-05-21 13:55:46'),
(1150, '627741', 404, 42, 25, 0, 0, '2020-08-21 13:55:46', '2020-05-21 13:55:46', '2020-05-21 13:55:46'),
(1151, '956496', 404, 42, 25, 0, 0, '2020-08-21 13:55:46', '2020-05-21 13:55:46', '2020-05-21 13:55:46'),
(1152, '365175', 404, 42, 25, 0, 0, '2020-08-21 13:55:46', '2020-05-21 13:55:46', '2020-05-21 13:55:46'),
(1153, '855761', 404, 42, 25, 0, 0, '2020-08-21 13:55:46', '2020-05-21 13:55:46', '2020-05-21 13:55:46'),
(1154, '572995', 404, 42, 25, 0, 0, '2020-08-21 13:55:46', '2020-05-21 13:55:46', '2020-05-21 13:55:46'),
(1155, '867934', 404, 42, 25, 0, 0, '2020-08-21 13:55:46', '2020-05-21 13:55:46', '2020-05-21 13:55:46'),
(1156, '551378', 404, 42, 25, 0, 0, '2020-09-21 13:55:46', '2020-05-21 13:55:46', '2020-05-21 13:55:46'),
(1157, '208249', 404, 42, 25, 0, 0, '2020-09-21 13:55:46', '2020-05-21 13:55:46', '2020-05-21 13:55:46'),
(1158, '866518', 404, 42, 25, 0, 0, '2020-09-21 13:55:46', '2020-05-21 13:55:46', '2020-05-21 13:55:46'),
(1159, '69481', 404, 42, 25, 0, 0, '2020-09-21 13:55:46', '2020-05-21 13:55:46', '2020-05-21 13:55:46'),
(1160, '165144', 404, 42, 25, 0, 0, '2020-09-21 13:55:46', '2020-05-21 13:55:46', '2020-05-21 13:55:46'),
(1161, '467685', 404, 42, 25, 0, 0, '2020-09-21 13:55:46', '2020-05-21 13:55:46', '2020-05-21 13:55:46'),
(1162, '948689', 404, 42, 25, 0, 0, '2020-10-21 13:55:46', '2020-05-21 13:55:46', '2020-05-21 13:55:46'),
(1163, '693014', 404, 42, 25, 0, 0, '2020-10-21 13:55:46', '2020-05-21 13:55:46', '2020-05-21 13:55:46'),
(1164, '714400', 404, 42, 25, 0, 0, '2020-10-21 13:55:46', '2020-05-21 13:55:46', '2020-05-21 13:55:46'),
(1165, '277450', 404, 42, 25, 0, 0, '2020-10-21 13:55:46', '2020-05-21 13:55:46', '2020-05-21 13:55:46'),
(1166, '191526', 404, 42, 25, 0, 0, '2020-10-21 13:55:46', '2020-05-21 13:55:46', '2020-05-21 13:55:46'),
(1167, '550380', 404, 42, 25, 0, 0, '2020-10-21 13:55:46', '2020-05-21 13:55:46', '2020-05-21 13:55:46'),
(1168, '969482', 407, 43, 25, 31, 1, '2020-06-25 01:33:32', '2020-05-25 02:12:39', '2020-05-25 01:33:32'),
(1169, '247350', 407, 43, 25, 0, 0, '2020-06-25 01:33:32', '2020-05-25 01:33:32', '2020-05-25 01:33:32'),
(1170, '848927', 407, 43, 25, 33, 1, '2020-06-25 01:33:32', '2020-06-02 04:32:16', '2020-05-25 01:33:32'),
(1171, '359528', 407, 43, 25, 0, 0, '2020-06-25 01:33:32', '2020-05-25 01:33:32', '2020-05-25 01:33:32'),
(1172, '300569', 407, 43, 25, 0, 0, '2020-06-25 01:33:32', '2020-05-25 01:33:32', '2020-05-25 01:33:32'),
(1173, '519021', 407, 43, 25, 0, 0, '2020-06-25 01:33:32', '2020-05-25 01:33:32', '2020-05-25 01:33:32'),
(1174, '373403', 407, 43, 25, 0, 0, '2020-07-25 01:33:32', '2020-05-25 01:33:32', '2020-05-25 01:33:32'),
(1175, '446253', 407, 43, 25, 0, 0, '2020-07-25 01:33:32', '2020-05-25 01:33:32', '2020-05-25 01:33:32'),
(1176, '563467', 407, 43, 25, 0, 0, '2020-07-25 01:33:32', '2020-05-25 01:33:32', '2020-05-25 01:33:32'),
(1177, '546930', 407, 43, 25, 0, 0, '2020-07-25 01:33:32', '2020-05-25 01:33:32', '2020-05-25 01:33:32'),
(1178, '671544', 407, 43, 25, 0, 0, '2020-07-25 01:33:32', '2020-05-25 01:33:32', '2020-05-25 01:33:32'),
(1179, '912484', 407, 43, 25, 0, 0, '2020-07-25 01:33:32', '2020-05-25 01:33:32', '2020-05-25 01:33:32'),
(1180, '315504', 407, 43, 25, 0, 0, '2020-08-25 01:33:32', '2020-05-25 01:33:32', '2020-05-25 01:33:32'),
(1181, '170524', 407, 43, 25, 0, 0, '2020-08-25 01:33:32', '2020-05-25 01:33:32', '2020-05-25 01:33:32'),
(1182, '39819', 407, 43, 25, 0, 0, '2020-08-25 01:33:32', '2020-05-25 01:33:32', '2020-05-25 01:33:32'),
(1183, '143199', 407, 43, 25, 0, 0, '2020-08-25 01:33:32', '2020-05-25 01:33:32', '2020-05-25 01:33:32'),
(1184, '951208', 407, 43, 25, 0, 0, '2020-08-25 01:33:32', '2020-05-25 01:33:32', '2020-05-25 01:33:32'),
(1185, '759136', 407, 43, 25, 0, 0, '2020-08-25 01:33:32', '2020-05-25 01:33:32', '2020-05-25 01:33:32'),
(1186, '183703', 407, 43, 25, 0, 0, '2020-09-25 01:33:32', '2020-05-25 01:33:32', '2020-05-25 01:33:32'),
(1187, '415691', 407, 43, 25, 0, 0, '2020-09-25 01:33:32', '2020-05-25 01:33:32', '2020-05-25 01:33:32'),
(1188, '587717', 407, 43, 25, 0, 0, '2020-09-25 01:33:32', '2020-05-25 01:33:32', '2020-05-25 01:33:32'),
(1189, '101448', 407, 43, 25, 0, 0, '2020-09-25 01:33:32', '2020-05-25 01:33:32', '2020-05-25 01:33:32'),
(1190, '459355', 407, 43, 25, 0, 0, '2020-09-25 01:33:32', '2020-05-25 01:33:32', '2020-05-25 01:33:32'),
(1191, '612101', 407, 43, 25, 0, 0, '2020-09-25 01:33:32', '2020-05-25 01:33:32', '2020-05-25 01:33:32'),
(1192, '590682', 407, 43, 25, 0, 0, '2020-10-25 01:33:32', '2020-05-25 01:33:32', '2020-05-25 01:33:32'),
(1193, '971807', 407, 43, 25, 0, 0, '2020-10-25 01:33:32', '2020-05-25 01:33:32', '2020-05-25 01:33:32'),
(1194, '822593', 407, 43, 25, 0, 0, '2020-10-25 01:33:32', '2020-05-25 01:33:32', '2020-05-25 01:33:32'),
(1195, '462202', 407, 43, 25, 0, 0, '2020-10-25 01:33:32', '2020-05-25 01:33:32', '2020-05-25 01:33:32'),
(1196, '83170', 407, 43, 25, 0, 0, '2020-10-25 01:33:32', '2020-05-25 01:33:32', '2020-05-25 01:33:32'),
(1197, '459260', 407, 43, 25, 0, 0, '2020-10-25 01:33:32', '2020-05-25 01:33:32', '2020-05-25 01:33:32'),
(1198, '695595', 344, 57, 25, 46, 1, '2020-10-24 10:13:23', '2020-09-24 10:14:05', '2020-09-24 10:13:23'),
(1199, '260396', 344, 57, 25, 57, 1, '2020-10-24 10:13:23', '2020-09-29 12:55:08', '2020-09-24 10:13:23'),
(1200, '544591', 344, 57, 25, 67, 1, '2020-10-24 10:13:23', '2020-09-30 19:48:13', '2020-09-24 10:13:23'),
(1201, '519269', 344, 57, 25, 50, 1, '2020-10-24 10:13:23', '2020-09-25 04:58:43', '2020-09-24 10:13:23'),
(1202, '608148', 344, 57, 25, 54, 1, '2020-10-24 10:13:23', '2020-09-29 10:41:09', '2020-09-24 10:13:23'),
(1203, '288980', 344, 57, 25, 48, 1, '2020-10-24 10:13:23', '2020-09-24 13:37:56', '2020-09-24 10:13:23'),
(1204, '719077', 344, 57, 25, 0, 0, '2020-11-24 10:13:23', '2020-09-24 10:13:23', '2020-09-24 10:13:23'),
(1205, '852400', 344, 57, 25, 0, 0, '2020-11-24 10:13:23', '2020-09-24 10:13:23', '2020-09-24 10:13:23'),
(1206, '327085', 344, 57, 25, 0, 0, '2020-11-24 10:13:23', '2020-09-24 10:13:23', '2020-09-24 10:13:23'),
(1207, '665655', 344, 57, 25, 0, 0, '2020-11-24 10:13:23', '2020-09-24 10:13:23', '2020-09-24 10:13:23'),
(1208, '500255', 344, 57, 25, 0, 0, '2020-11-24 10:13:23', '2020-09-24 10:13:23', '2020-09-24 10:13:23'),
(1209, '132305', 344, 57, 25, 0, 0, '2020-11-24 10:13:23', '2020-09-24 10:13:23', '2020-09-24 10:13:23'),
(1210, '899020', 344, 57, 25, 0, 0, '2020-12-24 10:13:23', '2020-09-24 10:13:23', '2020-09-24 10:13:23'),
(1211, '931992', 344, 57, 25, 0, 0, '2020-12-24 10:13:23', '2020-09-24 10:13:23', '2020-09-24 10:13:23'),
(1212, '927872', 344, 57, 25, 0, 0, '2020-12-24 10:13:23', '2020-09-24 10:13:23', '2020-09-24 10:13:23'),
(1213, '627134', 344, 57, 25, 0, 0, '2020-12-24 10:13:23', '2020-09-24 10:13:23', '2020-09-24 10:13:23'),
(1214, '371011', 344, 57, 25, 0, 0, '2020-12-24 10:13:23', '2020-09-24 10:13:23', '2020-09-24 10:13:23'),
(1215, '957116', 344, 57, 25, 0, 0, '2020-12-24 10:13:23', '2020-09-24 10:13:23', '2020-09-24 10:13:23'),
(1216, '697828', 344, 57, 25, 0, 0, '2021-01-24 10:13:23', '2020-09-24 10:13:23', '2020-09-24 10:13:23'),
(1217, '868383', 344, 57, 25, 0, 0, '2021-01-24 10:13:23', '2020-09-24 10:13:23', '2020-09-24 10:13:23'),
(1218, '983699', 344, 57, 25, 0, 0, '2021-01-24 10:13:23', '2020-09-24 10:13:23', '2020-09-24 10:13:23'),
(1219, '809436', 344, 57, 25, 0, 0, '2021-01-24 10:13:23', '2020-09-24 10:13:23', '2020-09-24 10:13:23'),
(1220, '466670', 344, 57, 25, 0, 0, '2021-01-24 10:13:23', '2020-09-24 10:13:23', '2020-09-24 10:13:23'),
(1221, '771359', 344, 57, 25, 0, 0, '2021-01-24 10:13:23', '2020-09-24 10:13:23', '2020-09-24 10:13:23'),
(1222, '777574', 344, 57, 25, 0, 0, '2021-02-24 10:13:23', '2020-09-24 10:13:23', '2020-09-24 10:13:23'),
(1223, '271588', 344, 57, 25, 0, 0, '2021-02-24 10:13:23', '2020-09-24 10:13:23', '2020-09-24 10:13:23'),
(1224, '590433', 344, 57, 25, 0, 0, '2021-02-24 10:13:23', '2020-09-24 10:13:23', '2020-09-24 10:13:23'),
(1225, '415401', 344, 57, 25, 0, 0, '2021-02-24 10:13:23', '2020-09-24 10:13:23', '2020-09-24 10:13:23'),
(1226, '730797', 344, 57, 25, 0, 0, '2021-02-24 10:13:23', '2020-09-24 10:13:23', '2020-09-24 10:13:23'),
(1227, '219970', 344, 57, 25, 0, 0, '2021-02-24 10:13:23', '2020-09-24 10:13:23', '2020-09-24 10:13:23'),
(1228, '60466', 344, 59, 0, 60, 1, '2020-10-29 14:11:42', '2020-09-30 05:40:19', '2020-09-29 14:11:42'),
(1229, '884142', 344, 59, 0, 63, 1, '2020-10-29 14:11:42', '2020-09-30 13:04:21', '2020-09-29 14:11:42'),
(1230, '750254', 344, 59, 0, 61, 1, '2020-10-29 14:11:42', '2020-09-30 12:44:52', '2020-09-29 14:11:42'),
(1231, '547196', 344, 59, 0, 0, 0, '2020-11-29 14:11:42', '2020-09-29 14:11:42', '2020-09-29 14:11:42'),
(1232, '981595', 344, 59, 0, 0, 0, '2020-11-29 14:11:42', '2020-09-29 14:11:42', '2020-09-29 14:11:42'),
(1233, '761504', 344, 59, 0, 0, 0, '2020-11-29 14:11:42', '2020-09-29 14:11:42', '2020-09-29 14:11:42'),
(1234, '947688', 344, 59, 0, 0, 0, '2020-12-29 14:11:42', '2020-09-29 14:11:42', '2020-09-29 14:11:42'),
(1235, '980205', 344, 59, 0, 0, 0, '2020-12-29 14:11:42', '2020-09-29 14:11:42', '2020-09-29 14:11:42'),
(1236, '856470', 344, 59, 0, 0, 0, '2020-12-29 14:11:42', '2020-09-29 14:11:42', '2020-09-29 14:11:42'),
(1237, '712162', 344, 59, 0, 0, 0, '2021-01-29 14:11:42', '2020-09-29 14:11:42', '2020-09-29 14:11:42'),
(1238, '226985', 344, 59, 0, 0, 0, '2021-01-29 14:11:42', '2020-09-29 14:11:42', '2020-09-29 14:11:42'),
(1239, '612304', 344, 59, 0, 0, 0, '2021-01-29 14:11:42', '2020-09-29 14:11:42', '2020-09-29 14:11:42'),
(1240, '583736', 344, 59, 0, 0, 0, '2021-03-01 14:11:42', '2020-09-29 14:11:42', '2020-09-29 14:11:42'),
(1241, '620800', 344, 59, 0, 0, 0, '2021-03-01 14:11:42', '2020-09-29 14:11:42', '2020-09-29 14:11:42'),
(1242, '598354', 344, 59, 0, 0, 0, '2021-03-01 14:11:42', '2020-09-29 14:11:42', '2020-09-29 14:11:42'),
(1243, '740241', 344, 59, 0, 0, 0, '2021-03-29 14:11:42', '2020-09-29 14:11:42', '2020-09-29 14:11:42'),
(1244, '537030', 344, 59, 0, 0, 0, '2021-03-29 14:11:42', '2020-09-29 14:11:42', '2020-09-29 14:11:42'),
(1245, '300688', 344, 59, 0, 0, 0, '2021-03-29 14:11:42', '2020-09-29 14:11:42', '2020-09-29 14:11:42'),
(1246, '846438', 344, 60, 0, 62, 1, '2020-10-29 14:12:25', '2020-09-30 12:57:30', '2020-09-29 14:12:25'),
(1247, '717815', 344, 60, 0, 64, 1, '2020-10-29 14:12:25', '2020-09-30 13:08:05', '2020-09-29 14:12:25'),
(1248, '759251', 344, 60, 0, 65, 1, '2020-10-29 14:12:25', '2020-09-30 13:10:21', '2020-09-29 14:12:25'),
(1249, '341482', 344, 60, 0, 0, 0, '2020-11-29 14:12:25', '2020-09-29 14:12:25', '2020-09-29 14:12:25'),
(1250, '298017', 344, 60, 0, 0, 0, '2020-11-29 14:12:25', '2020-09-29 14:12:25', '2020-09-29 14:12:25'),
(1251, '206542', 344, 60, 0, 0, 0, '2020-11-29 14:12:25', '2020-09-29 14:12:25', '2020-09-29 14:12:25'),
(1252, '198771', 344, 60, 0, 0, 0, '2020-12-29 14:12:25', '2020-09-29 14:12:25', '2020-09-29 14:12:25'),
(1253, '671901', 344, 60, 0, 0, 0, '2020-12-29 14:12:25', '2020-09-29 14:12:25', '2020-09-29 14:12:25'),
(1254, '848264', 344, 60, 0, 0, 0, '2020-12-29 14:12:25', '2020-09-29 14:12:25', '2020-09-29 14:12:25'),
(1255, '672604', 344, 60, 0, 0, 0, '2021-01-29 14:12:25', '2020-09-29 14:12:25', '2020-09-29 14:12:25'),
(1256, '590079', 344, 60, 0, 0, 0, '2021-01-29 14:12:25', '2020-09-29 14:12:25', '2020-09-29 14:12:25'),
(1257, '907565', 344, 60, 0, 0, 0, '2021-01-29 14:12:25', '2020-09-29 14:12:25', '2020-09-29 14:12:25'),
(1258, '369588', 344, 60, 0, 0, 0, '2021-03-01 14:12:25', '2020-09-29 14:12:25', '2020-09-29 14:12:25'),
(1259, '371964', 344, 60, 0, 0, 0, '2021-03-01 14:12:25', '2020-09-29 14:12:25', '2020-09-29 14:12:25'),
(1260, '872774', 344, 60, 0, 0, 0, '2021-03-01 14:12:25', '2020-09-29 14:12:25', '2020-09-29 14:12:25'),
(1261, '841958', 344, 60, 0, 0, 0, '2021-03-29 14:12:25', '2020-09-29 14:12:25', '2020-09-29 14:12:25'),
(1262, '646546', 344, 60, 0, 0, 0, '2021-03-29 14:12:25', '2020-09-29 14:12:25', '2020-09-29 14:12:25'),
(1263, '823197', 344, 60, 0, 0, 0, '2021-03-29 14:12:25', '2020-09-29 14:12:25', '2020-09-29 14:12:25'),
(1264, '29277', 344, 62, 25, 68, 1, '2020-11-05 10:49:33', '2020-10-05 10:50:57', '2020-10-05 10:49:33'),
(1265, '73170', 344, 62, 25, 69, 1, '2020-11-05 10:49:33', '2020-10-05 12:53:35', '2020-10-05 10:49:33'),
(1266, '713139', 344, 62, 25, 70, 1, '2020-11-05 10:49:33', '2020-10-05 12:56:04', '2020-10-05 10:49:33'),
(1267, '309805', 344, 62, 25, 72, 1, '2020-11-05 10:49:33', '2020-10-13 08:06:45', '2020-10-05 10:49:33'),
(1268, '747842', 344, 62, 25, 71, 1, '2020-11-05 10:49:33', '2020-10-06 18:44:43', '2020-10-05 10:49:33'),
(1269, '624578', 344, 62, 25, 73, 1, '2020-11-05 10:49:33', '2020-10-16 06:08:07', '2020-10-05 10:49:33'),
(1270, '541254', 344, 62, 25, 0, 0, '2020-12-05 10:49:33', '2020-10-05 10:49:33', '2020-10-05 10:49:33'),
(1271, '624340', 344, 62, 25, 0, 0, '2020-12-05 10:49:33', '2020-10-05 10:49:33', '2020-10-05 10:49:33'),
(1272, '37957', 344, 62, 25, 0, 0, '2020-12-05 10:49:33', '2020-10-05 10:49:33', '2020-10-05 10:49:33'),
(1273, '645196', 344, 62, 25, 0, 0, '2020-12-05 10:49:33', '2020-10-05 10:49:33', '2020-10-05 10:49:33'),
(1274, '45904', 344, 62, 25, 0, 0, '2020-12-05 10:49:33', '2020-10-05 10:49:33', '2020-10-05 10:49:33'),
(1275, '983960', 344, 62, 25, 0, 0, '2020-12-05 10:49:33', '2020-10-05 10:49:33', '2020-10-05 10:49:33'),
(1276, '348724', 344, 62, 25, 0, 0, '2021-01-05 10:49:33', '2020-10-05 10:49:33', '2020-10-05 10:49:33'),
(1277, '975032', 344, 62, 25, 0, 0, '2021-01-05 10:49:33', '2020-10-05 10:49:33', '2020-10-05 10:49:33'),
(1278, '474212', 344, 62, 25, 0, 0, '2021-01-05 10:49:33', '2020-10-05 10:49:33', '2020-10-05 10:49:33'),
(1279, '272300', 344, 62, 25, 0, 0, '2021-01-05 10:49:33', '2020-10-05 10:49:33', '2020-10-05 10:49:33'),
(1280, '746430', 344, 62, 25, 0, 0, '2021-01-05 10:49:33', '2020-10-05 10:49:33', '2020-10-05 10:49:33'),
(1281, '232191', 344, 62, 25, 0, 0, '2021-01-05 10:49:33', '2020-10-05 10:49:33', '2020-10-05 10:49:33'),
(1282, '63870', 344, 62, 25, 0, 0, '2021-02-05 10:49:33', '2020-10-05 10:49:33', '2020-10-05 10:49:33'),
(1283, '672819', 344, 62, 25, 0, 0, '2021-02-05 10:49:33', '2020-10-05 10:49:33', '2020-10-05 10:49:33'),
(1284, '386410', 344, 62, 25, 0, 0, '2021-02-05 10:49:33', '2020-10-05 10:49:33', '2020-10-05 10:49:33'),
(1285, '65356', 344, 62, 25, 0, 0, '2021-02-05 10:49:33', '2020-10-05 10:49:33', '2020-10-05 10:49:33'),
(1286, '671739', 344, 62, 25, 0, 0, '2021-02-05 10:49:33', '2020-10-05 10:49:33', '2020-10-05 10:49:33'),
(1287, '978557', 344, 62, 25, 0, 0, '2021-02-05 10:49:33', '2020-10-05 10:49:33', '2020-10-05 10:49:33'),
(1288, '117399', 344, 62, 25, 0, 0, '2021-03-05 10:49:33', '2020-10-05 10:49:33', '2020-10-05 10:49:33'),
(1289, '665149', 344, 62, 25, 0, 0, '2021-03-05 10:49:33', '2020-10-05 10:49:33', '2020-10-05 10:49:33'),
(1290, '817656', 344, 62, 25, 0, 0, '2021-03-05 10:49:33', '2020-10-05 10:49:33', '2020-10-05 10:49:33'),
(1291, '724029', 344, 62, 25, 0, 0, '2021-03-05 10:49:33', '2020-10-05 10:49:33', '2020-10-05 10:49:33'),
(1292, '553103', 344, 62, 25, 0, 0, '2021-03-05 10:49:33', '2020-10-05 10:49:33', '2020-10-05 10:49:33'),
(1293, '955939', 344, 62, 25, 0, 0, '2021-03-05 10:49:33', '2020-10-05 10:49:33', '2020-10-05 10:49:33'),
(1294, '354533', 379, 7, 0, 0, 0, '2020-10-21 03:47:42', '2020-10-28 03:47:42', '2020-10-28 03:47:42'),
(1295, '380165', 379, 7, 0, 0, 0, '2020-10-21 03:47:42', '2020-10-28 03:47:42', '2020-10-28 03:47:42'),
(1296, '868024', 379, 7, 0, 0, 0, '2020-10-21 03:47:42', '2020-10-28 03:47:42', '2020-10-28 03:47:42'),
(1297, '747484', 379, 7, 0, 0, 0, '2020-10-21 03:47:42', '2020-10-28 03:47:42', '2020-10-28 03:47:42'),
(1298, '724980', 379, 7, 0, 0, 0, '2020-10-21 03:47:42', '2020-10-28 03:47:42', '2020-10-28 03:47:42');

-- --------------------------------------------------------

--
-- Table structure for table `theme`
--

CREATE TABLE `theme` (
  `id` int(255) NOT NULL,
  `name` varchar(300) NOT NULL,
  `title` varchar(300) NOT NULL,
  `sub_title` varchar(300) NOT NULL,
  `project_search` varchar(300) NOT NULL,
  `freelancer_search` varchar(300) NOT NULL,
  `bg_image_one` varchar(300) NOT NULL,
  `bg_image_two` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `theme`
--

INSERT INTO `theme` (`id`, `name`, `title`, `sub_title`, `project_search`, `freelancer_search`, `bg_image_one`, `bg_image_two`) VALUES
(1, 'boxplace', 'Hire Great Freelancers, Fast.', 'Wave helps you hire elite freelancers at a moment\'s notice.', 'What Project are you looking for?', 'Are you looking for Freelancers?', 'zLyBzeyYDtjHwR.jpg', 'n9qieurUEU1ivl.jpg'),
(2, 'boxsale', 'Build an Outstanding Digital Marketplace', '', '', '', 'ZyoQE4Vlbf4Qee.jpg', 'Mft0pamEteN23T.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `userid` varchar(300) NOT NULL,
  `password` varchar(64) NOT NULL,
  `name` varchar(300) NOT NULL,
  `slug` varchar(300) NOT NULL,
  `email` text NOT NULL,
  `shipping_address` longtext DEFAULT NULL,
  `credit_account` decimal(15,2) NOT NULL,
  `paypal_email` varchar(300) NOT NULL,
  `imagelocation` text NOT NULL,
  `bg_imagelocation` text NOT NULL,
  `tokencode` text NOT NULL,
  `joined` datetime NOT NULL,
  `user_type` int(11) NOT NULL,
  `registercode` varchar(300) NOT NULL,
  `verified` tinyint(4) NOT NULL,
  `email_verified` tinyint(4) NOT NULL,
  `title` varchar(300) NOT NULL,
  `website` varchar(300) NOT NULL,
  `country` varchar(300) NOT NULL,
  `categories` mediumtext NOT NULL,
  `skills` mediumtext NOT NULL,
  `about` longtext NOT NULL,
  `email_settings` tinyint(4) NOT NULL,
  `jobs_notifications` tinyint(4) NOT NULL,
  `signup_complete` int(11) NOT NULL,
  `signup_type` varchar(250) NOT NULL,
  `firebase_token` varchar(300) DEFAULT NULL,
  `avatar` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `userid`, `password`, `name`, `slug`, `email`, `shipping_address`, `credit_account`, `paypal_email`, `imagelocation`, `bg_imagelocation`, `tokencode`, `joined`, `user_type`, `registercode`, `verified`, `email_verified`, `title`, `website`, `country`, `categories`, `skills`, `about`, `email_settings`, `jobs_notifications`, `signup_complete`, `signup_type`, `firebase_token`, `avatar`) VALUES
(334, '233802410288', '$2y$10$rFJ3dK8Whkv22QKz8TOxXu3pDkElkBvSKaR6AeNQLAW.p.I..Vgh2', 'Anthony E Fisher', 'anthony-e-fisher', 'freelancer_1@gmail.com', 'def50200a93c044c81cb98ae86976897047b8902b83b6b2a325f6d9b7cfee14cf26cd6711ce496670281348f8b9770020b0884d0c9b51cf16ea82db62b0e225b8cad89707f7f388c5c3adfbf916aed3f95bfc59d841642', '70.00', 'freelancer_1@gmail.com', '81jAndpLWkLqe7.jpg', 'wave.jpg', 'ccb58fbb086e54c8198007b6c782e266', '2019-10-23 13:33:29', 1, '17597e4818f98be29b9e34de3e28cf0b', 1, 0, 'Frontend Developer', '', 'Seattle, Washington', 'SEO Keyword Optimization,Web Design & UI/ UX,Wordpress Themes & Plugins', 'Twitter Marketing,Bootstrap,twitter api,TV Broadcasting', 'I am a hardworking and respectful developer. I will do the work to my ability.', 1, 1, 0, '', 'cpOekqc9QxOm8USDt69_NF:APA91bELMSQAwjLT6qOnHacqPBkFgj6a7xgmKWOpiQO6UAFw69mxjcyyqsYGhXzHbOqLAjDVsqabmAJUtUivZgRSu1Ceypz2kPbQhiLDTlMkeMdAAjWD9Z8ytGEnHaZWral9B3JvW_ee', ''),
(335, '753678237313', '$2y$10$rFJ3dK8Whkv22QKz8TOxXu3pDkElkBvSKaR6AeNQLAW.p.I..Vgh2', 'Julia D Mosley', 'julia-d-mosley', 'freelancer_2@gmail.com', NULL, '19.00', 'freelancer_2@gmail.com', '1556026913.jpg', 'wave.jpg', '', '2019-10-23 15:41:16', 1, '8c7d6b464dad8f56a1b1281528dd622b', 0, 0, 'Article & Blog Writer', '', 'Pittsburgh, Pennsylvania', 'Writing & Translation,Article & Blog Writing', 'Writing,English Proofreading ', 'I have my own books published on Amazon which have great reviews.', 1, 1, 0, '', NULL, ''),
(336, '715478889450', '$2y$10$rFJ3dK8Whkv22QKz8TOxXu3pDkElkBvSKaR6AeNQLAW.p.I..Vgh2', 'Charles J Linton', 'charles-j-linton', 'freelancer_3@gmail.com', NULL, '49.00', 'freelancer_3_paypal@gmail.com', '15561367847.jpg', 'wave.jpg', '', '2019-10-23 15:45:42', 1, 'effc137fb91168e8040ced1f81086fa0', 0, 0, 'Graphics Designer', '', 'Flint, Michigan', 'Graphics & Design,Cartoons,Flyers & Brochures,Logo Design,Social Media Graphics,T-Shirts', 'Adobe Photoshop ,Adobe Muse ,Adobe Illustrator ', 'I love to create beautiful stuff.', 1, 1, 0, '', NULL, ''),
(337, '645447357569', '$2y$10$rFJ3dK8Whkv22QKz8TOxXu3pDkElkBvSKaR6AeNQLAW.p.I..Vgh2', 'Gilda Cheng', 'gilda-cheng', 'freelancer_4@gmail.com', NULL, '0.00', '', '15560276393.jpg', 'wave.jpg', '', '2019-10-23 15:51:34', 1, 'f2213a3e0b7db0950845c84b38e1649b', 1, 0, 'Web Developer', '', 'Beijing, China', 'Web Design & UI/ UX,Website Builders,Wordpress Themes & Plugins', 'Yii,XSL,PHP ,Laravel Framework ,CakePHP ', 'I am an experienced Web Developer of over 10yrs.', 1, 1, 0, '', NULL, ''),
(338, '296482705384', '$2y$10$rFJ3dK8Whkv22QKz8TOxXu3pDkElkBvSKaR6AeNQLAW.p.I..Vgh2', 'Michael C McFarland', 'michael-c-mcfarland', 'freelancer_5@gmail.com', NULL, '0.00', '', '1556027944.jpg', 'wave.jpg', '', '2019-10-23 15:58:10', 1, '6b31969ec66a8a5564488640bd98a652', 1, 0, 'Creative Director of Branding', '', 'Arcadia, Florida', 'Flyers & Brochures,Logo Design,Social Media Graphics', 'Word-of-Mouth,Corporate Brand Identity ,Brand Management ', 'I am an outdoor man who can sell our business', 1, 1, 0, '', NULL, ''),
(339, '199476311866', '$2y$10$rFJ3dK8Whkv22QKz8TOxXu3pDkElkBvSKaR6AeNQLAW.p.I..Vgh2', 'Helen W Ward', 'helen-w-ward', 'freelancer_6@gmail.com', NULL, '70.00', '', '1556035682.jpg', 'wave.jpg', '', '2019-10-23 18:07:27', 1, 'f21189ac9d9f552d6fd1e9d3abd59ef4', 0, 0, 'Business & Stategy Analyst', '', 'New York, USA', 'Graphics & Design', 'Infographics ', 'I am great at Infographics', 1, 1, 0, '', NULL, ''),
(340, '305378125552', '$2y$10$rFJ3dK8Whkv22QKz8TOxXu3pDkElkBvSKaR6AeNQLAW.p.I..Vgh2', 'Robert C Cox', 'robert-c-cox', 'freelancer_7@gmail.com', NULL, '70.00', '', '1556035968.jpg', 'wave.jpg', '', '2019-10-23 18:12:06', 1, '424990132950b95ab2fa25565b769e3d', 0, 0, 'Frontend Developer', '', 'Irvine, California', 'Web Design & UI/ UX', 'Website Prototyping,HTML5 ,CSS3 ', 'I love to build great websites.', 1, 1, 0, '', NULL, ''),
(341, '228145236254', '$2y$10$rFJ3dK8Whkv22QKz8TOxXu3pDkElkBvSKaR6AeNQLAW.p.I..Vgh2', 'Sharon M Watson', 'sharon-m-watson', 'freelancer_8@gmail.com', NULL, '25.00', 'freelancer_8_paypal@gmail.com', '1556036413.jpg', 'wave.jpg', '', '2019-10-23 18:19:32', 1, 'fea426e2bab45c57ccb52bc3d7334ca6', 1, 0, 'SEO Expert', '', 'Johnston City, Illinois', 'Writing & Translation,Article & Blog Writing,Proofreading & Editing', 'SEO Writing ,SEO Keyword Research ,SEO Audit ', 'I can fix your website SEO and you will get more traffic!!', 1, 1, 0, '', NULL, ''),
(342, '324036228471', '$2y$10$rFJ3dK8Whkv22QKz8TOxXu3pDkElkBvSKaR6AeNQLAW.p.I..Vgh2', 'Samatha H Rios', 'samatha-h-rios', 'freelancer_9@gmail.com', NULL, '42.00', '', '1556036692.jpg', 'wave.jpg', '', '2019-10-23 18:24:15', 1, '6f1156b92e11b8d1a313e3c30971cffe', 1, 0, 'Animator', '', 'Waukesha, Wisconsin', 'Animation & 3D', 'Animation ,3D Modeling ,3D Design ,3D Animation ,2D Animation ', 'I am an expert in 3D Animation.', 1, 1, 0, '', NULL, ''),
(343, '434155361070', '$2y$10$rFJ3dK8Whkv22QKz8TOxXu3pDkElkBvSKaR6AeNQLAW.p.I..Vgh2', 'Dexter S Nugent', 'dexter-s-nugent', 'freelancer_10@gmail.com', NULL, '15.00', 'freelancer_10_paypal@gmail.com', '1556036987.jpg', 'wave.jpg', '', '2019-10-23 18:29:17', 1, 'e9911c604fb2228a3132119f58b7698e', 0, 0, 'Mobile App Developer', '', 'Houston, Texas', 'Mobile App Development', 'Mobile Programming ,Mobile Development Framework ,Mobile App Development ', 'I can build your company a great mobile app.', 1, 1, 0, '', NULL, ''),
(344, '981686315672', '$2y$10$4a0JMq15yofAB.rd3C4xq.E1tLMq3wKYrIBPLkB.srAAC/D8tL5ne', 'Gerald K Myers', 'gerald-k-myers', 'client_1@gmail.com', 'def502009935fd6c9c9d864af29ffdf5f278b89d783d9a3d8c65fdef57e2ce5f37cfeabc851ec7cce2e10706c894fba902868b4e9f2167ab962fdb215a2aaed898ea5eca429e5e7d1b828864ec157096c3030f9a0840e103ce59', '200.00', '', '', 'wave.jpg', '3e5edfb6f9efc8ab60b615515970cf66', '2019-10-24 14:04:51', 2, '05b78ae5e88fb580459810789ae70c90', 0, 0, 'Founder of Gerald Inc Company', 'https://www.themashabrand.com', 'Charlotte, North Carolina', '', '', '', 1, 1, 0, '', 'eFGiLvsgwk0HjLfv7g2hVy:APA91bHdUIZEwI-rgOkKV2eaAyOkA10ENXaXA1j0cOnh3Fakq7DctOI9z9N9soJmE8V8LXkINrd4sR8dod7MeQ0bMhMTSrLT9gxOCojmYwgNh2kmFieLrZwq3GC4o4qgbhJcekVLjhUh', ''),
(345, '188158648562', '$2y$10$rFJ3dK8Whkv22QKz8TOxXu3pDkElkBvSKaR6AeNQLAW.p.I..Vgh2', 'Rose M Milewski', 'rose-m-milewski', 'client_2@gmail.com', NULL, '0.00', '', '15561077470.jpg', 'wave.jpg', '', '2019-10-24 14:08:42', 2, '8ac64bb88d89907f1a8179655f99f9d6', 0, 0, 'Founder of Rose Inc Company', 'https://www.themashabrand.com', 'Montgomery, Alabama', '', '', '', 1, 1, 0, '', NULL, ''),
(346, '431974897102', '$2y$10$rFJ3dK8Whkv22QKz8TOxXu3pDkElkBvSKaR6AeNQLAW.p.I..Vgh2', 'Jesse A Williams', 'jesse-a-williams', 'client_3@gmail.com', NULL, '30.00', '', '15561082675.jpg', 'wave.jpg', '', '2019-10-24 14:17:19', 2, '8bfea85b3171c37870d45bc781966ffb', 0, 0, 'Founder of Jesse Inc Company', 'https://www.themashabrand.com', 'Clarksburg, West Virginia', '', '', '', 1, 1, 0, '', NULL, ''),
(347, '321267804911', '$2y$10$rFJ3dK8Whkv22QKz8TOxXu3pDkElkBvSKaR6AeNQLAW.p.I..Vgh2', 'Margaret H Nilsen', 'margaret-h-nilsen', 'client_4@gmail.com', NULL, '150.00', '', '15561120981.jpg', 'wave.jpg', '', '2019-10-24 15:21:01', 2, '40b2447874b018cd62ee6f448f3bba58', 0, 0, 'Founder of Margaret Inc Company', 'https://www.themashabrand.com', 'Brisbane, California', '', '', '', 1, 1, 0, '', NULL, ''),
(348, '329616019298', '$2y$10$rFJ3dK8Whkv22QKz8TOxXu3pDkElkBvSKaR6AeNQLAW.p.I..Vgh2', 'Kevin S Gonzalez', 'kevin-s-gonzalez', 'client_5@gmail.com', NULL, '0.00', '', '1556112221.jpg', 'wave.jpg', '', '2019-10-24 15:23:16', 2, 'a354a4a619b309605643da85d727987f', 2, 0, 'Founder of Gonzalez Inc Company', 'https://www.themashabrand.com', 'Millbrae, California', '', '', '', 1, 1, 0, '', NULL, ''),
(349, '108278049269', '$2y$10$rFJ3dK8Whkv22QKz8TOxXu3pDkElkBvSKaR6AeNQLAW.p.I..Vgh2', 'Marian J Speer', 'marian-j-speer', 'client_6@gmail.com', NULL, '100.00', '', '15561123320.jpg', 'wave.jpg', '', '2019-10-24 15:25:01', 2, '4cf76aa5f7509a94dd983166a0272e37', 0, 0, 'Founder of Speer Inc Company', 'https://www.themashabrand.com', 'New York, New York', '', '', '', 1, 1, 0, '', NULL, ''),
(354, '157821953023', '$2y$10$rFJ3dK8Whkv22QKz8TOxXu3pDkElkBvSKaR6AeNQLAW.p.I..Vgh2', 'rko', 'rko', 'rko@gmail.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-01-10 15:02:33', 1, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(355, '244015555878', '$2y$10$JPJCoIOeIwXotGlI0q2WLemBJUq.ex4oQEV4MjVoSZvwesO6H0iui', 'ff', 'ff', 'ff@gmail.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-01-10 15:06:42', 1, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(356, '253005966706', '$2y$10$0iLOjNBnyTn0oe/aYlIu8u4VLyKE05.Z.0jpdUsfod4K9NZ69Sswu', 'huy', '', '', '', '0.00', '', 'default.png', 'wave.jpg', '', '2020-01-10 15:30:15', 1, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(359, '654515151', '', '', '', '', NULL, '0.00', '', '', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(360, '654515151', '', '', '', '', NULL, '0.00', '', '', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(361, '654515151', '', '', '', '', NULL, '0.00', '', '', '', '', '0000-00-00 00:00:00', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(362, '109993551973', '$2y$10$jmh0ox7J8Q5erxAL.14Mjuuu0Wc8rDle7L5/4E15usMFhmJrg.UGO', 'htc', 'htc', 'htc@mailinator.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-01-11 10:01:03', 1, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(363, '985744705926', '$2y$10$.HrsWguEvjIKcGi55NZwj.JccyqcxGQtg1iidcYOq0vKbr.oGEgXq', 'ctc', 'ctc', 'ctc@gmail.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-01-11 10:02:02', 1, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(364, '330082289008', '$2y$10$MWIR3hSPoSNmmKch7N9.CuRUbMIIXfF01bnWwYOAMH4dEAT4NQbvq', 'doc', 'doc', 'doc@gmail.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-01-11 10:07:39', 1, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(365, '449909095206', '$2y$10$TCxSnOHyHUW/mkQrJMAsE.RfxcVUy/oCJRP7EmvvHh28wHPD5xnMK', 'amd', 'amd', 'amd@gmail.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-01-11 11:52:08', 1, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(366, '228582556227', '$2y$10$xoHP1TUWmpow8n.NCHQL8ugrc35TXE8g9Mv6kZrm1g.Q.UuS9tctO', 'free', 'free', 'free@gmail.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-01-11 13:36:43', 1, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(368, '306658121939', '$2y$10$rOvLkT8YnhwqqN8tAqzK1.CR2PoR8WQBg3U/KZz5.rTSdoJ8yo5u2', 'created freelancer', 'created-freelancer', 'created@gmail.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-01-15 15:19:43', 1, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(369, '262119781332', '$2y$10$CA5xVXBw8HG3tGuxYudHjuc9aODpoNzyiEe5HKq5MKVRL9ulyTsE6', 'cli', 'cli', 'cli@gmail.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-01-16 09:15:14', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(370, '127119456918', '$2y$10$Zf4nuSzq30y5kLjad8Biyu44VHWhB733UxFeJi82D./k1v8OPGlQu', 'cli', 'cli', 'cli@mailinator.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-01-22 09:37:28', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(371, '126928376097', '$2y$10$jtnZD5NS/J/XHpQJYgF/der88iRSYnBwUNh4.w9jCWmoHDPYbOa7W', 'cli1288', 'cli1288', 'cli1288@mailinator.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '9ae445afb75714fe622628a4266788d6', '2020-01-22 09:38:19', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(372, '310247374487', '$2y$10$VE5zBwSUBq4vjYDXLxXD7e1kOWx9rLe6HOwJKFVgznUhN2Bp5OR9K', 'free1288', 'free1288', 'free1288@mailinator.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-01-22 09:45:10', 1, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(376, '239079777751', '$2y$10$eT/GtFKHXwO5fw9HByDPFOCrNjEak3vBqiAHA8aguRF63KdK48Sva', 'amd1288', 'amd1288', 'amd1288@mailinator.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-01-23 12:41:39', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(377, '848774892590', '$2y$10$B3JJMltYDm4.fjMHFRnuI..yCmqiT9.9b7AaYHBZXtvu6vYXzVaBO', 'mac1288', 'mac1288', 'mac1288@mailinator.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-01-23 12:46:08', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(378, '193550593703', '$2y$10$Voap6ADF8Pa8iJZIXQ3Ej.mI7y.asO1GtBBmQx7rPVqsFgiHSdfRe', 'forza1288', 'forza1288', 'forza1288@mailinator.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-01-23 14:09:48', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(379, '113415621757297919960', '$2y$10$Tz5tVh1u604jPZ.qpcrpqOhF6VEF64/bsVa6lQSTXt5bIVxkq1siy', 'Lawrence Bass', 'lawrence-bass', 'lawrencebass40@gmail.com', 'def50200835478b774802613c5b94c5a7fd98e5ff0e762917caff7735ae163d5314e3ccf93e00a8ccc23e004b0466c363ee2ddc3d50fa0c64e0cf86fbe5f0f277dc6e73d27b3ce00ec9d30a9731ff49d1d29df5fa30848707d88e45d640022ba48188f3faf65159a415137e3471346fb88bf119bf6b1e58b0c9a1fb78bdb5ed2e116d495ca18930276eef3c90b8b24fbed74b7b97f62d85070b0c1cac4709af555cd5643576f19767415a456ec2595cc4afb87ffddea347cc6155e4bda54a0b99575ce59502f879e03beac007af0bbbed2f1b77b84635d5f4827f702d4eff11998cb284b3685d99db3a00fa0021dadd35f9864431c75dd8245a5eb7cd450500ace7d108085b2f39b5c2fefd0ad6cd40a4a14366739ec377943e8cec1', '0.00', '', '1603441706IMG_20201020_105942.jpg', 'wave.jpg', '', '2020-01-26 22:51:11', 2, '', 0, 0, 'Mr', '', 'test', '', '', '', 0, 0, 0, 'google', 'eQvjy4k-T4ia8A-Ob4W1Pb:APA91bFy0icbF2tBcNnQhQ-v5XHL25gTEBh25BOfd2YWmQVPDm4-kYXbz7mBVgMUxoStN-lhIXL6-QD8BLptfwNvXCifvE1PB6AwkEYNmcYZRbmAlLmCgXyCDLoKzV3CNjU0KIOBtKrG', ''),
(383, '2605561219541428', '$2y$10$X1mofDU1xDu/gGIEWuEM5O3KGLk/S/zpTGsEElyXza53qp/L./mYe', 'Bharat Prajapat', 'bharat-prajapat', 'bharatprajapat114@yahoo.com', NULL, '0.00', '', '1580362339.jpg', 'wave.jpg', '', '2020-01-30 08:32:19', 1, '', 0, 0, 'Full Stack Developer', '', 'India', 'Graphics & Design,Cartoons,Flyers & Brochures,Illustration,Logo Design,Social Media Graphics,Sales & Marketing', 'PHP ', 'Hello Everyone,\r\n\r\nI am working as a full stack developer \r\n\r\n', 0, 0, 0, 'facebook', NULL, ''),
(384, '2530567290501481', '$2y$10$wIaQR36uA4e6jlaAhMm/PuAPdvLCrMqQBrvKPbgFfaMgd6msyT/5S', 'Awa Francis', 'awa-francis', 'awa.d33@gmail.com', NULL, '0.00', '', '1580769209.jpg', 'wave.jpg', '', '2020-02-04 01:33:29', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, 'facebook', '', ''),
(385, '101250463084965587858', '$2y$10$MnSSFHlSO9ftQWEdr7mahOV6msmbtLHB3MIpFyJiNhoPJPWh/uPCW', 'Bharat Prajapat', 'bharat-prajapat', 'rrgs.bharat@gmail.com', NULL, '0.00', '', '1580815461.jpg', 'wave.jpg', '', '2020-02-04 14:24:20', 2, '', 3, 0, '', '', '', '', '', '', 0, 0, 0, 'google', NULL, ''),
(386, '328078408471', '$2y$10$Q1CbaefJtV0zenwgtvGfTOK5cWO.WiGr4mVBAWU8L57PCXg6yfVpC', 'Trail1288', 'trail1288', 'trail1288@mailinator.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-02-08 08:23:10', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(387, '318884073140', '$2y$10$O4CMdTghzE8TO/o9aTfnTePjBTvzeWZEiy3beBQrXH881ptCyxvfe', 'naxus1288', 'naxus1288', 'naxus1288@mailinator.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-02-08 10:00:52', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(388, '249149631999', '$2y$10$w04oFP2VHiIwCPfhidKyD.76SzIoomHuTi/zvkWPsX7RROxR0OS46', 'mark1288', 'mark1288', 'mark1288@mailinator.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-02-10 14:05:44', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(389, '211722611476', '$2y$10$Yh98KcCPdaPPyCJL20XnwuJe859f2xvQvQdCeK87LNxThZaov0Mo2', 'hdfc1288', 'hdfc1288', 'hdfc1288@mailinator.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-02-10 14:15:04', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(390, '205088753550', '$2y$10$piSRoCHdb.OMxScElhVIc.SPVSqMhLlLJkvgfSlbITNeEUC4.gYTq', 'James', 'james', 'james@gmail.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-02-11 11:28:09', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(391, '217320971242', '$2y$10$Ppe1boJ/FHQuO.EYsahDFeneApjOhLBL0WuPckreTtKvJoSgnuycG', 'roy', 'roy', 'roy@gmail.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-02-11 11:41:31', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(392, '172196767930', '$2y$10$eiHBW4h5aniLOGoB99/gt.7y5Jcdi.jvpB4guLmGU01Fo9AKPeIL2', 'roy', 'roy', 'roy1@gmail.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-02-11 12:01:21', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(393, '317618924618', '$2y$10$UeB1RkZxn4ECMs85cXbRXetiMwVn.z/8.36yoTMfE8NbbhoMCNvC.', 'admin', 'admin', 'admin@gmail.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '07046de8dcb2f84e0279dcf8a5d9302a', '2020-02-11 12:14:59', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(394, '1001967612880', '$2y$10$jPHRd3lCxoSuqCO6rVpe.uOMr2JIAHiwq6vXpKk4cJ3nvhVZS3Iqm', 'Emrick Rollins', 'emrick-rollins', 'geogatedproject302@gmail.com', NULL, '0.00', '', '1581480250.jpg', 'wave.jpg', '', '2020-02-12 07:04:10', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, 'facebook', NULL, ''),
(395, '111029492540266788474', '$2y$10$z/hJ4LbwSU0DHN9LVlSdh.Y39S.wd2gg58dHlz2T1woZsLhp/UqjW', 'pratiksha gupta', 'pratiksha-gupta', 'pratikshagupta924@gmail.com', NULL, '0.00', '', '1581506888.jpg', 'wave.jpg', '', '2020-02-12 14:28:08', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, 'google', NULL, ''),
(396, '320494019007', '$2y$10$cyNRGyG24cKTji2lSLtzWOoGkCYlyEQH13BH8jM4TOzz/.MjigaMC', 'dev00001', 'dev00001', 'dev0020@mailinator.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-02-20 15:11:18', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(397, '178890976816', '$2y$10$S9nFpAPqEJZOfpnqbbwJ2eH8X4U0QrK3j9alKbHgN878CL/Hqu9re', 'Bharat', 'bharat', 'bharatprajapat114@yahoo.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-02-21 12:33:06', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(398, '115527825720', '$2y$10$4.1aZne.R1NgwHB5uq75reCnesBOSImfwRF9qxIzPq9tIlq77wIQe', 'test', 'test', 'lawrencebass40@gmail.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-04-17 06:30:06', 1, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', 'eQvjy4k-T4ia8A-Ob4W1Pb:APA91bFy0icbF2tBcNnQhQ-v5XHL25gTEBh25BOfd2YWmQVPDm4-kYXbz7mBVgMUxoStN-lhIXL6-QD8BLptfwNvXCifvE1PB6AwkEYNmcYZRbmAlLmCgXyCDLoKzV3CNjU0KIOBtKrG', ''),
(399, '235345687298', '$2y$10$BXUGPvuvi8SzRcUQesUNee03LTyP/FGxXrU2ERJ5/myOODknyeIcK', 'client A', 'client-a', 'client_a@mailinator.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-05-04 08:54:49', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(401, '105337550177847733427', '$2y$10$VYyIn3WsCzE1xLe4WArvGenLDsycmtha6XFg6H4iHupmdR6RsqpX.', 'sagar kumar', 'sagar-kumar', 'rrgs.sagar@gmail.com', 'def5020020915a419aec629758aeb0235d1417f8eeaa0ee775852d84e5e485597fcc27a064f824200820dfa223876d334116ad2bbb8615d302b83e6b4b981f116cd108e11e243fce9fe0508c0691ff0c6da5b63c52c43de237d4b8ca9d07524fbd6f', '0.00', '', '1589954665.jpg', 'wave.jpg', '', '2020-05-20 09:04:25', 2, '', 0, 0, 'rrgs1288', 'http://comp1.com', 'IN', '', '', '', 0, 0, 0, 'google', NULL, ''),
(402, '210207732198', '$2y$10$kVZtJA.t17qntMWk5xveMORTut04yzuP5UeQyaA7f5QPmwkB03Gzq', 'fernando castillo', 'fernando-castillo', 'fernandcast@alcegi.ga', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-05-21 07:07:28', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(403, '168182023139', '$2y$10$BPNfQ5XB0/bNDivKlk9w2.aGwJiXI2xtlSX5960/hv2rJNXITauhi', 'nvidia1288', 'nvidia1288', 'nvidia1288@mailinator.com', 'def5020067ed259586435b15f83cb989c9cb8ba2e2d0ad91f6edfa98b158119fe6ff499c5fc1d61e9189d453a5895aacea5c530649b315bb744d9d5fccc18d4eaf9e71aa7925053fa5211fe7d8fda4d734c20ae4f165f6e76650491e1626737cfead', '0.00', '', 'default.png', 'wave.jpg', '', '2020-05-21 12:45:05', 2, '', 0, 0, 'nvidia1288', 'http://domino', 'IND', '', '', '', 0, 0, 0, '', NULL, ''),
(404, '118167523740787032041', '$2y$10$PUlKOViNtIHxXQ3KeQk7x.9B0TAXkgJwte2VFiTxeX5RYOhiAuAsu', 'RRG SOFTWARE', 'rrg-software', 'rrgsindore@gmail.com', 'def502005c7adccfb08890e5a8ad170f9adbdd251d3c1edb68cf31fe69d7a2cfa90806725361d58753b1b1cb0def459ea026276f9c954d8f0e70bd9a9a5413ca60023f975b6414fd49a84f68be23a6a5271c245379146c7af4291d58e40f9e5427c20802a4', '0.00', '', '1590058493.jpg', 'wave.jpg', '', '2020-05-21 13:54:53', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, 'google', NULL, ''),
(405, '323017170331', '$2y$12$SziAGXHGPQ.woIBnETFqMO20NTb7jrAoaqugFJzj5Ii1x9xlc2r5y', 'test', 'test', 'admin@wave.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-05-22 04:22:18', 1, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(406, '258424513817', '$2y$10$exgmxz7XbdIuTMHV9LVJf.0Gs6jDdJeKjxyG0JjM4QydT1oD1xyAa', 'test', 'test', 'awa.d33@gmail.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-05-22 04:25:48', 1, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', '', ''),
(407, '614006552994', '$2y$10$55PpNsvKohD6B7TuolFr9uN4o2TArKgSz.F.kfisB7ELk2bvhSiFK', 'John', 'john', 'johntetega@gmail.com', 'def50200758bb1ed501b966461496332de0165443a76cc913d6a540da5bc852ac1f272a9f05eb85291493abb5509fdfe0ca4dd8d1010a17d8ef38cd3501f20c9ad8969f08f4b3ad5af42a168150d877990eda81f21ece341139c2e066f58811ef3de290a2bf656888a64ceac7c6241372224155b6056014706610eeaf5d8f96da3', '0.00', '', 'default.png', 'wave.jpg', '', '2020-05-25 01:29:38', 2, '', 3, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(408, '497917744896', '$2y$10$nCQXVQcyfGOL83fxaFobve61CjtGZ3bQUgdbZFIBRJ7L0yGa.Za/6', '', 'n-a', '', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-07-15 10:09:50', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(409, '378816451126', '$2y$10$xCTUMVQhb33loHVt3RA.H.1aQA2Fib9vqdIBoRc1OIaWnu7qPZJ0K', 'jonny', 'jonny', 'hellojohn703@hotmail.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-07-15 20:08:45', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(410, '204275626377', '$2y$10$FUX5T1bOWuHQ9XuWx.s8jOloY776J4KI/TcfNU/63DL51Y5tON4Vy', 'RRG Software', 'rrg-software', 'admin@admin.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-07-16 13:43:14', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(411, '149092707493', '$2y$10$DLWna/LyO45HZDE0cD12J.QZdB3uA/ifFxduQ/jTHOmlW6ctdbDp2', 'n', 'n', 'n@mailinator.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-07-16 15:23:02', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(412, '10207789251927309', '$2y$10$IJaLvQmCrqvT7eD/RV1Ab.sMDapYFD.pAqOgE/KbBeIyGtd58/HrW', 'Edilong Sawyer', 'edilong-sawyer', 'danielkibet@gmail.com', 'def5020097147264cc8288fcf243f952fdfee394af4aeb6d1fe23108b04e33d8d1b97839f1979bcb316909cda59e38a4d2e90d79d685049c8a4bc7d8271b6770318f2dc2cfbcfd246e0d1f5fa9a0f9f77b5b74d6', '0.00', '', '1596952883.jpg', 'wave.jpg', '', '2020-08-09 09:01:23', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, 'facebook', NULL, ''),
(413, '10150000976796761', '$2y$10$7HckOpg4bjRGCSQfeh25AOL27a90uwHe2WPvUNX3mER1gskCjPM4i', 'Sandra Bharambeescu', 'sandra-bharambeescu', 'mixhpbgcvj_1576840133@tfbnw.net', NULL, '0.00', '', '1597631420.jpg', 'wave.jpg', '', '2020-08-17 05:30:20', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, 'facebook', NULL, ''),
(414, '10150000977698777', '$2y$10$GlmiAcHb.p8WpLWjSfaIGekCUvxbzh3O/GsJlgZAJ9OUfD4/R106W', 'Kim Fergiesky', 'kim-fergiesky', 'iazfpwguhx_1576842787@tfbnw.net', 'def502001f816c52957428211d0c9c3613a879e8b38a83274679c7014970167bf58d86fa786db7548c8e025926a6f1256e98a1e34724565230476541780af5f0166465e62fda073cfd042246b47e1b60da94533e', '0.00', '', '1597635205.jpg', 'wave.jpg', '', '2020-08-17 06:33:25', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, 'facebook', NULL, ''),
(415, '10150000981918832', '$2y$10$FRSLpEi6dBiTvKx42DSYPehfYqCLnYb/gyPyOF.fVNqE6IZkOAFhK', 'Susan Oniki Chiquitoescu', 'susan-oniki-chiquitoescu', 'lfwbgqsbwg_1579518275@tfbnw.net', 'def502009afb9a1a3b215bf7ef548c9b49b0c9a7a981bbd708b8faf8db42e0126ca61a088ec6c657c194bac3a36b78f08b4d0dffcb51db78eb8fc63b0910269f57e38a466e387a127938e62429f8cb23eedd0137', '0.00', '', '1597652632.jpg', 'wave.jpg', '', '2020-08-17 11:23:52', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, 'facebook', NULL, ''),
(416, '101250463084965587858', '$2y$10$2RoB4LJikPGst/RGFJoBpu.vRwQjWBSEVCfdiDGH8hmir1ZFzq.cq', 'Bharat Prajapat', 'bharat-prajapat', 'client_1@gmail.co', NULL, '0.00', '', '1597920338.jpg', 'wave.jpg', '', '2020-08-20 13:45:38', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, 'google', NULL, ''),
(417, '101250463084965587858', '$2y$10$AVSl4GCpqt/8SQTUB27U2.zNghGinGGAf/UIKnr7ILGPYLvXVOBl2', 'Bharat Prajapat', 'bharat-prajapat', 'client_1@gmail.c', NULL, '0.00', '', '1597920515.jpg', 'wave.jpg', '', '2020-08-20 13:48:35', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, 'google', NULL, ''),
(418, '845792187588', '$2y$10$GPLXFSeSU6sIQqBQfPBPduyUk4WOZCG45CM.4JRYhkQQKe/4lKfTa', 'n', 'n', 'n@mailinator.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-08-22 14:10:16', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(419, '234282630875', '$2y$10$3WswPCbu.x17HrxydZnGdOjwMe0oBX9nm/pPcVhVV5qqYez1Ek2xe', 'n', 'n', 'n@mailinator.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-08-22 14:10:20', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(420, '225456743707', '$2y$10$XaOg/3cgIHGh1AVwbMk.eu8wTmwzaM7/w/gNHgvTcbMfqPQpA02LO', 'n', 'n', 'n@mailinator.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-08-22 14:10:22', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(421, '162974945297', '$2y$10$gxQBirN4oCAFGo6Q/tiaeeUYz7dy4M3yIs5cEx8PAEDm2.Ysfqyr2', 'rahul ', 'rahul', 'rahulpatil9985@gmail.com', 'def502007f2c60e7cc6639e70f1766d55d10efaf04add7bbe8d7866a8d4eb3a35b8da35b999535fc484cd3a381ecefc21559c9fd2aa0b5d411bf96d7cfaed1b2d83403c23339c0d95b738171d1b1cae66a0f8a94', '0.00', '', 'default.png', 'wave.jpg', '', '2020-08-24 07:40:49', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(422, '309618789995', '$2y$10$jdaXNdLxroZG/dqtgZw4Xu4tboHV0tyXZ/yOty5.9d8SOTaiYIeQu', 'n', 'n', 'n@mailinator.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-08-24 08:06:16', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(423, '734383747652', '$2y$10$uyl1hXRzxveTLIT1CDhFS.IgUXWXHqFU5yyplAaPLZq8Jc8NsWbS6', 'n', 'n', 'n@mailinator.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-08-24 08:06:16', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(424, '113083239404505851635', '$2y$10$X1pbi3WgMLo4iPRDUbhUiOJxAbLR1Pg5g1LCaG6duDJDaTwi7G8Ee', 'Aayushi Babariya', 'aayushi-babariya', 'aayushibabariya407@gmail.com', NULL, '0.00', '', '1598268614.jpg', 'wave.jpg', '', '2020-08-24 14:30:14', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, 'google', NULL, ''),
(425, '330554945282', '$2y$10$cTdD3Au5lMaez0lJal3fiOeWuBCUkhz6AvW.GLzaa6puHexcegTIG', 'n', 'n', 'n@mailinator.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-08-25 07:33:22', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(426, '239515710572', '$2y$10$V1CDhDN1qkJFZNR78ufxIO8Jpz9.gayyyutMzlqfE546nyo78sfPm', 'n', 'n', 'n@mailinator.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-08-25 07:33:30', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(427, '280427472214', '$2y$10$gTLfDQzgawoHhFgjqWlaL.3PgPR.2Yf1BoY4t3L9Xg9R2uN0LFn9S', 'n', 'n', 'n@mailinator.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-08-25 07:55:49', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(428, '223519445292', '$2y$10$FGs14asPGISeS1OwRb81leaDVfAmc.WMN7BVd/tDFB1v62PU0P10G', 'R', 'r', 'n@mailinator.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-08-25 14:37:17', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(429, '927050207314', '$2y$10$J6fH4ci4O4FHimaR4PBWB.MWBIalhwYuLmTeZV1ZaQfFaRK/6VeVe', 'R', 'r', 'n@mailinator.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-08-25 14:37:26', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(430, '218144819414', '$2y$10$.GlWNpzIlfGebAc8kWSZceECvZRyvdv.lU7ikLKir0za83JJvER7y', 'R', 'r', 'n@mailinator.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-08-25 14:37:53', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(431, '353243188355', '$2y$10$VHzTaSp5INGcNWFFFIU6oePOgu.LBvUx4DVlKN9z.HCOPp9zzf/sC', 'R', 'r', 'n@mailinator.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-08-25 14:37:55', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(432, '308510941236', '$2y$10$2Qr4HG5Ape/EaHEjiQ16fOsZm95/U/NJuVnLKgbXJWo2q6U1Uc/8O', 'R', 'r', 'n1@mailinator.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-08-25 14:40:35', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(433, '694626253720', '$2y$10$o.PNLOx3yc8YvIpCe561MOJDNd40MxM4f0mTE0PD3bwqa9mGk9tYO', 'R', 'r', 'n2@mailinator.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-08-27 11:28:38', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(434, '843130020842', '$2y$10$TYeUdoFJzeflQ3Hmx8z.D.McoO9jwkz1G.uiFl5N8e5ihE8KtMe4S', 'R', 'r', 'n123@mailinator.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-09-02 11:46:36', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(435, '101250463084965587858', '$2y$10$Mlt/jMRe0a0b7XDtNHnFF.FJEI7.x9RNO8GOD/xV5w9Y1uxMMwHwa', 'Bharat Prajapat', 'bharat-prajapat', 'client_@gmail.com', NULL, '0.00', '', '1599036950.jpg', 'wave.jpg', '', '2020-09-02 11:55:50', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, 'facebook', NULL, ''),
(436, '101250463084965587858', '$2y$10$xGFaATaXbozFb0PaHlBSbOtgNF6Qp25L6UaR3YdmAgkU1svmmhmmC', 'Bharat Prajapat', 'bharat-prajapat', 'client@gmail.com', NULL, '0.00', '', '1599036962.jpg', 'wave.jpg', '', '2020-09-02 11:56:02', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, 'facebook', NULL, ''),
(440, '109022402676', '$2y$10$.oRwe9TmeF8..o4cdzfRh.O685uBvZ2zDbxkme9cxIMFd9Y9Ur5/C', 'R', 'r', 'n1@mailinato.com', NULL, '0.00', '', 'default.png', 'wave.jpg', 'f59801991b5c6b27df76e8d77c8bb9e5', '2020-09-02 12:52:51', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(441, '266850589469', '$2y$10$eA2qJjjv9MammDiksuUkL.fmJBSuwefndMLv3nYWTvGcl6Xcar9E2', 'R', 'r', 'killrbwaa@gmail.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '3d4dda114ae3558e841e669c20d23b29', '2020-09-02 12:57:37', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(442, '808226448775', '$2y$10$8U0H8bjB6bXfyU08rF0g1.yoDgHulgCu32.iBDfyArupwba1ZuY/m', 'R', 'r', 'killrrrbwaa@gmail.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-09-05 14:32:36', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(443, '136292690101', '$2y$10$soYzZzHS.dxzo9tCFuhrHOMMgfPOr9ib8luJBFhDyt7/tSBc9/ZCq', 'R', 'r', 'killrrrbwaaa@gmail.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-09-07 13:41:11', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(444, '287264436865', '$2y$10$l1VqJUbBfQegsF046rcyEelchBiT9O/GnDqyPeJtByeXLXPVqTwhq', 'a', 'a', 'killrbwaaa@gmail.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-09-07 14:53:13', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, ''),
(445, '108415457321877289984', '$2y$10$gu/LimrQmQfHUNRD9i/dMeVlU0PbFWMhGdDLTeJxN4d6wPnq91d6u', 'Phong Nguy?n Nam', 'phong-nguyn-nam', 'phongnn57@gmail.com', NULL, '0.00', '', '1600058347.jpg', 'wave.jpg', '', '2020-09-14 07:39:07', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, 'google', 'cLZVJyxCwE6ss76Y2ROiiT:APA91bEHaa2tslwgw623ZMBndE5pzub_X1HlCfyf-IcDZzRcKaPFavR6XYr6fwwsm5pnCgKtmHKRk_9-og7xeyf0tuBqKnjSYdpE9xM_OhVCanVP2LLvHv3L3fnnaNXX7hKfgThgqbuo', ''),
(448, '105458453384483469986', '$2y$10$KmCgTmoyQwu4iyoZzoxSH.pJX7Pt9zuyXiNC5/0.3Mpd1X1/3obUy', 'Huy Nguy?n', 'huy-nguyn', 'huynt57@gmail.com', NULL, '0.00', '', '1600489950.jpg', 'wave.jpg', '', '2020-09-19 07:32:30', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, 'google', NULL, ''),
(449, '', '$2y$10$TImy1icbxfbsVIebXYNGE.3NvwQik7J81s5L4nnGmUZs32fj44qOq', 'Quang Truong Bui', 'quang-truong-bui', 'mrbuicanxaha@gmail.com', 'def5020042181f271c97c8ac3080276c4a63d0dcd9aa7578a1225c986456ddca72f7f4df537b19b513d2881bb98ce0a525d99b014c69d1de75ba8a60d954c822a4005d271a8f83e8b7e2907469ef0922ecb51962', '0.00', '', '1602557603IMG_20200915_0912421543800292251039947.jpg', 'wave.jpg', '', '2020-10-13 05:52:38', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, 'google', 'ddqRW9RlSBCXspe4pCXy5G:APA91bHt2F27-PXdLCVdPJ4jrJIaCLatUpew9Ds9wGeAfoGiRKUekMT_WX3jTVWFfCWImOIX1x5OwNE59NA4fHn76W62eAOu-tC23h7_plDXPidqAYqJIUNrTpkS_LWZlafI0unhJtVH', NULL),
(450, '123319716020', '$2y$10$LWOr4R.cNuk4XkHOTyxeZ.HdTFqQpoAqY0Xe36/a8SNe3tRlXXVGm', 'CNC M', 'cnc-m', 'lawrencebass40@gmail.com', NULL, '0.00', '', 'default.png', 'wave.jpg', '', '2020-10-28 03:51:17', 1, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, NULL),
(451, '146010708504', '$2y$10$TzYOiblvC5mRJmDAstl5GOar8OLTJPHLeWry/uyoppAWE4rqMd.NW', 'John K', 'john-k', 'Homeworkhelpertol@gmail.com', 'def50200cff6bbc226cf35b6ffaf251dea46f621941ab08e6c9f218a31829f38a8f18e3d4aaef2458f3e64eaa13dcb5c7d13b1e7da25524444804be3e4cf292a22af0c2275e8bdcefa73e1a76ef08d7ce9aef401', '0.00', '', 'default.png', 'wave.jpg', '', '2020-11-21 21:51:57', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, '', NULL, NULL),
(452, '103427551039202574565', '$2y$10$fchhg6jQKDBCS073.s.Yt.y6FuuNgMqniwC28u3CWux6V23kLnEf6', 'cute adonis', 'cute-adonis', 'cuteadonis32@gmail.com', NULL, '0.00', '', '1607828388.jpg', 'wave.jpg', '', '2020-12-13 05:59:48', 2, '', 0, 0, '', '', '', '', '', '', 0, 0, 0, 'google', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_session`
--

CREATE TABLE `users_session` (
  `id` int(11) NOT NULL,
  `user_id` varchar(300) NOT NULL,
  `hash` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` int(255) NOT NULL,
  `code` varchar(300) NOT NULL,
  `freelancerid` varchar(300) NOT NULL,
  `paypal_email` varchar(300) NOT NULL,
  `type` varchar(300) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `transaction_fee` decimal(15,2) NOT NULL,
  `freelancer_receive` decimal(15,2) NOT NULL,
  `action` tinyint(4) NOT NULL,
  `read_status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_to_be_paid` datetime NOT NULL,
  `date_paid` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `withdrawals`
--

INSERT INTO `withdrawals` (`id`, `code`, `freelancerid`, `paypal_email`, `type`, `amount`, `transaction_fee`, `freelancer_receive`, `action`, `read_status`, `date_added`, `date_to_be_paid`, `date_paid`) VALUES
(1, 'lgXBwzGWxq', '228145236254', 'freelancer_8_paypal@gmail.com', 'PayPal', '50.00', '2.30', '47.70', 2, 1, '2019-11-26 14:20:16', '2019-12-01 14:20:16', '2019-12-01 14:24:20'),
(2, 'wYCa2FGfzt', '434155361070', 'freelancer_10_paypal@gmail.com', 'PayPal', '300.00', '2.30', '297.70', 2, 1, '2019-11-26 14:57:10', '2019-12-01 14:57:10', '2019-12-01 10:53:19'),
(3, 'KCDzeKhxW1', '228145236254', 'freelancer_8_paypal@gmail.com', 'PayPal', '100.00', '2.30', '97.70', 2, 1, '2019-11-29 10:55:44', '2019-12-03 10:55:44', '2019-12-03 16:17:15'),
(5, 'ygrd0zZBTyC3Lc', '753678237313', 'freelancer_2@gmail.com', 'PayPal', '30.00', '2.50', '27.50', 1, 1, '2019-12-03 15:17:58', '2019-12-07 15:17:58', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_info`
--
ALTER TABLE `about_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `b8_wordlist`
--
ALTER TABLE `b8_wordlist`
  ADD PRIMARY KEY (`token`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_on`
--
ALTER TABLE `chat_on`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `codo_attachments`
--
ALTER TABLE `codo_attachments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codo_attachments_visible_hash_unique` (`visible_hash`);

--
-- Indexes for table `codo_bans`
--
ALTER TABLE `codo_bans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `codo_blocks`
--
ALTER TABLE `codo_blocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `codo_block_roles`
--
ALTER TABLE `codo_block_roles`
  ADD KEY `codo_block_roles_rid_index` (`rid`),
  ADD KEY `codo_block_roles_bid_index` (`bid`);

--
-- Indexes for table `codo_categories`
--
ALTER TABLE `codo_categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `codo_config`
--
ALTER TABLE `codo_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codo_config_option_name_unique` (`option_name`);

--
-- Indexes for table `codo_crons`
--
ALTER TABLE `codo_crons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `codo_crons_cron_name_index` (`cron_name`);

--
-- Indexes for table `codo_edits`
--
ALTER TABLE `codo_edits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `codo_fields`
--
ALTER TABLE `codo_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `codo_fields_roles`
--
ALTER TABLE `codo_fields_roles`
  ADD PRIMARY KEY (`fid`,`rid`);

--
-- Indexes for table `codo_fields_values`
--
ALTER TABLE `codo_fields_values`
  ADD PRIMARY KEY (`uid`,`fid`);

--
-- Indexes for table `codo_logs`
--
ALTER TABLE `codo_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `codo_mail_queue`
--
ALTER TABLE `codo_mail_queue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `codo_notify`
--
ALTER TABLE `codo_notify`
  ADD PRIMARY KEY (`id`),
  ADD KEY `codo_notify_is_read_index` (`is_read`),
  ADD KEY `codo_notify_nid_index` (`nid`);

--
-- Indexes for table `codo_notify_queue`
--
ALTER TABLE `codo_notify_queue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `codo_notify_subscribers`
--
ALTER TABLE `codo_notify_subscribers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `codo_notify_subscribers_cid_index` (`cid`),
  ADD KEY `codo_notify_subscribers_tid_index` (`tid`),
  ADD KEY `codo_notify_subscribers_uid_index` (`uid`),
  ADD KEY `codo_notify_subscribers_type_index` (`type`);

--
-- Indexes for table `codo_notify_text`
--
ALTER TABLE `codo_notify_text`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `codo_pages`
--
ALTER TABLE `codo_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `codo_page_roles`
--
ALTER TABLE `codo_page_roles`
  ADD KEY `codo_page_roles_pid_index` (`pid`),
  ADD KEY `codo_page_roles_rid_index` (`rid`);

--
-- Indexes for table `codo_permissions`
--
ALTER TABLE `codo_permissions`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `codo_permissions_rid_index` (`rid`);

--
-- Indexes for table `codo_permission_list`
--
ALTER TABLE `codo_permission_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `codo_plugins`
--
ALTER TABLE `codo_plugins`
  ADD UNIQUE KEY `codo_plugins_plg_name_unique` (`plg_name`);

--
-- Indexes for table `codo_poll_log`
--
ALTER TABLE `codo_poll_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `codo_poll_options`
--
ALTER TABLE `codo_poll_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `codo_poll_questions`
--
ALTER TABLE `codo_poll_questions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codo_poll_questions_topic_id_unique` (`topic_id`);

--
-- Indexes for table `codo_posts`
--
ALTER TABLE `codo_posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `codo_promotion_rules`
--
ALTER TABLE `codo_promotion_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `codo_reports`
--
ALTER TABLE `codo_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `codo_report_types`
--
ALTER TABLE `codo_report_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `codo_reputation`
--
ALTER TABLE `codo_reputation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `codo_roles`
--
ALTER TABLE `codo_roles`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `codo_sessions`
--
ALTER TABLE `codo_sessions`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `codo_signups`
--
ALTER TABLE `codo_signups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `codo_smileys`
--
ALTER TABLE `codo_smileys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `codo_tags`
--
ALTER TABLE `codo_tags`
  ADD PRIMARY KEY (`tag_id`);

--
-- Indexes for table `codo_tags_allowed`
--
ALTER TABLE `codo_tags_allowed`
  ADD PRIMARY KEY (`tag_id`),
  ADD KEY `codo_tags_allowed_cat_id_index` (`cat_id`);

--
-- Indexes for table `codo_topics`
--
ALTER TABLE `codo_topics`
  ADD PRIMARY KEY (`topic_id`),
  ADD KEY `codo_topics_last_post_time_index` (`last_post_time`),
  ADD KEY `codo_topics_cat_id_uid_topic_created_index` (`cat_id`,`uid`,`topic_created`);

--
-- Indexes for table `codo_unread_categories`
--
ALTER TABLE `codo_unread_categories`
  ADD PRIMARY KEY (`cat_id`,`uid`);

--
-- Indexes for table `codo_unread_topics`
--
ALTER TABLE `codo_unread_topics`
  ADD PRIMARY KEY (`topic_id`,`uid`);

--
-- Indexes for table `codo_users`
--
ALTER TABLE `codo_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codo_users_mail_unique` (`mail`),
  ADD KEY `codo_users_username_index` (`username`),
  ADD KEY `codo_users_mail_index` (`mail`);

--
-- Indexes for table `codo_user_preferences`
--
ALTER TABLE `codo_user_preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `codo_user_preferences_uid_index` (`uid`),
  ADD KEY `codo_user_preferences_preference_index` (`preference`);

--
-- Indexes for table `codo_user_roles`
--
ALTER TABLE `codo_user_roles`
  ADD PRIMARY KEY (`uid`,`rid`);

--
-- Indexes for table `codo_views`
--
ALTER TABLE `codo_views`
  ADD PRIMARY KEY (`date`);

--
-- Indexes for table `conversation`
--
ALTER TABLE `conversation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversation_reply`
--
ALTER TABLE `conversation_reply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dispute_conversation`
--
ALTER TABLE `dispute_conversation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dispute_conversation_reply`
--
ALTER TABLE `dispute_conversation_reply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `escrow`
--
ALTER TABLE `escrow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `funds`
--
ALTER TABLE `funds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invite`
--
ALTER TABLE `invite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_actions`
--
ALTER TABLE `job_actions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_payments`
--
ALTER TABLE `job_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proposals`
--
ALTER TABLE `proposals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_id` (`job_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_color`
--
ALTER TABLE `service_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_fininshings`
--
ALTER TABLE `service_fininshings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_infil`
--
ALTER TABLE `service_infil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_layer_height`
--
ALTER TABLE `service_layer_height`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_material`
--
ALTER TABLE `service_material`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_postage`
--
ALTER TABLE `service_postage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_type`
--
ALTER TABLE `service_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription_tokens`
--
ALTER TABLE `subscription_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theme`
--
ALTER TABLE `theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_session`
--
ALTER TABLE `users_session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_info`
--
ALTER TABLE `about_info`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `chat_on`
--
ALTER TABLE `chat_on`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `codo_attachments`
--
ALTER TABLE `codo_attachments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `codo_bans`
--
ALTER TABLE `codo_bans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `codo_blocks`
--
ALTER TABLE `codo_blocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `codo_categories`
--
ALTER TABLE `codo_categories`
  MODIFY `cat_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `codo_config`
--
ALTER TABLE `codo_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `codo_crons`
--
ALTER TABLE `codo_crons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `codo_edits`
--
ALTER TABLE `codo_edits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `codo_fields`
--
ALTER TABLE `codo_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `codo_logs`
--
ALTER TABLE `codo_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `codo_mail_queue`
--
ALTER TABLE `codo_mail_queue`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `codo_notify`
--
ALTER TABLE `codo_notify`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `codo_notify_queue`
--
ALTER TABLE `codo_notify_queue`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `codo_notify_subscribers`
--
ALTER TABLE `codo_notify_subscribers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `codo_notify_text`
--
ALTER TABLE `codo_notify_text`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `codo_pages`
--
ALTER TABLE `codo_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `codo_permissions`
--
ALTER TABLE `codo_permissions`
  MODIFY `pid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1538;

--
-- AUTO_INCREMENT for table `codo_permission_list`
--
ALTER TABLE `codo_permission_list`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `codo_poll_log`
--
ALTER TABLE `codo_poll_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `codo_poll_options`
--
ALTER TABLE `codo_poll_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `codo_poll_questions`
--
ALTER TABLE `codo_poll_questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `codo_posts`
--
ALTER TABLE `codo_posts`
  MODIFY `post_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `codo_promotion_rules`
--
ALTER TABLE `codo_promotion_rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `codo_reports`
--
ALTER TABLE `codo_reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `codo_report_types`
--
ALTER TABLE `codo_report_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `codo_reputation`
--
ALTER TABLE `codo_reputation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `codo_roles`
--
ALTER TABLE `codo_roles`
  MODIFY `rid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `codo_signups`
--
ALTER TABLE `codo_signups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `codo_smileys`
--
ALTER TABLE `codo_smileys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `codo_tags`
--
ALTER TABLE `codo_tags`
  MODIFY `tag_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `codo_tags_allowed`
--
ALTER TABLE `codo_tags_allowed`
  MODIFY `tag_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `codo_topics`
--
ALTER TABLE `codo_topics`
  MODIFY `topic_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `codo_users`
--
ALTER TABLE `codo_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `codo_user_preferences`
--
ALTER TABLE `codo_user_preferences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `conversation`
--
ALTER TABLE `conversation`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `conversation_reply`
--
ALTER TABLE `conversation_reply`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `dispute_conversation`
--
ALTER TABLE `dispute_conversation`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dispute_conversation_reply`
--
ALTER TABLE `dispute_conversation_reply`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `escrow`
--
ALTER TABLE `escrow`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `funds`
--
ALTER TABLE `funds`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `invite`
--
ALTER TABLE `invite`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `job_actions`
--
ALTER TABLE `job_actions`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `job_payments`
--
ALTER TABLE `job_payments`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `proposals`
--
ALTER TABLE `proposals`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `service_color`
--
ALTER TABLE `service_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `service_fininshings`
--
ALTER TABLE `service_fininshings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `service_infil`
--
ALTER TABLE `service_infil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `service_layer_height`
--
ALTER TABLE `service_layer_height`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `service_material`
--
ALTER TABLE `service_material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `service_postage`
--
ALTER TABLE `service_postage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `service_type`
--
ALTER TABLE `service_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2673;

--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `subscription_tokens`
--
ALTER TABLE `subscription_tokens`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1299;

--
-- AUTO_INCREMENT for table `theme`
--
ALTER TABLE `theme`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=453;

--
-- AUTO_INCREMENT for table `users_session`
--
ALTER TABLE `users_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
