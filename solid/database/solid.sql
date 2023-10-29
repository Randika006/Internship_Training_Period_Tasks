-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2023 at 05:59 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `solid`
--

-- --------------------------------------------------------

--
-- Table structure for table `business_customer`
--

CREATE TABLE `business_customer` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand` varchar(255) NOT NULL,
  `country` text NOT NULL,
  `email` text NOT NULL,
  `tel` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_customer`
--

INSERT INTO `business_customer` (`id`, `brand`, `country`, `email`, `tel`, `created_at`, `updated_at`) VALUES
(1, 'Gottlieb Ltd', 'Argentina', 'sam.larson@hayes.biz', '+1.539.773.9327', NULL, NULL),
(2, 'Hyatt Group', 'Western Sahara', 'chandler.wolf@altenwerth.net', '682-480-0567', NULL, NULL),
(3, 'Schaden PLC', 'Bermuda', 'ahettinger@yahoo.com', '+1 (256) 899-5699', NULL, NULL),
(4, 'Schmeler, Mann and King', 'Bahamas', 'brad.stark@yahoo.com', '(815) 655-1298', NULL, NULL),
(5, 'Fahey Group', 'Ukraine', 'serena25@rice.com', '+1-951-241-7884', NULL, NULL),
(6, 'Torphy, Davis and Frami', 'Albania', 'jaskolski.jaren@dicki.net', '+1.651.347.5548', NULL, NULL),
(7, 'Kuvalis LLC', 'Estonia', 'zechariah.reynolds@mayert.com', '(458) 318-2172', NULL, NULL),
(8, 'Hermiston-Kuhlman', 'Macedonia', 'garnett95@koch.biz', '+1.626.404.2119', NULL, NULL),
(9, 'Schiller PLC', 'Mexico', 'arnaldo60@labadie.info', '+1-726-302-7769', NULL, NULL),
(10, 'Herzog-Stehr', 'Burkina Faso', 'vandervort.duncan@gmail.com', '(936) 652-5662', NULL, NULL),
(11, 'Lowe, Ernser and Corwin', 'Moldova', 'gschmidt@will.com', '380.777.4696', NULL, NULL),
(12, 'Gerhold Group', 'Niger', 'lavina.treutel@walker.com', '+1-908-831-8270', NULL, NULL),
(13, 'Haley-Ziemann', 'Tokelau', 'fern.lowe@luettgen.biz', '682.439.9685', NULL, NULL),
(14, 'Botsford-Corkery', 'New Caledonia', 'alexanne.kuhn@kilback.info', '(646) 226-2052', NULL, NULL),
(15, 'Mueller PLC', 'Dominican Republic', 'jabbott@quigley.com', '703-446-0520', NULL, NULL),
(16, 'Robel-Roob', 'Indonesia', 'kallie.stroman@bechtelar.com', '+1.564.522.2947', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `email` text NOT NULL,
  `tel` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `address`, `email`, `tel`, `country`, `created_at`, `updated_at`) VALUES
