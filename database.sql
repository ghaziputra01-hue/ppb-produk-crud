-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2026 at 03:18 AM
-- Server version: 10.11.16-MariaDB
-- PHP Version: 8.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_produk`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `category` varchar(100) NOT NULL,
  `thumbnail` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `category`, `thumbnail`) VALUES
(1, 'Essence Mascara Lash Princess', 9.99, 'beauty', 'https://cdn.dummyjson.com/product-images/beauty/essence-mascara-lash-princess/thumbnail.webp'),
(2, 'Eyeshadow Palette with Mirror', 19.99, 'beauty', 'https://cdn.dummyjson.com/product-images/beauty/eyeshadow-palette-with-mirror/thumbnail.webp'),
(3, 'Powder Canister', 14.99, 'beauty', 'https://cdn.dummyjson.com/product-images/beauty/powder-canister/thumbnail.webp'),
(4, 'Red Lipstick', 12.99, 'beauty', 'https://cdn.dummyjson.com/product-images/beauty/red-lipstick/thumbnail.webp'),
(5, 'Red Nail Polish', 8.99, 'beauty', 'https://cdn.dummyjson.com/product-images/beauty/red-nail-polish/thumbnail.webp'),
(6, 'Calvin Klein CK One', 49.99, 'fragrances', 'https://cdn.dummyjson.com/product-images/fragrances/calvin-klein-ck-one/thumbnail.webp'),
(7, 'Chanel Coco Noir Eau De', 129.99, 'fragrances', 'https://cdn.dummyjson.com/product-images/fragrances/chanel-coco-noir-eau-de/thumbnail.webp'),
(8, 'Dior J\'adore', 89.99, 'fragrances', 'https://cdn.dummyjson.com/product-images/fragrances/dior-j\'adore/thumbnail.webp'),
(9, 'Dolce Shine Eau de', 69.99, 'fragrances', 'https://cdn.dummyjson.com/product-images/fragrances/dolce-shine-eau-de/thumbnail.webp'),
(10, 'Gucci Bloom Eau de', 79.99, 'fragrances', 'https://cdn.dummyjson.com/product-images/fragrances/gucci-bloom-eau-de/thumbnail.webp'),
(11, 'Annibale Colombo Bed', 1899.99, 'furniture', 'https://cdn.dummyjson.com/product-images/furniture/annibale-colombo-bed/thumbnail.webp'),
(12, 'Annibale Colombo Sofa', 2499.99, 'furniture', 'https://cdn.dummyjson.com/product-images/furniture/annibale-colombo-sofa/thumbnail.webp'),
(13, 'Bedside Table African Cherry', 299.99, 'furniture', 'https://cdn.dummyjson.com/product-images/furniture/bedside-table-african-cherry/thumbnail.webp'),
(14, 'Knoll Saarinen Executive Conference Chair', 499.99, 'furniture', 'https://cdn.dummyjson.com/product-images/furniture/knoll-saarinen-executive-conference-chair/thumbnail.webp'),
(15, 'Wooden Bathroom Sink With Mirror', 799.99, 'furniture', 'https://cdn.dummyjson.com/product-images/furniture/wooden-bathroom-sink-with-mirror/thumbnail.webp'),
(16, 'Apple', 1.99, 'groceries', 'https://cdn.dummyjson.com/product-images/groceries/apple/thumbnail.webp'),
(17, 'Beef Steak', 12.99, 'groceries', 'https://cdn.dummyjson.com/product-images/groceries/beef-steak/thumbnail.webp'),
(18, 'Cat Food', 8.99, 'groceries', 'https://cdn.dummyjson.com/product-images/groceries/cat-food/thumbnail.webp'),
(19, 'Chicken Meat', 9.99, 'groceries', 'https://cdn.dummyjson.com/product-images/groceries/chicken-meat/thumbnail.webp'),
(20, 'Cooking Oil', 4.99, 'groceries', 'https://cdn.dummyjson.com/product-images/groceries/cooking-oil/thumbnail.webp'),
(21, 'Cucumber', 1.49, 'groceries', 'https://cdn.dummyjson.com/product-images/groceries/cucumber/thumbnail.webp'),
(22, 'Dog Food', 10.99, 'groceries', 'https://cdn.dummyjson.com/product-images/groceries/dog-food/thumbnail.webp'),
(23, 'Eggs', 2.99, 'groceries', 'https://cdn.dummyjson.com/product-images/groceries/eggs/thumbnail.webp'),
(24, 'Fish Steak', 14.99, 'groceries', 'https://cdn.dummyjson.com/product-images/groceries/fish-steak/thumbnail.webp'),
(25, 'Green Bell Pepper', 1.29, 'groceries', 'https://cdn.dummyjson.com/product-images/groceries/green-bell-pepper/thumbnail.webp'),
(26, 'Green Chili Pepper', 0.99, 'groceries', 'https://cdn.dummyjson.com/product-images/groceries/green-chili-pepper/thumbnail.webp'),
(27, 'Honey Jar', 6.99, 'groceries', 'https://cdn.dummyjson.com/product-images/groceries/honey-jar/thumbnail.webp'),
(28, 'Ice Cream', 5.49, 'groceries', 'https://cdn.dummyjson.com/product-images/groceries/ice-cream/thumbnail.webp'),
(29, 'Juice', 3.99, 'groceries', 'https://cdn.dummyjson.com/product-images/groceries/juice/thumbnail.webp'),
(30, 'Kiwi', 2.49, 'groceries', 'https://cdn.dummyjson.com/product-images/groceries/kiwi/thumbnail.webp'),
(31, 'Lemon', 0.79, 'groceries', 'https://cdn.dummyjson.com/product-images/groceries/lemon/thumbnail.webp'),
(32, 'Milk', 3.49, 'groceries', 'https://cdn.dummyjson.com/product-images/groceries/milk/thumbnail.webp'),
(33, 'Mulberry', 4.99, 'groceries', 'https://cdn.dummyjson.com/product-images/groceries/mulberry/thumbnail.webp'),
(34, 'Nescafe Coffee', 7.99, 'groceries', 'https://cdn.dummyjson.com/product-images/groceries/nescafe-coffee/thumbnail.webp'),
(35, 'Potatoes', 2.29, 'groceries', 'https://cdn.dummyjson.com/product-images/groceries/potatoes/thumbnail.webp'),
(36, 'Protein Powder', 19.99, 'groceries', 'https://cdn.dummyjson.com/product-images/groceries/protein-powder/thumbnail.webp'),
(37, 'Red Onions', 1.99, 'groceries', 'https://cdn.dummyjson.com/product-images/groceries/red-onions/thumbnail.webp'),
(38, 'Rice', 5.99, 'groceries', 'https://cdn.dummyjson.com/product-images/groceries/rice/thumbnail.webp'),
(39, 'Soft Drinks', 1.99, 'groceries', 'https://cdn.dummyjson.com/product-images/groceries/soft-drinks/thumbnail.webp'),
(40, 'Strawberry', 3.99, 'groceries', 'https://cdn.dummyjson.com/product-images/groceries/strawberry/thumbnail.webp'),
(41, 'Tissue Paper Box', 2.49, 'groceries', 'https://cdn.dummyjson.com/product-images/groceries/tissue-paper-box/thumbnail.webp'),
(42, 'Water', 0.99, 'groceries', 'https://cdn.dummyjson.com/product-images/groceries/water/thumbnail.webp'),
(43, 'Decoration Swing', 59.99, 'home-decoration', 'https://cdn.dummyjson.com/product-images/home-decoration/decoration-swing/thumbnail.webp'),
(44, 'Family Tree Photo Frame', 29.99, 'home-decoration', 'https://cdn.dummyjson.com/product-images/home-decoration/family-tree-photo-frame/thumbnail.webp'),
(45, 'House Showpiece Plant', 39.99, 'home-decoration', 'https://cdn.dummyjson.com/product-images/home-decoration/house-showpiece-plant/thumbnail.webp'),
(46, 'Plant Pot', 14.99, 'home-decoration', 'https://cdn.dummyjson.com/product-images/home-decoration/plant-pot/thumbnail.webp'),
(47, 'Table Lamp', 49.99, 'home-decoration', 'https://cdn.dummyjson.com/product-images/home-decoration/table-lamp/thumbnail.webp'),
(48, 'Bamboo Spatula', 7.99, 'kitchen-accessories', 'https://cdn.dummyjson.com/product-images/kitchen-accessories/bamboo-spatula/thumbnail.webp'),
(49, 'Black Aluminium Cup', 5.99, 'kitchen-accessories', 'https://cdn.dummyjson.com/product-images/kitchen-accessories/black-aluminium-cup/thumbnail.webp'),
(50, 'Black Whisk', 9.99, 'kitchen-accessories', 'https://cdn.dummyjson.com/product-images/kitchen-accessories/black-whisk/thumbnail.webp'),
(51, 'Boxed Blender', 39.99, 'kitchen-accessories', 'https://cdn.dummyjson.com/product-images/kitchen-accessories/boxed-blender/thumbnail.webp'),
(52, 'Carbon Steel Wok', 29.99, 'kitchen-accessories', 'https://cdn.dummyjson.com/product-images/kitchen-accessories/carbon-steel-wok/thumbnail.webp'),
(53, 'Chopping Board', 12.99, 'kitchen-accessories', 'https://cdn.dummyjson.com/product-images/kitchen-accessories/chopping-board/thumbnail.webp'),
(54, 'Citrus Squeezer Yellow', 8.99, 'kitchen-accessories', 'https://cdn.dummyjson.com/product-images/kitchen-accessories/citrus-squeezer-yellow/thumbnail.webp'),
(55, 'Egg Slicer', 6.99, 'kitchen-accessories', 'https://cdn.dummyjson.com/product-images/kitchen-accessories/egg-slicer/thumbnail.webp'),
(56, 'Electric Stove', 49.99, 'kitchen-accessories', 'https://cdn.dummyjson.com/product-images/kitchen-accessories/electric-stove/thumbnail.webp'),
(57, 'Fine Mesh Strainer', 9.99, 'kitchen-accessories', 'https://cdn.dummyjson.com/product-images/kitchen-accessories/fine-mesh-strainer/thumbnail.webp'),
(58, 'Fork', 3.99, 'kitchen-accessories', 'https://cdn.dummyjson.com/product-images/kitchen-accessories/fork/thumbnail.webp'),
(59, 'Glass', 4.99, 'kitchen-accessories', 'https://cdn.dummyjson.com/product-images/kitchen-accessories/glass/thumbnail.webp'),
(60, 'Grater Black', 10.99, 'kitchen-accessories', 'https://cdn.dummyjson.com/product-images/kitchen-accessories/grater-black/thumbnail.webp'),
(61, 'Hand Blender', 34.99, 'kitchen-accessories', 'https://cdn.dummyjson.com/product-images/kitchen-accessories/hand-blender/thumbnail.webp'),
(62, 'Ice Cube Tray', 5.99, 'kitchen-accessories', 'https://cdn.dummyjson.com/product-images/kitchen-accessories/ice-cube-tray/thumbnail.webp'),
(63, 'Kitchen Sieve', 7.99, 'kitchen-accessories', 'https://cdn.dummyjson.com/product-images/kitchen-accessories/kitchen-sieve/thumbnail.webp'),
(64, 'Knife', 14.99, 'kitchen-accessories', 'https://cdn.dummyjson.com/product-images/kitchen-accessories/knife/thumbnail.webp'),
(65, 'Lunch Box', 12.99, 'kitchen-accessories', 'https://cdn.dummyjson.com/product-images/kitchen-accessories/lunch-box/thumbnail.webp'),
(66, 'Microwave Oven', 89.99, 'kitchen-accessories', 'https://cdn.dummyjson.com/product-images/kitchen-accessories/microwave-oven/thumbnail.webp'),
(67, 'Mug Tree Stand', 15.99, 'kitchen-accessories', 'https://cdn.dummyjson.com/product-images/kitchen-accessories/mug-tree-stand/thumbnail.webp'),
(68, 'Pan', 24.99, 'kitchen-accessories', 'https://cdn.dummyjson.com/product-images/kitchen-accessories/pan/thumbnail.webp'),
(69, 'Plate', 3.99, 'kitchen-accessories', 'https://cdn.dummyjson.com/product-images/kitchen-accessories/plate/thumbnail.webp'),
(70, 'Red Tongs', 6.99, 'kitchen-accessories', 'https://cdn.dummyjson.com/product-images/kitchen-accessories/red-tongs/thumbnail.webp'),
(71, 'Silver Pot With Glass Cap', 39.99, 'kitchen-accessories', 'https://cdn.dummyjson.com/product-images/kitchen-accessories/silver-pot-with-glass-cap/thumbnail.webp'),
(72, 'Slotted Turner', 8.99, 'kitchen-accessories', 'https://cdn.dummyjson.com/product-images/kitchen-accessories/slotted-turner/thumbnail.webp'),
(73, 'Spice Rack', 19.99, 'kitchen-accessories', 'https://cdn.dummyjson.com/product-images/kitchen-accessories/spice-rack/thumbnail.webp'),
(74, 'Spoon', 4.99, 'kitchen-accessories', 'https://cdn.dummyjson.com/product-images/kitchen-accessories/spoon/thumbnail.webp'),
(75, 'Tray', 16.99, 'kitchen-accessories', 'https://cdn.dummyjson.com/product-images/kitchen-accessories/tray/thumbnail.webp'),
(76, 'Wooden Rolling Pin', 11.99, 'kitchen-accessories', 'https://cdn.dummyjson.com/product-images/kitchen-accessories/wooden-rolling-pin/thumbnail.webp'),
(77, 'Yellow Peeler', 5.99, 'kitchen-accessories', 'https://cdn.dummyjson.com/product-images/kitchen-accessories/yellow-peeler/thumbnail.webp'),
(78, 'Apple MacBook Pro 14 Inch Space Grey', 1999.99, 'laptops', 'https://cdn.dummyjson.com/product-images/laptops/apple-macbook-pro-14-inch-space-grey/thumbnail.webp'),
(79, 'Asus Zenbook Pro Dual Screen Laptop', 1799.99, 'laptops', 'https://cdn.dummyjson.com/product-images/laptops/asus-zenbook-pro-dual-screen-laptop/thumbnail.webp'),
(80, 'Huawei Matebook X Pro', 1399.99, 'laptops', 'https://cdn.dummyjson.com/product-images/laptops/huawei-matebook-x-pro/thumbnail.webp'),
(81, 'Lenovo Yoga 920', 1099.99, 'laptops', 'https://cdn.dummyjson.com/product-images/laptops/lenovo-yoga-920/thumbnail.webp'),
(82, 'New DELL XPS 13 9300 Laptop', 1499.99, 'laptops', 'https://cdn.dummyjson.com/product-images/laptops/new-dell-xps-13-9300-laptop/thumbnail.webp'),
(83, 'Blue & Black Check Shirt', 29.99, 'mens-shirts', 'https://cdn.dummyjson.com/product-images/mens-shirts/blue-&-black-check-shirt/thumbnail.webp'),
(84, 'Gigabyte Aorus Men Tshirt', 24.99, 'mens-shirts', 'https://cdn.dummyjson.com/product-images/mens-shirts/gigabyte-aorus-men-tshirt/thumbnail.webp'),
(85, 'Man Plaid Shirt', 34.99, 'mens-shirts', 'https://cdn.dummyjson.com/product-images/mens-shirts/man-plaid-shirt/thumbnail.webp'),
(86, 'Man Short Sleeve Shirt', 19.99, 'mens-shirts', 'https://cdn.dummyjson.com/product-images/mens-shirts/man-short-sleeve-shirt/thumbnail.webp'),
(87, 'Men Check Shirt', 27.99, 'mens-shirts', 'https://cdn.dummyjson.com/product-images/mens-shirts/men-check-shirt/thumbnail.webp'),
(88, 'Nike Air Jordan 1 Red And Black', 149.99, 'mens-shoes', 'https://cdn.dummyjson.com/product-images/mens-shoes/nike-air-jordan-1-red-and-black/thumbnail.webp'),
(89, 'Nike Baseball Cleats', 79.99, 'mens-shoes', 'https://cdn.dummyjson.com/product-images/mens-shoes/nike-baseball-cleats/thumbnail.webp'),
(90, 'Puma Future Rider Trainers', 89.99, 'mens-shoes', 'https://cdn.dummyjson.com/product-images/mens-shoes/puma-future-rider-trainers/thumbnail.webp'),
(91, 'Sports Sneakers Off White & Red', 119.99, 'mens-shoes', 'https://cdn.dummyjson.com/product-images/mens-shoes/sports-sneakers-off-white-&-red/thumbnail.webp'),
(92, 'Sports Sneakers Off White Red', 109.99, 'mens-shoes', 'https://cdn.dummyjson.com/product-images/mens-shoes/sports-sneakers-off-white-red/thumbnail.webp'),
(93, 'Brown Leather Belt Watch', 89.99, 'mens-watches', 'https://cdn.dummyjson.com/product-images/mens-watches/brown-leather-belt-watch/thumbnail.webp'),
(94, 'Longines Master Collection', 1499.99, 'mens-watches', 'https://cdn.dummyjson.com/product-images/mens-watches/longines-master-collection/thumbnail.webp'),
(95, 'Rolex Cellini Date Black Dial', 8999.99, 'mens-watches', 'https://cdn.dummyjson.com/product-images/mens-watches/rolex-cellini-date-black-dial/thumbnail.webp'),
(96, 'Rolex Cellini Moonphase', 12999.99, 'mens-watches', 'https://cdn.dummyjson.com/product-images/womens-watches/rolex-cellini-moonphase/thumbnail.webp'),
(97, 'Rolex Datejust', 10999.99, 'mens-watches', 'https://cdn.dummyjson.com/product-images/mens-watches/rolex-datejust/thumbnail.webp'),
(98, 'Rolex Submariner Watch', 13999.99, 'mens-watches', 'https://cdn.dummyjson.com/product-images/mens-watches/rolex-submariner-watch/thumbnail.webp'),
(99, 'Amazon Echo Plus', 99.99, 'mobile-accessories', 'https://cdn.dummyjson.com/product-images/mobile-accessories/amazon-echo-plus/thumbnail.webp'),
(100, 'Apple Airpods', 129.99, 'mobile-accessories', 'https://cdn.dummyjson.com/product-images/mobile-accessories/apple-airpods/thumbnail.webp'),
(101, 'Apple AirPods Max Silver', 549.99, 'mobile-accessories', 'https://cdn.dummyjson.com/product-images/mobile-accessories/apple-airpods-max-silver/thumbnail.webp'),
(102, 'Apple Airpower Wireless Charger', 79.99, 'mobile-accessories', 'https://cdn.dummyjson.com/product-images/mobile-accessories/apple-airpower-wireless-charger/thumbnail.webp'),
(103, 'Apple HomePod Mini Cosmic Grey', 99.99, 'mobile-accessories', 'https://cdn.dummyjson.com/product-images/mobile-accessories/apple-homepod-mini-cosmic-grey/thumbnail.webp'),
(104, 'Apple iPhone Charger', 19.99, 'mobile-accessories', 'https://cdn.dummyjson.com/product-images/mobile-accessories/apple-iphone-charger/thumbnail.webp'),
(105, 'Apple MagSafe Battery Pack', 99.99, 'mobile-accessories', 'https://cdn.dummyjson.com/product-images/mobile-accessories/apple-magsafe-battery-pack/thumbnail.webp'),
(106, 'Apple Watch Series 4 Gold', 349.99, 'mobile-accessories', 'https://cdn.dummyjson.com/product-images/mobile-accessories/apple-watch-series-4-gold/thumbnail.webp'),
(107, 'Beats Flex Wireless Earphones', 49.99, 'mobile-accessories', 'https://cdn.dummyjson.com/product-images/mobile-accessories/beats-flex-wireless-earphones/thumbnail.webp'),
(108, 'iPhone 12 Silicone Case with MagSafe Plum', 29.99, 'mobile-accessories', 'https://cdn.dummyjson.com/product-images/mobile-accessories/iphone-12-silicone-case-with-magsafe-plum/thumbnail.webp'),
(109, 'Monopod', 19.99, 'mobile-accessories', 'https://cdn.dummyjson.com/product-images/mobile-accessories/monopod/thumbnail.webp'),
(110, 'Selfie Lamp with iPhone', 14.99, 'mobile-accessories', 'https://cdn.dummyjson.com/product-images/mobile-accessories/selfie-lamp-with-iphone/thumbnail.webp'),
(111, 'Selfie Stick Monopod', 12.99, 'mobile-accessories', 'https://cdn.dummyjson.com/product-images/mobile-accessories/selfie-stick-monopod/thumbnail.webp'),
(112, 'TV Studio Camera Pedestal', 499.99, 'mobile-accessories', 'https://cdn.dummyjson.com/product-images/mobile-accessories/tv-studio-camera-pedestal/thumbnail.webp'),
(113, 'Generic Motorcycle', 3999.99, 'motorcycle', 'https://cdn.dummyjson.com/product-images/motorcycle/generic-motorcycle/thumbnail.webp'),
(114, 'Kawasaki Z800', 8999.99, 'motorcycle', 'https://cdn.dummyjson.com/product-images/motorcycle/kawasaki-z800/thumbnail.webp'),
(115, 'MotoGP CI.H1', 14999.99, 'motorcycle', 'https://cdn.dummyjson.com/product-images/motorcycle/motogp-ci.h1/thumbnail.webp'),
(116, 'Scooter Motorcycle', 2999.99, 'motorcycle', 'https://cdn.dummyjson.com/product-images/motorcycle/scooter-motorcycle/thumbnail.webp'),
(117, 'Sportbike Motorcycle', 7499.99, 'motorcycle', 'https://cdn.dummyjson.com/product-images/motorcycle/sportbike-motorcycle/thumbnail.webp'),
(118, 'Attitude Super Leaves Hand Soap', 8.99, 'skin-care', 'https://cdn.dummyjson.com/product-images/skin-care/attitude-super-leaves-hand-soap/thumbnail.webp'),
(119, 'Olay Ultra Moisture Shea Butter Body Wash', 12.99, 'skin-care', 'https://cdn.dummyjson.com/product-images/skin-care/olay-ultra-moisture-shea-butter-body-wash/thumbnail.webp'),
(120, 'Vaseline Men Body and Face Lotion', 9.99, 'skin-care', 'https://cdn.dummyjson.com/product-images/skin-care/vaseline-men-body-and-face-lotion/thumbnail.webp'),
(121, 'iPhone 5s', 199.99, 'smartphones', 'https://cdn.dummyjson.com/product-images/smartphones/iphone-5s/thumbnail.webp'),
(122, 'iPhone 6', 299.99, 'smartphones', 'https://cdn.dummyjson.com/product-images/smartphones/iphone-6/thumbnail.webp'),
(123, 'iPhone 13 Pro', 1099.99, 'smartphones', 'https://cdn.dummyjson.com/product-images/smartphones/iphone-13-pro/thumbnail.webp'),
(124, 'iPhone X', 899.99, 'smartphones', 'https://cdn.dummyjson.com/product-images/smartphones/iphone-x/thumbnail.webp'),
(125, 'Oppo A57', 249.99, 'smartphones', 'https://cdn.dummyjson.com/product-images/smartphones/oppo-a57/thumbnail.webp'),
(126, 'Oppo F19 Pro Plus', 399.99, 'smartphones', 'https://cdn.dummyjson.com/product-images/smartphones/oppo-f19-pro-plus/thumbnail.webp'),
(127, 'Oppo K1', 299.99, 'smartphones', 'https://cdn.dummyjson.com/product-images/smartphones/oppo-k1/thumbnail.webp'),
(128, 'Realme C35', 149.99, 'smartphones', 'https://cdn.dummyjson.com/product-images/smartphones/realme-c35/thumbnail.webp'),
(129, 'Realme X', 299.99, 'smartphones', 'https://cdn.dummyjson.com/product-images/smartphones/realme-x/thumbnail.webp'),
(130, 'Realme XT', 349.99, 'smartphones', 'https://cdn.dummyjson.com/product-images/smartphones/realme-xt/thumbnail.webp'),
(131, 'Samsung Galaxy S7', 299.99, 'smartphones', 'https://cdn.dummyjson.com/product-images/smartphones/samsung-galaxy-s7/thumbnail.webp'),
(132, 'Samsung Galaxy S8', 499.99, 'smartphones', 'https://cdn.dummyjson.com/product-images/smartphones/samsung-galaxy-s8/thumbnail.webp'),
(133, 'Samsung Galaxy S10', 699.99, 'smartphones', 'https://cdn.dummyjson.com/product-images/smartphones/samsung-galaxy-s10/thumbnail.webp'),
(134, 'Vivo S1', 249.99, 'smartphones', 'https://cdn.dummyjson.com/product-images/smartphones/vivo-s1/thumbnail.webp'),
(135, 'Vivo V9', 299.99, 'smartphones', 'https://cdn.dummyjson.com/product-images/smartphones/vivo-v9/thumbnail.webp'),
(136, 'Vivo X21', 499.99, 'smartphones', 'https://cdn.dummyjson.com/product-images/smartphones/vivo-x21/thumbnail.webp'),
(137, 'American Football', 19.99, 'sports-accessories', 'https://cdn.dummyjson.com/product-images/sports-accessories/american-football/thumbnail.webp'),
(138, 'Baseball Ball', 8.99, 'sports-accessories', 'https://cdn.dummyjson.com/product-images/sports-accessories/baseball-ball/thumbnail.webp'),
(139, 'Baseball Glove', 24.99, 'sports-accessories', 'https://cdn.dummyjson.com/product-images/sports-accessories/baseball-glove/thumbnail.webp'),
(140, 'Basketball', 14.99, 'sports-accessories', 'https://cdn.dummyjson.com/product-images/sports-accessories/basketball/thumbnail.webp'),
(141, 'Basketball Rim', 39.99, 'sports-accessories', 'https://cdn.dummyjson.com/product-images/sports-accessories/basketball-rim/thumbnail.webp'),
(142, 'Cricket Ball', 12.99, 'sports-accessories', 'https://cdn.dummyjson.com/product-images/sports-accessories/cricket-ball/thumbnail.webp'),
(143, 'Cricket Bat', 29.99, 'sports-accessories', 'https://cdn.dummyjson.com/product-images/sports-accessories/cricket-bat/thumbnail.webp'),
(144, 'Cricket Helmet', 44.99, 'sports-accessories', 'https://cdn.dummyjson.com/product-images/sports-accessories/cricket-helmet/thumbnail.webp'),
(145, 'Cricket Wicket', 29.99, 'sports-accessories', 'https://cdn.dummyjson.com/product-images/sports-accessories/cricket-wicket/thumbnail.webp'),
(146, 'Feather Shuttlecock', 5.99, 'sports-accessories', 'https://cdn.dummyjson.com/product-images/sports-accessories/feather-shuttlecock/thumbnail.webp'),
(147, 'Football', 17.99, 'sports-accessories', 'https://cdn.dummyjson.com/product-images/sports-accessories/football/thumbnail.webp'),
(148, 'Golf Ball', 9.99, 'sports-accessories', 'https://cdn.dummyjson.com/product-images/sports-accessories/golf-ball/thumbnail.webp'),
(149, 'Iron Golf', 49.99, 'sports-accessories', 'https://cdn.dummyjson.com/product-images/sports-accessories/iron-golf/thumbnail.webp'),
(150, 'Metal Baseball Bat', 29.99, 'sports-accessories', 'https://cdn.dummyjson.com/product-images/sports-accessories/metal-baseball-bat/thumbnail.webp'),
(151, 'Tennis Ball', 6.99, 'sports-accessories', 'https://cdn.dummyjson.com/product-images/sports-accessories/tennis-ball/thumbnail.webp'),
(152, 'Tennis Racket', 49.99, 'sports-accessories', 'https://cdn.dummyjson.com/product-images/sports-accessories/tennis-racket/thumbnail.webp'),
(153, 'Volleyball', 11.99, 'sports-accessories', 'https://cdn.dummyjson.com/product-images/sports-accessories/volleyball/thumbnail.webp'),
(154, 'Black Sun Glasses', 29.99, 'sunglasses', 'https://cdn.dummyjson.com/product-images/sunglasses/black-sun-glasses/thumbnail.webp'),
(155, 'Classic Sun Glasses', 24.99, 'sunglasses', 'https://cdn.dummyjson.com/product-images/sunglasses/classic-sun-glasses/thumbnail.webp'),
(156, 'Green and Black Glasses', 34.99, 'sunglasses', 'https://cdn.dummyjson.com/product-images/sunglasses/green-and-black-glasses/thumbnail.webp'),
(157, 'Party Glasses', 19.99, 'sunglasses', 'https://cdn.dummyjson.com/product-images/sunglasses/party-glasses/thumbnail.webp'),
(158, 'Sunglasses', 22.99, 'sunglasses', 'https://cdn.dummyjson.com/product-images/sunglasses/sunglasses/thumbnail.webp'),
(159, 'iPad Mini 2021 Starlight', 499.99, 'tablets', 'https://cdn.dummyjson.com/product-images/tablets/ipad-mini-2021-starlight/thumbnail.webp'),
(160, 'Samsung Galaxy Tab S8 Plus Grey', 599.99, 'tablets', 'https://cdn.dummyjson.com/product-images/tablets/samsung-galaxy-tab-s8-plus-grey/thumbnail.webp'),
(161, 'Samsung Galaxy Tab White', 349.99, 'tablets', 'https://cdn.dummyjson.com/product-images/tablets/samsung-galaxy-tab-white/thumbnail.webp'),
(162, 'Blue Frock', 29.99, 'tops', 'https://cdn.dummyjson.com/product-images/tops/blue-frock/thumbnail.webp'),
(163, 'Girl Summer Dress', 19.99, 'tops', 'https://cdn.dummyjson.com/product-images/tops/girl-summer-dress/thumbnail.webp'),
(164, 'Gray Dress', 34.99, 'tops', 'https://cdn.dummyjson.com/product-images/tops/gray-dress/thumbnail.webp'),
(165, 'Short Frock', 24.99, 'tops', 'https://cdn.dummyjson.com/product-images/tops/short-frock/thumbnail.webp'),
(166, 'Tartan Dress', 39.99, 'tops', 'https://cdn.dummyjson.com/product-images/tops/tartan-dress/thumbnail.webp'),
(167, '300 Touring', 28999.99, 'vehicle', 'https://cdn.dummyjson.com/product-images/vehicle/300-touring/thumbnail.webp'),
(168, 'Charger SXT RWD', 32999.99, 'vehicle', 'https://cdn.dummyjson.com/product-images/vehicle/charger-sxt-rwd/thumbnail.webp'),
(169, 'Dodge Hornet GT Plus', 24999.99, 'vehicle', 'https://cdn.dummyjson.com/product-images/vehicle/dodge-hornet-gt-plus/thumbnail.webp'),
(170, 'Durango SXT RWD', 36999.99, 'vehicle', 'https://cdn.dummyjson.com/product-images/vehicle/durango-sxt-rwd/thumbnail.webp'),
(171, 'Pacifica Touring', 31999.99, 'vehicle', 'https://cdn.dummyjson.com/product-images/vehicle/pacifica-touring/thumbnail.webp'),
(172, 'Blue Women\'s Handbag', 49.99, 'womens-bags', 'https://cdn.dummyjson.com/product-images/womens-bags/blue-women\'s-handbag/thumbnail.webp'),
(173, 'Heshe Women\'s Leather Bag', 129.99, 'womens-bags', 'https://cdn.dummyjson.com/product-images/womens-bags/heshe-women\'s-leather-bag/thumbnail.webp'),
(174, 'Prada Women Bag', 599.99, 'womens-bags', 'https://cdn.dummyjson.com/product-images/womens-bags/prada-women-bag/thumbnail.webp'),
(175, 'White Faux Leather Backpack', 39.99, 'womens-bags', 'https://cdn.dummyjson.com/product-images/womens-bags/white-faux-leather-backpack/thumbnail.webp'),
(176, 'Women Handbag Black', 59.99, 'womens-bags', 'https://cdn.dummyjson.com/product-images/womens-bags/women-handbag-black/thumbnail.webp'),
(177, 'Black Women\'s Gown', 129.99, 'womens-dresses', 'https://cdn.dummyjson.com/product-images/womens-dresses/black-women\'s-gown/thumbnail.webp'),
(178, 'Corset Leather With Skirt', 89.99, 'womens-dresses', 'https://cdn.dummyjson.com/product-images/womens-dresses/corset-leather-with-skirt/thumbnail.webp'),
(179, 'Corset With Black Skirt', 79.99, 'womens-dresses', 'https://cdn.dummyjson.com/product-images/womens-dresses/corset-with-black-skirt/thumbnail.webp'),
(180, 'Dress Pea', 49.99, 'womens-dresses', 'https://cdn.dummyjson.com/product-images/womens-dresses/dress-pea/thumbnail.webp'),
(181, 'Marni Red & Black Suit', 179.99, 'womens-dresses', 'https://cdn.dummyjson.com/product-images/womens-dresses/marni-red-&-black-suit/thumbnail.webp'),
(182, 'Green Crystal Earring', 29.99, 'womens-jewellery', 'https://cdn.dummyjson.com/product-images/womens-jewellery/green-crystal-earring/thumbnail.webp'),
(183, 'Green Oval Earring', 24.99, 'womens-jewellery', 'https://cdn.dummyjson.com/product-images/womens-jewellery/green-oval-earring/thumbnail.webp'),
(184, 'Tropical Earring', 19.99, 'womens-jewellery', 'https://cdn.dummyjson.com/product-images/womens-jewellery/tropical-earring/thumbnail.webp'),
(185, 'Black & Brown Slipper', 19.99, 'womens-shoes', 'https://cdn.dummyjson.com/product-images/womens-shoes/black-&-brown-slipper/thumbnail.webp'),
(186, 'Calvin Klein Heel Shoes', 79.99, 'womens-shoes', 'https://cdn.dummyjson.com/product-images/womens-shoes/calvin-klein-heel-shoes/thumbnail.webp'),
(187, 'Golden Shoes Woman', 49.99, 'womens-shoes', 'https://cdn.dummyjson.com/product-images/womens-shoes/golden-shoes-woman/thumbnail.webp'),
(188, 'Pampi Shoes', 29.99, 'womens-shoes', 'https://cdn.dummyjson.com/product-images/womens-shoes/pampi-shoes/thumbnail.webp'),
(189, 'Red Shoes', 34.99, 'womens-shoes', 'https://cdn.dummyjson.com/product-images/womens-shoes/red-shoes/thumbnail.webp'),
(190, 'IWC Ingenieur Automatic Steel', 4999.99, 'womens-watches', 'https://cdn.dummyjson.com/product-images/womens-watches/iwc-ingenieur-automatic-steel/thumbnail.webp'),
(191, 'Rolex Cellini Moonphase', 15999.99, 'womens-watches', 'https://cdn.dummyjson.com/product-images/womens-watches/rolex-cellini-moonphase/thumbnail.webp'),
(192, 'Rolex Datejust Women', 10999.99, 'womens-watches', 'https://cdn.dummyjson.com/product-images/womens-watches/rolex-datejust-women/thumbnail.webp'),
(193, 'Watch Gold for Women', 799.99, 'womens-watches', 'https://cdn.dummyjson.com/product-images/womens-watches/watch-gold-for-women/thumbnail.webp'),
(194, 'Women\'s Wrist Watch', 129.99, 'womens-watches', 'https://cdn.dummyjson.com/product-images/womens-watches/women\'s-wrist-watch/thumbnail.webp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
