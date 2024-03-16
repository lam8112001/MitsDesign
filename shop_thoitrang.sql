-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2020 at 12:59 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_thoitrang`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `admin_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_password`, `admin_image`) VALUES
(2, 'Chí Bão', 'chibaosinger@gmail.com', '123', '33618299462_857a516e90_c.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `p_size` varchar(255) NOT NULL,
  `p_price` varchar(255) NOT NULL,
  `p_quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(10) NOT NULL,
  `category_title` varchar(255) NOT NULL,
  `category_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_title`, `category_desc`) VALUES
(2, 'Nữ', ''),
(3, 'Nam', '');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupon_id` int(100) NOT NULL,
  `product_id` int(100) NOT NULL,
  `coupon_title` varchar(255) NOT NULL,
  `coupon_price` varchar(255) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_limit` int(100) NOT NULL,
  `coupon_used` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`coupon_id`, `product_id`, `coupon_title`, `coupon_price`, `coupon_code`, `coupon_limit`, `coupon_used`) VALUES
(9, 31, 'Mã giảm giá cho vona Dress', '500.000', 'abc', 4, 0),
(10, 30, 'Mã giảm giá cho dada dress', '500.000', 'lalla', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_password` varchar(255) NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_phone`, `customer_address`, `customer_password`, `customer_image`, `customer_ip`) VALUES
(10, 'chibaosinger', 'chibaosinger@gmail.com', '0836730193', 'ca mau', '$2y$10$N6Y2Ze4k1Qr5fA7/tvLw/OoW7K966VrKFMdEoxj8MmK1wfCgEI1fO', '97478285.jpg', '::1'),
(23, 'bao', 'tachibao96@gmail.com', '123', 'Ấp rạch nhum, xã khánh bình đông, tvt', '$2y$10$BNIzC0Q5DmQfc.a6uGqUouzrxAGB9pgAUqeFyEMp/kSP9Rm8cx01C', '33618299462_857a516e90_c.jpg', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `product_id` int(10) NOT NULL,
  `product_size` varchar(255) NOT NULL,
  `product_quantity` int(10) NOT NULL,
  `order_date` date NOT NULL,
  `order_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `product_id`, `product_size`, `product_quantity`, `order_date`, `order_status`) VALUES
(123, 10, 500, 150992596, 30, 'Trung Bình', 1, '2020-07-01', 'Complete'),
(124, 10, 1180, 1616481044, 21, 'Nhỏ', 2, '2020-07-01', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `product_category_id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_image_1` text NOT NULL,
  `product_image_2` text NOT NULL,
  `product_image_3` text NOT NULL,
  `product_keywords` varchar(255) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_label` text NOT NULL,
  `product_sale` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_category_id`, `category_id`, `date`, `product_title`, `product_price`, `product_image_1`, `product_image_2`, `product_image_3`, `product_keywords`, `product_description`, `product_label`, `product_sale`) VALUES
(19, 1, 2, '2020-04-10 03:04:17', 'Kota Dress', '690.000', 'product_images/72126862_2399196567007918_36652662493544448_o.jpg', 'product_images/60337718_2294678607459715_7587335581248520192_o.jpg', 'product_images/72300551_2399191497008425_479029857280327680_o.jpg', 'dress, vay', '<p>Thanh lịch v&agrave; nữ t&iacute;nh với mẫu đầm Kota Dress của Lalla . Tone m&agrave;u nude với những đường b&egrave;o tinh tế &ocirc;m gọn v&oacute;c d&aacute;ng vừa sang trọng vừa ph&ugrave; hợp với mọi v&oacute;c d&aacute;ng .</p>\r\n<p>&nbsp;</p>\r\n<p', 'sale', '590.000'),
(21, 1, 2, '2020-04-09 15:04:21', 'Honu Dress', '590.000', 'product_images/49274283_2207455782848665_5964890596895096832_o.jpg', 'product_images/49210956_2207455802848663_2798101486024785920_o.jpg', 'product_images/49210956_2207455802848663_2798101486024785920_o.jpg', 'dress, vay', '<p>Với gam m&agrave;u pastel nhẹ nh&agrave;ng : Trắng , hồng , xanh, chiếc đầm Honu dress của Lalla sẽ gi&uacute;p bạn thật thanh lịch v&agrave; nữ t&iacute;nh d&ugrave; ở bất cứ đ&acirc;u.</p>\r\n<p>&nbsp;</p>\r\n<p>-M&agrave;u: xanh, hồng</p>', 'new', ''),
(23, 1, 2, '2020-04-09 14:58:09', 'Jubi Jumpsuit', '590.000', 'product_images/47084530_2183357158591861_4386413819816050688_o.jpg', 'product_images/47084963_2183357118591865_5765777940277100544_o.jpg', 'product_images/47084963_2183357118591865_5765777940277100544_o.jpg', 'dress, vay', '<p>Jumpsuit Jubi của #lalla th&iacute;ch hợp cho c&aacute;c c&ocirc; g&aacute;i y&ecirc;u th&iacute;ch vẻ năng động, bồng bềnh nhưng vẫn c&aacute; t&iacute;nh đ&acirc;y !!!</p>\r\n<p>&nbsp;</p>\r\n<p>Chất vải mỏng nhẹ , form jumpsuit vừa vặn tạo độ thoải m&aa', 'new', ''),
(24, 9, 2, '2020-06-19 04:57:52', 'Codo top, Taca skirt', '970.000', 'product_images/53678183_2250640148530228_1014424498826379264_o.jpg', 'product_images/53488075_2250638645197045_8604971770719502336_o.jpg', 'product_images/53488075_2250638645197045_8604971770719502336_o.jpg', 'top skirt', '<p>Nếu bạn đang t&igrave;m bộ c&aacute;nh thanh lịch m&agrave; vẫn sang chảnh th&igrave; đừng bỏ lỡ set trang phục n&agrave;y của Lalla nh&eacute; ❤️</p>\r\n<p>&nbsp;</p>\r\n<p>- M&agrave;u:&nbsp; Kem , đỏ</p>', 'sale', '870.000'),
(25, 1, 2, '2020-04-09 15:06:41', 'Beda Dress', '590.000', 'product_images/89021214_2535040043423569_2145711342630207488_o.jpg', 'product_images/87385314_2535040080090232_936441791245189120_o.jpg', 'product_images/87385314_2535040080090232_936441791245189120_o.jpg', 'dress, vay', '<p>Kh&ocirc;ng g&igrave; cuốn h&uacute;t hơn 1 c&ocirc; g&aacute;i mặc v&aacute;y lụa đỏ ?v&igrave; khi ấy n&agrave;ng như một đo&aacute; hồng rực rỡ v&agrave; ki&ecirc;u sa đến n&atilde;o l&ograve;ng ...</p>\r\n<p>&nbsp;</p>\r\n<p>- M&agrave;u: đỏ - r&ecirc;', 'new', ''),
(26, 1, 2, '2020-04-09 15:12:34', 'Lino Dress', '690.000', 'product_images/64828089_2338504446410464_7369705783019175936_o.jpg', 'product_images/67586870_2338504523077123_5408338306498822144_o.jpg', 'product_images/67091089_2338504719743770_1933520626560008192_o.jpg', 'dress, vay', '<p>Lalla ch&iacute;nh thức l&ecirc;n kệ với những thiết kế nhẹ nh&agrave;ng, trẻ trung v&agrave; l&atilde;ng đ&atilde;ng như ch&iacute;nh t&ecirc;n gọi của BST.</p>\r\n<p>&nbsp;</p>\r\n<p>- M&agrave;u:&nbsp;Xanh l&aacute; - Xanh cẩm thạch</p>', 'new', ''),
(27, 9, 2, '2020-06-19 04:53:42', 'Cobi Top, Tuta Skirt', '900.000', 'product_images/46514410_2178404795753764_580730220378587136_o.jpg', 'product_images/46485713_2178404872420423_524984813346619392_o.jpg', 'product_images/46519328_2178404842420426_1736984318959419392_o.jpg', 'top skirt', '<p>Thiết kế mới toanh trong BST mới của Lalla l&agrave; chiếc &aacute;o Cobi top với chất voan lụa tho&aacute;ng m&aacute;t điểm xuyết chấm bi duy&ecirc;n d&aacute;ng, Cobi Top 390.000, Tuta Skirt 420.000</p>', 'sale', '810.000'),
(28, 9, 2, '2020-06-19 04:57:38', 'Nono Top, Nuno Skirt', '840.000', 'product_images/65719129_2324549207805988_7892096113996464128_o.jpg', 'product_images/65370961_2324549577805951_8650683996709060608_o.jpg', 'product_images/65188678_2324549714472604_7817738556381593600_o.jpg', 'top skirt', '<p>Ngọt ng&agrave;o nhưng vẫn v&ocirc; c&ugrave;ng c&aacute; t&iacute;nh với những mẫu thiết kế mới nhất trong BST SUMMER VIBE của #Lalla</p>', 'new', ''),
(30, 1, 2, '2020-06-19 07:31:49', 'Dada Dress', '690.000', 'product_images/97478285_2596228327304740_6979566454387507200_o (1).jpg', 'product_images/96809365_2596228173971422_4155707954999328768_o.jpg', 'product_images/96809365_2596228173971422_4155707954999328768_o.jpg', 'dress, vay', '<p>BST mới nhất của Lalla lấy cảm hứng từ bộ phim Crash Landing on You - Hạ c&aacute;nh nơi anh ✈️ với h&igrave;nh ảnh người phụ nữ hiện đại, năng động v&agrave; đầy quyền lực. Chất tơ xốp H&agrave;n b&ecirc;n ngo&agrave;i v&agrave; đầm lụa l&oacute;t b&a', 'sale', '590.000'),
(31, 1, 2, '2020-06-19 07:47:36', 'Vona Dress', '590.000', 'product_images/81510749_2482144968713077_1879449496564269056_o.jpg', 'product_images/81759829_2482145062046401_4483470721971912704_o.jpg', 'product_images/81946706_2482145155379725_488774098692866048_o.jpg', 'dress, vay', '<p>C&ugrave;ng ?Midu v&agrave; ?Jun Vũ kh&aacute;m ph&aacute; những mẫu thiết kế mới nhất của nh&atilde;n h&agrave;ng thời trang #Lalla với mức gi&aacute; cực k&igrave; ưu đ&atilde;i chỉ 420.000 - 590.000 vnđ bạn nh&eacute; !</p>', 'new', ''),
(32, 1, 2, '2020-06-19 07:45:10', 'Luta Dress', '590.000', 'product_images/82155370_2487346704859570_6619670137970622464_o.jpg', 'product_images/81781534_2487346688192905_8144859079714537472_o.jpg', 'product_images/82549341_2487346878192886_5518287798534144000_o.jpg', 'dress, vay', '<p>C&ugrave;ng ?Midu v&agrave; ?Jun Vũ kh&aacute;m ph&aacute; những mẫu thiết kế mới nhất của nh&atilde;n h&agrave;ng thời trang #Lalla với mức gi&aacute; cực k&igrave; ưu đ&atilde;i chỉ 590.000 vnđ bạn nh&eacute; !</p>', 'new', ''),
(33, 1, 2, '2020-06-19 07:51:18', 'Bata Dress', '590.000', 'product_images/82196573_2481185252142382_7444610077085925376_o.jpg', 'product_images/81070717_2481184978809076_2107956170621714432_o.jpg', 'product_images/81090549_2481185388809035_7955383887327133696_o.jpg', 'dress, vay', '<p>Tết năm nay, h&atilde;y c&ugrave;ng Lalla, Midu v&agrave; Jun Vũ tự tin trở th&agrave;nh người phụ nữ biết y&ecirc;u thương v&agrave; giải ph&oacute;ng ch&iacute;nh bản th&acirc;n m&igrave;nh bạn nh&eacute;.</p>', 'new', '');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `product_category_id` int(10) NOT NULL,
  `product_category_title` varchar(255) NOT NULL,
  `product_category_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`product_category_id`, `product_category_title`, `product_category_desc`) VALUES
