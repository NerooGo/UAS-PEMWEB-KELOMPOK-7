-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2025 at 08:52 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `petisi`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(2, 'rifqiadiyatma5@gmail.com', '$2y$10$Q7us7UCaLcZzYXk1bTBnh.wFWa1fs4hDDFMna728U/c4IQiZIcSk6'),
(6, 'rifqiadiyatma55@gmail.com', '$2y$10$qZCQ85R5discf.TOCCXyR.rFOwZfrlYNqXpYEp0MnSXlm5X4KqhYm'),
(7, 'rifqiytta@gmail.com', '$2y$10$9n8dHPUK0ind79i77vzoxOwbCvBqGL0DKxdZ6euNRYp4LvoIc4y/.');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengisi`
--

CREATE TABLE `pengisi` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pesan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengisi`
--

INSERT INTO `pengisi` (`id`, `nama`, `email`, `pesan`) VALUES
(4, 'Zamzami', '23082010221@student.upnjatim.ac.id', 'hallo'),
(13, 'NERO', 'NEROLENATHEA@gmail.com', 'haii'),
(15, 'arya', 'arya@gmail.com', 'hvtjdfutfutf'),
(16, 'rendi', 'arya@gmail.com', 'alhamdulilaah'),
(17, 'Rico', 'yaelah@gmail.com', 'haduh dek'),
(20, 'nero', 'kasianlah@gmail.com', 'pppp'),
(21, 'adeline', 'adel@gmail.com', 'halo kalian semua'),
(23, 'rozanrozan', 'rozan@gmail.com', 'gg kalean');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `password`) VALUES
(1, 'Mohammad Rifqi Adiyatma', 'rifqiadiyatma55@gmail.com', '1234'),
(2, 'Mohammad Rifqi Adiyatma', 'rifqiadiyatma5@gmail.com', '$2y$10$x5RJjqZ1izv5dpQNttrNLO3XDSeezksgO13c1npSgEj0Tmka5jakG'),
(3, 'Lano Putra Rajendra', 'lanopengendaliair@gmail.com', '$2y$10$IGEQPbhm71Mq8Jbf0dTPPujoTQrydkxehEcPXHmJjd5VhFqfs3c4e'),
(4, 'Lano Putra Rajendra', 'rifqia@gmail.com', '$2y$10$E3Wh9kTDkzLWqpRcx3KjS.orR7i.WJ97x1nAIR1beE5HddKvUywp6'),
(5, 'jordan', 'jordan@gmail.com', '$2y$10$mO.XHgnXhkC8obXMFfL.W.63pSgKygVD0hneRQKw6noWBAE6sU6wm'),
(6, 'aryaa', 'arya@gmail.com', '$2y$10$hw75joLJhUEhCe/WDt.1Ru.5f0PDIOd.u0jzCKMGfghurwE7RP6U2'),
(7, 'adeline', 'adel@gmail.com', '$2y$10$o3MJc5uZoLVzjs7ZQFy7nOCRVZJIpMSy8OjAIHjX38UNTE3gDXZ86'),
(8, 'laravel_project', 'rifqiadiyatma907@gmail.com', '$2y$10$Em.WRnYTBaX8v8wcG5UrnOpYv8kx91X3mUqn5o6Z8O.mUsAsS0.F6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengisi`
--
ALTER TABLE `pengisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengisi`
--
ALTER TABLE `pengisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
