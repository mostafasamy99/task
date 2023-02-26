-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2023 at 10:01 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) NOT NULL,
  `prod_id` varchar(191) NOT NULL,
  `prod_qty` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `prod_id`, `prod_qty`, `created_at`, `updated_at`) VALUES
(36, '4', '12', '1', '2023-02-26 17:17:32', '2023-02-26 17:17:32');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `popular` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(191) DEFAULT NULL,
  `meta_title` varchar(191) NOT NULL,
  `meta_descrip` varchar(191) NOT NULL,
  `meta_keywords` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `status`, `popular`, `image`, `meta_title`, `meta_descrip`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(15, 'Televisions', 'Televisions', 'this is a Televisions section and receivers', 1, 1, '1671434961.jpg', 'Radio Talaat Electronics Marketplace', 'TV and radio devices', 'TV', '2022-12-19 05:29:21', '2022-12-21 18:25:49'),
(16, 'Mobile Phones', 'Mobile Phones', 'this is a section for Mobile Phones and smart phones', 0, 1, '1671435083.jpg', 'Free return within the legal return period from 14 to 30 days, and if they meet the terms & conditions, For more details about return policy.', 'Pickup by 21 December when you order within next 4hrs 40mins', 'mobiles', '2022-12-19 05:31:23', '2022-12-19 05:31:23'),
(17, 'Headphones', 'Headphones', 'this is a section for Headphones and electronics', 0, 1, '1671435214.jpg', 'The Tune 510BT wireless headphones feature renowned JBL Pure Bass sound, which can be found in the most famous venues all around the world.', 'Easily control your sound and manage your calls from your headphones with the convenient buttons on the ear-cup.', 'headphones', '2022-12-19 05:33:34', '2022-12-19 05:33:34'),
(18, 'clothes', 'clothes', 'this section is for clothes and accessories', 0, 1, '1671727663.jpg', 'this section is for clothes and accessories this section is for clothes and accessories  so feel free and buy', 'modern life', 'clothes and accessories', '2022-12-22 14:47:43', '2022-12-22 14:47:43');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
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
(5, '2022_12_14_104259_create_categories_table', 2),
(6, '2022_12_16_192246_create_products_table', 3),
(7, '2022_12_20_085509_create_carts_table', 4),
(8, '2022_12_20_195252_create_orders_table', 5),
(9, '2022_12_20_195918_create_order_items_table', 5),
(10, '2022_12_22_093114_create_ratings_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) NOT NULL,
  `total_price` varchar(191) NOT NULL,
  `fname` varchar(191) NOT NULL,
  `lname` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `address` varchar(191) NOT NULL,
  `message` varchar(191) DEFAULT NULL,
  `status` tinyint(11) NOT NULL DEFAULT 0,
  `tracking_no` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `total_price`, `fname`, `lname`, `email`, `phone`, `address`, `message`, `status`, `tracking_no`, `created_at`, `updated_at`) VALUES
