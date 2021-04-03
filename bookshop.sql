-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 03, 2021 lúc 05:40 PM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `bookshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietsanpham`
--

CREATE TABLE `chitietsanpham` (
  `id` int(100) NOT NULL,
  `masp` int(100) NOT NULL,
  `nhacungcap` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `nhaxuatban` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tacgia` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `hinhthuc` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `nguoidich` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL DEFAULT 'Không có',
  `mota` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `noidung` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `namxuatban` int(100) NOT NULL,
  `trongluong` int(100) NOT NULL,
  `sotrang` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietsanpham`
--

INSERT INTO `chitietsanpham` (`id`, `masp`, `nhacungcap`, `nhaxuatban`, `tacgia`, `hinhthuc`, `nguoidich`, `mota`, `noidung`, `namxuatban`, `trongluong`, `sotrang`) VALUES
(39, 1, '1980 Books', 'NXB Đại học kinh tế Quốc dân', 'Scott Gerber, Ryan Pauph', 'Bìa mềm', 'Hà Tiến Hưng', '<p>Scott Gerber l&agrave; nh&agrave; đồng s&aacute;ng lập, CEO của The Commmunity Company. Anh l&agrave; cố vấn đặc biệt cho Forbes Media, một diễn giả được y&ecirc;u th&iacute;ch, một nh&agrave; b&igrave;nh luận tr&ecirc;n truyền h&igrave;nh về kinh doanh, v&agrave; l&agrave; t&aacute;c giả của cuốn Never Get a &ldquo;Real&rdquo; Job</p>\r\n', '<p>Những cơ hội tuyệt vời trong kinh doanh sẽ xuất hiện khi gặp được những con người ph&ugrave; hợp.</p>\r\n\r\n<p>Ho&agrave;n to&agrave;n xuất ph&aacute;t từ thực tiễn &ldquo;Kỹ năng đ&agrave;m ph&aacute;n hiệu quả trong kinh doanh&rdquo; sẽ gi&uacute;p bạn:</p>\r\n\r\n<p>Chuẩn bị kỹ lưỡng cho cuộc đ&agrave;m ph&aacute;n</p>\r\n\r\n<p>Lắng nghe kh&aacute;ch h&agrave;ng</p>\r\n\r\n<p>L&agrave;m chủ cảm x&uacute;c khi giao tiếp</p>\r\n\r\n<p>Kỹ năng thuyết phục kh&aacute;ch h&agrave;ng</p>\r\n\r\n<p>Tư duy chiến lược trong kinh doanh</p>\r\n\r\n<p>Kỹ năng đặt c&acirc;u hỏi trong đ&agrave;m ph&aacute;n</p>\r\n\r\n<p>D&ugrave; bạn mới chỉ bắt đầu khởi nghiệp hay đ&atilde; ph&aacute;t triển th&agrave;nh c&ocirc;ng rực rỡ th&igrave; Scott v&agrave; Ryan vẫn sẽ dạy cho bạn c&aacute;ch để ph&aacute;t triển mối quan hệ x&atilde; hội đỉnh cao nhất.</p>\r\n\r\n<p>V&agrave;i n&eacute;t về t&aacute;c giả:</p>\r\n\r\n<p>Scott Gerber l&agrave; nh&agrave; đồng s&aacute;ng lập, CEO của The Commmunity Company. Anh l&agrave; cố vấn đặc biệt cho Forbes Media, một diễn giả được y&ecirc;u th&iacute;ch, một nh&agrave; b&igrave;nh luận tr&ecirc;n truyền h&igrave;nh về kinh doanh, v&agrave; l&agrave; t&aacute;c giả của cuốn Never Get a &ldquo;Real&rdquo; Job</p>\r\n\r\n<p>Ryan Pauph l&agrave; nh&agrave; đồng s&aacute;ng lập v&agrave; l&agrave; COO của The Commmunity Company. Được mệnh danh l&agrave; &ldquo;huyền thoại trong cộng đồng trực tuyến kiến tạo thế giới&rdquo;, Ryan tập trung v&agrave;o việc tạo ra những trải nghiệm kết nối mạnh mẽ giữa c&aacute;c th&agrave;nh vi&ecirc;n v&agrave; mang lại kết quả kinh doanh t&iacute;ch cực cho h&agrave;ng ng&agrave;n doanh nh&acirc;n tr&ecirc;n cả nước.</p>\r\n', 2019, 350, 336),
(40, 2, '1980 Books', 'NXB Lao Động', 'Mackenzie Kyle', 'Bìa mềm', 'Trương Thị Quế Anh', '<p>Với b&uacute;t ph&aacute;p t&agrave;i hoa, Mackenzie Kyle đ&atilde; lồng gh&eacute;p những nguy&ecirc;n l&yacute; thu phục l&ograve;ng người nhằm n&acirc;ng cao hiệu suất v&agrave; cải thiện chất lượng hoạt động doanh nghiệp vốn kh&ocirc; khan, cứng nhắc v&agrave;o cuốn &ldquo;tiểu thuyết kinh doanh&rdquo; c&oacute; một kh&ocirc;ng hai mang t&ecirc;n: &ldquo;Thuật đắc nh&acirc;n t&acirc;m n&acirc;ng tầm hiệu suất&rdquo;.</p>\r\n', '<p>Thuật Đắc Nh&acirc;n T&acirc;m N&acirc;ng Tầm Hiệu Suất</p>\r\n\r\n<p>Chưa bao giờ, thuật đắc nh&acirc;n t&acirc;m, hay b&iacute; quyết thấu hiểu l&ograve;ng người để tạo động lực cho từng c&aacute; nh&acirc;n, khai mở tiềm năng đội nh&oacute;m v&agrave; tăng cường sức mạnh kết nối trong tổ chức lại cấp thiết đến thế. Để được l&ograve;ng thi&ecirc;n hạ với tư c&aacute;ch doanh nghiệp l&agrave; b&agrave;i to&aacute;n h&oacute;c b&uacute;a đối với mọi doanh nghiệp.</p>\r\n\r\n<p>Với b&uacute;t ph&aacute;p t&agrave;i hoa, Mackenzie Kyle đ&atilde; lồng gh&eacute;p những nguy&ecirc;n l&yacute; thu phục l&ograve;ng người nhằm n&acirc;ng cao hiệu suất v&agrave; cải thiện chất lượng hoạt động doanh nghiệp vốn kh&ocirc; khan, cứng nhắc v&agrave;o cuốn &ldquo;tiểu thuyết kinh doanh&rdquo; c&oacute; một kh&ocirc;ng hai mang t&ecirc;n: &ldquo;Thuật đắc nh&acirc;n t&acirc;m n&acirc;ng tầm hiệu suất&rdquo;.</p>\r\n\r\n<p>Qua h&agrave;ng loạt c&acirc;u chuyện mang t&iacute;nh c&aacute; nh&acirc;n gần gũi, t&aacute;c phẩm đưa ra nguy&ecirc;n l&yacute; đắc nh&acirc;n t&acirc;m căn bản gi&uacute;p thấu hiểu v&agrave; khai mở động lực s&acirc;u k&iacute;n trong mỗi con người. Mackenzie Kyle chứng minh tầm quan trọng của việc li&ecirc;n kết động lực đối với th&agrave;nh c&ocirc;ng trong kinh doanh v&agrave; cuộc sống.</p>\r\n\r\n<p>Sở hữu &quot;Thuật đắc nh&acirc;n t&acirc;m n&acirc;ng tầm hiệu suất&quot;, v&agrave; bạn sẽ c&oacute; c&acirc;u trả lời cho b&agrave;i to&aacute;n: L&agrave;m thế n&agrave;o để săn t&igrave;m động lực v&agrave; th&uacute;c đẩy h&agrave;nh vi trong thời đại 4.0 đầy biến động?</p>\r\n', 2018, 350, 324),
(41, 3, '1980 Books', 'NXB Phụ Nữ', 'Jessica Higgins', 'Bìa mềm', 'Phạm Lan Anh', '<p>Kh&ocirc;ng thiếu những lời khuy&ecirc;n về việc l&agrave;m thế n&agrave;o để đạt hiệu quả giao tiếp trong c&ocirc;ng việc. Vấn đề l&agrave; bạn c&oacute; biết phương ph&aacute;p n&agrave;o thực sự được chứng minh l&agrave; c&oacute; hiệu quả v&agrave; bạn n&ecirc;n h&agrave;nh động như n&agrave;o để c&oacute; kết quả tốt nhất.</p>\r\n', '<p>Kh&ocirc;ng thiếu những lời khuy&ecirc;n về việc l&agrave;m thế n&agrave;o để đạt hiệu quả giao tiếp trong c&ocirc;ng việc. Vấn đề l&agrave; bạn c&oacute; biết phương ph&aacute;p n&agrave;o thực sự được chứng minh l&agrave; c&oacute; hiệu quả v&agrave; bạn n&ecirc;n h&agrave;nh động như n&agrave;o để c&oacute; kết quả tốt nhất.</p>\r\n\r\n<p>Ho&agrave;n to&agrave;n xuất ph&aacute;t từ thực tiễn &ldquo;Nghệ thuật giao tiếp nơi c&ocirc;ng sở&rdquo; sẽ gi&uacute;p bạn:</p>\r\n\r\n<p>Thuyết tr&igrave;nh trước đ&aacute;m đ&ocirc;ng</p>\r\n\r\n<p>Đ&agrave;m ph&aacute;n chuy&ecirc;n &nbsp;nghiệp</p>\r\n\r\n<p>Tạo dựng mối quan hệ tốt đẹp với đồng nghiệp</p>\r\n\r\n<p>X&acirc;y dựng tinh thần l&agrave;m việc nh&oacute;m hiệu quả</p>\r\n\r\n<p>L&agrave;m chủ ng&ocirc;n ngữ cơ thể</p>\r\n\r\n<p>Cuốn s&aacute;ch n&agrave;y truyền tải th&ocirc;ng điệp r&otilde; r&agrave;ng về việc n&ecirc;n l&agrave;m v&agrave; kh&ocirc;ng n&ecirc;n l&agrave;m. Bất cứ ai muốn l&agrave;m việc tốt hơn, bất kể cấp bậc hay tuổi t&aacute;c, đều n&ecirc;n c&oacute; cuốn s&aacute;ch n&agrave;y trong tay.</p>\r\n', 2019, 280, 252),
(42, 4, '1980 Books', 'NXB Đại học kinh tế Quốc dân', 'Martin Krengel', 'Bìa mềm', 'Ngân Hà', '<p>Học đại học thế n&agrave;o cho hiệu quả? Rất nhiều t&acirc;n sinh vi&ecirc;n nghĩ họ chỉ cần &aacute;p dụng y nguy&ecirc;n c&aacute;ch học từ thời phổ th&ocirc;ng l&agrave; đ&atilde; đủ. Nhưng khối lượng kiến thức ở cấp đại học ho&agrave;n to&agrave;n vượt trội so với những g&igrave; bạn từng trải qua. Học đại học kh&ocirc;ng chỉ l&agrave; &ocirc;m s&aacute;ch vở đối ph&oacute; với c&aacute;c b&agrave;i kiểm tra, m&agrave; bạn c&ograve;n phải d&agrave;nh nhiều thời gian để tham gia c&aacute;c hoạt động ngo&agrave;i giờ học (tham gia c&acirc;u lạc bộ, c&aacute;c hoạt động ngoại kh&oacute;a, dự c&aacute;c buổi hội thảo, huấn luyện...). Qu&aacute; nhiều điều bạn muốn l&agrave;m, nhưng quĩ thời gian chỉ c&oacute; hạn. Để giữ cho bản th&acirc;n kh&ocirc;ng bị rơi v&agrave;o trạng th&aacute;i mệt mỏi, giảm &yacute; ch&iacute;, ch&uacute;ng ta phải l&agrave;m g&igrave;?</p>\r\n', '<p>Đại Học Hay Học &ldquo;Đại&rdquo;</p>\r\n\r\n<p>Học đại học thế n&agrave;o cho hiệu quả? Rất nhiều t&acirc;n sinh vi&ecirc;n nghĩ họ chỉ cần &aacute;p dụng y nguy&ecirc;n c&aacute;ch học từ thời phổ th&ocirc;ng l&agrave; đ&atilde; đủ. Nhưng khối lượng kiến thức ở cấp đại học ho&agrave;n to&agrave;n vượt trội so với những g&igrave; bạn từng trải qua. Học đại học kh&ocirc;ng chỉ l&agrave; &ocirc;m s&aacute;ch vở đối ph&oacute; với c&aacute;c b&agrave;i kiểm tra, m&agrave; bạn c&ograve;n phải d&agrave;nh nhiều thời gian để tham gia c&aacute;c hoạt động ngo&agrave;i giờ học (tham gia c&acirc;u lạc bộ, c&aacute;c hoạt động ngoại kh&oacute;a, dự c&aacute;c buổi hội thảo, huấn luyện...). Qu&aacute; nhiều điều bạn muốn l&agrave;m, nhưng quĩ thời gian chỉ c&oacute; hạn. Để giữ cho bản th&acirc;n kh&ocirc;ng bị rơi v&agrave;o trạng th&aacute;i mệt mỏi, giảm &yacute; ch&iacute;, ch&uacute;ng ta phải l&agrave;m g&igrave;?</p>\r\n\r\n<p>T&aacute;c giả, chuy&ecirc;n gia gi&aacute;o dục người Đức Martin Krengel quan niệm: &quot;H&atilde;y học tập v&agrave; nghi&ecirc;n cứu hết m&igrave;nh nhưng vẫn kh&ocirc;ng qu&ecirc;n những cuộc vui!&quot;. &Ocirc;ng viết cuốn &ldquo;Đại học hay học &lsquo;đại&rsquo;&rdquo;, đ&uacute;c kết lại những trải nghiệm thực tế ch&acirc;n thực, để gợi &yacute; cho c&aacute;c bạn c&aacute;ch học tập hiệu quả v&agrave; đầy hứng th&uacute;. Xuy&ecirc;n suốt 10 chương s&aacute;ch, bạn sẽ nhận diện được c&aacute;c vấn đề quan trọng, x&aacute;c định r&otilde; những điều cần l&agrave;m, v&agrave; bắt tay v&agrave;o h&agrave;nh động. Đặc biệt, những b&iacute; k&iacute;p trong s&aacute;ch kh&ocirc;ng giới hạn trong lĩnh vực học tập, m&agrave; c&ograve;n l&agrave; &quot;kỹ năng sinh tồn&quot; để bạn thay đổi nếp sống, quản l&yacute; thời gian kh&ocirc;n kh&eacute;o hơn v&agrave; sắp xếp c&aacute;c hoạt động ngoại kh&oacute;a thật ph&ugrave; hợp. N&oacute;i t&oacute;m lại, đời sống đại học của bạn sẽ trở n&ecirc;n tươi mới v&agrave; đầy ắp niềm vui, kh&ocirc;ng c&oacute; chỗ cho sự nh&agrave;m ch&aacute;n v&agrave; những &aacute;p lực kh&ocirc;ng cần c&oacute; - với sự trợ gi&uacute;p thiết thực đến từ cuốn s&aacute;ch của Martin Krengel.</p>\r\n\r\n<p>H&atilde;y để cuốn cẩm nang &ldquo;Đại học hay học &lsquo;đại&rsquo;&rdquo; biến qu&atilde;ng thời gian tr&ecirc;n giảng đường đại học th&agrave;nh những kỷ niệm tuyệt vời kh&ocirc;ng thể qu&ecirc;n của bạn!&nbsp;</p>\r\n', 2017, 500, 460),
(43, 5, '1980 Books', 'NXB Thế Giới', 'Nhiều Tác Giả', 'Bìa mềm', 'null', '<p>&ldquo;Chiến lược của kẻ thắng&rdquo; tổng hợp 31 b&agrave;i học qu&acirc;n sự, đ&uacute;c kết từ lịch sử Đ&ocirc;ng t&acirc;y kim cổ trải d&agrave;i suốt ba ng&agrave;n năm. Những anh h&ugrave;ng mạnh nhất, lỗi lạc nhất lịch sử đều để lại cho hậu thế những b&agrave;i học để đời, từ Hannibal, Caesar, Gia C&aacute;t Lượng đến Napol&eacute;on, Oda Nobunaga, Toyotomi Hideyoshi, Tokugawa leyasu&hellip; Tất cả c&aacute;c kỹ năng tư duy, h&agrave;nh động của những vị tướng xuất sắc ấy đ&atilde; l&agrave;m thay đổi cả một giai đoạn lịch sử.</p>\r\n', '<p>&ldquo;Chiến lược của kẻ thắng&rdquo; tổng hợp 31 b&agrave;i học qu&acirc;n sự, đ&uacute;c kết từ lịch sử Đ&ocirc;ng t&acirc;y kim cổ trải d&agrave;i suốt ba ng&agrave;n năm. Những anh h&ugrave;ng mạnh nhất, lỗi lạc nhất lịch sử đều để lại cho hậu thế những b&agrave;i học để đời, từ Hannibal, Caesar, Gia C&aacute;t Lượng đến Napol&eacute;on, Oda Nobunaga, Toyotomi Hideyoshi, Tokugawa leyasu&hellip; Tất cả c&aacute;c kỹ năng tư duy, h&agrave;nh động của những vị tướng xuất sắc ấy đ&atilde; l&agrave;m thay đổi cả một giai đoạn lịch sử.</p>\r\n\r\n<p>Kh&ocirc;ng chỉ thay đổi trường đoạn lịch sử, những chiến thắng, s&aacute;ch lược ấy c&ograve;n t&aacute;c động tới chiến lược quản trị kinh doanh ng&agrave;y nay. Chủ nghĩa to&agrave;n cầu đang len lỏi v&agrave;o từng doanh nghiệp, Microft, Google, Amazon, Toyota, Uniqlo, 7-Eleven&hellip; Họ kh&ocirc;ng đứng b&ecirc;n ngo&agrave;i cuộc cạnh tranh thương mại. Họ cần t&igrave;m cho m&igrave;nh ch&igrave;a kh&oacute;a để th&agrave;nh c&ocirc;ng v&agrave; đứng vững trong d&ograve;ng chảy xu thế đ&oacute;.</p>\r\n', 2017, 200, 56),
(44, 6, '1980 Books', 'NXB Lao Động', 'Suzuki Hiroki', 'Bìa mềm', 'Nhật Linh', '<p>&ldquo;Chiến lược của kẻ thắng&rdquo; tổng hợp 31 b&agrave;i học qu&acirc;n sự, đ&uacute;c kết từ lịch sử Đ&ocirc;ng t&acirc;y kim cổ trải d&agrave;i suốt ba ng&agrave;n năm. Những anh h&ugrave;ng mạnh nhất, lỗi lạc nhất lịch sử đều để lại cho hậu thế những b&agrave;i học để đời, từ Hannibal, Caesar, Gia C&aacute;t Lượng đến Napol&eacute;on, Oda Nobunaga, Toyotomi Hideyoshi, Tokugawa leyasu&hellip; Tất cả c&aacute;c kỹ năng tư duy, h&agrave;nh động của những vị tướng xuất sắc ấy đ&atilde; l&agrave;m thay đổi cả một giai đoạn lịch sử.</p>\r\n', '<p>&ldquo;Chiến lược của kẻ thắng&rdquo; tổng hợp 31 b&agrave;i học qu&acirc;n sự, đ&uacute;c kết từ lịch sử Đ&ocirc;ng t&acirc;y kim cổ trải d&agrave;i suốt ba ng&agrave;n năm. Những anh h&ugrave;ng mạnh nhất, lỗi lạc nhất lịch sử đều để lại cho hậu thế những b&agrave;i học để đời, từ Hannibal, Caesar, Gia C&aacute;t Lượng đến Napol&eacute;on, Oda Nobunaga, Toyotomi Hideyoshi, Tokugawa leyasu&hellip; Tất cả c&aacute;c kỹ năng tư duy, h&agrave;nh động của những vị tướng xuất sắc ấy đ&atilde; l&agrave;m thay đổi cả một giai đoạn lịch sử.</p>\r\n\r\n<p>Kh&ocirc;ng chỉ thay đổi trường đoạn lịch sử, những chiến thắng, s&aacute;ch lược ấy c&ograve;n t&aacute;c động tới chiến lược quản trị kinh doanh ng&agrave;y nay. Chủ nghĩa to&agrave;n cầu đang len lỏi v&agrave;o từng doanh nghiệp, Microft, Google, Amazon, Toyota, Uniqlo, 7-Eleven&hellip; Họ kh&ocirc;ng đứng b&ecirc;n ngo&agrave;i cuộc cạnh tranh thương mại. Họ cần t&igrave;m cho m&igrave;nh ch&igrave;a kh&oacute;a để th&agrave;nh c&ocirc;ng v&agrave; đứng vững trong d&ograve;ng chảy xu thế đ&oacute;.</p>\r\n', 2019, 400, 376);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dangkyemail`
--

CREATE TABLE `dangkyemail` (
  `id` int(100) NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `dangkyemail`
--

INSERT INTO `dangkyemail` (`id`, `email`) VALUES
(1, 'phamhongnghia@gmail.com'),
(2, 'hongnghia@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `mahd` int(100) NOT NULL,
  `tendangnhap` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `masp` int(100) NOT NULL,
  `hoten` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `sodienthoai` varchar(15) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `diachi` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tensp` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `ngaytao` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `trangthai` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL DEFAULT 'Đã xử lý',
  `giagoc` int(100) NOT NULL,
  `giamgia` int(100) NOT NULL,
  `soluong` int(100) NOT NULL,
  `thanhtien` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`mahd`, `tendangnhap`, `masp`, `hoten`, `sodienthoai`, `diachi`, `tensp`, `ngaytao`, `trangthai`, `giagoc`, `giamgia`, `soluong`, `thanhtien`) VALUES
