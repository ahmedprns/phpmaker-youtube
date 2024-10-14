-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2024 at 04:17 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test10`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `pro_task_top1`
-- (See below for the actual view)
--
CREATE TABLE `pro_task_top1` (
`id` int(11)
,`project` varchar(50)
,`cat` int(11)
,`fin_task` bigint(21)
,`unfin_task` bigint(21)
,`all_task` bigint(22)
,`per` decimal(27,4)
);

-- --------------------------------------------------------

--
-- Table structure for table `tb_cat`
--

CREATE TABLE `tb_cat` (
  `id` int(11) NOT NULL,
  `cat` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_cat`
--

INSERT INTO `tb_cat` (`id`, `cat`) VALUES
(1, 'new'),
(2, 'new2');

-- --------------------------------------------------------

--
-- Table structure for table `tb_notes`
--

CREATE TABLE `tb_notes` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `details` varchar(500) DEFAULT NULL,
  `file` varchar(500) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_notes`
--

INSERT INTO `tb_notes` (`id`, `title`, `details`, `file`, `user_id`, `user_name`) VALUES
(1, 'note1', 'zdfsd\r\nfasdfasd', NULL, 18, NULL),
(2, 'ملاحظات مستخدم1', 'يلسيب\r\nسشيبشسيبشسي', NULL, 20, NULL),
(3, 'ملاحظات مستخدم2', 'ئيسيبش\r\nسيبشسيب', NULL, 21, NULL),
(4, 'ملاحظات مدير قطاع', 'ئءلسي\r\nسيبس', NULL, 19, NULL),
(5, 'asfdads', NULL, NULL, 18, 'admin'),
(6, 'سيبشس', NULL, NULL, 18, 'admin'),
(7, 'sdfasdfa', NULL, NULL, 18, 'admin'),
(8, 'zsadfasd', NULL, NULL, 20, 'u1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_project`
--

