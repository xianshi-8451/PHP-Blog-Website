-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 27, 2021 at 10:23 PM
-- Server version: 5.7.32
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(7, 'Cornell'),
(8, 'Food'),
(9, 'Waterfalls'),
(10, 'Gorges');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(25) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(9, 22, 'Harry Potter', 'hp123@gmail.com', 'It looks beautiful!', 'approved', '2021-06-27'),
(10, 23, 'Hermione Granger', 'hg123@gmail.com', 'The chimes can be loud. ', 'approved', '2021-06-27'),
(11, 30, 'Xian', 'xsfsdsf@gmail.com', 'The gorge is only open during the summer.', 'approved', '2021-06-27'),
(12, 30, 'Xian', 'xsf@gmail.com', 'Be aware of the snakes though.', 'approved', '2021-06-27'),
(13, 23, 'Ron', 'rd@gmail.com', 'They are loud indeed!', 'approved', '2021-06-27'),
(14, 31, 'Ron', 'rd@gmail.com', 'You can see many drunken students during the weekends!', 'approved', '2021-06-27');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) DEFAULT NULL,
  `post_user` varchar(255) DEFAULT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(11) NOT NULL DEFAULT '0',
  `post_status` varchar(255) NOT NULL DEFAULT 'draft'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_user`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`) VALUES
(22, 7, 'AD White Library', NULL, 'xian', '2021-06-27', 'IMG_0101.jpeg', '<p>One of the most iconic places at Cornell</p>', 'Library', 0, 'published'),
(23, 7, 'McGraw Tower', NULL, 'xian', '2021-06-27', 'IMG_0651.jpeg', '<p>A clock tower with concerts performed by chime masters every morning, noon, and evening.</p>', 'McGraw Tower', 0, 'published'),
(24, 7, 'Fuertes Observatory', NULL, 'xian', '2021-06-27', 'IMG_0504.jpeg', '<p>It is located next to Beebe lake. </p>         \r\n        \r\n         ', 'Observatory', 0, 'published'),
(25, 9, 'Taughannock falls', NULL, 'xian', '2021-06-27', 'IMG_0448.jpeg', '<p>One of the largest waterfalls in the Ithaca area.&nbsp;</p>', 'Waterfalls', 0, 'published'),
(26, 7, 'Beebe Lake', NULL, 'xian', '2021-06-27', 'IMG_9088.jpeg', '<p>An artificial lake on campus.</p>', 'Beebe Lake ', 0, 'published'),
(27, 7, 'Beebe Lake', NULL, 'Harry', '2021-06-27', 'IMG_9080.jpeg', '<p>A bridge.&nbsp;</p>', 'Beebe Lake ', 0, 'published'),
(28, 9, 'Triphammer Falls', NULL, 'Hermione', '2021-06-27', 'IMG_9169.jpeg', '<p>One of the many waterfalls on campus.&nbsp;</p>', 'Triphammer Falls', 0, 'published'),
(29, 7, 'Cornell War Memorial', NULL, 'xian', '2021-06-27', 'IMG_8841.jpeg', '', 'War Memorial at Cornell', 0, 'published'),
(30, 10, 'Cascadilla Creek', NULL, 'Harry', '2021-06-27', 'IMG_8993.jpeg', '<p>One of the many creeks in Ithaca.</p>         \r\n        \r\n         ', 'Creeks ', 0, 'published'),
(31, 8, 'Ithaca Commons', NULL, 'xian', '2021-06-27', '2560px-Ithaca_Commons_(New_York).jpg', '<p>Ithaca Commons has many restaurants.</p>', 'Ithaca Commons', 0, 'published'),
(33, 10, 'Cascadilla Creek', NULL, 'xian', '2021-06-27', 'IMG_8855.jpeg', '<p>Another picture of the gorge. </p>         \r\n        \r\n         ', 'Cascadilla Creek', 0, 'published');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) DEFAULT NULL,
  `user_lastname` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text,
  `user_role` varchar(255) NOT NULL,
  `randSalt` varchar(255) DEFAULT '$2y$10$iusesomecrazystrings22'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randSalt`) VALUES
(1, 'xian', '$2y$12$qbZci9YnhfBn0KgNGsAR1OSJaND7q71uAnWj.nc.gvo7euc8e5PwO', 'Xian', 'shi', 'xsdddd@gmail.com', '', 'admin', ''),
(7, 'js123', '$2y$10$iFaXp5tCvilxUYORdhGqM.9de3mdZRd7rDSNP5fOgjkY2DwP9nhyG', 'John', 'Smith', 'js123@gmail.com', NULL, 'admin', '$2y$10$iusesomecrazystrings22'),
(8, 'td123', '$2y$10$Aenx8p4PltSF0Thwc6gQwuFuLHaX9rhJKZlBeJMb0.1n1Htfb.hAS', 'Tilda', 'Swinton ', 'td123@gmail.com', NULL, 'admin', '$2y$10$iusesomecrazystrings22'),
(9, 'Harry', '$2y$12$Yjj1JY22s9DJuytBHsvRoOhvNANe03jHpk/IhrKPyKVUPm7WN4Wru', 'Harry ', 'Potter', 'hpfans123@gmail.com', NULL, 'subscriber', '$2y$10$iusesomecrazystrings22'),
(10, 'Hermione', '$2y$12$gKBt6zvzCJXkCcIxRv39XeidMPHlOLOqBA3yJ5IJyOGaWYos8OyLS', 'Hermione', 'Granger', 'hg123@gmail.com', NULL, 'subscriber', '$2y$10$iusesomecrazystrings22'),
(11, 'Ron', '$2y$10$z5tnsTfN/IkGF1K1DDbgGOQno4wbSHP0k6G.JzbQcCiOn/azaq//S', 'Ron', 'Weasley', 'rw123@gmail.com', NULL, 'subscriber', '$2y$10$iusesomecrazystrings22');

-- --------------------------------------------------------

--
-- Table structure for table `users_online`
--

CREATE TABLE `users_online` (
  `id` int(11) NOT NULL,
  `session` varchar(255) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users_online`
--
ALTER TABLE `users_online`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=467;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