(1, '2', '210045', 'mostafa', 'menshawy', 'test2@gmail.com', '100200300', 'cairo', NULL, 1, 'Tofy8204', '2022-12-22 21:00:43', '2022-12-22 21:01:38'),
(2, '4', '20087', 'momo', 'ccevweew', 'momo@mail.com', '0351351', 'vwvwevew', NULL, 0, 'Tofy5830', '2023-02-26 16:52:43', '2023-02-26 16:52:43'),
(3, '4', '44997', 'momo', 'ccevweew', 'momo@mail.com', '0351351', 'vwvwevew', NULL, 0, 'Tofy4591', '2023-02-26 17:11:31', '2023-02-26 17:11:31'),
(4, '4', '7632', 'momo', 'ccevweew', 'momo@mail.com', '0351351', 'vwvwevew', NULL, 0, 'Tofy7144', '2023-02-26 17:16:08', '2023-02-26 17:16:08'),
(5, '4', '0', 'momo', 'ccevweew', 'momo@mail.com', '0351351', 'vwvwevew', NULL, 0, 'Tofy9181', '2023-02-26 17:16:42', '2023-02-26 17:16:42');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(191) NOT NULL,
  `prod_id` varchar(191) NOT NULL,
  `qty` varchar(191) NOT NULL,
  `price` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `prod_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(1, '1', '9', '3', '55016.00', '2022-12-22 21:00:43', '2022-12-22 21:00:43'),
(2, '1', '12', '3', '14999.00', '2022-12-22 21:00:43', '2022-12-22 21:00:43'),
(3, '2', '12', '1', '14999.00', '2023-02-26 16:52:43', '2023-02-26 16:52:43'),
(4, '2', '13', '2', '2544.00', '2023-02-26 16:52:43', '2023-02-26 16:52:43'),
(5, '3', '12', '3', '14999.00', '2023-02-26 17:11:31', '2023-02-26 17:11:31'),
(6, '4', '13', '3', '2544.00', '2023-02-26 17:16:08', '2023-02-26 17:16:08');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
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
  `name` varchar(191) NOT NULL,
  `slug` text NOT NULL,
  `small_description` mediumtext NOT NULL,
  `description` longtext NOT NULL,
  `original_price` varchar(191) NOT NULL,
  `selling_price` varchar(191) NOT NULL,
  `image` varchar(191) NOT NULL,
  `qty` varchar(191) NOT NULL,
  `tax` varchar(191) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `trending` tinyint(4) NOT NULL,
  `meta_title` mediumtext NOT NULL,
  `meta_keywords` mediumtext NOT NULL,
  `meta_description` mediumtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `cate_id`, `name`, `slug`, `small_description`, `description`, `original_price`, `selling_price`, `image`, `qty`, `tax`, `status`, `trending`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(7, 17, 'JBL T510 BT Wireless On-Ear Headphones - White', 'Headphones', 'The Tune 510BT wireless headphones feature renowned JBL Pure Bass sound, which can be found in the most famous venues all around the world.  With Wireless Bluetooth 5.0 Streaming, you can stream wirelessly from your device and even switch between two devices so that you don\'t miss a call.', 'For long-lasting fun, listen wirelessly for up to 40 hours and recharge the battery in as little as 2 hours with the convenient Type-C USB cable. A quick 5-minute recharge gives you 2 additional hours of music.\r\n\r\nEasily control your sound and manage your calls from your headphones with the convenient buttons on the ear-cup.\r\n\r\nSiri or Hey Google is just a button away: activate the voice assistant of your device by pushing the multi-function button.', '2470.00', '1470.00', '1671435370.jpg', '43', '10.0', 0, 1, 'SKU: JB452EL0AN9AVNAFAMZ Model: 6925281987632 Color: N/A Product Warranty: 1 Year', 'Product Warranty: 1 Year', 'Model: 6925281987632', '2022-12-19 05:36:10', '2022-12-22 20:03:27'),
(8, 17, 'Sport Bluetooth Earbuds Headphones', 'Sport Bluetooth', 'The bluetooth earphones Bluetooth earphones - True Wireless Earphone sport - pro are perfect for the most intense workouts, with zero cables but a lot of technology. ,', 'The bluetooth earphones Bluetooth earphones - True Wireless Earphone sport - pro are perfect for the most intense workouts, with zero cables but a lot of technology. , the optimized equalizer and its exclusive ergonomic design deliver crystal-clear, perfectly balanced sound at any volume. Some headphones don\'t give out a good wireless signal and produce annoying beeps and noises, but these are made from another paste. Always enjoy the best sound no matter where you carry your phone: in your hand, in your pocket, in your arm or in the gym bag.', '450.00', '350.00', '1671435513.jpg', '0', '30.0', 0, 0, 'SKU: GE810EA16O5XJNAFAMZ Model: m10 Color: black', 'Headphones + Power Bank', 'Headphones + Power Bank', '2022-12-19 05:38:33', '2022-12-19 05:38:33'),
(9, 16, 'Apple IPhone 13 Pro Single SIM Max /256GB/Gold', 'apple phone', 'Our Pro camera system gets its biggest upgrade ever. With next-level hardware that captures so much more detail. Superintelligent software for new photo and filmmaking techniques. And a mind-blowingly fast chip that makes it all possible. It’ll change the way you shoot.', 'With its redesigned lens and powerful autofocus system, the new Ultra Wide camera can focus at just 2 cm — making even the smallest details seem epic. Transform a leaf into abstract art. Capture a caterpillar’s fuzz. Magnify a dewdrop. The beauty of tiny awaits.', '57016.00', '55016.00', '1671435678.jpg', '3', '700.0', 0, 1, 'high color fidelity and low compression of ProRes let you record, edit, and deliver broadcast-ready content on the go. Now you can complete a project in ProRes entirely on your iPhone. Or easily bring ProRes videos from your iPhone into Final Cut Pro on your Mac.', 'camera', 'high quality', '2022-12-19 05:41:18', '2022-12-22 21:00:43'),
(10, 16, 'Apple IPhone 11 With FaceTime - 128GB - Purple', 'apple mobile', 'A new dual-camera system captures more of what you see and love. The fastest chip ever in a smartphone and all-day battery life let you do more and charge less. And the highest-quality video in a smartphone, so your memories look better than ever.', 'Liquid Retina LCD.: The true-to-life all-screen design makes everything look amazing.\r\nTrue Tone.: Adjusts the white balance to match the color temperature of the light around you.\r\nTap or raise to wake.: Your iPhone is ready in an instant.\r\nHaptic Touch.: Do all kinds of essential things faster with contextual menus and shortcuts.', '29029.00', '27029.00', '1671435838.jpg', '15', '450.0', 0, 1, 'Sensors: Face ID, accelerometer, gyro, proximity, compass, barometer Radio: No GPS: Yes, with A-GPS, GLONASS, GALILEO, QZSS', 'face ID', 'Loud Speaker: Yes, with stereo speakers\r\n3.5mm Jack: No\r\nActive noise cancellation with dedicated mic\r\nDolby Atmos\r\nDolby Digital Plus', '2022-12-19 05:43:58', '2022-12-19 05:43:58'),
(11, 16, 'Honor 50 5G - 6GB RAM - 128GB - Emerald Green', 'honor phone', 'OLED, 1B colors, 120Hz 6.57 inches, 106.0 cm2 (~89.7% screen-to-body ratio) 1080 x 2340 pixels, 19.5:9 ratio (~392 ppi density) Li-Po 4300 mAh, non-removable Fast charging', 'Secondary Camera  : 32 MP, f/2.2, 22mm (wide)\r\nVideo Resolutions  : 4K@30fps, 1080p@30/60fps, gyro-EIS\r\nBluetooth : 5.2, A2DP, LE, aptX HD\r\nConnectivity', '12999.00', '11763.0', '1671435975.jpg', '147', '300.0', 0, 0, 'Free return within the legal return period from 14 to 30 days, and if they meet the terms & conditions, For more details about return policy.', 'For more details about return policy.', '1B colors, 120Hz 6.57 inches', '2022-12-19 05:46:15', '2022-12-22 07:09:19'),
(12, 15, 'Samsung 58-Inch Crystal UHD AU7000', 'Televisions', 'Feel true-to-life tones in effective 4K resolution Crystal 4K processor Upscaling to effective 4K ensures you can watch the content you love in up to 4K resolution. We also let you enjoy true-to-life color expressions thanks to our advanced color mapping technology', 'PurColor technology puts you in the center of the action while watching your favorite movies.\r\n\r\nIt gives your TV the power to express a huge color gamut for perfect picture performance and a viewing experience that pampers your eyes.', '16999.00', '14999.00', '1671436097.jpg', '16', '500', 0, 1, 'HDMI: 3 USB: 1 Ethernet (LAN) Digital Audio Out (Optical): 1 Radio Input (Terrestrial / Cable Input)', 'HDMI A / Restore Channel Support eARC', 'HDMI fast transmission\r\nEmbedded Wireless LAN: Yes (WiFi5)\r\nbluetooth: Yes (BT4.2)', '2022-12-19 05:48:17', '2023-02-26 17:11:31'),
(13, 15, 'Itel S32101BE Icast 32 Inch HD- Built-in Receiver - LED TV', 'Itel TV', 'Dimensions        732 x 479 x 191 mm (W x H x D) Weight 3.8 kg Colors   Black', 'Key features      HDMI/USB, 10W + 10W speakers, Digital TV decoder, Screen mirroring\r\nDisplay Panel\r\nPanel size            32 Inch\r\nPanel type          LED\r\nPanel resolution : 1366 x 768 pixels', '2900.00', '2544.00', '1671436188.jpg', '5', '250.0', 0, 0, 'Free return within the legal return period from 14 to 30 days, and if they meet the terms & conditions, For more details about return policy.', 'Free return within the legal return period from 14 to 30 days, and if they meet the terms & conditions, For more details about return policy.', 'Free return within the legal return period from 14 to 30 days, and if they meet the terms & conditions, For more details about return policy.\"', '2022-12-19 05:49:48', '2023-02-26 17:16:08'),
(14, 18, 'fluffy women accessories Sea Stars Necklace', 'Nacklace', 'Brand : Fluffy  Necklace Type : Pendant Necklaces  Targeted Group : Women Pendant Shape : Chains Occasion : Casual & Trendy', 'SKU: FL186FC0707OONAFAMZ\r\nModel: 2112043801\r\nProduction Country: China\r\nColor: Gold\r\nMain Material: Metal plated', '165.00', '96.00', '1671728385.jpg', '29', '60.0', 0, 1, 'Free return within the legal return period from 14 to 30 days, and if they meet the terms & conditions, For more details about return policy.', 'Fluffy  Necklace', 'Women Pendant Shape : Chains Occasion\"', '2022-12-22 14:59:45', '2022-12-22 16:10:49'),
(15, 18, 'American Eagle Fleece Crew Neck Sweatshirt', 'Sweatshirt', 'SKU: AM423MW0J0VI4NAFAMZ Model: 129084927 Color: HEATHER GRAY Main Material: 80% COTTON, 20% POLYESTER', 'AE Fleece Crew Neck Sweatshirt ,Layer away in our soft fleece - perfect for fall vibes.', '1100.00', '545.00', '1671728536.jpg', '9', '90.0', 0, 1, 'PROMOTIONS Free Shipping Nationwide, on orders above 200 EGP Enjoy installments from 6 months to 60 months with valU.', 'American Eagle', 'PROMOTIONS Free Shipping Nationwide, on orders above 200 EGP Enjoy installments from 6 months to 60 months with valU.', '2022-12-22 15:02:16', '2022-12-22 19:16:39'),
(16, 18, 'Sweat Shirt Hooded Unisex - Black.', 'Hoodies', 'Hooded Sweatshirt is a cotton/polyester blend to keep you warm and comfortable in the cooler months.  Long Sleeves Solid pattern Slip on Easy to waer', 'Hooded Sweatshirt is a cotton/polyester blend to keep you warm and comfortable in the cooler months. \r\nLong Sleeves\r\nSolid pattern\r\nSlip on\r\nEasy to waer', '444.00', '177.00', '1671728630.jpg', '10', '60.0', 0, 0, 'Long Sleeves Solid pattern Slip on Easy to waer Strap may vary', 'Long Sleeves', 'SKU: GE810MW144I9GNAFAMZ\r\nColor: Black\r\nMain Material: Mix', '2022-12-22 15:03:50', '2022-12-22 15:03:50');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) NOT NULL,
  `prod_id` varchar(191) NOT NULL,
  `stars_rated` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `user_id`, `prod_id`, `stars_rated`, `created_at`, `updated_at`) VALUES
(1, '2', '10', '3', '2022-12-22 20:55:58', '2022-12-22 20:55:58'),
(2, '1', '10', '1', '2022-12-22 20:56:47', '2022-12-22 20:56:47'),
(3, '2', '9', '5', '2022-12-22 21:00:09', '2022-12-22 21:00:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `lname` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `lname`, `phone`, `address`, `role_as`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'tofy', 'test1@gmail.com', NULL, '$2y$10$fRE3Ua1/i0PzK5Z7BDzDs.EnH/Zcg.59Y/RxlpWdvrhTQ92Rn3kES', 'samy', '3252359', 'nasrcity', 1, NULL, '2022-12-13 11:49:30', '2022-12-20 19:06:23'),
(2, 'mostafa', 'test2@gmail.com', NULL, '$2y$10$r1py1gFZGLL8xnrFifeFV.3zfxzw7jZWDHJddStILYyVHk6kA3XXG', 'menshawy', '100200300', 'cairo', 0, NULL, '2022-12-13 13:02:05', '2022-12-21 10:57:17'),
(3, 'ali', 'ali@gmail.com', NULL, '$2y$10$1JPNwpwDgkDJC1XasM2LeuNfey0nD4kgQwA64HamOlmyuoa6E6LPm', 'lolo', '10090030204', 'giza', 0, NULL, '2022-12-22 07:06:42', '2022-12-22 07:09:19'),
(4, 'momo', 'momo@mail.com', NULL, '$2y$10$7ZuEf/8dtJLwRO5HRGXkluLCAStJHSrt8IosrW5as3N0I1i3Ey/oC', 'ccevweew', '0351351', 'vwvwevew', 0, NULL, '2023-02-26 14:24:47', '2023-02-26 16:52:43');

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
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
