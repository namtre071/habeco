-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2021 at 01:09 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `habeco`
--
CREATE DATABASE IF NOT EXISTS `habeco` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `habeco`;

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `summary` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `id_cate` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `name`, `image`, `summary`, `content`, `create_time`, `id_cate`, `id_user`) VALUES
(2, 'CÔNG BỐ KHÁCH HÀNG MAY MẮN TRÚNG THƯỞNG ĐỢT 1 CHƯƠNG TRÌNH KHUYẾN MẠI CỦA BIA HÀ NỘI NHÃN XANH HÈ 2021', 'https://habeco.com.vn/data/ca7c4f94-b205-4e22-b8a5-5ad9f8d4d21b/userfiles/images/%E1%BA%A3nh(1).png', 'Tiếp nối thành công của Đợt quay thưởng lần 1 chương trình khuyến mại danh cho Bia Hà Nội vàng, ngày 23/07/2021 vừa qua, Bia Hà Nội cũng đã tổ chức quay thưởng Đợt 1 chương trình khuyến mại “Tìm thẻ cào trong mỗi thùng bia” dành riêng cho Bia Hà Nội nhãn ', 'Đợt quay thưởng thứ 2 của Chương trình khuyến mại sẽ diễn ra vào ngày 08/09/2021, Bia Hà Nội nhãn xanh hy vọng tiếp tục lan tỏa những giá trị giải thưởng thiết thực đến người tiêu dùng, cũng như gửi gắm sự may mắn đến đông đảo khách hàng qua sản phẩm Bia Hà Nội nhãn xanh.', '2021-08-28 16:37:28', 0, NULL),
(3, 'BIA HÀ NỘI CÔNG BỐ DANH SÁCH KHÁCH HÀNG MAY MẮN TRÚNG THƯỞNG ĐỢT 1 CHƯƠNG TRÌNH KHUYẾN MẠI “BỪNG SẮC HÈ CÙNG BIA HÀ NỘI”', 'https://habeco.com.vn/data/ca7c4f94-b205-4e22-b8a5-5ad9f8d4d21b/userfiles/images/%E1%BA%A3nh%20%C4%91%E1%BB%A3t%201.jpg', 'Chương trình khuyến mại “Bừng sắc Hè cùng Bia Hà Nội” năm 2021 đã khởi đầu thật rực rỡ với sự tham gia đông đảo của khách hàng – những người dành tình yêu cho Bia Hà Nội. Hôm nay, ngày 12/07/2021, Bia Hà Nội đã chính thức tổ chức quay thưởng đợt 1 và tìm ', 'Giai đoạn 1 của Chương trình khuyến mại đã diễn ra hết sức sôi động và thành công. Với mong muốn gia tăng thêm nhiều phần quà cũng như trải nghiệm thú vị của Quý Khách Hàng khi sử dụng sản phẩm trong hè này, thời hạn diễn ra chương trình “Bừng sức hè cùng Bia Hà Nội” dành cho Bia Hà Nội vàng sẽ được gia hạn thêm đến hết ngày 15/09/2021 với hàng trăm nghìn giải tư – mã nạp thẻ điện thoại được bổ sung đang chờ đón, mang thêm niềm vui, sự bất ngờ khi thưởng thức Bia Hà Nội.', '2021-08-28 16:37:28', 0, NULL),
(4, 'BIA HÀ NỘI CÔNG BỐ DANH SÁCH KHÁCH HÀNG MAY MẮN TRÚNG THƯỞNG ĐỢT 1 CHƯƠNG TRÌNH KHUYẾN MẠI “BỪNG SẮC HÈ CÙNG BIA HÀ NỘI”', 'https://habeco.com.vn/data/ca7c4f94-b205-4e22-b8a5-5ad9f8d4d21b/userfiles/images/%E1%BA%A3nh%20%C4%91%E1%BB%A3t%201.jpg', 'Chương trình khuyến mại “Bừng sắc Hè cùng Bia Hà Nội” năm 2021 đã khởi đầu thật rực rỡ với sự tham gia đông đảo của khách hàng – những người dành tình yêu cho Bia Hà Nội. Hôm nay, ngày 12/07/2021, Bia Hà Nội đã chính thức tổ chức quay thưởng đợt 1 và tìm ', 'Giai đoạn 1 của Chương trình khuyến mại đã diễn ra hết sức sôi động và thành công. Với mong muốn gia tăng thêm nhiều phần quà cũng như trải nghiệm thú vị của Quý Khách Hàng khi sử dụng sản phẩm trong hè này, thời hạn diễn ra chương trình “Bừng sức hè cùng Bia Hà Nội” dành cho Bia Hà Nội vàng sẽ được gia hạn thêm đến hết ngày 15/09/2021 với hàng trăm nghìn giải tư – mã nạp thẻ điện thoại được bổ sung đang chờ đón, mang thêm niềm vui, sự bất ngờ khi thưởng thức Bia Hà Nội.', '2021-08-28 16:37:28', 0, NULL),
(5, 'BIA HÀ NỘI CÔNG BỐ DANH SÁCH KHÁCH HÀNG MAY MẮN TRÚNG THƯỞNG ĐỢT 1 CHƯƠNG TRÌNH KHUYẾN MẠI “BỪNG SẮC HÈ CÙNG BIA HÀ NỘI”', 'https://habeco.com.vn/data/ca7c4f94-b205-4e22-b8a5-5ad9f8d4d21b/userfiles/images/%E1%BA%A3nh%20%C4%91%E1%BB%A3t%201.jpg', 'Chương trình khuyến mại “Bừng sắc Hè cùng Bia Hà Nội” năm 2021 đã khởi đầu thật rực rỡ với sự tham gia đông đảo của khách hàng – những người dành tình yêu cho Bia Hà Nội. Hôm nay, ngày 12/07/2021, Bia Hà Nội đã chính thức tổ chức quay thưởng đợt 1 và tìm ', 'Giai đoạn 1 của Chương trình khuyến mại đã diễn ra hết sức sôi động và thành công. Với mong muốn gia tăng thêm nhiều phần quà cũng như trải nghiệm thú vị của Quý Khách Hàng khi sử dụng sản phẩm trong hè này, thời hạn diễn ra chương trình “Bừng sức hè cùng Bia Hà Nội” dành cho Bia Hà Nội vàng sẽ được gia hạn thêm đến hết ngày 15/09/2021 với hàng trăm nghìn giải tư – mã nạp thẻ điện thoại được bổ sung đang chờ đón, mang thêm niềm vui, sự bất ngờ khi thưởng thức Bia Hà Nội.', '2021-08-28 16:37:28', 0, NULL),
(6, 'BIA HÀ NỘI CÔNG BỐ DANH SÁCH KHÁCH HÀNG MAY MẮN TRÚNG THƯỞNG ĐỢT 1 CHƯƠNG TRÌNH KHUYẾN MẠI “BỪNG SẮC HÈ CÙNG BIA HÀ NỘI”', 'https://habeco.com.vn/data/ca7c4f94-b205-4e22-b8a5-5ad9f8d4d21b/userfiles/images/%E1%BA%A3nh%20%C4%91%E1%BB%A3t%201.jpg', 'Chương trình khuyến mại “Bừng sắc Hè cùng Bia Hà Nội” năm 2021 đã khởi đầu thật rực rỡ với sự tham gia đông đảo của khách hàng – những người dành tình yêu cho Bia Hà Nội. Hôm nay, ngày 12/07/2021, Bia Hà Nội đã chính thức tổ chức quay thưởng đợt 1 và tìm ', 'Giai đoạn 1 của Chương trình khuyến mại đã diễn ra hết sức sôi động và thành công. Với mong muốn gia tăng thêm nhiều phần quà cũng như trải nghiệm thú vị của Quý Khách Hàng khi sử dụng sản phẩm trong hè này, thời hạn diễn ra chương trình “Bừng sức hè cùng Bia Hà Nội” dành cho Bia Hà Nội vàng sẽ được gia hạn thêm đến hết ngày 15/09/2021 với hàng trăm nghìn giải tư – mã nạp thẻ điện thoại được bổ sung đang chờ đón, mang thêm niềm vui, sự bất ngờ khi thưởng thức Bia Hà Nội.', '2021-08-28 16:37:28', 0, NULL),
(7, 'CÔNG BỐ KHÁCH HÀNG MAY MẮN TRÚNG THƯỞNG ĐỢT 1 CHƯƠNG TRÌNH KHUYẾN MẠI CỦA BIA HÀ NỘI NHÃN XANH HÈ 2021', 'https://habeco.com.vn/data/ca7c4f94-b205-4e22-b8a5-5ad9f8d4d21b/userfiles/images/%E1%BA%A3nh(1).png', 'Tiếp nối thành công của Đợt quay thưởng lần 1 chương trình khuyến mại danh cho Bia Hà Nội vàng, ngày 23/07/2021 vừa qua, Bia Hà Nội cũng đã tổ chức quay thưởng Đợt 1 chương trình khuyến mại “Tìm thẻ cào trong mỗi thùng bia” dành riêng cho Bia Hà Nội nhãn ', 'Đợt quay thưởng thứ 2 của Chương trình khuyến mại sẽ diễn ra vào ngày 08/09/2021, Bia Hà Nội nhãn xanh hy vọng tiếp tục lan tỏa những giá trị giải thưởng thiết thực đến người tiêu dùng, cũng như gửi gắm sự may mắn đến đông đảo khách hàng qua sản phẩm Bia Hà Nội nhãn xanh.', '2021-08-28 16:37:28', 0, NULL),
(8, 'CÔNG BỐ KHÁCH HÀNG MAY MẮN TRÚNG THƯỞNG ĐỢT 1 CHƯƠNG TRÌNH KHUYẾN MẠI CỦA BIA HÀ NỘI NHÃN XANH HÈ 2021', 'https://habeco.com.vn/data/ca7c4f94-b205-4e22-b8a5-5ad9f8d4d21b/userfiles/images/%E1%BA%A3nh(1).png', 'Tiếp nối thành công của Đợt quay thưởng lần 1 chương trình khuyến mại danh cho Bia Hà Nội vàng, ngày 23/07/2021 vừa qua, Bia Hà Nội cũng đã tổ chức quay thưởng Đợt 1 chương trình khuyến mại “Tìm thẻ cào trong mỗi thùng bia” dành riêng cho Bia Hà Nội nhãn ', 'Đợt quay thưởng thứ 2 của Chương trình khuyến mại sẽ diễn ra vào ngày 08/09/2021, Bia Hà Nội nhãn xanh hy vọng tiếp tục lan tỏa những giá trị giải thưởng thiết thực đến người tiêu dùng, cũng như gửi gắm sự may mắn đến đông đảo khách hàng qua sản phẩm Bia Hà Nội nhãn xanh.', '2021-08-28 16:37:28', 0, NULL),
(9, 'CÔNG BỐ KHÁCH HÀNG MAY MẮN TRÚNG THƯỞNG ĐỢT 1 CHƯƠNG TRÌNH KHUYẾN MẠI CỦA BIA HÀ NỘI NHÃN XANH HÈ 2021', 'https://habeco.com.vn/data/ca7c4f94-b205-4e22-b8a5-5ad9f8d4d21b/userfiles/images/%E1%BA%A3nh(1).png', 'Tiếp nối thành công của Đợt quay thưởng lần 1 chương trình khuyến mại danh cho Bia Hà Nội vàng, ngày 23/07/2021 vừa qua, Bia Hà Nội cũng đã tổ chức quay thưởng Đợt 1 chương trình khuyến mại “Tìm thẻ cào trong mỗi thùng bia” dành riêng cho Bia Hà Nội nhãn ', 'Đợt quay thưởng thứ 2 của Chương trình khuyến mại sẽ diễn ra vào ngày 08/09/2021, Bia Hà Nội nhãn xanh hy vọng tiếp tục lan tỏa những giá trị giải thưởng thiết thực đến người tiêu dùng, cũng như gửi gắm sự may mắn đến đông đảo khách hàng qua sản phẩm Bia Hà Nội nhãn xanh.', '2021-08-28 16:37:28', 2, NULL),
(10, 'CÔNG BỐ KHÁCH HÀNG MAY MẮN TRÚNG THƯỞNG ĐỢT 1 CHƯƠNG TRÌNH KHUYẾN MẠI CỦA BIA HÀ NỘI NHÃN XANH HÈ 2021', 'https://habeco.com.vn/data/ca7c4f94-b205-4e22-b8a5-5ad9f8d4d21b/userfiles/images/%E1%BA%A3nh(1).png', 'Tiếp nối thành công của Đợt quay thưởng lần 1 chương trình khuyến mại danh cho Bia Hà Nội vàng, ngày 23/07/2021 vừa qua, Bia Hà Nội cũng đã tổ chức quay thưởng Đợt 1 chương trình khuyến mại “Tìm thẻ cào trong mỗi thùng bia” dành riêng cho Bia Hà Nội nhãn ', 'Đợt quay thưởng thứ 2 của Chương trình khuyến mại sẽ diễn ra vào ngày 08/09/2021, Bia Hà Nội nhãn xanh hy vọng tiếp tục lan tỏa những giá trị giải thưởng thiết thực đến người tiêu dùng, cũng như gửi gắm sự may mắn đến đông đảo khách hàng qua sản phẩm Bia Hà Nội nhãn xanh.', '2021-08-28 16:37:28', 0, NULL),
(11, 'CÔNG BỐ KHÁCH HÀNG MAY MẮN TRÚNG THƯỞNG ĐỢT 1 CHƯƠNG TRÌNH KHUYẾN MẠI CỦA BIA HÀ NỘI NHÃN XANH HÈ 2021', 'https://habeco.com.vn/data/ca7c4f94-b205-4e22-b8a5-5ad9f8d4d21b/userfiles/images/%E1%BA%A3nh(1).png', 'Tiếp nối thành công của Đợt quay thưởng lần 1 chương trình khuyến mại danh cho Bia Hà Nội vàng, ngày 23/07/2021 vừa qua, Bia Hà Nội cũng đã tổ chức quay thưởng Đợt 1 chương trình khuyến mại “Tìm thẻ cào trong mỗi thùng bia” dành riêng cho Bia Hà Nội nhãn ', 'Đợt quay thưởng thứ 2 của Chương trình khuyến mại sẽ diễn ra vào ngày 08/09/2021, Bia Hà Nội nhãn xanh hy vọng tiếp tục lan tỏa những giá trị giải thưởng thiết thực đến người tiêu dùng, cũng như gửi gắm sự may mắn đến đông đảo khách hàng qua sản phẩm Bia Hà Nội nhãn xanh.', '2021-08-28 16:37:28', 0, NULL),
(12, 'CÔNG BỐ KHÁCH HÀNG MAY MẮN TRÚNG THƯỞNG ĐỢT 1 CHƯƠNG TRÌNH KHUYẾN MẠI CỦA BIA HÀ NỘI NHÃN XANH HÈ 2021', 'https://habeco.com.vn/data/ca7c4f94-b205-4e22-b8a5-5ad9f8d4d21b/userfiles/images/%E1%BA%A3nh(1).png', 'Tiếp nối thành công của Đợt quay thưởng lần 1 chương trình khuyến mại danh cho Bia Hà Nội vàng, ngày 23/07/2021 vừa qua, Bia Hà Nội cũng đã tổ chức quay thưởng Đợt 1 chương trình khuyến mại “Tìm thẻ cào trong mỗi thùng bia” dành riêng cho Bia Hà Nội nhãn ', 'Đợt quay thưởng thứ 2 của Chương trình khuyến mại sẽ diễn ra vào ngày 08/09/2021, Bia Hà Nội nhãn xanh hy vọng tiếp tục lan tỏa những giá trị giải thưởng thiết thực đến người tiêu dùng, cũng như gửi gắm sự may mắn đến đông đảo khách hàng qua sản phẩm Bia Hà Nội nhãn xanh.', '2021-08-28 16:37:28', 0, NULL),
(13, 'CÔNG BỐ KHÁCH HÀNG MAY MẮN TRÚNG THƯỞNG ĐỢT 1 CHƯƠNG TRÌNH KHUYẾN MẠI CỦA BIA HÀ NỘI NHÃN XANH HÈ 2021', 'https://habeco.com.vn/data/ca7c4f94-b205-4e22-b8a5-5ad9f8d4d21b/userfiles/images/%E1%BA%A3nh(1).png', 'Tiếp nối thành công của Đợt quay thưởng lần 1 chương trình khuyến mại danh cho Bia Hà Nội vàng, ngày 23/07/2021 vừa qua, Bia Hà Nội cũng đã tổ chức quay thưởng Đợt 1 chương trình khuyến mại “Tìm thẻ cào trong mỗi thùng bia” dành riêng cho Bia Hà Nội nhãn ', 'Đợt quay thưởng thứ 2 của Chương trình khuyến mại sẽ diễn ra vào ngày 08/09/2021, Bia Hà Nội nhãn xanh hy vọng tiếp tục lan tỏa những giá trị giải thưởng thiết thực đến người tiêu dùng, cũng như gửi gắm sự may mắn đến đông đảo khách hàng qua sản phẩm Bia Hà Nội nhãn xanh.', '2021-08-28 16:37:28', 0, NULL),
(14, 'CÔNG BỐ KHÁCH HÀNG MAY MẮN TRÚNG THƯỞNG ĐỢT 1 CHƯƠNG TRÌNH KHUYẾN MẠI CỦA BIA HÀ NỘI NHÃN XANH HÈ 2021', 'https://habeco.com.vn/data/ca7c4f94-b205-4e22-b8a5-5ad9f8d4d21b/userfiles/images/%E1%BA%A3nh(1).png', 'Tiếp nối thành công của Đợt quay thưởng lần 1 chương trình khuyến mại danh cho Bia Hà Nội vàng, ngày 23/07/2021 vừa qua, Bia Hà Nội cũng đã tổ chức quay thưởng Đợt 1 chương trình khuyến mại “Tìm thẻ cào trong mỗi thùng bia” dành riêng cho Bia Hà Nội nhãn ', 'Đợt quay thưởng thứ 2 của Chương trình khuyến mại sẽ diễn ra vào ngày 08/09/2021, Bia Hà Nội nhãn xanh hy vọng tiếp tục lan tỏa những giá trị giải thưởng thiết thực đến người tiêu dùng, cũng như gửi gắm sự may mắn đến đông đảo khách hàng qua sản phẩm Bia Hà Nội nhãn xanh.', '2021-08-28 16:37:28', 0, NULL),
(15, 'CÔNG BỐ KHÁCH HÀNG MAY MẮN TRÚNG THƯỞNG ĐỢT 1 CHƯƠNG TRÌNH KHUYẾN MẠI CỦA BIA HÀ NỘI NHÃN XANH HÈ 2021', 'https://habeco.com.vn/data/ca7c4f94-b205-4e22-b8a5-5ad9f8d4d21b/userfiles/images/%E1%BA%A3nh(1).png', 'Tiếp nối thành công của Đợt quay thưởng lần 1 chương trình khuyến mại danh cho Bia Hà Nội vàng, ngày 23/07/2021 vừa qua, Bia Hà Nội cũng đã tổ chức quay thưởng Đợt 1 chương trình khuyến mại “Tìm thẻ cào trong mỗi thùng bia” dành riêng cho Bia Hà Nội nhãn ', 'Đợt quay thưởng thứ 2 của Chương trình khuyến mại sẽ diễn ra vào ngày 08/09/2021, Bia Hà Nội nhãn xanh hy vọng tiếp tục lan tỏa những giá trị giải thưởng thiết thực đến người tiêu dùng, cũng như gửi gắm sự may mắn đến đông đảo khách hàng qua sản phẩm Bia Hà Nội nhãn xanh.', '2021-08-28 16:37:28', 0, NULL),
(16, 'CÔNG BỐ KHÁCH HÀNG MAY MẮN TRÚNG THƯỞNG ĐỢT 1 CHƯƠNG TRÌNH KHUYẾN MẠI CỦA BIA HÀ NỘI NHÃN XANH HÈ 2021', 'https://habeco.com.vn/data/ca7c4f94-b205-4e22-b8a5-5ad9f8d4d21b/userfiles/images/%E1%BA%A3nh(1).png', 'Tiếp nối thành công của Đợt quay thưởng lần 1 chương trình khuyến mại danh cho Bia Hà Nội vàng, ngày 23/07/2021 vừa qua, Bia Hà Nội cũng đã tổ chức quay thưởng Đợt 1 chương trình khuyến mại “Tìm thẻ cào trong mỗi thùng bia” dành riêng cho Bia Hà Nội nhãn ', 'Đợt quay thưởng thứ 2 của Chương trình khuyến mại sẽ diễn ra vào ngày 08/09/2021, Bia Hà Nội nhãn xanh hy vọng tiếp tục lan tỏa những giá trị giải thưởng thiết thực đến người tiêu dùng, cũng như gửi gắm sự may mắn đến đông đảo khách hàng qua sản phẩm Bia Hà Nội nhãn xanh.', '2021-08-28 16:37:28', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_news`
--

CREATE TABLE `category_news` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category_pro`
--

CREATE TABLE `category_pro` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `background` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category_pro`
--

INSERT INTO `category_pro` (`id`, `name`, `background`) VALUES
(1, 'Cao Cấp', 'https://habeco.com.vn/product/caocap-bg.png'),
(2, 'Bán cao cấp', 'https://habeco.com.vn/product/cancaocap-bg.png'),
(3, 'bình dân', 'https://habeco.com.vn/product/binhdan-bg.png'),
(4, 'Bia hơi', 'https://png.pngtree.com/thumb_back/fw800/background/20191205/pngtree-beer-bubbles-background-yellow-summer-cool-image_324069.jpg'),
(5, 'Nước khoáng', 'https://habeco.com.vn/product/khac-bg.png');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slogan` text COLLATE utf8_unicode_ci NOT NULL,
  `capacity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `concentration` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `logo`, `slogan`, `capacity`, `quantity`, `concentration`, `content`, `category_id`) VALUES
(1, 'BIA LON TRÚC BẠCH', 'https://habeco.com.vn/photo/1806a1a7-9e69-4e65-b4c9-552c4bb21c40.jpg', 'https://habeco.com.vn/product/trucbach-logo.png', 'Là dòng sản phẩm cao cấp được ra đời nhằm chào mừng đại lễ 1000 năm Thăng Long - Hà nội. Ra đời với độ cồn 5.1% đánh dấu sự trở lại của nhãn hiệu Bia Trúc Bạch nổi tiếng bao năm qua.', '330ml', '24 lon', '5.1%', 'Được đặt theo tên hồ Trúc Bạch – một địa danh gắn liền với mảnh đất nghìn năm văn hiến Thăng Long – Hà Nội, Trúc Bạch là loại bia nội đầu tiên của Việt Nam khi sản phẩm này ra đời vào năm 1958.\n\nDòng bia cao cấp được kết tinh từ những nguyên liệu nhập khẩu tốt nhất như hoa bia Saaz – một trong bốn loại hoa bia quý tộc của thế giới được trồng duy nhất tại thung lũng Zatec, Cộng hòa Séc; và lúa mạch vụ xuân thu hoạch từ những vùng nguyên liệu nổi tiếng của Pháp và Cộng hòa Séc.\n\nVới người uống, Bia Trúc Bạch được ví như một tác phẩm nghệ thuật. Dòng bia màu vàng óng và trong suốt như mật ong. Khi rót, bọt bia trắng, dày, xốp, và tai nghe tiếng bọt từ từ tan ra “êm” và “mịn”. Đặc biệt, khi uống, bia có vị đắng nhẹ, vị đắng này từ từ chuyển sang vị ngọt dịu của mạch nha thượng hạng. Vị bia độc đáo này là kết quả của quá trình lên men tự nhiên dài ngày, lâu gấp 2 – 3 lần so với các loại bia thông thường.\n\nNhằm đáp ứng tốt hơn nhu cầu của người tiêu dùng, cuối năm 2014, bên cạnh sản phẩm Bia chai Trúc Bạch 330ml, HABECO đã đưa thêm ra thị trường sản phẩm Bia lon Trúc Bạch 330ml.\n\nHABECO tin tưởng rằng với vị thế là một kiệt tác bia, Trúc Bạch xứng đáng trở thành một biểu tượng và niềm tự hào của ngành đồ uống Việt Nam. Với nồng độ cồn 5.1%, Trúc Bạch hiện đứng đầu dòng bia dành cho phân khúc cao cấp của HABECO.', 1),
(2, 'BIA CHAI HANOI BOLD', 'https://habeco.com.vn/photo/26400f40-cf00-4061-ab8e-e3845e35ed11.jpg', 'https://habeco.com.vn/product/bold-logo.png', 'Lấy cảm hứng từ một Hà Nội nồng nàn giàu bản sắc, Hanoi Bold là dòng bia cao cấp với vị men đậm đà đầy lôi cuốn, là chuyến phiêu lưu đến với những trải nghiệm cuồng nhiệt của tuổi trẻ. Mỗi cuộc vui cùng bạn bè sẽ thêm phần bùng nổ với chất men đậm vị khó trộn lẫn của Hanoi Bold.', '200', '24', '5.3%', 'I.    CÂU CHUYỆN TRUYỀN THÔNG\r\n\r\nHanoi BOLD & Hanoi Light là sản phẩm dành cho giới trẻ - thế hệ luôn hướng tới những trải nghiệm khác biệt và đột phá. Nếu Hanoi BOLD là chất men của khát khao, chinh phục và bứt phá thì Hanoi Light là chất men của sáng tạo, tinh tế và thăng hoa.\r\n\r\nCặp sản phẩm đối lập về tính cách thương hiệu nhưng đều chung một nguồn nguyên liệu chất lượng cao cấp với đại mạch, hoa houblon hảo hạng, sản xuất trên dây chuyền hiện đại với sự tham gia của những chuyên gia nấu bia hàng đầu nhằm đảm bảo chất lượng đồng nhất trên mỗi mẻ bia.\r\n\r\nII.    GIỚI THIỆU SẢN PHẨM\r\n\r\nLấy cảm hứng từ một Hà Nội nồng nàn giàu bản sắc, Hanoi BOLD là dòng bia cao cấp với vị men đậm đà đầy lôi cuốn, là chuyến phiêu lưu đến với những trải nghiệm cuồng nhiệt của tuổi trẻ. Mỗi cuộc vui cùng bạn bè sẽ thêm phần bùng nổ với chất men đậm vị khó trộn lẫn của Hanoi BOLD.', 2),
(3, 'BIA HANOI BOLD LON 330ML', 'https://habeco.com.vn/photo/eb5c31cc-35d3-483e-901d-2e60b08b8876.jpg', 'https://habeco.com.vn/product/light-logo.png', 'Lấy cảm hứng từ một Hà Nội nồng nàn giàu bản sắc, Hanoi Bold là dòng bia cao cấp với vị men đậm đà đầy lôi cuốn, là chuyến phiêu lưu đến với những trải nghiệm cuồng nhiệt của tuổi trẻ. Mỗi cuộc vui cùng bạn bè sẽ thêm phần bùng nổ với chất men đậm vị khó trộn lẫn của Hanoi Bold.', '300', '24', '5.4', 'I.CÂU CHUYỆN TRUYỀN THÔNG\r\n\r\nHanoi BOLD & Hanoi Light là sản phẩm dành cho giới trẻ - thế hệ luôn hướng tới những trải nghiệm khác biệt và đột phá. Nếu Hanoi BOLD là chất men của khát khao, chinh phục và bứt phá thì Hanoi Light là chất men của sáng tạo, tinh tế và thăng hoa.\r\n\r\nCặp sản phẩm đối lập về tính cách thương hiệu nhưng đều chung một nguồn nguyên liệu chất lượng cao cấp với đại mạch, hoa houblon hảo hạng, sản xuất trên dây chuyền hiện đại với sự tham gia của những chuyên gia nấu bia hàng đầu nhằm đảm bảo chất lượng đồng nhất trên mỗi mẻ bia.\r\n\r\nII.    GIỚI THIỆU SẢN PHẨM\r\n\r\nHanoi BOLD phiên bản lon 330ml với chất men của khát khao, chinh phục và bứt phá, sẽ là người đồng hành lý tưởng của những tín đồ của yêu thích trải nghiệm khám phá.\r\n\r\nBản tự công bố sản phẩm: Xem chi tiết tại đây', 2),
(4, 'BIA HƠI HÀ NỘI 1L\r\n', 'https://habeco.com.vn/photo/3afc9236-f691-4bb5-bceb-816bda6e8321.jpg', 'https://habeco.com.vn/product/biahoi-logo.png', 'Bia Hơi Hà Nôi - Bí Quyết Duy Nhất Truyền Thống Trăm Năm, một hương vị bia hoàn hảo với những nguyên liệu tốt nhất tạo nên một hương vị bia tươi ngon, một nét đẹp văn hóa Hà Nội đã chinh phục bao thế hệ người tiêu dùng.\r\n', '1000', '24', '2.3', 'I. Câu chuyện truyền thông\r\n<br> <br>\r\nKhi xưa, với bất kỳ ai có mối duyên cùng Hà Nội, mảnh đất kinh kỳ luôn có sức lôi cuốn mạnh mẽ bởi vẻ đẹp nghìn năm văn hiến của mình. Còn giờ đây khi đã hội nhập, trong lòng của một Hà Nội xưa cũ, chính là một Hà Nội đang chuyển mình mạnh mẽ. Cùng với những nét đặc trưng xưa cũ, Hà Nội còn sở hữu một lực hấp dẫn vô hình, để chúng ta chẳng thể nào quên được - và cũng rất khó để rời xa.\r\n<br>\r\nVới Bia Hà Nội - một nhãn hiệu ra đời và phát triển cùng những năm tháng thăng trầm của Thủ Đô Ngàn Năm Văn Hiến - sự đổi thay cũng là từng ngày, những sản phẩm mới của Bia Hơi Hà Nội đã được ra mắt và phổ cập trên thị trường để \"Nét Văn Hóa\" này ngày càng đẹp hơn, càng gần gũi với tất cả các thế hệ.\r\n<br>\r\nII. Giới thiệu sản phẩm\r\n<br> <br>\r\nBia Hơi Hà Nội với dạng bao gói thích hợp cho nhu cầu sử dụng tại gia đình cùng mức chi phí hợp lý, luôn sẵn sàng cùng bạn bè gặp gỡ sẻ chia những phút giây gần gũi và cảm xúc nhất!', 4),
(5, 'BIA HƠI HÀ NỘI 500ML', 'https://habeco.com.vn/photo/c3d7958e-9ef1-4c24-9b61-0efd1ced71d4.jpg', 'https://habeco.com.vn/product/trucbach-logo.png', '', '500', '6', '3.2', 'I. Câu chuyện truyền thông\r\n\r\nKhi xưa, với bất kỳ ai có mối duyên cùng Hà Nội, mảnh đất kinh kỳ luôn có sức lôi cuốn mạnh mẽ bởi vẻ đẹp nghìn năm văn hiến của mình. Còn giờ đây khi đã hội nhập, trong lòng của một Hà Nội xưa cũ, chính là một Hà Nội đang chuyển mình mạnh mẽ. Cùng với những nét đặc trưng xưa cũ, Hà Nội còn sở hữu một lực hấp dẫn vô hình, để chúng ta chẳng thể nào quên được - và cũng rất khó để rời xa.\r\n\r\nVới Bia Hơi Hà Nội - một nhãn hiệu ra đời và phát triển cùng những năm tháng thăng trầm của Thủ Đô Ngàn Năm Văn Hiến - sự đổi thay cũng là từng ngày, những sản phẩm mới của Bia Hơi Hà Nội đã được ra mắt và phổ cập trên thị trường để \"Nét Văn Hóa\" này ngày càng đẹp hơn, càng gần gũi với tất cả các thế hệ.\r\n\r\nII. Giới thiệu sản phẩm\r\n\r\nBao gói mới được giới thiệu vào mùa hè 2020 phù hợp cho lối sống hiện đại và năng động. Hãy tận hưởng Bia Hơi Hà Nội tại mọi nơi bạn muốn đến', 5),
(6, 'BIA LON HÀ NỘI', 'https://habeco.com.vn/photo/c852cdff-34e9-4fe8-85a5-f379acd2ae9e.jpg', 'https://habeco.com.vn/product/biahanoi-logo.png', 'Phạm hoài Nam', '300', '24', '5.4', 'Lần đầu tiên được giới thiệu với người yêu bia Việt Nam vào năm 1992, cho đến nay, sản phẩm Bia lon Hà Nội 330ml với nồng độ cồn 4,6% vẫn luôn là sản phẩm được nhiều người tiêu dùng tin chọn. Chất lượng cũng như hình thức tiện lợi của Bia lon Hà Nội là lý do khiến sản phẩm này luôn được nhắm tới làm quà tặng vào những dịp lễ Tết hay những dịp kỷ niệm quan trọng. Bia lon Hà Nội là chất xúc tác quan trọng khiến cho câu chuyện những dịp tụ tập thêm vui vẻ và hào hứng.\n\nSản phẩm Bia lon Hà Nội 330ml hiện đang được xuất khẩu đi nhiều nước trên thế giới, và nhận được nhiều đánh giá cao của các khách hàng quốc tế.', 3),
(7, 'BIA CHAI HANOI LIGHT', 'https://habeco.com.vn/photo/1cccc0e3-3285-4571-be37-d98151e8003d.jpg', 'https://habeco.com.vn/product/bold-logo.png', 'Được tạo ra giữa mảnh đất Thủ đô cổ kính và nên thơ, Hanoi Light mang trong mình nét tinh tế của con người nơi đây với chất men thanh nhẹ đầy ý vị. Bia Hanoi Light đưa những bạn trẻ sành bia đến với một trải nghiệm mới mẻ đầy thư thái, thăng hoa với dòng bia mát lạnh và chìm đắm trong sự sảng khoái bất tận.', '200', '24', '5.3%', 'I.CÂU CHUYỆN TRUYỀN THÔNG\n\nHanoi BOLD & Hanoi Light là sản phẩm dành cho giới trẻ - thế hệ luôn hướng tới những trải nghiệm khác biệt và đột phá. Nếu Hanoi BOLD là chất men của khát khao, chinh phục và bứt phá thì Hanoi Light là chất men của sáng tạo, tinh tế và thăng hoa.\n\nCặp sản phẩm đối lập về tính cách thương hiệu nhưng đều chung một nguồn nguyên liệu chất lượng cao cấp với đại mạch, hoa houblon hảo hạng, sản xuất trên dây chuyền hiện đại với sự tham gia của những chuyên gia nấu bia hàng đầu nhằm đảm bảo chất lượng đồng nhất trên mỗi mẻ bia.\n\nII.    GIỚI THIỆU SẢN PHẨM\n\nĐược tạo ra giữa mảnh đất Thủ đô cổ kính và nên thơ, Hanoi Light mang trong mình nét tinh tế của con người nơi đây với chất men thanh nhẹ đầy ý vị. Hanoi Light đưa những bạn trẻ sành bia đến với một trải nghiệm mới mẻ đầy thư thái, thăng hoa với dòng bia mát lạnh và chìm đắm trong sự sảng khoái bất tận.', 2),
(8, 'BIA CHAI TRÚC BẠCH\n', 'https://habeco.com.vn/photo/8721548f-7b4f-459a-b373-ed40060953da.jpg', 'https://habeco.com.vn/product/trucbach-logo.png', 'Là dòng sản phẩm cao cấp được ra đời nhằm chào mừng đại lễ 1000 năm Thăng Long - Hà nội. Ra đời với độ cồn 5.1% đánh dấu sự trở lại của nhãn hiệu Bia Trúc Bạch nổi tiếng bao năm qua.', '330ml', '24 lon', '5.1%', 'Được đặt theo tên hồ Trúc Bạch – một địa danh gắn liền với mảnh đất nghìn năm văn hiến Thăng Long – Hà Nội, Trúc Bạch là loại bia nội đầu tiên của Việt Nam khi sản phẩm này ra đời vào năm 1958.\r\n\r\nDòng bia cao cấp được kết tinh từ những nguyên liệu nhập khẩu tốt nhất như hoa bia Saaz – một trong bốn loại hoa bia quý tộc của thế giới được trồng duy nhất tại thung lũng Zatec, Cộng hòa Séc; và lúa mạch vụ xuân thu hoạch từ những vùng nguyên liệu nổi tiếng của Pháp và Cộng hòa Séc.\r\n\r\nVới người uống, Bia Trúc Bạch được ví như một tác phẩm nghệ thuật. Dòng bia màu vàng óng và trong suốt như mật ong. Khi rót, bọt bia trắng, dày, xốp, và tai nghe tiếng bọt từ từ tan ra “êm” và “mịn”. Đặc biệt, khi uống, bia có vị đắng nhẹ, vị đắng này từ từ chuyển sang vị ngọt dịu của mạch nha thượng hạng. Vị bia độc đáo này là kết quả của quá trình lên men tự nhiên dài ngày, lâu gấp 2 – 3 lần so với các loại bia thông thường.\r\n\r\nNhằm đáp ứng tốt hơn nhu cầu của người tiêu dùng, cuối năm 2014, bên cạnh sản phẩm Bia chai Trúc Bạch 330ml, HABECO đã đưa thêm ra thị trường sản phẩm Bia lon Trúc Bạch 330ml.\r\n\r\nHABECO tin tưởng rằng với vị thế là một kiệt tác bia, Trúc Bạch xứng đáng trở thành một biểu tượng và niềm tự hào của ngành đồ uống Việt Nam. Với nồng độ cồn 5.1%, Trúc Bạch hiện đứng đầu dòng bia dành cho phân khúc cao cấp của HABECO.', 1),
(9, 'BIA HANOI LIGHT LON 330ML\r\n', 'https://habeco.com.vn/photo/5aac5e6d-16d9-49c6-bd72-817c317d47ce.jpg', 'https://habeco.com.vn/product/light-logo.png', 'Được tạo ra giữa mảnh đất Thủ đô cổ kính và nên thơ, Hanoi Light mang trong mình nét tinh tế của con người nơi đây với chất men thanh nhẹ đầy ý vị. Bia Hanoi Light đưa những bạn trẻ sành bia đến với một trải nghiệm mới mẻ đầy thư thái, thăng hoa với dòng bia mát lạnh và chìm đắm trong sự sảng khoái bất tận.', '300', '24', '5.4', 'I.CÂU CHUYỆN TRUYỀN THÔNG\r\n\r\nHanoi BOLD & Hanoi Light là sản phẩm dành cho giới trẻ - thế hệ luôn hướng tới những trải nghiệm khác biệt và đột phá. Nếu Hanoi BOLD là chất men của khát khao, chinh phục và bứt phá thì Hanoi Light là chất men của sáng tạo, tinh tế và thăng hoa.\r\n\r\nCặp sản phẩm đối lập về tính cách thương hiệu nhưng đều chung một nguồn nguyên liệu chất lượng cao cấp với đại mạch, hoa houblon hảo hạng, sản xuất trên dây chuyền hiện đại với sự tham gia của những chuyên gia nấu bia hàng đầu nhằm đảm bảo chất lượng đồng nhất trên mỗi mẻ bia.\r\n\r\nII.    GIỚI THIỆU SẢN PHẨM\r\n\r\nHanoi Light phiên bản lon 330ml với chất men của sáng tạo, tinh tế và thăng hoa. Thật tuyệt vời khi lựa chọn Hanoi Light theo chân những chuyến du lịch sôi động hay những bữa tiệc sum vầy với bạn bè chiến hữu tại gia.', 2),
(10, 'BIA HÀ NỘI 1890\r\n', 'https://habeco.com.vn/photo/9abedd7d-09f4-47d5-a9d2-35e3734c1087.jpg', 'https://habeco.com.vn/product/biahanoi1890-logo.png', 'Luôn mang trong mình nét riêng biệt khiến bao người xuyến xao, Hà Nội tượng trưng cho những nét xưa cũ ẩn mình trong một không gian hiện đại nhiều đổi thay. Tự hào là thương hiệu bia mang tên Thủ Đô ngàn năm văn hiến, kế thừa những tinh hoa Lịch sử 130 năm của Bia Hà Nội, sản phẩm Bia Hà Nội 1890 chai 330ml được giới thiệu ra thị trường để đáp ứng phù hợp hơn cho nhu cầu sử dụng người tiêu dùng. Sản phẩm có nồng độ cồn: 4.3%', '300', '24', '5.4', '“Luôn mang trong mình nét riêng biệt khiến bao người xuyến xao, Hà Nội tượng trưng cho những nét xưa cũ ẩn mình trong một không gian hiện đại nhiều đổi thay. Tự hào là thương hiệu bia mang tên Thủ Đô ngàn năm văn hiến, Bia Hà Nội gắn bó với hành trình lịch sử phát triển của Việt Nam, luôn vươn mình phát triển cùng sứ mệnh:              \r\n“GÌN GIỮ TINH HOA – NÂNG TẦM VỊ THẾ”.\r\n\r\nKế thừa những tinh hoa Lịch sử 130 năm của Bia Hà Nội, sản phẩm Bia Hà Nội 1890 chai 330ml sẽ được giới thiệu ra thị trường để đáp ứng phù hợp hơn cho nhu cầu sử dụng người tiêu dùng.”', 3),
(11, 'BIA CHAI HÀ NỘI', 'https://habeco.com.vn/photo/229197fd-20bd-4135-b72c-82a4083efbbf.jpg', 'https://habeco.com.vn/product/biahanoi-logo.png', 'Nhắc tới Bia Hà Nội, người ta nghĩ ngay tới những những giá trị văn hóa – truyền thống – cộng đồng biểu trưng của vùng đất Thủ Đô. Theo thời gian, thưởng thức bia Hà Nội đã trở thành một tinh hoa văn hóa. Bia “chất dẫn” kết nối mỗi người con đất Việt trở nên gần gũi với nhau hơn, thắm tình yêu đất nước và dân tộc. Cùng với cuộc sống ngày một đi lên, với những giao thoa của Việt Nam hiện đại và giàu bản sắc truyền thống, Bia Hà Nội dần chuyển mình để “bắt sóng” với những xu hướng mới. Song, những giá trị văn hóa đẹp đẽ luôn được Bia Hà Nội lưu giữ, nâng niu để thương hiệu bia của người Việt Nam được nâng tầm vị thế.', '300', '24', '5.4', 'Đối với người yêu bia trong nước, sản phẩm bia chai Hà Nội là một lựa chọn quen thuộc trong các cuộc tụ tập ăn uống, bất kể đó là bên mâm cơm gia đình hay là cuộc vui với bạn bè. Bia chai Hà Nội được tin dùng không chỉ bởi chất lượng ổn định, mà còn vì đây là một thương hiệu Việt uy tín gắn liền với thủ đô Hà Nội và được bạn bè quốc tế biết đến rộng rãi.\r\n\r\nĐược định hướng là sản phẩm nòng cốt của thương hiệu bia Hà Nội nói chung, bia chai Hà Nội có sản lượng hàng năm chiếm đến 70% tổng sản lượng các sản phẩm của HABECO. Sở dĩ bia chai Hà Nội có được vị thế vững chãi trên thị trường các tỉnh và thành phố phía Bắc là bởi màu bia vàng sáng trong vắt đầy thu hút, lớp bọt bền, trắng mịn, vị đắng hài hoà, êm dịu, và hậu vị lắng đọng.\r\n\r\nTự tin với chất lượng và sức mạnh thương hiệu của sản phẩm này, HABECO hiện đã xuất khẩu bia chai Hà Nội 450ml đi các thị trường Đài Loan, Hàn Quốc, và Úc.', 3),
(12, 'BIA CHAI HÀ NỘI NHÃN XANH\r\n', 'https://habeco.com.vn/photo/977d3524-aa50-476c-930d-1f89a0542ece.jpg', 'https://habeco.com.vn/product/biahanoinhanxanh-logo.png', 'Với khẩu hiệu Bia Hà Nội nhãn xanh – “Hương bia truyền thống – Sức sống miền Trung”, các sản phẩm bia chai 450ml và bia lon 330ml này là sự kết hợp giữa tinh hoa trong hơn 120 năm của Bia Hà Nội và khẩu vị bia đặc trưng của người dân nơi miền Trung Tổ quốc. Sản phẩm có nồng độ cồn: 4.3%\r\n', '300', '24', '5.4', '<p>Với mong muốn đáp ứng tốt hơn nhu cầu của người tiêu dùng trên mọi miền đất nước, tháng 9/2014, HABECO đã cho ra đời sản phẩm bia Hà Nội nhãn xanh – một sản phẩm dành riêng cho những người yêu bia ở miền Trung Việt Nam.</p>\r\n<p>Với khẩu hiệu Bia Hà Nội nhãn xanh – “Hương bia truyền thống – Sức sống miền Trung”, các sản phẩm bia chai 450ml và bia lon 330ml này là sự kết hợp giữa tinh hoa trong hơn 120 năm của Bia Hà Nội và khẩu vị bia đặc trưng của người dân nơi miền Trung Tổ quốc.</p>\r\n<p>Kết hợp với việc thưởng thức cảnh đẹp của biển xanh cát trắng nơi miền Trung đất nước, người yêu bia sẽ có một trải nghiệm khó quên khi tận hưởng hương vị êm dịu và lắng đọng của Bia Hà Nội nhãn xanh. </p>\r\n\r\n<p><Sản phẩm Bia Hà Nội nhãn xanh sở hữu chất lượng tuyệt hảo, được đúc kết từ những nguyên liệu bia hàng đầu. Bên cạnh đó, dáng chai khỏe khoắn và bao bì tươi tắn với sắc xanh chủ đạo cũng là những đặc điểm thu hút, gây cảm giác dễ chịu và thân quen đối với người tiêu dùng miền Trung nói chung.\r\n\r\n/p>', 3),
(13, 'BIA LON HÀ NỘI NHÃN XANH\r\n', 'https://habeco.com.vn/photo/07091a45-cc43-4f6f-bf38-d1058a63659e.jpg', 'https://habeco.com.vn/product/biahanoinhanxanh-logo.png', 'Với khẩu hiệu Bia Hà Nội nhãn xanh – “Hương bia truyền thống – Sức sống miền Trung”, các sản phẩm bia chai 450ml và bia lon 330ml này là sự kết hợp giữa tinh hoa trong hơn 120 năm của Bia Hà Nội và khẩu vị bia đặc trưng của người dân nơi miền Trung Tổ quốc. Sản phẩm có nồng độ cồn: 4.3%\r\n', '300', '24', '5.4', '<p>Với mong muốn đáp ứng tốt hơn nhu cầu của người tiêu dùng trên mọi miền đất nước, tháng 9/2014, HABECO đã cho ra đời sản phẩm bia Hà Nội nhãn xanh – một sản phẩm dành riêng cho những người yêu bia ở miền Trung Việt Nam.</p>\r\n<p>Với khẩu hiệu Bia Hà Nội nhãn xanh – “Hương bia truyền thống – Sức sống miền Trung”, các sản phẩm bia chai 450ml và bia lon 330ml này là sự kết hợp giữa tinh hoa trong hơn 120 năm của Bia Hà Nội và khẩu vị bia đặc trưng của người dân nơi miền Trung Tổ quốc.</p>\r\n<p>Kết hợp với việc thưởng thức cảnh đẹp của biển xanh cát trắng nơi miền Trung đất nước, người yêu bia sẽ có một trải nghiệm khó quên khi tận hưởng hương vị êm dịu và lắng đọng của Bia Hà Nội nhãn xanh. ​</p>\r\n\r\n<p><Sản phẩm Bia Hà Nội nhãn xanh sở hữu chất lượng tuyệt hảo, được đúc kết từ những nguyên liệu bia hàng đầu. Bên cạnh đó, dáng chai khỏe khoắn và bao bì tươi tắn với sắc xanh chủ đạo cũng là những đặc điểm thu hút, gây cảm giác dễ chịu và thân quen đối với người tiêu dùng miền Trung nói chung.\r\n\r\n/p', 3),
(14, 'BIA CHAI HANOI BEER PREMIUM\r\n', 'https://habeco.com.vn/photo/229197fd-20bd-4135-b72c-82a4083efbbf.jpg', 'https://habeco.com.vn/product/biahanoipremium-logo.png', 'Được giới thiệu vào năm 2005, Bia Hanoi Premium với nồng độ cồn 4.9% được định hướng nằm trong phân khúc bia cao cấp. Cho đến nay, sản phẩm này đã chứng tỏ tiềm năng đầy triển vọng của nó với tăng trưởng trung bình giai đoạn 2011 – 2015 là 15,3%.\r\n', '300', '24', '5.4', 'Được giới thiệu vào năm 2005, Bia Hanoi Premium với nồng độ cồn 4.9% được định hướng nằm trong phân khúc bia cao cấp. Cho đến nay, sản phẩm này đã chứng tỏ tiềm năng đầy triển vọng của nó với tăng trưởng trung bình giai đoạn 2011 – 2015 là 15,3%.\r\n\r\nDòng sản phẩm bia cao cấp Hanoi Premium là sự kết tinh giữa bí quyết bia truyền thống với dây chuyền sản xuất hiện đại và tự động hóa hoàn toàn.\r\n\r\nSở hữu dáng chai nhỏ gọn và thanh nhã, Hanoi Premium là lựa chọn lý tưởng cho những buổi tiệc, buổi ăn uống trang trọng, hay chỉ đơn giản là một thức uống tinh tế dành cho những cá nhân muốn có một trải nghiệm bia khó quên.\r\n\r\nBên cạnh đó, việc quảng bá hình ảnh và tiêu thụ sản phẩm này tại thị trường nước ngoài cũng đang được dần phát triển. Một số thị trường nhập khẩu chủ yếu hiện nay là Anh, Úc, Pháp, và Đức.', 3),
(15, 'BIA HƠI HÀ NỘI 500ML\r\n\r\n', 'https://habeco.com.vn/photo/c3d7958e-9ef1-4c24-9b61-0efd1ced71d4.jpg', 'https://habeco.com.vn/product/biahoi-logo.png', 'Bia Hơi Hà Nôi - Bí Quyết Duy Nhất Truyền Thống Trăm Năm, một hương vị bia hoàn hảo với những nguyên liệu tốt nhất tạo nên một hương vị bia tươi ngon, một nét đẹp văn hóa Hà Nội đã chinh phục bao thế hệ người tiêu dùng.\r\n', '300', '24', '2.3', 'I. Câu chuyện truyền thông\r\n\r\nKhi xưa, với bất kỳ ai có mối duyên cùng Hà Nội, mảnh đất kinh kỳ luôn có sức lôi cuốn mạnh mẽ bởi vẻ đẹp nghìn năm văn hiến của mình. Còn giờ đây khi đã hội nhập, trong lòng của một Hà Nội xưa cũ, chính là một Hà Nội đang chuyển mình mạnh mẽ. Cùng với những nét đặc trưng xưa cũ, Hà Nội còn sở hữu một lực hấp dẫn vô hình, để chúng ta chẳng thể nào quên được - và cũng rất khó để rời xa.\r\n\r\nVới Bia Hơi Hà Nội - một nhãn hiệu ra đời và phát triển cùng những năm tháng thăng trầm của Thủ Đô Ngàn Năm Văn Hiến - sự đổi thay cũng là từng ngày, những sản phẩm mới của Bia Hơi Hà Nội đã được ra mắt và phổ cập trên thị trường để \"Nét Văn Hóa\" này ngày càng đẹp hơn, càng gần gũi với tất cả các thế hệ.\r\n\r\nII. Giới thiệu sản phẩm\r\n\r\nBao gói mới được giới thiệu vào mùa hè 2020 phù hợp cho lối sống hiện đại và năng động. Hãy tận hưởng Bia Hơi Hà Nội tại mọi nơi bạn muốn đến', 4),
(16, 'BIA HƠI HÀ NỘI\r\n\r\n', 'https://habeco.com.vn/photo/494a0d68-be58-41e5-b8b9-8e6f5c7fb9b5.jpg', 'https://habeco.com.vn/product/biahoi-logo.png', 'Bia Hơi Hà Nôi - Bí Quyết Duy Nhất Truyền Thống Trăm Năm, một hương vị bia hoàn hảo với những nguyên liệu tốt nhất tạo nên một hương vị bia tươi ngon, một nét đẹp văn hóa Hà Nội đã chinh phục bao thế hệ người tiêu dùng.\r\n', '300', '24', '2.3', 'I. Câu chuyện truyền thông\r\n<br> <br>\r\nKhi xưa, với bất kỳ ai có mối duyên cùng Hà Nội, mảnh đất kinh kỳ luôn có sức lôi cuốn mạnh mẽ bởi vẻ đẹp nghìn năm văn hiến của mình. Còn giờ đây khi đã hội nhập, trong lòng của một Hà Nội xưa cũ, chính là một Hà Nội đang chuyển mình mạnh mẽ. Cùng với những nét đặc trưng xưa cũ, Hà Nội còn sở hữu một lực hấp dẫn vô hình, để chúng ta chẳng thể nào quên được - và cũng rất khó để rời xa.\r\n<br> <br>\r\nVới bia Hà Nội - một nhãn hiệu ra đời và phát triển cùng những năm tháng thăng trầm của Thủ Đô Ngàn Năm Văn Hiến - sự đổi thay cũng là từng ngày, những sản phẩm mới của Bia Hơi Hà Nội đã được ra mắt và phổ cập trên thị trường để \"Nét Văn Hóa\" này ngày càng đẹp hơn, càng gần gũi với tất cả các thế hệ.\r\n<br> <br>\r\n<strong>II. Giới thiệu sản phẩm</strong>\r\n<br> <br>\r\nBia Hơi Hà Nôi - Bí Quyết Duy Nhất Truyền Thống Trăm Năm, một hương vị bia hoàn hảo với những nguyên liệu tốt nhất tạo nên một hương vị bia tươi ngon, một nét đẹp văn hóa Hà Nội đã chinh phục bao thế hệ người tiêu dùng.', 4);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`) VALUES
(1, 'admin', '1', 'Phạm Hoài Nam');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user` (`id_user`);

--
-- Indexes for table `category_news`
--
ALTER TABLE `category_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_pro`
--
ALTER TABLE `category_pro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pro` (`category_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `category_news`
--
ALTER TABLE `category_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category_pro`
--
ALTER TABLE `category_pro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_pro` FOREIGN KEY (`category_id`) REFERENCES `category_pro` (`id`);
--
-- Database: `ktra`
--
CREATE DATABASE IF NOT EXISTS `ktra` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ktra`;

-- --------------------------------------------------------

--
-- Table structure for table `cadres`
--

CREATE TABLE `cadres` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organ` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phonenumber` int(11) NOT NULL,
  `id_unit` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cadres`
