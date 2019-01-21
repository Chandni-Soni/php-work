-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2019 at 09:53 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `first`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `pid`, `uid`) VALUES
(5, 2, 4),
(19, 3, 2),
(20, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `cid` int(11) NOT NULL,
  `comm` varchar(250) NOT NULL,
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `com_date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`cid`, `comm`, `uid`, `pid`, `com_date_time`) VALUES
(2, 'nice mobile...\r\ngreat price...', 2, 2, '0000-00-00 00:00:00'),
(3, 'nice one', 2, 1, '0000-00-00 00:00:00'),
(4, 'great', 2, 3, '0000-00-00 00:00:00'),
(5, 'great 1..', 3, 1, '0000-00-00 00:00:00'),
(6, 'good one', 3, 2, '0000-00-00 00:00:00'),
(7, 'amazing', 3, 3, '0000-00-00 00:00:00'),
(8, 'jcjscn\r\neff\r\nef\r\nef\r\n', 2, 1, '0000-00-00 00:00:00'),
(9, 'wdsdxdx', 2, 1, '0000-00-00 00:00:00'),
(10, 'dadx', 2, 1, '0000-00-00 00:00:00'),
(11, 'whebdhebd', 2, 1, '0000-00-00 00:00:00'),
(12, 'kwebdjbxksbc', 2, 1, '0000-00-00 00:00:00'),
(13, 'Loved it', 2, 2, '0000-00-00 00:00:00'),
(14, 'nice phone', 2, 3, '2019-01-10 11:58:50'),
(15, 'ekdbj\r\nasd\r\nesafas\r\nwef', 2, 3, '2019-01-10 12:07:14'),
(16, 'Nice design', 2, 3, '2019-01-10 02:22:43'),
(17, 'ejdfnjewn', 2, 3, '2019-01-10 06:59:10'),
(18, 'ajdnajsdn', 2, 3, '2019-01-10 07:00:00'),
(19, 'sadxd', 2, 1, '2019-01-10 07:11:15'),
(20, 'jhvjv', 2, 2, '2019-01-17 07:40:18'),
(21, '', 2, 1, '2019-01-18 12:00:41'),
(22, '', 2, 1, '2019-01-18 12:58:21'),
(23, 'hi', 2, 2, '2019-01-18 01:28:28');

-- --------------------------------------------------------

--
-- Table structure for table `con_order`
--

CREATE TABLE `con_order` (
  `id` int(6) NOT NULL,
  `pid` varchar(20) NOT NULL,
  `payment_amount` decimal(7,2) NOT NULL,
  `uid` int(11) NOT NULL,
  `createdtime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `con_order`
--

INSERT INTO `con_order` (`id`, `pid`, `payment_amount`, `uid`, `createdtime`) VALUES
(1, '3,', '9999.00', 2, '2019-01-21 11:20:42'),
(2, '3,', '9999.00', 2, '2019-01-21 11:22:43'),
(3, '3,', '9999.00', 2, '2019-01-21 11:23:15'),
(4, '3,', '9999.00', 2, '2019-01-21 12:07:54'),
(5, '3,', '9999.00', 2, '2019-01-21 12:08:45'),
(6, '3,', '9999.00', 2, '2019-01-21 12:23:09'),
(7, '3,', '9999.00', 2, '2019-01-21 12:27:34'),
(8, '2,3,', '23998.00', 2, '2019-01-21 13:04:06'),
(9, 'Realme 2 Asus Zenfon', '19498.00', 2, '2019-01-21 13:11:34'),
(10, '1.3.', '19498.00', 2, '2019-01-21 13:18:57'),
(11, '1.3.', '19498.00', 2, '2019-01-21 14:01:00'),
(12, '1.3.', '19498.00', 2, '2019-01-21 14:06:41'),
(13, '1.3.', '19498.00', 2, '2019-01-21 14:11:18'),
(14, '1.3.', '19498.00', 2, '2019-01-21 14:13:36'),
(15, '1.3.', '19498.00', 2, '2019-01-21 14:19:21');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pid` int(11) NOT NULL,
  `pname` varchar(30) NOT NULL,
  `prod_disc` varchar(500) NOT NULL,
  `pimg` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `pname`, `prod_disc`, `pimg`, `price`) VALUES
(1, 'Realme 2', '3 GB RAM | 32 GB ROM | Expandable Upto 2 TB 15.9 cm (6.26 inch) HD+ Display 13MP + 2MP | 8MP Front Camera 4000 Battery Qualcomm Snapdragon 632 Octa Core Processor Pure Android 8.1 Oreo (Stock)', 'm1.jpg', '9499.00'),
(2, 'Redmi Note 6 Pro', '3 GB RAM | 32 GB ROM | Expandable Upto 2 TB 15.9 cm (6.26 inch) HD+ Display 13MP + 2MP | 8MP Front Camera 4000 Battery Qualcomm Snapdragon 632 Octa Core Processor Pure Android 8.1 Oreo (Stock)', 'm2.jpg', '13999.00'),
(3, 'Asus Zenfone Max M2', '3 GB RAM | 32 GB ROM | Expandable Upto 2 TB 15.9 cm (6.26 inch) HD+ Display 13MP + 2MP | 8MP Front Camera 4000 Battery Qualcomm Snapdragon 632 Octa Core Processor Pure Android 8.1 Oreo (Stock)', 'm3.jpg', '9999.00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `first_name` char(30) NOT NULL,
  `last_name` char(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `delivery_address` varchar(200) NOT NULL,
  `profile_pic` varchar(50) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `date_created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `first_name`, `last_name`, `email`, `address`, `delivery_address`, `profile_pic`, `pwd`, `date_created`) VALUES
(1, 'Nenshi', 'Patel', 'hho@gmaik.com', '', '', '', 'Nenshi!11', '2018-12-31'),
(2, 'Chandni', 'Soni', 'cs@gmail.com', 'agdvjaw\r\nef\r\nasf\r\n12\r\nds\r\nfc', 'we,d', 'mypic.jpg', 'Chandni!11', '0000-00-00'),
(7, 'Misha', 'Sharma', 'misha@gmail.com', 'askjx\r\n\r\nsfdc', '', 'sm.png', 'Chandni!11', '2019-01-18'),
(8, '2jhd', 'shb', 'ugv@gv.sdi', '', '', '', 'Chandni!11', '2019-01-18');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `wid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wid`, `pid`, `uid`) VALUES
(14, 2, 4),
(21, 2, 2),
(23, 1, 7),
(24, 3, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `con_order`
--
ALTER TABLE `con_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `con_order`
--
ALTER TABLE `con_order`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