(1, 'phamhongnghia', 1, 'Phạm Hồng Nghĩa', '0356156445', 'Đức Thạnh - Mộ Đức - Quảng Ngãi', 'Kỹ Năng Đàm Phán Hiệu Quả Trong Kinh Doanh', '2021-04-03', 'Đã xử lý', 129000, 50, 1, 64500),
(2, 'phamhongnghia', 3, 'Phạm Hồng Nghĩa', '', 'Đức Thạnh - Mộ Đức - Quảng Ngãi', 'Khi Hơi Thở Hóa Thinh Không', '2021-04-03', 'Đã xử lý', 109000, 20, 3, 261600),
(3, 'phamhongnghia', 12, 'Phạm Hồng Nghĩa', '', 'Đức Thạnh - Mộ Đức - Quảng Ngãi', 'Thuật Đắc Nhân Tâm Nâng Tầm Hiệu Suất', '2021-04-03', 'Đã xử lý', 119000, 50, 3, 178500),
(4, 'phamhongnghia', 12, 'Phạm Hồng Nghĩa', '', 'Đức Thạnh - Mộ Đức - Quảng Ngãi', 'Thuật Đắc Nhân Tâm Nâng Tầm Hiệu Suất', '2021-04-03', 'Đã xử lý', 119000, 50, 1, 59500),
(5, 'phamhongnghia', 22, 'Phạm Hồng Nghĩa', '0356156445', 'Đức Thạnh - Mộ Đức - Quảng Ngãi', 'Nghệ thuật giao tiếp nơi công sở', '2021-04-03', 'Đã xử lý', 110000, 50, 3, 165000),
(6, 'phamhongnghia', 12, 'Phạm Hồng Nghĩa', '0356156445', 'Đức Thạnh - Mộ Đức - Quảng Ngãi', 'Thuật Đắc Nhân Tâm Nâng Tầm Hiệu Suất', '2021-04-03', 'Đã xử lý', 119000, 50, 1, 59500);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `id` int(100) NOT NULL,
  `tendangnhap` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `masp` int(100) NOT NULL,
  `hoten` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `hinhanh` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `noidung` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `ngaydang` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `feedback`