CREATE TABLE `tb_project` (
  `id` int(11) NOT NULL,
  `project` varchar(50) DEFAULT NULL,
  `cat` int(11) DEFAULT NULL,
  `photo` varchar(500) DEFAULT NULL,
  `file` varchar(500) DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  `background_color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_project`
--

INSERT INTO `tb_project` (`id`, `project`, `cat`, `photo`, `file`, `note`, `background_color`) VALUES
(1, 'مشروع1', 1, '2333.jpg,3333.jpg,2333(1).jpg,vento.jpg', NULL, 'سيبلسي لسيلب\r\nيسبل سيبل سيبل سيبل سبي\r\nءيبلسيبلسيبلسيبلسيبلسيبلسب', '#7a7ade'),
(2, 'مشروع 2', 1, 'pexels-oleksandr-p-3278215.jpg,3333(2).jpg,2333(2).jpg,vento(2).jpg', 'crm_cus_cat.xls,crm_cus_cat.doc,crm_cus_cat_10.xls', NULL, '#3fc227'),
(3, 'سيبشسيب', 2, NULL, NULL, NULL, '#e01d3a'),
(4, 'سيبشسي', 2, NULL, NULL, NULL, '#4dc1be'),
(5, 'مشروع مهم', 1, NULL, NULL, NULL, '#dae414');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pro_note`
--

CREATE TABLE `tb_pro_note` (
  `id` int(11) NOT NULL,
  `pro_id` int(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_pro_note`
--

INSERT INTO `tb_pro_note` (`id`, `pro_id`, `title`, `note`) VALUES
(1, 1, 'سب', 'شسيب\r\nشسيبسشيب\r\nشسيب'),
(2, 1, 'شسل', 'شيسب \r\nشيسب');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pro_photo`
--

CREATE TABLE `tb_pro_photo` (
  `id` int(11) NOT NULL,
  `pro_id` int(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `photo` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_pro_photo`
--

INSERT INTO `tb_pro_photo` (`id`, `pro_id`, `title`, `photo`) VALUES
(1, 1, 'سيب', '3333(3).jpg,2333(3).jpg,vento(3).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_task`
--

CREATE TABLE `tb_task` (
  `id` int(11) NOT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `task` varchar(50) DEFAULT NULL,
  `details` varchar(500) DEFAULT NULL,
  `proect_id` int(11) DEFAULT NULL,
  `fin` enum('Y','N') DEFAULT 'N',
  `photo` varchar(500) DEFAULT NULL,
  `file` varchar(500) DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  `background_color` varchar(255) DEFAULT NULL,
  `allday` tinyint(4) DEFAULT 0,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_task`
--

INSERT INTO `tb_task` (`id`, `date_start`, `date_end`, `task`, `details`, `proect_id`, `fin`, `photo`, `file`, `note`, `background_color`, `allday`, `url`) VALUES
(1, '2024-09-27 00:00:00', NULL, 'مهمه 1', 'سيبل سيبل\r\nسيب لسيبل', 5, 'Y', NULL, NULL, NULL, '#dae414', NULL, NULL),
(2, '2024-09-27 00:00:00', NULL, 'مهمه 2', 'سيبلسبي', 2, 'Y', NULL, NULL, 'سيبل', '#3fc227', NULL, NULL),
(3, '2024-09-25 00:00:00', '2024-09-26 00:00:00', 'بلايبلا', 'يبلايبلا', 3, 'N', NULL, NULL, NULL, '#e01d3a', 0, 'https://google.com'),
(4, '2024-09-17 00:00:00', '2024-09-20 00:00:00', 'شسيبشسيب', 'شسيب<br />asfdgasfgsdfg<br />sdfgsfdgsdfgsdfg<br />sdfgsfdgsfd', 1, 'Y', NULL, NULL, NULL, '#7a7ade', 1, 'https://google.com'),
(5, '2024-10-02 21:49:00', NULL, 'sdfas', 'dfasdf', 1, 'N', NULL, NULL, NULL, '#7a7ade', 0, NULL),
(6, '2024-10-02 21:55:00', NULL, 'xcvz', 'xcvxcv', 1, 'N', NULL, NULL, NULL, '#7a7ade', 0, NULL),
(7, '2024-10-02 23:28:00', NULL, 'asdfasd', 'fasdfads', 1, 'N', NULL, NULL, NULL, '#7a7ade', 0, NULL),
(8, '2024-10-02 23:28:00', NULL, 'zxcvsdf', NULL, 2, 'N', NULL, NULL, NULL, '#3fc227', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `Phone` varchar(50) DEFAULT NULL,
  `Photo` varchar(200) DEFAULT '',
  `Notes` longtext DEFAULT NULL,
  `ReportsTo` int(11) DEFAULT NULL,
  `Username` varchar(50) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Activated` enum('Y','N') DEFAULT 'Y',
  `Profile` longtext DEFAULT NULL,
  `UserLevel` int(11) DEFAULT 0,
  `CreatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `name`, `Phone`, `Photo`, `Notes`, `ReportsTo`, `Username`, `Password`, `Email`, `Activated`, `Profile`, `UserLevel`, `CreatedAt`) VALUES
(18, 'المدير العام', NULL, '44444.jpg', NULL, NULL, 'admin', '21232f297a57a5a743894a0e4a801fc3', NULL, 'Y', '{\"LoginRetryCount\":0,\"LastBadLoginDateTime\":\"2024\\/09\\/30 14:34:37\",\"LastPasswordChangedDate\":\"\",\"UserImage\":\"\\/9j\\/4AAQSkZJRgABAQEAYABgAAD\\/\\/gA8Q1JFQVRPUjogZ2QtanBlZyB2MS4wICh1c2luZyBJSkcgSlBFRyB2ODApLCBxdWFsaXR5ID0gMTAwCv\\/bAEMAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf\\/bAEMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf\\/AABEIACgAKAMBIgACEQEDEQH\\/xAAfAAABBQEBAQEBAQAAAAAAAAAAAQIDBAUGBwgJCgv\\/xAC1EAACAQMDAgQDBQUEBAAAAX0BAgMABBEFEiExQQYTUWEHInEUMoGRoQgjQrHBFVLR8CQzYnKCCQoWFxgZGiUmJygpKjQ1Njc4OTpDREVGR0hJSlNUVVZXWFlaY2RlZmdoaWpzdHV2d3h5eoOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4eLj5OXm5+jp6vHy8\\/T19vf4+fr\\/xAAfAQADAQEBAQEBAQEBAAAAAAAAAQIDBAUGBwgJCgv\\/xAC1EQACAQIEBAMEBwUEBAABAncAAQIDEQQFITEGEkFRB2FxEyIygQgUQpGhscEJIzNS8BVictEKFiQ04SXxFxgZGiYnKCkqNTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqCg4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2dri4+Tl5ufo6ery8\\/T19vf4+fr\\/2gAMAwEAAhEDEQA\\/APJfjf45+E37T1h4h+HPg\\/8Aat+KH7OVx8OfFHhzUNS+LPgH4beJ9R1TxJoOsWup20VhoOkW3jH4ea62i63qAsPOGuXenXdlcjR5dS0GFpV8j6Y+GFr8IP2Xv2b\\/AA7rfxH8dfthfGLRNLm1N7\\/456t8A9Dgk8X3V1eXWpwy3I1v436vqEjWOkzWumxCfVLpmsrCEgxoBDF+aPw6+Bt\\/8XfHev8AgD4MeHF8NDxd8KhocPiPxN8Th4l8Nj4lv400Txp4YhfxPf6ZpOoWOnXHiDQW0fUrqLQjLa2d3cS3Npb305g1D7a17\\/glV\\/wWX+IHwi8OfAzxR8U\\/hSPhn4e1FdUsvDtx8Z\\/Ei+HnujFJCNUubXSfAmoPeXrQytH500LlUcGIRtkt8VR4Pyb6hSweIy+lUpxqyrt+2rObrawv7dVIVuRwb\\/dylyJ6qPMlJfRYvibPY4t4nDYmXNOCoy\\/dUVFU04zSdNwlTT5kv3iTlZWvyto+X\\/jP8ff2DvjJ8P8AXPBvhb4qfG3wtdyzQTef4g+AfhqxhkvIJVktobu+0T446hd2VtdvBa6fd3a6ReSW9oHkjtrl4ltm+ah+1hZfBr4TXuh+MfDvg0eEZ1uvB2g634R1nxvr3iPWonhulZv7Nv8A4X6FoekX7L5eqS2PiPxTpb3cMrS2lzdvsZvujwB\\/wbpftzaBrb6trnxG\\/ZVvbHUYJ7HWdLufHnxVu57zSb5WS\\/sIriP4GxpY3csbf6Lq1s73WnXCRXlmEmgjNfqT4L\\/4I\\/avpXwp8YeAdd8E\\/BLSPEl9a6Y\\/gbxzoHxX+IXia98MahbEW2pWuvWOsfBjw7D4y8O6vp26GfS9VkjnieW7FreQW+oXsMnsYXKsBQhQoqDo4fDwpUqcYTq1Z06NNxiow9pWXNOMLte0mnJx5ZTSba+WxeIxmLzCGOqYVYjFOVaqsTKpCjThVnGcm506clf2k6kovkoTUFLZJcr\\/AJfPBvxZsvG2pS6J8P8A4cwa1pPjnxBpdgZfiN4E8FW+uaLrGqxtpz3beNtU8X2\\/hPwUIBNHDLc397bXNjZwSa7qsMNhaiKQr9X\\/ANu\\/\\/gnJ+038BvAHj3xhpfwj0j49\\/C+LwTpNrb6f8A1g03XPhrcaRqul3+s6340+H3izRNdv\\/H3htdHg1i3gbwTFYx6Q1wmv6lp2iWukyrflfbYPEZBg6bipZtiXOSnKX1XC4WMLRhFQjBZjX50uW7qfu03dKmrc0vk8VkWbY6rz4mhkmGjTvCjGnjMxxVScJTlOVStUeCwyjKUpPlppVeRJfvpX5Y\\/APw3+Ndv8DPjj4D+G16XvYfirpHiSa11ieeKGDSbnSpdJGkm6lknSO4m1aWW+svtJi+1sbe0gmmeBUKf0N\\/D3\\/gqd8U\\/gn4Q+B+i+PPg78QPip4Q8VWviPSdX+JPhHT9O1NfD66R4t1TQNKn8T2Gm2umxaboVr4Ht\\/D\\/inTdVtB4gv\\/Ek+pX+lwm61rTL3d\\/IjG3juHVtTj8a3mkXepeEfA9pNaeKNe1E6dqGtaNoPjzwr4ovptOeFYrS+8Q3S6PHaSrHaQSzzTSi5hi1OWTWNQ+y\\/wBnXw98Vdb1Txb4otP2jfCvwjutU8Zagvhzw94p8cS+DpNU0mK306Oyv9Ohsbpprix1KRbu4kmns2zNuWL7UJJha\\/L4XFxnRhaPtk37tlrbdt6+7ty6vdpbvT9IxmDcK04Saw7jb3Zu9n7seVd76yVk7RT6I\\/rU1b\\/grT+z7b+AtS+ISeIfCdhpugXfh7Q9b8P+JvHWieCvHOmazriW11IkXw58VxaZ8RNW0m3huZp49bsPCklhexoWtpmW3uxB8keLP+C+HwL0E3bnSNcDWn9iQyadFYRanqjXGtQWdxHDDZSatod5PLZf2lpcWpxJZB9NfU7P7SVJnaD+U79sn9nS31y98T+P\\/D3iLRvG3xZuLx7\\/AMS3Hws1S8+Ivh7xpqCSRx6hJqV7pdhfQaB4naHMp8u6srO6a1FtcaRFd3cupD8zNX+GPxu+zW8V14S1TQ9Ot0kWK28Q6\\/p\\/hWAee\\/mTSCDXdQ0+AGVipcjZvfls8GujnpzvJUnC1rqV1ZpK9m76Pvd6W17ebKm6bSlOEr6qUWndbX0++zSflqj+5PQP+DjP9mbXNU1S11iPXfAGmaT4c1nWLnVfGnhxpBquqaVapPD4U0CD4d+I\\/iRcSa5r80iWeh3Wu2+g+HROZH1fXNLt7eSQlfxG\\/DbQ7LwT4hstb+K9\\/wCB7HQ9KDz2ehHxp4a8RXniDWCQlhBfeH9F1++a8060llW9nS6iis9Qayg0m\\/8AP067vY0KaqQjZeyUl3u+6Vlb5r5oFBuz5ortdTel12i7LX9emv7MftC\\/sqHxl4d1DRINZ1Xw0LiWOWDUtPtvN8qPMTyRPbXHkfbNJvpgjXNk91EVltbRJfLNvZzyfmXefsL\\/ALSHgu\\/ll8C\\/GPV4pb0rDDe6Zr3iTw5BdwtuSOF7nTZLiTcH\\/cyWs4VlcNG0e8bAUV8FDMcXhFNUai5VryShCUejtquZLyUl331P2XF5Hl2YJ1cRRkqtox56dSdNtc3KrxT5JNLRNxb2OP1D9gz9qnxLeG\\/8TeMp9Vv5CUuLvV\\/EviDVLtQDhBLc6lEk8kTF0VGjMiBpUDBN6g3LP\\/gm18RpW\\/4nnje0s5iWAjFsb0ysjMpjSQ6nGRJlGwNhUDbuYGSISFFJcQ5lKTjzUYrT4aS7X6trWyvdfieTiOFcpoqMoxxEryimpVtNbP7MYvoranqHh3\\/gm1ZWklpf6n4j1i+uI7geaLSxdvJMSo6q0bWYkEvDnckwCbCIpZJBGJCiinLMcbN8zxE7+XKktnokkt1cUcmy2C5VhYOzWspTk3rDVvm8\\/TyP\\/9k=\"}', -1, NULL),
(19, 'مدير قطاع', NULL, NULL, NULL, 18, 'm1', 'a9da86340e43140d1b69d80751e85969', NULL, 'Y', '{\"LoginRetryCount\":0,\"LastBadLoginDateTime\":\"\",\"LastPasswordChangedDate\":\"\",\"UserImage\":\"\"}', 3, NULL),
(20, 'مستخدم1', NULL, NULL, NULL, 19, 'u1', '64efa9044db3d7ee8c6da16d4773b30d', NULL, 'Y', '{\"LoginRetryCount\":0,\"LastBadLoginDateTime\":\"\",\"LastPasswordChangedDate\":\"\",\"UserImage\":\"\"}', 4, NULL),
(21, 'مستخدم2', NULL, NULL, NULL, 19, 'u2', '8d49a5db4c43184016908ff0d52522a4', NULL, 'Y', '{\"LoginRetryCount\":0,\"LastBadLoginDateTime\":\"\",\"LastPasswordChangedDate\":\"\",\"UserImage\":\"\"}', 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_userlevelpermissions`
--

CREATE TABLE `tb_userlevelpermissions` (
  `UserLevelID` int(11) NOT NULL,
  `TableName` varchar(255) NOT NULL,
  `Permission` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_userlevelpermissions`
--

INSERT INTO `tb_userlevelpermissions` (`UserLevelID`, `TableName`, `Permission`) VALUES
(-2, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}home.php', 0),
(-2, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}tb_cat', 0),
(-2, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}tb_project', 0),
(-2, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}tb_pro_note', 0),
(-2, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}tb_pro_photo', 0),
(-2, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}tb_task', 0),
(-2, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}tb_task_rp', 0),
(-2, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}tb_user', 0),
(-2, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}tb_userlevelpermissions', 0),
(-2, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}tb_userlevels', 0),
(1, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}home.php', 256),
(1, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}tb_cat', 360),
(1, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}tb_project', 360),
(1, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}tb_pro_note', 256),
(1, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}tb_pro_photo', 256),
(1, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}tb_task', 367),
(1, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}tb_task_rp', 256),
(1, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}tb_user', 256),
(1, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}tb_userlevelpermissions', 256),
(1, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}tb_userlevels', 256),
(3, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}Dashboard1', 256),
(3, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}home.php', 264),
(3, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}pro_task_details_v', 256),
(3, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}pro_task_top1', 256),
(3, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}pro_task_v', 256),
(3, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}Report1', 256),
(3, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}Report2', 256),
(3, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}Report_details', 256),
(3, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}tb_cat', 256),
(3, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}tb_notes', 367),
(3, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}tb_project', 256),
(3, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}tb_pro_note', 256),
(3, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}tb_pro_photo', 256),
(3, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}tb_task', 256),
(3, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}tb_task_rp', 256),
(3, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}tb_user', 256),
(3, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}tb_userlevelpermissions', 256),
(3, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}tb_userlevels', 256),
(3, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}test', 256),
(4, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}Dashboard1', 256),
(4, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}home.php', 288),
(4, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}pro_task_details_v', 256),
(4, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}pro_task_top1', 256),
(4, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}pro_task_v', 256),
(4, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}Report1', 256),
(4, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}Report2', 256),
(4, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}Report_details', 256),
(4, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}tb_cat', 256),
(4, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}tb_notes', 495),
(4, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}tb_project', 256),
(4, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}tb_pro_note', 256),
(4, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}tb_pro_photo', 256),
(4, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}tb_task', 256),
(4, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}tb_task_rp', 256),
(4, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}tb_user', 256),
(4, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}tb_userlevelpermissions', 256),
(4, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}tb_userlevels', 256),
(4, '{876AB499-85F8-4E4E-BF99-3CC7D9EE1608}test', 256);

-- --------------------------------------------------------

--
-- Table structure for table `tb_userlevels`
--

CREATE TABLE `tb_userlevels` (
  `UserLevelID` int(11) NOT NULL,
  `UserLevelName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_userlevels`
--

INSERT INTO `tb_userlevels` (`UserLevelID`, `UserLevelName`) VALUES
(-2, 'Anonymous'),
(-1, 'Administrator'),
(0, 'Default'),
(1, 'محاسب'),
(2, 'سكرتيرة'),
(3, 'مدير قطاع'),
(4, 'موظف');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `test` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure for view `pro_task_top1`
--
DROP TABLE IF EXISTS `pro_task_top1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pro_task_top1`  AS SELECT `tb_project`.`id` AS `id`, `tb_project`.`project` AS `project`, `tb_project`.`cat` AS `cat`, if(`query2`.`fin_task_count` is null,0,`query2`.`fin_task_count`) AS `fin_task`, if(`query3`.`unfin_task_count` is null,0,`query3`.`unfin_task_count`) AS `unfin_task`, if(`query2`.`fin_task_count` is null,0,`query2`.`fin_task_count`) + if(`query3`.`unfin_task_count` is null,0,`query3`.`unfin_task_count`) AS `all_task`, if(if(`query2`.`fin_task_count` is null,0,`query2`.`fin_task_count`) / (if(`query2`.`fin_task_count` is null,0,`query2`.`fin_task_count`) + if(`query3`.`unfin_task_count` is null,0,`query3`.`unfin_task_count`)) * 100 is null,0,if(`query2`.`fin_task_count` is null,0,`query2`.`fin_task_count`) / (if(`query2`.`fin_task_count` is null,0,`query2`.`fin_task_count`) + if(`query3`.`unfin_task_count` is null,0,`query3`.`unfin_task_count`)) * 100) AS `per` FROM ((`tb_project` left join (select `tb_task`.`proect_id` AS `proect_id`,count(`tb_task`.`id`) AS `fin_task_count` from `tb_task` where `tb_task`.`fin` = 'Y' group by `tb_task`.`proect_id`,`tb_task`.`fin`) `query2` on(`query2`.`proect_id` = `tb_project`.`id`)) left join (select `tb_task`.`proect_id` AS `proect_id`,count(`tb_task`.`id`) AS `unfin_task_count` from `tb_task` where `tb_task`.`fin` = 'N' group by `tb_task`.`proect_id`,`tb_task`.`fin`) `query3` on(`query3`.`proect_id` = `tb_project`.`id`)) ORDER BY if(if(`query2`.`fin_task_count` is null,0,`query2`.`fin_task_count`) / (if(`query2`.`fin_task_count` is null,0,`query2`.`fin_task_count`) + if(`query3`.`unfin_task_count` is null,0,`query3`.`unfin_task_count`)) * 100 is null,0,if(`query2`.`fin_task_count` is null,0,`query2`.`fin_task_count`) / (if(`query2`.`fin_task_count` is null,0,`query2`.`fin_task_count`) + if(`query3`.`unfin_task_count` is null,0,`query3`.`unfin_task_count`)) * 100) DESC LIMIT 0, 11  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_cat`
--
ALTER TABLE `tb_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_notes`
--
ALTER TABLE `tb_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_project`
--
ALTER TABLE `tb_project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pro_note`
--
ALTER TABLE `tb_pro_note`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pro_photo`
--
ALTER TABLE `tb_pro_photo`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_task`
--
ALTER TABLE `tb_task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_userlevelpermissions`
--
ALTER TABLE `tb_userlevelpermissions`
  ADD PRIMARY KEY (`UserLevelID`,`TableName`);

--
-- Indexes for table `tb_userlevels`
--
ALTER TABLE `tb_userlevels`
  ADD PRIMARY KEY (`UserLevelID`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_cat`
--
ALTER TABLE `tb_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_notes`
--
ALTER TABLE `tb_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_project`
--
ALTER TABLE `tb_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_pro_note`
--
ALTER TABLE `tb_pro_note`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_pro_photo`
--
ALTER TABLE `tb_pro_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_task`
--
ALTER TABLE `tb_task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
