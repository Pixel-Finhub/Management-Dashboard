-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 11, 2023 at 11:53 AM
-- Server version: 11.1.2-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pixel`
--

-- --------------------------------------------------------

--
-- Table structure for table `cargoRecords`
--

CREATE TABLE `cargoRecords` (
  `id` int(11) NOT NULL,
  `policyId` int(11) DEFAULT NULL,
  `itemId` int(11) DEFAULT NULL,
  `itemValue` decimal(10,0) DEFAULT NULL,
  `procumentDocument` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `claims`
--

CREATE TABLE `claims` (
  `id` int(11) NOT NULL,
  `policyId` int(11) NOT NULL,
  `claimTypeId` int(11) NOT NULL,
  `claimStatus` varchar(255) DEFAULT NULL,
  `submissionDate` datetime DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `claimDetails` text DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `claimTypes`
--

CREATE TABLE `claimTypes` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coverageLimits`
--

CREATE TABLE `coverageLimits` (
  `id` int(11) NOT NULL,
  `packageId` int(11) NOT NULL,
  `coverageTypeId` int(11) NOT NULL,
  `amount` decimal(13,2) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coverageTypes`
--

CREATE TABLE `coverageTypes` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `owner` enum('pixel-insurance','client','other') DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `insurancePackages`
--

CREATE TABLE `insurancePackages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `coverageFocus` varchar(255) DEFAULT NULL,
  `deductible` decimal(13,2) DEFAULT NULL,
  `claimProcessingTime` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'root', NULL, NULL),
(2, 'admin', NULL, NULL),
(3, 'user', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `SequelizeMeta`
--

CREATE TABLE `SequelizeMeta` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `SequelizeMeta`
--

INSERT INTO `SequelizeMeta` (`name`) VALUES
('20210921083820-create-role.js'),
('20210921083821-create-user.js'),
('20230905114216-create-insurance-package.js'),
('20230905115714-create-coverage-type.js'),
('20230905120245-create-coverage-limit.js'),
('20230905121849-create-user-policy.js'),
('20230905123500-create-claim-type.js'),
('20230905123751-create-claim.js'),
('20230905124113-create-transaction.js'),
('20230905124218-create-language.js'),
('20230905124306-create-item.js'),
('20230905164511-create-document.js'),
('20230905164803-create-user-document.js'),
('20230905165646-create-cargo-record.js');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `transactionType` varchar(255) DEFAULT NULL,
  `channel` varchar(255) DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `transactionDetails` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userDocuments`
--

CREATE TABLE `userDocuments` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `documentId` int(11) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userPolicies`
--

CREATE TABLE `userPolicies` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `packageId` int(11) NOT NULL,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `amount` decimal(13,2) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `gender` enum('male','female','other','unknown') DEFAULT 'unknown',
  `dateOfBirth` datetime DEFAULT NULL,
  `isVerified` tinyint(1) DEFAULT 0,
  `password` varchar(255) DEFAULT NULL,
  `roleId` int(11) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `userName`, `firstName`, `lastName`, `email`, `phone`, `gender`, `dateOfBirth`, `isVerified`, `password`, `roleId`, `createdAt`, `updatedAt`) VALUES
