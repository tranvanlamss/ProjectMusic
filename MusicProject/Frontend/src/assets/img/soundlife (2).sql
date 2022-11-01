-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 17, 2022 lúc 11:10 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `soundlife`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `album_art` varchar(255) DEFAULT NULL,
  `album_artist` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL,
  `lyric` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `albums`
--

INSERT INTO `albums` (`id`, `album_art`, `album_artist`, `created_at`, `deleted`, `lyric`, `name`, `updated_at`) VALUES
(1, 'https://data.chiasenhac.com/data/cover/53/52471.jpg', 'Karik', '2022-10-14 16:39:52', b'0', 'Tôi lạc quan giữa đám đông\nNhưng khi một mình thì lại không\nCố tỏ ra là mình ổn\nNhưng sâu bên trong nước mắt là biển rộng\nLắm lúc chỉ muốn có ai đó dang tay ôm lấy tôi vào lòng\nCho tiếng cười trong mắt được vang vọng\nCô đơn một lần rồi khỏi những khoảng t', 'Thương', '2022-10-17 15:56:13'),
(2, 'https://data.chiasenhac.com/data/cover/53/52471.jpg', 'Karik', '2022-10-14 16:39:52', b'0', 'Tôi lạc quan giữa đám đông\nNhưng khi một mình thì lại không\nCố tỏ ra là mình ổn\nNhưng sâu bên trong nước mắt là biển rộng\nLắm lúc chỉ muốn có ai đó dang tay ôm lấy tôi vào lòng\nCho tiếng cười trong mắt được vang vọng\nCô đơn một lần rồi khỏi những khoảng t', 'Thương', '2022-10-17 15:56:13'),
(3, 'https://data.chiasenhac.com/data/artist_avatar/8/7458.jpg', 'OnlyC', '2022-10-14 16:39:52', b'0', 'Tôi lạc quan giữa đám đông\nNhưng khi một mình thì lại không\nCố tỏ ra là mình ổn\nNhưng sâu bên trong nước mắt là biển rộng\nLắm lúc chỉ muốn có ai đó dang tay ôm lấy tôi vào lòng\nCho tiếng cười trong mắt được vang vọng\nCô đơn một lần rồi khỏi những khoảng t', 'Não Cá Vàng', '2022-10-17 15:56:13'),
(4, 'https://data.chiasenhac.com/data/cover/124/123404.jpg', 'BinZ', '2022-10-14 16:39:52', b'0', 'Tôi lạc quan giữa đám đông\nNhưng khi một mình thì lại không\nCố tỏ ra là mình ổn\nNhưng sâu bên trong nước mắt là biển rộng\nLắm lúc chỉ muốn có ai đó dang tay ôm lấy tôi vào lòng\nCho tiếng cười trong mắt được vang vọng\nCô đơn một lần rồi khỏi những khoảng t', 'Big City Boi', '2022-10-17 15:56:13'),
(5, 'https://data.chiasenhac.com/data/artist_avatar/1/624.jpg', 'BinZ', '2022-10-14 16:39:52', b'0', 'Tôi lạc quan giữa đám đông\nNhưng khi một mình thì lại không\nCố tỏ ra là mình ổn\nNhưng sâu bên trong nước mắt là biển rộng\nLắm lúc chỉ muốn có ai đó dang tay ôm lấy tôi vào lòng\nCho tiếng cười trong mắt được vang vọng\nCô đơn một lần rồi khỏi những khoảng t', 'Sao Cũng Được', '2022-10-17 15:56:13'),
(6, 'https://data.chiasenhac.com/data/cover/138/138000.jpg', 'BinZ', '2022-10-14 16:39:52', b'0', 'Tôi lạc quan giữa đám đông\nNhưng khi một mình thì lại không\nCố tỏ ra là mình ổn\nNhưng sâu bên trong nước mắt là biển rộng\nLắm lúc chỉ muốn có ai đó dang tay ôm lấy tôi vào lòng\nCho tiếng cười trong mắt được vang vọng\nCô đơn một lần rồi khỏi những khoảng t', 'Cho Mình Em', '2022-10-17 15:56:13'),
(7, 'https://data.chiasenhac.com/data/cover/138/138000.jpg', 'BinZ', '2022-10-14 16:39:52', b'0', 'Tôi lạc quan giữa đám đông\nNhưng khi một mình thì lại không\nCố tỏ ra là mình ổn\nNhưng sâu bên trong nước mắt là biển rộng\nLắm lúc chỉ muốn có ai đó dang tay ôm lấy tôi vào lòng\nCho tiếng cười trong mắt được vang vọng\nCô đơn một lần rồi khỏi những khoảng t', 'ToGetHer', '2022-10-17 15:56:13'),
(8, 'https://data.chiasenhac.com/data/cover/62/61107.jpg', 'Sơn Tùng', '2022-10-14 16:39:52', b'0', 'Tôi lạc quan giữa đám đông\nNhưng khi một mình thì lại không\nCố tỏ ra là mình ổn\nNhưng sâu bên trong nước mắt là biển rộng\nLắm lúc chỉ muốn có ai đó dang tay ôm lấy tôi vào lòng\nCho tiếng cười trong mắt được vang vọng\nCô đơn một lần rồi khỏi những khoảng t', 'Chúng Ta Không Thuộc Về Nhau', '2022-10-17 15:56:13'),
(9, 'https://data.chiasenhac.com/data/cover/62/61107.jpg', 'Sơn Tùng', '2022-10-14 16:39:52', b'0', 'Tôi lạc quan giữa đám đông\nNhưng khi một mình thì lại không\nCố tỏ ra là mình ổn\nNhưng sâu bên trong nước mắt là biển rộng\nLắm lúc chỉ muốn có ai đó dang tay ôm lấy tôi vào lòng\nCho tiếng cười trong mắt được vang vọng\nCô đơn một lần rồi khỏi những khoảng t', 'Lạc Trôi', '2022-10-17 15:56:13'),
(10, 'https://data.chiasenhac.com/data/cover/87/86272.jpg', 'Sơn Tùng', '2022-10-14 16:39:52', b'0', 'Tôi lạc quan giữa đám đông\nNhưng khi một mình thì lại không\nCố tỏ ra là mình ổn\nNhưng sâu bên trong nước mắt là biển rộng\nLắm lúc chỉ muốn có ai đó dang tay ôm lấy tôi vào lòng\nCho tiếng cười trong mắt được vang vọng\nCô đơn một lần rồi khỏi những khoảng t', 'Cơn Mưa Ngang Qua', '2022-10-17 15:56:13'),
(11, 'https://image.thanhnien.vn/w1024/Uploaded/2022/puqgfdmzs.co/2020_02_19/nhacuatui/thanhnien-bray-nhaccuatui1_czwf.jpg', 'Bray', '2022-10-14 16:39:52', b'0', 'Tôi lạc quan giữa đám đông\nNhưng khi một mình thì lại không\nCố tỏ ra là mình ổn\nNhưng sâu bên trong nước mắt là biển rộng\nLắm lúc chỉ muốn có ai đó dang tay ôm lấy tôi vào lòng\nCho tiếng cười trong mắt được vang vọng\nCô đơn một lần rồi khỏi những khoảng t', 'Loser2Lover', '2022-10-17 15:56:13'),
(12, 'https://avatar-ex-swe.nixcdn.com/playlist/2020/02/13/4/1/3/6/1581612119736_500.jpg', 'Bray', '2022-10-14 16:39:52', b'0', 'Tôi lạc quan giữa đám đông\nNhưng khi một mình thì lại không\nCố tỏ ra là mình ổn\nNhưng sâu bên trong nước mắt là biển rộng\nLắm lúc chỉ muốn có ai đó dang tay ôm lấy tôi vào lòng\nCho tiếng cười trong mắt được vang vọng\nCô đơn một lần rồi khỏi những khoảng t', 'Do For Love', '2022-10-17 15:56:13'),
(13, 'https://avatar-ex-swe.nixcdn.com/playlist/2013/12/04/a/c/b/4/1386150618250_500.jpg', 'Bray', '2022-10-14 16:39:52', b'0', 'Tôi lạc quan giữa đám đông\nNhưng khi một mình thì lại không\nCố tỏ ra là mình ổn\nNhưng sâu bên trong nước mắt là biển rộng\nLắm lúc chỉ muốn có ai đó dang tay ôm lấy tôi vào lòng\nCho tiếng cười trong mắt được vang vọng\nCô đơn một lần rồi khỏi những khoảng t', 'Reality Check', '2022-10-17 15:56:13'),
(14, 'https://allvpop.com/wp-content/uploads/2019/11/27_300x300.jpg', 'Đen', '2022-10-14 16:39:52', b'0', 'Tôi lạc quan giữa đám đông\nNhưng khi một mình thì lại không\nCố tỏ ra là mình ổn\nNhưng sâu bên trong nước mắt là biển rộng\nLắm lúc chỉ muốn có ai đó dang tay ôm lấy tôi vào lòng\nCho tiếng cười trong mắt được vang vọng\nCô đơn một lần rồi khỏi những khoảng t', 'Lối Nhỏ', '2022-10-17 15:56:13'),
(15, 'https://avatar-ex-swe.nixcdn.com/singer/avatar/2020/08/06/9/a/7/b/1596692465856_600.jpg', 'Đen', '2022-10-14 16:39:52', b'0', 'Tôi lạc quan giữa đám đông\nNhưng khi một mình thì lại không\nCố tỏ ra là mình ổn\nNhưng sâu bên trong nước mắt là biển rộng\nLắm lúc chỉ muốn có ai đó dang tay ôm lấy tôi vào lòng\nCho tiếng cười trong mắt được vang vọng\nCô đơn một lần rồi khỏi những khoảng t', 'Đi Về Nhà', '2022-10-17 15:56:13'),
(16, 'https://avatar-ex-swe.nixcdn.com/singer/avatar/2020/08/06/9/a/7/b/1596692465856_600.jpg', 'Đen', '2022-10-14 16:39:52', b'0', 'Tôi lạc quan giữa đám đông\nNhưng khi một mình thì lại không\nCố tỏ ra là mình ổn\nNhưng sâu bên trong nước mắt là biển rộng\nLắm lúc chỉ muốn có ai đó dang tay ôm lấy tôi vào lòng\nCho tiếng cười trong mắt được vang vọng\nCô đơn một lần rồi khỏi những khoảng t', 'Ai Muốn Nghe Không', '2022-10-17 15:56:13'),
(17, 'https://avatar-ex-swe.nixcdn.com/singer/avatar/2020/08/06/9/a/7/b/1596692465856_600.jpg', 'Đen', '2022-10-14 16:39:52', b'0', 'Tôi lạc quan giữa đám đông\nNhưng khi một mình thì lại không\nCố tỏ ra là mình ổn\nNhưng sâu bên trong nước mắt là biển rộng\nLắm lúc chỉ muốn có ai đó dang tay ôm lấy tôi vào lòng\nCho tiếng cười trong mắt được vang vọng\nCô đơn một lần rồi khỏi những khoảng t', 'Bài Này Chill Phết', '2022-10-17 15:56:13'),
(18, 'https://avatar-ex-swe.nixcdn.com/singer/avatar/2020/08/06/9/a/7/b/1596692465856_600.jpg', 'Đen', '2022-10-14 16:39:52', b'0', 'Tôi lạc quan giữa đám đông\nNhưng khi một mình thì lại không\nCố tỏ ra là mình ổn\nNhưng sâu bên trong nước mắt là biển rộng\nLắm lúc chỉ muốn có ai đó dang tay ôm lấy tôi vào lòng\nCho tiếng cười trong mắt được vang vọng\nCô đơn một lần rồi khỏi những khoảng t', 'Diễn Viên Tồi', '2022-10-17 15:56:13'),
(19, 'https://avatar-ex-swe.nixcdn.com/singer/avatar/2017/08/28/1/a/1/b/1503913422094_600.jpg', 'Tuấn Hưng', '2022-10-14 16:39:52', b'0', 'Tôi lạc quan giữa đám đông\nNhưng khi một mình thì lại không\nCố tỏ ra là mình ổn\nNhưng sâu bên trong nước mắt là biển rộng\nLắm lúc chỉ muốn có ai đó dang tay ôm lấy tôi vào lòng\nCho tiếng cười trong mắt được vang vọng\nCô đơn một lần rồi khỏi những khoảng t', 'Anh Nhớ Em', '2022-10-17 15:56:13'),
(20, 'https://avatar-ex-swe.nixcdn.com/singer/avatar/2016/06/13/7/5/2/a/1465802053724_600.jpg', 'Duy Mạnh', '2022-10-14 16:39:52', b'0', 'Tôi lạc quan giữa đám đông\nNhưng khi một mình thì lại không\nCố tỏ ra là mình ổn\nNhưng sâu bên trong nước mắt là biển rộng\nLắm lúc chỉ muốn có ai đó dang tay ôm lấy tôi vào lòng\nCho tiếng cười trong mắt được vang vọng\nCô đơn một lần rồi khỏi những khoảng t', 'Ta Đâu Có Say', '2022-10-17 15:56:13'),
(21, 'https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_jpeg/avatars/7/b/d/9/7bd9bdcf540f6458061edc345d7fc356.jpg', 'Hoài Lâm', '2022-10-14 16:39:52', b'0', 'Tôi lạc quan giữa đám đông\nNhưng khi một mình thì lại không\nCố tỏ ra là mình ổn\nNhưng sâu bên trong nước mắt là biển rộng\nLắm lúc chỉ muốn có ai đó dang tay ôm lấy tôi vào lòng\nCho tiếng cười trong mắt được vang vọng\nCô đơn một lần rồi khỏi những khoảng t', 'Hoa Nở Không Màu', '2022-10-17 15:56:13'),
(22, 'https://media.yeah1.com/files/nguyetthao/2022/08/16/mono-1-220823.jpg', 'Mono', '2022-10-14 16:39:52', b'0', 'Tôi lạc quan giữa đám đông\nNhưng khi một mình thì lại không\nCố tỏ ra là mình ổn\nNhưng sâu bên trong nước mắt là biển rộng\nLắm lúc chỉ muốn có ai đó dang tay ôm lấy tôi vào lòng\nCho tiếng cười trong mắt được vang vọng\nCô đơn một lần rồi khỏi những khoảng t', 'Quên Anh Đi', '2022-10-17 15:56:13'),
(23, 'https://sohanews.sohacdn.com/2019/10/21/5-15716275293431128280248.jpg', 'Hoàng Thùy Linh', '2022-10-14 16:39:52', b'0', 'Tôi lạc quan giữa đám đông\nNhưng khi một mình thì lại không\nCố tỏ ra là mình ổn\nNhưng sâu bên trong nước mắt là biển rộng\nLắm lúc chỉ muốn có ai đó dang tay ôm lấy tôi vào lòng\nCho tiếng cười trong mắt được vang vọng\nCô đơn một lần rồi khỏi những khoảng t', 'Hoàng', '2022-10-17 15:56:13'),
(24, 'https://avatar-ex-swe.nixcdn.com/song/share/2022/06/14/c/2/b/c/1655187826465.jpg', 'Miu Lê', '2022-10-14 16:39:52', b'0', 'Tôi lạc quan giữa đám đông\nNhưng khi một mình thì lại không\nCố tỏ ra là mình ổn\nNhưng sâu bên trong nước mắt là biển rộng\nLắm lúc chỉ muốn có ai đó dang tay ôm lấy tôi vào lòng\nCho tiếng cười trong mắt được vang vọng\nCô đơn một lần rồi khỏi những khoảng t', 'Vì Mẹ Anh Bắt Chia tay', '2022-10-17 15:56:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `deleted` bit(1) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `authors`
--

INSERT INTO `authors` (`id`, `deleted`, `image_url`, `name`) VALUES
(1, b'0', 'https://data.chiasenhac.com/data/artist_avatar/2/1355.jpg', 'Karik'),
(2, b'0', 'https://data.chiasenhac.com/data/artist_avatar/8/7458.jpg', 'OnlyC'),
(3, b'0', 'https://data.chiasenhac.com/data/artist_avatar/1/624.jpg', 'BinZ'),
(4, b'0', 'https://data.chiasenhac.com/data/artist_avatar/8/7020.jpg', 'Sơn Tùng MTP'),
(5, b'0', 'https://data.chiasenhac.com/data/artist_avatar/2/1942.jpg', 'Hoài Lâm'),
(6, b'0', 'https://media-cdn-v2.laodong.vn/storage/newsportal/2020/8/8/826173/Duy_Manh-1.jpg', 'Duy Mạnh'),
(7, b'0', 'https://nld.mediacdn.vn/291774122806476800/2021/7/26/tuan-hung-khuyen-ca-si-tre-khong-nen-lam-dung-cover-1-1627263641056652420635.jpg', 'Tuấn Hưng'),
(8, b'0', 'https://media.travelmag.vn/files/content/2022/08/07/mono-8-20182358.jpg', 'Mono'),
(9, b'0', 'https://images.genius.com/884dc6b43b60caacfad10e21f3fb5eab.958x958x1.jpg', 'Đen Vâu'),
(10, b'0', 'https://yt3.ggpht.com/ytc/AMLnZu_Dy4GGzksZRo6du7PuuonW5U1c7irsqYDnmnQJOQ=s900-c-k-c0x00ffffff-no-rj', 'Huy R'),
(11, b'0', 'data:image/jpeg;base64', 'Bray'),
(12, b'0', 'https://laplanhuocmo.com.vn/wp-content/uploads/2022/01/hoang-thuy-linh-xinh-dep-vay-den.jpg', 'Hoàng Thùy Linh'),
(13, b'0', 'https://kenh14cdn.com/thumb_w/660/203336854389633024/2022/6/24/photo-1-1656037498295719253178.jpg', 'Miu Lê');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment_mv`
--

CREATE TABLE `comment_mv` (
  `id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `mv_id` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `comment_mv`
--

INSERT INTO `comment_mv` (`id`, `created_at`, `deleted`, `description`, `mv_id`, `updated_at`, `user_id`) VALUES
(1, '2022-10-14 22:50:52', b'0', 'Lâu lắm mới nghe được thứ âm nhạc chất mà chill như này !!! ', 1, '2022-10-14 22:51:05', 1),
(2, '2022-10-14 22:50:52', b'0', 'Mv cực kì cuốn từ ca từ', 2, '2022-10-14 22:51:05', 1),
(3, '2022-10-14 22:50:52', b'0', 'Luôn luôn thích sự kết hợp của Karik và OnlyC', 3, '2022-10-14 22:51:05', 1),
(4, '2022-10-14 22:50:52', b'0', 'vừa chill vừa chất', 4, '2022-10-14 22:51:05', 1),
(5, '2022-10-14 22:50:52', b'0', 'Hay quá anh ơi. Mong âm nhạc anh sẽ ngày càng phát triển hơn nữa ạ', 5, '2022-10-14 22:51:05', 1),
(6, '2022-10-14 22:50:52', b'0', 'MV cực đỉnh luôn', 6, '2022-10-14 22:51:05', 1),
(7, '2022-10-14 22:50:52', b'0', 'Mình bị cuốn hút ngay từ những giai điệu đầu tiên', 7, '2022-10-14 22:51:05', 1),
(8, '2022-10-14 22:50:52', b'0', 'Nghe càng kỹ mình còn có thể cảm nhận được thêm chút âm hưởng dân gian pha thêm chút nhạc điện tử nữa', 8, '2022-10-14 22:51:05', 1),
(9, '2022-10-14 22:50:52', b'0', 'Về phần MV thì mình chỉ có thể \"Wow\".', 9, '2022-10-14 22:51:05', 1),
(10, '2022-10-14 22:50:52', b'0', 'Nó cuốn hút mình từ đầu đến cuối', 10, '2022-10-14 22:51:05', 1),
(11, '2022-10-14 22:50:52', b'0', 'Đã nghe, rất thấm, cảm xúc dâng trào rớt nước mắt cảm nhận qua từng lời ca từng câu rap', 11, '2022-10-14 22:51:05', 1),
(12, '2022-10-14 22:50:52', b'0', 'Rapcoustic ngày càng tốt hơn từ quay phim đến âm thanh <3', 12, '2022-10-14 22:51:05', 1),
(13, '2022-10-14 22:50:52', b'0', 'Rapcoustic ngày càng tốt hơn từ quay phim đến âm thanh <3', 13, '2022-10-14 22:51:05', 1),
(14, '2022-10-14 22:50:52', b'0', 'mỗi người trình bày nhạc và hát rất hay. Rất thich nghe nhạc của nhóm mình', 14, '2022-10-14 22:51:05', 1),
(15, '2022-10-14 22:50:52', b'0', 'Thích sự kết hợp này càng nghe càng ghiền', 15, '2022-10-14 22:51:05', 1),
(16, '2022-10-14 22:50:52', b'0', ' Nhớ hồi đó ra hàng đĩa mua về', 16, '2022-10-14 22:51:05', 1),
(17, '2022-10-14 22:50:52', b'0', 'Bao giờ em biết- Bài hát gắn với cả thời niên thiếu của tôi', 17, '2022-10-14 22:51:05', 1),
(18, '2022-10-14 22:50:52', b'0', 'Hay thật, MV đẹp , hát chất, mong sẽ có nhiều những sản phẩm như vậy ️', 18, '2022-10-14 22:51:05', 1),
(19, '2022-10-14 22:50:52', b'0', 'Quá hay a đen vâu ơi. Từ khi biết đến nhạc của a thì ngày nào e cũng nge. Sáng khi thức dậy', 19, '2022-10-14 22:51:05', 1),
(20, '2022-10-14 22:50:52', b'0', 'Từ khi biết đến nhạc của a thì ngày nào e cũng nge. Sáng khi thức dậy. Tối khi đi ngủ. Và chỉ tìm nhạc của a khi a đi hát live ở đường phố hay là các tụ điểm cf các chương trình.', 20, '2022-10-14 22:51:05', 1),
(21, '2022-10-14 22:50:52', b'0', 'A thật chất và gần gũi. A chất như thứ nhạc a đang chơi và như cách sống a sống vậy', 21, '2022-10-14 22:51:05', 1),
(22, '2022-10-14 22:50:52', b'0', 'A chỉ là người bình thường  thường đến mức ko thể nào thường hơn. Vẫn đi làm vẫn lao động đêm nằm co mình trên chiếc giường đơn', 22, '2022-10-14 22:51:05', 1),
(23, '2022-10-14 22:50:52', b'0', 'A đúng chất nghệ sĩ  lun. Rất bụi ', 23, '2022-10-14 22:51:05', 1),
(24, '2022-10-14 22:50:52', b'0', 'Bao giờ em biết- Bài hát gắn với cả thời niên thiếu của tôi', 24, '2022-10-17 15:59:07', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment_songs`
--

CREATE TABLE `comment_songs` (
  `id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `song_id` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `comment_songs`
--

INSERT INTO `comment_songs` (`id`, `created_at`, `deleted`, `description`, `song_id`, `updated_at`, `user_id`) VALUES
(1, '2022-10-14 22:50:52', b'0', 'Lâu lắm mới nghe được thứ âm nhạc chất mà chill như này !!! ', 1, '2022-10-14 22:51:05', 1),
(2, '2022-10-14 22:50:52', b'0', 'Mv cực kì cuốn từ ca từ', 2, '2022-10-14 22:51:05', 1),
(3, '2022-10-14 22:50:52', b'0', 'Luôn luôn thích sự kết hợp của Karik và OnlyC', 3, '2022-10-14 22:51:05', 1),
(4, '2022-10-14 22:50:52', b'0', 'vừa chill vừa chất', 4, '2022-10-14 22:51:05', 1),
(5, '2022-10-14 22:50:52', b'0', 'Hay quá anh ơi. Mong âm nhạc anh sẽ ngày càng phát triển hơn nữa ạ', 5, '2022-10-14 22:51:05', 1),
(6, '2022-10-14 22:50:52', b'0', 'MV cực đỉnh luôn', 6, '2022-10-14 22:51:05', 1),
(7, '2022-10-14 22:50:52', b'0', 'Mình bị cuốn hút ngay từ những giai điệu đầu tiên', 7, '2022-10-14 22:51:05', 1),
(8, '2022-10-14 22:50:52', b'0', 'Nghe càng kỹ mình còn có thể cảm nhận được thêm chút âm hưởng dân gian pha thêm chút nhạc điện tử nữa', 8, '2022-10-14 22:51:05', 1),
(9, '2022-10-14 22:50:52', b'0', 'Về phần MV thì mình chỉ có thể \"Wow\".', 9, '2022-10-14 22:51:05', 1),
(10, '2022-10-14 22:50:52', b'0', 'Nó cuốn hút mình từ đầu đến cuối', 10, '2022-10-14 22:51:05', 1),
(11, '2022-10-14 22:48:48', b'0', 'Đã nghe, rất thấm, cảm xúc dâng trào rớt nước mắt cảm nhận qua từng lời ca từng câu rap', 11, '2022-10-17 15:31:28', 1),
(12, '2022-10-14 22:48:48', b'0', 'Rapcoustic ngày càng tốt hơn từ quay phim đến âm thanh <3', 12, '2022-10-17 15:31:28', 1),
(13, '2022-10-14 22:48:48', b'0', 'Rapcoustic ngày càng tốt hơn từ quay phim đến âm thanh <3', 13, '2022-10-17 15:37:56', 1),
(14, '2022-10-14 22:48:48', b'0', 'mỗi người trình bày nhạc và hát rất hay. Rất thich nghe nhạc của nhóm mình', 14, '2022-10-17 15:31:28', 1),
(15, '2022-10-14 22:48:48', b'0', 'Thích sự kết hợp này càng nghe càng ghiền', 15, '2022-10-17 15:31:28', 1),
(16, '2022-10-14 22:48:48', b'0', ' Nhớ hồi đó ra hàng đĩa mua về', 14, '2022-10-17 15:38:57', 1),
(17, '2022-10-14 22:48:48', b'0', 'Bao giờ em biết- Bài hát gắn với cả thời niên thiếu của tôi', 17, '2022-10-17 15:31:28', 1),
(18, '2022-10-14 22:48:48', b'0', 'Hay thật, MV đẹp , hát chất, mong sẽ có nhiều những sản phẩm như vậy ️', 18, '2022-10-17 15:31:28', 1),
(19, '2022-10-14 22:48:48', b'0', 'Quá hay a đen vâu ơi. Từ khi biết đến nhạc của a thì ngày nào e cũng nge. Sáng khi thức dậy', 19, '2022-10-17 15:31:28', 1),
(20, '2022-10-14 22:48:48', b'0', 'Từ khi biết đến nhạc của a thì ngày nào e cũng nge. Sáng khi thức dậy. Tối khi đi ngủ. Và chỉ tìm nhạc của a khi a đi hát live ở đường phố hay là các tụ điểm cf các chương trình.', 20, '2022-10-17 15:31:28', 1),
(21, '2022-10-14 22:48:48', b'0', 'A thật chất và gần gũi. A chất như thứ nhạc a đang chơi và như cách sống a sống vậy', 21, '2022-10-17 15:31:28', 1),
(22, '2022-10-14 22:48:48', b'0', 'A chỉ là người bình thường  thường đến mức ko thể nào thường hơn. Vẫn đi làm vẫn lao động đêm nằm co mình trên chiếc giường đơn', 22, '2022-10-17 15:31:28', 1),
(23, '2022-10-14 22:48:48', b'0', 'A đúng chất nghệ sĩ  lun. Rất bụi ', 23, '2022-10-17 15:31:28', 1),
(24, '2022-10-14 22:48:48', b'0', 'Bao giờ em biết- Bài hát gắn với cả thời niên thiếu của tôi', 24, '2022-10-17 15:31:28', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `filedb`
--

CREATE TABLE `filedb` (
  `id` varchar(255) NOT NULL,
  `data` longblob DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `genres`
--

INSERT INTO `genres` (`id`, `created_at`, `deleted`, `image_url`, `name`, `updated_at`) VALUES
(1, '2022-10-14 22:41:24', b'0', 'https://i.pinimg.com/originals/b1/ea/a3/b1eaa31950db4c940fb439c6107dcf30.jpg', 'Mới Gần đây', '2022-10-14 22:41:49'),
(2, '2022-10-14 22:41:24', b'0', 'https://i.pinimg.com/originals/b1/ea/a3/b1eaa31950db4c940fb439c6107dcf30.jpg', 'Hoài Niệm', '2022-10-14 22:41:49'),
(3, '2022-10-14 22:41:24', b'0', 'https://i.pinimg.com/originals/b1/ea/a3/b1eaa31950db4c940fb439c6107dcf30.jpg', 'Bản Phát Hành Mới Nhất', '2022-10-14 22:41:49'),
(4, '2022-10-14 22:41:24', b'0', 'https://i.pinimg.com/originals/b1/ea/a3/b1eaa31950db4c940fb439c6107dcf30.jpg', 'Tâm Trạng', '2022-10-14 22:41:49'),
(5, '2022-10-14 22:41:24', b'0', 'https://i.pinimg.com/originals/b1/ea/a3/b1eaa31950db4c940fb439c6107dcf30.jpg', 'Vui Vẻ', '2022-10-14 22:41:49'),
(6, '2022-10-14 22:41:24', b'0', 'https://i.pinimg.com/originals/b1/ea/a3/b1eaa31950db4c940fb439c6107dcf30.jpg', 'Thư Dãn', '2022-10-14 22:41:49'),
(7, '2022-10-14 22:41:24', b'0', 'https://i.pinimg.com/originals/b1/ea/a3/b1eaa31950db4c940fb439c6107dcf30.jpg', 'Tâp Trung ', '2022-10-14 22:41:49'),
(8, '2022-10-14 22:41:24', b'0', 'https://i.pinimg.com/originals/b1/ea/a3/b1eaa31950db4c940fb439c6107dcf30.jpg', 'Hát Theo', '2022-10-14 22:41:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `like_mv`
--

CREATE TABLE `like_mv` (
  `id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL,
  `like_mv` int(11) NOT NULL,
  `mv_id` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `like_mv`
--

INSERT INTO `like_mv` (`id`, `created_at`, `deleted`, `like_mv`, `mv_id`, `updated_at`, `user_id`) VALUES
(1, '2022-10-14 22:48:11', b'0', 1, 1, '2022-10-14 22:48:16', 1),
(2, '2022-10-14 22:48:11', b'0', 2, 2, '2022-10-14 22:48:16', 1),
(3, '2022-10-14 22:48:11', b'0', 3, 3, '2022-10-14 22:48:16', 1),
(4, '2022-10-14 22:48:11', b'0', 4, 4, '2022-10-14 22:48:16', 1),
(5, '2022-10-14 22:48:11', b'0', 5, 5, '2022-10-14 22:48:16', 1),
(6, '2022-10-14 22:48:11', b'0', 6, 6, '2022-10-14 22:48:16', 1),
(7, '2022-10-14 22:48:11', b'0', 7, 7, '2022-10-14 22:48:16', 1),
(8, '2022-10-14 22:48:11', b'0', 8, 8, '2022-10-14 22:48:16', 1),
(9, '2022-10-14 22:48:11', b'0', 9, 9, '2022-10-14 22:48:16', 1),
(10, '2022-10-14 22:48:11', b'0', 10, 10, '2022-10-14 22:48:16', 1),
(11, '2022-10-14 22:48:11', b'0', 11, 11, '2022-10-14 22:48:16', 1),
(12, '2022-10-14 22:48:11', b'0', 12, 12, '2022-10-14 22:48:16', 1),
(13, '2022-10-14 22:48:11', b'0', 13, 13, '2022-10-14 22:48:16', 1),
(14, '2022-10-14 22:48:11', b'0', 14, 14, '2022-10-14 22:48:16', 1),
(15, '2022-10-14 22:48:11', b'0', 15, 15, '2022-10-14 22:48:16', 1),
(16, '2022-10-14 22:48:11', b'0', 16, 16, '2022-10-14 22:48:16', 1),
(17, '2022-10-14 22:48:11', b'0', 17, 17, '2022-10-14 22:48:16', 1),
(18, '2022-10-14 22:48:11', b'0', 18, 18, '2022-10-14 22:48:16', 1),
(19, '2022-10-14 22:48:11', b'0', 19, 19, '2022-10-14 22:48:16', 1),
(20, '2022-10-14 22:48:11', b'0', 20, 20, '2022-10-14 22:48:16', 1),
(21, '2022-10-14 22:48:11', b'0', 21, 21, '2022-10-14 22:48:16', 1),
(22, '2022-10-14 22:48:11', b'0', 22, 22, '2022-10-14 22:48:16', 1),
(23, '2022-10-14 22:48:11', b'0', 23, 23, '2022-10-14 22:48:16', 1),
(24, '2022-10-14 22:48:11', b'0', 24, 24, '2022-10-14 22:48:16', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `like_songs`
--

CREATE TABLE `like_songs` (
  `id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL,
  `like_song` int(11) NOT NULL,
  `song_id` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `like_songs`
--

INSERT INTO `like_songs` (`id`, `created_at`, `deleted`, `like_song`, `song_id`, `updated_at`, `user_id`) VALUES
(1, '2022-10-14 22:47:12', b'0', 1, 1, '2022-10-14 22:47:15', 1),
(2, '2022-10-14 22:47:12', b'0', 2, 2, '2022-10-14 22:47:15', 1),
(3, '2022-10-14 22:47:12', b'0', 3, 3, '2022-10-14 22:47:15', 1),
(4, '2022-10-14 22:47:12', b'0', 4, 4, '2022-10-14 22:47:15', 1),
(5, '2022-10-14 22:47:12', b'0', 5, 5, '2022-10-14 22:47:15', 1),
(6, '2022-10-14 22:47:12', b'0', 6, 6, '2022-10-14 22:47:15', 1),
(7, '2022-10-14 22:47:12', b'0', 7, 7, '2022-10-14 22:47:15', 1),
(8, '2022-10-14 22:47:12', b'0', 8, 8, '2022-10-14 22:47:15', 1),
(9, '2022-10-14 22:47:12', b'0', 9, 9, '2022-10-14 22:47:15', 1),
(10, '2022-10-14 22:47:12', b'0', 10, 10, '2022-10-14 22:47:15', 1),
(11, '2022-10-14 22:47:12', b'0', 11, 11, '2022-10-14 22:47:15', 1),
(12, '2022-10-14 22:47:12', b'0', 12, 12, '2022-10-14 22:47:15', 1),
(13, '2022-10-14 22:47:12', b'0', 13, 13, '2022-10-14 22:47:15', 1),
(14, '2022-10-14 22:47:12', b'0', 14, 14, '2022-10-14 22:47:15', 1),
(15, '2022-10-14 22:47:12', b'0', 15, 15, '2022-10-14 22:47:15', 1),
(16, '2022-10-14 22:47:12', b'0', 16, 16, '2022-10-14 22:47:15', 1),
(17, '2022-10-14 22:47:12', b'0', 17, 17, '2022-10-14 22:47:15', 1),
(18, '2022-10-14 22:47:12', b'0', 18, 18, '2022-10-14 22:47:15', 1),
(19, '2022-10-14 22:47:12', b'0', 19, 19, '2022-10-14 22:47:15', 1),
(20, '2022-10-14 22:47:12', b'0', 20, 20, '2022-10-14 22:47:15', 1),
(21, '2022-10-14 22:47:12', b'0', 21, 21, '2022-10-14 22:47:15', 1),
(22, '2022-10-14 22:47:12', b'0', 22, 22, '2022-10-14 22:47:15', 1),
(23, '2022-10-14 22:47:12', b'0', 23, 23, '2022-10-14 22:47:15', 1),
(24, '2022-10-14 22:47:12', b'0', 24, 24, '2022-10-17 16:09:41', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mv`
--

CREATE TABLE `mv` (
  `id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `video_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `mv`
--

INSERT INTO `mv` (`id`, `created_at`, `deleted`, `name`, `thumbnail`, `updated_at`, `user_id`, `video_url`) VALUES
(1, '2022-10-14 22:34:58', b'0', 'Mặt Mộc', 'https://avatar-ex-swe.nixcdn.com/song/2022/08/15/e/8/c/1/1660550672437_640.jpg', '2022-10-14 22:35:19', 1, 'https://file-examples.com/storage/feb2e515cc6339d7ba1ffcd/2017/04/file_example_MP4_1920_18MG.mp4'),
(2, '2022-10-14 22:34:58', b'0', 'Người Việt Nam', 'https://data.chiasenhac.com/data/cover/69/68708.jpg', '2022-10-14 22:35:19', 1, 'https://file-examples.com/storage/feb2e515cc6339d7ba1ffcd/2017/04/file_example_MP4_1920_18MG.mp4'),
(3, '2022-10-14 22:34:58', b'0', 'Có Lẽ Anh Chưa Từng', 'https://data.chiasenhac.com/data/cover/139/138119.jpg', '2022-10-14 22:35:19', 1, 'https://file-examples.com/storage/feb2e515cc6339d7ba1ffcd/2017/04/file_example_MP4_1920_18MG.mp4'),
(4, '2022-10-14 22:34:58', b'0', 'Khu Tao Sống', 'https://data.chiasenhac.com/data/cover/137/136933.jpg', '2022-10-14 22:35:19', 1, 'https://file-examples.com/storage/feb2e515cc6339d7ba1ffcd/2017/04/file_example_MP4_1920_18MG.mp4'),
(5, '2022-10-14 22:34:58', b'0', 'Đến Ngày xa em', 'https://data.chiasenhac.com/data/cover/58/57668.jpg', '2022-10-14 22:35:19', 1, 'https://file-examples.com/storage/feb2e515cc6339d7ba1ffcd/2017/04/file_example_MP4_1920_18MG.mp4'),
(6, '2022-10-14 22:34:58', b'0', 'Yêu Là Tha Thu', 'https://data.chiasenhac.com/data/cover/71/70566.jpg', '2022-10-14 22:35:19', 1, 'https://file-examples.com/storage/feb2e515cc6339d7ba1ffcd/2017/04/file_example_MP4_1920_18MG.mp4'),
(7, '2022-10-14 22:34:58', b'0', 'BlackJack', 'https://data.chiasenhac.com/data/cover/132/131853.jpg', '2022-10-14 22:35:19', 1, 'https://file-examples.com/storage/feb2e515cc6339d7ba1ffcd/2017/04/file_example_MP4_1920_18MG.mp4'),
(8, '2022-10-14 22:34:58', b'0', 'Freaky Squad', 'https://data.chiasenhac.com/data/cover/151/150771.jpg', '2022-10-14 22:35:19', 1, 'https://file-examples.com/storage/feb2e515cc6339d7ba1ffcd/2017/04/file_example_MP4_1920_18MG.mp4'),
(9, '2022-10-14 22:34:58', b'0', 'Big City Boi', 'https://data.chiasenhac.com/data/cover/124/123404.jpg', '2022-10-14 22:35:19', 1, 'https://file-examples.com/storage/feb2e515cc6339d7ba1ffcd/2017/04/file_example_MP4_1920_18MG.mp4'),
(10, '2022-10-14 22:34:58', b'0', 'Don\'t Break My Heart', 'https://data.chiasenhac.com/data/cover/158/157403.jpg', '2022-10-14 22:35:19', 1, 'https://file-examples.com/storage/feb2e515cc6339d7ba1ffcd/2017/04/file_example_MP4_1920_18MG.mp4'),
(11, '2022-10-14 22:34:58', b'0', 'Đi Về Nhà', 'https://vtv1.mediacdn.vn/thumb_w/650/2020/12/19/nkk2664-1608348105952437410015.jpg', '2022-10-14 22:35:19', 1, 'https://file-examples.com/storage/feb2e515cc6339d7ba1ffcd/2017/04/file_example_MP4_1920_18MG.mp4'),
(12, '2022-10-14 22:34:58', b'0', 'Trốn Tìm', 'https://media-cdn-v2.laodong.vn/Storage/NewsPortal/2021/5/13/909067/D2-01.jpg', '2022-10-14 22:35:19', 1, 'https://file-examples.com/storage/feb2e515cc6339d7ba1ffcd/2017/04/file_example_MP4_1920_18MG.mp4'),
(13, '2022-10-14 22:34:58', b'0', 'Nơi  Này Có Anh', 'https://i.ytimg.com/vi/FN7ALfpGxiI/maxresdefault.jpg', '2022-10-14 22:35:19', 1, 'https://file-examples.com/storage/feb2e515cc6339d7ba1ffcd/2017/04/file_example_MP4_1920_18MG.mp4'),
(14, '2022-10-14 22:34:58', b'0', 'Muộn Rồi Mà Sao Còn', 'https://i.ytimg.com/vi/xypzmu5mMPY/maxresdefault.jpg', '2022-10-14 22:35:19', 1, 'https://file-examples.com/storage/feb2e515cc6339d7ba1ffcd/2017/04/file_example_MP4_1920_18MG.mp4'),
(15, '2022-10-14 22:34:58', b'0', 'Chúng Ta Của Hiện Tại', 'https://media.vov.vn/sites/default/files/styles/large/public/2021-02/chungtacuahientai.jpg', '2022-10-14 22:35:19', 1, 'https://file-examples.com/storage/feb2e515cc6339d7ba1ffcd/2017/04/file_example_MP4_1920_18MG.mp4'),
(16, '2022-10-14 22:34:58', b'0', 'Hãy Trao Cho Anh', 'https://cdnmedia.baotintuc.vn/Upload/DMDnZyELa7xUDTdLsa19w/files/2019/07/sontung.jpg', '2022-10-14 22:35:19', 1, 'https://file-examples.com/storage/feb2e515cc6339d7ba1ffcd/2017/04/file_example_MP4_1920_18MG.mp4'),
(17, '2022-10-14 22:34:58', b'0', 'Lạc Trôi', 'https://img.youtube.com/vi/Llw9Q6akRo4/0.jpg', '2022-10-14 22:35:19', 1, 'https://file-examples.com/storage/feb2e515cc6339d7ba1ffcd/2017/04/file_example_MP4_1920_18MG.mp4'),
(18, '2022-10-14 22:34:58', b'0', 'Làm Vì Yêu', 'https://i.ytimg.com/vi/OraQu3XyNJ8/maxresdefault.jpg', '2022-10-14 22:35:19', 1, 'https://file-examples.com/storage/feb2e515cc6339d7ba1ffcd/2017/04/file_example_MP4_1920_18MG.mp4'),
(19, '2022-10-14 22:34:58', b'0', 'Đừng Tin Her', 'https://i.ytimg.com/vi/R3VVw3MJmHs/maxresdefault.jpg?v=5fcc347f', '2022-10-14 22:35:19', 1, 'https://file-examples.com/storage/feb2e515cc6339d7ba1ffcd/2017/04/file_example_MP4_1920_18MG.mp4'),
(20, '2022-10-14 22:34:58', b'0', 'Lạ Quá', 'https://image.thanhnien.vn/w1024/Uploaded/2022/noktnz/2021_11_02/b-ray-va-karik-lan-dau-hop-tac-khien-rap-fan-xon-xao-d0e2bdfc-7838.jpeg', '2022-10-14 22:35:19', 1, 'https://file-examples.com/storage/feb2e515cc6339d7ba1ffcd/2017/04/file_example_MP4_1920_18MG.mp4'),
(21, '2022-10-14 22:34:58', b'0', 'Vì Mẹ Anh Bắt Chia Tay', 'https://sohanews.sohacdn.com/2019/10/21/5-15716275293431128280248.jpg', '2022-10-14 22:35:19', 1, 'https://file-examples.com/storage/feb2e515cc6339d7ba1ffcd/2017/04/file_example_MP4_1920_18MG.mp4'),
(22, '2022-10-14 22:34:58', b'0', 'Để Mị Nói Cho Mà Nghe', 'https://sohanews.sohacdn.com/2019/10/21/5-15716275293431128280248.jpg', '2022-10-14 22:35:19', 1, 'https://file-examples.com/storage/feb2e515cc6339d7ba1ffcd/2017/04/file_example_MP4_1920_18MG.mp4'),
(23, '2022-10-14 22:34:58', b'0', 'Bài Này Chill Phết', 'https://i.ytimg.com/vi/ddaEtFOsFeM/maxresdefault.jpg', '2022-10-14 22:35:19', 1, 'https://file-examples.com/storage/feb2e515cc6339d7ba1ffcd/2017/04/file_example_MP4_1920_18MG.mp4'),
(24, '2022-10-14 22:34:58', b'0', 'Quên Anh Đi', 'https://i.ytimg.com/vi/j91oSWmr1f4/maxresdefault.jpg', '2022-10-14 22:35:19', 1, 'https://file-examples.com/storage/feb2e515cc6339d7ba1ffcd/2017/04/file_example_MP4_1920_18MG.mp4'),
(25, '2022-10-14 22:34:58', b'0', 'Hoa Nở Không Màu', 'https://i.ytimg.com/vi/eiPOiI0eNKs/maxresdefault.jpg', '2022-10-14 22:35:19', 1, 'https://file-examples.com/storage/feb2e515cc6339d7ba1ffcd/2017/04/file_example_MP4_1920_18MG.mp4');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `playlists`
--

INSERT INTO `playlists` (`id`, `created_at`, `deleted`, `image_url`, `name`, `status`, `type`, `updated_at`, `user_id`) VALUES
(1, '2022-10-14 22:32:38', b'0', 'https://data.chiasenhac.com/data/cover/69/68708.jpg', 'Người Việt Nam', 1, 1, '2022-10-14 22:32:44', 1),
(2, '2022-10-14 22:32:38', b'0', 'https://data.chiasenhac.com/data/artist_avatar/2/1355.jpg', 'Mẹ Tôi', 1, 1, '2022-10-14 22:32:44', 1),
(3, '2022-10-14 22:32:38', b'0', 'https://data.chiasenhac.com/data/cover/69/68022.jpg', 'Do What You Want\n', 1, 1, '2022-10-14 22:32:44', 1),
(4, '2022-10-14 22:32:38', b'0', 'https://data.chiasenhac.com/data/cover/63/62682.jpg', 'Từng Là Tất Cả', 1, 1, '2022-10-14 22:32:44', 1),
(5, '2022-10-14 22:32:38', b'0', 'https://data.chiasenhac.com/data/cover/129/128915.jpg', 'Đây Là Rap Việt', 1, 1, '2022-10-14 22:32:44', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `playlist_song`
--

CREATE TABLE `playlist_song` (
  `id` int(11) NOT NULL,
  `deleted` bit(1) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `song_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `playlist_song`
--

INSERT INTO `playlist_song` (`id`, `deleted`, `playlist_id`, `song_id`) VALUES
(1, b'0', 1, 1),
(2, b'0', 2, 2),
(3, b'0', 3, 3),
(4, b'0', 4, 4),
(5, b'0', 5, 5),
(6, b'0', 1, 1),
(7, b'0', 2, 2),
(8, b'0', 3, 3),
(9, b'0', 4, 4),
(10, b'0', 5, 5),
(11, b'0', 1, 11),
(12, b'0', 2, 12),
(13, b'0', 3, 13),
(14, b'0', 4, 14),
(15, b'0', 5, 15),
(16, b'0', 1, 16),
(17, b'0', 2, 17),
(18, b'0', 3, 18),
(19, b'0', 4, 19),
(20, b'0', 5, 20),
(21, b'0', 5, 21),
(22, b'0', 5, 22),
(23, b'0', 5, 23),
(24, b'0', 5, 24);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `created_at`, `deleted`, `name`, `updated_at`) VALUES
(1, '2022-10-14 16:34:26', b'0', 'ROLE_ADMIN', '2022-10-14 16:34:28'),
(2, '2022-10-14 16:34:30', b'0', 'ROLE_USERS', '2022-10-14 16:34:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `singers`
--

CREATE TABLE `singers` (
  `id` int(11) NOT NULL,
  `deleted` bit(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `singers`
--

INSERT INTO `singers` (`id`, `deleted`, `name`) VALUES
(1, b'0', 'Karik'),
(2, b'0', 'OnlyC'),
(3, b'0', 'BinZ'),
(4, b'0', 'Sơn Tùng MTP'),
(5, b'0', 'Hoài Lâm'),
(6, b'0', 'Duy Mạnh'),
(7, b'0', 'Tuấn Hưng'),
(8, b'0', 'Mono'),
(9, b'0', 'Đen Vâu'),
(10, b'0', 'Bray'),
(11, b'0', 'Hoàng Thùy Linh'),
(12, b'0', 'Miu Lê');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `lyrics` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `singer_id` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `songs`
--

INSERT INTO `songs` (`id`, `album_id`, `author_id`, `created_at`, `deleted`, `genre_id`, `lyrics`, `name`, `singer_id`, `updated_at`, `url`) VALUES
(1, 1, 1, '2022-10-14 22:44:09', b'0', 1, '\nLời bài hát Từng Là Tất Cả\n[Ver 1:]\nBao năm bên nhau với thứ tình cảm khó nhạt nhoà\nNgàn lời yêu thương trăm kỷ niệm đẹp, cay đắng gì cũng trải qua\nVậy mà hôm nay vì phút thinh lặng nghiệt ngã\nEm vội bên người khác, anh nhìn chẳng biết làm gì cả\nChỉ là h', 'Mặt Mộc', 1, '2022-10-14 22:44:38', '2022-10-14 22:44:38'),
(2, 2, 2, '2022-10-14 22:44:09', b'0', 2, '\nLời bài hát Từng Là Tất Cả\n[Ver 1:]\nBao năm bên nhau với thứ tình cảm khó nhạt nhoà\nNgàn lời yêu thương trăm kỷ niệm đẹp, cay đắng gì cũng trải qua\nVậy mà hôm nay vì phút thinh lặng nghiệt ngã\nEm vội bên người khác, anh nhìn chẳng biết làm gì cả\nChỉ là h', 'Người Việt Nam', 1, '2022-10-14 22:44:38', '2022-10-14 22:44:38'),
(3, 3, 3, '2022-10-14 22:44:09', b'0', 3, '\nLời bài hát Từng Là Tất Cả\n[Ver 1:]\nBao năm bên nhau với thứ tình cảm khó nhạt nhoà\nNgàn lời yêu thương trăm kỷ niệm đẹp, cay đắng gì cũng trải qua\nVậy mà hôm nay vì phút thinh lặng nghiệt ngã\nEm vội bên người khác, anh nhìn chẳng biết làm gì cả\nChỉ là h', 'Có Lẽ Anh Chưa Từng', 1, '2022-10-14 22:44:38', '2022-10-14 22:44:38'),
(4, 4, 4, '2022-10-14 22:44:09', b'0', 4, '\nLời bài hát Từng Là Tất Cả\n[Ver 1:]\nBao năm bên nhau với thứ tình cảm khó nhạt nhoà\nNgàn lời yêu thương trăm kỷ niệm đẹp, cay đắng gì cũng trải qua\nVậy mà hôm nay vì phút thinh lặng nghiệt ngã\nEm vội bên người khác, anh nhìn chẳng biết làm gì cả\nChỉ là h', 'Khu Tao Sống', 1, '2022-10-14 22:44:38', '2022-10-14 22:44:38'),
(5, 5, 5, '2022-10-14 22:44:09', b'0', 5, '\nLời bài hát Từng Là Tất Cả\n[Ver 1:]\nBao năm bên nhau với thứ tình cảm khó nhạt nhoà\nNgàn lời yêu thương trăm kỷ niệm đẹp, cay đắng gì cũng trải qua\nVậy mà hôm nay vì phút thinh lặng nghiệt ngã\nEm vội bên người khác, anh nhìn chẳng biết làm gì cả\nChỉ là h', 'Đến Ngày xa em', 1, '2022-10-14 22:44:38', '2022-10-14 22:44:38'),
(6, 6, 6, '2022-10-14 22:44:09', b'0', 6, '\nLời bài hát Từng Là Tất Cả\n[Ver 1:]\nBao năm bên nhau với thứ tình cảm khó nhạt nhoà\nNgàn lời yêu thương trăm kỷ niệm đẹp, cay đắng gì cũng trải qua\nVậy mà hôm nay vì phút thinh lặng nghiệt ngã\nEm vội bên người khác, anh nhìn chẳng biết làm gì cả\nChỉ là h', 'Yêu Là Tha Thu', 1, '2022-10-14 22:44:38', '2022-10-14 22:44:38'),
(7, 7, 7, '2022-10-14 22:44:09', b'0', 7, '\nLời bài hát Từng Là Tất Cả\n[Ver 1:]\nBao năm bên nhau với thứ tình cảm khó nhạt nhoà\nNgàn lời yêu thương trăm kỷ niệm đẹp, cay đắng gì cũng trải qua\nVậy mà hôm nay vì phút thinh lặng nghiệt ngã\nEm vội bên người khác, anh nhìn chẳng biết làm gì cả\nChỉ là h', 'BlackJack', 1, '2022-10-14 22:44:38', '2022-10-14 22:44:38'),
(8, 8, 8, '2022-10-14 22:44:09', b'0', 8, '\nLời bài hát Từng Là Tất Cả\n[Ver 1:]\nBao năm bên nhau với thứ tình cảm khó nhạt nhoà\nNgàn lời yêu thương trăm kỷ niệm đẹp, cay đắng gì cũng trải qua\nVậy mà hôm nay vì phút thinh lặng nghiệt ngã\nEm vội bên người khác, anh nhìn chẳng biết làm gì cả\nChỉ là h', 'Freaky Squad\n', 1, '2022-10-14 22:44:38', '2022-10-14 22:44:38'),
(9, 9, 9, '2022-10-14 22:44:09', b'0', 8, '\nLời bài hát Từng Là Tất Cả\n[Ver 1:]\nBao năm bên nhau với thứ tình cảm khó nhạt nhoà\nNgàn lời yêu thương trăm kỷ niệm đẹp, cay đắng gì cũng trải qua\nVậy mà hôm nay vì phút thinh lặng nghiệt ngã\nEm vội bên người khác, anh nhìn chẳng biết làm gì cả\nChỉ là h', 'Big City Boi', 1, '2022-10-14 22:44:38', '2022-10-14 22:44:38'),
(10, 10, 10, '2022-10-14 22:44:09', b'0', 8, '\nLời bài hát Từng Là Tất Cả\n[Ver 1:]\nBao năm bên nhau với thứ tình cảm khó nhạt nhoà\nNgàn lời yêu thương trăm kỷ niệm đẹp, cay đắng gì cũng trải qua\nVậy mà hôm nay vì phút thinh lặng nghiệt ngã\nEm vội bên người khác, anh nhìn chẳng biết làm gì cả\nChỉ là h', 'Don\'t Break My Heart', 1, '2022-10-14 22:44:38', '2022-10-14 22:44:38'),
(11, 11, 10, '2022-10-14 22:44:09', b'0', 8, '\nLời bài hát Từng Là Tất Cả\n[Ver 1:]\nBao năm bên nhau với thứ tình cảm khó nhạt nhoà\nNgàn lời yêu thương trăm kỷ niệm đẹp, cay đắng gì cũng trải qua\nVậy mà hôm nay vì phút thinh lặng nghiệt ngã\nEm vội bên người khác, anh nhìn chẳng biết làm gì cả\nChỉ là h', 'Loser2Lover', 1, '2022-10-14 22:44:38', '2022-10-14 22:44:38'),
(12, 12, 10, '2022-10-14 22:44:09', b'0', 8, '\nLời bài hát Từng Là Tất Cả\n[Ver 1:]\nBao năm bên nhau với thứ tình cảm khó nhạt nhoà\nNgàn lời yêu thương trăm kỷ niệm đẹp, cay đắng gì cũng trải qua\nVậy mà hôm nay vì phút thinh lặng nghiệt ngã\nEm vội bên người khác, anh nhìn chẳng biết làm gì cả\nChỉ là h', 'Do For Love', 1, '2022-10-14 22:44:38', '2022-10-14 22:44:38'),
(13, 13, 10, '2022-10-14 22:44:09', b'0', 8, '\nLời bài hát Từng Là Tất Cả\n[Ver 1:]\nBao năm bên nhau với thứ tình cảm khó nhạt nhoà\nNgàn lời yêu thương trăm kỷ niệm đẹp, cay đắng gì cũng trải qua\nVậy mà hôm nay vì phút thinh lặng nghiệt ngã\nEm vội bên người khác, anh nhìn chẳng biết làm gì cả\nChỉ là h', 'Reality Check', 1, '2022-10-14 22:44:38', '2022-10-14 22:44:38'),
(14, 14, 9, '2022-10-14 22:44:09', b'0', 8, '\nLời bài hát Từng Là Tất Cả\n[Ver 1:]\nBao năm bên nhau với thứ tình cảm khó nhạt nhoà\nNgàn lời yêu thương trăm kỷ niệm đẹp, cay đắng gì cũng trải qua\nVậy mà hôm nay vì phút thinh lặng nghiệt ngã\nEm vội bên người khác, anh nhìn chẳng biết làm gì cả\nChỉ là h', 'Lối Nhỏ', 1, '2022-10-14 22:44:38', '2022-10-14 22:44:38'),
(15, 15, 9, '2022-10-14 22:44:09', b'0', 8, '\nLời bài hát Từng Là Tất Cả\n[Ver 1:]\nBao năm bên nhau với thứ tình cảm khó nhạt nhoà\nNgàn lời yêu thương trăm kỷ niệm đẹp, cay đắng gì cũng trải qua\nVậy mà hôm nay vì phút thinh lặng nghiệt ngã\nEm vội bên người khác, anh nhìn chẳng biết làm gì cả\nChỉ là h', 'Đi Về Nhà', 1, '2022-10-14 22:44:38', '2022-10-14 22:44:38'),
(16, 16, 9, '2022-10-14 22:44:09', b'0', 8, '\nLời bài hát Từng Là Tất Cả\n[Ver 1:]\nBao năm bên nhau với thứ tình cảm khó nhạt nhoà\nNgàn lời yêu thương trăm kỷ niệm đẹp, cay đắng gì cũng trải qua\nVậy mà hôm nay vì phút thinh lặng nghiệt ngã\nEm vội bên người khác, anh nhìn chẳng biết làm gì cả\nChỉ là h', 'Ai Muốn Nghe Không', 1, '2022-10-14 22:44:38', '2022-10-14 22:44:38'),
(17, 17, 9, '2022-10-14 22:44:09', b'0', 8, '\nLời bài hát Từng Là Tất Cả\n[Ver 1:]\nBao năm bên nhau với thứ tình cảm khó nhạt nhoà\nNgàn lời yêu thương trăm kỷ niệm đẹp, cay đắng gì cũng trải qua\nVậy mà hôm nay vì phút thinh lặng nghiệt ngã\nEm vội bên người khác, anh nhìn chẳng biết làm gì cả\nChỉ là h', 'Bài Này Chill Phết', 1, '2022-10-14 22:44:38', '2022-10-14 22:44:38'),
(18, 18, 9, '2022-10-14 22:44:09', b'0', 8, '\nLời bài hát Từng Là Tất Cả\n[Ver 1:]\nBao năm bên nhau với thứ tình cảm khó nhạt nhoà\nNgàn lời yêu thương trăm kỷ niệm đẹp, cay đắng gì cũng trải qua\nVậy mà hôm nay vì phút thinh lặng nghiệt ngã\nEm vội bên người khác, anh nhìn chẳng biết làm gì cả\nChỉ là h', 'Diễn Viên Tồi', 1, '2022-10-14 22:44:38', '2022-10-14 22:44:38'),
(19, 19, 7, '2022-10-14 22:44:09', b'0', 8, '\nLời bài hát Từng Là Tất Cả\n[Ver 1:]\nBao năm bên nhau với thứ tình cảm khó nhạt nhoà\nNgàn lời yêu thương trăm kỷ niệm đẹp, cay đắng gì cũng trải qua\nVậy mà hôm nay vì phút thinh lặng nghiệt ngã\nEm vội bên người khác, anh nhìn chẳng biết làm gì cả\nChỉ là h', 'Anh Nhớ Em', 1, '2022-10-14 22:44:38', '2022-10-14 22:44:38'),
(20, 20, 6, '2022-10-14 22:44:09', b'0', 8, '\nLời bài hát Từng Là Tất Cả\n[Ver 1:]\nBao năm bên nhau với thứ tình cảm khó nhạt nhoà\nNgàn lời yêu thương trăm kỷ niệm đẹp, cay đắng gì cũng trải qua\nVậy mà hôm nay vì phút thinh lặng nghiệt ngã\nEm vội bên người khác, anh nhìn chẳng biết làm gì cả\nChỉ là h', 'Ta Đâu Có Say', 1, '2022-10-14 22:44:38', '2022-10-14 22:44:38'),
(21, 21, 5, '2022-10-14 22:44:09', b'0', 8, '\nLời bài hát Từng Là Tất Cả\n[Ver 1:]\nBao năm bên nhau với thứ tình cảm khó nhạt nhoà\nNgàn lời yêu thương trăm kỷ niệm đẹp, cay đắng gì cũng trải qua\nVậy mà hôm nay vì phút thinh lặng nghiệt ngã\nEm vội bên người khác, anh nhìn chẳng biết làm gì cả\nChỉ là h', 'Hoa Nở Không Màu', 1, '2022-10-14 22:44:38', '2022-10-14 22:44:38'),
(22, 22, 8, '2022-10-14 22:44:09', b'0', 8, '\nLời bài hát Từng Là Tất Cả\n[Ver 1:]\nBao năm bên nhau với thứ tình cảm khó nhạt nhoà\nNgàn lời yêu thương trăm kỷ niệm đẹp, cay đắng gì cũng trải qua\nVậy mà hôm nay vì phút thinh lặng nghiệt ngã\nEm vội bên người khác, anh nhìn chẳng biết làm gì cả\nChỉ là h', 'Quên Anh Đi', 1, '2022-10-14 22:44:38', '2022-10-14 22:44:38'),
(23, 23, 11, '2022-10-14 22:44:09', b'0', 8, '\nLời bài hát Từng Là Tất Cả\n[Ver 1:]\nBao năm bên nhau với thứ tình cảm khó nhạt nhoà\nNgàn lời yêu thương trăm kỷ niệm đẹp, cay đắng gì cũng trải qua\nVậy mà hôm nay vì phút thinh lặng nghiệt ngã\nEm vội bên người khác, anh nhìn chẳng biết làm gì cả\nChỉ là h', 'Hoàng', 1, '2022-10-14 22:44:38', '2022-10-14 22:44:38'),
(24, 24, 12, '2022-10-14 22:44:09', b'0', 8, '\nLời bài hát Từng Là Tất Cả\n[Ver 1:]\nBao năm bên nhau với thứ tình cảm khó nhạt nhoà\nNgàn lời yêu thương trăm kỷ niệm đẹp, cay đắng gì cũng trải qua\nVậy mà hôm nay vì phút thinh lặng nghiệt ngã\nEm vội bên người khác, anh nhìn chẳng biết làm gì cả\nChỉ là h', 'Vì Mẹ Anh Bắt Chia tay', 1, '2022-10-14 22:44:38', '2022-10-14 22:44:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `thone` varchar(255) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `avatar`, `banner`, `created_at`, `email`, `password`, `role_id`, `status`, `thone`, `type`, `updated_at`, `username`) VALUES
(1, 'https://kynguyenlamdep.com/wp-content/uploads/2022/06/avatar-cute-meo-con-than-chet-700x695.jpg', 'https://kiemtientuweb.com/ckfinder/userfiles/images/avt-cute/avatar-cute-40.jpg', '2022-10-14 09:36:15', 'Users1234@gmail.com', '$2a$10$dMT65LcCOBUbJT3F7ViiWeVXNAsqTyHkh.Eq2dEYf35TrC0dmX9s2', 1, 1, NULL, 1, '2022-10-14 09:36:15', 'admin1');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment_mv`
--
ALTER TABLE `comment_mv`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKiufbju6qu0967i1x3nhyssarc` (`user_id`);

--
-- Chỉ mục cho bảng `comment_songs`
--
ALTER TABLE `comment_songs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK54x8c77c6sc8bv95wbngvvax0` (`user_id`);

--
-- Chỉ mục cho bảng `filedb`
--
ALTER TABLE `filedb`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `like_mv`
--
ALTER TABLE `like_mv`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKfbewcx7gnc5ihhei4ba0l06hq` (`user_id`);

--
-- Chỉ mục cho bảng `like_songs`
--
ALTER TABLE `like_songs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKi8lgctp10ox0icvkgt672etc6` (`song_id`),
  ADD KEY `FKnddmj7ivgaukpww81ub2ry3a7` (`user_id`);

--
-- Chỉ mục cho bảng `mv`
--
ALTER TABLE `mv`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKvjg6q0r0ie196vevf466mfxf` (`user_id`);

--
-- Chỉ mục cho bảng `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKtgjwvfg23v990xk7k0idmqbrj` (`user_id`);

--
-- Chỉ mục cho bảng `playlist_song`
--
ALTER TABLE `playlist_song`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKhimqe90is8m3m0mm8rmtmht6` (`playlist_id`),
  ADD KEY `FKi0j8d774d3em1dgonqnc1x1g7` (`song_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `singers`
--
ALTER TABLE `singers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKte4gkb2cqtk2erfa87oopj2cj` (`album_id`),
  ADD KEY `FKsq04x1ul37p279vnj1fyc4is2` (`author_id`),
  ADD KEY `FKd5mor9lg3wkqhn2tp0r75nkm` (`genre_id`),
  ADD KEY `FKaporlg6dhv2vtfakbiv41hajj` (`singer_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKp56c1712k691lhsyewcssf40f` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `comment_mv`
--
ALTER TABLE `comment_mv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `comment_songs`
--
ALTER TABLE `comment_songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `like_mv`
--
ALTER TABLE `like_mv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `like_songs`
--
ALTER TABLE `like_songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `mv`
--
ALTER TABLE `mv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `playlist_song`
--
ALTER TABLE `playlist_song`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `singers`
--
ALTER TABLE `singers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comment_mv`
--
ALTER TABLE `comment_mv`
  ADD CONSTRAINT `FKiufbju6qu0967i1x3nhyssarc` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `comment_songs`
--
ALTER TABLE `comment_songs`
  ADD CONSTRAINT `FK54x8c77c6sc8bv95wbngvvax0` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `like_mv`
--
ALTER TABLE `like_mv`
  ADD CONSTRAINT `FKfbewcx7gnc5ihhei4ba0l06hq` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `like_songs`
--
ALTER TABLE `like_songs`
  ADD CONSTRAINT `FKi8lgctp10ox0icvkgt672etc6` FOREIGN KEY (`song_id`) REFERENCES `songs` (`id`),
  ADD CONSTRAINT `FKnddmj7ivgaukpww81ub2ry3a7` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `mv`
--
ALTER TABLE `mv`
  ADD CONSTRAINT `FKvjg6q0r0ie196vevf466mfxf` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `playlists`
--
ALTER TABLE `playlists`
  ADD CONSTRAINT `FKtgjwvfg23v990xk7k0idmqbrj` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `playlist_song`
--
ALTER TABLE `playlist_song`
  ADD CONSTRAINT `FKhimqe90is8m3m0mm8rmtmht6` FOREIGN KEY (`playlist_id`) REFERENCES `playlists` (`id`),
  ADD CONSTRAINT `FKi0j8d774d3em1dgonqnc1x1g7` FOREIGN KEY (`song_id`) REFERENCES `songs` (`id`);

--
-- Các ràng buộc cho bảng `songs`
--
ALTER TABLE `songs`
  ADD CONSTRAINT `FKaporlg6dhv2vtfakbiv41hajj` FOREIGN KEY (`singer_id`) REFERENCES `singers` (`id`),
  ADD CONSTRAINT `FKd5mor9lg3wkqhn2tp0r75nkm` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`),
  ADD CONSTRAINT `FKsq04x1ul37p279vnj1fyc4is2` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`),
  ADD CONSTRAINT `FKte4gkb2cqtk2erfa87oopj2cj` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FKp56c1712k691lhsyewcssf40f` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
