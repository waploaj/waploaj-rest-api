-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 11, 2019 at 12:14 AM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kata`
--

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT 0,
  `is_private_key` tinyint(1) NOT NULL DEFAULT 0,
  `ip_addresses` text DEFAULT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text DEFAULT NULL,
  `api_key` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) NOT NULL,
  `response_code` smallint(3) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_app_config`
--

CREATE TABLE `ospos_app_config` (
  `key` varchar(50) NOT NULL,
  `value` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_app_config`
--

INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
('address', '123 Nowhere street'),
('allow_duplicate_barcodes', '0'),
('barcode_content', 'id'),
('barcode_first_row', 'category'),
('barcode_font', 'Arial'),
('barcode_font_size', '10'),
('barcode_formats', '[]'),
('barcode_generate_if_empty', '0'),
('barcode_height', '50'),
('barcode_num_in_row', '2'),
('barcode_page_cellspacing', '20'),
('barcode_page_width', '100'),
('barcode_second_row', 'item_code'),
('barcode_third_row', 'unit_price'),
('barcode_type', 'Code39'),
('barcode_width', '250'),
('cash_decimals', '2'),
('cash_rounding_code', '1'),
('company', 'Open Source Point of Sale'),
('company_logo', ''),
('country_codes', 'us'),
('currency_decimals', '2'),
('currency_symbol', 'TZS'),
('customer_reward_enable', '1'),
('customer_sales_tax_support', '0'),
('dateformat', 'm/d/Y'),
('date_or_time_format', ''),
('default_origin_tax_code', ''),
('default_register_mode', 'sale'),
('default_sales_discount', '0'),
('default_tax_1_name', ''),
('default_tax_1_rate', ''),
('default_tax_2_name', ''),
('default_tax_2_rate', ''),
('default_tax_category', 'Standard'),
('default_tax_rate', '8'),
('derive_sale_quantity', '0'),
('dinner_table_enable', '0'),
('email', 'changeme@example.com'),
('email_receipt_check_behaviour', 'last'),
('enforce_privacy', '0'),
('fax', ''),
('financial_year', '1'),
('gcaptcha_enable', '0'),
('gcaptcha_secret_key', ''),
('gcaptcha_site_key', ''),
('giftcard_number', 'series'),
('invoice_default_comments', 'This is a default comment'),
('invoice_email_message', 'Dear {CU}, In attachment the receipt for sale {ISEQ}'),
('invoice_enable', '1'),
('language', 'english'),
('language_code', 'en-US'),
('last_used_invoice_number', '0'),
('last_used_quote_number', '0'),
('last_used_work_order_number', '2'),
('lines_per_page', '25'),
('line_sequence', '0'),
('mailpath', '/usr/sbin/sendmail'),
('msg_msg', ''),
('msg_pwd', ''),
('msg_src', ''),
('msg_uid', ''),
('notify_horizontal_position', 'center'),
('notify_vertical_position', 'bottom'),
('number_locale', 'en_US'),
('payment_options_order', 'cashdebitcredit'),
('phone', '555-555-5555'),
('print_bottom_margin', '0'),
('print_delay_autoreturn', '0'),
('print_footer', '0'),
('print_header', '0'),
('print_left_margin', '0'),
('print_receipt_check_behaviour', 'last'),
('print_right_margin', '0'),
('print_silently', '1'),
('print_top_margin', '0'),
('protocol', 'mail'),
('quantity_decimals', '0'),
('quote_default_comments', 'This is a default quote comment'),
('receipt_font_size', '12'),
('receipt_show_company_name', '1'),
('receipt_show_description', '1'),
('receipt_show_serialnumber', '1'),
('receipt_show_taxes', '0'),
('receipt_show_total_discount', '1'),
('receipt_template', 'receipt_default'),
('receiving_calculate_average_price', '0'),
('recv_invoice_format', '{CO}'),
('return_policy', 'Test'),
('sales_invoice_format', '{CO}'),
('sales_quote_format', 'Q%y{QSEQ:6}'),
('smtp_crypto', 'ssl'),
('smtp_host', ''),
('smtp_pass', ''),
('smtp_port', '465'),
('smtp_timeout', '5'),
('smtp_user', ''),
('suggestions_first_column', 'name'),
('suggestions_second_column', ''),
('suggestions_third_column', ''),
('tax_decimals', '2'),
('tax_included', '0'),
('theme', 'flatly'),
('thousands_separator', 'thousands_separator'),
('timeformat', 'H:i:s'),
('timezone', 'America/New_York'),
('website', ''),
('work_order_enable', '1'),
('work_order_format', 'W%y{WSEQ:6}');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_attendence`
--

CREATE TABLE `ospos_attendence` (
  `att_id` int(10) NOT NULL,
  `employee_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `checkin_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `checkout_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_call_card`
--

CREATE TABLE `ospos_call_card` (
  `card_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `visit_id` int(11) NOT NULL,
  `employee_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_call_card`
--

INSERT INTO `ospos_call_card` (`card_id`, `location_id`, `visit_id`, `employee_id`) VALUES
(1, 8, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_channel`
--

CREATE TABLE `ospos_channel` (
  `channel_id` int(11) NOT NULL,
  `channel_name` varchar(255) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_channel`
--

INSERT INTO `ospos_channel` (`channel_id`, `channel_name`, `deleted`) VALUES
(1, 'Retail', 0),
(2, 'Wholesale', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_comp_holding_stocks`
--

CREATE TABLE `ospos_comp_holding_stocks` (
  `hold_id` int(10) NOT NULL,
  `comp_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `quantity` decimal(15,3) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_comp_holding_stocks`
--

INSERT INTO `ospos_comp_holding_stocks` (`hold_id`, `comp_id`, `customer_id`, `quantity`, `date`) VALUES
(1, 1, 25, '1000.000', '2019-08-05 10:57:11'),
(2, 1, 25, '1000.000', '2019-08-05 10:57:48'),
(3, 2, 25, '1000.000', '2019-08-05 10:58:42'),
(4, 1, 25, '1000.000', '2019-08-05 10:59:12'),
(5, 1, 25, '1000.000', '2019-08-05 11:04:48');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_comp_items`
--

CREATE TABLE `ospos_comp_items` (
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `description` varchar(255) NOT NULL,
  `cost_price` decimal(15,2) NOT NULL,
  `unit_price` decimal(15,2) NOT NULL,
  `comp_id` int(11) NOT NULL,
  `pic_filename` varchar(255) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_comp_items`
--

INSERT INTO `ospos_comp_items` (`name`, `category`, `customer_id`, `description`, `cost_price`, `unit_price`, `comp_id`, `pic_filename`, `deleted`) VALUES
('uhai', 'water', 3, 'liltre 1.5', '700.00', '1000.00', 1, NULL, 0),
('Mo passion', 'soft drink', 5, '', '1500.00', '1200.00', 2, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_comp_sales_items`
--

CREATE TABLE `ospos_comp_sales_items` (
  `sale_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sale_id` int(10) NOT NULL,
  `comp_id` int(10) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `quantity_purchased` decimal(15,3) NOT NULL DEFAULT 0.000,
  `item_cost_price` decimal(15,2) NOT NULL,
  `item_unit_price` decimal(15,2) NOT NULL,
  `customer_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_customers`
--

CREATE TABLE `ospos_customers` (
  `person_id` int(10) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `taxable` int(1) NOT NULL DEFAULT 1,
  `sales_tax_code` varchar(32) NOT NULL DEFAULT '1',
  `discount_percent` decimal(15,2) NOT NULL DEFAULT 0.00,
  `package_id` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `retail_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `visit_id` int(10) DEFAULT NULL,
  `store_bussiness_name` varchar(255) DEFAULT NULL,
  `card_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_customers`
--

INSERT INTO `ospos_customers` (`person_id`, `company_name`, `account_number`, `taxable`, `sales_tax_code`, `discount_percent`, `package_id`, `points`, `deleted`, `date`, `retail_id`, `channel_id`, `latitude`, `longitude`, `location_id`, `visit_id`, `store_bussiness_name`, `card_id`) VALUES
(3, NULL, NULL, 1, '', '0.00', NULL, NULL, 1, '2019-02-09 23:13:21', 2, 1, NULL, NULL, 14, 1, 'masa shop', NULL),
(4, NULL, NULL, 1, '', '0.00', NULL, NULL, 0, '2019-02-09 23:13:36', 2, 1, NULL, NULL, 14, 1, 'masa shop', NULL),
(5, NULL, NULL, 0, '', '0.00', 2, NULL, 0, '2019-02-12 10:56:24', 2, 1, '-6.8380132', '39.2019838', 35, 2, NULL, NULL),
(6, '', NULL, 0, '1', '0.00', 3, 2000, 0, '2019-02-12 10:56:24', 1, 1, '-6.8425676', '39.2078318', 35, 2, 'Toroka Uje ', NULL),
(7, '', NULL, 0, '1', '0.00', 0, NULL, 0, '2019-02-12 10:56:24', 1, 1, '-6.8441518', '39.2003067', 35, 2, 'Kwetu Pazuri ', NULL),
(8, '', NULL, 0, '1', '0.00', 1, 0, 0, '2019-02-12 10:56:24', 4, 1, '-6.8387522', '39.2110804', 35, 2, '1akuda 1', NULL),
(9, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:24', 4, 1, '-6.844948', '39.1969616', 35, 2, 'next door ', 1),
(10, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:24', 2, 1, '-6.8276345', '39.2146537', 35, 3, 'Mangi Shop', NULL),
(11, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:24', 2, 1, '-6.8305779', '39.212055', 35, 3, 'Tesha Shop', NULL),
(12, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:24', 4, 1, '-6.8256443', '39.2149529', 35, 3, 'Highbury 6 ', NULL),
(13, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:24', 2, 1, '-6.8287101', '39.2113846', 35, 3, 'Joseph Shop', NULL),
(14, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:24', 2, 1, '-6.8236959', '39.2192013', 35, 3, 'Happy Shop', NULL),
(15, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:24', 2, 1, '-6.8272092', '39.2114853', 35, 3, 'Green Park ', NULL),
(16, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:24', 2, 1, '-6.8225968', '39.2132546', 35, 3, 'Prosper Shop', NULL),
(17, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:24', 2, 1, '-6.8276345', '39.2146537', 35, 3, 'Atipunguzo Shop', NULL),
(18, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:24', 2, 1, '-6.8264947', '39.2153034', 35, 3, 'Kwa mpemba Shop', NULL),
(19, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:24', 2, 1, '-6.8259602', '39.2160153', 35, 3, 'Mroso 2Shop', NULL),
(20, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:24', 2, 1, '-6.8259704', '39.2110158', 35, 3, 'Mama Suzzy Shop', NULL),
(21, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:24', 2, 1, '-6.8272764', '39.2114585', 35, 3, 'Eliah Shop', NULL),
(22, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:24', 2, 1, '-6.8256796', '39.2157282', 35, 3, 'Julias Shop', NULL),
(23, NULL, NULL, 0, '', '0.00', NULL, NULL, 0, '2019-02-12 10:56:24', 2, 1, '-6.8264947', '39.2153034', 35, 3, NULL, NULL),
(24, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:24', 2, 1, '-6.819883', '39.2224494', 35, 3, 'Shirima Shop', NULL),
(25, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:24', 2, 1, '-6.8255932', '39.2107673', 35, 3, 'Zafanana Shop', NULL),
(26, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:24', 2, 1, '-6.8305779', '39.212055', 35, 3, 'Kimario shop', NULL),
(27, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:24', 2, 1, '-6.8248287', '39.2130295', 35, 3, 'Masoko Shop', NULL),
(28, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:25', 2, 1, '-6.8248287', '39.2130295', 35, 3, 'Cathreen Shop', NULL),
(29, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:25', 2, 1, '-6.8272417', '39.2114472', 35, 3, 'Kulaya Shop', NULL),
(30, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:25', 2, 1, '-6.8259602', '39.2160153', 35, 3, 'Mama Eva', NULL),
(31, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:25', 2, 1, '-6.8225968', '39.2132546', 35, 3, 'Godson Shop', NULL),
(32, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:25', 2, 1, '-6.8236646', '39.2195261', 35, 3, 'Kiwango Shop', NULL),
(33, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:25', 2, 1, '-6.8259602', '39.2160153', 35, 3, 'Mroso Shop', NULL),
(34, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:25', 2, 1, '-6.8276345', '39.2146537', 35, 3, 'Kimario 2 Shop', NULL),
(35, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:25', 4, 1, '-6.829489', '39.2132905', 35, 3, 'Kings Contener 6', NULL),
(36, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:25', 2, 1, '-6.8264947', '39.2153034', 35, 3, 'Fuso Shop', NULL),
(37, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:25', 2, 1, '-6.8305779', '39.212055', 35, 3, 'J.J Shop', NULL),
(38, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:25', 2, 1, '-6.8264947', '39.2153034', 35, 3, 'Zuberi Shop', NULL),
(39, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:25', 2, 1, '-6.8305779', '39.212055', 35, 3, 'Isack Shop', NULL),
(40, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:25', 2, 1, '-6.8256443', '39.2149529', 35, 3, 'Libe Shop', NULL),
(41, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:25', 2, 1, '-6.82962', '39.2192013', 35, 3, 'Mwembeni Shop', NULL),
(42, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:25', 2, 1, '-6.8282516', '39.2111316', 35, 3, 'masawe shop', NULL),
(43, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:25', 2, 1, '-6.8303399', '39.2117301', 35, 3, 'Aman Shop', NULL),
(44, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:25', 3, 1, '-', '-', 35, 3, 'Jenny shop', NULL),
(45, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:25', 3, 1, '-6.8258286', '39.2158111', 35, 3, 'Mangi 2 shop', NULL),
(46, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:25', 3, 1, '-6.8267327', '39.2156282', 35, 3, 'Bonge Shop', NULL),
(47, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:25', 3, 1, '-6.8276136', '39.2165751', 35, 3, 'KB Paradise', NULL),
(48, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:25', 2, 1, '-6.8199547', '39.212575', 35, 4, 'Eliah shop 2', NULL),
(49, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:25', 2, 1, '-6.8223426', '39.2136792', 35, 4, 'Kevi Shop', NULL),
(50, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:25', 2, 1, '-6.8270822', '39.2036083', 35, 4, 'Tarimo Shop', NULL),
(51, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:25', 2, 1, '-6.8222947', '39.2111514', 35, 4, 'Mnyalu Shop', NULL),
(52, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:25', 2, 1, '-6.8270822', '39.2036083', 35, 4, 'Pinda Shop', NULL),
(53, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:25', 2, 1, '-6.8223426', '39.2136792', 35, 4, 'Baba Hebeti', NULL),
(54, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:25', 2, 1, '-6.8223426', '39.2136792', 35, 4, 'Paroko Shop', NULL),
(55, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:25', 2, 1, '-6.8270822', '39.2036083', 35, 4, 'Mangi Mnene Shop', NULL),
(56, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:25', 2, 1, '-6.8228396', '39.2088071', 35, 4, 'Samala Shop', NULL),
(57, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:25', 2, 1, '-6.8223426', '39.2136792', 35, 4, 'Mjomba Shop', NULL),
(58, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:25', 2, 1, '-6.8187339', '39.2133', 35, 4, 'Martin Shop', NULL),
(59, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:25', 2, 1, '-6.8270822', '39.2036083', 35, 4, 'Kimario Shop', NULL),
(60, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:25', 2, 1, '-6.8223426', '39.2136792', 35, 4, 'Muha Shop', NULL),
(61, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:26', 2, 1, '-6.8238488', '39.2102563', 35, 4, 'Mroso Shop', NULL),
(62, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:26', 2, 1, '-6.8270822', '39.2036083', 35, 4, 'Mterini Shop', NULL),
(63, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:26', 2, 1, '-6.8223426', '39.2136792', 35, 4, 'Tarimo Shop', NULL),
(64, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:26', 2, 1, '-6.8270822', '39.2036083', 35, 4, 'Silayo Shop', NULL),
(65, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:26', 2, 1, '-6.8270822', '39.2036083', 35, 4, 'Patric Shop', NULL),
(66, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:26', 2, 1, '-6.8270822', '39.2036083', 35, 4, 'Kimaro Shop', NULL),
(67, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:26', 2, 1, '-6.8223426', '39.2136792', 35, 4, 'Mrangi Shop', NULL),
(68, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:26', 2, 1, '-6.8270822', '39.2036083', 35, 4, 'Mama Inno Shop', NULL),
(69, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:26', 3, 1, '-', '-', 35, 4, 'Masawe Shop', NULL),
(70, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:26', 2, 1, '-6.8256443', '39.2149529', 35, 4, 'Shirima Shop', NULL),
(71, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:26', 2, 1, '-6.8276345', '39.2146537', 35, 4, 'Mbwera Shop', NULL),
(72, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:26', 2, 1, '-6.8223426', '39.2136792', 35, 4, 'Mama Sudey Shop', NULL),
(73, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:26', 2, 1, '-6.8223426', '39.2136792', 35, 4, 'Mangi Shop', NULL),
(74, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:26', 2, 1, '-6.8187339', '39.2133', 35, 4, 'Anna Shop', NULL),
(75, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:26', 2, 1, '-6.8234456', '39.2047303', 35, 4, 'Baba Khamis', NULL),
(76, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:26', 2, 1, '-6.8270822', '39.2036083', 35, 4, 'Mama Jenny Shop', NULL),
(77, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:26', 2, 1, '-6.826832', '39.2062074', 35, 4, 'Kicheko Shop', NULL),
(78, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:26', 2, 1, '-6.8306292', '39.2001257', 35, 4, 'Gody Shop', NULL),
(79, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:26', 2, 1, '-6.826832', '39.2062074', 35, 4, 'Robby Shop', NULL),
(80, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:26', 2, 1, '-6.8305015', '39.1994954', 35, 4, 'Mbuyuni Shop', NULL),
(81, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:26', 2, 1, '-6.826832', '39.2062074', 35, 4, 'Bwashee Shop', NULL),
(82, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:26', 4, 1, '-6.8252474', '39.2058825', 35, 4, 'Winners Corner 6', NULL),
(83, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:26', 2, 1, '-6.826832', '39.2062074', 35, 4, 'Masawe Shop', NULL),
(84, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:26', 2, 1, '-6.8309904', '39.19871', 35, 4, 'Tesha Shop', NULL),
(85, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:26', 2, 1, '-6.8309141', '39.2023209', 35, 4, 'Joff Shop', NULL),
(86, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:26', 3, 1, '-6.8256513', '39.2050836', 35, 4, 'Auwar Shop', NULL),
(87, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:26', 3, 1, '-6.8194446', '39.2113888', 35, 4, 'Mama Fatuma Shop', NULL),
(88, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:26', 3, 1, '-6.8256562', '39.2050837', 35, 4, 'Okwi Shop', NULL),
(89, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:26', 3, 1, '-6.8189506', '39.1992146', 35, 4, 'Tarimo Shop', NULL),
(90, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:26', 4, 1, '-6.8114674', '39.2175772', 35, 4, 'usesi 1', NULL),
(91, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:26', 2, 1, '-6.8370985', '39.2058825', 35, 5, 'Pasco Shop', NULL),
(92, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:26', 2, 1, '-6.8341987', '39.2150554', 35, 5, 'P Shop', NULL),
(93, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:26', 5, 1, '-6.8370985', '39.2058825', 35, 5, 'JJ Mini Super Market', NULL),
(94, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:26', 3, 1, '-6.8341987', '39.2150554', 35, 5, 'Harrison Shop', NULL),
(95, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:26', 4, 1, '-6.8358723', '39.2163004', 35, 5, 'Double D 6', NULL),
(96, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:26', 2, 1, '-6.8341987', '39.2150554', 35, 5, 'Alice Shop', NULL),
(97, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:26', 2, 1, '-6.8362917', '39.2206744', 35, 5, 'Mattius Shop', NULL),
(98, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:26', 2, 1, '-6.8376373', '39.2058825', 35, 5, 'Tadei Shop', NULL),
(99, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:26', 2, 1, '-6.8368718', '39.2133499', 35, 5, 'Mudy Shop', NULL),
(100, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:26', 2, 1, '-6.8376373', '39.2058825', 35, 5, 'Mama Johny Shop', NULL),
(101, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:26', 2, 1, '-6.8360297', '39.2124122', 35, 5, 'Upendo Shop', NULL),
(102, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:27', 2, 1, '-6.8387002', '39.2135962', 35, 5, 'Manyota Shop', NULL),
(103, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:27', 2, 1, '-6.8362917', '39.2206744', 35, 5, 'Elisha Shop', NULL),
(104, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:27', 2, 1, '-6.8341987', '39.2150554', 35, 5, 'Wagarati Shop', NULL),
(105, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:27', 2, 1, '-6.8370985', '39.2058825', 35, 5, 'Henry', NULL),
(106, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:27', 4, 1, '-6.8351192', '39.2172738', 35, 5, 'Mi Casa 6 ', NULL),
(107, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:27', 2, 1, '-6.8337222', '39.2185517', 35, 5, 'Kimario Shop', NULL),
(108, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:27', 2, 1, '-6.7957251', '39.2643274', 35, 5, 'Swai Shop', NULL),
(109, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:27', 2, 1, '-6.8351192', '39.2172738', 35, 5, 'Silayo Shop', NULL),
(110, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:27', 2, 1, '-6.8337222', '39.2185517', 35, 5, 'John Shop', NULL),
(111, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:27', 2, 1, '-6.8551985', '39.2193447', 35, 5, 'Serengereti Boyz Shop', NULL),
(112, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:27', 2, 1, '-6.8370985', '39.2058825', 35, 5, 'Mama Fred ', NULL),
(113, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:27', 4, 1, '-6.8323739', '39.219589', 35, 5, 'Triple M 6', NULL),
(114, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:27', 2, 1, '-6.8376373', '39.2058825', 35, 5, 'Niko Shop', NULL),
(115, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:27', 2, 1, '-6.8370985', '39.2058825', 35, 5, 'Bakhresa Shop', NULL),
(116, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:27', 2, 1, '-6.8370985', '39.2058825', 35, 5, 'Mushi Shop', NULL),
(117, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:27', 2, 1, '-6.8362917', '39.2206744', 35, 5, 'Caren Shop', NULL),
(118, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:27', 2, 1, '-6.8337222', '39.2185517', 35, 5, 'Manka shop', NULL),
(119, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:27', 4, 1, '-6.8338915', '39.2182054', 35, 5, 'Msarikie 6', NULL),
(120, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:27', 2, 1, '-6.8337222', '39.2185517', 35, 5, 'Shirima 2 shop', NULL),
(121, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:27', 2, 1, '-6.8376373', '39.2058825', 35, 5, 'Nelly Shop', NULL),
(122, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:27', 2, 1, '-6.8430366', '39.2169276', 35, 5, 'Mesha Shop', NULL),
(123, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:27', 5, 1, '-6.8425362', '39.2081567', 35, 5, 'Quality & Cheap mini super', NULL),
(124, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:27', 3, 1, '-6.8325971', '39.2193226', 35, 5, 'Patrick Shop', NULL),
(125, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:27', 4, 1, '-6.8318393', '39.2199531', 35, 5, 'tripple M 6', NULL),
(126, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:27', 2, 1, '-6.8365909', '39.2176906', 35, 5, 'Abuu Shop', NULL),
(127, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:27', 8, 2, '-6.8015225', '39.2411073', 1, 1, 'Method shop', NULL),
(128, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:27', 10, 2, '-6.7981031', '39.2295305', 1, 1, 'Edwin Shop', NULL),
(129, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:27', 10, 2, '-6.7976362', '39.2288149', 1, 1, 'Mlichi Shop', NULL),
(130, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:27', 10, 2, '-6.7810396', '39.2542715', 1, 1, 'Nelson Traders', NULL),
(131, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:28', 10, 2, '-6.7985839', '39.2312183', 1, 1, 'Mps Shop', NULL),
(132, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:28', 10, 2, '-6.7977568', '39.2286202', 1, 1, 'Emmanuel Kavishe Shop', NULL),
(133, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:28', 10, 2, '-6.7975044', '39.2396613', 1, 1, 'Lazaro Shop', NULL),
(134, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:28', 10, 2, '-6.7983771', '39.2305688', 1, 1, 'Getrude Shop', NULL),
(135, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:28', 10, 2, '-6.7969777', '39.2367388', 1, 1, 'Kimaro Shop', NULL),
(136, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:28', 10, 2, '-6.7959887', '39.2688891', 1, 2, 'Judith And Janeth', NULL),
(137, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:28', 10, 2, '-6.8239009', '39.2310579', 1, 2, 'Gabriel Shop', NULL),
(138, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:28', 10, 2, '-6.8239009', '39.2310579', 1, 2, 'Shirima Shop', NULL),
(139, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:28', 10, 2, '-6.7960451', '39.207182', 1, 2, 'Kengabo Shop', NULL),
(140, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:28', 10, 2, '-6.7886228', '39.2088064', 1, 2, 'Tarimo Consumers Shop', NULL),
(141, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:28', 10, 2, '-6.8164671', '39.2383624', 1, 2, 'Massawe shop (A)', NULL),
(142, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:28', 10, 2, '-6.8052333', '39.2208253', 1, 2, 'Nazareth shop', NULL),
(143, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:28', 10, 2, '-6.7910431', '39.211664', 1, 2, 'Mama Tarimo shop', NULL),
(144, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:28', 10, 2, '-6.8166421', '39.2518228', 1, 2, 'Shamis Mpemba shop', NULL),
(145, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:28', 10, 2, '-6.7835241', '38.988163', 1, 3, 'Haji Shop', NULL),
(146, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:28', 10, 2, '-6.7863607', '39.1144573', 1, 3, 'Asenga Shop', NULL),
(147, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:28', 10, 2, '-6.7971879', '39.128592', 1, 3, 'Ushaki Power', NULL),
(148, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:28', 10, 2, '-6.7415511', '38.881147', 1, 3, 'Mbaga shop', NULL),
(149, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:28', 10, 2, '-6.7885861', '39.1698103', 1, 3, '1gi Shop', NULL),
(150, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:28', 10, 2, '-6.7912542', '39.0826322', 1, 3, 'Danny shop', NULL),
(151, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:28', 9, 2, '-6.739644', '38.8700233', 1, 3, 'Kishimba store', NULL),
(152, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:28', 10, 2, '-6.8028938', '39.2451811', 1, 4, 'Levina shop', NULL),
(153, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:28', 10, 2, '-6.8047992', '39.2366519', 1, 4, 'Judy shop', NULL),
(154, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:28', 10, 2, '-6.8028626', '39.2455058', 1, 4, 'Method shop', NULL),
(155, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:28', 10, 2, '-6.7923097', '39.2685537', 1, 4, 'Shayo Shop', NULL),
(156, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:28', 9, 2, '-6.7766276', '39.2620863', 1, 5, 'China town ltd', NULL),
(188, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:29', 10, 2, '-6.9203083', '39.2730974', 3, 1, 'Mbwambo Shop', NULL),
(189, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:29', 10, 2, '-6.8689386', '39.3081376', 3, 1, 'Kigoma Shop', NULL),
(190, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:29', 10, 2, '-6.9209933', '39.2710849', 3, 1, 'J Shop', NULL),
(191, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:29', 10, 2, '-6.8606434', '39.3463999', 3, 1, 'MPs shop', NULL),
(192, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:29', 10, 2, '-6.9210697', '39.2708256', 3, 1, 'Tweve Shop', NULL),
(193, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:29', 10, 2, '-6.8617416', '39.324029', 3, 1, 'Manyovu shop', NULL),
(194, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:29', 10, 2, '-6.920023', '39.2705011', 3, 1, 'Mama Massawe Shop', NULL),
(195, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:29', 10, 2, '-6.9311093', '39.2701765', 3, 1, 'Khalid Shop ', NULL),
(196, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:29', 10, 2, '-6.915247', '39.2543045', 3, 2, 'Deus Shop', NULL),
(197, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:29', 10, 2, '-6.9730737', '39.215624', 3, 2, 'mbute shop (A)', NULL),
(198, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:29', 10, 2, '-6.9152656', '39.2584916', 3, 2, 'Kira shop (A)', NULL),
(199, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:30', 10, 2, '-6.9733045', '39.2169276', 3, 2, 'Damas Muha', NULL),
(200, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:30', 10, 2, '-6.9026606', '39.2688783', 3, 2, 'Tesha Shop', NULL),
(201, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:30', 10, 2, '-6.9318392', '39.2567646', 3, 2, 'Ngosha Shop ', NULL),
(202, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:30', 10, 2, '-6.9305735', '39.2481031', 3, 2, 'Kira shop', NULL),
(203, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:30', 10, 2, '-6.9474127', '39.2293058', 3, 2, 'Mashi shop  (A)', NULL),
(204, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:30', 10, 2, '-6.8859573', '39.2799123', 3, 3, 'Tollu Shop', NULL),
(205, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:30', 10, 2, '-6.8965911', '39.2786143', 3, 3, 'Muniko Shop', NULL),
(206, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:30', 10, 2, '-6.8745515', '39.2707374', 3, 3, '1ico Whole Sale Shop', NULL),
(207, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:30', 10, 2, '-6.873913', '39.2721125', 3, 3, 'Chacha Shop', NULL),
(208, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:30', 10, 2, '-6.8858309', '39.2812103', 3, 3, 'Tolu shop', NULL),
(209, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:30', 10, 2, '-6.7685644', '39.2740031', 3, 3, 'Kimario Shop', NULL),
(210, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:30', 10, 2, '-6.8679604', '39.2313005', 3, 4, 'Ngewa Shop ', NULL),
(211, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:30', 10, 2, '-6.8776368', '39.2267754', 3, 4, 'Mateo Shop ', NULL),
(212, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:30', 10, 2, '-6.8916215', '39.2335642', 3, 4, 'Kibomboi Shop ', NULL),
(213, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:30', 10, 2, '-6.8927475', '39.2418677', 3, 4, 'Mashi Shop (A)', NULL),
(214, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:30', 10, 2, '-6.8857997', '39.239986', 3, 4, 'Munishi Shop', NULL),
(215, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:30', 10, 2, '-6.8857997', '39.239986', 3, 4, 'Paul A Swai', NULL),
(216, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:30', 10, 2, '-6.7928326', '39.2545613', 4, 1, 'Kimario Shop', NULL),
(217, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:30', 10, 2, '-6.7892949', '39.2523236', 4, 1, 'Masmu one shop', NULL),
(218, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:30', 2, 2, '-6.7882673', '39.2164651', 4, 1, 'Mlay shop', NULL),
(219, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:30', 10, 2, '-6.7758163', '39.2329328', 4, 1, 'Anustiatha G Shop', NULL),
(220, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:30', 10, 2, '-6.7913889', '39.2568033', 4, 1, 'Shirima Shop', NULL),
(221, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:30', 10, 2, '-6.773282', '39.2594654', 4, 1, 'TARIMO SHOP', NULL),
(222, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:30', 10, 2, '-6.776986', '39.2423712', 4, 1, 'Teckla Shop', NULL),
(223, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:30', 10, 2, '-6.7902783', '39.2642553', 4, 1, 'Tairo Shop', NULL),
(224, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:30', 10, 2, '-6.7785616', '39.2484853', 4, 1, 'KIJITONYAMA SHOP (B)', NULL),
(225, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:30', 10, 2, '-6.6682517', '39.2182739', 4, 1, 'JR SHOP (A)', NULL),
(226, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:30', 10, 2, '-6.7912041', '39.2639642', 4, 1, 'TITUS PETER (A)', NULL),
(227, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:30', 3, 2, '-6.7687858', '39.2670735', 4, 1, 'Issa shop', NULL),
(228, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:30', 10, 2, '-6.7475595', '39.1597323', 4, 2, 'Mbava Shop', NULL),
(229, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:30', 2, 2, '-6.5848126', '39.1330706', 4, 2, 'DOGA SHOP', NULL),
(230, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:30', 10, 2, '-6.7446574', '39.1506283', 4, 2, 'Lamosai', NULL),
(231, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:30', 10, 2, '-6.7385861', '39.2201757', 4, 2, 'Ngadaya Shop', NULL),
(232, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:30', 10, 2, '-6.7655112', '39.2295641', 4, 2, 'Mlai Shop', NULL),
(233, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:31', 10, 2, '-6.7286276', '39.2146537', 4, 2, 'KHAHUMBA INVESTIMENT', NULL),
(234, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:31', 10, 2, '-6.7442151', '39.2344657', 4, 2, 'Euro Merchandise', NULL),
(235, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:31', 10, 2, '-6.6212616', '39.1093031', 4, 2, 'Deo Shop', NULL),
(236, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:31', 10, 2, '-6.6673712', '39.1891127', 4, 2, 'Clement Shop', NULL),
(237, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:31', 10, 2, '-6.6681522', '39.1895026', 4, 2, 'LUCAS NTIRUHUNGWA MZYENGA (A)', NULL),
(238, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:31', 10, 2, '-6.8309494', '39.2707819', 4, 3, 'Mwanga Shop ', NULL),
(239, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:31', 10, 2, '-6.8706384', '39.1904957', 4, 3, 'Mama Mudi Shop', NULL),
(240, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:31', 10, 2, '-6.8455701', '39.1731769', 4, 3, 'kipawa shop', NULL),
(241, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:31', 10, 2, '-6.830524', '39.2571202', 4, 3, 'Witness Store', NULL),
(242, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:31', 10, 2, '-6.8657348', '39.2238664', 4, 3, 'Yasin Ally Duru ', NULL),
(243, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:31', 10, 2, '-6.8684301', '39.1940203', 4, 3, 'Mambo Db Enterprises ', NULL),
(244, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:31', 10, 2, '-6.8596427', '39.2049777', 4, 3, 'Twambombo Shop', NULL),
(245, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:31', 10, 2, '-6.8340542', '39.217902', 4, 3, 'Urasa Shop ', NULL),
(246, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:31', 9, 2, '-', '-', 4, 3, 'Urassa stor', NULL),
(247, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:31', 10, 2, '-6.9994109', '39.0833154', 4, 4, 'Kimori Shop', NULL),
(248, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:31', 10, 2, '-6.9103025', '39.1919872', 4, 4, 'Kasi mpya shop', NULL),
(249, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:31', 10, 2, '-6.9123056', '39.1948355', 4, 4, 'Mama Light Shop', NULL),
(250, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:31', 10, 2, '-7.0045306', '39.0814849', 4, 4, 'Mikoba shop', NULL),
(251, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:31', 10, 2, '-6.9155543', '39.1227394', 4, 4, 'China Store', NULL),
(252, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:31', 10, 2, '-6.8810093', '39.158757', 4, 4, 'Renatus Piter Kimaro', NULL),
(253, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:31', 10, 2, '-6.8810093', '39.158757', 4, 4, 'Mwasu Partners', NULL),
(254, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:31', 10, 2, '-6.8830176', '39.1547966', 4, 4, 'Mama Kweka Store', NULL),
(255, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:31', 10, 2, '-6.8830176', '39.1547966', 4, 4, 'Warda Store', NULL),
(256, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:31', 10, 2, '-6.8830176', '39.1547966', 4, 4, 'Kimaro Store', NULL),
(257, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:31', 10, 2, '-6.876249', '39.1722253', 4, 4, 'Adam Robert  Manumba', NULL),
(258, '', NULL, 0, '1', '0.00', NULL, NULL, 0, '2019-02-12 10:56:31', 10, 2, '-6.8784174', '39.1655162', 4, 4, 'Fakhi Shop', NULL),
(259, NULL, NULL, 1, '', '0.00', NULL, NULL, 0, '2019-06-24 14:28:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_customers_packages`
--

CREATE TABLE `ospos_customers_packages` (
  `package_id` int(11) NOT NULL,
  `package_name` varchar(255) DEFAULT NULL,
  `points_percent` float NOT NULL DEFAULT 0,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_customers_packages`
--

INSERT INTO `ospos_customers_packages` (`package_id`, `package_name`, `points_percent`, `deleted`) VALUES
(1, 'Default', 0, 0),
(2, 'Bronze', 10, 0),
(3, 'Silver', 20, 0),
(4, 'Gold', 30, 0),
(5, 'Premium', 50, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_customers_points`
--

CREATE TABLE `ospos_customers_points` (
  `id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `points_earned` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_customers_points`
--

INSERT INTO `ospos_customers_points` (`id`, `person_id`, `package_id`, `sale_id`, `points_earned`) VALUES
(1, 23, 3, 13, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_dinner_tables`
--

CREATE TABLE `ospos_dinner_tables` (
  `dinner_table_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_dinner_tables`
--

INSERT INTO `ospos_dinner_tables` (`dinner_table_id`, `name`, `status`, `deleted`) VALUES
(1, 'Delivery', 0, 0),
(2, 'Take Away', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_employees`
--

CREATE TABLE `ospos_employees` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `person_id` int(10) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `hash_version` int(1) NOT NULL DEFAULT 2,
  `language` varchar(48) DEFAULT NULL,
  `language_code` varchar(8) DEFAULT NULL,
  `token` varchar(255) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_employees`
--

INSERT INTO `ospos_employees` (`username`, `password`, `person_id`, `deleted`, `hash_version`, `language`, `language_code`, `token`, `last_update`) VALUES
('admin', '$2y$10$vJBSMlD02EC7ENSrKfVQXuvq9tNRHMtcOA8MSK2NYS748HHWm.gcG', 1, 0, 2, '', '', 'xcdWEqAq', '2019-08-03 20:52:19'),
('magufuli', '$2y$10$hDTSmOZjVDHuqasCcydO6OhZw0vH1BLM1O7Sfmonbsei2WmbfxSVq', 260, 0, 2, '', '', '', '2019-07-27 20:37:38');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_expenses`
--

CREATE TABLE `ospos_expenses` (
  `expense_id` int(10) NOT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `amount` decimal(15,2) NOT NULL,
  `payment_type` varchar(40) NOT NULL,
  `expense_category_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `employee_id` int(10) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `supplier_name` varchar(255) DEFAULT NULL,
  `supplier_tax_code` varchar(255) DEFAULT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_expense_categories`
--

CREATE TABLE `ospos_expense_categories` (
  `expense_category_id` int(10) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `category_description` varchar(255) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_giftcards`
--

CREATE TABLE `ospos_giftcards` (
  `record_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `giftcard_id` int(11) NOT NULL,
  `giftcard_number` varchar(255) DEFAULT NULL,
  `value` decimal(15,2) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `person_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_giftcards`
--

INSERT INTO `ospos_giftcards` (`record_time`, `giftcard_id`, `giftcard_number`, `value`, `deleted`, `person_id`) VALUES
('2019-06-27 05:31:54', 1, '1', '5000.00', 0, 23);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_grants`
--

CREATE TABLE `ospos_grants` (
  `permission_id` varchar(255) NOT NULL,
  `person_id` int(10) NOT NULL,
  `menu_group` varchar(32) DEFAULT 'home'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_grants`
--

INSERT INTO `ospos_grants` (`permission_id`, `person_id`, `menu_group`) VALUES
('config', 1, 'office'),
('customers', 1, 'home'),
('employees', 1, 'office'),
('expenses', 1, 'home'),
('expenses_categories', 1, 'home'),
('giftcards', 1, 'home'),
('home', 1, 'office'),
('items', 1, 'home'),
('items', 260, 'home'),
('items_WholesaleBB-2-Ila', 1, '--'),
('items_WholesaleBB-2-Ila', 260, 'home'),
('items_WholesaleBB-3-Tmk', 1, '--'),
('items_WholesaleBB-4-Ila', 1, '--'),
('item_kits', 1, 'home'),
('messages', 1, 'home'),
('office', 1, 'home'),
('receivings', 1, 'home'),
('receivings_stock', 1, '--'),
('receivings_WholesaleBB-2-Ila', 1, '--'),
('receivings_WholesaleBB-3-Tmk', 1, '--'),
('receivings_WholesaleBB-4-Ila', 1, '--'),
('reports', 1, 'home'),
('reports_categories', 1, '--'),
('reports_customers', 1, '--'),
('reports_discounts', 1, '--'),
('reports_employees', 1, '--'),
('reports_expenses_categories', 1, '--'),
('reports_inventory', 1, '--'),
('reports_items', 1, '--'),
('reports_payments', 1, '--'),
('reports_receivings', 1, '--'),
('reports_sales', 1, '--'),
('reports_suppliers', 1, '--'),
('reports_taxes', 1, '--'),
('sales', 1, 'home'),
('sales_delete', 1, '--'),
('sales_stock', 1, '--'),
('sales_WholesaleBB-2-Ila', 1, '--'),
('sales_WholesaleBB-3-Tmk', 1, '--'),
('sales_WholesaleBB-4-Ila', 1, '--'),
('suppliers', 1, 'home'),
('taxes', 1, 'office');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_inventory`
--

CREATE TABLE `ospos_inventory` (
  `trans_id` int(11) NOT NULL,
  `trans_items` int(11) NOT NULL DEFAULT 0,
  `trans_user` int(11) NOT NULL DEFAULT 0,
  `trans_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `trans_comment` text NOT NULL,
  `trans_location` int(11) NOT NULL,
  `trans_inventory` decimal(15,3) NOT NULL DEFAULT 0.000
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_inventory`
--

INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
(1, 1, 1, '2019-02-07 08:59:41', 'Qty CSV Imported', 1, '100.000'),
(2, 1, 1, '2019-02-07 08:59:41', 'Qty CSV Imported', 6, '0.000'),
(3, 1, 1, '2019-02-07 08:59:41', 'Qty CSV Imported', 7, '0.000'),
(4, 1, 1, '2019-02-07 08:59:41', 'Qty CSV Imported', 8, '0.000'),
(5, 1, 1, '2019-02-07 08:59:41', 'Qty CSV Imported', 9, '0.000'),
(6, 1, 1, '2019-02-07 08:59:41', 'Qty CSV Imported', 10, '0.000'),
(7, 1, 1, '2019-02-07 08:59:41', 'Qty CSV Imported', 11, '0.000'),
(8, 1, 1, '2019-02-07 08:59:41', 'Qty CSV Imported', 12, '0.000'),
(9, 1, 1, '2019-02-07 08:59:41', 'Qty CSV Imported', 13, '0.000'),
(10, 1, 1, '2019-02-07 08:59:41', 'Qty CSV Imported', 14, '0.000'),
(11, 1, 1, '2019-02-07 08:59:42', 'Qty CSV Imported', 15, '0.000'),
(12, 1, 1, '2019-02-07 08:59:42', 'Qty CSV Imported', 16, '0.000'),
(13, 1, 1, '2019-02-07 08:59:42', 'Qty CSV Imported', 17, '0.000'),
(14, 1, 1, '2019-02-07 08:59:42', 'Qty CSV Imported', 18, '0.000'),
(15, 1, 1, '2019-02-07 08:59:42', 'Qty CSV Imported', 19, '0.000'),
(16, 1, 1, '2019-02-07 08:59:42', 'Qty CSV Imported', 20, '0.000'),
(17, 1, 1, '2019-02-07 08:59:42', 'Qty CSV Imported', 22, '0.000'),
(18, 1, 1, '2019-02-07 08:59:42', 'Qty CSV Imported', 23, '0.000'),
(19, 1, 1, '2019-02-07 08:59:42', 'Qty CSV Imported', 24, '0.000'),
(20, 1, 1, '2019-02-07 08:59:42', 'Qty CSV Imported', 25, '0.000'),
(21, 1, 1, '2019-02-07 08:59:42', 'Qty CSV Imported', 26, '0.000'),
(22, 1, 1, '2019-02-07 08:59:42', 'Qty CSV Imported', 27, '0.000'),
(23, 1, 1, '2019-02-07 08:59:42', 'Qty CSV Imported', 28, '0.000'),
(24, 1, 1, '2019-02-07 08:59:42', 'Qty CSV Imported', 21, '0.000'),
(25, 1, 1, '2019-02-07 08:59:42', 'Qty CSV Imported', 29, '0.000'),
(26, 1, 1, '2019-02-07 08:59:43', 'Qty CSV Imported', 30, '0.000'),
(27, 1, 1, '2019-02-07 08:59:43', 'Qty CSV Imported', 31, '0.000'),
(28, 1, 1, '2019-02-07 08:59:43', 'Qty CSV Imported', 32, '0.000'),
(29, 1, 1, '2019-02-07 08:59:43', 'Qty CSV Imported', 33, '0.000'),
(30, 1, 1, '2019-02-07 08:59:43', 'Qty CSV Imported', 34, '0.000'),
(31, 1, 1, '2019-02-07 08:59:43', 'Qty CSV Imported', 35, '0.000'),
(32, 1, 1, '2019-02-07 08:59:43', 'Qty CSV Imported', 36, '0.000'),
(33, 1, 1, '2019-02-07 08:59:43', 'Qty CSV Imported', 3, '0.000'),
(34, 1, 1, '2019-02-07 08:59:43', 'Qty CSV Imported', 4, '0.000'),
(35, 1, 1, '2019-02-07 08:59:43', 'Qty CSV Imported', 5, '0.000'),
(36, 2, 1, '2019-02-07 01:08:49', 'Manual Edit of Quantity', 6, '100000.000'),
(37, 2, 1, '2019-02-07 01:08:49', 'Manual Edit of Quantity', 7, '0.000'),
(38, 2, 1, '2019-02-07 01:08:49', 'Manual Edit of Quantity', 8, '0.000'),
(39, 2, 1, '2019-02-07 01:08:49', 'Manual Edit of Quantity', 9, '0.000'),
(40, 2, 1, '2019-02-07 01:08:50', 'Manual Edit of Quantity', 10, '0.000'),
(41, 2, 1, '2019-02-07 01:08:50', 'Manual Edit of Quantity', 11, '0.000'),
(42, 2, 1, '2019-02-07 01:08:50', 'Manual Edit of Quantity', 12, '0.000'),
(43, 2, 1, '2019-02-07 01:08:50', 'Manual Edit of Quantity', 13, '0.000'),
(44, 2, 1, '2019-02-07 01:08:50', 'Manual Edit of Quantity', 14, '0.000'),
(45, 2, 1, '2019-02-07 01:08:50', 'Manual Edit of Quantity', 15, '0.000'),
(46, 2, 1, '2019-02-07 01:08:50', 'Manual Edit of Quantity', 16, '0.000'),
(47, 2, 1, '2019-02-07 01:08:50', 'Manual Edit of Quantity', 17, '0.000'),
(48, 2, 1, '2019-02-07 01:08:50', 'Manual Edit of Quantity', 18, '0.000'),
(49, 2, 1, '2019-02-07 01:08:50', 'Manual Edit of Quantity', 19, '0.000'),
(50, 2, 1, '2019-02-07 01:08:50', 'Manual Edit of Quantity', 20, '0.000'),
(51, 2, 1, '2019-02-07 01:08:50', 'Manual Edit of Quantity', 1, '0.000'),
(52, 2, 1, '2019-02-07 01:08:51', 'Manual Edit of Quantity', 22, '0.000'),
(53, 2, 1, '2019-02-07 01:08:51', 'Manual Edit of Quantity', 23, '0.000'),
(54, 2, 1, '2019-02-07 01:08:51', 'Manual Edit of Quantity', 24, '0.000'),
(55, 2, 1, '2019-02-07 01:08:51', 'Manual Edit of Quantity', 25, '0.000'),
(56, 2, 1, '2019-02-07 01:08:51', 'Manual Edit of Quantity', 26, '0.000'),
(57, 2, 1, '2019-02-07 01:08:51', 'Manual Edit of Quantity', 27, '0.000'),
(58, 2, 1, '2019-02-07 01:08:51', 'Manual Edit of Quantity', 28, '0.000'),
(59, 2, 1, '2019-02-07 01:08:51', 'Manual Edit of Quantity', 21, '0.000'),
(60, 2, 1, '2019-02-07 01:08:51', 'Manual Edit of Quantity', 29, '0.000'),
(61, 2, 1, '2019-02-07 01:08:51', 'Manual Edit of Quantity', 30, '0.000'),
(62, 2, 1, '2019-02-07 01:08:51', 'Manual Edit of Quantity', 31, '0.000'),
(63, 2, 1, '2019-02-07 01:08:51', 'Manual Edit of Quantity', 32, '0.000'),
(64, 2, 1, '2019-02-07 01:08:51', 'Manual Edit of Quantity', 33, '0.000'),
(65, 2, 1, '2019-02-07 01:08:51', 'Manual Edit of Quantity', 34, '0.000'),
(66, 2, 1, '2019-02-07 01:08:51', 'Manual Edit of Quantity', 35, '0.000'),
(67, 2, 1, '2019-02-07 01:08:52', 'Manual Edit of Quantity', 36, '0.000'),
(68, 2, 1, '2019-02-07 01:08:52', 'Manual Edit of Quantity', 3, '0.000'),
(69, 2, 1, '2019-02-07 01:08:52', 'Manual Edit of Quantity', 4, '0.000'),
(70, 2, 1, '2019-02-07 01:08:52', 'Manual Edit of Quantity', 5, '0.000'),
(71, 1, 1, '2019-02-07 01:10:08', 'POS 1', 1, '-85.000'),
(72, 2, 1, '2019-02-07 01:10:08', 'POS 1', 6, '-20.000'),
(73, 2, 1, '2019-02-07 01:23:33', 'RECV 1', 6, '20.000'),
(74, 1, 1, '2019-02-12 14:25:50', 'POS 2', 1, '-1.000'),
(75, 2, 1, '2019-06-13 16:44:06', 'POS 5', 6, '-10.000'),
(76, 2, 1, '2019-06-14 05:05:03', 'POS 6', 6, '-1.000'),
(77, 2, 1, '2019-06-14 05:07:20', 'POS 7', 6, '-1.000'),
(78, 2, 1, '2019-06-14 05:07:55', 'POS 8', 6, '-10.000'),
(79, 2, 1, '2019-06-14 05:09:58', 'POS 9', 6, '-10.000'),
(80, 2, 1, '2019-06-14 06:55:56', 'Deleting sale 6', 6, '1.000'),
(81, 1, 1, '2019-06-15 13:15:48', 'RECV 2', 6, '14.000'),
(82, 1, 1, '2019-06-15 13:15:48', 'RECV 2', 1, '-14.000'),
(83, 2, 1, '2019-06-17 16:42:06', 'POS 3', 6, '-25.000'),
(84, 3, 1, '2019-06-18 05:32:11', 'Manual Edit of Quantity', 6, '1000.000'),
(85, 3, 1, '2019-06-18 05:32:11', 'Manual Edit of Quantity', 7, '0.000'),
(86, 3, 1, '2019-06-18 05:32:11', 'Manual Edit of Quantity', 8, '0.000'),
(87, 3, 1, '2019-06-18 05:32:11', 'Manual Edit of Quantity', 9, '0.000'),
(88, 3, 1, '2019-06-18 05:32:11', 'Manual Edit of Quantity', 10, '0.000'),
(89, 3, 1, '2019-06-18 05:32:11', 'Manual Edit of Quantity', 11, '0.000'),
(90, 3, 1, '2019-06-18 05:32:11', 'Manual Edit of Quantity', 12, '0.000'),
(91, 3, 1, '2019-06-18 05:32:12', 'Manual Edit of Quantity', 13, '0.000'),
(92, 3, 1, '2019-06-18 05:32:12', 'Manual Edit of Quantity', 14, '0.000'),
(93, 3, 1, '2019-06-18 05:32:12', 'Manual Edit of Quantity', 15, '0.000'),
(94, 3, 1, '2019-06-18 05:32:12', 'Manual Edit of Quantity', 16, '0.000'),
(95, 3, 1, '2019-06-18 05:32:12', 'Manual Edit of Quantity', 17, '0.000'),
(96, 3, 1, '2019-06-18 05:32:12', 'Manual Edit of Quantity', 18, '0.000'),
(97, 3, 1, '2019-06-18 05:32:12', 'Manual Edit of Quantity', 19, '0.000'),
(98, 3, 1, '2019-06-18 05:32:12', 'Manual Edit of Quantity', 20, '0.000'),
(99, 3, 1, '2019-06-18 05:32:12', 'Manual Edit of Quantity', 1, '0.000'),
(100, 3, 1, '2019-06-18 05:32:12', 'Manual Edit of Quantity', 22, '0.000'),
(101, 3, 1, '2019-06-18 05:32:12', 'Manual Edit of Quantity', 23, '0.000'),
(102, 3, 1, '2019-06-18 05:32:12', 'Manual Edit of Quantity', 24, '0.000'),
(103, 3, 1, '2019-06-18 05:32:12', 'Manual Edit of Quantity', 25, '0.000'),
(104, 3, 1, '2019-06-18 05:32:12', 'Manual Edit of Quantity', 26, '0.000'),
(105, 3, 1, '2019-06-18 05:32:12', 'Manual Edit of Quantity', 27, '0.000'),
(106, 3, 1, '2019-06-18 05:32:12', 'Manual Edit of Quantity', 28, '0.000'),
(107, 3, 1, '2019-06-18 05:32:12', 'Manual Edit of Quantity', 21, '0.000'),
(108, 3, 1, '2019-06-18 05:32:13', 'Manual Edit of Quantity', 29, '0.000'),
(109, 3, 1, '2019-06-18 05:32:13', 'Manual Edit of Quantity', 30, '0.000'),
(110, 3, 1, '2019-06-18 05:32:13', 'Manual Edit of Quantity', 31, '0.000'),
(111, 3, 1, '2019-06-18 05:32:13', 'Manual Edit of Quantity', 32, '0.000'),
(112, 3, 1, '2019-06-18 05:32:13', 'Manual Edit of Quantity', 33, '0.000'),
(113, 3, 1, '2019-06-18 05:32:13', 'Manual Edit of Quantity', 34, '0.000'),
(114, 3, 1, '2019-06-18 05:32:13', 'Manual Edit of Quantity', 35, '0.000'),
(115, 3, 1, '2019-06-18 05:32:13', 'Manual Edit of Quantity', 36, '0.000'),
(116, 3, 1, '2019-06-18 05:32:13', 'Manual Edit of Quantity', 3, '0.000'),
(117, 3, 1, '2019-06-18 05:32:13', 'Manual Edit of Quantity', 4, '0.000'),
(118, 3, 1, '2019-06-18 05:32:13', 'Manual Edit of Quantity', 5, '0.000'),
(119, 4, 1, '2019-06-18 05:32:48', 'Manual Edit of Quantity', 6, '100.000'),
(120, 4, 1, '2019-06-18 05:32:48', 'Manual Edit of Quantity', 7, '0.000'),
(121, 4, 1, '2019-06-18 05:32:48', 'Manual Edit of Quantity', 8, '0.000'),
(122, 4, 1, '2019-06-18 05:32:48', 'Manual Edit of Quantity', 9, '0.000'),
(123, 4, 1, '2019-06-18 05:32:48', 'Manual Edit of Quantity', 10, '0.000'),
(124, 4, 1, '2019-06-18 05:32:48', 'Manual Edit of Quantity', 11, '0.000'),
(125, 4, 1, '2019-06-18 05:32:48', 'Manual Edit of Quantity', 12, '0.000'),
(126, 4, 1, '2019-06-18 05:32:48', 'Manual Edit of Quantity', 13, '0.000'),
(127, 4, 1, '2019-06-18 05:32:48', 'Manual Edit of Quantity', 14, '0.000'),
(128, 4, 1, '2019-06-18 05:32:48', 'Manual Edit of Quantity', 15, '0.000'),
(129, 4, 1, '2019-06-18 05:32:48', 'Manual Edit of Quantity', 16, '0.000'),
(130, 4, 1, '2019-06-18 05:32:48', 'Manual Edit of Quantity', 17, '0.000'),
(131, 4, 1, '2019-06-18 05:32:48', 'Manual Edit of Quantity', 18, '0.000'),
(132, 4, 1, '2019-06-18 05:32:48', 'Manual Edit of Quantity', 19, '0.000'),
(133, 4, 1, '2019-06-18 05:32:48', 'Manual Edit of Quantity', 20, '0.000'),
(134, 4, 1, '2019-06-18 05:32:48', 'Manual Edit of Quantity', 1, '0.000'),
(135, 4, 1, '2019-06-18 05:32:48', 'Manual Edit of Quantity', 22, '0.000'),
(136, 4, 1, '2019-06-18 05:32:48', 'Manual Edit of Quantity', 23, '0.000'),
(137, 4, 1, '2019-06-18 05:32:49', 'Manual Edit of Quantity', 24, '0.000'),
(138, 4, 1, '2019-06-18 05:32:49', 'Manual Edit of Quantity', 25, '0.000'),
(139, 4, 1, '2019-06-18 05:32:49', 'Manual Edit of Quantity', 26, '0.000'),
(140, 4, 1, '2019-06-18 05:32:49', 'Manual Edit of Quantity', 27, '0.000'),
(141, 4, 1, '2019-06-18 05:32:49', 'Manual Edit of Quantity', 28, '0.000'),
(142, 4, 1, '2019-06-18 05:32:49', 'Manual Edit of Quantity', 21, '0.000'),
(143, 4, 1, '2019-06-18 05:32:49', 'Manual Edit of Quantity', 29, '0.000'),
(144, 4, 1, '2019-06-18 05:32:49', 'Manual Edit of Quantity', 30, '0.000'),
(145, 4, 1, '2019-06-18 05:32:49', 'Manual Edit of Quantity', 31, '0.000'),
(146, 4, 1, '2019-06-18 05:32:49', 'Manual Edit of Quantity', 32, '0.000'),
(147, 4, 1, '2019-06-18 05:32:49', 'Manual Edit of Quantity', 33, '0.000'),
(148, 4, 1, '2019-06-18 05:32:49', 'Manual Edit of Quantity', 34, '0.000'),
(149, 4, 1, '2019-06-18 05:32:49', 'Manual Edit of Quantity', 35, '0.000'),
(150, 4, 1, '2019-06-18 05:32:49', 'Manual Edit of Quantity', 36, '0.000'),
(151, 4, 1, '2019-06-18 05:32:49', 'Manual Edit of Quantity', 3, '0.000'),
(152, 4, 1, '2019-06-18 05:32:49', 'Manual Edit of Quantity', 4, '0.000'),
(153, 4, 1, '2019-06-18 05:32:49', 'Manual Edit of Quantity', 5, '0.000'),
(154, 3, 1, '2019-06-18 05:33:26', 'POS 10', 6, '-1.000'),
(155, 4, 1, '2019-06-18 05:33:26', 'POS 10', 6, '-1.000'),
(156, 5, 1, '2019-06-18 05:34:52', 'Manual Edit of Quantity', 6, '0.000'),
(157, 5, 1, '2019-06-18 05:34:52', 'Manual Edit of Quantity', 7, '0.000'),
(158, 5, 1, '2019-06-18 05:34:52', 'Manual Edit of Quantity', 8, '0.000'),
(159, 5, 1, '2019-06-18 05:34:52', 'Manual Edit of Quantity', 9, '0.000'),
(160, 5, 1, '2019-06-18 05:34:52', 'Manual Edit of Quantity', 10, '0.000'),
(161, 5, 1, '2019-06-18 05:34:52', 'Manual Edit of Quantity', 11, '0.000'),
(162, 5, 1, '2019-06-18 05:34:52', 'Manual Edit of Quantity', 12, '0.000'),
(163, 5, 1, '2019-06-18 05:34:52', 'Manual Edit of Quantity', 13, '0.000'),
(164, 5, 1, '2019-06-18 05:34:52', 'Manual Edit of Quantity', 14, '0.000'),
(165, 5, 1, '2019-06-18 05:34:52', 'Manual Edit of Quantity', 15, '0.000'),
(166, 5, 1, '2019-06-18 05:34:52', 'Manual Edit of Quantity', 16, '0.000'),
(167, 5, 1, '2019-06-18 05:34:52', 'Manual Edit of Quantity', 17, '0.000'),
(168, 5, 1, '2019-06-18 05:34:52', 'Manual Edit of Quantity', 18, '0.000'),
(169, 5, 1, '2019-06-18 05:34:52', 'Manual Edit of Quantity', 19, '0.000'),
(170, 5, 1, '2019-06-18 05:34:52', 'Manual Edit of Quantity', 20, '0.000'),
(171, 5, 1, '2019-06-18 05:34:52', 'Manual Edit of Quantity', 1, '0.000'),
(172, 5, 1, '2019-06-18 05:34:52', 'Manual Edit of Quantity', 22, '0.000'),
(173, 5, 1, '2019-06-18 05:34:53', 'Manual Edit of Quantity', 23, '0.000'),
(174, 5, 1, '2019-06-18 05:34:53', 'Manual Edit of Quantity', 24, '0.000'),
(175, 5, 1, '2019-06-18 05:34:53', 'Manual Edit of Quantity', 25, '0.000'),
(176, 5, 1, '2019-06-18 05:34:53', 'Manual Edit of Quantity', 26, '0.000'),
(177, 5, 1, '2019-06-18 05:34:53', 'Manual Edit of Quantity', 27, '0.000'),
(178, 5, 1, '2019-06-18 05:34:53', 'Manual Edit of Quantity', 28, '0.000'),
(179, 5, 1, '2019-06-18 05:34:53', 'Manual Edit of Quantity', 21, '0.000'),
(180, 5, 1, '2019-06-18 05:34:53', 'Manual Edit of Quantity', 29, '0.000'),
(181, 5, 1, '2019-06-18 05:34:53', 'Manual Edit of Quantity', 30, '0.000'),
(182, 5, 1, '2019-06-18 05:34:53', 'Manual Edit of Quantity', 31, '0.000'),
(183, 5, 1, '2019-06-18 05:34:53', 'Manual Edit of Quantity', 32, '0.000'),
(184, 5, 1, '2019-06-18 05:34:53', 'Manual Edit of Quantity', 33, '0.000'),
(185, 5, 1, '2019-06-18 05:34:53', 'Manual Edit of Quantity', 34, '0.000'),
(186, 5, 1, '2019-06-18 05:34:53', 'Manual Edit of Quantity', 35, '0.000'),
(187, 5, 1, '2019-06-18 05:34:53', 'Manual Edit of Quantity', 36, '0.000'),
(188, 5, 1, '2019-06-18 05:34:53', 'Manual Edit of Quantity', 3, '0.000'),
(189, 5, 1, '2019-06-18 05:34:54', 'Manual Edit of Quantity', 4, '0.000'),
(190, 5, 1, '2019-06-18 05:34:54', 'Manual Edit of Quantity', 5, '0.000'),
(191, 5, 1, '2019-06-18 05:35:09', 'POS 11', 6, '-1.000'),
(192, 3, 1, '2019-06-18 14:16:45', 'POS 12', 6, '-1.000'),
(193, 1, 1, '2019-06-18 14:16:45', 'POS 12', 6, '-1.000'),
(194, 4, 1, '2019-06-25 06:27:50', 'POS 14', 6, '-1.000'),
(195, 1, 1, '2019-06-25 06:27:50', 'POS 14', 6, '-10.000'),
(196, 2, 1, '2019-06-25 06:28:26', 'POS 15', 6, '-10.000'),
(197, 3, 1, '2019-06-26 15:47:23', 'POS 16', 6, '-1.000'),
(198, 2, 1, '2019-06-26 15:47:23', 'POS 16', 6, '-1.000'),
(199, 1, 1, '2019-06-26 15:47:23', 'POS 16', 6, '-1.000'),
(200, 1, 1, '2019-07-31 10:52:59', 'RECV 4', 1, '1.000'),
(201, 1, 1, '2019-07-31 10:54:17', 'RECV 5', 3, '1.000'),
(202, 1, 1, '2019-07-31 10:54:49', 'RECV 6', 3, '10.000');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_items`
--

CREATE TABLE `ospos_items` (
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `item_number` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `cost_price` decimal(15,2) NOT NULL,
  `unit_price` decimal(15,2) NOT NULL,
  `reorder_level` decimal(15,3) NOT NULL DEFAULT 0.000,
  `receiving_quantity` decimal(15,3) NOT NULL DEFAULT 1.000,
  `item_id` int(10) NOT NULL,
  `pic_filename` varchar(255) DEFAULT NULL,
  `allow_alt_description` tinyint(1) NOT NULL,
  `is_serialized` tinyint(1) NOT NULL,
  `stock_type` tinyint(2) NOT NULL DEFAULT 0,
  `item_type` tinyint(2) NOT NULL DEFAULT 0,
  `tax_category_id` int(10) NOT NULL DEFAULT 1,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `custom1` varchar(255) DEFAULT NULL,
  `custom2` varchar(255) DEFAULT NULL,
  `custom3` varchar(255) DEFAULT NULL,
  `custom4` varchar(255) DEFAULT NULL,
  `custom5` varchar(255) DEFAULT NULL,
  `custom6` varchar(255) DEFAULT NULL,
  `custom7` varchar(255) DEFAULT NULL,
  `custom8` varchar(255) DEFAULT NULL,
  `custom9` varchar(255) DEFAULT NULL,
  `custom10` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_items`
--

INSERT INTO `ospos_items` (`name`, `category`, `supplier_id`, `item_number`, `description`, `cost_price`, `unit_price`, `reorder_level`, `receiving_quantity`, `item_id`, `pic_filename`, `allow_alt_description`, `is_serialized`, `stock_type`, `item_type`, `tax_category_id`, `deleted`, `custom1`, `custom2`, `custom3`, `custom4`, `custom5`, `custom6`, `custom7`, `custom8`, `custom9`, `custom10`) VALUES
('Apple iMac', 'Computers', NULL, '33333333', 'Best Computer ever', '0.00', '1200.00', '1.000', '1.000', 1, '6b2997c6b073808444f25691c4fa8e96.jpg', 1, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', ''),
('iphone', 'phones', NULL, NULL, '', '0.00', '1000.00', '1.000', '1.000', 2, 'iphone1.jpg', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', ''),
('Kali', 'Tobacco', NULL, NULL, '', '0.00', '0.00', '1.000', '1.000', 3, NULL, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', ''),
('Dunhill', 'tobacco', NULL, NULL, '', '0.00', '0.00', '1.000', '1.000', 4, NULL, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', ''),
('ChesterField', 'tobaCCo', NULL, NULL, '', '0.00', '0.00', '1.000', '1.000', 5, NULL, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_items_taxes`
--

CREATE TABLE `ospos_items_taxes` (
  `item_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `percent` decimal(15,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_items_taxes`
--

INSERT INTO `ospos_items_taxes` (`item_id`, `name`, `percent`) VALUES
(1, 'Tax 1', '8.000'),
(1, 'Tax 2', '10.000');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_item_kits`
--

CREATE TABLE `ospos_item_kits` (
  `item_kit_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `item_id` int(10) NOT NULL DEFAULT 0,
  `kit_discount_percent` decimal(15,2) NOT NULL DEFAULT 0.00,
  `price_option` tinyint(2) NOT NULL DEFAULT 0,
  `print_option` tinyint(2) NOT NULL DEFAULT 0,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_item_kit_items`
--

CREATE TABLE `ospos_item_kit_items` (
  `item_kit_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` decimal(15,3) NOT NULL,
  `kit_sequence` int(3) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_item_quantities`
--

CREATE TABLE `ospos_item_quantities` (
  `item_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `quantity` decimal(15,3) NOT NULL DEFAULT 0.000
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_item_quantities`
--

INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
(1, 1, '99901.000'),
(1, 3, '11.000'),
(1, 4, '0.000'),
(1, 5, '0.000'),
(1, 6, '2.000'),
(1, 7, '0.000'),
(1, 8, '0.000'),
(1, 9, '0.000'),
(1, 10, '0.000'),
(1, 11, '0.000'),
(1, 12, '0.000'),
(1, 13, '0.000'),
(1, 14, '0.000'),
(1, 15, '0.000'),
(1, 16, '0.000'),
(1, 17, '0.000'),
(1, 18, '0.000'),
(1, 19, '0.000'),
(1, 20, '0.000'),
(1, 21, '0.000'),
(1, 22, '0.000'),
(1, 23, '0.000'),
(1, 24, '0.000'),
(1, 25, '0.000'),
(1, 26, '0.000'),
(1, 27, '0.000'),
(1, 28, '0.000'),
(1, 29, '0.000'),
(1, 30, '0.000'),
(1, 31, '0.000'),
(1, 32, '0.000'),
(1, 33, '0.000'),
(1, 34, '0.000'),
(1, 35, '0.000'),
(1, 36, '0.000'),
(2, 1, '0.000'),
(2, 3, '0.000'),
(2, 4, '0.000'),
(2, 5, '0.000'),
(2, 6, '99933.000'),
(2, 7, '0.000'),
(2, 8, '0.000'),
(2, 9, '0.000'),
(2, 10, '0.000'),
(2, 11, '0.000'),
(2, 12, '0.000'),
(2, 13, '0.000'),
(2, 14, '0.000'),
(2, 15, '0.000'),
(2, 16, '0.000'),
(2, 17, '0.000'),
(2, 18, '0.000'),
(2, 19, '0.000'),
(2, 20, '0.000'),
(2, 21, '0.000'),
(2, 22, '0.000'),
(2, 23, '0.000'),
(2, 24, '0.000'),
(2, 25, '0.000'),
(2, 26, '0.000'),
(2, 27, '0.000'),
(2, 28, '0.000'),
(2, 29, '0.000'),
(2, 30, '0.000'),
(2, 31, '0.000'),
(2, 32, '0.000'),
(2, 33, '0.000'),
(2, 34, '0.000'),
(2, 35, '0.000'),
(2, 36, '0.000'),
(3, 1, '0.000'),
(3, 3, '0.000'),
(3, 4, '0.000'),
(3, 5, '0.000'),
(3, 6, '997.000'),
(3, 7, '0.000'),
(3, 8, '0.000'),
(3, 9, '0.000'),
(3, 10, '0.000'),
(3, 11, '0.000'),
(3, 12, '0.000'),
(3, 13, '0.000'),
(3, 14, '0.000'),
(3, 15, '0.000'),
(3, 16, '0.000'),
(3, 17, '0.000'),
(3, 18, '0.000'),
(3, 19, '0.000'),
(3, 20, '0.000'),
(3, 21, '0.000'),
(3, 22, '0.000'),
(3, 23, '0.000'),
(3, 24, '0.000'),
(3, 25, '0.000'),
(3, 26, '0.000'),
(3, 27, '0.000'),
(3, 28, '0.000'),
(3, 29, '0.000'),
(3, 30, '0.000'),
(3, 31, '0.000'),
(3, 32, '0.000'),
(3, 33, '0.000'),
(3, 34, '0.000'),
(3, 35, '0.000'),
(3, 36, '0.000'),
(4, 1, '0.000'),
(4, 3, '0.000'),
(4, 4, '0.000'),
(4, 5, '0.000'),
(4, 6, '98.000'),
(4, 7, '0.000'),
(4, 8, '0.000'),
(4, 9, '0.000'),
(4, 10, '0.000'),
(4, 11, '0.000'),
(4, 12, '0.000'),
(4, 13, '0.000'),
(4, 14, '0.000'),
(4, 15, '0.000'),
(4, 16, '0.000'),
(4, 17, '0.000'),
(4, 18, '0.000'),
(4, 19, '0.000'),
(4, 20, '0.000'),
(4, 21, '0.000'),
(4, 22, '0.000'),
(4, 23, '0.000'),
(4, 24, '0.000'),
(4, 25, '0.000'),
(4, 26, '0.000'),
(4, 27, '0.000'),
(4, 28, '0.000'),
(4, 29, '0.000'),
(4, 30, '0.000'),
(4, 31, '0.000'),
(4, 32, '0.000'),
(4, 33, '0.000'),
(4, 34, '0.000'),
(4, 35, '0.000'),
(4, 36, '0.000'),
(5, 1, '0.000'),
(5, 3, '0.000'),
(5, 4, '0.000'),
(5, 5, '0.000'),
(5, 6, '-1.000'),
(5, 7, '0.000'),
(5, 8, '0.000'),
(5, 9, '0.000'),
(5, 10, '0.000'),
(5, 11, '0.000'),
(5, 12, '0.000'),
(5, 13, '0.000'),
(5, 14, '0.000'),
(5, 15, '0.000'),
(5, 16, '0.000'),
(5, 17, '0.000'),
(5, 18, '0.000'),
(5, 19, '0.000'),
(5, 20, '0.000'),
(5, 21, '0.000'),
(5, 22, '0.000'),
(5, 23, '0.000'),
(5, 24, '0.000'),
(5, 25, '0.000'),
(5, 26, '0.000'),
(5, 27, '0.000'),
(5, 28, '0.000'),
(5, 29, '0.000'),
(5, 30, '0.000'),
(5, 31, '0.000'),
(5, 32, '0.000'),
(5, 33, '0.000'),
(5, 34, '0.000'),
(5, 35, '0.000'),
(5, 36, '0.000');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_migrations`
--

CREATE TABLE `ospos_migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_migrations`
--

INSERT INTO `ospos_migrations` (`version`) VALUES
(20180501100000);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_modules`
--

CREATE TABLE `ospos_modules` (
  `name_lang_key` varchar(255) NOT NULL,
  `desc_lang_key` varchar(255) NOT NULL,
  `sort` int(10) NOT NULL,
  `module_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_modules`
--

INSERT INTO `ospos_modules` (`name_lang_key`, `desc_lang_key`, `sort`, `module_id`) VALUES
('module_config', 'module_config_desc', 110, 'config'),
('module_customers', 'module_customers_desc', 10, 'customers'),
('module_employees', 'module_employees_desc', 80, 'employees'),
('module_expenses', 'module_expenses_desc', 108, 'expenses'),
('module_expenses_categories', 'module_expenses_categories_desc', 109, 'expenses_categories'),
('module_giftcards', 'module_giftcards_desc', 90, 'giftcards'),
('module_home', 'module_home_desc', 1, 'home'),
('module_items', 'module_items_desc', 20, 'items'),
('module_item_kits', 'module_item_kits_desc', 30, 'item_kits'),
('module_messages', 'module_messages_desc', 98, 'messages'),
('module_office', 'module_office_desc', 999, 'office'),
('module_receivings', 'module_receivings_desc', 60, 'receivings'),
('module_reports', 'module_reports_desc', 50, 'reports'),
('module_sales', 'module_sales_desc', 70, 'sales'),
('module_suppliers', 'module_suppliers_desc', 40, 'suppliers'),
('module_taxes', 'module_taxes_desc', 105, 'taxes');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_people`
--

CREATE TABLE `ospos_people` (
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` int(1) DEFAULT NULL,
  `phone_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `comments` text NOT NULL,
  `person_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_people`
--

INSERT INTO `ospos_people` (`first_name`, `last_name`, `gender`, `phone_number`, `email`, `address_1`, `address_2`, `city`, `state`, `zip`, `country`, `comments`, `person_id`) VALUES
('John', 'Doe', NULL, '555-555-5555', 'changeme@example.com', 'Address 1', '', '', '', '', '', '', 1),
('Kl', 'Abdillah', NULL, '', '', '', '', '', '', '', '', '', 2),
('Moha', 'Abdillah', 1, '', '', '', '', '', '', '', '', '', 3),
('Masheu', 'Juma', 1, '', '', '', '', '', '', '', '', '', 4),
('Tarimo', 'Tarimo', 0, '2.55656E+11', '', 'Chang\'ombe mwembeni street', 'Chang\'Ombe', 'Dar es Salaam', '', '', 'Tanzania', '', 5),
('Elias', '', 0, '743145488', '', 'Sanene Bus stand Near Camel Oil Gas station', 'Sanene', 'Dar es Salaam', '', '', 'Tanzania', '', 6),
('Digold', '', 0, '625511172', '', 'sanene near by Camel oil', 'Sanene', 'Dar es Salaam', '', '', 'Tanzania', '', 7),
('madam ritha', '', 0, '9.99066E+12', '', 'tabata 1akuda opposite na genge la 1acuda', '', 'Dar es Salaam', '', '', 'Tanzania', '', 8),
('meneja john', '', 0, '715828294', '', 'tabata kwa bibi motion cha chama ', '', 'Dar es Salaam', '', '', 'Tanzania', '', 9),
('Mbiri', '', 0, '714522943', '', 'savana intrio near tanzania preschool', 'Mawenzi', 'Dar es Salaam', '', '', 'Tanzania', '', 10),
('James Tesha', '', 0, '712398744', '', 'mawenzi near by kwa chonde street', 'Mawenzi', 'Dar es Salaam', '', '', 'Tanzania', '', 11),
('Efraim ', '', 0, '787919185', '', 'Mawenzi near by Mawenzi 1', 'Mawenzi', 'Dar es Salaam', '', '', 'Tanzania', '', 12),
('Joshep Ally', '', 0, '716622351', '', 'Mawenzi Near bus stand', 'Mawenzi', 'Dar es Salaam', '', '', 'Tanzania', '', 13),
('Happiness Florian', '', 0, '788175330', '', 'kisiwanii near the Palace 1 ', 'Mawenzi', 'Dar es Salaam', '', '', 'Tanzania', '', 14),
('Erick', '', 0, '2.55782E+11', '', 'Mawenzi near mawenzi bus stand', 'Mawenzi', 'Dar es Salaam', '', '', 'Tanzania', '', 15),
('Paulo', '', 0, '655271586', '', 'Kimanga mandela juu', 'Kimanga', 'Dar es Salaam', '', '', 'Tanzania', '', 16),
('Emmanuel France', '', 0, '674938208', '', 'savvana near Muungano 1', 'Mawenzi', 'Dar es Salaam', '', '', 'Tanzania', '', 17),
('Deogratius Vicent', '', 0, '1225', '', 'kisiwani near by The Palace 1', 'Mawenzi', 'Dar es Salaam', '', '', 'Tanzania', '', 18),
('Habib Rajab', '', 0, '714204433', '', 'Chama behind Chama primary School', 'Mawenzi', 'Dar es Salaam', '', '', 'Tanzania', '', 19),
('Penina Mwita', '', 0, '717185218', '', 'mawenzi near by Highbury ', 'Mawenzi', 'Dar es Salaam', '', '', 'Tanzania', '', 20),
('Eliah', '', 0, '765825667', '', 'Mawenzi bus station', 'Mawenzi', 'Dar es Salaam', '', '', 'Tanzania', '', 21),
('Julias Antoney', '', 0, '656076825', '', 'savana near savana bus stand', 'Mawenzi', 'Dar es Salaam', '', '', 'Tanzania', '', 22),
('Kimario', '', 0, '716443699', '', 'bima near New Camp 1', 'Tabata Bima', 'Dar es Salaam', '', '', 'Tanzania', '', 23),
('Devi Shirima', '', 0, '653226661', '', 'kisiwani near the palace 1', 'Mawenzi', 'Dar es Salaam', '', '', 'Tanzania', '', 24),
('Jacklin', '', 0, '656102610', '', 'Mawenzi kigamboni street', 'Mawenzi', 'Dar es Salaam', '', '', 'Tanzania', '', 25),
('Kimario', '', 0, '655050507', '', 'Mawenzi near Guestion Lodge', 'Mawenzi', 'Dar es Salaam', '', '', 'Tanzania', '', 26),
('Ivan Tarimo', '', 0, '719666680', '', 'chama shiba street', 'Mawenzi', 'Dar es Salaam', '', '', 'Tanzania', '', 27),
('Cathreen', '', 0, '719685660', '', 'savana bus stand near MPS Oil', 'Mawenzi', 'Dar es Salaam', '', '', 'Tanzania', '', 28),
('1aka ', '', 0, '767908503', '', 'Mawenzi near bus station', 'Mawenzi', 'Dar es Salaam', '', '', 'Tanzania', '', 29),
('Paksedi', '', 0, '712178842', '', 'chama behind chama Primary School', 'Mawenzi', 'Dar es Salaam', '', '', 'Tanzania', '', 30),
('Godson ', '', 0, '716136165', '', 'Kimanga Mandela juu street', 'Kimanga', 'Dar es Salaam', '', '', 'Tanzania', '', 31),
('Gelbert Godfrey', '', 0, '653321317', '', 'kisiwani near The Palace 1', 'Mawenzi', 'Dar es Salaam', '', '', 'Tanzania', '', 32),
('Joseph Luamber', '', 0, '652757539', '', 'Chama behind Chama Primary School', 'Mawenzi', 'Dar es Salaam', '', '', 'Tanzania', '', 33),
('Serafin Kimario', '', 0, '712469946', '', 'Mawenzi near bus stand street', 'Mawenzi', 'Dar es Salaam', '', '', 'Tanzania', '', 34),
('Angle ', '', 0, '673818160', '', 'savvana near mkamba lodge muungani street', 'Mawenzi', 'Dar es Salaam', '', '', 'Tanzania', '', 35),
('Straton Kavishe', '', 0, '712277339', '', 'Kimanga Njia Panda ya don street ', 'Kimanga', 'Dar es Salaam', '', '', 'Tanzania', '', 36),
('Jams Christopher', '', 0, '716476213', '', 'mawenzi near bus stand street', 'Mawenzi', 'Dar es Salaam', '', '', 'Tanzania', '', 37),
('Zuberi Ally', '', 0, '653282431', '', 'kisiwani near the palace 1', 'Mawenzi', 'Dar es Salaam', '', '', 'Tanzania', '', 38),
('Isack France', '', 0, '715367572', '', 'mawenzi near tesha shop', 'Mawenzi', 'Dar es Salaam', '', '', 'Tanzania', '', 39),
('Libe', '', 0, '786920102', '', 'Mawenzi near by Highbury', 'Mawenzi', 'Dar es Salaam', '', '', 'Tanzania', '', 40),
('1aka', '', 0, '712477006', '', 'shiba street near shiba bus stand', 'Mawenzi', 'Dar es Salaam', '', '', 'Tanzania', '', 41),
('Mark masawe', '', 0, '658365603', '', 'mawenzi near bus stand', 'Mawenzi', 'Dar es Salaam', '', '', 'Tanzania', '', 42),
('Rustis Masawe', '', 0, '658448524', '', 'Kimanga Shop saibaba street', 'Kimanga', 'Dar es Salaam', '', '', 'Tanzania', '', 43),
('Lucy Jeremiah ', '', 0, '719119555', '', 'mazembe', 'Mawenzi', 'Dar es Salaam', '', '', 'Tanzania', '', 44),
('Sunday Urio', '', 0, '766556925', '', 'Savana masoko street', '', 'Dar es Salaam', '', '', 'Tanzania', '', 45),
('Serafin Kimario', '', 0, '762272152', '', 'Chama kichef chef street', '', 'Dar es Salaam', '', '', 'Tanzania', '', 46),
('Shabani', '', 0, '713006001', '', 'Bima St.Merry Road', '', 'Dar es Salaam', '', '', 'Tanzania', '', 47),
('Eliah Timoth', '', 0, '785001815', '', 'Kimanga mandela juu', 'Kimanga', 'Dar es Salaam', '', '', 'Tanzania', '', 48),
('Kevin Ivon', '', 0, '719032089', '', 'Kimanga Mandela Juu street', 'Kimanga', 'Dar es Salaam', '', '', 'Tanzania', '', 49),
('Kavishe Tarimo', '', 0, '628485013', '', 'Kimanga Aramba CCM', 'Kimanga', 'Dar es Salaam', '', '', 'Tanzania', '', 50),
('Pasco Mnyalu', '', 0, '767247533', '', 'Kimanga Mandela Chini posta street', 'Kimanga', 'Dar es Salaam', '', '', 'Tanzania', '', 51),
('Pinda Simkoku', '', 0, '717669967', '', 'Kimanga njia panda don bus stand', 'Kimanga', 'Dar es Salaam', '', '', 'Tanzania', '', 52),
('Julias', '', 0, '714166301', '', 'Kimanga funga funga street', 'Kimanga', 'Dar es Salaam', '', '', 'Tanzania', '', 53),
('Denis Paroko', '', 0, '655397302', '', 'Kimanga Mandela Chini', 'Kimanga', 'Dar es Salaam', '', '', 'Tanzania', '', 54),
('Damas Godfrey', '', 0, '717920398', '', 'Kimanga Upogoroni street ', 'Kimanga', 'Dar es Salaam', '', '', 'Tanzania', '', 55),
('Wini5da', '', 0, '7146465200', '', 'Kimanga Mandela juu', 'Kimanga', 'Dar es Salaam', '', '', 'Tanzania', '', 56),
('Dastan D Shini', '', 0, '677287793', '', 'Kimanga Mandela chini street', 'Kimanga', 'Dar es Salaam', '', '', 'Tanzania', '', 57),
('Martin Mroso', '', 0, '676548544', '', 'kimanga Mandela Juu', 'Kimanga', 'Dar es Salaam', '', '', 'Tanzania', '', 58),
('Kimario', '', 0, '763916794', '', 'kimanga near njia panda bus stand', 'Kimanga', 'Dar es Salaam', '', '', 'Tanzania', '', 59),
('Esam Chachalia', '', 0, '778895', '', 'Kimanga Mandela chini street Magengeni', 'Kimanga', 'Dar es Salaam', '', '', 'Tanzania', '', 60),
('Luka mroso', '', 0, '713667045', '', 'Mandela Juu Kimanga', 'Kimanga', 'Dar es Salaam', '', '', 'Tanzania', '', 61),
('Mterini ', '', 0, '788806417', '', 'Kimanga Upogoroni Street', 'Kimanga', 'Dar es Salaam', '', '', 'Tanzania', '', 62),
('Gasper Tarimo', '', 0, '679230245', '', 'Kimanga mandela chini street', 'Kimanga', 'Dar es Salaam', '', '', 'Tanzania', '', 63),
('Silayo', '', 0, '78955', '', 'Upogoroni Street', 'Kimanga', 'Dar es Salaam', '', '', 'Tanzania', '', 64),
('Patric Mushi ', '', 0, '713582454', '', 'Kimanga Upogoroni Street', 'Kimanga', 'Dar es Salaam', '', '', 'Tanzania', '', 65),
('Godwin Kimaro', '', 0, '713561946', '', 'Kimanga Upogoronii', 'Kimanga', 'Dar es Salaam', '', '', 'Tanzania', '', 66),
('Juma Mrangi', '', 0, '7855', '', 'Kimanga Mandela chini Posta street', 'Kimanga', 'Dar es Salaam', '', '', 'Tanzania', '', 67),
('Mama Inno', '', 0, '714484261', '', 'Kimanga Aramba CCM', 'Kimanga', 'Dar es Salaam', '', '', 'Tanzania', '', 68),
('Salum', '', 0, '554661', '', 'sokoine street ', 'Kimanga', 'Dar es Salaam', '', '', 'Tanzania', '', 69),
('Aloyce Shirima', '', 0, '653204839', '', 'Kimanga Mandela juu street', 'Kimanga', 'Dar es Salaam', '', '', 'Tanzania', '', 70),
('Mama bwera', '', 0, '715939143', '', 'kimanga by njia panda bus stand', 'Kimanga', 'Dar es Salaam', '', '', 'Tanzania', '', 71),
('Juma Mussa', '', 0, '676927199', '', 'kimanga posta street with funga funga street', 'Kimanga', 'Dar es Salaam', '', '', 'Tanzania', '', 72),
('Romi Elsamee', '', 0, '754606015', '', 'Kimanga Mandela Chini street magengeni', 'Kimanga', 'Dar es Salaam', '', '', 'Tanzania', '', 73),
('Anna Shop', '', 0, '713239145', '', 'kimanga mandela juu', 'Kimanga', 'Dar es Salaam', '', '', 'Tanzania', '', 74),
('Abdullah', '', 0, '715460199', '', 'Kimanga Upogoroni', 'Kimanga', 'Dar es Salaam', '', '', 'Tanzania', '', 75),
('Stella', '', 0, '753336486', '', 'Kimanga Aramba CCM', 'Kimanga', 'Dar es Salaam', '', '', 'Tanzania', '', 76),
('Rustis Masawe', '', 0, '768388757', '', 'kimanga sokoine street', 'Kimanga', 'Dar es Salaam', '', '', 'Tanzania', '', 77),
('Godfrey', '', 0, '762393383', '', 'Kimanga mbuyuni street', 'Kimanga', 'Dar es Salaam', '', '', 'Tanzania', '', 78),
('Dikson Kimario', '', 0, '679516137', '', 'kimanga Mbuyuni street', 'Kimanga', 'Dar es Salaam', '', '', 'Tanzania', '', 79),
('Allex Kimario', '', 0, '715514070', '', 'kimanga Mbuyuni street', 'Kimanga', 'Dar es Salaam', '', '', 'Tanzania', '', 80),
('Jakson Ulomi', '', 0, '656393525', '', 'Kimanga mbuyuni', 'Kimanga', 'Dar es Salaam', '', '', 'Tanzania', '', 81),
('Immanuel', '', 0, '714358610', '', 'kimanga mwisho near kimanga primary school', 'Kimanga', 'Dar es Salaam', '', '', 'Tanzania', '', 82),
('Eben Masawe', '', 0, '762008703', '', 'Kimanga near 5land 1', 'Kimanga', 'Dar es Salaam', '', '', 'Tanzania', '', 83),
('Gabriel Tesha', '', 0, '756382602', '', 'kimanga mbuyunii', 'Kimanga', 'Dar es Salaam', '', '', 'Tanzania', '', 84),
('Jofrey Shirima', '', 0, '674916444', '', 'kimanga Mbuyuni', 'Kimanga', 'Dar es Salaam', '', '', 'Tanzania', '', 85),
('Nazar Hassan', '', 0, '652794407', '', 'kimanga near jiandae bus stand', '', 'Dar es Salaam', '', '', 'Tanzania', '', 86),
('Rukia Yussuf', '', 0, '652454995', '', 'Savvana masoko strert', '', 'Dar es Salaam', '', '', 'Tanzania', '', 87),
('Aquilin Tarimo', '', 0, '658061288', '', 'Kimanga near to Bonde la Mchicha', '', 'Dar es Salaam', '', '', 'Tanzania', '', 88),
('Celice Tarimo', '', 0, '674357447', '', 'Kimanga near to bonde la mchicha', '', 'Dar es Salaam', '', '', 'Tanzania', '', 89),
('Dada amina', '', 0, '763873783', '', 'tabata mwananchi jirani na joint park', '', 'Dar es Salaam', '', '', 'Tanzania', '', 90),
('Pasco', '', 0, '674229535', '', 'Chang\'ombe Mwembeni Street', 'Chang\'Ombe', 'Dar es Salaam', '', '', 'Tanzania', '', 91),
('Vicky Andrew', '', 0, '677464695', '', 'Chama near Italian 6', 'Mawenzi', 'Dar es Salaam', '', '', 'Tanzania', '', 92),
('Samba', '', 0, '656410397', '', 'Chang\'ombe mwisho', 'Chang\'Ombe', 'Dar es Salaam', '', '', 'Tanzania', '', 93),
('Harrison', '', 0, '717331828', '', 'Chama near Shiba stand', 'Mawenzi', 'Dar es Salaam', '', '', 'Tanzania', '', 94),
('Mrs Mlimi', '', 0, '713660137', '', 'Magengeni near magengeni bus stand', 'Liwiti', 'Dar es Salaam', '', '', 'Tanzania', '', 95),
('Alice', '', 0, '7321', '', 'chama near chama bus stand', 'Mawenzi', 'Dar es Salaam', '', '', 'Tanzania', '', 96),
('Mattius Salamba', '', 0, '684074400', '', 'bima tabata umoja road', 'Tabata Bima', 'Dar es Salaam', '', '', 'Tanzania', '', 97),
('Betty', '', 0, '656386871', '', 'Chang\'ombe mwembeni street', 'Chang\'Ombe', 'Dar es Salaam', '', '', 'Tanzania', '', 98),
('Mudy', '', 0, '719107131', '', 'Liwiti posta street', 'Liwiti', 'Dar es Salaam', '', '', 'Tanzania', '', 99),
('Hellen', '', 0, '745355765', '', 'sanene saibaba street', 'Sanene', 'Dar es Salaam', '', '', 'Tanzania', '', 100),
('Deo Delobakari', '', 0, '679245615', '', 'liwiti posta street', 'Liwiti', 'Dar es Salaam', '', '', 'Tanzania', '', 101),
('Abuu', '', 0, '717054260', '', 'Liwiti Street behind liwiti primary school', 'Liwiti', 'Dar es Salaam', '', '', 'Tanzania', '', 102),
('Elisha', '', 0, '714972514', '', 'bima umoja road near Cecy 6', 'Tabata Bima', 'Dar es Salaam', '', '', 'Tanzania', '', 103),
('Rose', '', 0, '676866277', '', 'Chama near chama bus stand', 'Mawenzi', 'Dar es Salaam', '', '', 'Tanzania', '', 104),
('Henry', '', 0, '656751951', '', 'Chang\'ombe mwisho Amani street', 'Chang\'Ombe', 'Dar es Salaam', '', '', 'Tanzania', '', 105),
('Allan', '', 0, '655830474', '', 'Magengeni street ', 'Liwiti', 'Dar es Salaam', '', '', 'Tanzania', '', 106),
('Cosmas Kimario', '', 0, '713094944', '', 'Bima street Road', 'Tabata Bima', 'Dar es Salaam', '', '', 'Tanzania', '', 107),
('Priclscus Swai', '', 0, '675389805', '', 'msimbazi kitaa street near by banda la mpira', 'Bima', 'Dar es Salaam', '', '', 'Tanzania', '', 108),
('Aretus Silayo', '', 0, '714829236', '', 'Magengeni street near by Mi Casa 6', 'Liwiti', 'Dar es Salaam', '', '', 'Tanzania', '', 109),
('John Mrema', '', 0, '752475079', '', 'Bima Umoja Road and Msamvu', 'Tabata Bima', 'Dar es Salaam', '', '', 'Tanzania', '', 110),
('Gerald Cosmas', '', 0, '787526888', '', 'Chang\'ombe mfaume Street', 'Chang\'Ombe', 'Dar es Salaam', '', '', 'Tanzania', '', 111),
('Rose', '', 0, '758221628', '', 'Chang\'ombe mwisho amani street ', 'Chang\'Ombe', 'Dar es Salaam', '', '', 'Tanzania', '', 112),
('Flora Ramadhani', '', 0, '718923463', '', 'Bima near Tenge street behind Urasa Shop', 'Tabata Bima', 'Dar es Salaam', '', '', 'Tanzania', '', 113),
('Niko', '', 0, '672243979', '', 'sanene street', 'Sanene', 'Dar es Salaam', '', '', 'Tanzania', '', 114),
('Sufiani Bakhresa', '', 0, '656647670', '', 'Chang\'ombe mwembeni street', 'Chang\'Ombe', 'Dar es Salaam', '', '', 'Tanzania', '', 115),
('Chrispin', '', 0, '2.55714E+11', '', 'Chang\'ombe Mwisho', 'Chang\'Ombe', 'Dar es Salaam', '', '', 'Tanzania', '', 116),
('Caren', '', 0, '687064982', '', 'Umoja road cecy 6', 'Bima', 'Dar es Salaam', '', '', 'Tanzania', '', 117),
('Zenice', '', 0, '712929189', '', 'Muslim market near by local goverment', 'Bima', 'Dar es Salaam', '', '', 'Tanzania', '', 118),
('Bitrece Mariale', '', 0, '713602019', '', 'bima mtaa wa tenge ', 'Tabata Bima', 'Dar es Salaam', '', '', 'Tanzania', '', 119),
('F Shirima', '', 0, '787628173', '', 'bima Umoja Road ', 'Tabata Bima', 'Dar es Salaam', '', '', 'Tanzania', '', 120),
('Nelly Vie', '', 0, '759486059', '', 'sanene street ', 'Sanene', 'Dar es Salaam', '', '', 'Tanzania', '', 121),
('Sia', '', 0, '719263576', '', 'Liwiti misiwe A street Behind Liwiti Primary School', 'Liwiti', 'Dar es Salaam', '', '', 'Tanzania', '', 122),
('Nasra Urasa', '', 0, '755530424', '', 'sanene near by sanene bus stand', 'Sanene', 'Dar es Salaam', '', '', 'Tanzania', '', 123),
('Patrick Roman', '', 0, '654946719', '', 'Bima near to Urasa Shop', '', 'Dar es Salaam', '', '', 'Tanzania', '', 124),
('meneja enock', '', 0, '762149200', '', 'tabata bima jirani na kwa urassa', '', 'Dar es Salaam', '', '', 'Tanzania', '', 125),
('Tegemea Robert Mbashi', '', 0, '656260136', '', 'tabata bima umoja road', '', 'Dar es Salaam', '', '', 'Tanzania', '', 126),
('Method', '', 0, '712426918', '', 'Magomeni kagera', 'Magomeni mikumi', 'Dar es Salaam', '', '', 'Tanzania', '', 127),
('edwin', '', 0, '657750627', '', 'Manzese Tiptop', '', 'Dar es Salaam', '', '', 'Tanzania', '', 128),
('mlichi', '', 0, '686997210', '', 'Manzese Tiptop', '', 'Dar es Salaam', '', '', 'Tanzania', '', 129),
('Nelson Mrema', '', 0, '0754 585838', '', 'Kinondoni Manyanya', '', 'Dar es Salaam', '', '', 'Tanzania', '', 130),
('Mzee MPS', '', 0, '715186235', '', 'Manzese Tiptop', '', 'Dar es Salaam', '', '', 'Tanzania', '', 131),
('Procorine shayo', '', 0, '713286400', '', 'Manzese Tiptop', '', 'Dar es Salaam', '', '', 'Tanzania', '', 132),
('Lazaro William Mainoya', '', 0, '715850439', '', 'Tandale Sokoni', '', 'Dar es Salaam', '', '', 'Tanzania', '', 133),
('Getrude', '', 0, '0719 044096', '', 'Manzese Big Brother', '', 'Dar es Salaam', '', '', 'Tanzania', '', 134),
('Onesmo Kisenga', '', 0, '713387888', '', 'Tandale Sokoni Street', '', 'Dar es Salaam', '', '', 'Tanzania', '', 135),
('kileo', '', 0, '787606048', '', 'Kinondoni Manyanya', '', 'Dar es Salaam', '', '', 'Tanzania', '', 136),
('gabriel', '', 0, '715286157', '', 'Manzese Tiptop', '', 'Dar es Salaam', '', '', 'Tanzania', '', 137),
('shirima', '', 0, '0784 937534', '', 'Manzese', '', 'Dar es Salaam', '', '', 'Tanzania', '', 138),
('Khalid Kengabo', '', 0, '0658 222019', '', 'Ubungo Riverside Near Bridge', '', 'Dar es Salaam', '', '', 'Tanzania', '', 139),
('Christian  Tarimo', '', 0, '0713 245806', '', 'Ubungo Riverside Makoka Road', '', 'Dar es Salaam', '', '', 'Tanzania', '', 140),
('Robogasti Mrina', '', 0, '756897328', '', 'mburahati darajani', '', 'Dar es Salaam', '', '', 'Tanzania', '', 141),
('Joseph Paul', '', 0, '715835567', '', 'Mabibo opp na geti la chuo cha NIT', '', 'Dar es Salaam', '', '', 'Tanzania', '', 142),
('Leokadia Paul Riwa', '', 0, '715377703', '', 'Ubungo Bus Terminal', '', 'Dar es Salaam', '', '', 'Tanzania', '', 143),
('Shamis Seif Suleiman', '', 0, '652717267', '', 'kigogo kintiku gorofani kwa wapemba', '', 'Dar es Salaam', '', '', 'Tanzania', '', 144),
('Haji', '', 0, '714232827', '', 'Kibaha Stand', '', 'Dar es Salaam', '', '', 'Tanzania', '', 145),
('Asenga', '', 0, '713703456', '', 'Mbezi Luis Mwisho', '', 'Dar es Salaam', '', '', 'Tanzania', '', 146),
('Baba Vaii', '', 0, '655845714', '', 'Mbezi Msuguri', '', 'Dar es Salaam', '', '', 'Tanzania', '', 147),
('Eliaza Mbaga', '', 0, '712559727', '', 'Kongowe near police station', '', 'Dar es Salaam', '', '', 'Tanzania', '', 148),
('Praygod 1gi', '', 0, '0766 904898', '', 'Kimara Mwisho Bonyokwa Road', '', 'Dar es Salaam', '', '', 'Tanzania', '', 149),
('Edani Method Josephati', '', 0, '655606778', '', 'kibamba luguruni', '', 'Dar es Salaam', '', '', 'Tanzania', '', 150),
('Sherin Jumanne Kishimba', '', 0, '759831223', '', 'Kongowe soga kibaha', '', 'Dar es Salaam', '', '', 'Tanzania', '', 151),
('Levina Denis Lasty', '', 0, '7.15388E+18', '', 'magomeni kagera', '', 'Dar es Salaam', '', '', 'Tanzania', '', 152),
('Julius Urasa', '', 0, '716629151', '', 'manzese midizini', '', 'Dar es Salaam', '', '', 'Tanzania', '', 153),
('Method Adrian Silayo', '', 0, '712426918', '', 'magomeni kagera', '', 'Dar es Salaam', '', '', 'Tanzania', '', 154),
('Juvenal Mark Shayo', '', 0, '0719 690281', '', 'Hanansifu', '', 'Dar es Salaam', '', '', 'Tanzania', '', 155),
('Sun Biao', '', 0, '745454545', '', 'Morocco', 'Oysterbay', 'Dar es Salaam', '', '', 'Tanzania', '', 156),
('Mbwambo', '', 0, '715767970', '', 'Mbagala Rangi Tatu ', '', 'Dar es Salaam', '', '', 'Tanzania', '', 188),
('Msasira', '', 0, '752760319', '', 'Vijibweni Soweto', '', 'Dar es Salaam', '', '', 'Tanzania', '', 189),
('J shop', '', 0, '754538918', '', 'Rangi Tatu Street', '', 'Dar es Salaam', '', '', 'Tanzania', '', 190),
('Michael peter shirima', '', 0, '655092066', '', 'KIGAMBONI', '', 'Dar es Salaam', '', '', 'Tanzania', '', 191),
('Tweve', '', 0, '659336412', '', 'Mbaga Rangi Tatu Keepleft Kwa Upande Wa Kulia Ambako Ma2 Y Jumla Yamejipanga', '', 'Dar es Salaam', '', '', 'Tanzania', '', 192),
('Manyovu', '', 0, '764425395', '', 'magengeni kisiwani', '', 'Dar es Salaam', '', '', 'Tanzania', '', 193),
('massawe', '', 0, '784804858', '', 'Mbagala Rangi 3', '', 'Dar es Salaam', '', '', 'Tanzania', '', 194),
('Mama Abdalah ', '', 0, '719097404', '', 'Charambe Magengeni', '', 'Dar es Salaam', '', '', 'Tanzania', '', 195),
('Deus Sebastien Urio', '', 0, '758560189', '', 'Kongowe', '', 'Dar es Salaam', '', '', 'Tanzania', '', 196),
('mbute', '', 0, '718812385', '', 'mbande from doglas shop', '', 'Dar es Salaam', '', '', 'Tanzania', '', 197),
('Kira', '', 0, '685981876', '', 'kiburugwa mtaa wa zombokoni', '', 'Dar es Salaam', '', '', 'Tanzania', '', 198),
('Damas Muha', '', 0, '762204626', '', 'Mbande Stand Karibu Na Mbute Shop Kulia', '', 'Dar es Salaam', '', '', 'Tanzania', '', 199),
('Tesha', '', 0, '0714 232873', '', 'Mbagala Kizuiani - Mahakamani', '', 'Dar es Salaam', '', '', 'Tanzania', '', 200),
('Sato Joseph ', '', 0, '787183335', '', 'Kwa Mbiku', '', 'Dar es Salaam', '', '', 'Tanzania', '', 201),
('Frank John Kira', '', 0, '716653846', '', 'majimatitu', '', 'Dar es Salaam', '', '', 'Tanzania', '', 202),
('Sebastian Killa', '', 0, '714391464', '', 'Mbagala Chamanzi', '', 'Dar es Salaam', '', '', 'Tanzania', '', 203),
('Jimmson', '', 0, '678998655', '', 'Mbagala Kuu Bus Station', '', 'Dar es Salaam', '', '', 'Tanzania', '', 204),
('Muniko', '', 0, '0788705470/0714966171', '', 'Mbagala Kizuiani', '', 'Dar es Salaam', '', '', 'Tanzania', '', 205),
('1ico', '', 0, '456879', '', 'Mtongani After The Round From The Bridge Head Eft Then Move Forward Asking For 1ico Shop', '', 'Dar es Salaam', '', '', 'Tanzania', '', 206),
('chacha', '', 0, '657597259', '', 'Kaa Sawa Street Mtoni', '', 'Dar es Salaam', '', '', 'Tanzania', '', 207),
('Jimson Gervas Gabriel ', '', 0, '683806306', '', 'Kijichi ', '', 'Dar es Salaam', '', '', 'Tanzania', '', 208),
('Celestine Francis mroso', '', 0, '713959633', '', 'Yombo Relini', '', 'Dar es Salaam', '', '', 'Tanzania', '', 209),
('Ngewa ', '', 0, '719583515', '', 'Yombo Kwa Limboa Street ', '', 'Dar es Salaam', '', '', 'Tanzania', '', 210),
('Mateo', '', 0, '659710902', '', 'Yombo Mwisho Wa Lami, Near By Mwisho Wa Lami Bus Station ', '', 'Dar es Salaam', '', '', 'Tanzania', '', 211),
('Kibomboi ', '', 0, '0684 980146', '', 'Lumo Nearby Jambo Park', '', 'Dar es Salaam', '', '', 'Tanzania', '', 212),
('Mashi ', '', 0, '655881028', '', 'Yombo Buza, near by roundabout ya kitunda', '', 'Dar es Salaam', '', '', 'Tanzania', '', 213),
('Victor Munishi', '', 0, '0784 489393', '', 'Buza/Yombo Abiola', '', 'Dar es Salaam', '', '', 'Tanzania', '', 214),
('Paul A Swai', '', 0, '674349848', '', 'Yombo njia panda ya mwinyi', '', 'Dar es Salaam', '', '', 'Tanzania', '', 215),
('Kimario', '', 0, '762667842', '', 'Mchangani Karibu Na Hasani Shop', '', 'Dar es Salaam', '', '', 'Tanzania', '', 216),
('Masmu one', '', 0, '652925696', '', 'Manjunju 1a1a inayoingia kulia pembeni ya Meridianbet 2 lipo kulia mbele kidogo', '', 'Dar es Salaam', '', '', 'Tanzania', '', 217),
('Mr Mlay', '', 0, '656561062', '', 'Sinza C, mawasiliano opposite to mawasiliano bus stop', 'Sinza C', 'Dar es Salaam', '', '', 'Tanzania', '', 218),
('Anustiatha', '', 0, '753788754', '', 'Kijitonyama', '', 'Dar es Salaam', '', '', 'Tanzania', '', 219),
('YUSTA KIMARIO', '', 0, '0711 602121', '', 'Mwananywamala Kwa Makima', '', 'Dar es Salaam', '', '', 'Tanzania', '', 220),
('PROCHES TARIMO', '', 0, '0652 458685', '', 'Mikocheni - Chwaku Street', '', 'Dar es Salaam', '', '', 'Tanzania', '', 221),
('TECKLA ANDREW', '', 0, '0713405902/0658292375', '', 'Sayansi Road', '', 'Dar es Salaam', '', '', 'Tanzania', '', 222),
('GITANI FRANCIS TAIRO', '', 0, '765111223', '', 'Kinondoni', '', 'Dar es Salaam', '', '', 'Tanzania', '', 223),
('MUSTAPHA MUSA URIO', '', 0, '716289957', '', 'Kijitonyama Kajenge Road Pembeni ya Nafuu 1', '', 'Dar es Salaam', '', '', 'Tanzania', '', 224),
('CHARLES OTIENO', '', 0, '719731643', '', 'KUNDUCHI', '', 'Dar es Salaam', '', '', 'Tanzania', '', 225),
('Titus Peter Sawe', '', 0, '744028026', '', 'Kinondoni Senkenke Street', '', 'Dar es Salaam', '', '', 'Tanzania', '', 226),
('Issa Paul Nyakisinda', '', 0, '683653175', '', 'Msasani Mandazi road', 'Msasani', 'Dar es Salaam', '', '', 'Tanzania', '', 227),
('A4mani', '', 0, '654209629', '', 'Goba Stand', '', 'Dar es Salaam', '', '', 'Tanzania', '', 228),
('DOGA', '', 0, '717089527', '', 'MBWENI MITI MITATU KWENYE MAFREMU MKONO WA KULIA', 'Mbweni', 'Dar es Salaam', '', '', 'Tanzania', '', 229),
('lamosai', '', 0, '712493980', '', 'matosa stand', '', 'Dar es Salaam', '', '', 'Tanzania', '', 230),
('NGADAYA', '', 0, '714053420', '', 'Kawe', '', 'Dar es Salaam', '', '', 'Tanzania', '', 231),
('MLAI', '', 0, '0675 328938', '', 'Mwenge', '', 'Dar es Salaam', '', '', 'Tanzania', '', 232),
('REGINALD E MREMA', '', 0, '754463658', '', 'MBEZI MAKONDE', '', 'Dar es Salaam', '', '', 'Tanzania', '', 233),
('OMARY ALLY', '', 0, '0713 002299', '', 'Kawe Msikitini', '', 'Dar es Salaam', '', '', 'Tanzania', '', 234),
('THADEO C. BIHAGALA', '', 0, '0713 150448', '', 'Bunju A Shule', 'Bunju', 'Dar es Salaam', '', '', 'Tanzania', '', 235),
('CLEMENT ANTONY SINDABAHA', '', 0, ' ', '', 'Tegeta', '', 'Dar es Salaam', '', '', 'Tanzania', '', 236),
('TAGATO H BIHULA', '', 0, '657506590', '', 'Tegeta', '', 'Dar es Salaam', '', '', 'Tanzania', '', 237),
('Mwanga', '', 0, '0767 512682', '', 'Chanika Mwisho', 'Chanika', 'Dar es Salaam', '', '', 'Tanzania', '', 238),
('Mama Mudi', '', 0, '715232780', '', 'Ukonga Banana', 'Ukonga', 'Dar es Salaam', '', '', 'Tanzania', '', 239),
('Jennie', '', 0, '655495918', '', 'mbuyuni kituo kipya', 'Kipawa', 'Dar es Salaam', '', '', 'Tanzania', '', 240),
('Godlend uroki', '', 0, '0716-046003', '', 'Chanika Hostel', 'Chanika', 'Dar es Salaam', '', '', 'Tanzania', '', 241),
('Yasin Ally Duru', '', 0, '652666421', '', 'Yombo Relini', 'Yombo Relini', 'Dar es Salaam', '', '', 'Tanzania', '', 242),
('Mrs. tesha', '', 0, '655204918', '', 'Majumba Sita', 'Kipawa', 'Dar es Salaam', '', '', 'Tanzania', '', 243),
('twambombo', '', 0, '710606622', '', 'Karakata Airport', 'Kipawa', 'Dar es Salaam', '', '', 'Tanzania', '', 244),
('urasa', '', 0, '656393780', '', 'Bima Near Tenge Street Behind Triple M 6', 'Bima', 'Dar es Salaam', '', '', 'Tanzania', '', 245),
('Urassa', '', 0, '767887453', '', 'Tabata kifuru', '', 'Dar es Salaam', '', '', 'Tanzania', '', 246),
('kimori ', '', 0, '0715 384063', '', 'Chanika Mwisho', 'Chanika', 'Dar es Salaam', '', '', 'Tanzania', '', 247),
('mr Ali (Whole Sale)', '', 0, '717580918', '', 'Kitunda kivule', 'Kitunda', 'Dar es Salaam', '', '', 'Tanzania', '', 248),
('Mama Light', '', 0, '712933702', '', 'Kivule Kwa Mpemba', 'Kivule', 'Dar es Salaam', '', '', 'Tanzania', '', 249),
('Mikoba', '', 0, '17', '', 'chanika msumbiji mwisho ', 'Chanika', 'Dar es Salaam', '', '', 'Tanzania', '', 250),
('china', '', 0, '659089317', '', 'Kigogo Fresh', 'Kigogo Fresh', 'Dar es Salaam', '', '', 'Tanzania', '', 251),
('Renatus peter kimaro', '', 0, '784642523', '', 'Gongo La Mboto', 'Gongo La Mboto', 'Dar es Salaam', '', '', 'Tanzania', '', 252),
('gongo la mboto', '', 0, '786365655', '', 'Gongo La Mboto', 'Gongo La Mboto', 'Dar es Salaam', '', '', 'Tanzania', '', 253),
('Rehema kimaro', '', 0, '0752 858831', '', 'Kinyamwezi', 'Kinyerezi', 'Dar es Salaam', '', '', 'Tanzania', '', 254),
('Zainabu', '', 0, '0712 111191', '', 'Pugu', 'Pugu', 'Dar es Salaam', '', '', 'Tanzania', '', 255),
('kimaro', '', 0, '653651648', '', 'Kigogo Fresh', 'Kigogo Fresh', 'Dar es Salaam', '', '', 'Tanzania', '', 256),
('Adam Robert  manumba', '', 0, '713804780', '', 'Ukonga', 'Ukonga', 'Dar es Salaam', '', '', 'Tanzania', '', 257),
('Salim', '', 0, '0784 096639', '', 'Mzam1auni Gongolambato', 'Mzam1auni', 'Dar es Salaam', '', '', 'Tanzania', '', 258),
('Abdallah', 'Abdillah', 0, '', '', '', '', '', '', '', '', '', 259),
('John ', 'Pombe', 1, '', '', '', '', '', '', '', '', '', 260);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_permissions`
--

CREATE TABLE `ospos_permissions` (
  `permission_id` varchar(255) NOT NULL,
  `module_id` varchar(255) NOT NULL,
  `location_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_permissions`
--

INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
('config', 'config', NULL),
('customers', 'customers', NULL),
('employees', 'employees', NULL),
('expenses', 'expenses', NULL),
('expenses_categories', 'expenses_categories', NULL),
('giftcards', 'giftcards', NULL),
('home', 'home', NULL),
('items', 'items', NULL),
('items_Ila-Zone 10', 'items', 6),
('items_Ila-Zone 18', 'items', 7),
('items_Ila-Zone 2', 'items', 8),
('items_Ila-Zone 20', 'items', 9),
('items_Ila-Zone 23', 'items', 10),
('items_Ila-Zone 28', 'items', 11),
('items_Ila-Zone 29', 'items', 12),
('items_Ila-Zone 7', 'items', 13),
('items_Knd-Zone 1', 'items', 14),
('items_Knd-Zone 26', 'items', 15),
('items_Knd-Zone 31', 'items', 16),
('items_Knd-Zone 5', 'items', 17),
('items_Knd-Zone 6', 'items', 18),
('items_Knd-Zone 8', 'items', 19),
('items_Knd-Zone 9', 'items', 20),
('items_stock', 'items', 1),
('items_Tmk-Zone 19', 'items', 22),
('items_Tmk-Zone 21', 'items', 23),
('items_Tmk-Zone 22', 'items', 24),
('items_Tmk-Zone 24', 'items', 25),
('items_Tmk-Zone 25', 'items', 26),
('items_Tmk-Zone 27', 'items', 27),
('items_Tmk-Zone 3', 'items', 28),
('items_Tmk-Zone 5', 'items', 21),
('items_Ubg-Zone 11', 'items', 29),
('items_Ubg-Zone 12', 'items', 30),
('items_Ubg-Zone 13', 'items', 31),
('items_Ubg-Zone 14', 'items', 32),
('items_Ubg-Zone 16', 'items', 33),
('items_Ubg-Zone 17', 'items', 34),
('items_Ubg-Zone 30', 'items', 35),
('items_Ubg-Zone 4', 'items', 36),
('items_WholesaleBB-2-Ila', 'items', 3),
('items_WholesaleBB-3-Tmk', 'items', 4),
('items_WholesaleBB-4-Ila', 'items', 5),
('item_kits', 'item_kits', NULL),
('messages', 'messages', NULL),
('office', 'office', NULL),
('receivings', 'receivings', NULL),
('receivings_Ila-Zone 10', 'receivings', 6),
('receivings_Ila-Zone 18', 'receivings', 7),
('receivings_Ila-Zone 2', 'receivings', 8),
('receivings_Ila-Zone 20', 'receivings', 9),
('receivings_Ila-Zone 23', 'receivings', 10),
('receivings_Ila-Zone 28', 'receivings', 11),
('receivings_Ila-Zone 29', 'receivings', 12),
('receivings_Ila-Zone 7', 'receivings', 13),
('receivings_Knd-Zone 1', 'receivings', 14),
('receivings_Knd-Zone 26', 'receivings', 15),
('receivings_Knd-Zone 31', 'receivings', 16),
('receivings_Knd-Zone 5', 'receivings', 17),
('receivings_Knd-Zone 6', 'receivings', 18),
('receivings_Knd-Zone 8', 'receivings', 19),
('receivings_Knd-Zone 9', 'receivings', 20),
('receivings_stock', 'receivings', 1),
('receivings_Tmk-Zone 19', 'receivings', 22),
('receivings_Tmk-Zone 21', 'receivings', 23),
('receivings_Tmk-Zone 22', 'receivings', 24),
('receivings_Tmk-Zone 24', 'receivings', 25),
('receivings_Tmk-Zone 25', 'receivings', 26),
('receivings_Tmk-Zone 27', 'receivings', 27),
('receivings_Tmk-Zone 3', 'receivings', 28),
('receivings_Tmk-Zone 5', 'receivings', 21),
('receivings_Ubg-Zone 11', 'receivings', 29),
('receivings_Ubg-Zone 12', 'receivings', 30),
('receivings_Ubg-Zone 13', 'receivings', 31),
('receivings_Ubg-Zone 14', 'receivings', 32),
('receivings_Ubg-Zone 16', 'receivings', 33),
('receivings_Ubg-Zone 17', 'receivings', 34),
('receivings_Ubg-Zone 30', 'receivings', 35),
('receivings_Ubg-Zone 4', 'receivings', 36),
('receivings_WholesaleBB-2-Ila', 'receivings', 3),
('receivings_WholesaleBB-3-Tmk', 'receivings', 4),
('receivings_WholesaleBB-4-Ila', 'receivings', 5),
('reports', 'reports', NULL),
('reports_categories', 'reports', NULL),
('reports_customers', 'reports', NULL),
('reports_discounts', 'reports', NULL),
('reports_employees', 'reports', NULL),
('reports_expenses_categories', 'reports', NULL),
('reports_inventory', 'reports', NULL),
('reports_items', 'reports', NULL),
('reports_payments', 'reports', NULL),
('reports_receivings', 'reports', NULL),
('reports_sales', 'reports', NULL),
('reports_suppliers', 'reports', NULL),
('reports_taxes', 'reports', NULL),
('sales', 'sales', NULL),
('sales_delete', 'sales', NULL),
('sales_Ila-Zone 10', 'sales', 6),
('sales_Ila-Zone 18', 'sales', 7),
('sales_Ila-Zone 2', 'sales', 8),
('sales_Ila-Zone 20', 'sales', 9),
('sales_Ila-Zone 23', 'sales', 10),
('sales_Ila-Zone 28', 'sales', 11),
('sales_Ila-Zone 29', 'sales', 12),
('sales_Ila-Zone 7', 'sales', 13),
('sales_Knd-Zone 1', 'sales', 14),
('sales_Knd-Zone 26', 'sales', 15),
('sales_Knd-Zone 31', 'sales', 16),
('sales_Knd-Zone 5', 'sales', 17),
('sales_Knd-Zone 6', 'sales', 18),
('sales_Knd-Zone 8', 'sales', 19),
('sales_Knd-Zone 9', 'sales', 20),
('sales_stock', 'sales', 1),
('sales_Tmk-Zone 19', 'sales', 22),
('sales_Tmk-Zone 21', 'sales', 23),
('sales_Tmk-Zone 22', 'sales', 24),
('sales_Tmk-Zone 24', 'sales', 25),
('sales_Tmk-Zone 25', 'sales', 26),
('sales_Tmk-Zone 27', 'sales', 27),
('sales_Tmk-Zone 3', 'sales', 28),
('sales_Tmk-Zone 5', 'sales', 21),
('sales_Ubg-Zone 11', 'sales', 29),
('sales_Ubg-Zone 12', 'sales', 30),
('sales_Ubg-Zone 13', 'sales', 31),
('sales_Ubg-Zone 14', 'sales', 32),
('sales_Ubg-Zone 16', 'sales', 33),
('sales_Ubg-Zone 17', 'sales', 34),
('sales_Ubg-Zone 30', 'sales', 35),
('sales_Ubg-Zone 4', 'sales', 36),
('sales_WholesaleBB-2-Ila', 'sales', 3),
('sales_WholesaleBB-3-Tmk', 'sales', 4),
('sales_WholesaleBB-4-Ila', 'sales', 5),
('suppliers', 'suppliers', NULL),
('taxes', 'taxes', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_receivings`
--

CREATE TABLE `ospos_receivings` (
  `receiving_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `supplier_id` int(10) DEFAULT NULL,
  `employee_id` int(10) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `receiving_id` int(10) NOT NULL,
  `payment_type` varchar(20) DEFAULT NULL,
  `reference` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_receivings`
--

INSERT INTO `ospos_receivings` (`receiving_time`, `supplier_id`, `employee_id`, `comment`, `receiving_id`, `payment_type`, `reference`) VALUES
('2019-02-07 01:23:33', 2, 1, '', 1, 'Cash', NULL),
('2019-06-15 13:15:48', 2, 1, '', 2, NULL, NULL),
('2019-07-31 10:50:20', 2, 1, NULL, 3, NULL, NULL),
('2019-07-31 10:52:59', 2, 1, NULL, 4, NULL, NULL),
('2019-07-31 10:54:17', NULL, 1, '', 5, 'Cash', NULL),
('2019-07-31 10:54:49', NULL, 1, '', 6, 'Cash', NULL),
('2019-07-31 10:56:45', 2, 1, NULL, 7, NULL, NULL),
('2019-07-31 10:58:28', 2, 1, NULL, 8, NULL, NULL),
('2019-07-31 10:59:44', 2, 1, NULL, 9, NULL, NULL),
('2019-07-31 11:23:29', 2, 1, NULL, 10, NULL, NULL),
('2019-07-31 11:24:40', 2, 1, NULL, 11, NULL, NULL),
('2019-07-31 11:31:13', 2, 1, NULL, 12, NULL, NULL),
('2019-07-31 11:41:40', 2, 1, NULL, 13, NULL, NULL),
('2019-07-31 11:43:42', 2, 1, NULL, 14, NULL, NULL),
('2019-07-31 11:49:40', 2, 1, NULL, 15, NULL, NULL),
('2019-07-31 13:32:00', 2, 1, NULL, 16, NULL, NULL),
('2019-07-31 14:10:15', 2, 1, NULL, 17, NULL, '6174'),
('2019-07-31 14:12:42', 2, 1, NULL, 18, NULL, '6174'),
('2019-07-31 14:20:03', 2, 1, NULL, 19, NULL, '61747'),
('2019-08-04 12:25:27', 2, 1, NULL, 20, NULL, NULL),
('2019-08-04 12:29:29', 2, 1, NULL, 21, NULL, NULL),
('2019-08-04 12:41:50', 2, 1, NULL, 22, NULL, NULL),
('2019-08-04 23:02:43', 2, 1, NULL, 23, NULL, NULL),
('2019-08-04 23:17:18', 2, 1, NULL, 24, NULL, NULL),
('2019-08-04 23:22:19', 2, 1, NULL, 25, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_receivings_items`
--

CREATE TABLE `ospos_receivings_items` (
  `receiving_id` int(10) NOT NULL DEFAULT 0,
  `item_id` int(10) NOT NULL DEFAULT 0,
  `description` varchar(30) DEFAULT NULL,
  `serialnumber` varchar(30) DEFAULT NULL,
  `line` int(3) NOT NULL,
  `quantity_purchased` decimal(15,3) NOT NULL DEFAULT 0.000,
  `item_cost_price` decimal(15,2) NOT NULL,
  `item_unit_price` decimal(15,2) NOT NULL,
  `discount_percent` decimal(15,2) NOT NULL DEFAULT 0.00,
  `item_location` int(11) NOT NULL,
  `receiving_quantity` decimal(15,3) NOT NULL DEFAULT 1.000
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_receivings_items`
--

INSERT INTO `ospos_receivings_items` (`receiving_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`, `receiving_quantity`) VALUES
(1, 2, '', NULL, 1, '20.000', '0.00', '0.00', '0.00', 6, '1.000'),
(2, 1, 'Best Computer ever', '', 1, '14.000', '0.00', '0.00', '0.00', 6, '1.000'),
(2, 1, 'Best Computer ever', '', 2, '-14.000', '0.00', '0.00', '0.00', 1, '1.000'),
(5, 1, 'Best Computer ever', '', 1, '1.000', '0.00', '0.00', '0.00', 3, '1.000'),
(6, 1, 'Best Computer ever', NULL, 1, '10.000', '0.00', '0.00', '0.00', 3, '1.000');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_retail_type`
--

CREATE TABLE `ospos_retail_type` (
  `retail_id` int(10) NOT NULL,
  `retail_name` varchar(255) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_retail_type`
--

INSERT INTO `ospos_retail_type` (`retail_id`, `retail_name`, `deleted`) VALUES
(1, 'Bar', 0),
(2, 'Duka', 0),
(3, 'Kiosk', 0),
(4, 'LAMP', 0),
(5, 'Mini-Supermarket', 0),
(6, 'Pub', 0),
(7, 'Sub Wholesale', 0),
(8, 'Sub-Wholesaler', 0),
(9, 'Supermarket', 0),
(10, 'Wholesale', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales`
--

CREATE TABLE `ospos_sales` (
  `sale_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `customer_id` int(10) DEFAULT NULL,
  `employee_id` int(10) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `invoice_number` varchar(32) DEFAULT NULL,
  `quote_number` varchar(32) DEFAULT NULL,
  `sale_id` int(10) NOT NULL,
  `sale_status` tinyint(2) NOT NULL DEFAULT 0,
  `dinner_table_id` int(11) DEFAULT NULL,
  `work_order_number` varchar(32) DEFAULT NULL,
  `sale_type` tinyint(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_sales`
--

INSERT INTO `ospos_sales` (`sale_time`, `customer_id`, `employee_id`, `comment`, `invoice_number`, `quote_number`, `sale_id`, `sale_status`, `dinner_table_id`, `work_order_number`, `sale_type`) VALUES
('2019-02-07 01:10:08', NULL, 1, '', NULL, NULL, 1, 0, NULL, NULL, 0),
('2019-02-12 14:25:50', 5, 1, '', NULL, NULL, 2, 0, NULL, NULL, 0),
('2019-06-17 16:42:06', 23, 1, '', NULL, NULL, 3, 0, NULL, 'W19000001', 0),
('2019-06-13 15:37:23', 5, 1, '', NULL, NULL, 4, 1, NULL, 'W19000002', 2),
('2019-06-13 16:44:05', 6, 1, '', NULL, NULL, 5, 0, NULL, NULL, 0),
('2019-06-14 05:05:03', 7, 1, '', NULL, NULL, 6, 2, NULL, NULL, 0),
('2019-06-14 05:07:20', 8, 1, '', NULL, NULL, 7, 0, NULL, NULL, 0),
('2019-06-14 05:07:55', 8, 1, '', NULL, NULL, 8, 0, NULL, NULL, 0),
('2019-06-14 05:09:58', 4, 1, '', NULL, NULL, 9, 0, NULL, NULL, 0),
('2019-06-18 05:33:25', 7, 1, '', NULL, NULL, 10, 0, NULL, NULL, 0),
('2019-06-18 05:35:09', NULL, 1, '', NULL, NULL, 11, 0, NULL, NULL, 0),
('2019-06-18 14:16:45', 13, 1, '', NULL, NULL, 12, 0, NULL, NULL, 0),
('2019-06-20 02:14:30', 4, 1, NULL, NULL, NULL, 13, 0, NULL, NULL, 0),
('2019-06-25 06:27:50', NULL, 1, '', NULL, NULL, 14, 0, NULL, NULL, 0),
('2019-06-25 06:28:26', 9, 1, '', NULL, NULL, 15, 0, NULL, NULL, 0),
('2019-06-26 15:47:23', 24, 1, '', NULL, NULL, 16, 0, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_items`
--

CREATE TABLE `ospos_sales_items` (
  `sale_id` int(10) NOT NULL DEFAULT 0,
  `item_id` int(10) NOT NULL DEFAULT 0,
  `description` varchar(255) DEFAULT NULL,
  `serialnumber` varchar(30) DEFAULT NULL,
  `line` int(3) NOT NULL DEFAULT 0,
  `quantity_purchased` decimal(15,3) NOT NULL DEFAULT 0.000,
  `item_cost_price` decimal(15,2) NOT NULL,
  `item_unit_price` decimal(15,2) NOT NULL,
  `discount_percent` decimal(15,2) NOT NULL DEFAULT 0.00,
  `item_location` int(11) NOT NULL,
  `print_option` tinyint(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_sales_items`
--

INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`, `item_location`, `print_option`) VALUES
(1, 1, 'Best Computer ever', '', 1, '85.000', '0.00', '1200.00', '0.00', 1, 0),
(1, 2, '', '', 2, '20.000', '0.00', '1000.00', '0.00', 6, 0),
(2, 1, 'Best Computer ever', '', 2, '1.000', '0.00', '1200.00', '0.00', 1, 0),
(3, 2, '', '', 1, '25.000', '0.00', '1000.00', '0.00', 6, 0),
(4, 2, '', '', 1, '10.000', '0.00', '1000.00', '0.00', 6, 0),
(5, 2, '', '', 1, '10.000', '0.00', '1000.00', '0.00', 6, 0),
(6, 2, '', '', 1, '1.000', '0.00', '1000.00', '0.00', 6, 0),
(7, 2, '', '', 1, '1.000', '0.00', '1000.00', '0.00', 6, 0),
(8, 2, '', '', 1, '10.000', '0.00', '1000.00', '0.00', 6, 0),
(9, 2, '', '', 1, '10.000', '0.00', '1000.00', '0.00', 6, 0),
(10, 3, '', '', 1, '1.000', '0.00', '0.00', '0.00', 6, 0),
(10, 4, '', '', 2, '1.000', '0.00', '0.00', '0.00', 6, 0),
(11, 5, '', '', 1, '1.000', '0.00', '0.00', '0.00', 6, 0),
(12, 1, 'Best Computer ever', '', 2, '1.000', '0.00', '1200.00', '0.00', 6, 0),
(12, 3, '', '', 1, '1.000', '0.00', '0.00', '0.00', 6, 0),
(14, 1, 'Best Computer ever', '', 2, '10.000', '0.00', '1200.00', '0.00', 6, 0),
(14, 4, '', '', 1, '1.000', '0.00', '0.00', '0.00', 6, 0),
(15, 2, '', '', 1, '10.000', '0.00', '1000.00', '0.00', 6, 0),
(16, 1, 'Best Computer ever', '', 3, '1.000', '0.00', '1200.00', '0.00', 6, 0),
(16, 2, '', '', 2, '1.000', '0.00', '1000.00', '0.00', 6, 0),
(16, 3, '', '', 1, '1.000', '0.00', '0.00', '0.00', 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_items_taxes`
--

CREATE TABLE `ospos_sales_items_taxes` (
  `sale_id` int(10) NOT NULL,
  `item_id` int(10) NOT NULL,
  `line` int(3) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `percent` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `tax_type` tinyint(2) NOT NULL DEFAULT 0,
  `rounding_code` tinyint(2) NOT NULL DEFAULT 0,
  `cascade_tax` tinyint(2) NOT NULL DEFAULT 0,
  `cascade_sequence` tinyint(2) NOT NULL DEFAULT 0,
  `item_tax_amount` decimal(15,4) NOT NULL DEFAULT 0.0000
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_sales_items_taxes`
--

INSERT INTO `ospos_sales_items_taxes` (`sale_id`, `item_id`, `line`, `name`, `percent`, `tax_type`, `rounding_code`, `cascade_tax`, `cascade_sequence`, `item_tax_amount`) VALUES
(1, 1, 1, 'Tax 1', '8.0000', 1, 1, 0, 0, '8160.0000'),
(1, 1, 1, 'Tax 2', '10.0000', 1, 1, 0, 0, '10200.0000'),
(14, 1, 2, 'Tax 1', '8.0000', 1, 1, 0, 0, '960.0000'),
(14, 1, 2, 'Tax 2', '10.0000', 1, 1, 0, 0, '1200.0000');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_payments`
--

CREATE TABLE `ospos_sales_payments` (
  `sale_id` int(10) NOT NULL,
  `payment_type` varchar(40) NOT NULL,
  `payment_amount` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_sales_payments`
--

INSERT INTO `ospos_sales_payments` (`sale_id`, `payment_type`, `payment_amount`) VALUES
(1, 'Cash', '140360.00'),
(2, 'Cash', '1200.00'),
(3, 'Cash', '25000.00'),
(5, 'Cash', '10000.00'),
(6, 'Cash', '1000.00'),
(7, 'Cash', '1000.00'),
(8, 'Cash', '10000.00'),
(9, 'Cash', '10000.00'),
(12, 'Cash', '1200.00'),
(14, 'Cash', '14160.00'),
(15, 'Cash', '10000.00'),
(16, 'Cash', '2200.00');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_reward_points`
--

CREATE TABLE `ospos_sales_reward_points` (
  `id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `earned` float NOT NULL,
  `used` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_sales_reward_points`
--

INSERT INTO `ospos_sales_reward_points` (`id`, `sale_id`, `earned`, `used`) VALUES
(1, 5, 2000, 0),
(2, 7, 0, 0),
(3, 8, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_taxes`
--

CREATE TABLE `ospos_sales_taxes` (
  `sale_id` int(10) NOT NULL,
  `tax_type` smallint(2) NOT NULL,
  `tax_group` varchar(32) NOT NULL,
  `sale_tax_basis` decimal(15,4) NOT NULL,
  `sale_tax_amount` decimal(15,4) NOT NULL,
  `print_sequence` tinyint(2) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `tax_rate` decimal(15,4) NOT NULL,
  `sales_tax_code` varchar(32) NOT NULL DEFAULT '',
  `rounding_code` tinyint(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_sales_taxes`
--

INSERT INTO `ospos_sales_taxes` (`sale_id`, `tax_type`, `tax_group`, `sale_tax_basis`, `sale_tax_amount`, `print_sequence`, `name`, `tax_rate`, `sales_tax_code`, `rounding_code`) VALUES
(1, 1, '10% Tax 2', '102000.0000', '10200.0000', 1, 'Tax 2', '10.0000', '', 1),
(1, 1, '8% Tax 1', '102000.0000', '8160.0000', 0, 'Tax 1', '8.0000', '', 1),
(14, 1, '10% Tax 2', '12000.0000', '1200.0000', 1, 'Tax 2', '10.0000', '', 1),
(14, 1, '8% Tax 1', '12000.0000', '960.0000', 0, 'Tax 1', '8.0000', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sessions`
--

CREATE TABLE `ospos_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_sessions`
--

INSERT INTO `ospos_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('f0igof1r222v5gr07d1m4e9sv812n24f', '127.0.0.1', 1549529456, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534393532393435363b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b73616c655f69647c693a2d313b73616c65735f696e766f6963655f6e756d6265725f656e61626c65647c623a303b6974656d5f6c6f636174696f6e7c733a313a2233223b),
('n3s42qboitpa0jh678incqav62mjtao3', '127.0.0.1', 1549529821, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534393532393832313b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a363a226f6666696365223b73616c655f69647c693a2d313b73616c65735f696e766f6963655f6e756d6265725f656e61626c65647c623a303b6974656d5f6c6f636174696f6e7c733a313a2233223b),
('g7ijiobtc8i9rhc5a2fsnkpvs03hicaf', '127.0.0.1', 1549530055, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534393532393832313b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b73616c655f69647c693a2d313b73616c65735f696e766f6963655f6e756d6265725f656e61626c65647c623a303b6974656d5f6c6f636174696f6e7c733a313a2231223b),
('tl506kjpft230rjpamfhtfri0hlfiit1', '127.0.0.1', 1549530866, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534393533303836363b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2231223b73616c655f69647c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2236223b73616c65735f696e766f6963655f6e756d6265725f656e61626c65647c623a303b),
('cllf8e1et3nnoqsjck52ir3j14ik44m6', '127.0.0.1', 1549531360, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534393533313336303b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2231223b73616c655f69647c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2236223b73616c65735f696e766f6963655f6e756d6265725f656e61626c65647c623a303b),
('0hl0hmnmkbphcm9sstcrpinns29il603', '127.0.0.1', 1549531413, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534393533313336303b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2231223b73616c655f69647c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2236223b73616c65735f696e766f6963655f6e756d6265725f656e61626c65647c623a303b726563765f73746f636b5f736f757263657c733a313a2236223b726563765f73746f636b5f64657374696e6174696f6e7c733a313a2236223b),
('cr8h21b2r68on9g6q486ihekehqg0348', '127.0.0.1', 1549589684, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534393538393637353b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2236223b),
('d7s8djnktugo0cqmbk613npcv3qk5bea', '127.0.0.1', 1549599661, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534393539393636313b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('0utvjnvi5aqh6rfe9u6p413vsrr5r78r', '127.0.0.1', 1549604157, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534393630343135373b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a323a223134223b),
('s69jvh4e2imjrqs0qsnn0udas7giahhv', '127.0.0.1', 1549606850, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534393630363835303b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a323a223134223b),
('i3no8s4h816bgnh8lbtts7t2lea1n8fe', '127.0.0.1', 1549607109, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534393630363835303b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a323a223134223b),
('j1o9f0u8i5lpc9ldnlob22ju74jlgln4', '127.0.0.1', 1549628269, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534393632383236393b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2236223b),
('s26i5vgg12clft9ej3lk4vhl0to2uovi', '127.0.0.1', 1549628269, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534393632383236393b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2236223b),
('ng1c1rl0kqlp3gfhft1t68q7u62nd3ng', '127.0.0.1', 1549754016, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534393735333932343b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('i2nncc39a31oice2j3rufrq340uuk0i1', '127.0.0.1', 1549801592, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534393830313538393b),
('r9666ner82dq10cer959fs0b3e71hpgf', '127.0.0.1', 1549802333, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534393830323333333b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2236223b),
('8in50tmpds9l4tra0fscmtcbf70efsuc', '127.0.0.1', 1549802333, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534393830323333333b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2236223b),
('ggtp29295heem0jimsqe7kv4k674iqmm', '127.0.0.1', 1549816658, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534393831363635383b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('3iusfhcsr7a657k5ihdjbb5l05svkenb', '127.0.0.1', 1549818085, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534393831383038353b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2236223b),
('kp0o4dueaamteequf9rd1102eugkfv23', '127.0.0.1', 1549818086, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534393831383038353b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2236223b),
('o204e5f4cm7jhqvt0m6t7h1smuk3d3l7', '127.0.0.1', 1549825899, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534393832353839393b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('h9aareg3nr12fmeceecnm9b7e22n6u56', '127.0.0.1', 1549826232, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534393832363233323b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('t4t8f1t2doakkjvemh471rsrp4jt3p6i', '127.0.0.1', 1549826256, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534393832363233323b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('judk4vmcp5sv94el3sm60f660fmi14jp', '127.0.0.1', 1549968991, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534393936383839343b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('rd33e4u3uubh4vglel268jqjnk38k3dt', '127.0.0.1', 1549992629, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534393939323632393b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('tv8542343gtv5l6nfjuegt5qd8mdmdaf', '127.0.0.1', 1549995489, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534393939353438393b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('qih8k8fiveis02unlj1l6pt1uhei2tbs', '127.0.0.1', 1549995489, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534393939353438393b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('eiamf0cs8j6j5tllo2u0lkkjerekopph', '127.0.0.1', 1550007113, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303030373131333b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('9prh5ltslnuar7j6sflld8gpt29lkvsb', '127.0.0.1', 1550008449, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303030383434393b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('sff0g5thpaf7g356k43l461o9d4qohmv', '127.0.0.1', 1550008882, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303030383838323b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('5tt4f6619k93cu50no73plsa95abpsb0', '127.0.0.1', 1550009183, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303030393138333b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('o6mibnk6ejtd68t8avimjsveqk10ovvs', '127.0.0.1', 1550010284, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303031303238343b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('gmumfornm0u3l6f3ols1c84vk402ss7n', '127.0.0.1', 1550011929, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303031313932393b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b73616c655f69647c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2231223b73616c65735f696e766f6963655f6e756d6265725f656e61626c65647c623a303b6974656d5f6c6f636174696f6e7c733a313a2236223b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b73616c65735f696e766f6963655f6e756d6265727c4e3b),
('ph1q3fb0fcom21sukt2rilibon02idgd', '127.0.0.1', 1550012354, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303031323335343b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b73616c655f69647c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2231223b73616c65735f696e766f6963655f6e756d6265725f656e61626c65647c623a303b6974656d5f6c6f636174696f6e7c733a313a2236223b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b73616c65735f696e766f6963655f6e756d6265727c4e3b),
('hhkhigm1oai5dkoq1eu9la5nus4r4bui', '127.0.0.1', 1550012367, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303031323335343b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b73616c655f69647c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2231223b73616c65735f696e766f6963655f6e756d6265725f656e61626c65647c623a303b6974656d5f6c6f636174696f6e7c733a313a2236223b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b73616c65735f696e766f6963655f6e756d6265727c4e3b),
('ldv37ljlnpibe20us9vkvlveh9khj7fu', '127.0.0.1', 1550129994, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303132393939343b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2236223b),
('csmcobns09rc0idhkfvpq00gvs6ia9nd', '127.0.0.1', 1550130298, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303133303239383b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2236223b),
('bsslsgpo7ldvdfg4nbooh5sg0ae6ef7v', '127.0.0.1', 1550130718, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303133303731383b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a363a226f6666696365223b6974656d5f6c6f636174696f6e7c733a313a2236223b),
('cko8l8clfjs601dnlt0980sfi66llbdq', '127.0.0.1', 1550130743, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303133303731383b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2236223b),
('7p0fqsev3ik5civpnnkcbacjq6dc21uo', '127.0.0.1', 1550138918, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303133383931383b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('u529t4hncjf236k1qa79skduvc4utk8a', '127.0.0.1', 1550139404, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303133393430343b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('43qck5r4pehuj7pdu7cg9cflkfcggokk', '127.0.0.1', 1550139748, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303133393734383b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2236223b),
('cm7v1oupc9n7cuo6ub7g2f3d299jgotv', '127.0.0.1', 1550139800, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303133393734383b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2236223b),
('tqnumhgtuhmnh3h5oba8k9kiu952eoma', '127.0.0.1', 1550168392, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303136383339323b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2238223b),
('2rsfaejo5l2n8qn2fbqnegh2sps3ol1s', '127.0.0.1', 1550170319, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303136383339323b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2238223b),
('mok3k3ufm9j6dspb04hsf2vo5tj9i85d', '127.0.0.1', 1550179756, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303137393735363b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('sg4mbu1osn4poektco92mtthetqm2edv', '127.0.0.1', 1550180678, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303138303637383b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('f7ll3t6unoj1ei860k0tes04517k7ln0', '127.0.0.1', 1550180842, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535303138303637383b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('9qvfbnnfis22guhtj16ufjsrq65dplsn', '127.0.0.1', 1551040944, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313034303934343b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('mtlph24ebos4bg48bgn3r7j3tvsiu79r', '127.0.0.1', 1551041336, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313034313333363b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a323a223131223b),
('319u73tfagh91dba9o9lu5a0ugjuv15q', '127.0.0.1', 1551041551, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313034313333363b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a323a223131223b),
('887ov2enr3eh30rrt04d2ual9t850lfn', '127.0.0.1', 1551342489, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313334323438393b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('gr54dfdrvjrtb47g3ov9ku35ob78q4kr', '127.0.0.1', 1551342975, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313334323937353b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('3l9q1v8m1s2aeqcjrpgu205v1o9aitvu', '127.0.0.1', 1551343378, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313334333337383b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2231223b),
('soe6r2cros85p4gp3iu6sbm7tsc2ku4g', '127.0.0.1', 1551343774, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313334333337383b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2239223b),
('l5pqd4c1b5tdvp999qgq167iln16u5qa', '127.0.0.1', 1551542817, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313534323737373b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2231223b),
('ctn0hsskn0ivvrs6oil0992l69muim6t', '127.0.0.1', 1551773518, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313737333435353b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('91qrp2um2hkgvvuf39rd3ofkim8a9glc', '127.0.0.1', 1553834480, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333833343434333b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('2b625b79eb63d552e7970e507a8bccc6aec6589a', '127.0.0.1', 1560465694, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303436353639343b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2236223b6974656d5f6c6f636174696f6e7c733a313a2236223b73757370656e6465645f69647c693a343b73616c65735f696e766f6963655f6e756d6265725f656e61626c65647c623a303b),
('c4c97b87bd40828845c721fef6ce430d2fa749e2', '127.0.0.1', 1560469178, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303436393137383b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2236223b6974656d5f6c6f636174696f6e7c733a313a2236223b73757370656e6465645f69647c693a343b73616c65735f696e766f6963655f6e756d6265725f656e61626c65647c623a303b),
('9c9e83bc1c5a292795f918a0bb485b3040dc146a', '127.0.0.1', 1560469446, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303436393137383b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2236223b6974656d5f6c6f636174696f6e7c733a313a2236223b73757370656e6465645f69647c693a343b73616c65735f696e766f6963655f6e756d6265725f656e61626c65647c623a303b73616c65735f6d6f64657c733a343a2273616c65223b),
('57dafb49b6b15f6c1bf208301d185b984e87ec00', '127.0.0.1', 1560514169, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303531343136393b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b73616c655f69647c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2236223b73616c65735f696e766f6963655f6e756d6265725f656e61626c65647c623a303b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b73616c65735f696e766f6963655f6e756d6265727c4e3b),
('3fe3f91df37570b0f5b26b1ad6e524b52616782c', '127.0.0.1', 1560520537, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303532303533373b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b73616c655f69647c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2236223b73616c65735f696e766f6963655f6e756d6265725f656e61626c65647c623a303b),
('a45ae149aa21afc38591eca6b6d8a0bd95acf260', '127.0.0.1', 1560520558, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303532303533373b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b73616c655f69647c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2236223b73616c65735f696e766f6963655f6e756d6265725f656e61626c65647c623a303b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b73616c65735f696e766f6963655f6e756d6265727c4e3b),
('7f96178250c9866a22cc4868223803f427e63958', '127.0.0.1', 1560544519, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303534343435353b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2236223b),
('ca1c4a6bb1f255e2e5db55310d6b5b210b01c018', '127.0.0.1', 1560590201, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303539303230313b),
('d056792201d3951203ead2235a920c776306e375', '127.0.0.1', 1560593422, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303539333432323b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a363a226f6666696365223b),
('23c0b86cd316ea21ce2c780c083fdd3dc3b25ed1', '127.0.0.1', 1560593910, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303539333931303b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('09785fa00dfb22230d534eebc0c33dd925df4ab2', '127.0.0.1', 1560593920, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303539333931303b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('fd457a9325fdfb65bdd9e87cc3cb67422218c240', '::1', 1560593986, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303539333933353b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('2254b512e024d0063e2a6a7317fa6fb056c6aa59', '::1', 1560606765, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303630363736353b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('529aef342ef1e201ce85f06adc4d3cb46ce787bb', '::1', 1560607229, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303630373232393b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2236223b726563765f636172747c613a303a7b7d726563765f6d6f64657c733a373a2272656365697665223b726563765f73746f636b5f736f757263657c733a313a2236223b726563765f73746f636b5f64657374696e6174696f6e7c733a313a2236223b726563765f737570706c6965727c693a2d313b),
('01dd7be651fcb215acfa28ca71090911a877fa6d', '::1', 1560607323, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303630373232393b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2236223b726563765f636172747c613a303a7b7d726563765f6d6f64657c733a373a2272656365697665223b726563765f73746f636b5f736f757263657c733a313a2236223b726563765f73746f636b5f64657374696e6174696f6e7c733a313a2236223b726563765f737570706c6965727c693a2d313b),
('40623090efd6e2f316365048abb8e4fc6b51be7b', '::1', 1560630246, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303633303234363b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b726563765f73746f636b5f736f757263657c733a313a2231223b726563765f73746f636b5f64657374696e6174696f6e7c733a313a2236223b6974656d5f6c6f636174696f6e7c733a313a2231223b),
('93f771677d90c91520c6eac413e149e878eb58e2', '::1', 1560630257, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303633303234363b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b726563765f73746f636b5f736f757263657c733a313a2231223b726563765f73746f636b5f64657374696e6174696f6e7c733a313a2236223b6974656d5f6c6f636174696f6e7c733a313a2231223b),
('4ec18af371e5ed58d6e0c20eda71cb3372dfdb41', '127.0.0.1', 1560814904, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303831343930343b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('2353991cb7312359591f988a14c8ce8fe66f516f', '127.0.0.1', 1560816522, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303831363532323b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b73616c655f69647c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2236223b73616c65735f696e766f6963655f6e756d6265725f656e61626c65647c623a303b73616c65735f656d706c6f7965657c733a313a2231223b73616c65735f776f726b5f6f726465725f6e756d6265727c733a393a22573139303030303031223b),
('bb956299641cb41000a7b2a1aa1456e3a1aa0640', '127.0.0.1', 1560816522, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303831363532323b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b73616c655f69647c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2236223b73616c65735f696e766f6963655f6e756d6265725f656e61626c65647c623a303b73616c65735f656d706c6f7965657c733a313a2231223b73616c65735f776f726b5f6f726465725f6e756d6265727c733a393a22573139303030303031223b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b73616c65735f696e766f6963655f6e756d6265727c4e3b),
('6e2f28d0456a0a2118b373db5bf3dd2e5b3b976d', '127.0.0.1', 1560861378, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303836313337383b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2236223b73616c655f69647c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2236223b73616c65735f696e766f6963655f6e756d6265725f656e61626c65647c623a303b73616c65735f636172747c613a313a7b693a313b613a32313a7b733a373a226974656d5f6964223b733a313a2233223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2236223b733a31303a2273746f636b5f6e616d65223b733a31313a22496c612d5a6f6e65203130223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a343a224b616c69223b733a31313a226974656d5f6e756d626572223b4e3b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b693a313b733a383a22646973636f756e74223b643a303b733a383a22696e5f73746f636b223b733a373a223939392e303030223b733a353a227072696365223b733a343a22302e3030223b733a31303a22636f73745f7072696365223b733a343a22302e3030223b733a353a22746f74616c223b733a343a22302e3030223b733a31363a22646973636f756e7465645f746f74616c223b733a363a22302e30303030223b733a31323a227072696e745f6f7074696f6e223b693a303b733a31303a2273746f636b5f74797065223b733a313a2230223b733a393a226974656d5f74797065223b733a313a2230223b733a31353a227461785f63617465676f72795f6964223b733a313a2230223b7d7d73616c65735f637573746f6d65727c693a2d313b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b73616c65735f696e766f6963655f6e756d6265727c4e3b),
('bcc5ffe0a52e3953363aa28d56fded33a61b46b8', '127.0.0.1', 1560861739, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303836313733393b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2236223b73616c655f69647c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2236223b73616c65735f696e766f6963655f6e756d6265725f656e61626c65647c623a303b73616c65735f636172747c613a313a7b693a313b613a32313a7b733a373a226974656d5f6964223b733a313a2233223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2236223b733a31303a2273746f636b5f6e616d65223b733a31313a22496c612d5a6f6e65203130223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a343a224b616c69223b733a31313a226974656d5f6e756d626572223b4e3b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b693a313b733a383a22646973636f756e74223b643a303b733a383a22696e5f73746f636b223b733a373a223939392e303030223b733a353a227072696365223b733a343a22302e3030223b733a31303a22636f73745f7072696365223b733a343a22302e3030223b733a353a22746f74616c223b733a343a22302e3030223b733a31363a22646973636f756e7465645f746f74616c223b733a363a22302e30303030223b733a31323a227072696e745f6f7074696f6e223b693a303b733a31303a2273746f636b5f74797065223b733a313a2230223b733a393a226974656d5f74797065223b733a313a2230223b733a31353a227461785f63617465676f72795f6964223b733a313a2230223b7d7d73616c65735f637573746f6d65727c693a2d313b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b73616c65735f696e766f6963655f6e756d6265727c4e3b),
('ce40f23e49c61481f2bdc6de99b8ae45245b9d22', '127.0.0.1', 1560864698, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303836313733393b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2236223b73616c655f69647c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2236223b73616c65735f696e766f6963655f6e756d6265725f656e61626c65647c623a303b73616c65735f636172747c613a313a7b693a313b613a32313a7b733a373a226974656d5f6964223b733a313a2233223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2236223b733a31303a2273746f636b5f6e616d65223b733a31313a22496c612d5a6f6e65203130223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a343a224b616c69223b733a31313a226974656d5f6e756d626572223b4e3b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b733a303a22223b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2230223b733a383a227175616e74697479223b693a313b733a383a22646973636f756e74223b643a303b733a383a22696e5f73746f636b223b733a373a223939392e303030223b733a353a227072696365223b733a343a22302e3030223b733a31303a22636f73745f7072696365223b733a343a22302e3030223b733a353a22746f74616c223b733a343a22302e3030223b733a31363a22646973636f756e7465645f746f74616c223b733a363a22302e30303030223b733a31323a227072696e745f6f7074696f6e223b693a303b733a31303a2273746f636b5f74797065223b733a313a2230223b733a393a226974656d5f74797065223b733a313a2230223b733a31353a227461785f63617465676f72795f6964223b733a313a2230223b7d7d73616c65735f637573746f6d65727c693a2d313b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b73616c65735f696e766f6963655f6e756d6265727c4e3b),
('f8e555b607a302434a00ad2f832f241bd561a9f4', '127.0.0.1', 1560892614, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303839323530323b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2236223b73616c655f69647c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2236223b73616c65735f696e766f6963655f6e756d6265725f656e61626c65647c623a303b),
('6148e2e8564b94d16e4db98e05acef41469595d5', '127.0.0.1', 1560893116, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303839333131363b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a363a226f6666696365223b),
('5507757ec44d94e7d2a0ec79f886ac3df6eb3fa5', '127.0.0.1', 1560893116, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303839333131363b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a363a226f6666696365223b),
('75683a9230d499882347fdddf7bc0d78b94f0654', '::1', 1561386401, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313338363430313b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('025700cdf09891bb9852be00e87b4428505a8d44', '::1', 1561387209, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313338373230393b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b73616c655f69647c693a2d313b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2236223b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b73616c65735f696e766f6963655f6e756d6265727c4e3b),
('6947e261dd3b1b23640f8289ecf4df4658909e62', '::1', 1561388241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313338383234313b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b73616c655f69647c693a2d313b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2236223b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b73616c65735f696e766f6963655f6e756d6265727c4e3b),
('d8d4713c3d47d72bcc0d53ac7038c6986a611913', '::1', 1561388283, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313338383234313b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b73616c655f69647c693a2d313b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2236223b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b73616c65735f696e766f6963655f6e756d6265727c4e3b),
('3f6dec9e0776d20f82cd58f9efe097c13cae3f40', '::1', 1561469529, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313436393532393b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b73616c655f69647c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2236223b73616c65735f696e766f6963655f6e756d6265725f656e61626c65647c623a303b6974656d5f6c6f636174696f6e7c733a313a2236223b),
('96a162bfc7d347edcb33079c728a9cf9f6c1f7e9', '::1', 1561470085, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313437303038353b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b73616c655f69647c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2236223b73616c65735f696e766f6963655f6e756d6265725f656e61626c65647c623a303b6974656d5f6c6f636174696f6e7c733a313a2236223b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b73616c65735f696e766f6963655f6e756d6265727c4e3b),
('81ab68bd8feaf1750d0fab02df1e07dd96524d11', '::1', 1561470085, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313437303038353b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b73616c655f69647c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2236223b73616c65735f696e766f6963655f6e756d6265725f656e61626c65647c623a303b6974656d5f6c6f636174696f6e7c733a313a2236223b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b73616c65735f696e766f6963655f6e756d6265727c4e3b),
('aa46868aa6bdf5cf9c908e676c6918dee0201bd1', '::1', 1561589875, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313538393837353b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b73616c655f69647c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2236223b73616c65735f696e766f6963655f6e756d6265725f656e61626c65647c623a303b),
('f82de7171ac1f99dd460c218c372aef5a0231464', '::1', 1561589930, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313538393837353b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b73616c655f69647c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2236223b73616c65735f696e766f6963655f6e756d6265725f656e61626c65647c623a303b),
('4a046639f21af7a73c78ed234f2703534c1758ff', '::1', 1561618453, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313631383434393b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('f3c28c91ceb8d63a8b76b1d81828c9830b7cd8dc', '::1', 1561638688, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313633383638383b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('7cac78210615451cfcae17d691f92c3aef6372af', '::1', 1561639155, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313633393135353b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('5b061f5b6e2ffd6265f60880eee183768bca4e96', '::1', 1561639654, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313633393635343b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2236223b726563765f636172747c613a303a7b7d726563765f6d6f64657c733a373a2272656365697665223b726563765f73746f636b5f736f757263657c733a313a2236223b726563765f73746f636b5f64657374696e6174696f6e7c733a313a2236223b726563765f737570706c6965727c693a2d313b73616c655f69647c693a2d313b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2236223b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b73616c65735f696e766f6963655f6e756d6265727c4e3b),
('03e433c9b67159c6d1ad6d37669defaee9c8a74a', '::1', 1561639681, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313633393635343b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a363a226f6666696365223b6974656d5f6c6f636174696f6e7c733a313a2236223b726563765f636172747c613a303a7b7d726563765f6d6f64657c733a373a2272656365697665223b726563765f73746f636b5f736f757263657c733a313a2236223b726563765f73746f636b5f64657374696e6174696f6e7c733a313a2236223b726563765f737570706c6965727c693a2d313b73616c655f69647c693a2d313b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2236223b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b73616c65735f696e766f6963655f6e756d6265727c4e3b),
('7e07880b9eb63d5e97f6c6e36b50e4b2926abac3', '::1', 1561655546, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313635353533333b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('e27fc2ca148ae315fa88ec0f898322f1a10e63ca', '::1', 1561748509, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313734383436373b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('d5181a9bfbd2ca80b254136f8480cf024855fa07', '::1', 1562500237, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323530303233373b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('857aead2ac19960405f28e6ead8cdbcaffae24b9', '::1', 1562500267, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323530303233373b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a363a226f6666696365223b6974656d5f6c6f636174696f6e7c733a313a2236223b726563765f636172747c613a303a7b7d726563765f6d6f64657c733a373a2272656365697665223b726563765f73746f636b5f736f757263657c733a313a2236223b726563765f73746f636b5f64657374696e6174696f6e7c733a313a2236223b726563765f737570706c6965727c693a2d313b73616c655f69647c693a2d313b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2236223b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b73616c65735f696e766f6963655f6e756d6265727c4e3b),
('aa61ec7e0a9d6bf5c7467dc3499dd88e6d987c39', '::1', 1562624350, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323632343333373b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('0e4efa64ef9e012213e8c26e994c14b1622e1477', '::1', 1562668395, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323636383338343b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('730bdf3b7a8a1d53da008336d1f4226b5db70d6e', '127.0.0.1', 1563744434, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333734343433343b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a363a226f6666696365223b),
('d2fb0c61c23bd6d6689f39894fc315a0b9314df5', '127.0.0.1', 1563744496, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333734343433343b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a363a226f6666696365223b),
('ad996cce5ca0ec179ac14f59af57c7af373eb55f', '::1', 1564008218, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343030383130383b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a363a226f6666696365223b),
('b357c0637436458adbd3510f3cc7f6725686173a', '127.0.0.1', 1564091079, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343039303939333b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2233223b),
('5fe5cf524ec26f9c43684474229665af57eceaae', '127.0.0.1', 1564091424, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343039313430363b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a363a226f6666696365223b),
('dfcd3bfc379644696187382439972d4f2ace8c48', '::1', 1564259415, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343235393431343b),
('605bd9296802833743f8fcfc4bf21e4375f54348', '::1', 1564262294, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343236323238363b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('9c39e43d16691bea541c8c7dfbc1fc8ea4d81ad4', '::1', 1564264127, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343236343132373b),
('1ef48091560d57efd97e5f45b0f6c167237dfc90', '::1', 1564263738, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343236333733383b),
('844903c6f854129fceb6abf612b35a8a99a3dff4', '::1', 1564264282, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343236343238323b),
('f882f1a1f55ffdf5976233b193dd442ffda5f896', '::1', 1564264127, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343236343132373b),
('89712d0d1d27e11d12ecd6dd5731c067e20a550d', '::1', 1564264790, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343236343739303b),
('f5e3465ef4b0d80b2724bc03b7250fd74da19490', '::1', 1564265129, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343236353132393b706572736f6e5f69647c733a313a2231223b),
('395eb7e935c33253a06f1711bbf5fcf12f69d063', '::1', 1564265681, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343236353638313b706572736f6e5f69647c733a313a2231223b),
('35f2bd0549a260170615c193a4493ac0a2ea848f', '::1', 1564265681, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343236353638313b706572736f6e5f69647c733a313a2231223b),
('6f0b6d279ecf95b72a1b06ebcc3e8cb3f27fca75', '::1', 1564297646, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343239373634363b),
('c499c9a0c9d3e4d6d1c26834b94218a070920ce5', '::1', 1564393949, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343339333934393b706572736f6e5f69647c733a313a2231223b),
('02c99cce072bfc426577dbd9bd71f333d6754923', '127.0.0.1', 1564393727, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343339333732343b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('39b60c3e4465113f3722a516e262f7c2397eff88', '::1', 1564394260, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343339343236303b706572736f6e5f69647c733a313a2231223b),
('55859d27a7d3120cf9ebf91688322cfbcd9b2c72', '::1', 1564394252, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343339343037313b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2233223b),
('e459b2345397b053b17d63d65b5ffa87ade3988e', '::1', 1564394273, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343339343236303b706572736f6e5f69647c733a313a2231223b),
('38476dc942ec4ecf184c07ed0811b5717612f6b4', '::1', 1564405554, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343430353535343b),
('16963941204fea1bb5dd5a55886cab9c34b24bbd', '::1', 1564406769, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343430363736393b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('fdc5661fb3eb98e1e752a6b2358b33fcff201ee7', '127.0.0.1', 1564405538, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343430353432363b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2233223b),
('7c570737b570f97dc054f4045294fcd11a1068c7', '::1', 1564405866, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343430353836363b),
('b0e400d26b3811567fd58ecfc9721ed04757535c', '::1', 1564407128, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343430373132383b),
('0cf5cd0a280f13e42baeea8c4c7d62fcc3af8fb7', '::1', 1564406773, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343430363736393b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('953627fe589689069da135465452eae998a999a7', '::1', 1564408197, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343430383139373b706572736f6e5f69647c733a313a2231223b),
('8189a11585ccea9932287c0ede4da18444766609', '::1', 1564408197, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343430383139373b706572736f6e5f69647c733a313a2231223b),
('1f913cd420507d10a9409f7298f5c19aba4df67f', '127.0.0.1', 1564594927, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343539343837323b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2233223b),
('5662679853205fb97152a997131b99d61c1134ca', '::1', 1564595435, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343539353433353b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2233223b),
('51f4681341d2b4119805d8b03a96c0ba8ba80ce5', '::1', 1564595420, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343539353432303b706572736f6e5f69647c733a313a2231223b),
('76e7baf9146f4c7980dff3dadc1abadc01c79936', '::1', 1564595805, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343539353830353b706572736f6e5f69647c733a313a2231223b),
('831db95f9c4cf71164ec107f3aac5464ce75d5ea', '::1', 1564597452, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343539373435323b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2233223b726563765f73746f636b5f736f757263657c733a313a2233223b726563765f73746f636b5f64657374696e6174696f6e7c733a313a2233223b726563765f636172747c613a303a7b7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b),
('97a01d64e3c426dde0f7f59f86e86ed4e4850981', '::1', 1564596124, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343539363132343b706572736f6e5f69647c733a313a2231223b),
('e72a992e4674734b4d0592831cda9338c53ae611', '::1', 1564596648, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343539363634383b706572736f6e5f69647c733a313a2231223b),
('008c717d7d0b3c79d63436afe4ad73540a857c30', '::1', 1564597409, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343539373430393b706572736f6e5f69647c733a313a2231223b),
('60c1ed5c6c21513d70baf7748305958d18c37ed7', '::1', 1564597873, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343539373837333b706572736f6e5f69647c733a313a2231223b),
('8a2fa4211a9bf46696e47481ebf09542ed707a5c', '::1', 1564597457, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343539373435323b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2233223b726563765f73746f636b5f736f757263657c733a313a2233223b726563765f73746f636b5f64657374696e6174696f6e7c733a313a2233223b726563765f636172747c613a303a7b7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b),
('4d0eca55f24d779db28c35ec77c84c31dad32fa1', '::1', 1564598500, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343539383530303b706572736f6e5f69647c733a313a2231223b),
('eefefc02e883fb6602698b3305ab6aecff031e5d', '::1', 1564598979, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343539383937393b706572736f6e5f69647c733a313a2231223b),
('0a8cfeae270c6b1d9b60e30cd568af436ef0cb00', '::1', 1564604700, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343630343730303b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('178d749067cb1a5ba039a3573991e755fee686ba', '::1', 1564604962, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343630343936323b706572736f6e5f69647c733a313a2231223b),
('da12a9e0ee3d3e92dd31089c721e985f9642482e', '::1', 1564605143, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343630353134333b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2233223b),
('7bc62a920a52614fa0894d7566408d50f5319443', '::1', 1564607415, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343630373431353b706572736f6e5f69647c733a313a2231223b),
('5d911a2c78d4f2b2038212d23de02bffde4db8b4', '::1', 1564611058, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343631313035383b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2233223b),
('7e5552ee1c214ea2d3c85ea86f1cca40c062842a', '::1', 1564608003, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343630383030333b706572736f6e5f69647c733a313a2231223b),
('91c069b567125d0edc408b46d94ab33a83ed336c', '::1', 1564610990, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343631303939303b706572736f6e5f69647c733a313a2231223b),
('d76c9ad7f8c677eab871e45c40bea102c6930f7d', '::1', 1564611016, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343631303939303b706572736f6e5f69647c733a313a2231223b),
('39f006a71c5238cc4a91c96851492528cc470b1f', '::1', 1564611058, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343631313035383b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2233223b),
('fa75864eece5bf2ea1d18000dfc302281ab0307e', '::1', 1564865572, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343836353537323b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('4ad86c1b7176bf04a2d715614115af47c0161d9b', '127.0.0.1', 1564865076, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343836353037333b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('d1bb8476f018c1506e2e7c093dc51fe76ffe49cb', '::1', 1564865573, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343836353537323b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('75515b7d186c9435680aa1bcb9e5f6b411540d47', '::1', 1564946968, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343934363936383b),
('b428419c06e1a02e9d7457d4127eb4bfffe7a377', '::1', 1564947656, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343934373635363b),
('2b1169cb611b5d2d41d6767df6fde3334d849991', '::1', 1564948564, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343934383536343b),
('82e09bab00930970382e0a0e69301ecce5ebd523', '::1', 1564948961, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343934383936313b),
('7a089971825b40043c7a9296e55f07a8d3d1dd8e', '::1', 1564949627, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343934393632373b);
INSERT INTO `ospos_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('7f4e71fb19b106335a056238a7d99f52e2add1e8', '::1', 1564953092, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343935333039323b),
('9885668fc5a9daf66e72033c5aaea917fee354cd', '::1', 1564953422, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343935333432323b),
('7e8d52c144eddbb6f4ffb1e63519b2c0007f069f', '::1', 1564953838, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343935333833383b),
('a2428844daae035c2bab74e7f73cd26f02ff9454', '::1', 1564954429, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343935343432393b),
('e56a811ff50efbd76d33758932233deee9008c98', '::1', 1564954431, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343935343432393b),
('76c6507e6f18d1b784a6db29406e9341c24994cd', '127.0.0.1', 1564955066, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343935353036363b),
('6a06ab9594aa0dca3abdf4ecc0cd19b02c26a6d6', '::1', 1564955105, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343935353037353b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b73616c655f69647c693a2d313b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2233223b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b73616c65735f696e766f6963655f6e756d6265727c4e3b),
('fa1fa10afa9e83eea9657a4a1cff406b2da39fec', '::1', 1564984853, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343938343835333b),
('dda6bfce6268a0cd77422861eeeea16f0deddb3c', '::1', 1564985838, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343938353833383b),
('1eba3c064ca293a9ad8aca5e988fadeafa55aefa', '::1', 1564986139, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343938363133393b),
('ddd966db6cac0b72b253289efa4371f29d9b9961', '::1', 1564987642, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343938373634323b),
('c8f260c41af5928db31aa5e4381946485a04c981', '::1', 1564987982, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343938373938323b),
('09d758ccf49feb4855f7acde00a5bb583286f81b', '::1', 1564991703, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343939313730333b),
('551da86b1504b245651b9553ceb5ed9213e39735', '::1', 1564992659, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343939323635393b),
('255b1b828c24191771372803089aae4559182c74', '::1', 1564992808, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536343939323635393b),
('7ef19189a56fe0b4ed9f965d274ec1672c7ed46c', '::1', 1565001510, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536353030313531303b),
('43644d90174bb505257df8b4c178c66be2926be9', '::1', 1565001991, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536353030313939313b),
('ec51a46f8124e230cff0590004c4db74d520252b', '::1', 1565002356, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536353030323335363b),
('7543fed1cc3ac003c7ffbc3cbf2004e4348d66d9', '::1', 1565002906, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536353030323930363b),
('e02b194b0ac47ab6ece52d28060963a88a11e733', '::1', 1565008339, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536353030383333393b),
('63775ceb318444703bbe709bde89e8f0d70459a1', '::1', 1565008742, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536353030383734323b),
('23fe57e321a20d704d0b54ecae1b30d47d0ac2d9', '::1', 1565009103, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536353030393130333b),
('ab922da1c630064d0f29ef6602262b6979eafa58', '::1', 1565009522, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536353030393532323b),
('9f63cf9447791821ae39521398dfda93fe07563a', '::1', 1565010225, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536353031303232353b),
('cfa3c2afaba11dca40252f3321a173e1dbfee9bc', '::1', 1565010959, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536353031303935393b),
('2defec3ee2a4e39bdaaa6ba556a5eccf85495148', '::1', 1565012117, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536353031323131373b),
('fd01ac70d8d0454a522b54e06f233be23d37584c', '::1', 1565017000, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536353031373030303b),
('0cb2e874a046642fc8b5e37659182f6567f1159e', '::1', 1565012344, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536353031323331313b),
('9bd3cae8d041fc6c640096414b72d76806264434', '::1', 1565017313, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536353031373331333b),
('6dab0865f964552894f42b5e7e1504fbb296fa48', '::1', 1565018654, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536353031383635343b),
('e3ca641fb21e32241ef4d34b8990849078e2512d', '::1', 1565018740, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536353031383635343b),
('eee824b6022cb17fdc6e49e14a49f952603aabca', '::1', 1565473497, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536353437333439373b),
('cb28fae4e589124eefae82011871ff13baea2494', '::1', 1565474124, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536353437343132343b),
('cb175fd622f843a9f2353c57f2fabc1c1e826516', '::1', 1565474461, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536353437343436313b),
('64b3d62ad53679a5c9c033459b4c05a00b1ea6a7', '::1', 1565474860, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536353437343836303b),
('0136b27a9b44c978710937e853f33c2c0a70fc4e', '::1', 1565475125, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536353437343836303b);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_stock_locations`
--

CREATE TABLE `ospos_stock_locations` (
  `location_id` int(11) NOT NULL,
  `location_name` varchar(255) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_stock_locations`
--

INSERT INTO `ospos_stock_locations` (`location_id`, `location_name`, `deleted`) VALUES
(1, 'WholesaleBB-1-knd', 0),
(3, 'WholesaleBB-3-Tmk', 0),
(4, 'WholesaleBB-4-Ila', 0),
(5, 'WholesaleBB-2-Ila', 0),
(6, 'Ila-Zone 10', 0),
(7, 'Ila-Zone 18', 0),
(8, 'Ila-Zone 2', 0),
(9, 'Ila-Zone 20', 0),
(10, 'Ila-Zone 23', 0),
(11, 'Ila-Zone 28', 0),
(12, 'Ila-Zone 29', 0),
(13, 'Ila-Zone 7', 0),
(14, 'Knd-Zone 1', 0),
(15, 'Knd-Zone 26', 0),
(16, 'Knd-Zone 31', 0),
(17, 'Knd-Zone 5', 0),
(18, 'Knd-Zone 6', 0),
(19, 'Knd-Zone 8', 0),
(20, 'Knd-Zone 9', 0),
(21, 'Tmk-Zone 5', 0),
(22, 'Tmk-Zone 19', 0),
(23, 'Tmk-Zone 21', 0),
(24, 'Tmk-Zone 22', 0),
(25, 'Tmk-Zone 24', 0),
(26, 'Tmk-Zone 25', 0),
(27, 'Tmk-Zone 27', 0),
(28, 'Tmk-Zone 3', 0),
(29, 'Ubg-Zone 11', 0),
(30, 'Ubg-Zone 12', 0),
(31, 'Ubg-Zone 13', 0),
(32, 'Ubg-Zone 14', 0),
(33, 'Ubg-Zone 16', 0),
(34, 'Ubg-Zone 17', 0),
(35, 'Ubg-Zone 30', 0),
(36, 'Ubg-Zone 4', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_suppliers`
--

CREATE TABLE `ospos_suppliers` (
  `person_id` int(10) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `agency_name` varchar(255) NOT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_suppliers`
--

INSERT INTO `ospos_suppliers` (`person_id`, `company_name`, `agency_name`, `account_number`, `deleted`) VALUES
(2, 'kl', '', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_survey`
--

CREATE TABLE `ospos_survey` (
  `survey_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `like` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `sugested` int(10) DEFAULT NULL,
  `use_again` int(11) NOT NULL,
  `item_liked` int(10) NOT NULL,
  `reason_not` varchar(255) NOT NULL,
  `customer_comment` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_survey`
--

INSERT INTO `ospos_survey` (`survey_id`, `customer_id`, `like`, `rate`, `sugested`, `use_again`, `item_liked`, `reason_not`, `customer_comment`, `date`) VALUES
(1, 259, 1, 5, 100, 1, 1, 'fuck', 'not', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_tax_categories`
--

CREATE TABLE `ospos_tax_categories` (
  `tax_category_id` int(10) NOT NULL,
  `tax_category` varchar(32) NOT NULL,
  `tax_group_sequence` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_tax_categories`
--

INSERT INTO `ospos_tax_categories` (`tax_category_id`, `tax_category`, `tax_group_sequence`) VALUES
(1, 'Standard', 10),
(2, 'Service', 12),
(3, 'Alcohol', 11);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_tax_codes`
--

CREATE TABLE `ospos_tax_codes` (
  `tax_code` varchar(32) NOT NULL,
  `tax_code_name` varchar(255) NOT NULL DEFAULT '',
  `tax_code_type` tinyint(2) NOT NULL DEFAULT 0,
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_tax_code_rates`
--

CREATE TABLE `ospos_tax_code_rates` (
  `rate_tax_code` varchar(32) NOT NULL,
  `rate_tax_category_id` int(10) NOT NULL,
  `tax_rate` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `rounding_code` tinyint(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_visit`
--

CREATE TABLE `ospos_visit` (
  `visit_id` int(11) NOT NULL,
  `visit1` varchar(255) DEFAULT NULL,
  `visit2` varchar(255) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_visit`
--

INSERT INTO `ospos_visit` (`visit_id`, `visit1`, `visit2`, `deleted`) VALUES
(1, 'mon', NULL, 0),
(2, 'tue', NULL, 0),
(3, 'wed', NULL, 0),
(4, 'thur', NULL, 0),
(5, 'fri', NULL, 0),
(6, 'sat', NULL, 0),
(7, 'sun', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ward`
--

CREATE TABLE `ward` (
  `ward_id` int(11) NOT NULL,
  `ward_name` varchar(255) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ward`
--

INSERT INTO `ward` (`ward_id`, `ward_name`, `deleted`) VALUES
(1, 'Azizi ALI', 0),
(2, 'bagamoyo', 0),
(3, 'Bahari Beach', 0),
(4, 'Bima', 0),
(5, 'Boko', 0),
(6, 'Boko Basihaya', 0),
(7, 'Boko chama', 0),
(8, 'Boko Magengeni', 0),
(9, 'Buguruni', 0),
(10, 'Bunju', 0),
(11, 'Bunju A', 0),
(12, 'Bunju B', 0),
(13, 'Bunju Beach', 0),
(14, 'Bunju Usalama', 0),
(15, 'Chamanzi', 0),
(16, 'Chanika', 0),
(17, 'Chanika 2', 0),
(18, 'Charambe', 0),
(19, 'Charimbe', 0),
(20, 'External', 0),
(21, 'Fery', 0),
(22, 'Gerezani', 0),
(23, 'Geza', 0),
(24, 'Goba', 0),
(25, 'Gongo La Mboto', 0),
(26, 'Ilala', 0),
(27, 'jangwani', 0),
(28, 'Jet Lumo', 0),
(29, 'Kariakoo', 0),
(30, 'Karibu Na mwurararabara', 0),
(31, 'kawe', 0),
(32, 'keko', 0),
(33, 'keko juu', 0),
(34, 'Keko magurumbasi', 0),
(35, 'Keko mawili', 0),
(36, 'Keko Mwanga', 0),
(37, 'Keko Toroli', 0),
(38, 'Kibaha', 0),
(39, 'Kibada', 0),
(40, 'Kibamba', 0),
(41, 'Kibangu', 0),
(42, 'Kibonde Maji', 0),
(43, 'Kiburugwa', 0),
(44, 'Kichangani', 0),
(46, 'Kigamboni', 0),
(47, 'Kigamboni Ferry', 0),
(48, 'Kigogo', 0),
(49, 'Kigogo Fresh', 0),
(50, 'Kijitonyama', 0),
(51, 'Kijitonyama Mpakani', 0),
(52, 'Kiluvya', 0),
(53, 'Kimanga', 0),
(54, 'Kimara', 0),
(55, 'Kimbangulile', 0),
(56, 'kingungi', 0),
(57, 'Kinondoni', 0),
(58, 'Kinyerezi', 0),
(59, 'Kipawa', 0),
(60, 'Kisukulu', 0),
(61, 'Kitunda', 0),
(62, 'Kivule', 0),
(63, 'Kiwalani', 0),
(64, 'Kizuiani', 0),
(65, 'Kongowe', 0),
(66, 'Kunduchi', 0),
(67, 'Kurasini', 0),
(68, 'Kwa Ngwale', 0),
(69, 'Kwa Urassa', 0),
(70, 'liwiti', 0),
(71, 'Luguruni', 0),
(72, 'Mabibo', 0),
(73, 'Maduka Ma Wili', 0),
(74, 'Magomeni', 0),
(75, 'Magomeni Mikumi', 0),
(76, 'Magomeni Morocco', 0),
(77, 'Magurumbasi', 0),
(78, 'Maji Matitu', 0),
(79, 'Majohe', 0),
(80, 'Makongo juu', 0),
(81, 'Makuburi', 0),
(82, 'Manzese', 0),
(83, 'Masaki', 0),
(84, 'Matosa', 0),
(85, 'Maweni', 0),
(86, 'Mawenzi', 0),
(87, 'Mazizini', 0),
(88, 'Mbagala', 0),
(89, 'Mbezi Beach', 0),
(90, 'Mbenzi Kimara', 0),
(91, 'Mbenzi kwa Msuguri', 0),
(92, 'Mbenzi Luisi', 0),
(93, 'Mbenzi Makabe', 0),
(94, 'Mbenzi Makonde', 0),
(95, 'Mbenzi Maramba Mawili', 0),
(96, 'Mbenzi mshikamano', 0),
(97, 'Mbenzi Mwisho', 0),
(98, 'Mbenzi Tank Bovu', 0),
(99, 'Mburahati', 0),
(100, 'Mbweni jkt', 0),
(101, 'Mikoroshini', 0),
(102, 'Mji Mwema', 0),
(103, 'Mkuranga', 0),
(104, 'Mlalakua', 0),
(105, 'Mponda', 0),
(106, 'Msasani', 0),
(107, 'Msewe', 0),
(108, 'Mtoni', 0),
(109, 'Mwananyamala', 0),
(110, 'Mwandege', 0),
(111, 'Mwembeyanga', 0),
(112, 'Mwenge', 0),
(113, 'Mzambarauni', 0),
(114, 'Namanga', 0),
(115, 'Oysterbay', 0),
(116, 'Posta', 0),
(117, 'Pugu', 0),
(118, 'Saba Saba', 0),
(120, 'Sala Sala', 0),
(121, 'Sanene', 0),
(122, 'Segerea', 0),
(123, 'Shekilango', 0),
(124, 'Shop', 0),
(125, 'Shwange', 0),
(126, 'Sinza A', 0),
(127, 'Sinza B', 0),
(128, 'Sinza C', 0),
(129, 'Sinza Madukani', 0),
(130, 'Survey', 0),
(131, 'Tabata', 0),
(132, 'Tabata Bima', 0),
(133, 'Tabata Relin', 0),
(134, 'Tandika Manlo', 0),
(135, 'Tandale Kwa Bibi Tumbo', 0),
(136, 'Tandale Kwa Bi Mtumwa', 0),
(137, 'Tandale kwa Tumbo', 0),
(138, 'Tandale Sokoni', 0),
(139, 'Tandika', 0),
(140, 'Tandika Mango', 0),
(141, 'Tegeta', 0),
(142, 'Tegeta A', 0),
(143, 'Temeke', 0),
(144, 'Temeke Mikoroshini', 0),
(145, 'Temeke Mwembeyanga', 0),
(146, 'Toangoma', 0),
(147, 'Tungi', 0),
(148, 'Ubungo', 0),
(149, 'Ubungo Maziwa', 0),
(150, 'Ubungo Msewe', 0),
(151, 'Ubungo Riverside', 0),
(152, 'Udongo Kurasini', 0),
(153, 'Ukonga', 0),
(154, 'Upanga', 0),
(155, 'Viji Bweni', 0),
(156, 'Vingunguti', 0),
(157, 'Wazo', 0),
(158, 'Yombo', 0),
(159, 'Yombo Buza', 0),
(160, 'Yombo Dovya', 0),
(161, 'Yombo Kilakala', 0),
(162, 'Yombo Kisiwani', 0),
(163, 'Yombo Relini', 0),
(164, 'Tand9a2-6chka Manlo', 0),
(165, 'Tan2coka Manlo', 0),
(166, 'Tand ka Manlo', 0),
(167, 'Tan6hka Manlo', 0),
(168, 'Tancoka Manlo', 0),
(169, 'Mbweni', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ospos_app_config`
--
ALTER TABLE `ospos_app_config`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `ospos_attendence`
--
ALTER TABLE `ospos_attendence`
  ADD PRIMARY KEY (`att_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `ospos_call_card`
--
ALTER TABLE `ospos_call_card`
  ADD PRIMARY KEY (`card_id`),
  ADD UNIQUE KEY `card_id` (`card_id`),
  ADD KEY `visit_id` (`visit_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `ospos_channel`
--
ALTER TABLE `ospos_channel`
  ADD PRIMARY KEY (`channel_id`);

--
-- Indexes for table `ospos_comp_holding_stocks`
--
ALTER TABLE `ospos_comp_holding_stocks`
  ADD PRIMARY KEY (`hold_id`),
  ADD KEY `comp_id` (`comp_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `ospos_comp_items`
--
ALTER TABLE `ospos_comp_items`
  ADD PRIMARY KEY (`comp_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `ospos_comp_sales_items`
--
ALTER TABLE `ospos_comp_sales_items`
  ADD PRIMARY KEY (`sale_id`),
  ADD KEY `comp_id` (`comp_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `ospos_customers`
--
ALTER TABLE `ospos_customers`
  ADD PRIMARY KEY (`person_id`),
  ADD UNIQUE KEY `account_number` (`account_number`),
  ADD KEY `person_id` (`person_id`),
  ADD KEY `package_id` (`package_id`),
  ADD KEY `card_id` (`card_id`),
  ADD KEY `visit_id` (`visit_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `retail_id` (`retail_id`),
  ADD KEY `channel_id` (`channel_id`);

--
-- Indexes for table `ospos_customers_packages`
--
ALTER TABLE `ospos_customers_packages`
  ADD PRIMARY KEY (`package_id`);

--
-- Indexes for table `ospos_customers_points`
--
ALTER TABLE `ospos_customers_points`
  ADD PRIMARY KEY (`id`),
  ADD KEY `person_id` (`person_id`),
  ADD KEY `package_id` (`package_id`),
  ADD KEY `sale_id` (`sale_id`);

--
-- Indexes for table `ospos_dinner_tables`
--
ALTER TABLE `ospos_dinner_tables`
  ADD PRIMARY KEY (`dinner_table_id`);

--
-- Indexes for table `ospos_employees`
--
ALTER TABLE `ospos_employees`
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `ospos_expenses`
--
ALTER TABLE `ospos_expenses`
  ADD PRIMARY KEY (`expense_id`),
  ADD KEY `expense_category_id` (`expense_category_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `ospos_expense_categories`
--
ALTER TABLE `ospos_expense_categories`
  ADD PRIMARY KEY (`expense_category_id`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Indexes for table `ospos_giftcards`
--
ALTER TABLE `ospos_giftcards`
  ADD PRIMARY KEY (`giftcard_id`),
  ADD UNIQUE KEY `giftcard_number` (`giftcard_number`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `ospos_grants`
--
ALTER TABLE `ospos_grants`
  ADD PRIMARY KEY (`permission_id`,`person_id`);

--
-- Indexes for table `ospos_inventory`
--
ALTER TABLE `ospos_inventory`
  ADD PRIMARY KEY (`trans_id`),
  ADD KEY `trans_items` (`trans_items`),
  ADD KEY `trans_user` (`trans_user`),
  ADD KEY `trans_location` (`trans_location`);

--
-- Indexes for table `ospos_items`
--
ALTER TABLE `ospos_items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `item_number` (`item_number`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `ospos_items_taxes`
--
ALTER TABLE `ospos_items_taxes`
  ADD PRIMARY KEY (`item_id`,`name`,`percent`);

--
-- Indexes for table `ospos_item_kits`
--
ALTER TABLE `ospos_item_kits`
  ADD PRIMARY KEY (`item_kit_id`);

--
-- Indexes for table `ospos_item_kit_items`
--
ALTER TABLE `ospos_item_kit_items`
  ADD PRIMARY KEY (`item_kit_id`,`item_id`,`quantity`),
  ADD KEY `ospos_item_kit_items_ibfk_2` (`item_id`);

--
-- Indexes for table `ospos_item_quantities`
--
ALTER TABLE `ospos_item_quantities`
  ADD PRIMARY KEY (`item_id`,`location_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `ospos_modules`
--
ALTER TABLE `ospos_modules`
  ADD PRIMARY KEY (`module_id`),
  ADD UNIQUE KEY `desc_lang_key` (`desc_lang_key`),
  ADD UNIQUE KEY `name_lang_key` (`name_lang_key`);

--
-- Indexes for table `ospos_people`
--
ALTER TABLE `ospos_people`
  ADD PRIMARY KEY (`person_id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `ospos_permissions`
--
ALTER TABLE `ospos_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `module_id` (`module_id`);

--
-- Indexes for table `ospos_receivings`
--
ALTER TABLE `ospos_receivings`
  ADD PRIMARY KEY (`receiving_id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `reference` (`reference`);

--
-- Indexes for table `ospos_receivings_items`
--
ALTER TABLE `ospos_receivings_items`
  ADD PRIMARY KEY (`receiving_id`,`item_id`,`line`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `ospos_retail_type`
--
ALTER TABLE `ospos_retail_type`
  ADD PRIMARY KEY (`retail_id`);

--
-- Indexes for table `ospos_sales`
--
ALTER TABLE `ospos_sales`
  ADD PRIMARY KEY (`sale_id`),
  ADD UNIQUE KEY `invoice_number` (`invoice_number`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `sale_time` (`sale_time`),
  ADD KEY `dinner_table_id` (`dinner_table_id`);

--
-- Indexes for table `ospos_sales_items`
--
ALTER TABLE `ospos_sales_items`
  ADD PRIMARY KEY (`sale_id`,`item_id`,`line`),
  ADD KEY `sale_id` (`sale_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `item_location` (`item_location`);

--
-- Indexes for table `ospos_sales_items_taxes`
--
ALTER TABLE `ospos_sales_items_taxes`
  ADD PRIMARY KEY (`sale_id`,`item_id`,`line`,`name`,`percent`),
  ADD KEY `sale_id` (`sale_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `ospos_sales_payments`
--
ALTER TABLE `ospos_sales_payments`
  ADD PRIMARY KEY (`sale_id`,`payment_type`),
  ADD KEY `sale_id` (`sale_id`);

--
-- Indexes for table `ospos_sales_reward_points`
--
ALTER TABLE `ospos_sales_reward_points`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_id` (`sale_id`);

--
-- Indexes for table `ospos_sales_taxes`
--
ALTER TABLE `ospos_sales_taxes`
  ADD PRIMARY KEY (`sale_id`,`tax_type`,`tax_group`),
  ADD KEY `print_sequence` (`sale_id`,`print_sequence`,`tax_type`,`tax_group`);

--
-- Indexes for table `ospos_sessions`
--
ALTER TABLE `ospos_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `ospos_stock_locations`
--
ALTER TABLE `ospos_stock_locations`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `ospos_suppliers`
--
ALTER TABLE `ospos_suppliers`
  ADD UNIQUE KEY `account_number` (`account_number`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `ospos_survey`
--
ALTER TABLE `ospos_survey`
  ADD PRIMARY KEY (`survey_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `item_liked` (`item_liked`);

--
-- Indexes for table `ospos_tax_categories`
--
ALTER TABLE `ospos_tax_categories`
  ADD PRIMARY KEY (`tax_category_id`);

--
-- Indexes for table `ospos_tax_codes`
--
ALTER TABLE `ospos_tax_codes`
  ADD PRIMARY KEY (`tax_code`);

--
-- Indexes for table `ospos_tax_code_rates`
--
ALTER TABLE `ospos_tax_code_rates`
  ADD PRIMARY KEY (`rate_tax_code`,`rate_tax_category_id`);

--
-- Indexes for table `ospos_visit`
--
ALTER TABLE `ospos_visit`
  ADD PRIMARY KEY (`visit_id`);

--
-- Indexes for table `ward`
--
ALTER TABLE `ward`
  ADD PRIMARY KEY (`ward_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ospos_attendence`
--
ALTER TABLE `ospos_attendence`
  MODIFY `att_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ospos_call_card`
--
ALTER TABLE `ospos_call_card`
  MODIFY `card_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ospos_comp_holding_stocks`
--
ALTER TABLE `ospos_comp_holding_stocks`
  MODIFY `hold_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ospos_comp_items`
--
ALTER TABLE `ospos_comp_items`
  MODIFY `comp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ospos_comp_sales_items`
--
ALTER TABLE `ospos_comp_sales_items`
  MODIFY `sale_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ospos_customers_packages`
--
ALTER TABLE `ospos_customers_packages`
  MODIFY `package_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ospos_customers_points`
--
ALTER TABLE `ospos_customers_points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ospos_dinner_tables`
--
ALTER TABLE `ospos_dinner_tables`
  MODIFY `dinner_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ospos_expenses`
--
ALTER TABLE `ospos_expenses`
  MODIFY `expense_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ospos_expense_categories`
--
ALTER TABLE `ospos_expense_categories`
  MODIFY `expense_category_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ospos_giftcards`
--
ALTER TABLE `ospos_giftcards`
  MODIFY `giftcard_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ospos_inventory`
--
ALTER TABLE `ospos_inventory`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `ospos_items`
--
ALTER TABLE `ospos_items`
  MODIFY `item_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ospos_item_kits`
--
ALTER TABLE `ospos_item_kits`
  MODIFY `item_kit_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ospos_people`
--
ALTER TABLE `ospos_people`
  MODIFY `person_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;

--
-- AUTO_INCREMENT for table `ospos_receivings`
--
ALTER TABLE `ospos_receivings`
  MODIFY `receiving_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `ospos_sales`
--
ALTER TABLE `ospos_sales`
  MODIFY `sale_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `ospos_sales_reward_points`
--
ALTER TABLE `ospos_sales_reward_points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ospos_stock_locations`
--
ALTER TABLE `ospos_stock_locations`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `ospos_survey`
--
ALTER TABLE `ospos_survey`
  MODIFY `survey_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ospos_tax_categories`
--
ALTER TABLE `ospos_tax_categories`
  MODIFY `tax_category_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ospos_visit`
--
ALTER TABLE `ospos_visit`
  MODIFY `visit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ospos_attendence`
--
ALTER TABLE `ospos_attendence`
  ADD CONSTRAINT `ospos_attendence_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `ospos_employees` (`person_id`),
  ADD CONSTRAINT `ospos_attendence_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `ospos_customers` (`person_id`);

--
-- Constraints for table `ospos_call_card`
--
ALTER TABLE `ospos_call_card`
  ADD CONSTRAINT `ospos_call_card_ibfk_1` FOREIGN KEY (`visit_id`) REFERENCES `ospos_visit` (`visit_id`),
  ADD CONSTRAINT `ospos_call_card_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `ospos_people` (`person_id`),
  ADD CONSTRAINT `ospos_call_card_ibfk_3` FOREIGN KEY (`location_id`) REFERENCES `ospos_stock_locations` (`location_id`);

--
-- Constraints for table `ospos_comp_holding_stocks`
--
ALTER TABLE `ospos_comp_holding_stocks`
  ADD CONSTRAINT `ospos_comp_holding_stocks_ibfk_1` FOREIGN KEY (`comp_id`) REFERENCES `ospos_comp_items` (`comp_id`),
  ADD CONSTRAINT `ospos_comp_holding_stocks_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `ospos_customers` (`person_id`);

--
-- Constraints for table `ospos_comp_items`
--
ALTER TABLE `ospos_comp_items`
  ADD CONSTRAINT `ospos_comp_items_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `ospos_customers` (`person_id`),
  ADD CONSTRAINT `ospos_comp_items_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `ospos_customers` (`person_id`);

--
-- Constraints for table `ospos_comp_sales_items`
--
ALTER TABLE `ospos_comp_sales_items`
  ADD CONSTRAINT `ospos_comp_sales_items_ibfk_1` FOREIGN KEY (`comp_id`) REFERENCES `ospos_comp_items` (`comp_id`),
  ADD CONSTRAINT `ospos_comp_sales_items_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `ospos_customers` (`person_id`);

--
-- Constraints for table `ospos_customers`
--
ALTER TABLE `ospos_customers`
  ADD CONSTRAINT `ospos_customers_ibfk_1` FOREIGN KEY (`card_id`) REFERENCES `ospos_call_card` (`card_id`),
  ADD CONSTRAINT `ospos_customers_ibfk_2` FOREIGN KEY (`visit_id`) REFERENCES `ospos_visit` (`visit_id`),
  ADD CONSTRAINT `ospos_customers_ibfk_3` FOREIGN KEY (`location_id`) REFERENCES `ospos_stock_locations` (`location_id`),
  ADD CONSTRAINT `ospos_customers_ibfk_4` FOREIGN KEY (`retail_id`) REFERENCES `ospos_retail_type` (`retail_id`),
  ADD CONSTRAINT `ospos_customers_ibfk_5` FOREIGN KEY (`channel_id`) REFERENCES `ospos_channel` (`channel_id`);

--
-- Constraints for table `ospos_expenses`
--
ALTER TABLE `ospos_expenses`
  ADD CONSTRAINT `ospos_expenses_ibfk_1` FOREIGN KEY (`expense_category_id`) REFERENCES `ospos_expense_categories` (`expense_category_id`),
  ADD CONSTRAINT `ospos_expenses_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `ospos_employees` (`person_id`);

--
-- Constraints for table `ospos_survey`
--
ALTER TABLE `ospos_survey`
  ADD CONSTRAINT `ospos_survey_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `ospos_customers` (`person_id`),
  ADD CONSTRAINT `ospos_survey_ibfk_2` FOREIGN KEY (`item_liked`) REFERENCES `ospos_items` (`item_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
