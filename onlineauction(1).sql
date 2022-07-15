-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2022 at 07:06 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlineauction`
--

-- --------------------------------------------------------

--
-- Table structure for table `bidding`
--

CREATE TABLE `bidding` (
  `bidding_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `bidding_amount` float(10,2) NOT NULL,
  `bidding_date_time` datetime NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bidding`
--

INSERT INTO `bidding` (`bidding_id`, `customer_id`, `product_id`, `bidding_amount`, `bidding_date_time`, `note`, `status`) VALUES
(3213, 123213, 12123, 5550.00, '2020-01-16 03:08:08', 'rfewrf', ''),
(3214, 7, 128, 450.00, '2020-02-05 10:59:23', '', 'Active'),
(3215, 9, 128, 475.00, '2020-02-06 10:59:44', '', 'Active'),
(3216, 2, 129, 26.00, '2020-02-13 10:46:25', '', 'Active'),
(3217, 2, 129, 30.00, '2020-02-13 10:46:53', '', 'Active'),
(3218, 2, 128, 500.00, '2020-02-13 11:00:46', '', 'Active'),
(3219, 2, 128, 525.00, '2020-02-13 11:01:57', '', 'Active'),
(3220, 2, 129, 40.00, '2020-02-13 11:02:24', '', 'Active'),
(3221, 2, 143, 10.00, '2020-03-04 21:43:47', '', 'Active'),
(3222, 2, 143, 12.00, '2020-03-04 21:44:14', '', 'Active'),
(3223, 2, 143, 1.00, '2020-03-04 21:51:44', '', 'Active'),
(3224, 9, 143, 1.00, '2020-03-04 22:50:42', '', 'Active'),
(3225, 9, 143, 2.00, '2020-03-04 22:50:53', '', 'Active'),
(3226, 23, 148, 10.00, '2020-03-05 18:54:15', '', 'Active'),
(3227, 23, 148, 20.00, '2020-03-05 18:57:18', '', 'Active'),
(3228, 23, 148, 10.00, '2020-03-05 18:57:48', '', 'Active'),
(3229, 23, 148, 10.00, '2020-03-05 18:58:07', '', 'Active'),
(3230, 23, 148, 10.00, '2020-03-05 18:58:12', '', 'Active'),
(3231, 23, 148, 10.00, '2020-03-05 18:58:44', '', 'Active'),
(3232, 23, 148, 10.00, '2020-03-05 18:59:00', '', 'Active'),
(3233, 23, 148, 10.00, '2020-03-05 18:59:15', '', 'Active'),
(3234, 23, 148, 10.00, '2020-03-05 18:59:52', '', 'Active'),
(3235, 23, 148, 10.00, '2020-03-05 19:00:25', '', 'Active'),
(3236, 23, 148, 10.00, '2020-03-05 19:02:07', '', 'Active'),
(3237, 23, 148, 11.00, '2020-03-05 19:02:22', '', 'Active'),
(3238, 23, 148, 12.00, '2020-03-05 19:02:31', '', 'Active'),
(3239, 23, 148, 13.00, '2020-03-05 19:04:00', '', 'Active'),
(3240, 23, 148, 13.00, '2020-03-05 19:04:44', '', 'Active'),
(3241, 23, 148, 14.00, '2020-03-05 19:04:58', '', 'Active'),
(3242, 23, 148, 14.00, '2020-03-05 19:05:05', '', 'Active'),
(3243, 23, 148, 15.00, '2020-03-05 19:05:18', '', 'Active'),
(3244, 28, 156, 25.00, '2020-08-27 18:36:22', '', 'Active'),
(3245, 31, 158, 12.00, '2021-04-05 00:40:33', '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `billing_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `purchase_date` date NOT NULL,
  `purchase_amount` float(10,2) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `card_type` varchar(50) NOT NULL,
  `card_number` varchar(20) NOT NULL,
  `expire_date` date NOT NULL,
  `cvv_number` varchar(5) NOT NULL,
  `card_holder` varchar(50) NOT NULL,
  `delivery_date` date NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(10) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `category_icon` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_icon`, `description`, `status`) VALUES
(16548, 'Mobile Phones', '363950331mobiles.jpg', 'Mobile Phone and Accessaries', 'Active'),
(16549, 'Laptops', '1293881421laptop.jpg', 'Laptops and Accessaries', 'Active'),
(16550, 'Camera', '155622865Camera.jpg', 'Camera and Accessaries', 'Active'),
(16551, 'Others', '1871695161', 'Other categories', 'Active'),
(16552, 'Watches', '5837watch.jpg', ' white day and date watch, which will never let you stay behind time.', 'Active'),
(16558, 'Collectibles', 'oldcoinandnotes.jpg', 'Old Coin and Notes', 'Active'),
(16559, 'Tablet Phones', 'tabphones.jpg', 'Tablet Phones', 'Active'),
(16560, 'Gold jewellery', 'Gold jewellery.jpg', 'Gold jewellery', 'Active'),
(16561, 'Sports and Games', '2075867780Sports & Games.jpg', 'Sports & Games', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `state` varchar(25) NOT NULL,
  `city` varchar(25) NOT NULL,
  `landmark` varchar(50) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `mobile_no` varchar(15) NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `email_id`, `password`, `address`, `state`, `city`, `landmark`, `pincode`, `mobile_no`, `note`, `status`) VALUES
(1, 'Causing gabgab', 'Causing@gmial.com', 'Causing123456', '', '', '', '', '', '+639776258949', '', 'Active'),
(2, 'Miguel cruz', 'Miguel123@gmail.com', 'Miguel123456', '', '', '', '', '', '6398776258949', '', 'Active'),
(3, 'Cookiemelon', 'Cookie@123gmail.com ', 'Melon123456', '', '', '', '', '', '6398776258949', '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(10) NOT NULL,
  `employee_name` varchar(50) NOT NULL,
  `login_id` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `employee_type` varchar(50) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `employee_name`, `login_id`, `password`, `employee_type`, `status`) VALUES
(1, 'Administrator', 'admin', 'admin', 'Admin', 'Active'),
(5, 'Employee', 'employee', 'employee', 'Employee', 'Active'),
(6, 'Anand', 'anand', 'q1w2e3r4', 'Admin', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(10) NOT NULL,
  `sender_id` int(10) NOT NULL,
  `receiver_id` int(10) NOT NULL,
  `message_date_time` datetime NOT NULL,
  `product_id` int(10) NOT NULL,
  `message` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `payment_type` varchar(50) NOT NULL,
  `product_id` int(10) NOT NULL,
  `bidding_id` int(10) NOT NULL,
  `paid_amount` float(10,2) NOT NULL,
  `paid_date` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `category_id` int(10) NOT NULL,
  `product_description` text NOT NULL,
  `starting_bid` float(10,2) NOT NULL,
  `ending_bid` float(10,2) NOT NULL,
  `start_date_time` datetime NOT NULL,
  `end_date_time` datetime NOT NULL,
  `product_cost` float(10,2) NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_warranty` varchar(100) NOT NULL,
  `product_delivery` text NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `customer_id`, `product_name`, `category_id`, `product_description`, `starting_bid`, `ending_bid`, `start_date_time`, `end_date_time`, `product_cost`, `product_image`, `product_warranty`, `product_delivery`, `company_name`, `status`) VALUES