--

INSERT INTO `feedback` (`id`, `tendangnhap`, `masp`, `hoten`, `hinhanh`, `noidung`, `ngaydang`) VALUES
(1, 'phamhongnghia', 3, 'Phạm Hồng Nghĩa', '512x512bb.jpg', 'Sách hay và ý nghĩa', '2021-04-03 21:41:44'),
(2, 'phamhongnghia', 3, 'Phạm Hồng Nghĩa', '512x512bb.jpg', 'Sách khá ok !!!', '2021-04-03 21:47:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `id` int(100) NOT NULL,
  `tendangnhap` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `masp` int(100) NOT NULL,
  `tensp` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `hinhanh` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `giagoc` int(100) NOT NULL,
  `giamgia` int(100) NOT NULL,
  `soluong` int(100) NOT NULL,
  `thanhtien` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `tendangnhap` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `matkhau` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `hoten` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `sodienthoai` varchar(15) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `diachi` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `hinhanh` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL DEFAULT 'account.png',
  `quyentruycap` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL DEFAULT 'member'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`tendangnhap`, `matkhau`, `hoten`, `email`, `sodienthoai`, `diachi`, `hinhanh`, `quyentruycap`) VALUES
('admin', '123', 'Admin', 'admin@gmail.com', '0356156443', 'Quang Ngai', 'account.png', 'member'),
('admin1', '123', 'Admin', 'bookshop@gmail.com', '0356156445', 'Quảng Ngãi', 'account.png', 'admin'),
('pduong', '12345', 'Pham Duong', 'phamhongnghia@gmail.com', '0356156443', 'Thanh Pho Quang Ngai - Quang Ngai', 'account.png', 'member'),
('phamhongnghia', '1234', 'Phạm Hồng Nghĩa', 'phamhongnghia@gmail.com', '0356156434', 'Đức Thạnh - Mộ Đức - Quảng Ngãi', '512x512bb.jpg', 'member');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `maloai` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tenloai` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`maloai`, `tenloai`) VALUES
('GKTK', 'Giáo khoa - tham khảo'),
('KHVT', 'Khoa học - viễn tưởng'),
('KTE', 'Kinh tế'),
('NNGU', 'Ngoại ngữ'),
('QLKD', 'Quản lý kinh doanh'),
('TEM', 'Trẻ em'),
('TLH', 'Tâm lý học'),
('TNHI', 'Thiếu nhi'),
('TSHK', 'Tiểu sử - hồi ký'),
('VH_NN', 'Văn học nước ngoài'),
('VH_TN', 'Văn học trong nước'),
('VPP', 'Văn phòng phẩm');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `masp` int(100) NOT NULL,
  `maloai` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tensp` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `hinhanh` varchar(500) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `giagoc` int(100) NOT NULL,
  `giamgia` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`masp`, `maloai`, `tensp`, `hinhanh`, `giagoc`, `giamgia`) VALUES