--

INSERT INTO `cadres` (`id`, `name`, `thumbnail`, `position`, `organ`, `email`, `phonenumber`, `id_unit`) VALUES
(1, 'Nguyễn Thanh Tùng', 'http://cse.tlu.edu.vn/Portals/0/Images/2016/Tung%20VIASM.jpg', 'Phó', '0353037823', 'NTT@gmail.com', 123456789, 1),
(2, 'Kiều Tuấn Dũng', 'http://cse.tlu.edu.vn/Portals/0/2016/Kieu%20Tuan%20Dung.jpg', 'Trưởng BM', '0353037823', 'kituzu@e.tlu.edu.vn', 123456789, 24),
(3, 'Nguyễn Khánh Linh', 'http://sie.tlu.edu.vn/Portals/0/Nguyen%20Khanh%20Linh.jpg', 'Phó Ban', '0353037823', 'NTTH@gmail.com', 123456789, 1),
(62, 'Pham Hoài Nam', 'http://cse.tlu.edu.vn/Portals/0/Users/Ly_Anh_Tuan.jpg', 'bc', '11', 'namtay0712@gmail.com', 338811426, 2),
(63, 'a', 'http://cse.tlu.edu.vn/Portals/0/Users/Ly_Anh_Tuan.jpg', 'namtay0712@gmail.com', '11', 'namtre0712@gmail.com', 2147483647, 15),
(65, 'a', 'https://scontent.fhan5-1.fna.fbcdn.net/v/t39.30808-6/240463693_921968625342049_2675160114677335485_n.jpg?_nc_cat=1&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=JO8hEbcqeTgAX_y5wKS&_nc_ht=scontent.fhan5-1.fna&oh=fe32e7571080437427339b0d4b03fcef&oe=61289B10', 'hna', 'namtre0712@gmail.com', 'namtre0712@gmail.com', 2147483647, 14),
(66, 'Phạm Hoài Nam', 'https://scontent.fhan5-1.fna.fbcdn.net/v/t39.30808-6/240463693_921968625342049_2675160114677335485_n.jpg?_nc_cat=1&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=JO8hEbcqeTgAX_y5wKS&_nc_ht=scontent.fhan5-1.fna&oh=fe32e7571080437427339b0d4b03fcef&oe=61289B10', 'Phó', '0338811426', 'namtre0712@gmail.com', 2147483647, 19);

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE `unit` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `roomnumber` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `unitphone` int(255) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_branch` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`id`, `name`, `roomnumber`, `unitphone`, `address`, `email`, `website`, `id_branch`) VALUES
(1, 'Ban Giám Hiệu', 'P202', 368236741, 'Tầng2  toà A1', 'vpkdhtl@e.tlu.edu.vn', 'http://cse.tlu.edu.vn', 1),
(2, 'Hội Đồng Trường', 'P102', 36974512, 'Tầng 1 nhà B2', 'vpkdhtl@e.tlu.edu.vn', 'http://cse.tlu.edu.vn', 2),
(3, 'Văn Phòng Đảng Uỷ', 'P407', 427241274, 'tầng 4 nhà  A2', 'vpkdhtl@e.tlu.edu.vn', 'http://cse.tlu.edu.vn', 3),
(4, 'Văn Phòng Công Đoàn', 'P453', 124852741, 'tầng 4 nhà  A2', 'vpkdhtl@e.tlu.edu.vn', 'http://cse.tlu.edu.vn', 3),
(5, 'Văn Phòng Đoàn Thanh Niên', 'P410', 124785963, 'tầng 4 nhà  A2', 'vpkdhtl@e.tlu.edu.vn', 'http://cse.tlu.edu.vn', 3),
(6, 'Phòng Hành Chính Tổng Hợp', 'P114', 564127851, 'tầng 1 nhà A4', 'vpkdhtl@e.tlu.edu.vn', 'http://cse.tlu.edu.vn', 6),
(7, 'Phòng Quản Trị', 'P136', 784963245, 'tầng 1 nhà A4', 'vpkdhtl@e.tlu.edu.vn', 'http://cse.tlu.edu.vn', 6),
(8, 'Phòng Tổ Chức Cán Bộ', 'P101', 364235124, 'tầng 1 nhà A4', 'vpkdhtl@e.tlu.edu.vn', 'http://cse.tlu.edu.vn', 6),
(9, 'Phòng Đào Tạo', 'P102', 963258753, 'tầng 1 nhà A4', 'vpkdhtl@e.tlu.edu.vn', 'http://cse.tlu.edu.vn', 6),
(10, 'Phòng Khảo Thí Và Đảm Bảo Chất Lượng', 'P105', 305896352, 'tầng 1 nhà A4', 'vpkdhtl@e.tlu.edu.vn', 'http://cse.tlu.edu.vn', 6),
(11, 'Phòng Tài Chinh-Kế Toán', 'P113', 312654861, 'tầng 1 nhà A4', 'vpkdhtl@e.tlu.edu.vn', 'http://cse.tlu.edu.vn', 6),
(12, 'Phòng Hợp Tác Quốc Tế', 'P124', 236984360, 'tầng 1 nhà A4', 'vpkdhtl@e.tlu.edu.vn', 'http://cse.tlu.edu.vn', 6),
(13, 'Phòng Chính Trị & Công Tác Sinh Viên', 'P131', 145302753, 'tầng 1 nhà A4', 'vpkdhtl@e.tlu.edu.vn', 'http://cse.tlu.edu.vn', 6),
(14, 'Phòng Khoa Học Công Nghệ', 'P145', 141239751, 'tầng 1 nhà A4', 'vpkdhtl@e.tlu.edu.vn', 'http://cse.tlu.edu.vn', 6),
(15, 'Thư Viện', 'P159', 420364850, 'tầng 1 nhà A4', 'vpkdhtl@e.tlu.edu.vn', 'http://cse.tlu.edu.vn', 6),
(19, 'Trạm y tế', 'P164', 301425762, 'tầng 1 nhà A4', 'vpkdhtl@e.tlu.edu.vn', 'http://cse.tlu.edu.vn', 6),
(20, 'Khoa Công Nghệ Thông Tin', 'P230', 363951364, 'Tầng 2 Toà C5 ', 'CNTTtlu@e.tlu.edu.vn', 'CTNTT.edu.vn', 20),
(24, 'BM Hệ Thống Thông Tin', 'P223', NULL, NULL, NULL, NULL, 20);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `pass`, `active`) VALUES
(1, 'admin', '1', b'1'),
(2, 'user1', '1', b'0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cadres`
--
ALTER TABLE `cadres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_donvi` (`id_unit`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_child` (`id_branch`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cadres`
--
ALTER TABLE `cadres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `unit`
--
ALTER TABLE `unit`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cadres`
--
ALTER TABLE `cadres`
  ADD CONSTRAINT `Fk_donvi` FOREIGN KEY (`id_unit`) REFERENCES `unit` (`id`);

--
-- Constraints for table `unit`
--
ALTER TABLE `unit`
  ADD CONSTRAINT `FK_child` FOREIGN KEY (`id_branch`) REFERENCES `unit` (`id`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"snap_to_grid\":\"off\",\"relation_lines\":\"true\",\"angular_direct\":\"direct\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"habeco\",\"table\":\"articles\"},{\"db\":\"habeco\",\"table\":\"category_news\"},{\"db\":\"habeco\",\"table\":\"user\"},{\"db\":\"habeco\",\"table\":\"category_pro\"},{\"db\":\"habeco\",\"table\":\"products\"},{\"db\":\"ktra\",\"table\":\"user\"},{\"db\":\"ktra\",\"table\":\"unit\"},{\"db\":\"ktra\",\"table\":\"cadres\"},{\"db\":\"ktra\",\"table\":\"canbo\"},{\"db\":\"ktra\",\"table\":\"donvi\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Dumping data for table `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('habeco', 'articles', 'name');

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'habeco', 'articles', '{\"sorted_col\":\"id ASC\"}', '2021-08-28 15:36:48');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-08-29 11:08:50', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