(126, 7, 'Xiaomi Redmi Note 8', 16548, 'Xiaomi Redmi Note 8 is a mid-range that can impress the buyers with its stylish design. The device offers no bezels except for a thin chin. It offers an amazing viewing experience that knows no boundary. It also delivers stellar performance with the strong internal hardware along with long-hour battery backup coupled with Fast Charging technology.', 100.00, 0.00, '2020-02-05 10:18:00', '2020-02-08 05:30:00', 10000.00, '2020024625xiaomi-redmi-note-8.jpg', '1', 'Excellent camerasGreat performanceGood battery backupFast Charging suppor', 'Xiami', 'Active'),
(127, 8, 'Lenovo Ideapad S145 8th Gen', 16549, 'Operating System: Pre-loaded Windows 10 Home with lifetime validity and Microsoft Office 2019\r\nDisplay: 15.6-inch screen with (1920X1080) full HD display | Anti Glare technology\r\nMemory and Storage: 4 GB RAM | Storage 256 GB SSD\r\nDesign and battery: Thin and light Laptop| 180 Degree Hinge| Laptop weight 1.85kg | Battery Life: Upto 5.5 hours as per MobileMark\r\nThis genuine Lenovo Laptop comes with 1 year onsite domestic warranty from Lenovo covering manufacturing defects and not covering physical damage. For more details, see Warranty section\r\nInside the box: Laptop, Charger, User Manual | With Microsoft Office 2019\r\nPorts and Optical Drive: 1 HDMI, 2 USB 3.0, USB 2.0 |4-in-1 card reader (SD,SDHC,SDXC,MMC)|Combo audio and microphone jack |No Optical Drive', 1.00, 1.00, '2020-02-05 10:51:46', '2020-02-07 05:30:00', 10000.00, '1160091601laptop.jpg', '1', 'Delivery in 7 - 8 days', 'Lenovo', 'Active'),
(128, 8, 'Canon EOS R Mirrorless Digital Camera', 16550, 'The first step in Canon\'s mirrorless evolution, the EOS R pairs a redeveloped lens mount and updated full-frame image sensor for a unique and sophisticated multimedia camera system. Revolving around the new RF lens mount, the EOS R is poised to be the means from which to make the most of a new series of lenses and optical technologies.', 1.00, 525.00, '2020-02-05 10:55:36', '2021-02-05 05:30:00', 50000.00, '1249798823Camera.jpg', 'Mangalore', 'test', 'aishu', 'Active'),
(129, 9, 'Redmi Note 7S', 16548, 'With its 13 MP AI front camera, the Redmi Note 7S takes your selfie game to the next level, allowing you to click gorgeous and Instagram-worthy pictures effortlessly.', 25.00, 40.00, '2020-02-06 10:53:42', '2020-09-29 05:30:00', 8999.00, '19660redmi note7.jpeg', '1 year', '3 Days', 'Redmi', 'Active'),
(138, 2, 'Acer A315-21 Aspire 3 Laptop', 16549, 'You\'re looking at the Acer Aspire 3 A315-21 laptop. This is one of the most affordable laptops around and it still offers a great bang for your buck. For this price, you get a lot more than you might imagine. It runs an AMD A4 9120 dual-core processor and even 4GB of RAM. This really is more than enough for running most software you might use daily. There is even an integrated Radeon R3 series of graphics solution on this laptop. The benefit is a surprisingly decent performance in running some graphics intensive software, that can include streaming movies, even some basic image and video editing tools. If you thought you would get very limited storage options, you\'re wrong. It has a massive 1TB hard disk drive, which is way more than you\'ll need to store all your favourite software, photos, music and movies. This is by no means a netbook, it\'s a full-functional notebook, so it comes with a large 15.6-inch display, even a full-sized keyboard. These things about it make it ideal as a desktop replacement for home.', 100.00, 100.00, '2020-03-04 10:05:05', '2020-09-04 05:30:00', 25000.00, 'acerlaptop.jpg', '', '3-4 Days', 'acer', 'Active'),
(139, 2, 'aaaaaaaaaaaaaaaaaaaa', 16549, 'asasasasas', 100.00, 100.00, '2020-03-04 10:18:21', '2020-03-04 05:30:00', 25000.00, '22368cia-new-poster-759.jpeg', '', '4-5 days', 'lpo', 'Pending'),
(140, 9, 'OnePlus', 16548, '48+12+16MP triple rear camera with telephoto lens + ultrawide angle lens | 16MP front camera with 4K video capture @ 30/60 FPS, ultrashot, nightscape, portrait, pro mode, panorama, HDR, AI scene detection, RAW image', 1.00, 1.00, '2020-03-04 20:34:00', '2020-03-05 20:34:00', 35000.00, 'oneplus-7t-dual-sim.jpg', '', '4-5 days', 'One Plus', 'Active'),
(141, 9, 'OnePlus T', 16548, 'Glacier Blue, 8GB RAM, Fluid AMOLED Display, 128GB Storage, 3800mAH Battery', 1.00, 1.00, '2021-03-04 20:42:00', '2020-03-05 20:42:00', 34999.00, '7t-9_1_1-473x473.jpg', '', '5-7 days', 'OnePlus', 'Active'),
(142, 0, 'OnePlus 7T', 16548, 'Glacier Blue, 8GB RAM, Fluid AMOLED Display, 128GB Storage, 3800mAH Battery', 0.00, 0.00, '2020-03-04 21:15:00', '2020-03-05 21:15:00', 35000.00, '7t-9_1_1-473x473.jpg', '', '4-5 days', 'Oneplus', 'Active'),
(143, 0, 'OnePlus 7T', 16548, 'Glacier Blue, 8GB RAM, Fluid AMOLED Display, 128GB Storage, 3800mAH Battery', 1.00, 0.00, '2020-03-04 21:18:00', '2020-03-08 21:18:00', 34999.00, '944046643OnePlus 7T.jpg', '', '5-7 days', 'OnePlus', 'Active'),
(148, 0, 'Canon EOS 5D', 16550, 'The Canon EOS 5D Mark IV camera is made for people who take photography seriously. With features, such as the 30.4 MP Full-frame CMOS Sensor, Dual Pixel CMOS AF and 4K Movie Shooting, this camera not only delivers beautiful stills, but it also lets you take incredible videos.', 5.00, 15.00, '2020-03-05 18:18:00', '2020-03-15 18:18:00', 35000.00, '18563canon.jpeg', '', '4-5 days', 'Canon', 'Active'),
(149, 0, 'Redmi 8 - Ruby Red, 64 GB  4 GB RAM', 16548, 'If you are a travel blogger, gamer, entertainment seeker, or a person who loves a high-end personal device, then the Redmi 8 has been created to meet your needs. This smartphone features a 15.8-cm (6.22) Dot Notch Display, a 12 MP + 2 MP AI Dual Camera, and a 5000 mAh High-capacity Battery to offer detailed views of the stunning photos that you can click all day long without running out of battery life.', 50.00, 0.00, '2020-08-27 16:48:00', '2020-08-31 16:48:00', 10000.00, '606975566miphone.jpeg', '', '3-4 Days', 'Redmi', 'Active'),
(150, 9, '1853 USA 1 Cent Liberty Head coin', 16558, 'The 1853 Liberty Head Large Cent is an old coin that was produced by the US Mint many, many years ago. Despite its age, the coin itself is one of the most sought after by collectors from the US and abroad. Being that the coins are so old, the quantity available is decreasing all the time. With that being said, there has never been a better time than now for you to get your hands on one.', 25.00, 0.00, '2020-08-25 16:48:00', '2020-09-25 16:18:00', 5000.00, 'usacoin.jpg', 'NA', '3-4 Days', 'CoinGate', 'Active'),
(151, 8, 'INDIA 2006 1000 RUPEES FIRST PREFIX SOLID NUMBER', 16558, 'The Indian 1000-rupee banknote (?1000) was a denomination of the Indian rupee. It was first introduced by the Reserve Bank of India in 1938 under British rule and subsequently demonetized in 1946.', 150.00, 0.00, '2020-08-24 16:48:00', '2020-09-25 16:18:00', 50000.00, 's-l1600.jpg', 'NA', '3-4 Days', 'CoinGate', 'Active'),
(152, 7, 'Bronze Vase China 19 Century', 16558, 'Bronze vase, China, XIX century Dimensions: approx. 19 x 16 cm. Diameter below: approx. 10.3 cm. Diameter at the top: approx. 13.7 cm. Used condition, age-related wear, small dents and scratches, old solder joint', 200.00, 0.00, '2020-08-24 16:48:00', '2020-09-25 16:18:00', 50000.00, 'Bronze Vase China 19 Century.jpg', 'NA', '3-4 Days', 'Vishi', 'Active'),
(153, 2, 'India 1996 Complete Stamps collection', 16558, 'India 1996 Complete Year Pack Stamp Full Set 43 Different Stamps from Stampbazar', 100.00, 0.00, '2020-08-24 15:48:00', '2020-09-25 16:18:00', 3000.00, 'stamp.jpg', 'NA', '3-4 Days', 'Stampbazar', 'Active'),
(154, 2, 'Dell 7386 Inspiron Laptop', 16549, 'with an innovative design, the versatile and lightweight Inspiron 13 7000 2-in-1 allows you to switch easily beetween four different modes. Tent mode is perfect for using receipts in real time, stand mode for movies on the aeroplane, laptop mode for trying your novel or emailing work, and tablet mode makes reading while you\'re reclined easier than ever.', 2000.00, 0.00, '2020-08-24 10:05:05', '2020-10-04 05:30:00', 25000.00, 'dell.jpg', '', '3-4 Days', 'dell', 'Active'),
(155, 8, 'Olympus 8-16 x 40 Zoom DPS I Binocular, Black', 16550, 'The Olympus binocular feature 8-16x zoom optical power that brigns sports enthusiasts to easily focus on their game, good for keeping up with fast moving subjects. A large diameter lenses offer upgraded field of view and clear view under dark environment. They also provide UV ray protection so you never have to worry against the sun.', 1000.00, 0.00, '2020-02-05 10:55:36', '2021-02-05 05:30:00', 8000.00, 'Olympus-.jpg', 'One Year', '1-3 days', 'DSL', 'Active'),
(156, 8, 'Fujifilm Instax Mini 9 Party box, Lime Green Insta', 16550, 'This Fujifilm Instax Mini9 Point and Shoot Cameras image is for illustration purpose only. Actual image may vary.', 100.00, 25.00, '2020-02-05 10:55:36', '2021-02-05 05:30:00', 8000.00, 'fujifilm.jpg', 'One Year', '7-10 days', 'DSL', 'Active'),
(157, 28, 'AlloyJewelSeT', 16560, 'Special Design And Unique Structure, A Popular Item\r\nWomen Love Jewellery\r\nSpecially Artificial Jewellery Adore A Women. They Wear It On Different Occasion. They Have Special Importance On Ring Ceremony, Wedding And Festive Time. They Can Also Wear It On Regular Basis . Make Your Moment Memorable With This Range. This Jewellery Features A Unique One Of A Kind Traditional Embellish With Antique Finish.\r\nThis Rich & Famous 2 In 1 Valentine Day Special Heart Pendant With Chain.\r\nRich & Famous Is A Tazs Brand In Fashion Jewelry Sector.', 255.00, 255.00, '2020-08-27 18:23:00', '2020-08-28 18:23:00', 50000.00, '1269626786gold.jpeg', '', '5-7 days', 'Akshaa', 'Active'),
(158, 30, 'Bronze 1 Paisa Coin', 16558, 'Metal bronze copper round shape with hole 1 paisa coin george vi, 1943-1947, diameter 21.32 mm, 2 g- Multi color\r\nRound shape coin with hole\r\nExtremely fine coin\r\nMint mark may be different depends on coin availability\r\nThe images represent actual product though colour of the image and product may slightly differ', 10.00, 12.00, '2021-04-05 00:30:00', '2021-06-06 00:30:00', 5000.00, '116483368571QBdDX+McL._SL1200_.jpg', '', '3-4 Days', 'Indian Coin', 'Active'),
(159, 30, 'Metal Bronze Coin', 16558, '1/2 Pice India 1936 George V – Metal Bronze Indian Coinage British India Coin \r\n100% Genuine Item\r\nSimilar Item Given\r\nLowest Price Deal\r\nBEST BUY', 10.00, 10.00, '2021-04-05 00:49:00', '2021-07-06 00:49:00', 10000.00, '1033808885coin.jpg', '', '7-10 days', 'Indian Coin', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `winners`
--

CREATE TABLE `winners` (
  `winner_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `winners_image` varchar(100) NOT NULL,
  `winning_bid` float(10,2) NOT NULL,
  `end_date` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `winners`
--

INSERT INTO `winners` (`winner_id`, `product_id`, `customer_id`, `winners_image`, `winning_bid`, `end_date`, `status`) VALUES
(6, 128, 2, '', 525.00, '2020-02-13', 'Pending'),
(7, 129, 2, '', 40.00, '2020-02-13', 'Pending'),
(8, 148, 23, '', 15.00, '2020-03-05', 'Pending'),
(9, 156, 28, '', 25.00, '2020-08-27', 'Pending'),
(10, 158, 31, '', 12.00, '2021-04-05', 'Pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bidding`
--
ALTER TABLE `bidding`
  ADD PRIMARY KEY (`bidding_id`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`billing_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `winners`
--
ALTER TABLE `winners`
  ADD PRIMARY KEY (`winner_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bidding`
--
ALTER TABLE `bidding`
  MODIFY `bidding_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3246;

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `billing_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16562;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `winners`
--
ALTER TABLE `winners`
  MODIFY `winner_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
