-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 13, 2022 at 07:16 AM
-- Server version: 5.7.33
-- PHP Version: 8.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `product_id`, `product_qty`, `created_at`, `updated_at`) VALUES
(4, '6', '39', '1', '2022-08-08 22:31:20', '2022-08-08 22:31:20'),
(5, '1', '33', '1', '2022-08-13 00:08:55', '2022-08-13 00:08:55');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `popular` tinyint(4) NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_descrip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `status`, `popular`, `image`, `meta_title`, `meta_descrip`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(7, 'Pencil', 'pencil', 'it is good', 0, 0, '1659842244.webp', 'pencil', 'pencil', 'pencil', '2022-08-06 21:17:24', '2022-08-06 21:17:24'),
(8, 'Potato Chips', 'Potato Chips', 'A potato chip  is a thin slice of potato that has been either are manufactured using various .', 0, 0, '1659872039.jpeg', 'potato chips', 'Potato chips', 'chips', '2022-08-07 05:33:59', '2022-08-07 05:57:31'),
(9, 'Cooking Oil', 'Cooking Oil', 'It is very much popular in bangladesh.', 0, 0, '1659873431.jpg', 'oil', 'cooking oil', 'cooking oil', '2022-08-07 05:57:11', '2022-08-07 05:57:11'),
(10, 'Soft-Drinks', 'Soft-Drinks', 'Soft drinks is very popular in bangladesh.', 0, 0, '1659894809.webp', 'soft drinks', 'soft drinks', 'drinks', '2022-08-07 11:53:29', '2022-08-07 11:53:29'),
(11, 'Noodles', 'Noodles', 'Noodles are usually cooked in boiling water, sometimes with cooking oil or salt added.', 0, 0, '1659944788.jpeg', 'noodels', 'noodles', 'noodles', '2022-08-08 01:46:28', '2022-08-08 01:46:28'),
(12, 'Biscuits', 'Biscuits', 'What are different types of biscuits? Biscuits broadly fall into four categories, distinguished by their recipes.', 0, 0, '1660105960.jpg', 'Biscuits', 'Buscuits', 'Biscuits', '2022-08-09 22:32:40', '2022-08-09 22:32:40'),
(13, 'Masala', 'Masala', 'Masla is good and make the food very tasty and reduce the work.', 0, 0, '1660239518.jpg', 'Masala', 'Masala', 'Masala', '2022-08-11 11:38:38', '2022-08-11 11:38:38'),
(14, 'Soap', 'Soap', 'Soap is very good to use.', 0, 0, '1660325717.webp', 'Soap', 'Soap', 'Soap', '2022-08-12 11:35:17', '2022-08-12 11:35:17'),
(15, 'Lentis', 'Lentis', 'Lentis/Dal is very popular food in our country.', 0, 0, '1660326975.jpg', 'dal', 'dal lentis', 'Lentis', '2022-08-12 11:56:15', '2022-08-12 12:03:32');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_21_170951_create_categories_table', 1),
(6, '2022_07_22_123057_create_products_table', 1),
(7, '2022_07_23_193136_create_carts_table', 1),
(8, '2022_07_25_070647_alter_users_table', 1),
(9, '2022_07_25_081200_create_orders_table', 1),
(10, '2022_07_25_081909_create_order_items_table', 1),
(11, '2022_07_25_165353_alter_orders_table', 1),
(12, '2022_07_26_184439_create_wishlists_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `fname`, `lname`, `email`, `phone`, `address1`, `address2`, `city`, `state`, `country`, `zip`, `total_price`, `status`, `message`, `tracking_no`, `created_at`, `updated_at`) VALUES
(1, '2', 'user1', 'user1', 'user1@gmail.com', '01793862233', 'Mohakhali', 'Dhaka', 'Dhaka', 'Dhaka', 'Bangladesh', '1212', '4120', 0, NULL, 'Ibrahim245', '2022-07-27 12:11:38', '2022-07-27 12:11:38'),
(2, '1', 'admin', 'admin', 'admin@gmail.com', '01793865052', 'Uttara', 'Dhaka', 'Dhaka', 'Dhaka', 'Bangladesh', '1230', '1140', 0, NULL, 'sobuj688', '2022-07-30 13:33:55', '2022-07-30 13:33:55'),
(3, '1', 'admin', 'admin', 'admin@gmail.com', '01793865052', 'Uttara', 'Dhaka', 'Dhaka', 'Dhaka', 'Bangladesh', '1230', '1960', 1, NULL, 'ibu566', '2022-08-02 10:07:50', '2022-08-02 10:21:52'),
(4, '2', 'user1', 'user1', 'user1@gmail.com', '01793862233', 'Mohakhali', 'Dhaka', 'Dhaka', 'Dhaka', 'Bangladesh', '1212', '570', 0, NULL, 'kanta499', '2022-08-04 09:29:21', '2022-08-04 09:29:21'),
(5, '1', 'admin', 'admin', 'admin@gmail.com', '01793865052', 'Uttara', 'Dhaka', 'Dhaka', 'Dhaka', 'Bangladesh', '1230', '1402', 0, NULL, 'nirjhor752', '2022-08-06 22:17:04', '2022-08-06 22:17:04'),
(6, '1', 'admin', 'admin', 'admin@gmail.com', '01793865052', 'Uttara', 'Dhaka', 'Dhaka', 'Dhaka', 'Bangladesh', '1230', '0', 0, NULL, 'Ibrahim456', '2022-08-07 12:11:16', '2022-08-07 12:11:16'),
(7, '1', 'admin', 'admin', 'admin@gmail.com', '01793865052', 'Uttara', 'Dhaka', 'Dhaka', 'Dhaka', 'Bangladesh', '1230', '0', 0, NULL, 'Ibrahim754', '2022-08-08 22:28:43', '2022-08-08 22:28:43');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cate_id` bigint(20) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `small_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `trending` tinyint(4) NOT NULL,
  `meta_title` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `cate_id`, `name`, `slug`, `small_description`, `description`, `original_price`, `selling_price`, `image`, `qty`, `tax`, `status`, `trending`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(22, 7, 'Pencil Beauty', 'Pencil Beauty', 'it is very good', 'an instrument for writing or drawing, consisting of a thin stick of graphite or a similar substance enclosed in a long thin piece of wood or fixed in a cylindrical case.', '15', '12', '1659845413.webp', '2', '4', 0, 0, 'pencil', 'pencil', 'an instrument for writing or drawing, consisting of a thin stick of graphite or a similar substance enclosed in a long thin piece of wood or fixed in a cylindrical case.', '2022-08-06 22:10:13', '2022-08-06 22:17:04'),
(23, 7, 'pencil water', 'Pencil  Water', 'it is very good to use like write on water', 'an instrument for writing or drawing, consisting of a thin stick of graphite or a similar substance enclosed in a long thin piece of wood or fixed in a cylindrical case.', '35', '30', '1659845660.webp', '10', '5', 0, 0, 'pencil', 'pencil', 'pencil', '2022-08-06 22:14:20', '2022-08-06 22:14:20'),
(24, 7, 'pencil 2x', 'pencil 2x', 'lite type pencil', 'an instrument for writing or drawing, consisting of a thin stick of graphite or a similar substance enclosed in a long thin piece of wood or fixed in a cylindrical case.', '25', '20', '1659845750.webp', '12', '5', 0, 0, 'pencil', 'pencil', 'It is very good to use', '2022-08-06 22:15:50', '2022-08-06 22:15:50'),
(25, 8, 'Potato spicy', 'Potato spicy', 'They are commonly served as a snack, side dish, or appetizer. The basic chips are cooked and salted; additional varieties are manufactured using various flavorings', 'They are commonly served as a snack, side dish, or appetizer. The basic chips are cooked and salted; additional varieties are manufactured using various flavorings and ingredients including herbs, spices, cheeses, other natural flavors, artificial flavors, and additives.and ingredients including herbs, spices, cheeses, other natural flavors, artificial flavors, and additives.', '55', '50', '1659872242.jpg', '5', '5', 0, 0, 'potato', 'potato', 'potato chips', '2022-08-07 05:37:22', '2022-08-07 05:37:22'),
(26, 8, 'Potato tasty', 'Potato tasty', 'They are commonly served as a snack, side dish, or appetizer. The basic chips are cooked and salted; additional varieties are manufactured using various flavorings', 'They are commonly served as a snack, side dish, or appetizer. The basic chips are cooked and salted; additional varieties are manufactured using various flavorings and ingredients including herbs, spices, cheeses, other natural flavors, artificial flavors, and additives.', '45', '40', '1659872340.jpg', '10', '5', 0, 0, 'potato', 'potato', 'potato chips', '2022-08-07 05:39:00', '2022-08-07 05:39:00'),
(27, 8, 'Lays', 'Lays', 'It is very popular all over the wolrd .', 'It is very popular all over the wolrd .It is very popular all over the wolrd .and we know it very well.', '90', '85', '1659872456.jpg', '15', '5', 0, 0, 'lyas', 'lays', 'lays', '2022-08-07 05:40:56', '2022-08-07 05:40:56'),
(28, 8, 'Pran Potato', 'Pran Potato', 'Pran Potato is very tasty', 'Pran Potato is very tasty.lays is very tasty using various flavorings and ingredients including herbs, spices, cheeses, other natural flavors, artificial flavors, and additives.', '10', '8', '1659872547.jpg', '12', '2', 0, 0, 'Pran Potato', 'Pran Potato', 'Pran Potato', '2022-08-07 05:42:27', '2022-08-07 05:43:26'),
(29, 8, 'Potato special', 'Potato special', 'Very good to eat and feel the tasty.', 'using various flavorings and ingredients including herbs, spices, cheeses, other natural flavors, artificial flavors, and additives. using various flavorings and ingredients including herbs, spices, cheeses, other natural flavors, artificial flavors, and additives.', '30', '25', '1659872713.jpg', '10', '4', 0, 0, 'potato', 'potato', 'potato', '2022-08-07 05:45:13', '2022-08-07 05:45:13'),
(30, 8, 'Potato fry', 'Potato fry', 'it is very much good and tasty.', 'using various flavorings and ingredients including herbs, spices, cheeses, other natural flavors, artificial flavors, and additives. using various flavorings and ingredients including herbs, spices, cheeses, other natural flavors, artificial flavors, and additives.', '35', '30', '1659872830.jpg', '20', '5', 0, 0, 'potato fry', 'potato fry', 'potato fry chiken potato', '2022-08-07 05:47:10', '2022-08-07 05:47:10'),
(31, 9, 'Rupchada', 'Rupchada', 'Soybean oil is a vegetable oil extracted from the seeds of the soybean', 'Soybean oil is a vegetable oil extracted from the seeds of the soybean (Glycine max). It is one of the most widely consumed cooking oils and the second most .(Glycine max). It is one of the most widely consumed cooking oils and the second most .', '550', '535', '1659877786.webp', '20', '15', 0, 0, 'soyabean oil', 'soyabean oil', 'cooking oil soyabean oil', '2022-08-07 07:09:46', '2022-08-07 07:09:46'),
(32, 9, 'Fresh Oil', 'Fresh Oil', 'fresh is good for health', 'fresh is good for health fresh is good for health fresh is good for health fresh is good for health', '350', '320', '1659877921.jpg', '10', '10', 0, 0, 'soya bean', 'oil', 'oil soya bean', '2022-08-07 07:12:01', '2022-08-07 07:12:01'),
(33, 9, 'Bashudhara oil', 'Bashudhara oil', 'Bashudhara oil is good for health and it have all protin prperly', 'Bashudhara oil is good for health and it have all protin prperly Bashudhara oil is good for health and it have all protin prperly Bashudhara oil is good for health and it have all protin prperly Bashudhara oil is good for health and it have all protin prperly', '450', '430', '1659878112.jpeg', '14', '12', 0, 0, 'soyabean oil', 'soyabean oil', 'oil', '2022-08-07 07:15:12', '2022-08-07 07:15:12'),
(34, 9, 'Teer Oil', 'Teer Oil', 'It is good for health and have all nutritious', 'It is good for health and have all nutritious It is good for health and have all nutritious It is good for health and have all nutritious.It is good for health and have all nutritious', '550', '530', '1659878251.jpg', '35', '30', 0, 0, 'soyabean oil', 'soyabean oil', 'bean oil', '2022-08-07 07:17:31', '2022-08-07 07:17:31'),
(35, 9, 'Pran Mustarded oil', 'Pran Mustarded oil', 'It is very good for health.', 'It is very good for health. It is very good for health. It is very good for health.', '450', '430', '1659878395.jpg', '20', '45', 0, 0, 'mustarded oil', 'oil mustarded', 'mustadred oil', '2022-08-07 07:19:55', '2022-08-07 07:19:55'),
(36, 9, 'Fortune masturded oil', 'Fortune masturded oil', 'Fortune mustarded oil is the best oil in bd.', 'Fortune mustarded oil is the best oil in bd. Fortune mustarded oil is the best oil in bd. Fortune mustarded oil is the best oil in bd. Fortune mustarded oil is the best oil in bd.', '455', '435', '1659878536.jpg', '23', '35', 0, 0, 'mustarded', 'oil', 'mustarded oil', '2022-08-07 07:22:16', '2022-08-07 07:22:16'),
(37, 10, 'Coca-cola', 'Coca-cola', 'Coca cola is the most popular in the world.', 'Coca cola is the most popular in the world.Coca cola is the most popular in the world.', '55', '50', '1659894945.webp', '12', '5', 0, 0, 'coca cola', 'coca', 'coca kola soft drinks', '2022-08-07 11:55:45', '2022-08-07 11:55:45'),
(38, 10, 'Pepsi', 'Pepsi', 'pepsi is the popular drinks', 'pepsi is the popular drinks in the wolrd .it is popular in bangladesh also', '55', '50', '1659895083.webp', '10', '3', 0, 0, 'pepsi', 'pesi cola', 'pesi cola drinks', '2022-08-07 11:58:03', '2022-08-07 11:58:03'),
(39, 10, 'Sprite', 'Sprite', 'sprite is popular and very good to drinks', 'sprite is popular and very good to drinks.sprite is popular and very good to drinks', '45', '40', '1659895374.jpg', '45', '4', 0, 0, 'sprite', 'sprite', 'sprite drinks', '2022-08-07 12:02:54', '2022-08-07 12:02:54'),
(40, 10, 'Speed cane', 'Speed cane', 'speed cane is good to drinks.and very popular in bangladesh', 'speed cane is good to drinks.and very popular in bangladesh.speed cane is good to drinks.and very popular in bangladesh', '35', '30', '1659895542.jpg', '33', '3', 0, 0, 'speed cane', 'speed', 'speed drinks cane', '2022-08-07 12:05:42', '2022-08-07 12:05:42'),
(41, 10, 'Mountain dew', 'Mountain dew', 'Mountain dew is the best of all the drinks.it is very popular in the wolrd and bangladesh also.', 'Mountain dew is the best of all the drinks.it is very popular in the wolrd and bangladesh also.Mountain dew is the best of all the drinks.it is very popular in the wolrd and bangladesh also.', '45', '40', '1659895684.jpg', '10', '5', 0, 0, 'dew', 'mountain dew', 'dew drinks', '2022-08-07 12:08:04', '2022-08-07 12:08:04'),
(42, 11, 'Chopsticks Noodles', 'Chopsticks Noodles', 'it is very popular in bangladesh.', 'it is very popular in bangladesh.it is very good to eat.', '120', '110', '1659945001.webp', '10', '5', 0, 0, 'noodles', 'noodles', 'noodles', '2022-08-08 01:49:35', '2022-08-08 01:50:01'),
(43, 11, 'Mr Noodles', 'Mr Noodles', 'Noodles are usually cooked in boiling water, sometimes with cooking oil or salt added.', 'Noodles are usually cooked in boiling water, sometimes with cooking oil or salt added.Noodles are usually cooked in boiling water, sometimes with cooking oil or salt added.', '220', '210', '1659945272.webp', '5', '5', 0, 0, 'Mr noodles', 'noodles', 'noodles', '2022-08-08 01:54:32', '2022-08-08 01:54:32'),
(44, 11, 'Fresh Noodles', 'Fresh Noodles', 'Fresh noodles is good for health.and it is very tasty and healthy.', 'Fresh noodles is good for health.and it is very tasty and healthy.Fresh noodles is good for health.and it is very tasty and healthy.', '130', '120', '1659945463.png', '5', '5', 0, 0, 'fresh noodles', 'noodles', 'noodles', '2022-08-08 01:57:43', '2022-08-08 01:57:43'),
(45, 11, 'Maggi Noodles', 'Maggi Noodles', 'Maggi noodles is very good for health.and it is very popular in bangladesh.', 'Maggi noodles is very good for health.and it is very popular in bangladesh.Maggi noodles is very good for health.and it is very popular in bangladesh.Maggi noodles is very good for health.and it is very popular in bangladesh.', '220', '205', '1659945605.jpg', '10', '5', 0, 0, 'maggi noodles', 'maggi', 'maggi noodles', '2022-08-08 02:00:05', '2022-08-08 02:00:05'),
(46, 11, 'Mama Noodles', 'Mama Noodles', 'Mama Noodles is very good for health.', 'Mama Noodles is very good for health.Mama Noodles is very good for health.Mama Noodles is very good for health.', '130', '120', '1659945778.jpg', '30', '10', 0, 0, 'noodles', 'mama', 'mama noodels', '2022-08-08 02:02:58', '2022-08-08 02:02:58'),
(47, 12, 'Oreo', 'Oreo', 'This is very good and tasty .I like it very much.', 'This is very good and tasty .I like it very much.This is very good and tasty .I like it very much.', '30', '26', '1660106104.jpg', '10', '2', 0, 0, 'oreo', 'biscuits', 'oreo biscuits', '2022-08-09 22:35:04', '2022-08-09 22:35:04'),
(48, 12, 'Tasties', 'Tasties', 'It is very good to eat.This is the famus all over the wolrd.', 'It is very good to eat.This is the famus all over the wolrd.It is very good to eat.This is the famus all over the wolrd.', '35', '30', '1660106227.jpg', '20', '3', 0, 0, 'Biscuits', 'biscuit', 'biscuit', '2022-08-09 22:37:07', '2022-08-09 22:37:07'),
(49, 12, 'Take Away', 'Take Away', 'Take Away is the best brand of the biscuits.it is pleasure to eat this  biscuits.', 'Take Away is the best brand of the biscuits.it is pleasure to eat this  biscuits.Take Away is the best brand of the biscuits.it is pleasure to eat this  biscuits.', '28', '25', '1660106368.jpg', '10', '2', 0, 0, 'take away', 'take away', 'Take away biscuits', '2022-08-09 22:39:28', '2022-08-09 22:39:28'),
(50, 12, 'Jammi Dooger', 'Jammi Dooger', 'Jammi Dooger is good', 'Jammi Dooger is good Jammi Dooger is good Jammi Dooger is good Jammi Dooger is good', '25', '20', '1660106502.jpg', '5', '3', 0, 0, 'Jammi Dooger', 'Jammi Dooger', 'Jammi Dooger', '2022-08-09 22:41:42', '2022-08-09 22:41:42'),
(51, 12, 'Tip Biscuits', 'Tip Biscuits', 'Tip Biscuits is good.', 'Tip Biscuits is good. Tip Biscuits is good. Tip Biscuits is good. Tip Biscuits is good.', '20', '18', '1660106615.jpg', '2', '3', 0, 0, 'tip', 'tip  biscuits', 'Tip biscuits', '2022-08-09 22:43:35', '2022-08-09 22:43:35'),
(52, 12, 'Lexus', 'Lexus', 'Lexus is good', 'Lexus is good for health.Lexus is good for health. Lexus is good for health. Lexus is good for health. Lexus is good for health.', '125', '120', '1660106714.webp', '10', '4', 0, 0, 'lexas', 'lexas', 'lexas', '2022-08-09 22:45:14', '2022-08-09 22:45:14'),
(53, 13, 'BD masala', 'BD masala', 'BD masala is good to eat.', 'BD masala is good to eat. BD masala is good to eat. BD masala is good to eat.BD masala is good to eat.', '120', '115', '1660239678.jpg', '5', '5', 0, 0, 'masala', 'masala', 'masala', '2022-08-11 11:41:18', '2022-08-11 11:41:18'),
(54, 13, 'Raduni masala', 'Raduni masala', 'Raduni masala is good to eat.', 'Raduni masala is good to eat. Raduni masala is good to eat.Raduni masala is good to eat.Raduni masala is good to eat.', '150', '146', '1660239779.webp', '10', '5', 0, 0, 'Raduni', 'Raduni', 'Raduni', '2022-08-11 11:42:59', '2022-08-11 11:42:59'),
(55, 13, 'BD Chicken Masala', 'BD Chicken Masala', 'BD Chicken Masala is good for health and tasty.', 'BD Chicken Masala is good for health and tasty. BD Chicken Masala is good for health and tasty. BD Chicken Masala is good for health and tasty.', '165', '160', '1660239901.jpg', '5', '5', 0, 0, 'Chicken masala', 'masala', 'Chicken masala', '2022-08-11 11:45:01', '2022-08-11 11:45:01'),
(56, 13, 'Bar B Q Masala', 'Bar B Q Masala', 'Bar B Q Masala is good for health and make the food very tasty.', 'Bar B Q Masala is good for health and make the food very tasty. Bar B Q Masala is good for health and make the food very tasty.', '145', '134', '1660240014.jpg', '10', '5', 0, 0, 'Bar B Q Masala', 'Masla', 'bar b q masala', '2022-08-11 11:46:54', '2022-08-11 11:46:54'),
(57, 13, 'Rost Masala', 'Rost Masala', 'Rost Masala is good to eat.', 'Rost Masala is good to eat. Rost Masala is good to eat.Rost Masala is good to eat.', '155', '145', '1660240127.png', '3', '10', 0, 0, 'roast', 'roast masala', 'Masala', '2022-08-11 11:48:47', '2022-08-11 11:48:47'),
(58, 14, 'Dove', 'Dove', 'Dove is one of the best soap.', 'Dove is one of the best soap. Dove is one of the best soap. Dove is one of the best soap.', '80', '75', '1660325826.jpg', '4', '5', 0, 0, 'Dove', 'Dove', 'Dove', '2022-08-12 11:37:06', '2022-08-12 11:37:06'),
(59, 14, 'Lux', 'Lux', 'Lux is good to use', 'Lux is good to use Lux is good to use Lux is good to use', '45', '40', '1660325926.jpg', '5', '5', 0, 0, 'lux', 'lux soap', 'lux', '2022-08-12 11:38:46', '2022-08-12 11:38:46'),
(60, 14, 'Meril', 'Meril', 'Meril is good', 'Meril is good . Meril is good  Meril is good  Meril is good', '45', '42', '1660326018.jpg', '5', '4', 0, 0, 'meril', 'meril', 'meril', '2022-08-12 11:40:18', '2022-08-12 11:40:18'),
(61, 14, 'Pears', 'Pears', 'Pears is very good and it have a unique fragnace.', 'Pears is very good and it have a unique fragnace. Pears is very good and it have a unique fragnace.Pears is very good and it have a unique fragnace.', '55', '52', '1660326140.jpg', '10', '4', 0, 0, 'Pears', 'Pears', 'Pears', '2022-08-12 11:42:20', '2022-08-12 11:42:20'),
(62, 14, 'Lifebuoy', 'Lifebuoy', 'Lifebuoy is good', 'Lifebuoy is good and it have a very good smell.', '90', '85', '1660326290.png', '5', '5', 0, 0, 'lifebuoy', 'lifebuoy', 'lifebuoy', '2022-08-12 11:44:50', '2022-08-12 11:44:50'),
(63, 14, 'Dettol', 'Dettol', 'Dettol is really good to use.', 'Dettol is really good to use. Dettol is really good to use.Dettol is really good to use.', '55', '50', '1660326587.jpg', '10', '4', 0, 0, 'Dettol', 'Dettol', 'Dettol', '2022-08-12 11:49:47', '2022-08-12 11:49:47'),
(64, 14, 'Ice Cool', 'Ice Cool', 'Ice Cool is good to use .', 'Ice Cool is good to use . Ice Cool is good to use .Ice Cool is good to use .', '65', '60', '1660326686.jpg', '10', '5', 0, 0, 'Ice Cool', 'Cool', 'Ice cool', '2022-08-12 11:51:26', '2022-08-12 11:51:26'),
(65, 15, 'Pran dal', 'Pran dal', 'Pran dal  is very good to eat.', 'Pran dal  is very good to eat. Pran dal  is very good to eat. Pran dal  is very good to eat.', '220', '210', '1660327079.webp', '5', '5', 0, 0, 'Mosor dal', 'dal', 'dal', '2022-08-12 11:57:59', '2022-08-12 11:57:59'),
(66, 15, 'Pure Dal', 'Pure Dal', 'Pure Dal is good for health.', 'Pure Dal is good for health. Pure Dal is good for health. Pure Dal is good for health.', '180', '175', '1660327182.jpg', '5', '5', 0, 0, 'Pure Dal', 'Pure Dal', 'dal', '2022-08-12 11:59:42', '2022-08-12 11:59:42'),
(67, 15, 'Posti Dal', 'Posti Dal', 'Posti Dal is good', 'Posti Dal is good Posti Dal is good Posti Dal is good', '120', '116', '1660327324.webp', '4', '4', 0, 0, 'Posti', 'Posti', 'Post dal', '2022-08-12 12:02:04', '2022-08-12 12:02:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `lname`, `email`, `email_verified_at`, `password`, `role_as`, `remember_token`, `created_at`, `updated_at`, `phone`, `address1`, `address2`, `city`, `state`, `country`, `zip`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', NULL, '$2y$10$G9sIEOUQwnqLXViVw6Kv/.Sxb/scC3UcmAHq4WkhD3ZGIGFV3H4LC', 1, NULL, '2022-07-25 22:42:07', '2022-07-25 22:42:07', '01793865052', 'Uttara', 'Dhaka', 'Dhaka', 'Dhaka', 'Bangladesh', '1230'),
(2, 'user1', 'user1', 'user1@gmail.com', NULL, '$2y$10$REuPnWmoKlCHKWJ43RprV.wQxzl3h5xr0EBNn82KY.XJAKjXkoAYq', 0, NULL, '2022-07-25 22:54:09', '2022-07-25 22:54:09', '01793862233', 'Mohakhali', 'Dhaka', 'Dhaka', 'Dhaka', 'Bangladesh', '1212'),
(3, 'user2', 'user2', 'user2@gmail.com', NULL, '$2y$10$LMiWgV4t5QcZ/VFVlWK7rOOgeVlntwhG.MvGfT3tCq/aUkjH.35qe', 0, NULL, '2022-07-25 22:55:43', '2022-07-25 22:55:43', '01796545052', 'Mirpur', 'Dhaka', 'Dhaka', 'Dhaka', 'Bangladesh', '1216'),
(4, 'user3', 'user3', 'user3@gmail.com', NULL, '$2y$10$/twFMEL9uvfoO8KZh.jMduKszb7DaOXh3tUro3Vuo8HtdssVtXq1e', 0, NULL, '2022-07-25 22:56:03', '2022-07-25 22:56:03', '01721865052', 'Nikunja', 'Dhaka', 'Dhaka', 'Dhaka', 'Bangladesh', '1231'),
(5, 'MD. IBRAHIM MIA', NULL, 'ibrahimhossain3134@gmail.com', NULL, '$2y$10$mxD1D0uCFpGJP01Rr.ZGJeY6/.f.S.NxGUPcbMvMhsSThTiDjHc8K', 0, NULL, '2022-08-08 00:12:44', '2022-08-08 00:12:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Md Sabujur rahman', NULL, 'S@gmail.com', NULL, '$2y$10$Y41CtB/Q/5QtZdCG717NwOUHFfrxBAsyEFEwv/9grEUg5K7N6DJDe', 0, NULL, '2022-08-08 22:31:04', '2022-08-08 22:31:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