(1, 'Dortha Bednar V', '11633 Kassulke Haven Apt. 984\nMcGlynnmouth, NC 73872', 'kris.breanne@hotmail.com', '(925) 620-1404', '', NULL, NULL),
(2, 'Elisha Wilkinson Jr.', '21209 Harris Fall Apt. 764\nSouth Mosesfurt, NV 16939', 'farrell.lulu@yahoo.com', '(216) 579-1598', '', NULL, NULL),
(3, 'Chelsey Pagac', '531 Nicole Meadows\nPort Vestaborough, NJ 17421', 'devan40@stehr.com', '770.761.0713', '', NULL, NULL),
(4, 'Antoinette Kautzer DVM', '24556 Kassulke Hills\nJanaemouth, UT 84587-2435', 'zack.bradtke@schulist.com', '831.492.2523', '', NULL, NULL),
(5, 'Crawford Crona MD', '15704 Elenor Station\nNienowside, TN 41382-2835', 'graciela.shields@corkery.biz', '(563) 981-9468', '', NULL, NULL),
(6, 'Steve Bogisich Sr.', '43384 Heaney Parkway\nNew Daphneland, WV 20680-4192', 'brianne28@hotmail.com', '+1 (947) 900-7890', '', NULL, NULL),
(7, 'Mr. Muhammad Koss DVM', '1668 Destiney Harbor Apt. 399\nLefflerland, NH 29971', 'rconsidine@hotmail.com', '+1.434.569.3173', '', NULL, NULL),
(8, 'Bernice Schamberger', '76319 Roob Creek\nReneborough, HI 33405-5522', 'caleigh88@yahoo.com', '+1-410-336-5492', '', NULL, NULL),
(9, 'Emmitt Kuhn', '16426 Seamus Glens\nGleasonton, NC 22487', 'sheridan.volkman@senger.com', '1-680-819-6173', '', NULL, NULL),
(10, 'Lina Crist', '3018 Ewald Drives\nWest Loma, MT 65665', 'hauck.laurine@green.biz', '(307) 605-7698', '', NULL, NULL),
(11, 'Prof. Antone Bins Sr.', '118 Vella Plains\nNorth Ledahaven, IN 52842-6240', 'joan28@rohan.net', '1-442-533-9174', '', NULL, NULL),
(12, 'Moriah Stroman PhD', '46273 Chance Union\nHertastad, MS 65027', 'ashly.murazik@pacocha.org', '210.578.8951', '', NULL, NULL),
(13, 'Alfred Emmerich', '95683 Mante Valleys\nMannberg, VT 36883-1474', 'elian93@hotmail.com', '573.626.5175', '', NULL, NULL),
(14, 'Madaline Cassin', '7980 Isidro Mountain\nMichelleberg, MI 18992', 'hking@hotmail.com', '(708) 498-7992', '', NULL, NULL),
(15, 'Alexzander Brekke', '31432 Odie Roads\nPort Camilaland, TX 70310', 'jovan.deckow@yahoo.com', '(626) 214-2070', '', NULL, NULL),
(16, 'Ravi Perera', 'Colombo Seven, 57, Ward Place,', 'ravi1990@gmail.com', '011-1234563', 'Sri Lanka', NULL, NULL),
(17, 'Braulio Denesik I', '1495 Dion Plains Apt. 491\nBradtkemouth, NV 43628-4317', 'jeremie.doyle@gmail.com', '+1-760-308-8072', 'Pitcairn Islands', NULL, NULL),
(18, 'Mr. Kareem Gerhold', '91295 Ava Knolls Suite 327\nWest Gabriellebury, SC 84182-6083', 'hickle.melisa@hahn.com', '+1.585.553.5778', 'Haiti', NULL, NULL),
(19, 'Kaelyn Huels', '207 Cremin Brooks\nLake Justenville, MD 85796-0249', 'wdavis@murazik.com', '+12816970710', 'Japan', NULL, NULL),
(20, 'Brennan Hessel', '727 Maggio Creek\nHodkiewiczhaven, NY 52284', 'rafaela17@yahoo.com', '+17078810104', 'Sri Lanka', NULL, NULL),
(21, 'Destiney Wisozk DDS', '346 Bergnaum Pike\nNew Abbieport, HI 71177', 'tmosciski@swift.com', '+1-405-909-6847', 'Denmark', NULL, NULL),
(22, 'Deven Becker', '214 Cruickshank Ports Apt. 447\nRomagueraland, MA 12873', 'russel.fisher@yahoo.com', '+1.559.242.8469', 'Brazil', NULL, NULL),
(23, 'Dante Ritchie', '9387 White Course Apt. 505\nMosciskiland, MS 03993-3077', 'ogerhold@gmail.com', '+15737032836', 'Bangladesh', NULL, NULL),
(24, 'Finn Reinger', '34888 Funk Vista Apt. 441\nNew Lewis, DC 43788-7913', 'erwin.frami@yahoo.com', '(972) 205-8429', 'Honduras', NULL, NULL),
(25, 'Deven Jerde', '95153 Gerry Oval Suite 815\nEast Shanny, NC 26585-7424', 'dell54@gmail.com', '+1-208-564-8445', 'Uzbekistan', NULL, NULL),
(26, 'Prof. Josefa Kautzer DDS', '194 Edwin Circles\nHellertown, ID 78724', 'jocelyn84@kiehn.biz', '410.207.8743', 'Anguilla', NULL, NULL),
(27, 'Alberto Stoltenberg', '328 Roy Shore\nCollinsborough, OH 28973', 'ybosco@hill.com', '+13258777371', 'Puerto Rico', NULL, NULL),
(28, 'Garnet Johns', '21979 Dixie Street\nNew Claire, VT 21920-2203', 'rozella.fahey@monahan.com', '862.463.6457', 'Montenegro', NULL, NULL),
(29, 'Doris Bernier DVM', '26853 Mozelle Extensions Suite 864\nMelbamouth, PA 41816', 'bogan.heath@yahoo.com', '1-909-289-4679', 'Pakistan', NULL, NULL),
(30, 'Isabel Nicolas', '368 Hirthe Estate Apt. 267\nBinsbury, KS 93744-2975', 'qschmidt@swift.info', '1-620-640-5169', 'Bermuda', NULL, NULL),
(31, 'Ms. Euna Quitzon I', '6900 Domenic Heights Suite 523\nRunolfssonshire, DC 85386-0664', 'quincy20@fisher.com', '(229) 834-8522', 'Uganda', NULL, NULL),
(32, 'Kim Stanton V', '112 Gislason Causeway Suite 701\nHowellmouth, NE 48026', 'mohamed50@hotmail.com', '(417) 612-4344', 'Rwanda', NULL, NULL),
(33, 'Dr. Cloyd Douglas', '321 Andreanne Gardens Suite 338\nGislasonton, VA 91433', 'edd45@gmail.com', '1-636-398-4687', 'Philippines', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
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
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_10_28_142651_create_customer_table', 1),
(6, '2023_10_29_060220_add_country_to_customer_table', 2),
(7, '2023_10_29_081019_create_business_customer_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `business_customer`
--
ALTER TABLE `business_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `business_customer`
--
ALTER TABLE `business_customer`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
