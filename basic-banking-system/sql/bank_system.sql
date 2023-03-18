
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Inserting data for table `users`
--

INSERT INTO `customers` (`id`, `name`, `email`, `balance`) VALUES
(01, 'Bhavini', 'bhavini@gmail.com', 50000),
(02, 'Khushi', 'khushi@gmail.com', 30000),
(03, 'Akshay', 'akshay@gmail.com', 40000),
(04, 'Aditya', 'aditya@gmail.com', 50000),
(05, 'Tanmayee', 'tanmayee@gmail.com', 40000),
(06, 'Karan', 'karan@gmail.com', 30000),
(07, 'Ranbir', 'ranbir@gmail.com', 50000),
(08, 'Gauri', 'gauri@gmail.com', 40000),
(09, 'Saurabh', 'saurabh@gmail.com', 30000),
(10, 'Ishaan', 'ishaan@gmail.com', 50000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `customers`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
COMMIT;