(1, 'QLKD', 'Kỹ Năng Đàm Phán Hiệu Quả Trong Kinh Doanh', 'damphanhieuqua.jpg', 129000, 50),
(2, 'TSHK', 'Titan - Gia Tộc Rockefeller', 'titan_2.jpg', 499000, 20),
(3, 'TSHK', 'Khi Hơi Thở Hóa Thinh Không', 'khihoithohoathinhkhong.jpg', 109000, 20),
(4, 'TSHK', 'Điệp Viên Hoàn Hảo X6 (Tái Bản 2019)', 'diepvienx6.jpg', 168000, 20),
(5, 'TSHK', 'Homo Deus - Lược Sử Tương Lai', 'homes_dues.jpg', 189000, 17),
(6, 'TSHK', 'Nhật Ký Đặng Thùy Trâm (Tái Bản 2018)', 'dangthuytram.jpg', 76000, 20),
(7, 'TSHK', 'Nhật Ký Phi Công Tiêm Kích', 'phicongtiemkich.jpg', 150000, 15),
(8, 'TSHK', 'Bị Theo Dõi - Bí Mật An Ninh Mạng', 'bitheodoi.jpg', 378000, 20),
(9, 'TSHK', 'Con Về', 'conve.jpg', 59000, 20),
(10, 'VH_TN', 'Từ Điển Tiếng “Em”', 'VH_tudientiengem.jpg', 69000, 20),
(11, 'VH_TN', 'Con Chim Xanh Biếc Bay Về - Tặng Kèm 6 Postcard', 'VH_conchimxanhbietbayve.jpg', 15000, 25),
(12, 'KTE', 'Thuật Đắc Nhân Tâm Nâng Tầm Hiệu Suất', 'dacnhantam.jpg', 119000, 50),
(13, 'VH_TN', 'Tô Bình Yên Vẽ Hạnh Phúc (Tái Bản 2020)', 'VH_tobinhyen.jpg', 78000, 20),
(14, 'VH_TN', 'Xin Chào Tình Yêu', 'VH_xinchaotinhyeu.jpg', 59000, 20),
(15, 'VH_TN', 'Vui Vẻ Không Quạu Nha', 'VH_vuivekoquau.jpg', 75000, 20),
(16, 'VH_TN', 'Nhà Giả Kim (Tái Bản 2020)', 'VH_nhagiakim.jpg', 79000, 15),
(17, 'VH_TN', 'Có Một Người Từng Là Tất Cả', 'VH_comotnguoitunglaall.jpg', 96000, 20),
(18, 'VH_TN', 'Dấu Xưa, Vui Lành - Bìa Cứng', 'VH_dauxua.jpg', 59000, 20),
(19, 'VH_TN', 'Dấu Chân Trên Cát (Tái Bản 2020)', 'VH_dauchantrencat.jpg', 148000, 20),
(20, 'VH_TN', 'Hai Số Phận - Bìa Cứng', 'VH_haisophan.jpg', 175000, 17),
(21, 'TNHI', 'Polar Bears Past Bedtime (Magic Tree House, No. 12)', 'polar.jpg', 105000, 15),
(22, 'TLH', 'Nghệ thuật giao tiếp nơi công sở', 'giaotiepcs.jpg', 110000, 50),
(23, 'TSHK', 'Đại học hay học đại', 'hocdaidaihoc.png', 129000, 50),
(24, 'TNHI', 'Hoàng tử bé - Tập 8', 'hoangtube.jpg', 49000, 50),
(25, 'QLKD', 'Chiến lược kẻ thắng', 'chienluockethang.jpg', 149000, 50);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `masp` (`masp`);

