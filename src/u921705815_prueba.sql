-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 28-04-2021 a las 14:43:13
-- Versión del servidor: 10.4.15-MariaDB
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `u921705815_prueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `application_settings`
--

CREATE TABLE `application_settings` (
  `id` int(11) NOT NULL,
  `sms_gateway` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'twilio',
  `twilio_sid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twilio_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plivo_auth_id` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plivo_auth_token` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plivo_app_id` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_phone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_type` int(11) NOT NULL DEFAULT 0 COMMENT '1 for admin, 2 for sub account',
  `time_zone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `version` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `append_text` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `typo_message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_processor` int(11) NOT NULL DEFAULT 1,
  `auth_net_trans_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_net_api_login_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stripe_secret_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stripe_publishable_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paypal_switch` int(11) NOT NULL DEFAULT 0 COMMENT '1 for live',
  `paypal_sandbox_email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paypal_email` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `incoming_sms_charge` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `outgoing_sms_charge` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `mms_credit_charges` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `per_credit_charges` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.01',
  `email_subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new_app_user_email` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `unsub_message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `app_date_format` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'Y-m-d',
  `app_logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'nimble_messaging.png',
  `enable_link_shrink` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 for enable',
  `bitly_key` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bitly_token` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enable_sender_id` int(11) NOT NULL DEFAULT 0 COMMENT '1 for enabled',
  `twilio_sender_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `success_payment_email_subject` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `success_payment_email` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `failed_payment_email_subject` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `failed_payment_email` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_noti_subject` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_noti_email` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_subject_for_admin_notification` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new_app_user_email_for_admin` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `banned_words` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `nexmo_api_key` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nexmo_api_secret` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subs_lookup` int(11) NOT NULL DEFAULT 0 COMMENT '1 for enable',
  `sidebar_color` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_key` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `android_app_server_key` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_id` int(11) NOT NULL DEFAULT 0,
  `cron_stop_time_from` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cron_stop_time_to` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_purchase_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_purchase_code_status` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings_date` datetime DEFAULT NULL,
  `estimote_app_id` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estimote_app_token` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gdpr_message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `footer_customization` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `enable_whatsapp` int(11) NOT NULL DEFAULT 0,
  `is_double_optin` tinyint(4) NOT NULL DEFAULT 0,
  `signalwire_space_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `signalwire_project_key` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `signalwire_token` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `telnyx_api_secret` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telnyx_api_access_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telnyx_api_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cell_user_voz` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `cell_pass_voz` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `cell_akey_voz` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `cell_TOK_voz` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `application_settings`
--

INSERT INTO `application_settings` (`id`, `sms_gateway`, `twilio_sid`, `twilio_token`, `plivo_auth_id`, `plivo_auth_token`, `plivo_app_id`, `admin_phone`, `user_type`, `time_zone`, `version`, `append_text`, `typo_message`, `payment_processor`, `auth_net_trans_key`, `auth_net_api_login_id`, `stripe_secret_key`, `stripe_publishable_key`, `paypal_switch`, `paypal_sandbox_email`, `paypal_email`, `incoming_sms_charge`, `outgoing_sms_charge`, `mms_credit_charges`, `per_credit_charges`, `email_subject`, `new_app_user_email`, `user_id`, `unsub_message`, `app_date_format`, `app_logo`, `enable_link_shrink`, `bitly_key`, `bitly_token`, `enable_sender_id`, `twilio_sender_id`, `success_payment_email_subject`, `success_payment_email`, `failed_payment_email_subject`, `failed_payment_email`, `admin_email`, `payment_noti_subject`, `payment_noti_email`, `email_subject_for_admin_notification`, `new_app_user_email_for_admin`, `banned_words`, `nexmo_api_key`, `nexmo_api_secret`, `subs_lookup`, `sidebar_color`, `api_key`, `android_app_server_key`, `device_id`, `cron_stop_time_from`, `cron_stop_time_to`, `product_purchase_code`, `product_purchase_code_status`, `settings_date`, `estimote_app_id`, `estimote_app_token`, `gdpr_message`, `footer_customization`, `enable_whatsapp`, `is_double_optin`, `signalwire_space_url`, `signalwire_project_key`, `signalwire_token`, `telnyx_api_secret`, `telnyx_api_access_key`, `telnyx_api_token`, `cell_user_voz`, `cell_pass_voz`, `cell_akey_voz`, `cell_TOK_voz`) VALUES
(1, 'cellvoz', '', '', '', '', '', NULL, 1, 'America/Bogota', '3.0.0', NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, NULL, NULL, '1', '1', '2', '0.1', NULL, NULL, 1, NULL, 'm-d-Y', 'nimble_messaging.png', 0, NULL, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 0, 'purple', NULL, 'AAAAbQYAco4:APA91bH7DQomggZ-XUXhwzWF5RW8TKo80jTOkDYeepjM-OfPMYHMCOtjM69zn6cdrhknBBve4V8QJ8052jS7OOvK55B0s4hMtLcgwFozsgCKHFt9Da8NSkj64MDusvkWmaqjSjIqsRh2', 0, NULL, NULL, '', 'invalid', '2021-04-27 11:37:00', NULL, NULL, NULL, NULL, 0, 0, '', '', '', NULL, NULL, NULL, '00486272239', 'U3VwcGx5MjAyMA==', 'NjQ0ZWJjNTVkZmQ5OWNjYTY2OWFkNmY5ZGVkMWNiZTQ0NWJiOGE3Mw==', 'ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPaUp0WVhKclpYUnBibWRBYzNWd2NHeDVZWE5wYzNSbGJtTnBZUzVqYjIwaUxDSjFjMlZ5SWpwN0ltNWhiV1Z6SWpwdWRXeHNMQ0poWTJOdmRXNTBJanB1ZFd4c0xDSnBaSFlpT2pjek1Ua3NJbWxrY3lJNk56STVNQ3dpZEdsd2IwTnNhV1Z1ZEdVaU9qTXlMQ0p6WVd4a2J5STZNVEF4TVRrNExDSmpkV1Z1ZEdFaU9pSXdNRFE0TmpJM01qSXpPU0lzSW1WdGNISmxjMkVpT2lKVGRYQndiSGtpTENKdWIyMWljbVVpT2lKVGRYQndiSGtpTENKeVlYcHZibE52WTJsaGJDSTZJbE4xY0hCc2VTSXNJblJwY0c5UVlXZHZJam9pVUhKbGNHRm5ieUlzSW1OcGRXUmhaQ0k2SWtKdloyOTBZU0lzSW1ScGNtVmpZMmx2YmlJNklrTmhiR3hsSURFdE1Ea2dNakl0TVRRZ1F6SXlNU0lzSW1SdlkzVnRaVzUwYnlJNklqa3dNVEE1TVRNeU1ERWlMQ0psYldGcGJDSTZJbTFoY210bGRHbHVaMEJ6ZFhCd2JIbGhjMmx6ZEdWdVkybGhMbU52YlNJc0luUmxiR1ZtYjI1dklqb2lNekU0TWpBeE1UWTVOeUlzSW1OdmNuUmxJam9pTVRrNE9DMHdNUzB3TVNJc0luUnBjRzlUZFdKMWMzVmhjbWx2SWpwdWRXeHNMQ0pqYkdGMlpTSTZiblZzYkgwc0ltbGhkQ0k2TVRZeE9UVTBORGswTWl3aVpYaHdJam94TmpFNU5qTXhNelF5ZlEuRTJEOHVCOGNrMkVYN2k0WlVGSldTY1BvMUJmTE10S0JsY1UzMVBwMjVDRQ==');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `appointments`
--

CREATE TABLE `appointments` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appointment_date` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template_id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apt_time` datetime DEFAULT NULL,
  `apt_message` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `appointment_alerts`
--

