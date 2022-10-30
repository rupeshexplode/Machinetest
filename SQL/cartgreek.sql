-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2022 at 01:03 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cartgreek`
--

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `general_settings_id` int(11) NOT NULL,
  `type` longtext DEFAULT NULL,
  `value` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `word_id` int(11) NOT NULL,
  `word` longtext NOT NULL,
  `english` longtext DEFAULT NULL,
  `Bangla` longtext DEFAULT NULL,
  `Arabic` longtext DEFAULT NULL,
  `French` longtext DEFAULT NULL,
  `Chinese` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`word_id`, `word`, `english`, `Bangla`, `Arabic`, `French`, `Chinese`) VALUES
(1, 'add_product', 'Add Product', NULL, NULL, NULL, NULL),
(2, 'successfully_added!', 'Successfully Added!', NULL, NULL, NULL, NULL),
(3, 'create_product', 'Create Product', NULL, NULL, NULL, NULL),
(4, 'back_to_product_list', 'Back To Product List', NULL, NULL, NULL, NULL),
(5, 'deleted_successfully', 'Deleted Successfully', NULL, NULL, NULL, NULL),
(6, 'cancelled', 'Cancelled', NULL, NULL, NULL, NULL),
(7, 'cancel', 'Cancel', NULL, NULL, NULL, NULL),
(8, 'required', 'Required', NULL, NULL, NULL, NULL),
(9, 'must_be_a_number', 'Must Be A Number', NULL, NULL, NULL, NULL),
(10, 'must_be_a_valid_email_address', 'Must Be A Valid Email Address', NULL, NULL, NULL, NULL),
(11, 'save', 'Save', NULL, NULL, NULL, NULL),
(12, 'product_published!', 'Product Published!', NULL, NULL, NULL, NULL),
(13, 'product_unpublished!', 'Product Unpublished!', NULL, NULL, NULL, NULL),
(14, 'product_featured!', 'Product Featured!', NULL, NULL, NULL, NULL),
(15, 'product_unfeatured!', 'Product Unfeatured!', NULL, NULL, NULL, NULL),
(16, 'product_in_todays_deal!', 'Product In Todays Deal!', NULL, NULL, NULL, NULL),
(17, 'product_removed_from_todays_deal!', 'Product Removed From Todays Deal!', NULL, NULL, NULL, NULL),
(18, 'slider_published!', 'Slider Published!', NULL, NULL, NULL, NULL),
(19, 'slider_unpublished!', 'Slider Unpublished!', NULL, NULL, NULL, NULL),
(20, 'page_published!', 'Page Published!', NULL, NULL, NULL, NULL),
(21, 'page_unpublished!', 'Page Unpublished!', NULL, NULL, NULL, NULL),
(22, 'notification_sound_enabled!', 'Notification Sound Enabled!', NULL, NULL, NULL, NULL),
(23, 'notification_sound_disabled!', 'Notification Sound Disabled!', NULL, NULL, NULL, NULL),
(24, 'google_login_enabled!', 'Google Login Enabled!', NULL, NULL, NULL, NULL),
(25, 'google_login_disabled!', 'Google Login Disabled!', NULL, NULL, NULL, NULL),
(26, 'facebook_login_enabled!', 'Facebook Login Enabled!', NULL, NULL, NULL, NULL),
(27, 'facebook_login_disabled!', 'Facebook Login Disabled!', NULL, NULL, NULL, NULL),
(28, 'paypal_payment_disabled!', 'Paypal Payment Disabled!', NULL, NULL, NULL, NULL),
(29, 'paypal_payment_enabled!', 'Paypal Payment Enabled!', NULL, NULL, NULL, NULL),
(30, 'twocheckout_payment_enabled!', 'Twocheckout Payment Enabled!', NULL, NULL, NULL, NULL),
(31, 'twocheckout_payment_disabled!', 'Twocheckout Payment Disabled!', NULL, NULL, NULL, NULL),
(32, 'voguePay_payment_enabled!', 'VoguePay Payment Enabled!', NULL, NULL, NULL, NULL),
(33, 'voguePay_payment_disabled!', 'VoguePay Payment Disabled!', NULL, NULL, NULL, NULL),
(34, 'slider_enabled!', 'Slider Enabled!', NULL, NULL, NULL, NULL),
(35, 'slider_disabled!', 'Slider Disabled!', NULL, NULL, NULL, NULL),
(36, 'successfully_enabled!', 'Successfully Enabled!', NULL, NULL, NULL, NULL),
(37, 'successfully_disabled!', 'Successfully Disabled!', NULL, NULL, NULL, NULL),
(38, 'cash_payment_enabled!', 'Cash Payment Enabled!', NULL, NULL, NULL, NULL),
(39, 'cash_payment_disabled!', 'Cash Payment Disabled!', NULL, NULL, NULL, NULL),
(40, 'enabled!', 'Enabled!', NULL, NULL, NULL, NULL),
(41, 'disabled!', 'Disabled!', NULL, NULL, NULL, NULL),
(42, 'google_analytics_enabled!', 'Google Analytics Enabled!', NULL, NULL, NULL, NULL),
(43, 'google_analytics_disabled!', 'Google Analytics Disabled!', NULL, NULL, NULL, NULL),
(44, 'notification_email_sent_to_vendor!', 'Notification Email Sent To Vendor!', NULL, NULL, NULL, NULL),
(45, 'working...', 'Working...', NULL, NULL, NULL, NULL),
(46, 'image', 'Image', NULL, NULL, NULL, NULL),
(47, 'product_name', 'Product Name', NULL, NULL, NULL, NULL),
(48, 'product_description', 'Product Description', NULL, NULL, NULL, NULL),
(49, 'product_price', 'Product Price', NULL, NULL, NULL, NULL),
(50, 'options', 'Options', NULL, NULL, NULL, NULL),
(51, 'edit_product', 'Edit Product', NULL, NULL, NULL, NULL),
(52, 'successfully_edited!', 'Successfully Edited!', NULL, NULL, NULL, NULL),
(53, 'edit', 'Edit', NULL, NULL, NULL, NULL),
(54, 'really_want_to_delete_this?', 'Really Want To Delete This?', NULL, NULL, NULL, NULL),
(55, 'delete', 'Delete', NULL, NULL, NULL, NULL),
(56, 'images', 'Images', NULL, NULL, NULL, NULL),
(57, 'choose_file', 'Choose File', NULL, NULL, NULL, NULL),
(58, 'reset', 'Reset', NULL, NULL, NULL, NULL),
(59, 'field_name', 'Field Name', NULL, NULL, NULL, NULL),
(60, 'customer_input_title', 'Customer Input Title', NULL, NULL, NULL, NULL),
(61, 'add_options_for_choice', 'Add Options For Choice', NULL, NULL, NULL, NULL),
(62, 'option_name', 'Option Name', NULL, NULL, NULL, NULL),
(63, 'product_details', 'Product Details', NULL, NULL, NULL, NULL),
(64, 'product_title', 'Product Title', NULL, NULL, NULL, NULL),
(65, 'product_has_been_uploaded!', 'Product Has Been Uploaded!', NULL, NULL, NULL, NULL),
(66, 'upload', 'Upload', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` longtext DEFAULT NULL,
  `product_description` longtext DEFAULT NULL,
  `product_price` varchar(100) DEFAULT NULL,
  `num_of_imgs` varchar(100) DEFAULT NULL,
  `options` longtext DEFAULT NULL,
  `main_image` varchar(100) DEFAULT '0',
  `front_image` varchar(200) NOT NULL,
  `products` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`word_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `word_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
