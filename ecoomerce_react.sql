-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2021 at 04:32 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecoomerce_react`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(40) NOT NULL,
  `name` varchar(100) NOT NULL,
  `file_path` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `price` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `file_path`, `description`, `price`, `created_at`, `updated_at`) VALUES
(7, 'samsung mobile', 'products/IPR6F4Qj8SEZIcT02J07ns9lVj9GCeyN6wiD8QE2.jpg', '545', '5555555555555', '2021-06-11 02:45:23', '2021-06-11 02:45:23'),
(15, 'watch', 'products/o0FZSUH7vjMoid2H6x16oaOn4RFTKW99QULS0ZAd.jpg', 'This is a watch', '345', '2021-06-22 02:45:46', '2021-06-22 02:45:46'),
(16, 'laptop', 'products/maJelz7OQcJXF69HemsUdAIDh4RCGduAOLpxbIwc.jpg', 'hp i3 laptop', '45000', '2021-06-22 02:46:51', '2021-06-22 02:46:51'),
(17, 'keyboard-protctor', 'products/jWeqzD08IWOsB8xUnxNZRlVcw4q6FtUwCNjSFZMb.jpg', 'laptop keyboard protector', '250', '2021-06-22 02:47:25', '2021-06-22 02:47:25'),
(18, 'headphone', 'products/ey5EKpiFhCrdegvbJuzInXBX1rh8NGJYz3Ww9qve.jpg', 'boat headphone', '600', '2021-06-22 02:48:12', '2021-06-22 02:48:12'),
(19, 'earphone', 'products/8QkiU4bm73vZzCAHcw0YB5Og1xvaBjm2I8DPqJKP.jpg', 'boat earphone', '1200', '2021-06-22 02:48:46', '2021-06-22 02:48:46'),
(20, 'pendrive', 'products/UHPhzw9FHIshupEo1rVD7JMC1pjFbf54lMjwYCAE.jpg', 'sandisk pendrive', '600', '2021-06-22 02:59:52', '2021-06-22 02:59:52'),
(21, 'shoes', 'products/h22LyNkXh3dggSjKCWhowZ18DHwSJaEp2DVCZ8BY.jpg', 'puma shoes', '700', '2021-06-22 03:00:22', '2021-06-22 03:00:22'),
(22, 'shoes', 'products/wu5byRNvLZK37lrQpFIUvDFlJflzlC3zYjyKCNIS.jpg', 'A1 shoes', '1300', '2021-06-22 03:00:51', '2021-06-22 03:00:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Ganeshji', 'ganeshji@gmail.com', '$2y$10$PBGxm6PwfTS0JLzxgTemF.nExpYnaghHk0I2iGeuermwyKn4yuC6y'),
(2, 'Anil', 'Anil@gmail.com', '$2y$10$soM/4y/vqZ.gXoSxeABJSevLTEL2cgkW2fQ4qYEHHHyNELd7VQyLG'),
(3, 'sidhu', 'Anil@gmail.com', '$2y$10$WKa6JIfZ.TL1/n9KDIsP5u/Eo.uM7y9y.m5.LkyTHvBZMl8kvXJl.'),
(4, 'Girijesh', 'girijesh@gmail.com', '$2y$10$fv9xzCkdCiiX/ecQU7rp8.qRcVsT8lWrdkakjYAcQvTlCPUr5.U06'),
(6, 'bala', 'bala@gmail.com', '$2y$10$QTjRcPInN063ckxVFIvhSOBGYXFtpBAABWij.RgJYmBLDqVxweUZ2'),
(7, 'sumit', 'sumit@gmail.com', '$2y$10$.ipQLUGPnV8D.6zGqbTphOGKZ5g/tI37dJUL90XtK5S5TlDAeRg76'),
(8, 'kumud', 'kumud@gmail.com', '$2y$10$lZovEDHrGLovj28zPSj1XOh2/F6rqbqHh.gxC4bZK3R9q/E478ieS'),
(9, 'rohit', 'rohit@gmail.com', '$2y$10$wLoUZmvSukJXi.TGD/r0O.Lfjuvt673XR4QSrAVScHY2gdUHCAw1m'),
(10, 'sumit', 'sumit@gmail.com', '$2y$10$.EDXvI19L20Nbri/B62VB.INKkLdWrkbsmeMQaxkP3a.76/5R1N7a'),
(11, 'ankita', 'ankita@gmail.com', '$2y$10$5WXjvp4/XCqmcwq5Rj/sc./zNP0j9/w4sBOpKZ7dRtsNEfGW6iWmS'),
(12, 'ds', 'f', '$2y$10$X7l9TRfBme92vT2xceJAK.BMAqCWK/G4tJY0d.fTRw2lPpQLlVHMu'),
(13, 'Ankit', 'ankit@gmail.com', '$2y$10$XujiBPgIL26bZjMOwO6tu.bOZAEEu6RdeicG1L4SOlEDMJl0nXhm2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
