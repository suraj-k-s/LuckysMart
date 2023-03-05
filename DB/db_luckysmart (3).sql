-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2022 at 10:32 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_luckysmart`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(1, 'Amala Manoj', 'amalamanoj@gmail.com', 'amalaa'),
(2, 'Adwaitha Saju', 'adwaithasaju@gmail.com', 'adwaitha');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_booking`
--

CREATE TABLE `tbl_booking` (
  `booking_id` int(11) NOT NULL,
  `booking_date` varchar(100) NOT NULL DEFAULT '0',
  `booking_status` varchar(100) NOT NULL DEFAULT '0',
  `booking_amount` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_booking`
--

INSERT INTO `tbl_booking` (`booking_id`, `booking_date`, `booking_status`, `booking_amount`, `user_id`) VALUES
(24, '2022-11-05', '1', 0, 5),
(25, '2022-11-06', '1', 270, 1),
(26, '2022-11-11', '1', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cart_id` int(11) NOT NULL,
  `cart_quantity` varchar(100) NOT NULL DEFAULT '1',
  `product_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `cart_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`cart_id`, `cart_quantity`, `product_id`, `booking_id`, `cart_status`) VALUES
(41, '7', 5, 24, 4),
(42, '1', 8, 25, 4),
(43, '2', 9, 25, 4),
(44, '1', 1, 25, 4),
(45, '1', 7, 25, 4),
(46, '1', 5, 26, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`) VALUES
(2, 'Spices'),
(3, 'Pickle'),
(4, 'Snacks'),
(5, 'Flour items'),
(6, 'Cosmetic');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_complaint`
--

CREATE TABLE `tbl_complaint` (
  `complaint_id` int(11) NOT NULL,
  `complainttype_id` int(11) NOT NULL,
  `complaint_content` varchar(100) NOT NULL,
  `complaint_date` varchar(100) NOT NULL,
  `complaint_reply` varchar(100) NOT NULL DEFAULT 'Not Yet Replyed',
  `user_id` int(11) NOT NULL,
  `complaint_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_complainttype`
--

CREATE TABLE `tbl_complainttype` (
  `complainttype_id` int(11) NOT NULL,
  `complainttype_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_district`
--

CREATE TABLE `tbl_district` (
  `district_id` int(11) NOT NULL,
  `district_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_district`
--

INSERT INTO `tbl_district` (`district_id`, `district_name`) VALUES
(1, 'Eranakulam'),
(2, 'Thrissur'),
(3, 'Kottayam'),
(4, 'Idukki'),
(5, 'Alappuzha'),
(6, 'Kollam');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedback`
--

CREATE TABLE `tbl_feedback` (
  `feedback_id` int(11) NOT NULL,
  `feedback_content` varchar(100) NOT NULL,
  `feedback_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kudumbashree`
--

CREATE TABLE `tbl_kudumbashree` (
  `kudumbashree_id` int(11) NOT NULL,
  `kudumbashree_name` varchar(100) NOT NULL,
  `kudumbashree_contact` varchar(100) NOT NULL,
  `kudumbashree_address` varchar(100) NOT NULL,
  `kudumbashree_email` varchar(100) NOT NULL,
  `panchayath_id` int(11) NOT NULL,
  `kudumbashree_photo` varchar(100) NOT NULL,
  `kudumbashree_proof` varchar(100) NOT NULL,
  `kudumbashree_status` varchar(100) NOT NULL DEFAULT '0',
  `kudumbashree_password` varchar(100) NOT NULL,
  `kudumbashree_doj` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_kudumbashree`
--

INSERT INTO `tbl_kudumbashree` (`kudumbashree_id`, `kudumbashree_name`, `kudumbashree_contact`, `kudumbashree_address`, `kudumbashree_email`, `panchayath_id`, `kudumbashree_photo`, `kudumbashree_proof`, `kudumbashree_status`, `kudumbashree_password`, `kudumbashree_doj`) VALUES
(1, 'Winners', '98765434567', 'vengola p.o\r\nArackapady', 'winners@gmail.com', 1, 'Screenshot (2).png', 'Screenshot (2).png', '2', 'winners', 20221016),
(2, 'Ojus', '9876465434', 'Vengola p.o ,Allapra', 'Ojus@gmail.com', 1, 'Screenshot (2).png', 'Screenshot (2).png', '1', 'ojusss', 20221016),
(3, 'ayalkoottam', '9876543456', 'Ayalkoottam p.o\r\nChalakudi', 'ayalkoottam@gmail.com', 2, 'Screenshot (2).png', 'Screenshot (2).png', '1', 'ayalkoottam', 20221016),
(6, 'Vigas', '9876534564', 'Madappally(H)\r\nKurakachal\r\nKottayam', 'vigas@gmail.com', 7, 'Screenshot (2).png', 'Screenshot (2).png', '0', 'vigas', 20221106);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_panchayath`
--

CREATE TABLE `tbl_panchayath` (
  `panchayath_id` int(11) NOT NULL,
  `panchayath_name` varchar(100) NOT NULL,
  `district_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_panchayath`
--

INSERT INTO `tbl_panchayath` (`panchayath_id`, `panchayath_name`, `district_id`) VALUES
(1, 'Vengola', 1),
(3, 'Aloor', 2),
(4, 'Kodakara', 2),
(5, 'Madappally', 3),
(6, 'Aroor', 5),
(7, 'Adimaly', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_place`
--

CREATE TABLE `tbl_place` (
  `place_id` int(11) NOT NULL,
  `place_name` varchar(100) NOT NULL,
  `panchayath_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_place`
--

INSERT INTO `tbl_place` (`place_id`, `place_name`, `panchayath_id`) VALUES
(1, 'Arackapady', 1),
(2, 'Chalakudi', 2),
(3, 'Allapra', 1),
(4, 'Kodakara', 4),
(5, 'Kodassery', 4),
(6, 'Kurakachal', 5),
(7, 'Aroor', 6),
(8, 'Mannamkandam', 7);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_photo` varchar(100) NOT NULL,
  `product_details` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `kudumbashree_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `product_photo`, `product_details`, `product_price`, `kudumbashree_id`, `subcategory_id`) VALUES
(4, 'Winners  Pickle', 'IMG-20220819-WA0009.jpg', 'No Peservatives\r\nNatural Product', 80, 1, 7),
(5, 'Winners Flour Powder', 'IMG-20220722-WA0020.jpg', 'No Perseratives\r\nNatural Product', 120, 1, 6),
(6, 'Winners Pickle', 'IMG-20220722-WA0022.jpg', 'No Peservatives\r\nNatural Product', 80, 1, 3),
(8, 'Alyalkoottam Mango Pickle', 'IMG-20220819-WA0013.jpg', 'Natural Product\r\nNo Perservatives ', 50, 3, 3),
(9, 'Ayalkoottam  Fish  Pickel', 'IMG-20220819-WA0009.jpg', 'Natural Product\r\nNo Perservatives', 60, 3, 7),
(10, 'Ojus Chilly Powder', 'IMG-20220722-WA0015.jpg', 'Natural Product\r\nNo Perservatives', 50, 2, 1),
(11, 'Ojus Turmeric Powder', 'IMG-20220722-WA0016.jpg', 'Natural Product\r\nNo Perservatives', 60, 2, 2),
(12, 'Vigas Hair Oil', 'IMG_20220723_113113.jpg', 'Natural Product\r\nNo perservatives ', 120, 6, 11),
(13, 'Vigas Soap', 'IMG_20220724_092103.jpg', 'Natural Product\r\nNo perservatives', 60, 6, 10),
(14, 'Ayalkoottam Chilly Powder', 'IMG-20221104-WA0012.jpg', 'Nature Product\r\nNo  Perservatives', 60, 3, 1),
(15, 'Ayalkoottam Turmeric Powder', 'IMG-20221104-WA0011.jpg', 'No perservatives\r\nNatural Product', 60, 3, 2),
(17, 'Ayalkoottam Pepper Powder', 'IMG-20221104-WA0010.jpg', 'No perservatives\r\nNatural Product', 60, 3, 8),
(18, 'Ayalkoottam Banana Chips', 'IMG-20221104-WA0005.jpg', 'No perservatives\r\nNatural Product', 120, 3, 13),
(19, 'Ayalkoottam Jackfruit Chips', 'IMG-20221104-WA0001.jpg', 'No perservatives\r\nNatural Product', 130, 3, 12);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_review`
--

CREATE TABLE `tbl_review` (
  `review_id` int(11) NOT NULL,
  `review_datetime` varchar(100) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_review` varchar(100) NOT NULL,
  `user_rating` varchar(100) NOT NULL,
  `user_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_review`
--

INSERT INTO `tbl_review` (`review_id`, `review_datetime`, `product_id`, `user_review`, `user_rating`, `user_name`) VALUES
(1, '2022-10-24 11:07:56', 5, 'nice', '4', 'anusree'),
(2, '2022-11-06 19:18:13', 8, 'good product', '3', 'Anusree'),
(3, '2022-11-06 19:20:24', 9, 'Nice', '4', 'Anusree');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stock`
--

CREATE TABLE `tbl_stock` (
  `stock_id` int(11) NOT NULL,
  `stock_quantity` varchar(100) NOT NULL,
  `stock_date` varchar(100) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_stock`
--

INSERT INTO `tbl_stock` (`stock_id`, `stock_quantity`, `stock_date`, `product_id`) VALUES
(1, '6', '2022-10-06', 1),
(2, '4', '2022-10-06', 2),
(3, '6', '2022-10-06', 5),
(4, '60', '2022-09-30', 6),
(5, '7', '2022-10-06', 5),
(10, '50', '2022-10-28', 4),
(11, '30', '2022-10-24', 4),
(13, '5', '2022-10-28', 4),
(14, '5', '2022-10-30', 1),
(15, '6', '2022-10-30', 7),
(16, '7', '2022-10-30', 9),
(17, '12', '2022-10-30', 8),
(18, '6', '2022-10-30', 10),
(19, '8', '2022-10-30', 11),
(20, '6', '2022-10-30', 7),
(21, '7', '2022-11-06', 12),
(22, '12', '2022-11-06', 13),
(23, '5', '2022-11-06', 14),
(24, '12', '2022-11-06', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subcategory`
--

CREATE TABLE `tbl_subcategory` (
  `subcategory_id` int(11) NOT NULL,
  `subcategory_name` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_subcategory`
--

INSERT INTO `tbl_subcategory` (`subcategory_id`, `subcategory_name`, `category_id`) VALUES
(1, 'Chilly Powder', 2),
(2, 'Turmeric Powder', 2),
(3, 'Mango Pickle', 3),
(4, 'Lemon Pickle', 3),
(6, 'Wheat Flour', 5),
(7, 'Fish Pickle', 3),
(8, 'Pepper Powder', 2),
(9, 'Rice Flour', 5),
(10, 'Soap', 6),
(11, 'Hair Oil', 6),
(12, 'Jackfruit Chips', 4),
(13, 'Banana Chips', 4),
(15, 'Potato Chips', 4),
(16, 'Garam Masala', 2),
(17, 'Cardamom Powder', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_contact` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_address` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_photo` varchar(100) NOT NULL,
  `user_proof` varchar(100) NOT NULL,
  `panchayath_id` int(11) NOT NULL,
  `user_gender` varchar(100) NOT NULL,
  `user_dob` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_name`, `user_contact`, `user_email`, `user_address`, `user_password`, `user_photo`, `user_proof`, `panchayath_id`, `user_gender`, `user_dob`) VALUES
(1, 'Anusree M.S', '9876543456', 'anusree@gmail.com', 'vadakkanveetil(H)\r\nvengola p.o\r\nArackapady', 'anusree', 'Screenshot (8).png', 'Screenshot (8).png', 1, 'female', 2004),
(2, 'Alias Jose', '9456798765', 'aliasjose@gmail.com', 'Ollapally(H)\r\nVengola P.O\r\nArackapady', 'alias', 'BOY.png', 'BOY.png', 1, 'male', 2004),
(5, 'Athul Krishnan', '9876345642', 'athul@gmail.com', 'Puttenveedu (H)\r\nAroor P.O\r\nAroor', 'athul', 'BOY.png', 'BOY.png', 6, 'female', 2000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_complaint`
--
ALTER TABLE `tbl_complaint`
  ADD PRIMARY KEY (`complaint_id`);

--
-- Indexes for table `tbl_complainttype`
--
ALTER TABLE `tbl_complainttype`
  ADD PRIMARY KEY (`complainttype_id`);

--
-- Indexes for table `tbl_district`
--
ALTER TABLE `tbl_district`
  ADD PRIMARY KEY (`district_id`);

--
-- Indexes for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `tbl_kudumbashree`
--
ALTER TABLE `tbl_kudumbashree`
  ADD PRIMARY KEY (`kudumbashree_id`);

--
-- Indexes for table `tbl_panchayath`
--
ALTER TABLE `tbl_panchayath`
  ADD PRIMARY KEY (`panchayath_id`);

--
-- Indexes for table `tbl_place`
--
ALTER TABLE `tbl_place`
  ADD PRIMARY KEY (`place_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_review`
--
ALTER TABLE `tbl_review`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `tbl_stock`
--
ALTER TABLE `tbl_stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `tbl_subcategory`
--
ALTER TABLE `tbl_subcategory`
  ADD PRIMARY KEY (`subcategory_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_complaint`
--
ALTER TABLE `tbl_complaint`
  MODIFY `complaint_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_complainttype`
--
ALTER TABLE `tbl_complainttype`
  MODIFY `complainttype_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_district`
--
ALTER TABLE `tbl_district`
  MODIFY `district_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_kudumbashree`
--
ALTER TABLE `tbl_kudumbashree`
  MODIFY `kudumbashree_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_panchayath`
--
ALTER TABLE `tbl_panchayath`
  MODIFY `panchayath_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_place`
--
ALTER TABLE `tbl_place`
  MODIFY `place_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_review`
--
ALTER TABLE `tbl_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_stock`
--
ALTER TABLE `tbl_stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_subcategory`
--
ALTER TABLE `tbl_subcategory`
  MODIFY `subcategory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