(1, 'Janessa.Walter18', 'Barney', 'Kutch', 'Lottie_Waelchi@hotmail.com', '(789) 363-6818 x715', 'male', NULL, 0, '8DhSGw4Y4ah5XA9', 1, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(2, 'Fleta.Robel54', 'Jamal', 'Leffler', 'Giovanni17@yahoo.com', '725-395-8414 x84378', 'male', NULL, 0, 'ym3b2ubVGN4PuAS', 2, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(3, 'Bria_Schultz', 'Edwin', 'Sipes', 'Jarod_Ferry@hotmail.com', '(417) 414-1457 x935', 'other', NULL, 0, 'IuIBcloqrvGpu8H', 1, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(4, 'Lawrence_Fadel', 'Emmet', 'Boyle', 'Delphia.Upton41@hotmail.com', '(207) 463-5616', 'other', NULL, 0, 'az4grIFR4JQOoxg', 1, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(5, 'Gayle_Ondricka', 'Clementine', 'Hilpert', 'Ernie_Beier@yahoo.com', '696.890.4972 x56534', 'female', NULL, 0, 'h_r_8o2B6ZSnK56', 1, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(6, 'Jerad42', 'Rafaela', 'Erdman', 'Lola18@gmail.com', '1-316-256-6942 x0152', 'other', NULL, 0, '8T6usZqyoSIPoAN', 1, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(7, 'Wendell56', 'Constance', 'Cole', 'Marian.Considine@gmail.com', '822-521-5252', 'female', NULL, 0, '_aCz92cDy2x7CRd', 3, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(8, 'Kiana_Kuhic30', 'Waldo', 'Heathcote', 'Cornell22@hotmail.com', '(757) 296-5678', 'female', NULL, 0, 'QFeaqKMGcpAvkqj', 2, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(9, 'Devonte_Schmidt75', 'Rosalind', 'Bartoletti', 'Charlene80@hotmail.com', '1-466-732-4761 x2239', 'male', NULL, 0, 'kQEigyi0MhqNWpJ', 3, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(10, 'Jazmyne41', 'Zola', 'Murphy', 'Floy.Mertz22@yahoo.com', '367-362-0952 x866', 'male', NULL, 0, 'YbWjr6nINewO5Ri', 2, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(11, 'Tyrese_Kuphal', 'Lemuel', 'Dach', 'Kasey.Upton@hotmail.com', '460.521.5111 x3673', 'other', NULL, 0, 'V_REHaSTFXr_h0D', 1, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(12, 'Jules65', 'Aric', 'Donnelly', 'Keely_Franecki@hotmail.com', '(793) 921-9256', 'male', NULL, 0, 'xMsruVPLTIEVHB0', 1, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(13, 'Al7', 'Nathen', 'West', 'Krystel_Schinner@yahoo.com', '565.344.9686', 'other', NULL, 0, 'Ej0xesT_DgsXTj7', 2, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(14, 'Stanford21', 'Justine', 'Ledner', 'Cecile.Leuschke17@yahoo.com', '251.422.0836', 'male', NULL, 0, 'knSVQBTwQhIG6IC', 3, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(15, 'Merritt.Bode57', 'Ned', 'King', 'Wilburn54@hotmail.com', '738.668.3640 x928', 'other', NULL, 0, 'BuUxcNHz1c41Cg9', 3, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(16, 'Jewell.Beahan', 'Giovanna', 'Zemlak', 'Linwood85@yahoo.com', '1-418-563-5408 x63623', 'female', NULL, 0, 'OlX4NdoN3UUDo9Q', 2, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(17, 'Ari.Denesik', 'Leon', 'Hermann', 'Colten.Bernhard73@gmail.com', '398-207-6402 x82934', 'female', NULL, 0, 'fQnQuIer9v8SwNl', 2, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(18, 'Adrienne98', 'Carolina', 'Waelchi', 'Daniela_OConnell@yahoo.com', '1-624-303-5291', 'female', NULL, 0, 'VzuPGvftyjqKFjS', 3, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(19, 'Alberto.Weimann63', 'Andy', 'Pacocha', 'Anais5@gmail.com', '478-703-3012 x31594', 'other', NULL, 0, 'j9JqxmtXtAypmzI', 2, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(20, 'Hillard14', 'Melvin', 'Schuppe', 'Lenore.Stokes@hotmail.com', '1-864-506-2679 x97385', 'female', NULL, 0, 'OtCuBLDXKtzoDgg', 2, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(21, 'Green90', 'Coby', 'Veum', 'Candido68@hotmail.com', '229-777-1922 x289', 'male', NULL, 0, 'zZ_g9sDXe1dMzh_', 3, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(22, 'Hannah.Borer71', 'Bradly', 'Ondricka', 'Zetta.Gorczany33@hotmail.com', '867-977-2245 x7961', 'other', NULL, 0, '9lO_ebHVMz2jsg4', 2, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(23, 'Nels.Abbott5', 'Fausto', 'Jacobs', 'Jedediah_Kohler@hotmail.com', '1-626-625-1678 x2265', 'male', NULL, 0, 'Kr6hEt4YaPxMeWn', 1, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(24, 'London.Kutch49', 'Aiyana', 'Stracke', 'Adell.Cruickshank76@hotmail.com', '1-993-465-8335', 'other', NULL, 0, 'm8EiWl90ntIwdfP', 2, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(25, 'Dahlia_Ziemann11', 'Marc', 'Hahn', 'Quinton_Ratke84@hotmail.com', '1-282-757-8814', 'female', NULL, 0, 'PJeP5qpAy_je77q', 2, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(26, 'Arnulfo_Hettinger', 'Vickie', 'Rohan', 'Sammie_Weimann@hotmail.com', '611-990-7349 x93741', 'female', NULL, 0, '4wIHVBffy8Mpj7M', 1, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(27, 'Jarrod.Gerlach', 'Virginie', 'Mertz', 'Celine36@hotmail.com', '1-746-455-6007 x3518', 'other', NULL, 0, '2h1MrYQOHuBH8if', 1, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(28, 'Darrick_Zieme10', 'Santiago', 'Strosin', 'Lexi.Ortiz34@hotmail.com', '931.710.9921', 'male', NULL, 0, 'EKLybp7ULNLwh0E', 3, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(29, 'Marlon_Kertzmann', 'Kyleigh', 'Kemmer', 'Terrell_Johnson@yahoo.com', '851.395.4034 x31234', 'male', NULL, 0, 'xSmwGcwPnk6vGK8', 3, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(30, 'Devyn_Walsh', 'Helene', 'Grant', 'Ella53@yahoo.com', '542.755.7723 x120', 'female', NULL, 0, 'DciUjNfu9W1CfUb', 2, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(31, 'Mozelle_McClure', 'Bertha', 'Cummerata', 'Isac76@gmail.com', '1-638-343-8270', 'other', NULL, 0, 'm_pqJ3XM6MQDfSL', 2, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(32, 'Evan49', 'Israel', 'Wilkinson', 'Clovis6@hotmail.com', '(465) 277-5465 x3412', 'female', NULL, 0, '_TnpVAQShhioZSo', 2, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(33, 'Kevon.Kuhic39', 'Koby', 'Jenkins', 'Cathryn.Padberg@yahoo.com', '574-430-7217 x9928', 'male', NULL, 0, 'mhQ_kYK1I4bTm_y', 1, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(34, 'Imogene_Hammes', 'Lesly', 'Franecki', 'Tillman.Haley33@yahoo.com', '846-768-1130 x43102', 'female', NULL, 0, '7Pb0fqtcFASvBZZ', 1, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(35, 'Antonietta76', 'Giovanny', 'Wilderman', 'Ashtyn_Schultz@hotmail.com', '843.878.5587', 'other', NULL, 0, '9qnxep3c7dYAt7X', 3, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(36, 'Mariana_Hermiston', 'Emmanuel', 'Kub', 'Alene.Carroll63@hotmail.com', '699-257-5918 x945', 'female', NULL, 0, 'jKjfePKDEuK66Ar', 2, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(37, 'Dana.Ondricka', 'Cary', 'Leannon', 'Raphaelle_Huels@hotmail.com', '445-461-3552 x9064', 'other', NULL, 0, 'Ahxpf09LlQKrODa', 1, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(38, 'Emanuel.Bednar17', 'Shad', 'Bednar', 'Vida.Koss@yahoo.com', '646-257-3686', 'other', NULL, 0, 'LHPvfkm4Or8U3hI', 1, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(39, 'Eryn47', 'Kamryn', 'Koelpin', 'Iliana82@gmail.com', '(966) 404-4357', 'male', NULL, 0, 'aMxOwEKDeAAcfa8', 1, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(40, 'Elisha54', 'Walter', 'O\'Reilly', 'Domenic.Dibbert@gmail.com', '643.398.5899 x018', 'female', NULL, 0, 'Eslc4OsnMTuVyR1', 1, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(41, 'Frida41', 'Kadin', 'Reilly', 'Nicklaus.Greenfelder27@yahoo.com', '1-578-896-7679', 'female', NULL, 0, 'qoalv9H7mLcE_nt', 2, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(42, 'Jaquelin_Ullrich', 'Madelynn', 'Raynor', 'Quentin.Wuckert21@hotmail.com', '(642) 997-6196 x15353', 'other', NULL, 0, 'jZmflLAQ2aVGiTV', 2, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(43, 'Kale89', 'Elliott', 'Ritchie', 'Michel_Johnson@hotmail.com', '1-271-282-3344 x83787', 'other', NULL, 0, '0aioc3WOn9m6sJ0', 1, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(44, 'Louisa_Sipes75', 'Laila', 'Beahan', 'Conor79@gmail.com', '451.241.7479 x0278', 'other', NULL, 0, 'yulbgFrysydTbIY', 1, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(45, 'Kamron9', 'Lola', 'Zboncak', 'Aglae85@yahoo.com', '218.568.6054', 'female', NULL, 0, 'wkXcAium7bT2llP', 1, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(46, 'Gabriella.Schoen75', 'Vivienne', 'Schuppe', 'Keith86@yahoo.com', '1-574-457-4822 x376', 'male', NULL, 0, '5PbU9rJ2h_q09En', 3, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(47, 'Kenya_Kertzmann', 'Rod', 'Corkery', 'Bridget98@gmail.com', '(526) 930-1823', 'female', NULL, 0, 'bvGZVDyIScRwhgC', 3, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(48, 'Rex.Hoppe27', 'Marie', 'Howell', 'Kenny.Kiehn37@yahoo.com', '(756) 359-4375', 'male', NULL, 0, 'PpoGOWmtDEiMCz0', 1, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(49, 'Marlene_Orn', 'Tobin', 'Wunsch', 'Edgardo11@gmail.com', '583-714-9364 x1932', 'female', NULL, 0, 'chKyAkw3mAPb9HQ', 3, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(50, 'Rachelle_Fahey0', 'Devonte', 'Ferry', 'Jazmin46@gmail.com', '1-584-438-5460', 'other', NULL, 0, 'tNlrlqcibWZotKB', 1, '2023-09-11 06:13:24', '2023-09-11 06:13:24'),
(51, 'Douglas_Hartmann', 'Lois', 'Weber', 'Elva.Stokes65@hotmail.com', '1-968-392-7140 x93993', 'male', NULL, 0, 'Zw1qgyWp6XZwgsY', 3, '2023-09-11 06:13:24', '2023-09-11 06:13:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cargoRecords`
--
ALTER TABLE `cargoRecords`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `claims`
--
ALTER TABLE `claims`
  ADD PRIMARY KEY (`id`),
  ADD KEY `policyId` (`policyId`),
  ADD KEY `claimTypeId` (`claimTypeId`);

--
-- Indexes for table `claimTypes`
--
ALTER TABLE `claimTypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coverageLimits`
--
ALTER TABLE `coverageLimits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `packageId` (`packageId`),
  ADD KEY `coverageTypeId` (`coverageTypeId`);

--
-- Indexes for table `coverageTypes`
--
ALTER TABLE `coverageTypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `insurancePackages`
--
ALTER TABLE `insurancePackages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `SequelizeMeta`
--
ALTER TABLE `SequelizeMeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userDocuments`
--
ALTER TABLE `userDocuments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`),
  ADD KEY `documentId` (`documentId`);

--
-- Indexes for table `userPolicies`
--
ALTER TABLE `userPolicies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`),
  ADD KEY `packageId` (`packageId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roleId` (`roleId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cargoRecords`
--
ALTER TABLE `cargoRecords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `claims`
--
ALTER TABLE `claims`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `claimTypes`
--
ALTER TABLE `claimTypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coverageLimits`
--
ALTER TABLE `coverageLimits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coverageTypes`
--
ALTER TABLE `coverageTypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `insurancePackages`
--
ALTER TABLE `insurancePackages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userDocuments`
--
ALTER TABLE `userDocuments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userPolicies`
--
ALTER TABLE `userPolicies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `claims`
--
ALTER TABLE `claims`
  ADD CONSTRAINT `claims_ibfk_1` FOREIGN KEY (`policyId`) REFERENCES `userPolicies` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `claims_ibfk_2` FOREIGN KEY (`claimTypeId`) REFERENCES `claimTypes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `coverageLimits`
--
ALTER TABLE `coverageLimits`
  ADD CONSTRAINT `coveragelimits_ibfk_1` FOREIGN KEY (`packageId`) REFERENCES `insurancePackages` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `coveragelimits_ibfk_2` FOREIGN KEY (`coverageTypeId`) REFERENCES `coverageTypes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `userDocuments`
--
ALTER TABLE `userDocuments`
  ADD CONSTRAINT `userdocuments_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `userdocuments_ibfk_2` FOREIGN KEY (`documentId`) REFERENCES `documents` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `userPolicies`
--
ALTER TABLE `userPolicies`
  ADD CONSTRAINT `userpolicies_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `userpolicies_ibfk_2` FOREIGN KEY (`packageId`) REFERENCES `insurancePackages` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