--
-- Chỉ mục cho bảng `dangkyemail`
--
ALTER TABLE `dangkyemail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`mahd`),
  ADD KEY `tendangnhap` (`tendangnhap`),
  ADD KEY `masp` (`masp`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tendangnhap` (`tendangnhap`),
  ADD KEY `masp` (`masp`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tendangnhap` (`tendangnhap`),
  ADD KEY `masp` (`masp`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`tendangnhap`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`maloai`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`masp`),
  ADD KEY `maloai` (`maloai`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `dangkyemail`
--
ALTER TABLE `dangkyemail`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `mahd` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `giohang`
--
ALTER TABLE `giohang`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `masp` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  ADD CONSTRAINT `chitietsanpham_ibfk_1` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`masp`);

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`tendangnhap`) REFERENCES `khachhang` (`tendangnhap`),
  ADD CONSTRAINT `donhang_ibfk_2` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`masp`);

--
-- Các ràng buộc cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`tendangnhap`) REFERENCES `khachhang` (`tendangnhap`),
  ADD CONSTRAINT `feedback_ibfk_2` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`masp`);

--
-- Các ràng buộc cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `giohang_ibfk_1` FOREIGN KEY (`tendangnhap`) REFERENCES `khachhang` (`tendangnhap`),
  ADD CONSTRAINT `giohang_ibfk_2` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`masp`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`maloai`) REFERENCES `loaisanpham` (`maloai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
