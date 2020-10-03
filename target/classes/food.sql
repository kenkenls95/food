-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 02, 2020 lúc 08:00 PM
-- Phiên bản máy phục vụ: 10.4.13-MariaDB
-- Phiên bản PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `food`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`category_id`, `name`, `short_name`, `is_active`) VALUES
(8, 'sữa chua', 'sữa chua', 1),
(9, 'thức uống', 'thức uống', 1),
(10, 'cafe', 'cafe', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `document`
--

CREATE TABLE `document` (
  `document_id` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `parent_id` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `document`
--

INSERT INTO `document` (`document_id`, `type`, `parent_id`, `path`, `is_active`) VALUES
(4, 2, '5', '/link/1600369483-50132361453_d6f9d41cb3_o.jpg', NULL),
(9, 1, '1', '/link/1600506024-hinh-anh-do-an-hinh-anh-mon-an-thuc-an-ngon-dep-viet-nam-the-gioi-1.jpg', NULL),
(10, 2, '1', '/link/1600506027-hinh-anh-do-an-hinh-anh-mon-an-thuc-an-ngon-dep-viet-nam-the-gioi-1.jpg', NULL),
(11, 1, '2', '/link/1600506186-hinh-anh-do-an-hinh-anh-mon-an-thuc-an-ngon-dep-viet-nam-the-gioi-1.jpg', NULL),
(12, 2, '2', '/link/1600506192-hinh-anh-do-an-hinh-anh-mon-an-thuc-an-ngon-dep-viet-nam-the-gioi-1.jpg', NULL),
(13, 1, '3', '/link/1600507146-hinh-anh-do-an-hinh-anh-mon-an-thuc-an-ngon-dep-viet-nam-the-gioi-1.jpg', NULL),
(14, 2, '3', '/link/1600507150-hinh-anh-do-an-hinh-anh-mon-an-thuc-an-ngon-dep-viet-nam-the-gioi-1.jpg', NULL),
(15, 1, '4', '/link/1600507199-hinh-anh-do-an-hinh-anh-mon-an-thuc-an-ngon-dep-viet-nam-the-gioi-1.jpg', NULL),
(16, 2, '4', '/link/1600507203-hinh-anh-do-an-hinh-anh-mon-an-thuc-an-ngon-dep-viet-nam-the-gioi-1.jpg', NULL),
(17, 1, '5', '/link/1600507229-hinh-anh-do-an-hinh-anh-mon-an-thuc-an-ngon-dep-viet-nam-the-gioi-1.jpg', NULL),
(18, 2, '5', '/link/1600507231-hinh-anh-do-an-hinh-anh-mon-an-thuc-an-ngon-dep-viet-nam-the-gioi-1.jpg', NULL),
(19, 1, '6', '/link/1600507255-hinh-anh-do-an-hinh-anh-mon-an-thuc-an-ngon-dep-viet-nam-the-gioi-1.jpg', NULL),
(20, 2, '6', '/link/1600507262-hinh-anh-do-an-hinh-anh-mon-an-thuc-an-ngon-dep-viet-nam-the-gioi-1.jpg', NULL),
(21, 1, '7', '/link/1600507289-hinh-anh-do-an-hinh-anh-mon-an-thuc-an-ngon-dep-viet-nam-the-gioi-1.jpg', NULL),
(22, 2, '7', '/link/1600507292-hinh-anh-do-an-hinh-anh-mon-an-thuc-an-ngon-dep-viet-nam-the-gioi-1.jpg', NULL),
(23, 1, '8', '/link/1600507343-abcdef.jpg', NULL),
(24, 2, '8', '/link/1600507345-abcdef.jpg', NULL),
(25, 1, '9', '/link/1600507375-abcdef.jpg', NULL),
(26, 2, '9', '/link/1600507377-abcdef.jpg', NULL),
(27, 1, '10', '/link/1600507446-abcdef.jpg', NULL),
(28, 2, '10', '/link/1600507449-abcdef.jpg', NULL),
(29, 1, '11', '/link/1600507472-abcdef.jpg', NULL),
(30, 2, '11', '/link/1600507474-abcdef.jpg', NULL),
(31, 1, '12', '/link/1600507508-abcdef.jpg', NULL),
(32, 2, '12', '/link/1600507510-abcdef.jpg', NULL),
(33, 1, '13', '/link/1600507531-abcdef.jpg', NULL),
(34, 2, '13', '/link/1600507533-abcdef.jpg', NULL),
(35, 1, '14', '/link/1600507582-abcdef.jpg', NULL),
(36, 2, '14', '/link/1600507584-abcdef.jpg', NULL),
(37, 1, '15', '/link/1600507604-abcdef.jpg', NULL),
(38, 2, '15', '/link/1600507606-abcdef.jpg', NULL),
(39, 1, '16', '/link/1600507626-abcdef.jpg', NULL),
(40, 2, '16', '/link/1600507628-abcdef.jpg', NULL),
(41, 1, '17', '/link/1600507653-abcdef.jpg', NULL),
(42, 2, '17', '/link/1600507655-abcdef.jpg', NULL),
(43, 1, '18', '/link/1600507678-abcdef.jpg', NULL),
(44, 2, '18', '/link/1600507680-abcdef.jpg', NULL),
(45, 1, '19', '/link/1600507697-abcdef.jpg', NULL),
(46, 2, '19', '/link/1600507699-abcdef.jpg', NULL),
(47, 1, '20', '/link/1600508265-abcdef.jpg', NULL),
(48, 2, '20', '/link/1600508268-abcdef.jpg', NULL),
(49, 1, '21', '/link/1600508296-abcdef.jpg', NULL),
(50, 2, '21', '/link/1600508297-abcdef.jpg', NULL),
(51, 1, '22', '/link/1600508409-abcdef.jpg', NULL),
(52, 2, '22', '/link/1600508411-abcdef.jpg', NULL),
(53, 1, '23', '/link/1600508427-abcdef.jpg', NULL),
(54, 2, '23', '/link/1600508429-abcdef.jpg', NULL),
(55, 1, '24', '/link/1600508444-abcdef.jpg', NULL),
(56, 2, '24', '/link/1600508446-abcdef.jpg', NULL),
(57, 1, '25', '/link/1600508461-abcdef.jpg', NULL),
(58, 2, '25', '/link/1600508463-abcdef.jpg', NULL),
(59, 1, '26', '/link/1600508502-abcdef.jpg', NULL),
(60, 2, '26', '/link/1600508504-abcdef.jpg', NULL),
(61, 1, '27', '/link/1600508531-abcdef.jpg', NULL),
(62, 2, '27', '/link/1600508533-abcdef.jpg', NULL),
(63, 1, '28', '/link/1600508568-abcdef.jpg', NULL),
(64, 2, '28', '/link/1600508570-abcdef.jpg', NULL),
(65, 1, '29', '/link/1600508754-abcdef.jpg', NULL),
(66, 2, '29', '/link/1600508757-abcdef.jpg', NULL),
(67, 1, '30', '/link/1600508817-abcdef.jpg', NULL),
(68, 2, '30', '/link/1600508820-abcdef.jpg', NULL),
(69, 1, '31', '/link/1600508843-abcdef.jpg', NULL),
(70, 2, '31', '/link/1600508845-abcdef.jpg', NULL),
(71, 1, '32', '/link/1600508897-abcdef.jpg', NULL),
(72, 2, '32', '/link/1600508898-abcdef.jpg', NULL),
(73, 1, '33', '/link/1600509023-abcdef.jpg', NULL),
(74, 2, '33', '/link/1600509025-abcdef.jpg', NULL),
(75, 1, '34', '/link/1600509099-abcdef.jpg', NULL),
(76, 2, '34', '/link/1600509101-abcdef.jpg', NULL),
(77, 1, '35', '/link/1600509125-abcdef.jpg', NULL),
(78, 2, '35', '/link/1600509128-abcdef.jpg', NULL),
(79, 1, '36', '/link/1600509220-abcdef.jpg', NULL),
(80, 2, '36', '/link/1600509226-abcdef.jpg', NULL),
(81, 1, '37', '/link/1600509248-abcdef.jpg', NULL),
(82, 2, '37', '/link/1600509250-abcdef.jpg', NULL),
(83, 1, '38', '/link/1600509648-abcdef.jpg', NULL),
(84, 2, '38', '/link/1600509650-abcdef.jpg', NULL),
(85, 1, '39', '/link/1600509781-abcdef.jpg', NULL),
(86, 2, '39', '/link/1600509782-abcdef.jpg', NULL),
(87, 1, '40', '/link/1600509803-abcdef.jpg', NULL),
(88, 2, '40', '/link/1600509805-abcdef.jpg', NULL),
(89, 1, '41', '/link/1600509823-abcdef.jpg', NULL),
(90, 2, '41', '/link/1600509824-abcdef.jpg', NULL),
(91, 1, '42', '/link/1600509843-abcdef.jpg', NULL),
(92, 2, '42', '/link/1600509845-abcdef.jpg', NULL),
(93, 1, '43', '/link/1600509873-abcdef.jpg', NULL),
(94, 2, '43', '/link/1600509875-abcdef.jpg', NULL),
(95, 1, '44', '/link/1600510313-abcdef.jpg', NULL),
(96, 2, '44', '/link/1600510314-abcdef.jpg', NULL),
(97, 1, '45', '/link/1600510835-abcdef.jpg', NULL),
(98, 2, '45', '/link/1600510837-abcdef.jpg', NULL),
(99, 1, '46', '/link/1600510856-abcdef.jpg', NULL),
(100, 2, '46', '/link/1600510858-abcdef.jpg', NULL),
(101, 1, '47', '/link/1600510913-abcdef.jpg', NULL),
(102, 2, '47', '/link/1600510918-abcdef.jpg', NULL),
(103, 1, '48', '/link/1600511216-abcdef.jpg', NULL),
(104, 2, '48', '/link/1600511218-abcdef.jpg', NULL),
(105, 1, '49', '/link/1600511238-abcdef.jpg', NULL),
(106, 2, '49', '/link/1600511240-abcdef.jpg', NULL),
(107, 1, '50', '/link/1600511257-abcdef.jpg', NULL),
(108, 2, '50', '/link/1600511259-abcdef.jpg', NULL),
(109, 1, '51', '/link/1600511279-abcdef.jpg', NULL),
(110, 2, '51', '/link/1600511282-abcdef.jpg', NULL),
(111, 1, '52', '/link/1600511327-abcdef.jpg', NULL),
(112, 2, '52', '/link/1600511330-abcdef.jpg', NULL),
(113, 1, '53', '/link/1600511349-abcdef.jpg', NULL),
(114, 2, '53', '/link/1600511351-abcdef.jpg', NULL),
(115, 1, '54', '/link/1600511370-abcdef.jpg', NULL),
(116, 2, '54', '/link/1600511373-abcdef.jpg', NULL),
(117, 1, '55', '/link/1600511391-abcdef.jpg', NULL),
(118, 2, '55', '/link/1600511393-abcdef.jpg', NULL),
(119, 1, '56', '/link/1600511431-abcdef.jpg', NULL),
(120, 2, '56', '/link/1600511433-abcdef.jpg', NULL),
(121, 1, '57', '/link/1600511449-abcdef.jpg', NULL),
(122, 2, '57', '/link/1600511451-abcdef.jpg', NULL),
(123, 1, '58', '/link/1600511473-abcdef.jpg', NULL),
(124, 2, '58', '/link/1600511475-abcdef.jpg', NULL),
(125, 1, '59', '/link/1600511610-abcdef.jpg', NULL),
(126, 2, '59', '/link/1600511612-abcdef.jpg', NULL),
(127, 1, '60', '/link/1600511637-abcdef.jpg', NULL),
(128, 2, '60', '/link/1600511639-abcdef.jpg', NULL),
(129, 1, '61', '/link/1600511703-abcdef.jpg', NULL),
(130, 2, '61', '/link/1600511705-abcdef.jpg', NULL),
(131, 1, '62', '/link/1600511769-abcdef.jpg', NULL),
(132, 2, '62', '/link/1600511771-abcdef.jpg', NULL),
(133, 1, '63', '/link/1600511812-abcdef.jpg', NULL),
(134, 2, '63', '/link/1600511815-abcdef.jpg', NULL),
(135, 1, '64', '/link/1600511834-abcdef.jpg', NULL),
(136, 2, '64', '/link/1600511836-abcdef.jpg', NULL),
(137, 1, '65', '/link/1600511884-abcdef.jpg', NULL),
(138, 2, '65', '/link/1600511886-abcdef.jpg', NULL),
(139, 1, '66', '/link/1600511906-abcdef.jpg', NULL),
(140, 2, '66', '/link/1600511910-abcdef.jpg', NULL),
(141, 1, '67', '/link/1600511948-abcdef.jpg', NULL),
(142, 2, '67', '/link/1600511950-abcdef.jpg', NULL),
(143, 1, '68', '/link/1600512373-abcdef.jpg', NULL),
(144, 2, '68', '/link/1600512376-abcdef.jpg', NULL),
(145, 1, '69', '/link/1600512391-abcdef.jpg', NULL),
(146, 2, '69', '/link/1600512393-abcdef.jpg', NULL),
(147, 1, '70', '/link/1600512422-abcdef.jpg', NULL),
(148, 2, '70', '/link/1600512425-abcdef.jpg', NULL),
(149, 1, '71', '/link/1600512447-abcdef.jpg', NULL),
(150, 2, '71', '/link/1600512449-abcdef.jpg', NULL),
(151, 1, '72', '/link/1600512469-abcdef.jpg', NULL),
(152, 2, '72', '/link/1600512471-abcdef.jpg', NULL),
(153, 1, '73', '/link/1600512554-abcdef.jpg', NULL),
(154, 2, '73', '/link/1600512557-abcdef.jpg', NULL),
(155, 1, '74', '/link/1600512596-abcdef.jpg', NULL),
(156, 2, '74', '/link/1600512598-abcdef.jpg', NULL),
(157, 1, '75', '/link/1600512633-abcdef.jpg', NULL),
(158, 2, '75', '/link/1600512635-abcdef.jpg', NULL),
(159, 1, '76', '/link/1600512672-abcdef.jpg', NULL),
(160, 2, '76', '/link/1600512676-abcdef.jpg', NULL),
(161, 1, '77', '/link/1600512693-abcdef.jpg', NULL),
(162, 2, '77', '/link/1600512696-abcdef.jpg', NULL),
(163, 1, '78', '/link/1600512719-abcdef.jpg', NULL),
(164, 2, '78', '/link/1600512721-abcdef.jpg', NULL),
(165, 1, '79', '/link/1600512739-abcdef.jpg', NULL),
(166, 2, '79', '/link/1600512742-abcdef.jpg', NULL),
(167, 1, '80', '/link/1600512759-abcdef.jpg', NULL),
(168, 2, '80', '/link/1600512761-abcdef.jpg', NULL),
(169, 1, '81', '/link/1600512777-abcdef.jpg', NULL),
(170, 2, '81', '/link/1600512779-abcdef.jpg', NULL),
(171, 1, '82', '/link/1600513196-abcdef.jpg', NULL),
(172, 2, '82', '/link/1600513199-abcdef.jpg', NULL),
(173, 1, '83', '/link/1600513217-abcdef.jpg', NULL),
(174, 2, '83', '/link/1600513220-abcdef.jpg', NULL),
(175, 1, '84', '/link/1600513236-abcdef.jpg', NULL),
(176, 2, '84', '/link/1600513238-abcdef.jpg', NULL),
(177, 1, '85', '/link/1600513253-abcdef.jpg', NULL),
(178, 2, '85', '/link/1600513255-abcdef.jpg', NULL),
(179, 1, '86', '/link/1600513270-abcdef.jpg', NULL),
(180, 2, '86', '/link/1600513273-abcdef.jpg', NULL),
(181, 1, '87', '/link/1600513297-abcdef.jpg', NULL),
(182, 2, '87', '/link/1600513299-abcdef.jpg', NULL),
(183, 1, '88', '/link/1600513312-abcdef.jpg', NULL),
(184, 2, '88', '/link/1600513314-abcdef.jpg', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_bill`
--

CREATE TABLE `order_bill` (
  `order_id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_bill`
--

INSERT INTO `order_bill` (`order_id`, `name`, `author`, `type`, `date`) VALUES
(1, 'Order No.1600578115', NULL, 2, '2020-09-01'),
(2, 'Order No.1600578124', NULL, 2, NULL),
(3, 'Order No.1600578127', NULL, 2, NULL),
(4, 'Order No.1600579622', NULL, 2, NULL),
(5, 'Order No.1601060309', NULL, 2, '2020-09-26'),
(6, 'Order No.1601060321', NULL, 2, '2020-09-26'),
(7, 'Order No.1601652958', NULL, 2, '2020-10-02'),
(8, 'Order No.1601652965', NULL, 2, '2020-10-02'),
(9, 'Order No.1601652968', NULL, 2, '2020-10-02'),
(10, 'Order No.1601653079', NULL, 2, '2020-10-02'),
(11, 'Order No.1601653089', NULL, 2, '2020-10-02'),
(12, 'Order No.1601653758', NULL, 2, '2020-10-02'),
(13, 'Order No.1601653768', NULL, 2, '2020-10-02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`order_detail_id`, `order_id`, `food_id`, `quantity`, `price`) VALUES
(1, 1, 3, 4, 20000),
(2, 1, 4, 1, 20000),
(3, 5, 3, 1, 20000),
(4, 5, 4, 1, 20000),
(5, 7, 3, 1, 20000),
(6, 7, 4, 1, 20000),
(7, 10, 7, 1, 25000),
(8, 10, 8, 3, 30000),
(9, 12, 4, 1, 20000),
(10, 12, 5, 1, 20000),
(11, 13, 5, 1, 20000),
(12, 13, 6, 1, 25000);

-- --------------------------------------------------------

--
-- Cấu trúc đóng vai cho view `order_product`
-- (See below for the actual view)
--
CREATE TABLE `order_product` (
`order_detail_id` int(11)
,`order_id` int(11)
,`food_id` int(11)
,`quantity` int(11)
,`price` double
,`name` varchar(200)
,`path` varchar(200)
);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `extra` double DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `payment`
--

INSERT INTO `payment` (`payment_id`, `order_id`, `price`, `extra`, `status`) VALUES
(1, 1, 100000, NULL, 1),
(2, 5, 40000, NULL, NULL),
(3, 7, 40000, NULL, 1),
(4, 10, 115000, NULL, NULL),
(5, 12, 40000, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc đóng vai cho view `payment_detail`
-- (See below for the actual view)
--
CREATE TABLE `payment_detail` (
`payment_id` int(11)
,`order_id` int(11)
,`name` varchar(200)
,`price` double
,`extra` double
,`status` varchar(15)
,`author` varchar(200)
,`type` varchar(8)
);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `sale_off` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `name`, `description`, `price`, `sale_off`, `is_active`) VALUES
(3, 'Cafe đen nóng/đá', 'Cafe đen nóng/đá', 20000, NULL, 1),
(4, 'Cafe nâu nóng/đá', 'Cafe nâu nóng/đá', 20000, NULL, 1),
(5, 'Cafe phin nóng/đá', 'Cafe phin nóng/đá', 20000, NULL, 1),
(6, 'Cafe bạc xỉu', 'Cafe bạc xỉu', 25000, NULL, 1),
(7, 'Cafe cốt dừa', 'Cafe cốt dừa', 25000, NULL, 1),
(8, 'Cafe (vị cà phê)', 'Cafe (vị cà phê)', 30000, NULL, 1),
(9, 'Hazelnut (vị hạt dẻ)', 'Hazelnut (vị hạt dẻ)', 30000, NULL, 1),
(10, 'Caramel (vị caramen)', 'Caramel (vị caramen)', 30000, NULL, 1),
(11, 'Chocolate (vị socola)', 'Chocolate (vị socola)', 30000, NULL, 1),
(12, 'Cookies (bánh cookies)', 'Cookies (bánh cookies)', 30000, NULL, 1),
(13, 'Vanila (vị vani)', 'Vanila (vị vani)', 30000, NULL, 1),
(14, 'Orange & Aloe Vera (Cam & Nha đam)', 'Orange & Aloe Vera (Cam & Nha đam)', 30000, NULL, 1),
(15, 'Mango (xoài)', 'Mango (xoài)', 30000, NULL, 1),
(16, 'Blueberry (việt quất)', 'Blueberry (việt quất)', 30000, NULL, 1),
(17, 'Rapsberry (Phúc bồn tử)', 'Rapsberry (Phúc bồn tử)', 30000, NULL, 1),
(18, 'Strawberry (Dâu tây)', 'Strawberry (Dâu tây)', 30000, NULL, 1),
(19, 'Peach (Đào)', 'Peach (Đào)', 30000, NULL, 1),
(20, 'Orange & Aloe Vera (Cam & Nha đam)', 'Orange & Aloe Vera (Cam & Nha đam)', 35000, NULL, 1),
(21, 'Mango (xoài)', 'Mango (xoài)', 35000, NULL, 1),
(22, 'Blueberry (việt quất)', 'Blueberry (việt quất)', 35000, NULL, 1),
(23, 'Rapsberry (Phúc bồn tử)', 'Rapsberry (Phúc bồn tử)', 35000, NULL, 1),
(24, 'Strawberry (Dâu tây)', 'Strawberry (Dâu tây)', 35000, NULL, 1),
(25, 'Peach (Đào)', 'Peach (Đào)', 35000, NULL, 1),
(26, 'Matcha green tea (Trà xanh Matcha)', 'Matcha green tea (Trà xanh Matcha)', 35000, NULL, 1),
(27, 'Matcha cookies (Matcha bánh cookies)', 'Matcha cookies (Matcha bánh cookies)', 35000, NULL, 1),
(28, 'Orange & Aloe Vera (Cam & Nha đam)', 'Orange & Aloe Vera (Cam & Nha đam)', 35000, NULL, 1),
(29, 'Mango cookies (Xoài)', 'mango cookies (Xoài)', 35000, NULL, 1),
(30, 'Blueberry cookies (Việt quất)', 'Blueberry cookies (Việt quất)', 35000, NULL, 1),
(31, 'Rapsberry cookies (Phúc bồn tử)', 'Rapsberry cookies (Phúc bồn tử)', 35000, NULL, 1),
(32, 'Peach cookies (Đào)', 'Peach cookies (Đào)', 35000, NULL, 1),
(33, 'Strawberry cookies (Dâu tây)', 'Strawberry cookies (Dâu tây)', 35000, NULL, 1),
(34, 'Sữa chua đánh đá', 'Sữa chua đánh đá', 20000, NULL, 1),
(35, 'Sữa chua đánh đá Cafe', 'Sữa chua đánh đá Cafe', 25000, NULL, 1),
(36, 'Sữa chua đánh đá Bạc hà', 'Sữa chua đánh đá Bạc hà', 25000, NULL, 1),
(37, 'Sữa chua đánh đá Cacao', 'Sữa chua đánh đá Cacao', 25000, NULL, 1),
(38, 'Sữa chua đánh đá Cam & Nha đam', 'Sữa chua đánh đá Cam & Nha đam', 25000, NULL, 1),
(39, 'Sữa chua đánh đá Xoài', 'Sữa chua đánh đá Xoài', 25000, NULL, 1),
(40, 'Sữa chua đánh đá Việt quất', 'Sữa chua đánh đá Việt quất', 25000, NULL, 1),
(41, 'Sữa chua đánh đá Phúc bồn tử', 'Sữa chua đánh đá Phúc bồn tử', 25000, NULL, 1),
(42, 'Sữa chua đánh đá Dâu tây', 'Sữa chua đánh đá Dâu tây', 25000, NULL, 1),
(43, 'Nước Chanh tươi', 'Nước Chanh tươi', 20000, NULL, 1),
(44, 'Nước chanh leo', 'Nước chanh leo', 30000, NULL, 1),
(45, 'Nước cam nguyên chất', 'Nước cam nguyên chất', 45000, NULL, 1),
(46, 'Nước ép ổi', 'Nước ép ổi', 35000, NULL, 1),
(47, 'Nước ép dưa hấu', 'Nước ép dưa hấu', 30000, NULL, 1),
(48, 'Nước ép dứa', 'Nước ép dứa', 35000, NULL, 1),
(49, 'Nước ép cà rốt', 'Nước ép cà rốt', 30000, NULL, 1),
(50, 'Nước ép táo', 'Nước ép táo', 35000, NULL, 1),
(51, 'Nước ép cóc', 'Nước ép cóc', 30000, NULL, 1),
(52, 'Sinh tố xoài', 'Sinh tố xoài', 40000, NULL, 1),
(53, 'Sinh tố bơ', 'Sinh tố bơ', 40000, NULL, 1),
(54, 'Sinh tố chanh leo', 'Sinh tố chanh leo', 35000, NULL, 1),
(55, 'Sinh tố dưa hấu', 'Sinh tố dưa hấu', 35000, NULL, 1),
(56, 'Sinh tố cà rốt', 'Sinh tố cà rốt', 30000, NULL, 1),
(57, 'Sinh tố mãng cầu', 'Sinh tố mãng cầu', 40000, NULL, 1),
(58, 'Sinh tố bơ - Mãng cầu', 'Sinh tố bơ - Mãng cầu', 40000, NULL, 1),
(59, 'Trà Thanh đào', 'Trà Thanh đào', 30000, NULL, 1),
(60, 'Trà Thạch hồng', 'Trà Thạch hồng', 35000, NULL, 1),
(61, 'Trà đào sả', 'Trà đào sả', 30000, NULL, 1),
(62, 'Trà đào, cam, sả', 'Trà đào, cam, sả', 35000, NULL, 1),
(63, 'Trà thạch đào', 'Trà thạch đào', 35000, NULL, 1),
(64, 'Trà vải, dưa hấu', 'Trà vải, dưa hấu', 35000, NULL, 1),
(65, 'Dilmah dâu nóng/đá', 'Dilmah dâu nóng/đá', 20000, NULL, 1),
(66, 'Dilmah Đào nóng/đá', 'Dilmah Đào nóng/đá', 20000, NULL, 1),
(67, 'Dilmah Bạc hà nóng/đá', 'Dilmah Bạc hà nóng/đá', 20000, NULL, 1),
(68, 'Lipton nóng/đá', 'Lipton nóng/đá', 20000, NULL, 1),
(69, 'Trà mạn', 'Trà mạn', 25000, NULL, 1),
(70, 'Passion mojito (Chanh leo)', 'Passion mojito (Chanh leo)', 35000, NULL, 1),
(71, 'Blueberry mojito (việt quất)', 'Blueberry mojito (việt quất)', 35000, NULL, 1),
(72, 'Rapsberry mojito (Phúc bồn tử)', 'Rapsberry mojito (Phúc bồn tử)', 35000, NULL, 1),
(73, 'Strawberry mojjito (Dâu tây)', 'Strawberry mojjito (Dâu tây)', 35000, NULL, 1),
(74, 'Blue Ocean mojito (Vor cam chanh)', 'Blue Ocean mojito (Vor cam chanh)', 35000, NULL, 1),
(75, 'Special mojito', 'Special mojito', 35000, NULL, 1),
(76, 'Matcha kem cheese', 'Matcha kem cheese', 30000, NULL, 1),
(77, 'Hồng trà sữa', 'Hồng trà sữa', 30000, NULL, 1),
(78, 'Hồng trà Việt quất', 'Hồng trà Việt quất', 30000, NULL, 1),
(79, 'Hồng trà Phúc bồn tử', 'Hồng trà Phúc bồn tử', 30000, NULL, 1),
(80, 'Hồng trà Socola', 'Hồng trà Socola', 30000, NULL, 1),
(81, 'Hồng trà Dâu tây', 'Hồng trà Dâu tây', 30000, NULL, 1),
(82, 'Trà sữa socola', 'Trà sữa socola', 30000, NULL, 1),
(83, 'Trà sữa Hạt dẻ', 'Trà sữa Hạt dẻ', 30000, NULL, 1),
(84, 'Trà sữa Phúc bồn tử', 'Trà sữa Phúc bồn tử', 30000, NULL, 1),
(85, 'Trà sữa Dâu tây', 'Trà sữa Dâu tây', 30000, NULL, 1),
(86, 'Trà sữa Bạc hà', 'Trà sữa Bạc hà', 30000, NULL, 1),
(87, 'Trà sữa Việt quất', 'Trà sữa Việt quất', 30000, NULL, 1),
(88, 'Trà sữa Đào', 'Trà sữa Đào', 30000, NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_tag`
--

CREATE TABLE `product_tag` (
  `product_Id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_tag`
--

INSERT INTO `product_tag` (`product_Id`, `category_id`) VALUES
(3, 2),
(4, 2),
(5, 3),
(5, 4),
(3, 9),
(3, 10),
(4, 9),
(4, 10),
(5, 9),
(5, 10),
(6, 9),
(6, 10),
(7, 9),
(7, 10),
(8, 9),
(8, 10),
(9, 9),
(9, 10),
(10, 9),
(10, 10),
(11, 9),
(11, 10),
(12, 9),
(12, 10),
(13, 9),
(13, 10),
(14, 9),
(15, 9),
(16, 9),
(17, 9),
(18, 9),
(19, 9),
(20, 8),
(21, 8),
(22, 8),
(23, 8),
(24, 8),
(25, 8),
(26, 9),
(27, 9),
(28, 9),
(29, 9),
(30, 9),
(31, 9),
(32, 9),
(33, 9),
(34, 8),
(35, 8),
(36, 8),
(37, 8),
(38, 8),
(39, 8),
(40, 8),
(41, 8),
(42, 8),
(43, 9),
(44, 9),
(45, 9),
(46, 9),
(47, 9),
(48, 9),
(49, 9),
(50, 9),
(51, 9),
(52, 9),
(53, 9),
(54, 9),
(55, 9),
(56, 9),
(57, 9),
(58, 9),
(59, 9),
(60, 9),
(61, 9),
(62, 9),
(63, 9),
(64, 9),
(65, 9),
(66, 9),
(67, 9),
(68, 9),
(69, 9),
(70, 9),
(71, 9),
(72, 9),
(73, 9),
(74, 9),
(75, 9),
(76, 9),
(77, 9),
(78, 9),
(79, 9),
(80, 9),
(81, 9),
(82, 9),
(83, 9),
(84, 9),
(85, 9),
(86, 9),
(87, 9),
(88, 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`role_id`, `role_name`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_hash` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `password_hash`) VALUES
(3, 'admin', '$2a$10$Gqi.h.OvoDizW/FPGgF5aeJ7IxgCSk7YcbrjDKtu4hvy0Oyq7qt1a'),
(4, 'abc', '$2a$10$s5G4TRtEr01rzegQ4Vt3M.HbFnwHgnxWPcx8YqgvEWGP1IkCEdPs.'),
(5, 'admin1', '$2a$10$M6GmBgUTw9.ex/zIdLvc3u6BpM3k.52d8nicw8d4eAFiFswR6JKwe'),
(6, 'admin123', '$2a$10$HLJV0O3qhyUCQqqUETmrG.ESEqssCVmsY2YGHAgql3DBec1J87BRa');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_role`
--

CREATE TABLE `user_role` (
  `userrole_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_role`
--

INSERT INTO `user_role` (`userrole_id`, `user_id`, `role_id`, `status`) VALUES
(2, 3, 1, 1),
(3, 4, 2, 1),
(4, 5, 2, 1),
(5, 6, 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc cho view `order_product`
--
DROP TABLE IF EXISTS `order_product`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `order_product`  AS  select `od`.`order_detail_id` AS `order_detail_id`,`od`.`order_id` AS `order_id`,`od`.`food_id` AS `food_id`,`od`.`quantity` AS `quantity`,`od`.`price` AS `price`,`p`.`name` AS `name`,`d`.`path` AS `path` from ((`order_detail` `od` join `product` `p` on(`od`.`food_id` = `p`.`product_id`)) join `document` `d` on(`d`.`parent_id` = `p`.`product_id`)) where `p`.`is_active` = 1 and `d`.`type` = 1 ;

-- --------------------------------------------------------

--
-- Cấu trúc cho view `payment_detail`
--
DROP TABLE IF EXISTS `payment_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `payment_detail`  AS  select `p`.`payment_id` AS `payment_id`,`p`.`order_id` AS `order_id`,`b`.`name` AS `name`,`p`.`price` AS `price`,`p`.`extra` AS `extra`,case when `p`.`status` is null then 'Chưa Thanh Toán' when `p`.`status` = 1 then 'Đã Thanh Toán' when `p`.`status` = 2 then 'Nợ Xấu' end AS `status`,`b`.`author` AS `author`,case when `b`.`type` = 1 then 'Shipping' when `b`.`type` = 2 then 'Table' end AS `type` from (`payment` `p` join `order_bill` `b` on(`b`.`order_id` = `p`.`order_id`)) ;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`document_id`);

--
-- Chỉ mục cho bảng `order_bill`
--
ALTER TABLE `order_bill`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_detail_id`);

--
-- Chỉ mục cho bảng `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`userrole_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `document`
--
ALTER TABLE `document`
  MODIFY `document_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT cho bảng `order_bill`
--
ALTER TABLE `order_bill`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `user_role`
--
ALTER TABLE `user_role`
  MODIFY `userrole_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