(1, 'Dress', '“ Mùa hè và những bông hoa cúc dại “\r\n\r\nBST rất thơ và lãng mạn của Lalla chính thức lên kệ với những thiết kế nhẹ nhàng, trẻ trung và lãng đãng như chính tên gọi của BST\r\n\r\nClick vào hình để xem giá và chi tiết từng sản phẩm các nàng nhé !'),
(9, 'Top + Skirt', '');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `slide_id` int(10) NOT NULL,
  `slide_title` varchar(255) NOT NULL,
  `slide_description` varchar(255) NOT NULL,
  `slide_image` text NOT NULL,
  `slide_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`slide_id`, `slide_title`, `slide_description`, `slide_image`, `slide_url`) VALUES
(2, 'Lalla shop thời trang', 'Cùng Midu và Jun Vũ khám phá những mẫu thiết kế mới nhất của nhãn hàng thời trang.', 'slides_images/81219450_2475525596041681_5829689218305097728_o.jpg', ''),
(14, '', '', 'slides_images/81234302_2475525652708342_3249011419324088320_o.jpg', ''),
(15, '', '', 'slides_images/80584739_2475525732708334_8578055811970891776_o.jpg', ''),
(22, '', '', 'slides_images/81867504_2475525639375010_6021750406206455808_o.jpg', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`product_category_id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`slide_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `product_category_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `slide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
