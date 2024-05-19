-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2024 at 04:16 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(20) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `details`, `price`, `image`) VALUES
(24, 'ilish', 'fish', 'The ilish, also known as the ilishi, hilsa, hilsa herring or hilsa shad, is a species of fish related to the herring, in the family Clupeidae. It is a very popular and sought-after food fish in the Indian subcontinent, and is the national fish of Bangladesh and the state fish of West Bengal', 600, 'oily fishes.png'),
(25, 'apple   1kg', 'fruits', 'This nutritious fruit offers multiple health benefits. Apples may lower your chance of developing cancer, diabetes, and heart disease.', 100, 'apple.png'),
(26, 'banana   1kg', 'fruits', 'Bananas are fresh, versatile, and relatively inexpensive fruits. They’re packed with essential nutrients and may benefit weight loss, digestion, and heart health.', 50, 'banana.png'),
(27, 'blue grapes   1kg', 'fruits', 'Grapes offer health benefits, primarily due to their high nutrient and antioxidant content. They may benefit the eye, heart, bones, and more.', 120, 'blue grapes.png'),
(28, 'green grapes    1kg', 'fruits', 'A mutation in green grapes prevents the production of anthocyanin, though, which decreases the levels of antioxidants in green grapes,', 90, 'green grapes.png'),
(29, 'lichi   500gm', 'fruits', 'Lichi or litchi fruits are a popular natural bounty in tropical regions, that not only render a delicious flavour to numerous pastries and desserts but also confer a plethora of health benefits.', 80, 'lichi.png'),
(30, 'orange     500gm', 'fruits', 'Many types of oranges are high in fiber and beneficial vitamins, like vitamin C. They also contain antioxidants which can have various health benefits, including supporting immune function.', 100, 'orange.png'),
(31, 'watermelon  1kg', 'fruits', 'Watermelon is around 90% water, which makes it useful for staying hydrated in the summer. It can also satisfy a sweet tooth with its natural sugars.', 40, 'th.jfif'),
(32, 'Guava   1kg   ', 'fruits', 'These fruits are green, ovate, and contain edible seeds. The leaves of this tree are used for making herbal tea. Rich in antioxidants and vitamins, they have a delicious taste, relished by everyone. ', 50, '1.jfif'),
(33, 'Papaya     1kg', 'fruits', 'These yellow color fruits are famous in India, for their taste and health benefits. They are also good for the digestive system.', 40, 'th (1).jfif'),
(34, 'Pineapple     1 kg', 'fruits', 'Pineapple juice makes for the most refreshing summer drinks in India. You can find it very easily anywhere. It has incredible taste and is loved by everyone.', 100, 'th (2).jfif'),
(35, 'Gooseberry  1kg', 'fruits', 'Gooseberry is another amazing summer fruit that can help you stay cool in hot Indian summers.', 60, 'th (3).jfif'),
(36, 'Fig    500gm', 'fruits', 'Fig is a delicious fruit that is grown in India during hot summers. Although a minor fruit in India, it is available throughout the year in dried form.', 35, 'th (4).jfif'),
(37, 'Pear   500gm', 'fruits', 'This fruit is mildly sweet, with many essential nutrients. Despite being highly nutritional, it has a really low-calorie count and can help you with weight loss as well.', 45, 'th (5).jfif'),
(38, 'Musk Melon   1p', 'fruits', 'Musk Melon consists of almost 90% water content, and that makes it a good choice for eating in summers. As it can keep you hydrated when the temperatures are soaring high.', 60, 'th (6).jfif'),
(39, 'Potatoes    1kg', 'vegitables', 'Potatoes (Solanum tuberosum) are a starchy root vegetable that are among the most popular varieties of vegetable.', 25, 'download.jfif'),
(40, 'broccoli     1 p', 'vegitables', 'Broccoli contains many vitamins, minerals, fiber, and antioxidants. Broccoli’s benefits include helping reduce inflammation, keeping blood sugar stable, and strengthening the immune system.', 42, 'broccoli.png'),
(41, 'capsicum   500gm', 'vegitables', 'Using whole chili peppers from theCapsicum genus may provide nutritional value, including the possibility of high amounts of vitamin C and vitamin A.', 65, 'capsicum.png'),
(42, 'cauliflower   1p', 'vegitables', 'Cauliflower is a great source of antioxidants, which protect your cells from harmful free radicals and inflammation', 40, 'cauliflower.png'),
(43, 'cabbage 1p', 'vegitables', 'Cabbage is a leafy green, red (purple), or white (pale green) biennial plant grown as an annual vegetable crop for its dense-leaved heads', 35, 'cabbage.png'),
(44, 'carrot  1kg', 'vegitables', 'Carrots contain many nutrients, including beta carotene and antioxidants, that may support your overall health as part of a nutrient-rich diet.', 25, 'carrot.png'),
(45, 'Beat   500gm', 'vegitables', 'Beets are particularly rich in folate, a vitamin that plays a key role in growth, development, and heart health', 23, 'th (7).jfif'),
(46, 'Ginger   250gm', 'vegitables', 'Ginger is high in gingerol, a substance with potent anti-inflammatory and antioxidant properties.', 60, 'th (8).jfif'),
(47, 'Garlic  100gm', 'vegitables', 'Garlic grows in many parts of the world and is a popular ingredient in cooking due to its strong smell and delicious taste.', 30, 'th (9).jfif'),
(48, 'Red Papper   100gm', 'vegitables', 'Providing antioxidants like phytonutrients and vitamin C that may prevent some types of cancer', 20, 'red papper.png'),
(49, 'onion   1kg ', 'vegitables', 'Antioxidants are compounds that inhibit oxidation, a process that may lead to cellular damage and contribute to diseases such as cancer, diabetes, and heart disease', 40, 'th (10).jfif');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user',
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`, `image`) VALUES
(31, 'PRATIK', 'pratikkalya2017@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', 'user.png'),
(32, 'ADMIN 1', 'admin1@gmail.com', '202cb962ac59075b964b07152d234b70', 'admin', 'user.png'),
(33, 'ADMIN 2', 'admin2@gmail.com', '202cb962ac59075b964b07152d234b70', 'admin', 'user.png'),
(34, 'ADMIN 3', 'admin3@gmail.com', '202cb962ac59075b964b07152d234b70', 'admin', 'user.png'),
(35, 'david', 'debsharmasoumen43@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', 'rashmika.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(50, 0, 24, 'ilish', 600, 'oily fishes.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