CREATE TABLE `appointment_alerts` (
  `id` int(11) NOT NULL,
  `message_date` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apt_id` int(11) NOT NULL,
  `message_time` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apt_message` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `media` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `appointment_followup_msgs`
--

CREATE TABLE `appointment_followup_msgs` (
  `id` int(11) NOT NULL,
  `message_date` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apt_id` int(11) NOT NULL,
  `message_time` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apt_message` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `media` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `appointment_templates`
--

CREATE TABLE `appointment_templates` (
  `id` int(11) NOT NULL,
  `title` varchar(550) DEFAULT NULL,
  `immediate_sms` longtext CHARACTER SET utf8 DEFAULT NULL,
  `immediate_sms_media` longtext CHARACTER SET utf8 DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT current_timestamp(),
  `modified_date` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area_codes`
--

CREATE TABLE `area_codes` (
  `id` int(11) NOT NULL,
  `state_code` varchar(2) NOT NULL,
  `code_number` int(11) NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `area_codes`
--

INSERT INTO `area_codes` (`id`, `state_code`, `code_number`, `is_active`, `status`) VALUES
(36, 'AL', 501, 1, 1),
(35, 'AR', 479, 1, 1),
(34, 'AL', 334, 1, 1),
(33, 'AL', 256, 1, 1),
(32, 'AL', 251, 1, 1),
(31, 'AL', 205, 1, 1),
(30, 'AK', 907, 0, 1),
(29, 'AB', 780, 1, 1),
(28, 'AB', 587, 0, 1),
(27, 'AB', 403, 1, 1),
(37, 'AL', 870, 1, 1),
(38, 'AS', 684, 0, 1),
(39, 'AZ', 445, 0, 1),
(40, 'AZ', 480, 1, 1),
(41, 'AZ', 520, 1, 1),
(42, 'AZ', 602, 0, 1),
(43, 'AZ', 623, 0, 1),
(44, 'AZ', 928, 1, 1),
(45, 'BC', 250, 1, 1),
(46, 'BC', 604, 1, 1),
(47, 'BC', 778, 1, 1),
(48, 'CA', 209, 1, 1),
(49, 'CA', 213, 1, 1),
(50, 'CA', 310, 1, 1),
(51, 'CA', 323, 1, 1),
(52, 'CA', 408, 1, 1),
(53, 'CA', 415, 1, 1),
(54, 'CA', 424, 1, 1),
(55, 'CA', 442, 0, 1),
(56, 'CA', 510, 1, 1),
(57, 'CA', 530, 1, 1),
(58, 'CA', 559, 1, 1),
(59, 'CA', 562, 1, 1),
(60, 'CA', 619, 1, 1),
(61, 'CA', 626, 1, 1),
(62, 'CA', 650, 1, 1),
(63, 'CA', 657, 1, 1),
(64, 'CA', 661, 1, 1),
(65, 'CA', 707, 1, 1),
(66, 'CA', 714, 1, 1),
(67, 'CA', 747, 0, 1),
(68, 'CA', 760, 1, 1),
(69, 'CA', 805, 1, 1),
(70, 'CA', 818, 1, 1),
(71, 'CA', 831, 1, 1),
(72, 'CA', 858, 1, 1),
(73, 'CA', 909, 1, 1),
(74, 'CA', 916, 1, 1),
(75, 'CA', 925, 1, 1),
(76, 'CA', 949, 1, 1),
(77, 'CA', 951, 1, 1),
(78, 'CO', 303, 1, 1),
(79, 'CO', 719, 1, 1),
(80, 'CO', 720, 1, 1),
(81, 'CO', 970, 1, 1),
(82, 'CT', 203, 1, 1),
(83, 'CT', 475, 0, 1),
(84, 'CT', 860, 1, 1),
(85, 'CT', 959, 0, 1),
(86, 'DC', 202, 1, 1),
(87, 'DE', 302, 1, 1),
(88, 'FL', 239, 1, 1),
(89, 'FL', 305, 1, 1),
(90, 'FL', 321, 1, 1),
(91, 'FL', 352, 1, 1),
(92, 'FL', 386, 1, 1),
(93, 'FL', 407, 1, 1),
(94, 'FL', 561, 1, 1),
(95, 'FL', 689, 0, 1),
(96, 'FL', 727, 1, 1),
(97, 'FL', 754, 1, 1),
(98, 'FL', 772, 1, 1),
(99, 'FL', 786, 1, 1),
(100, 'FL', 813, 1, 1),
(101, 'FL', 850, 1, 1),
(102, 'FL', 863, 1, 1),
(103, 'FL', 904, 1, 1),
(104, 'FL', 941, 1, 1),
(105, 'FL', 954, 1, 1),
(106, 'GA', 229, 1, 1),
(107, 'GA', 404, 1, 1),
(108, 'GA', 470, 0, 1),
(109, 'GA', 478, 1, 1),
(110, 'GA', 678, 1, 1),
(111, 'GA', 706, 1, 1),
(112, 'GA', 762, 1, 1),
(113, 'GA', 770, 0, 1),
(114, 'GA', 912, 1, 1),
(115, 'GU', 671, 0, 1),
(116, 'HI', 808, 0, 1),
(117, 'IA', 319, 1, 1),
(118, 'IA', 515, 1, 1),
(119, 'IA', 563, 1, 1),
(120, 'IA', 641, 0, 1),
(121, 'IA', 712, 1, 1),
(122, 'ID', 208, 1, 1),
(123, 'IL', 217, 1, 1),
(124, 'IL', 224, 1, 1),
(125, 'IL', 302, 1, 1),
(126, 'IL', 309, 1, 1),
(127, 'IL', 312, 1, 1),
(128, 'IL', 331, 1, 1),
(129, 'IL', 618, 1, 1),
(130, 'IL', 630, 1, 1),
(131, 'IL', 708, 1, 1),
(132, 'IL', 773, 1, 1),
(133, 'IL', 779, 1, 1),
(134, 'IL', 815, 1, 1),
(135, 'IL', 847, 1, 1),
(136, 'IL', 872, 0, 1),
(137, 'IN', 219, 1, 1),
(138, 'IN', 260, 1, 1),
(139, 'IN', 317, 1, 1),
(140, 'IN', 574, 1, 1),
(141, 'IN', 765, 1, 1),
(142, 'IN', 812, 1, 1),
(143, 'KS', 316, 1, 1),
(144, 'KS', 620, 1, 1),
(145, 'KS', 785, 1, 1),
(146, 'KS', 913, 1, 1),
(147, 'KY', 270, 1, 1),
(148, 'KY', 502, 1, 1),
(149, 'KY', 606, 1, 1),
(150, 'KY', 859, 1, 1),
(151, 'LA', 225, 1, 1),
(152, 'LA', 318, 1, 1),
(153, 'LA', 337, 1, 1),
(154, 'LA', 504, 1, 1),
(155, 'LA', 985, 1, 1),
(156, 'MA', 339, 1, 1),
(157, 'MA', 351, 0, 1),
(158, 'MA', 413, 1, 1),
(159, 'MA', 508, 1, 1),
(160, 'MA', 617, 1, 1),
(161, 'MA', 774, 1, 1),
(162, 'MA', 781, 1, 1),
(163, 'MA', 857, 1, 1),
(164, 'MA', 978, 1, 1),
(165, 'MB', 204, 1, 1),
(166, 'MD', 240, 1, 1),
(167, 'MD', 301, 1, 1),
(168, 'MD', 410, 1, 1),
(169, 'MD', 443, 1, 1),
(170, 'ME', 207, 1, 1),
(171, 'MI', 231, 1, 1),
(172, 'MI', 248, 1, 1),
(173, 'MI', 269, 1, 1),
(174, 'MI', 313, 1, 1),
(175, 'MI', 517, 1, 1),
(176, 'MI', 586, 1, 1),
(177, 'MI', 616, 1, 1),
(178, 'MI', 734, 1, 1),
(179, 'MI', 810, 1, 1),
(180, 'MI', 906, 1, 1),
(181, 'MI', 947, 0, 1),
(182, 'MI', 989, 1, 1),
(183, 'MN', 218, 1, 1),
(184, 'MN', 320, 1, 1),
(185, 'MN', 507, 1, 1),
(186, 'MN', 612, 1, 1),
(187, 'MN', 651, 1, 1),
(188, 'MN', 763, 1, 1),
(189, 'MN', 952, 1, 1),
(190, 'MO', 314, 1, 1),
(191, 'MO', 417, 1, 1),
(192, 'MO', 573, 1, 1),
(193, 'MO', 636, 1, 1),
(194, 'MO', 660, 1, 1),
(195, 'MO', 816, 1, 1),
(196, 'MS', 228, 1, 1),
(197, 'MS', 601, 1, 1),
(198, 'MS', 662, 1, 1),
(199, 'MS', 769, 1, 1),
(200, 'MT', 406, 1, 1),
(201, 'NB', 506, 0, 1),
(202, 'NC', 252, 1, 1),
(203, 'NC', 336, 1, 1),
(204, 'NC', 704, 1, 1),
(205, 'NC', 828, 1, 1),
(206, 'NC', 910, 1, 1),
(207, 'NC', 919, 1, 1),
(208, 'NC', 980, 1, 1),
(209, 'NC', 984, 0, 1),
(210, 'ND', 701, 1, 1),
(211, 'NE', 308, 1, 1),
(212, 'NE', 402, 1, 1),
(213, 'NE', 605, 1, 1),
(214, 'NH', 603, 1, 1),
(215, 'NJ', 201, 1, 1),
(216, 'NJ', 226, 1, 1),
(217, 'NJ', 254, 1, 1),
(218, 'NJ', 276, 1, 1),
(219, 'NJ', 289, 1, 1),
(220, 'NJ', 306, 0, 1),
(221, 'NJ', 316, 1, 1),
(222, 'NJ', 506, 0, 1),
(223, 'NJ', 551, 1, 1),
(224, 'NJ', 604, 1, 1),
(225, 'NJ', 609, 1, 1),
(226, 'NJ', 647, 1, 1),
(227, 'NJ', 705, 1, 1),
(228, 'NJ', 709, 1, 1),
(229, 'NJ', 732, 1, 1),
(230, 'NJ', 848, 1, 1),
(231, 'NJ', 856, 1, 1),
(232, 'NJ', 862, 1, 1),
(233, 'NJ', 908, 1, 1),
(234, 'NJ', 973, 1, 1),
(235, 'NL', 709, 1, 1),
(236, 'NM', 505, 1, 1),
(237, 'NM', 575, 1, 1),
(238, 'NS', 902, 1, 1),
(239, 'NT', 867, 0, 1),
(240, 'NU', 867, 0, 1),
(241, 'NV', 702, 1, 1),
(242, 'NV', 775, 1, 1),
(243, 'NY', 212, 0, 1),
(244, 'NY', 315, 1, 1),
(245, 'NY', 347, 1, 1),
(246, 'NY', 516, 1, 1),
(247, 'NY', 518, 1, 1),
(248, 'NY', 585, 1, 1),
(249, 'NY', 607, 1, 1),
(250, 'NY', 631, 1, 1),
(251, 'NY', 646, 1, 1),
(252, 'NY', 712, 1, 1),
(253, 'NY', 716, 1, 1),
(254, 'NY', 718, 1, 1),
(255, 'NY', 845, 1, 1),
(256, 'NY', 914, 1, 1),
(257, 'NY', 917, 1, 1),
(258, 'OH', 216, 1, 1),
(259, 'OH', 234, 1, 1),
(260, 'OH', 283, 0, 1),
(261, 'OH', 330, 1, 1),
(262, 'OH', 380, 0, 1),
(263, 'OH', 419, 1, 1),
(264, 'OH', 440, 1, 1),
(265, 'OH', 513, 1, 1),
(266, 'OH', 567, 1, 1),
(267, 'OH', 614, 1, 1),
(268, 'OH', 740, 1, 1),
(269, 'OH', 937, 1, 1),
(270, 'OK', 405, 1, 1),
(271, 'OK', 580, 1, 1),
(272, 'OK', 918, 1, 1),
(273, 'ON', 226, 1, 1),
(274, 'ON', 289, 1, 1),
(275, 'ON', 416, 0, 1),
(276, 'ON', 519, 1, 1),
(277, 'ON', 613, 1, 1),
(278, 'ON', 647, 1, 1),
(279, 'ON', 705, 1, 1),
(280, 'ON', 807, 0, 1),
(281, 'ON', 905, 1, 1),
(282, 'OR', 503, 1, 1),
(283, 'OR', 541, 1, 1),
(284, 'OR', 971, 1, 1),
(285, 'PA', 215, 1, 1),
(286, 'PA', 267, 1, 1),
(287, 'PA', 412, 1, 1),
(288, 'PA', 484, 1, 1),
(289, 'PA', 570, 1, 1),
(290, 'PA', 610, 1, 1),
(291, 'PA', 717, 1, 1),
(292, 'PA', 724, 1, 1),
(293, 'PA', 814, 1, 1),
(294, 'PA', 878, 0, 1),
(295, 'PE', 902, 1, 1),
(296, 'PR', 787, 0, 1),
(297, 'PR', 939, 0, 1),
(298, 'QC', 418, 1, 1),
(299, 'QC', 438, 0, 1),
(300, 'QC', 450, 1, 1),
(301, 'QC', 514, 1, 1),
(302, 'QC', 581, 0, 1),
(303, 'QC', 819, 1, 1),
(304, 'RI', 401, 1, 1),
(305, 'SC', 803, 1, 1),
(306, 'SC', 843, 1, 1),
(307, 'SC', 864, 1, 1),
(308, 'SD', 605, 1, 1),
(309, 'SK', 306, 0, 1),
(310, 'TN', 423, 1, 1),
(311, 'TN', 615, 1, 1),
(312, 'TN', 731, 1, 1),
(313, 'TN', 865, 1, 1),
(314, 'TN', 901, 1, 1),
(315, 'TN', 931, 1, 1),
(316, 'TX', 210, 1, 1),
(317, 'TX', 214, 1, 1),
(318, 'TX', 254, 1, 1),
(319, 'TX', 281, 1, 1),
(320, 'TX', 325, 1, 1),
(321, 'TX', 361, 1, 1),
(322, 'TX', 409, 1, 1),
(323, 'TX', 430, 0, 1),
(324, 'TX', 432, 1, 1),
(325, 'TX', 469, 1, 1),
(326, 'TX', 512, 1, 1),
(327, 'TX', 682, 1, 1),
(328, 'TX', 713, 0, 1),
(329, 'TX', 806, 1, 1),
(330, 'TX', 817, 1, 1),
(331, 'TX', 830, 1, 1),
(332, 'TX', 832, 1, 1),
(333, 'TX', 903, 1, 1),
(334, 'TX', 915, 1, 1),
(335, 'TX', 936, 1, 1),
(336, 'TX', 940, 1, 1),
(337, 'TX', 956, 1, 1),
(338, 'TX', 972, 1, 1),
(339, 'TX', 979, 1, 1),
(340, 'UT', 385, 1, 1),
(341, 'UT', 435, 1, 1),
(342, 'UT', 801, 1, 1),
(343, 'VA', 276, 1, 1),
(344, 'VA', 434, 1, 1),
(345, 'VA', 540, 1, 1),
(346, 'VA', 571, 1, 1),
(347, 'VA', 703, 1, 1),
(348, 'VA', 757, 1, 1),
(349, 'VA', 804, 1, 1),
(350, 'VI', 340, 0, 1),
(351, 'VT', 802, 1, 1),
(352, 'WA', 206, 1, 1),
(353, 'WA', 253, 1, 1),
(354, 'WA', 360, 1, 1),
(355, 'WA', 425, 1, 1),
(356, 'WA', 509, 1, 1),
(357, 'WA', 564, 0, 1),
(358, 'WI', 262, 1, 1),
(359, 'WA', 414, 1, 1),
(360, 'WA', 608, 1, 1),
(361, 'WA', 715, 1, 1),
(362, 'WA', 920, 1, 1),
(363, 'WV', 304, 1, 1),
(364, 'WV', 681, 0, 1),
(365, 'WY', 307, 1, 1),
(366, 'YT', 867, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `batch`
--

CREATE TABLE `batch` (
  `id` int(11) NOT NULL,
  `msg_id` int(11) NOT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bound_phones`
--

CREATE TABLE `bound_phones` (
  `id` int(11) NOT NULL,
  `to_number` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_number` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `group_id` int(11) NOT NULL DEFAULT 0,
  `lease_date` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `what_is_sent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `question_id` int(11) NOT NULL DEFAULT 0,
  `is_viral_code` int(11) NOT NULL DEFAULT 0,
  `viral_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bulk_sms`
--

CREATE TABLE `bulk_sms` (
  `id` int(11) NOT NULL,
  `message` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `bulk_media` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `bulk_sms`
--

INSERT INTO `bulk_sms` (`id`, `message`, `bulk_media`, `user_id`, `create_date`) VALUES
(1, 'hola mundo', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', 1, '2021-04-22 15:12:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `buttons`
--

CREATE TABLE `buttons` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `is_empty` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campaigns`
--

CREATE TABLE `campaigns` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '0 for contest, 1 for keyword campaign, 2 for autoresponder, 3 for trivia, 4 for viral, 5 schedule campaigns',
  `welcome_sms` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `already_member_msg` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code_message` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `notification_msg` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `winning_number` int(11) NOT NULL DEFAULT 0,
  `winner_msg` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `looser_msg` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `correct_sms` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `wrong_sms` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `complete_sms` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `contest_cycle_num` int(11) NOT NULL DEFAULT 0,
  `double_optin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `media` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `get_email` int(11) NOT NULL DEFAULT 0,
  `reply_email` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_updated` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `post_message` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_date` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expire_message` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `attach_mobile_device` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 for mobile device',
  `direct_subscription` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 for enabled',
  `double_optin_check` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 for enabled',
  `get_subs_name_check` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 for enabled',
  `msg_to_get_subscriber_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_received_confirmation_msg` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `campaign_expiry_check` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 for enabled',
  `followup_msg_check` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 for enabled',
  `double_optin_confirm_message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `campaign_beacon_check` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 for enable',
  `beacon_url_type` tinyint(4) DEFAULT 1 COMMENT '1 for coupon. 2 for custom URL',
  `beacon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coupon` int(11) DEFAULT NULL,
  `custom_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `share_with_subaccounts` int(11) NOT NULL DEFAULT 0,
  `device_id` int(11) NOT NULL DEFAULT 0,
  `share` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `campaigns`
--

INSERT INTO `campaigns` (`id`, `title`, `keyword`, `phone_number`, `type`, `welcome_sms`, `already_member_msg`, `code_message`, `notification_msg`, `winning_number`, `winner_msg`, `looser_msg`, `correct_sms`, `wrong_sms`, `complete_sms`, `contest_cycle_num`, `double_optin`, `media`, `get_email`, `reply_email`, `email_updated`, `user_id`, `created_date`, `post_message`, `start_date`, `end_date`, `expire_message`, `attach_mobile_device`, `direct_subscription`, `double_optin_check`, `get_subs_name_check`, `msg_to_get_subscriber_name`, `name_received_confirmation_msg`, `campaign_expiry_check`, `followup_msg_check`, `double_optin_confirm_message`, `campaign_beacon_check`, `beacon_url_type`, `beacon`, `coupon`, `custom_url`, `share_with_subaccounts`, `device_id`, `share`) VALUES
(1, 'Campaña de prueba', 'Prueba', '', 1, 'Bienvenido a esta campaña de prueba', 'Seguimos con las campañas de pruebas', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, '', 'https://prueba.ecoblue.com.co/uploads/608191cf20121_pp.jpg', 0, '', '', 1, '2021-04-22 15:10:07', NULL, '', '', '', 0, 0, 0, 0, '', '', 0, 0, '', 0, 0, '', 0, '', 0, 0, NULL),
(2, 'Camapaña nueva prueba', 'Nueva prueba', '', 1, 'buenvenido a nueva prueba', 'Ya eres miembro de nueva prueba', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, '', '', 0, '', '', 1, '2021-04-24 22:10:25', NULL, '', '', '', 0, 0, 0, 0, '', '', 0, 0, '', 0, 0, '', 0, '', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campaign_gift_track`
--

CREATE TABLE `campaign_gift_track` (
  `id` int(11) NOT NULL,
  `phone_number_id` int(11) DEFAULT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `is_gift` tinyint(4) DEFAULT 0,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `gift_number` tinyint(4) NOT NULL DEFAULT 0,
  `cycle_number` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campaign_keywords`
--

CREATE TABLE `campaign_keywords` (
  `id` int(11) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `keyword` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chat_history`
--

CREATE TABLE `chat_history` (
  `id` int(11) NOT NULL,
  `phone_id` int(11) NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `direction` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `message_sid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_read` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 for unread'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `follow_up_msgs`
--

CREATE TABLE `follow_up_msgs` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL DEFAULT 0,
  `delay_day` int(11) NOT NULL DEFAULT 0,
  `delay_time` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `media` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `loyalty`
--

CREATE TABLE `loyalty` (
  `id` int(11) NOT NULL,
  `visitor_id` varchar(200) NOT NULL,
  `page_id` varchar(200) NOT NULL,
  `keyword` varchar(200) NOT NULL,
  `winner` tinyint(4) NOT NULL DEFAULT 0,
  `time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mobile_devices`
--

CREATE TABLE `mobile_devices` (
  `id` int(11) NOT NULL,
  `device_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_modal` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_number` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_token` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `app_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 for enable',
  `user_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `device_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `package_plans`
--

CREATE TABLE `package_plans` (
  `id` int(11) NOT NULL,
  `title` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sms_credits` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number_limit` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iso_country` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_free_days` int(11) NOT NULL DEFAULT 0,
  `free_days` int(11) NOT NULL DEFAULT 0,
  `pkg_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sms_gateway` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'twilio'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `json` text CHARACTER SET latin1 DEFAULT NULL,
  `page_key` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `short_url` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `lat` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `lng` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `redeem_limit` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT 'none',
  `page_title` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `refresh_rate` int(11) DEFAULT NULL,
  `redeem_once` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT 'yes',
  `redeem_page_id` int(11) NOT NULL DEFAULT 0,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pages_data`
--

CREATE TABLE `pages_data` (
  `id` int(11) NOT NULL,
  `status` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `page_key` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payment_history`
--

CREATE TABLE `payment_history` (
  `id` int(11) NOT NULL,
  `business_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payer_status` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payer_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `txn_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_status` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gross_payment` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `payment_processor` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `queued_msgs`
--

CREATE TABLE `queued_msgs` (
  `id` int(11) NOT NULL,
  `to_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_id` int(11) NOT NULL DEFAULT 0,
  `message` text CHARACTER SET utf8 DEFAULT NULL,
  `media` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT 1 COMMENT '1 for bulk, 2 for appointment alert / followup',
  `message_time` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 for sent',
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `sms_gateway` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `send_to_user` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `redeems`
--

CREATE TABLE `redeems` (
  `id` int(11) NOT NULL,
  `visitor_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `page_id` int(11) NOT NULL,
  `coupon` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `redeems_archive`
--

CREATE TABLE `redeems_archive` (
  `id` int(11) NOT NULL,
  `visitor_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `page_id` int(11) NOT NULL,
  `coupon` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rollover_credits`
--

CREATE TABLE `rollover_credits` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `credits` int(11) NOT NULL DEFAULT 0,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedulers`
--

CREATE TABLE `schedulers` (
  `id` int(11) NOT NULL,
  `title` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scheduled_time` datetime DEFAULT NULL,
  `group_id` int(11) NOT NULL DEFAULT 0,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `media` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 for sent',
  `scheduler_type` int(11) NOT NULL DEFAULT 0 COMMENT '1 for scheduler, 2 for delay msg of campaign, 3 for appt reminders',
  `user_id` int(11) NOT NULL DEFAULT 0,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `attach_mobile_device` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 for mobile device',
  `device_id` int(11) NOT NULL DEFAULT 0,
  `send_immediate` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 for immediate',
  `survey_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `search` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom` int(11) NOT NULL DEFAULT 0,
  `appt_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `schedulers`
--

INSERT INTO `schedulers` (`id`, `title`, `scheduled_time`, `group_id`, `phone_number`, `message`, `media`, `status`, `scheduler_type`, `user_id`, `created_date`, `attach_mobile_device`, `device_id`, `send_immediate`, `survey_url`, `search`, `custom`, `appt_id`) VALUES
(22, 'Esta es la prueba', '2021-04-27 20:45:00', 1, 'all', 'MMMIIGGUUEEELLLLL RRRAAFFFAAEEEELLL', '', 1, 1, 1, '2021-04-28 01:35:09', 0, 0, 0, NULL, '', 0, 0),
(21, 'Esta es la prueba', '2021-04-27 20:30:00', 1, 'all', 'MMMIIGGUUEEELLLLL RRRAAFFFAAEEEELLL', '', 1, 1, 1, '2021-04-28 01:33:42', 0, 0, 0, NULL, '', 0, 0),
(20, 'Esta es la prueba', '2021-04-27 20:30:00', 1, 'all', 'MMMIIGGUUEEELLLLL RRRAAFFFAAEEEELLL', '', 1, 1, 1, '2021-04-28 01:24:20', 0, 0, 0, NULL, '', 0, 0),
(19, 'Esta es la prueba', '2021-04-27 20:30:00', 1, 'all', 'MMMIIGGUUEEELLLLL RRRAAFFFAAEEEELLL', '', 1, 1, 1, '2021-04-28 01:23:23', 0, 0, 0, NULL, '', 0, 0),
(18, 'Esta es la prueba', '2021-04-27 20:30:00', 1, '1', 'MMMIIGGUUEEELLLLL', '', 1, 1, 1, '2021-04-28 01:22:38', 0, 0, 0, NULL, '', 0, 0),
(17, 'Mensajes de prueba', '2021-04-27 15:00:00', 1, '1', 'eseseseses', '', 1, 1, 1, '2021-04-27 19:46:39', 0, 0, 0, NULL, '', 0, 0),
(16, 'Mensaje de Prueba', '2021-04-27 15:00:00', 1, '1', 'ESTE Miguel', '', 1, 1, 1, '2021-04-27 19:43:06', 0, 0, 0, NULL, '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sms_history`
--

CREATE TABLE `sms_history` (
  `id` int(11) NOT NULL,
  `to_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `media` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sms_sid` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `direction` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `parent_msg_id` int(11) NOT NULL DEFAULT 0,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_sent` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'false',
  `win_bit` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sms_history`
--

INSERT INTO `sms_history` (`id`, `to_number`, `from_number`, `text`, `media`, `sms_sid`, `direction`, `group_id`, `user_id`, `parent_msg_id`, `created_date`, `is_sent`, `win_bit`) VALUES
(1, '+573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 14:36:09', 'false', 0),
(2, '+573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 14:37:44', 'false', 0),
(3, '+573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 14:39:52', 'false', 0),
(4, '+573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 14:42:41', 'false', 0),
(5, '+573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 14:46:34', 'false', 0),
(6, '+573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 14:46:34', 'false', 0),
(7, '+573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 14:46:34', 'false', 0),
(8, '+573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 14:46:34', 'false', 0),
(9, '+573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 14:47:45', 'false', 0),
(10, '+573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 14:48:27', 'false', 0),
(11, '+573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 14:51:13', 'false', 0),
(12, '+573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 14:53:08', 'false', 0),
(13, '+573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 14:54:32', 'false', 0),
(14, '+573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 14:55:25', 'false', 0),
(15, '+573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 14:55:43', 'false', 0),
(16, '+573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 14:56:25', 'false', 0),
(17, '+573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 15:07:07', 'false', 0),
(18, '+573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 15:22:21', 'false', 0),
(19, '+573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 15:23:00', 'false', 0),
(20, '+573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 15:23:25', 'false', 0),
(21, '+573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 15:36:00', 'false', 0),
(22, '+573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 15:41:00', 'false', 0),
(23, '+573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 15:44:45', 'false', 0),
(24, '+573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 16:10:09', 'false', 0),
(25, '+573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 16:12:21', 'false', 0),
(26, '+573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 16:20:03', 'false', 0),
(27, '+573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 16:20:17', 'false', 0),
(28, '+573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 16:23:10', 'false', 0),
(29, '+573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 17:52:33', 'false', 0),
(30, '+573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 18:04:05', 'false', 0),
(31, '+573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 18:04:30', 'false', 0),
(32, '573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 18:06:05', 'false', 0),
(33, '573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 18:07:29', 'false', 0),
(34, '573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 18:16:29', 'false', 0),
(35, '573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 18:18:52', 'false', 0),
(36, '573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 18:20:13', 'false', 0),
(37, '573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 18:21:42', 'false', 0),
(38, '573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 18:22:32', 'false', 0),
(39, '573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 18:25:13', 'false', 0),
(40, '573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 18:43:14', 'false', 0),
(41, '573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 19:11:13', 'false', 0),
(42, '573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 19:11:35', 'false', 0),
(43, '573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 19:12:09', 'false', 0),
(44, '573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 19:12:42', 'false', 0),
(45, '573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 19:15:31', 'false', 0),
(46, '573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 19:17:20', 'false', 0),
(47, '573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 19:18:28', 'false', 0),
(48, '573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 19:21:51', 'false', 0),
(49, '573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 19:23:45', 'false', 0),
(50, '573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 19:24:10', 'false', 0),
(51, '573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 19:25:00', 'false', 0),
(52, '573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 19:25:23', 'false', 0),
(53, '573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 19:25:48', 'false', 0),
(54, '573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 19:26:56', 'false', 0),
(55, '573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 19:27:31', 'false', 0),
(56, '573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 19:31:18', 'false', 0),
(57, '573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 19:31:41', 'false', 0),
(58, '573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 19:32:46', 'false', 0),
(59, '573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 19:36:48', 'false', 0),
(60, '573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 19:37:53', 'false', 0),
(61, '573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 19:38:46', 'false', 0),
(62, '573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 19:39:59', 'false', 0),
(63, '573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 19:41:23', 'false', 0),
(64, '573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 19:42:37', 'false', 0),
(65, '573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 19:42:57', 'false', 0),
(66, '573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-22 19:45:38', 'false', 0),
(67, '573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-23 10:42:41', 'false', 0),
(68, '573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-23 10:57:58', 'false', 0),
(69, '573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-23 11:38:02', 'false', 0),
(70, '573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 1, 1, 0, '2021-04-23 15:17:57', 'false', 0),
(71, '573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 0, 1, 0, '2021-04-24 17:18:22', 'false', 0),
(72, '573053707087', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 0, 1, 0, '2021-04-24 17:18:22', 'false', 0),
(73, '3223800248', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 0, 1, 0, '2021-04-24 17:18:22', 'false', 0),
(74, '573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 0, 1, 0, '2021-04-24 17:18:46', 'false', 0),
(75, '573053707087', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 0, 1, 0, '2021-04-24 17:18:46', 'false', 0),
(76, '3223800248', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 0, 1, 0, '2021-04-24 17:18:46', 'false', 0),
(77, '573053707087', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 0, 1, 0, '2021-04-24 20:33:51', 'false', 0),
(78, '3223800248', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 0, 1, 0, '2021-04-24 20:33:51', 'false', 0),
(79, '573155686708', '31555686708', 'hola mundo ', 'https://prueba.ecoblue.com.co/uploads/608192597f36e_kanuckles.jpg', '', 'out-bound', 0, 1, 0, '2021-04-24 20:33:51', 'false', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `State` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Status` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `states`
--

INSERT INTO `states` (`id`, `State`, `Code`, `Status`) VALUES
(1, 'Alabama', 'AL', '1'),
(2, 'Alaska', 'AK', '1'),
(3, 'Arizona', 'AZ', '1'),
(4, 'Arkansas', 'AR', '1'),
(5, 'California', 'CA', '1'),
(6, 'Colorado', 'CO', '1'),
(7, 'Connecticut', 'CT', '1'),
(8, 'Delaware', 'DE', '1'),
(9, 'District Of Columbia', 'DC', '1'),
(10, 'Florida', 'FL', '1'),
(11, 'Georgia', 'GA', '1'),
(12, 'Hawaii', 'HI', '1'),
(13, 'Idaho', 'ID', '1'),
(14, 'Illinois', 'IL', '1'),
(15, 'Indiana', 'IN', '1'),
(16, 'Iowa', 'IA', '1'),
(17, 'Kansas', 'KS', '1'),
(18, 'Kentucky', 'KY', '1'),
(19, 'Louisiana', 'LA', '1'),
(20, 'Maine', 'ME', '1'),
(21, 'Maryland', 'MD', '1'),
(22, 'Massachusetts', 'MA', '1'),
(23, 'Michigan', 'MI', '1'),
(24, 'Minnesota', 'MN', '1'),
(25, 'Mississippi', 'MS', '1'),
(26, 'Missouri', 'MO', '1'),
(27, 'Montana', 'MT', '1'),
(28, 'Nebraska', 'NE', '1'),
(29, 'Nevada', 'NV', '1'),
(30, 'New Hampshire', 'NH', '1'),
(31, 'New Jersey', 'NJ', '1'),
(32, 'New Mexico', 'NM', '1'),
(33, 'New York', 'NY', '1'),
(34, 'North Carolina', 'NC', '1'),
(35, 'North Dakota', 'ND', '1'),
(36, 'Ohio', 'OH', '1'),
(37, 'Oklahoma', 'OK', '1'),
(38, 'Oregon', 'OR', '1'),
(39, 'Pennsylvania', 'PA', '1'),
(40, 'Rhode Island', 'RI', '1'),
(41, 'South Carolina', 'SC', '1'),
(42, 'South Dakota', 'SD', '1'),
(43, 'Tennessee', 'TN', '1'),
(44, 'Texas', 'TX', '1'),
(45, 'Utah', 'UT', '1'),
(46, 'Vermont', 'VT', '1'),
(47, 'Virginia', 'VA', '1'),
(48, 'Washington', 'WA', '1'),
(49, 'West Virginia', 'WV', '1'),
(50, 'Wisconsin', 'WI', '1'),
(51, 'Wyoming', 'WY', '1'),
(52, 'Alberta', 'CA_AB', '1'),
(53, 'British Columbia', 'CA_BC', '1'),
(54, 'Manitoba', 'CA_MB', '1'),
(55, 'New Brunswick', 'CA_NB', '1'),
(56, 'Newfoundland', 'CA_NL', '1'),
(57, 'Nova Scotia', 'CA_NS', '1'),
(58, 'Ontario', 'CA_ON', '1'),
(59, 'Prince Edward Island', 'CA_PE', '1'),
(60, 'Quebec', 'CA_QC', '1'),
(61, 'Saskatchewan', 'CA_SK', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anniversary` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 for active, 2 for block, 3 for deleted',
  `subs_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `unsubscribe_date` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `caller_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `caller_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `carrier_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `carrier_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_country_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_network_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_info` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `subscribers`
--

INSERT INTO `subscribers` (`id`, `first_name`, `last_name`, `phone_number`, `email`, `city`, `state`, `birthday`, `anniversary`, `status`, `subs_type`, `user_id`, `unsubscribe_date`, `created_date`, `caller_name`, `caller_type`, `country_code`, `carrier_name`, `carrier_type`, `mobile_country_code`, `mobile_network_code`, `custom_info`) VALUES
(1, 'Miguel', NULL, '573155686708', 'saranhae1234@gmail.com', 'Bogotá', '1', NULL, NULL, 1, 'campaign', 1, NULL, '2021-04-22 15:11:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Rafael', NULL, '3223800248', 'saranhae1234@gmail.com', 'Bogotá', 'fonti', NULL, NULL, 1, 'campaign', 1, NULL, '2021-04-23 18:19:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Diana', NULL, '573053707087', 'dianitamariaramirez@hotmail.com', 'Bogota', 'h', NULL, NULL, 1, 'campaign', 1, NULL, '2021-04-24 22:12:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subscribers_group_assignment`
--

CREATE TABLE `subscribers_group_assignment` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL DEFAULT 0,
  `subscriber_id` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 for active, 2 for blocked, 3 for deleted',
  `user_id` int(11) NOT NULL DEFAULT 0,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `subscribers_group_assignment`
--

INSERT INTO `subscribers_group_assignment` (`id`, `group_id`, `subscriber_id`, `status`, `user_id`, `created_date`) VALUES
(1, 1, 1, 1, 1, '2021-04-22 15:11:02'),
(2, 1, 2, 1, 1, '2021-04-23 18:19:26'),
(3, 2, 3, 1, 1, '2021-04-24 22:12:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `surveys`
--

CREATE TABLE `surveys` (
  `id` int(11) NOT NULL,
  `survey_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `survey_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `survey_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `survey_answers`
--

CREATE TABLE `survey_answers` (
  `id` int(11) NOT NULL,
  `attempt_id` int(11) NOT NULL,
  `question_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `question_id` int(11) NOT NULL,
  `survey_id` int(11) NOT NULL,
  `answer` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `survey_questions`
--

CREATE TABLE `survey_questions` (
  `id` int(11) NOT NULL,
  `survey_id` int(11) NOT NULL,
  `question_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `question` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `answers` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `media` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `survey_responses`
--

CREATE TABLE `survey_responses` (
  `id` int(11) NOT NULL,
  `survey_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `template_reminders`
--

CREATE TABLE `template_reminders` (
  `id` int(11) NOT NULL,
  `reminder_days` varchar(225) DEFAULT NULL,
  `reminder_type` tinyint(4) DEFAULT NULL,
  `sms_text` longtext CHARACTER SET utf8 DEFAULT NULL,
  `media` varchar(50) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `reminder_time` varchar(5) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `time_zones`
--

CREATE TABLE `time_zones` (
  `id` int(11) NOT NULL,
  `time_zone` varchar(150) NOT NULL,
  `time_zone_value` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `time_zones`
--

INSERT INTO `time_zones` (`id`, `time_zone`, `time_zone_value`) VALUES
(1, 'Pacific/Midway', '(GMT-11:00) Midway Island'),
(2, 'US/Samoa', '(GMT-11:00) Samoa'),
(3, 'US/Hawaii', '(GMT-10:00) Hawaii'),
(4, 'US/Alaska', '(GMT-09:00) Alaska'),
(5, 'US/Pacific', '(GMT-08:00) Pacific Time (US &amp; Canada)'),
(6, 'America/Tijuana', '(GMT-08:00) Tijuana'),
(7, 'US/Arizona', '(GMT-07:00) Arizona'),
(8, 'US/Mountain', '(GMT-07:00) Mountain Time (US &amp; Canada)'),
(9, 'America/Chihuahua', '(GMT-07:00) Chihuahua'),
(10, 'America/Mazatlan', '(GMT-07:00) Mazatlan'),
(11, 'America/Mexico_City', '(GMT-06:00) Mexico City'),
(12, 'America/Monterrey', '(GMT-06:00) Monterrey'),
(13, 'Canada/Saskatchewan', '(GMT-06:00) Saskatchewan'),
(14, 'US/Central', '(GMT-06:00) Central Time (US &amp; Canada)'),
(15, 'US/Eastern', '(GMT-05:00) Eastern Time (US &amp; Canada)'),
(16, 'US/East-Indiana', '(GMT-05:00) Indiana (East)'),
(17, 'America/Bogota', '(GMT-05:00) Bogota'),
(18, 'America/Lima', '(GMT-05:00) Lima'),
(19, 'America/Caracas', '(GMT-04:30) Caracas'),
(20, 'Canada/Atlantic', '(GMT-04:00) Atlantic Time (Canada)'),
(21, 'America/La_Paz', '(GMT-04:00) La Paz'),
(22, 'America/Santiago', '(GMT-04:00) Santiago'),
(23, 'Canada/Newfoundland', '(GMT-03:30) Newfoundland'),
(24, 'America/Buenos_Aires', '(GMT-03:00) Buenos Aires'),
(25, 'Greenland', '(GMT-03:00) Greenland'),
(26, 'Atlantic/Stanley', '(GMT-02:00) Stanley'),
(27, 'Atlantic/Azores', '(GMT-01:00) Azores'),
(28, 'Atlantic/Cape_Verde', '(GMT-01:00) Cape Verde Is.'),
(29, 'Africa/Casablanca', '(GMT) Casablanca'),
(30, 'Europe/Dublin', '(GMT) Dublin'),
(31, 'Europe/Lisbon', '(GMT) Lisbon'),
(32, 'Europe/London', '(GMT) London'),
(33, 'Africa/Monrovia', '(GMT) Monrovia'),
(34, 'Europe/Amsterdam', '(GMT+01:00) Amsterdam'),
(35, 'Europe/Belgrade', '(GMT+01:00) Belgrade'),
(36, 'Europe/Berlin', '(GMT+01:00) Berlin'),
(37, 'Europe/Bratislava', '(GMT+01:00) Bratislava'),
(38, 'Europe/Brussels', '(GMT+01:00) Brussels'),
(39, 'Europe/Budapest', '(GMT+01:00) Budapest'),
(40, 'Europe/Copenhagen', '(GMT+01:00) Copenhagen'),
(41, 'Europe/Ljubljana', '(GMT+01:00) Ljubljana'),
(42, 'Europe/Madrid', '(GMT+01:00) Madrid'),
(43, 'Europe/Paris', '(GMT+01:00) Paris'),
(44, 'Europe/Prague', '(GMT+01:00) Prague'),
(45, 'Europe/Rome', '(GMT+01:00) Rome'),
(46, 'Europe/Sarajevo', '(GMT+01:00) Sarajevo'),
(47, 'Europe/Skopje', '(GMT+01:00) Skopje'),
(48, 'Europe/Stockholm', '(GMT+01:00) Stockholm'),
(49, 'Europe/Vienna', '(GMT+01:00) Vienna'),
(50, 'Europe/Warsaw', '(GMT+01:00) Warsaw'),
(51, 'Europe/Zagreb', '(GMT+01:00) Zagreb'),
(52, 'Europe/Athens', '(GMT+02:00) Athens'),
(53, 'Europe/Bucharest', '(GMT+02:00) Bucharest'),
(54, 'Africa/Cairo', '(GMT+02:00) Cairo'),
(55, 'Africa/Harare', '(GMT+02:00) Harare'),
(56, 'Europe/Helsinki', '(GMT+02:00) Helsinki'),
(57, 'Europe/Istanbul', '(GMT+02:00) Istanbul'),
(58, 'Asia/Jerusalem', '(GMT+02:00) Jerusalem'),
(59, 'Europe/Kiev', '(GMT+02:00) Kyiv'),
(60, 'Europe/Minsk', '(GMT+02:00) Minsk'),
(61, 'Europe/Riga', '(GMT+02:00) Riga'),
(62, 'Europe/Sofia', '(GMT+02:00) Sofia'),
(63, 'Europe/Tallinn', '(GMT+02:00) Tallinn'),
(64, 'Europe/Vilnius', '(GMT+02:00) Vilnius'),
(65, 'Asia/Baghdad', '(GMT+03:00) Baghdad'),
(66, 'Asia/Kuwait', '(GMT+03:00) Kuwait'),
(67, 'Africa/Nairobi', '(GMT+03:00) Nairobi'),
(68, 'Asia/Riyadh', '(GMT+03:00) Riyadh'),
(69, 'Europe/Moscow', '(GMT+03:00) Moscow'),
(70, 'Asia/Tehran', '(GMT+03:30) Tehran'),
(71, 'Asia/Baku', '(GMT+04:00) Baku'),
(72, 'Europe/Volgograd', '(GMT+04:00) Volgograd'),
(73, 'Asia/Muscat', '(GMT+04:00) Muscat'),
(74, 'Asia/Tbilisi', '(GMT+04:00) Tbilisi'),
(75, 'Asia/Yerevan', '(GMT+04:00) Yerevan'),
(76, 'Asia/Kabul', '(GMT+04:30) Kabul'),
(77, 'Asia/Karachi', '(GMT+05:00) Karachi'),
(78, 'Asia/Tashkent', '(GMT+05:00) Tashkent'),
(79, 'Asia/Kolkata', '(GMT+05:30) Kolkata'),
(80, 'Asia/Kathmandu', '(GMT+05:45) Kathmandu'),
(81, 'Asia/Yekaterinburg', '(GMT+06:00) Ekaterinburg'),
(82, 'Asia/Almaty', '(GMT+06:00) Almaty'),
(83, 'Asia/Dhaka', '(GMT+06:00) Dhaka'),
(84, 'Asia/Novosibirsk', '(GMT+07:00) Novosibirsk'),
(85, 'Asia/Bangkok', '(GMT+07:00) Bangkok'),
(86, 'Asia/Jakarta', '(GMT+07:00) Jakarta'),
(87, 'Asia/Krasnoyarsk', '(GMT+08:00) Krasnoyarsk'),
(88, 'Asia/Chongqing', '(GMT+08:00) Chongqing'),
(89, 'Asia/Hong_Kong', '(GMT+08:00) Hong Kong'),
(90, 'Asia/Kuala_Lumpur', '(GMT+08:00) Kuala Lumpur'),
(91, 'Australia/Perth', '(GMT+08:00) Perth'),
(92, 'Asia/Singapore', '(GMT+08:00) Singapore'),
(93, 'Asia/Taipei', '(GMT+08:00) Taipei'),
(94, 'Asia/Ulaanbaatar', '(GMT+08:00) Ulaan Bataar'),
(95, 'Asia/Urumqi', '(GMT+08:00) Urumqi'),
(96, 'Asia/Irkutsk', '(GMT+09:00) Irkutsk'),
(97, 'Asia/Seoul', '(GMT+09:00) Seoul'),
(98, 'Asia/Tokyo', '(GMT+09:00) Tokyo'),
(99, 'Australia/Adelaide', '(GMT+09:30) Adelaide'),
(100, 'Australia/Darwin', '(GMT+09:30) Darwin'),
(101, 'Asia/Yakutsk', '(GMT+10:00) Yakutsk'),
(102, 'Australia/Brisbane', '(GMT+10:00) Brisbane'),
(103, 'Australia/Canberra', '(GMT+10:00) Canberra'),
(104, 'Pacific/Guam', '(GMT+10:00) Guam'),
(105, 'Australia/Hobart', '(GMT+10:00) Hobart'),
(106, 'Australia/Melbourne', '(GMT+10:00) Melbourne'),
(107, 'Pacific/Port_Moresby', '(GMT+10:00) Port Moresby'),
(108, 'Australia/Sydney', '(GMT+10:00) Sydney'),
(109, 'Asia/Vladivostok', '(GMT+11:00) Vladivostok'),
(110, 'Asia/Magadan', '(GMT+12:00) Magadan'),
(111, 'Pacific/Auckland', '(GMT+12:00) Auckland'),
(112, 'Pacific/Fiji', '(GMT+12:00) Fiji');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trivia_answers`
--

CREATE TABLE `trivia_answers` (
  `id` int(11) NOT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `correct` int(11) NOT NULL DEFAULT 0,
  `question_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trivia_questions`
--

CREATE TABLE `trivia_questions` (
  `id` int(11) NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `campaign_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `twitter_data`
--

CREATE TABLE `twitter_data` (
  `id` int(11) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `user_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `json` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `business_name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tcap_ctia` int(11) NOT NULL DEFAULT 0,
  `msg_and_data_rate` int(11) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0 COMMENT '1 admin, 2 for subacc',
  `parent_user_id` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 for active, 2 for block, 3 for deleted',
  `used_sms_credits` int(11) NOT NULL DEFAULT 0,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `city` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `response` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `response_code` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `subscription_id` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `authorize_status` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paypal_subscriber_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customerID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subscriptionID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subscriptionData` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `app_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `app_secret` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `access_token` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `tw_access_token` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `tw_access_token_secret` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `tw_consumer_key` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `tw_consumer_secret` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `business_name`, `tcap_ctia`, `msg_and_data_rate`, `type`, `parent_user_id`, `status`, `used_sms_credits`, `created_date`, `city`, `state`, `zip`, `address`, `response`, `response_code`, `subscription_id`, `authorize_status`, `paypal_subscriber_id`, `customerID`, `subscriptionID`, `subscriptionData`, `app_id`, `app_secret`, `access_token`, `tw_access_token`, `tw_access_token_secret`, `tw_consumer_key`, `tw_consumer_secret`) VALUES
(1, 'Miguel', 'Martinez', 'miguelangel_1704@hotmail.com', '$2y$10$3RfmjA9PzUnZWWjhOg8kFepYNXp5mNtic78TE/C8oPqz42KrDbrge', 'Prueba', 1, 1, 1, 0, 1, 237, '2021-04-17 18:25:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_phone_numbers`
--

CREATE TABLE `users_phone_numbers` (
  `id` int(11) NOT NULL,
  `friendly_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iso_country` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_sid` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 1 COMMENT '1 for twilio, 2 for plivo, 3 for nexmo, 4 for whatsapp, 5 for signalwire, 6 for tele api, 7 for telnyx',
  `user_id` int(11) NOT NULL DEFAULT 0,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_package_assignment`
--

CREATE TABLE `user_package_assignment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `pkg_id` int(11) NOT NULL DEFAULT 0,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `sms_credits` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `used_sms_credits` varchar(100) COLLATE utf8_unicode_ci DEFAULT '0',
  `phone_number_limit` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iso_country` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkg_country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 for suspended',
  `assigned_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `sms_gateway` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `viral_coupon_codes`
--

CREATE TABLE `viral_coupon_codes` (
  `id` int(11) NOT NULL,
  `phone_number_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `viral_friends`
--

CREATE TABLE `viral_friends` (
  `id` int(11) NOT NULL,
  `phone_number_id` int(11) NOT NULL,
  `parent_phone_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0 for new as default, 1 friend counted',
  `created_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitors`
--

CREATE TABLE `visitors` (
  `id` int(11) NOT NULL,
  `visitor_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `page_id` int(11) NOT NULL,
  `ip` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `hits` int(11) NOT NULL DEFAULT 0,
  `facebook` int(11) NOT NULL DEFAULT 0,
  `twitter` int(11) NOT NULL DEFAULT 0,
  `email` int(11) NOT NULL DEFAULT 0,
  `sms` int(11) NOT NULL DEFAULT 0,
  `time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `webforms`
--

CREATE TABLE `webforms` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `webform_name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `campaign_id` int(11) NOT NULL DEFAULT 0,
  `label_for_name_field` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label_for_phone_field` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label_for_email_field` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `disclaimer_text` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_width` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_height` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subs_btn_bg_color` varchar(50) COLLATE utf8_unicode_ci DEFAULT '#FFFFFF',
  `close_btn_bg_color` varchar(50) COLLATE utf8_unicode_ci DEFAULT '#FFFFFF',
  `color_for_label` varchar(50) COLLATE utf8_unicode_ci DEFAULT '#FFFFFF',
  `frame_width` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `frame_height` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `frame_bg_color` varchar(50) COLLATE utf8_unicode_ci DEFAULT '#FFFFFF',
  `webform_type` tinyint(4) NOT NULL DEFAULT 1,
  `custom_fields` text CHARACTER SET utf8 DEFAULT NULL,
  `label_for_disclaimer_text` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `heading_for_custom_info_panel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `showing_method` int(11) NOT NULL DEFAULT 1 COMMENT '1 for pop, 2 for on page'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `web_user_info`
--

CREATE TABLE `web_user_info` (
  `id` int(11) NOT NULL,
  `pkg_id` int(11) NOT NULL DEFAULT 0,
  `first_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `business_name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tcap_ctia` int(11) NOT NULL DEFAULT 0,
  `msg_and_data_rate` int(11) NOT NULL DEFAULT 0,
  `parent_user_id` int(11) NOT NULL DEFAULT 0,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `city` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `response` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `response_code` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `subscription_id` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `application_settings`
--
ALTER TABLE `application_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `appointment_alerts`
--
ALTER TABLE `appointment_alerts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `appointment_followup_msgs`
--
ALTER TABLE `appointment_followup_msgs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `appointment_templates`
--
ALTER TABLE `appointment_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `area_codes`
--
ALTER TABLE `area_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `batch`
--
ALTER TABLE `batch`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bound_phones`
--
ALTER TABLE `bound_phones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bulk_sms`
--
ALTER TABLE `bulk_sms`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `buttons`
--
ALTER TABLE `buttons`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `campaign_gift_track`
--
ALTER TABLE `campaign_gift_track`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `campaign_keywords`
--
ALTER TABLE `campaign_keywords`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `chat_history`
--
ALTER TABLE `chat_history`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `follow_up_msgs`
--
ALTER TABLE `follow_up_msgs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `loyalty`
--
ALTER TABLE `loyalty`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mobile_devices`
--
ALTER TABLE `mobile_devices`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `package_plans`
--
ALTER TABLE `package_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pages_data`
--
ALTER TABLE `pages_data`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `payment_history`
--
ALTER TABLE `payment_history`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `queued_msgs`
--
ALTER TABLE `queued_msgs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `redeems`
--
ALTER TABLE `redeems`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `redeems_archive`
--
ALTER TABLE `redeems_archive`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rollover_credits`
--
ALTER TABLE `rollover_credits`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `schedulers`
--
ALTER TABLE `schedulers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sms_history`
--
ALTER TABLE `sms_history`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subscribers_group_assignment`
--
ALTER TABLE `subscribers_group_assignment`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `surveys`
--
ALTER TABLE `surveys`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `survey_answers`
--
ALTER TABLE `survey_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `survey_questions`
--
ALTER TABLE `survey_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `survey_responses`
--
ALTER TABLE `survey_responses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `template_reminders`
--
ALTER TABLE `template_reminders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `time_zones`
--
ALTER TABLE `time_zones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `trivia_answers`
--
ALTER TABLE `trivia_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `trivia_questions`
--
ALTER TABLE `trivia_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `twitter_data`
--
ALTER TABLE `twitter_data`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users_phone_numbers`
--
ALTER TABLE `users_phone_numbers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user_package_assignment`
--
ALTER TABLE `user_package_assignment`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `viral_coupon_codes`
--
ALTER TABLE `viral_coupon_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `viral_friends`
--
ALTER TABLE `viral_friends`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `webforms`
--
ALTER TABLE `webforms`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `web_user_info`
--
ALTER TABLE `web_user_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `application_settings`
--
ALTER TABLE `application_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `appointment_alerts`
--
ALTER TABLE `appointment_alerts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `appointment_followup_msgs`
--
ALTER TABLE `appointment_followup_msgs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `appointment_templates`
--
ALTER TABLE `appointment_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `area_codes`
--
ALTER TABLE `area_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=367;

--
-- AUTO_INCREMENT de la tabla `batch`
--
ALTER TABLE `batch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bound_phones`
--
ALTER TABLE `bound_phones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bulk_sms`
--
ALTER TABLE `bulk_sms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `buttons`
--
ALTER TABLE `buttons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `campaign_gift_track`
--
ALTER TABLE `campaign_gift_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `campaign_keywords`
--
ALTER TABLE `campaign_keywords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `chat_history`
--
ALTER TABLE `chat_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `follow_up_msgs`
--
ALTER TABLE `follow_up_msgs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `loyalty`
--
ALTER TABLE `loyalty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mobile_devices`
--
ALTER TABLE `mobile_devices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `package_plans`
--
ALTER TABLE `package_plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pages_data`
--
ALTER TABLE `pages_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `payment_history`
--
ALTER TABLE `payment_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `queued_msgs`
--
ALTER TABLE `queued_msgs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT de la tabla `redeems`
--
ALTER TABLE `redeems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `redeems_archive`
--
ALTER TABLE `redeems_archive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rollover_credits`
--
ALTER TABLE `rollover_credits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `schedulers`
--
ALTER TABLE `schedulers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `sms_history`
--
ALTER TABLE `sms_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT de la tabla `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de la tabla `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `subscribers_group_assignment`
--
ALTER TABLE `subscribers_group_assignment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `surveys`
--
ALTER TABLE `surveys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `survey_answers`
--
ALTER TABLE `survey_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `survey_questions`
--
ALTER TABLE `survey_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `survey_responses`
--
ALTER TABLE `survey_responses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `template_reminders`
--
ALTER TABLE `template_reminders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `time_zones`
--
ALTER TABLE `time_zones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT de la tabla `trivia_answers`
--
ALTER TABLE `trivia_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `trivia_questions`
--
ALTER TABLE `trivia_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `twitter_data`
--
ALTER TABLE `twitter_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users_phone_numbers`
--
ALTER TABLE `users_phone_numbers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `user_package_assignment`
--
ALTER TABLE `user_package_assignment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `viral_coupon_codes`
--
ALTER TABLE `viral_coupon_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `viral_friends`
--
ALTER TABLE `viral_friends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `webforms`
--
ALTER TABLE `webforms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `web_user_info`
--
ALTER TABLE `web_user_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
