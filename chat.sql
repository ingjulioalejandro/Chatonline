-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 16 oct. 2024 à 12:18
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `chat`
--

-- --------------------------------------------------------

--
-- Structure de la table `chatrooms`
--

CREATE TABLE `chatrooms` (
  `room_id` int(11) NOT NULL,
  `room_name` varchar(100) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `chatrooms`
--

INSERT INTO `chatrooms` (`room_id`, `room_name`, `created_by`, `created_at`) VALUES
(30, 'Test group test', '178821753', '2024-10-11 16:02:24'),
(31, '1110', '178821753', '2024-10-11 16:37:21'),
(32, 'Test11111', '178821753', '2024-10-11 16:39:10'),
(33, 'qqqqqqqqqqqqq', '178821753', '2024-10-11 16:41:13'),
(34, 'dsdddddddd', '178821753', '2024-10-11 16:41:40'),
(35, 'qqqqqqqqqqqqqqqq', '178821753', '2024-10-11 16:43:43'),
(36, 'qqqqqq2', '178821753', '2024-10-11 16:44:08'),
(37, 'qcdzdzdzd', '178821753', '2024-10-11 16:45:35'),
(38, 'sdzdvzaa', '178821753', '2024-10-11 16:46:12'),
(39, 'sssss', '178821753', '2024-10-11 16:47:52'),
(40, 'ddd', '178821753', '2024-10-11 16:51:08'),
(41, 'qsdfghjklm', '178821753', '2024-10-14 08:53:04'),
(42, 'sssaaqq', '178821753', '2024-10-14 09:00:26'),
(43, 'fafafaf', '178821753', '2024-10-14 09:02:14'),
(44, 'feeacanea', '178821753', '2024-10-14 09:02:57');

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(11) DEFAULT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` text NOT NULL,
  `dateTimeMsg` varchar(255) NOT NULL,
  `DeliveredStatus` text DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `sent_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `file_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`, `dateTimeMsg`, `DeliveredStatus`, `room_id`, `sent_at`, `file_path`) VALUES
(40, 1515365640, 1647679605, 'hey', '24-05-22 05:14:01', NULL, NULL, '2024-10-01 13:04:04', NULL),
(41, 1647679605, 1515365640, 'hola', '24-05-22 05:27:45', NULL, NULL, '2024-10-01 13:04:04', NULL),
(42, 1515365640, 1647679605, 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', '24-05-22 05:27:57', NULL, NULL, '2024-10-01 13:04:04', NULL),
(43, 1647679605, 1515365640, 'coooool', '24-05-22 05:30:56', NULL, NULL, '2024-10-01 13:04:04', NULL),
(44, 1647679605, 1515365640, 'hii', '24-05-22 05:42:38', NULL, NULL, '2024-10-01 13:04:04', NULL),
(45, 1515365640, 1647679605, 'uguyui', '24-05-22 07:06:38', NULL, NULL, '2024-10-01 13:04:04', NULL),
(46, 1515365640, 1647679605, 'guihihuhyiuh', '24-05-22 07:07:28', NULL, NULL, '2024-10-01 13:04:04', NULL),
(47, 1647679605, 1515365640, 'c\'est buie$', '24-05-22 07:10:53', NULL, NULL, '2024-10-01 13:04:04', NULL),
(48, 1647679605, 1515365640, 'nffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff', '24-05-22 07:11:07', NULL, NULL, '2024-10-01 13:04:04', NULL),
(49, 1647679605, 1515365640, '// Display Traceability Column - v5.0 // 2021-03-31  /**  /** History:  Vers	Who	YY/MM/DD	What v6.2	MLI	22/05/16	Improve Execution Time  v6.1	MLI	22/05/12	Fix button cancel progress Bar; and change updating of traceability listview v6.0	MLI	22/04/13	Add button to update all metrix attributes v5.4	MLI	22/03/10	Add type External Links  v5.3	MLI	22/03/10	Add Progress Bar v5.2	MLI	22/03/9	One Column With External And Normal Links v5.1	MLI	22/03/3	Fix Reset Skip External Links v5.0	MLI	21/04/23	<Maximum Traceability Reached>, fix field \"Attribute Current\" to be always inactive v4.8	MLI	21/04/18	Fix IN/OUT Error, Fix errors in ListViews. v4.6	MLI	21/04/12	Modification to be able to follow several links per object, in precedent version we can follow juste one link per object  v4.1	MLI	21/03/31	Add 2 Modes : Update, Insert (Fix Name of columns after insert) v4.0	MLI	21/03/31	Open baselines and getLinks and OutLinks From Baselines + Add HELP + New Version  v3.0	MLI	21/03/12	Add Flow Diagram, ad', '24-05-22 07:11:18', NULL, NULL, '2024-10-01 13:04:04', NULL),
(50, 1647679605, 1515365640, 'ffjfggjg', '24-05-22 07:11:58', NULL, NULL, '2024-10-01 13:04:04', NULL),
(54, 1515365640, 1515365640, 'hey', '24-05-22 10:23:15', NULL, NULL, '2024-10-01 13:04:04', NULL),
(55, 1647679605, 1515365640, 'hey', '24-05-22 10:23:20', NULL, NULL, '2024-10-01 13:04:04', NULL),
(56, 1515365640, 1414040361, 'hi', '24-05-22 10:50:38', NULL, NULL, '2024-10-01 13:04:04', NULL),
(57, 1515365640, 1414040361, 'hey', '', NULL, NULL, '2024-10-01 13:04:04', NULL),
(58, 1414040361, 1515365640, 'hablame', '', NULL, NULL, '2024-10-01 13:04:04', NULL),
(59, 1414040361, 1515365640, 'hey', '24-05-22 11:03:17', NULL, NULL, '2024-10-01 13:04:04', NULL),
(60, 1515365640, 1414040361, 'si', '24-05-22 11:03:25', NULL, NULL, '2024-10-01 13:04:04', NULL),
(61, 1414040361, 1515365640, 'como estas?.', '24-05-22 11:03:30', NULL, NULL, '2024-10-01 13:04:04', NULL),
(62, 1515365640, 1414040361, 'bien y tu ', '24-05-22 11:03:35', NULL, NULL, '2024-10-01 13:04:04', NULL),
(63, 1414040361, 1515365640, 'hey', '24-05-22 11:04:18', NULL, NULL, '2024-10-01 13:04:04', NULL),
(64, 1515365640, 1414040361, 'si?', '24-05-22 11:04:22', NULL, NULL, '2024-10-01 13:04:04', NULL),
(65, 1515365640, 1414040361, 'oooooook', '24-05-22 11:04:30', NULL, NULL, '2024-10-01 13:04:04', NULL),
(66, 993578417, 1515365640, 'hey', '24-05-22 11:08:24', NULL, NULL, '2024-10-01 13:04:04', NULL),
(67, 993578417, 1414040361, 'hey', '24-05-22 11:08:32', NULL, NULL, '2024-10-01 13:04:04', NULL),
(68, 1414040361, 993578417, 'hy', '24-05-22 11:08:40', NULL, NULL, '2024-10-01 13:04:04', NULL),
(69, 1515365640, 993578417, 'wouah', '24-05-22 11:08:53', NULL, NULL, '2024-10-01 13:04:04', NULL),
(70, 1414040361, 993578417, 'jhdfhkljhjfdkli', '24-05-22 11:23:28', NULL, NULL, '2024-10-01 13:04:04', NULL),
(71, 1414040361, 993578417, 'ljfdjklfls', '24-05-22 11:23:41', NULL, NULL, '2024-10-01 13:04:04', NULL),
(72, 1414040361, 993578417, 'tonto', '24-05-22 11:24:08', NULL, NULL, '2024-10-01 13:04:04', NULL),
(73, 1414040361, 993578417, 'coches', '24-05-22 11:25:01', NULL, NULL, '2024-10-01 13:04:04', NULL),
(74, 993578417, 1515365640, 'hey', '25-05-22 12:39:56', NULL, NULL, '2024-10-01 13:04:04', NULL),
(75, 993578417, 1515365640, 'hey', '25-05-22 12:40:28', NULL, NULL, '2024-10-01 13:04:04', NULL),
(76, 993578417, 1414040361, 'salut', '25-05-22 12:41:38', NULL, NULL, '2024-10-01 13:04:04', NULL),
(77, 1414040361, 993578417, 'ça va ? ', '25-05-22 12:41:46', NULL, NULL, '2024-10-01 13:04:04', NULL),
(78, 993578417, 1414040361, 'yes', '25-05-22 12:41:52', NULL, NULL, '2024-10-01 13:04:04', NULL),
(79, 1193206598, 1226469360, 'Hey', '25-05-22 12:51:39', NULL, NULL, '2024-10-01 13:04:04', NULL),
(80, 1226469360, 1193206598, 'Salut!', '25-05-22 12:51:46', NULL, NULL, '2024-10-01 13:04:04', NULL),
(81, 1193206598, 1226469360, 'Tu vas bien ????', '25-05-22 12:51:57', NULL, NULL, '2024-10-01 13:04:04', NULL),
(82, 1226469360, 1193206598, 'Oui et toi ?', '25-05-22 12:52:05', NULL, NULL, '2024-10-01 13:04:04', NULL),
(83, 1193206598, 1226469360, 'Oui ça va ??', '25-05-22 12:52:14', NULL, NULL, '2024-10-01 13:04:04', NULL),
(84, 1226469360, 1193206598, '#129409', '25-05-22 02:42:32', NULL, NULL, '2024-10-01 13:04:04', NULL),
(85, 1193206598, 820662914, 'Hi', '30-05-22 04:41:35', NULL, NULL, '2024-10-01 13:04:04', NULL),
(86, 820662914, 1193206598, 'ça va ? ', '30-05-22 04:41:42', NULL, NULL, '2024-10-01 13:04:04', NULL),
(87, 1515853698, 134789881, 'Hello', '04-01-24 10:26:59', NULL, NULL, '2024-10-01 13:04:04', NULL),
(88, 134789881, 1515853698, 'How are you?', '04-01-24 10:27:28', NULL, NULL, '2024-10-01 13:04:04', NULL),
(89, 1515853698, 134789881, 'Fine and you?', '04-01-24 10:27:44', NULL, NULL, '2024-10-01 13:04:04', NULL),
(90, 134789881, 1515853698, 'Good, this is a good project', '04-01-24 10:28:19', NULL, NULL, '2024-10-01 13:04:04', NULL),
(91, 1515853698, 134789881, 'yes', '04-01-24 10:28:59', NULL, NULL, '2024-10-01 13:04:04', NULL),
(92, 1515853698, 134789881, 'where are you?', '04-01-24 10:30:03', NULL, NULL, '2024-10-01 13:04:04', NULL),
(93, 1515853698, 134789881, '???', '04-01-24 10:30:04', NULL, NULL, '2024-10-01 13:04:04', NULL),
(94, 1515853698, 134789881, 'You are here?', '04-01-24 10:30:11', NULL, NULL, '2024-10-01 13:04:04', NULL),
(95, 1515853698, 459195383, 'Hello, ', '07-02-24 06:52:20', NULL, NULL, '2024-10-01 13:04:04', NULL),
(96, 1366442486, 459195383, 'Hello', '07-02-24 06:56:10', NULL, NULL, '2024-10-01 13:04:04', NULL),
(97, 459195383, 1366442486, 'Hi', '07-02-24 06:56:29', NULL, NULL, '2024-10-01 13:04:04', NULL),
(98, 1366442486, 459195383, 'howareyou?', '07-02-24 06:56:40', NULL, NULL, '2024-10-01 13:04:04', NULL),
(99, 459195383, 1366442486, 'MessageToDebug-20240405', '05-04-24 03:51:52', NULL, NULL, '2024-10-01 13:04:04', NULL),
(100, 459195383, 1366442486, 'jfjfjfkjkf', '05-04-24 04:57:06', 'OK', NULL, '2024-10-01 13:04:04', NULL),
(101, 459195383, 1366442486, 'hhjhjhkh', '05-04-24 05:09:25', 'OK', NULL, '2024-10-01 13:04:04', NULL),
(102, 1366442486, 436887854, 'Hello', '20-09-24 03:29:57', 'OK', NULL, '2024-10-01 13:04:04', NULL),
(103, 1366442486, 436887854, 'Hello', '20-09-24 03:30:11', 'OK', NULL, '2024-10-01 13:04:04', NULL),
(104, 591424590, 436887854, 'Hello', '20-09-24 03:31:41', 'OK', NULL, '2024-10-01 13:04:04', NULL),
(105, 436887854, 591424590, 'Hello', '20-09-24 03:31:53', 'OK', NULL, '2024-10-01 13:04:04', NULL),
(106, 436887854, 591424590, 'OK', '20-09-24 03:46:14', '', NULL, '2024-10-01 13:04:04', NULL),
(107, 1366442486, 1354909572, 'rrr', '30-09-24 12:02:00', NULL, NULL, '2024-10-01 13:04:04', NULL),
(108, 1193206598, 1354909572, 'sss', '30-09-24 12:08:49', NULL, NULL, '2024-10-01 13:04:04', NULL),
(109, 1515853698, 1354909572, 'sss', '30-09-24 12:08:59', NULL, NULL, '2024-10-01 13:04:04', NULL),
(110, 1366442486, 934312454, 'sss', '30-09-24 01:25:53', 'OK', NULL, '2024-10-01 13:04:04', NULL),
(111, 1515853698, 934312454, 'dddd', '30-09-24 01:27:00', 'OK', NULL, '2024-10-01 13:04:04', NULL),
(112, 934312454, 1102062906, 'Teessstt', '30-09-24 01:27:38', 'OK', NULL, '2024-10-01 13:04:04', NULL),
(113, 358132890, 1324944816, 'This is  a Test', '30-09-24 02:43:50', 'OK', NULL, '2024-10-01 13:04:04', NULL),
(114, 934312454, 1324944816, 'Asdfdf12345', '01-10-24 09:46:04', 'OK', NULL, '2024-10-01 13:04:04', NULL),
(115, 1324944816, 395909317, 'Hello', '01-10-24 11:28:10', 'OK', NULL, '2024-10-01 13:04:04', NULL),
(116, 1102062906, 395909317, 'rrrrrr', '01-10-24 12:07:25', 'OK', NULL, '2024-10-01 13:04:04', NULL),
(128, 1324944816, 1245719561, 'Hello', '01-10-24 03:42:09', 'OK', NULL, '2024-10-01 13:42:09', NULL),
(135, 1245719561, 1324944816, 'Hello', '01-10-24 04:00:06', 'OK', NULL, '2024-10-01 14:00:06', NULL),
(148, 463485142, 178821753, 'Hola!!', '02-10-24 06:19:09', 'OK', NULL, '2024-10-02 16:19:09', NULL),
(149, 178821753, 463485142, 'Hola Kerio!', '02-10-24 06:19:35', 'OK', NULL, '2024-10-02 16:19:35', NULL),
(163, 1324944816, 358132890, 'Test', '03-10-24 12:06:37', 'OK', NULL, '2024-10-03 10:06:37', NULL),
(164, 463485142, 358132890, 'ss', '03-10-24 02:21:15', 'OK', NULL, '2024-10-03 12:21:15', NULL),
(165, 1245719561, 358132890, 'sss', '04-10-24 10:57:29', 'OK', NULL, '2024-10-04 08:57:29', NULL),
(166, 1102062906, 358132890, 'qqqqq', '04-10-24 11:38:38', 'OK', NULL, '2024-10-04 09:38:38', NULL),
(167, 134789881, 358132890, 'jjjj', '04-10-24 11:39:08', 'OK', NULL, '2024-10-04 09:39:08', NULL),
(168, 1226469360, 358132890, 'qq', '04-10-24 11:52:29', 'OK', NULL, '2024-10-04 09:52:29', NULL),
(169, 395909317, 358132890, 's', '04-10-24 12:12:44', 'OK', NULL, '2024-10-04 10:12:44', NULL),
(170, 508512115, 358132890, 'ssss', '04-10-24 12:12:55', 'OK', NULL, '2024-10-04 10:12:55', NULL),
(171, 463485142, 178821753, 'Que tal?', '04-10-24 12:19:58', 'OK', NULL, '2024-10-04 10:19:58', NULL),
(172, 1245719561, 178821753, 'Hello', '04-10-24 12:25:36', 'OK', NULL, '2024-10-04 10:25:36', NULL),
(173, 463485142, 178821753, '??', '04-10-24 01:38:11', 'OK', NULL, '2024-10-04 11:38:11', NULL),
(174, 463485142, 178821753, '..', '04-10-24 02:26:53', 'OK', NULL, '2024-10-04 12:26:53', NULL),
(175, 178821753, 713233813, 'Hello Kerio Ark', '04-10-24 02:36:32', 'OK', NULL, '2024-10-04 12:36:32', NULL),
(176, 178821753, 713233813, 'Hello Kerio Ark', '04-10-24 02:36:32', 'OK', NULL, '2024-10-04 12:36:32', NULL),
(177, 463485142, 178821753, ':', '04-10-24 02:46:13', 'OK', NULL, '2024-10-04 12:46:13', NULL),
(178, 463485142, 178821753, '.', '04-10-24 02:54:05', 'OK', NULL, '2024-10-04 12:54:05', NULL),
(179, 713233813, 178821753, 'Hello', '04-10-24 03:31:41', 'OK', NULL, '2024-10-04 13:31:41', NULL),
(184, 1193206598, 178821753, 'ddd', '04-10-24 06:23:58', 'OK', NULL, '2024-10-04 16:23:58', NULL),
(189, 178821753, 395909317, 'Hello', '04-10-24 06:25:46', 'OK', NULL, '2024-10-04 16:25:46', NULL),
(221, 713233813, 178821753, 'Hi', '05-10-24 01:03:08', 'OK', NULL, '2024-10-04 23:03:08', NULL),
(232, 713233813, 178821753, 'Test!', '07-10-24 11:22:41', 'OK', NULL, '2024-10-07 09:22:41', NULL),
(268, 878294072, 596629953, 'Hola Samuel', '07-10-24 03:20:55', 'OK', NULL, '2024-10-07 13:20:55', NULL),
(275, 596629953, 178821753, 'sss', '', NULL, NULL, '2024-10-07 14:45:00', NULL),
(278, 596629953, 178821753, 'ssss', '', NULL, NULL, '2024-10-07 14:57:42', NULL),
(279, 395909317, 178821753, 'dzd', '', NULL, NULL, '2024-10-07 16:09:02', NULL),
(282, 820662914, 178821753, 'ssss', '', NULL, NULL, '2024-10-08 13:53:43', NULL),
(283, 878294072, 178821753, 'sss', '', NULL, NULL, '2024-10-08 14:19:16', NULL),
(287, 463485142, 178821753, 'ssss', '', NULL, NULL, '2024-10-08 16:01:21', NULL),
(290, 820662914, 178821753, 's', '', NULL, NULL, '2024-10-09 10:25:26', NULL),
(291, 596629953, 178821753, 'jj', '09-10-24 12:38:09', 'OK', NULL, '2024-10-09 10:38:09', NULL),
(293, 713233813, 178821753, 'qqq', '', NULL, NULL, '2024-10-09 11:02:38', NULL),
(294, 596629953, 178821753, 'ss', '', NULL, NULL, '2024-10-09 14:14:27', NULL),
(295, 878294072, 178821753, 'ssssssss', '', NULL, NULL, '2024-10-09 14:30:46', NULL),
(299, 596629953, 178821753, 'dddddd', '', NULL, NULL, '2024-10-09 14:39:35', NULL),
(306, 596629953, 178821753, 'sss', '10-10-24 04:10:11', NULL, NULL, '2024-10-10 14:10:11', NULL),
(307, 596629953, 178821753, 'sssssss', '10-10-24 04:10:15', NULL, NULL, '2024-10-10 14:10:15', NULL),
(309, 820662914, 214873511, 'aaaaa', '11-10-24 10:20:25', NULL, NULL, '2024-10-11 08:20:25', NULL),
(310, 1102062906, 214873511, 'aaaa', '11-10-24 10:20:37', NULL, NULL, '2024-10-11 08:20:37', NULL),
(311, 934312454, 214873511, 'Hiiiiii', '11-10-24 10:20:51', NULL, NULL, '2024-10-11 08:20:51', NULL),
(312, 206266960, 214873511, 'Hello', '11-10-24 10:21:08', NULL, NULL, '2024-10-11 08:21:08', NULL),
(314, 820662914, 214873511, 'qqqqq', '11-10-24 10:32:07', NULL, NULL, '2024-10-11 08:32:07', NULL),
(315, 178821753, 214873511, 'Hello', '11-10-24 10:32:21', NULL, NULL, '2024-10-11 08:32:21', NULL),
(316, 214873511, 178821753, 'Hello!', '11-10-24 10:33:13', NULL, NULL, '2024-10-11 08:33:13', NULL),
(317, 206266960, 178821753, 'Hi!', '11-10-24 10:33:39', NULL, NULL, '2024-10-11 08:33:39', NULL),
(318, 508512115, 178821753, 'svds', '11-10-24 11:48:50', NULL, NULL, '2024-10-11 09:48:50', NULL),
(319, 820662914, 178821753, 'ss', '11-10-24 02:37:39', NULL, NULL, '2024-10-11 12:37:39', NULL),
(368, 820662914, 178821753, 'ddd', '11-10-24 05:17:09', NULL, NULL, '2024-10-11 15:17:09', NULL),
(373, 1226469360, 178821753, 'ddd', '11-10-24 05:45:52', NULL, NULL, '2024-10-11 15:45:52', NULL),
(376, 596629953, 178821753, 'fbdbdfbd', '11-10-24 05:54:57', NULL, NULL, '2024-10-11 15:54:57', NULL),
(377, 596629953, 178821753, 'ggfgdfgdf', '11-10-24 05:54:59', NULL, NULL, '2024-10-11 15:54:59', NULL),
(378, 596629953, 178821753, 'hghfghfg', '11-10-24 05:55:00', NULL, NULL, '2024-10-11 15:55:00', NULL),
(380, NULL, 178821753, 'Hello this is a test', '', NULL, 30, '2024-10-11 16:02:36', NULL),
(381, NULL, 1541595388, 'Hello!', '', NULL, 30, '2024-10-11 16:03:47', NULL),
(382, NULL, 359828422, 'Hello!!!!!!!', '', NULL, 30, '2024-10-11 16:05:01', NULL),
(383, 820662914, 359828422, 'test', '11-10-24 06:08:39', NULL, NULL, '2024-10-11 16:08:39', NULL),
(384, 1193206598, 178821753, 'xxxxxxxxxxxxxxxxx', '11-10-24 06:16:46', NULL, NULL, '2024-10-11 16:16:46', NULL),
(385, NULL, 178821753, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', '', NULL, 30, '2024-10-11 16:16:53', NULL),
(386, NULL, 178821753, '', '', NULL, 30, '2024-10-11 16:17:01', '1728663421_cd92878a-0e77-498e-8f6c-c07062708a8c.jpg'),
(387, NULL, 178821753, 'fdfdsfsd', '', NULL, 35, '2024-10-11 16:44:46', NULL),
(388, 1226469360, 178821753, 'sss', '11-10-24 06:50:41', NULL, NULL, '2024-10-11 16:50:41', NULL),
(389, NULL, 178821753, 'zaezaea', '', NULL, 43, '2024-10-14 13:02:06', NULL),
(390, 1366442486, 178821753, 'dzdz', '14-10-24 03:32:33', NULL, NULL, '2024-10-14 13:32:33', NULL),
(391, 1226469360, 178821753, 'zdd', '14-10-24 04:20:36', NULL, NULL, '2024-10-14 14:20:36', NULL),
(392, NULL, 178821753, 'sqcqc', '', NULL, 37, '2024-10-15 10:37:31', 'uploads/1728988651_'),
(393, NULL, 178821753, 'Test', '', NULL, 37, '2024-10-15 10:37:38', 'uploads/1728988658_'),
(394, NULL, 178821753, 'test', '', NULL, 37, '2024-10-15 10:40:16', 'uploads/1728988816_'),
(395, NULL, 178821753, 'dddd', '', NULL, 37, '2024-10-15 10:40:23', 'uploads/1728988823_'),
(396, NULL, 178821753, 'hoiho', '', NULL, 30, '2024-10-15 12:05:52', 'uploads/1728993952_'),
(397, NULL, 178821753, '', '', NULL, 30, '2024-10-15 12:06:02', 'uploads/1728993962_cd92878a-0e77-498e-8f6c-c07062708a8c.jpg'),
(398, NULL, 178821753, 'lll', '', NULL, 36, '2024-10-15 12:06:19', 'uploads/1728993979_'),
(399, NULL, 178821753, 'kkk', '', NULL, 36, '2024-10-15 12:08:02', 'uploads/1728994082_'),
(400, NULL, 178821753, 'lll', '', NULL, 33, '2024-10-15 12:08:21', 'uploads/1728994101_'),
(401, NULL, 178821753, 'qqqq', '', NULL, 33, '2024-10-15 12:10:52', 'uploads/1728994252_'),
(402, NULL, 178821753, 'lll', '', NULL, 43, '2024-10-15 12:11:10', 'uploads/1728994270_'),
(403, NULL, 178821753, 'ssss', '', NULL, 43, '2024-10-15 12:18:31', 'uploads/1728994711_'),
(404, NULL, 178821753, 'Mensaje', '', NULL, 44, '2024-10-15 12:18:52', 'uploads/1728994732_'),
(405, NULL, 178821753, 'dzzz', '', NULL, 44, '2024-10-15 12:20:21', 'uploads/1728994821_'),
(406, NULL, 178821753, 'eee', '2024-10-15 14:22:37', NULL, 44, '2024-10-15 12:22:37', NULL),
(407, NULL, 178821753, 'Mejor', '2024-10-15 14:22:41', NULL, 44, '2024-10-15 12:22:41', NULL),
(408, NULL, 178821753, '', '2024-10-15 14:22:46', NULL, 44, '2024-10-15 12:22:46', '1728994966_cd92878a-0e77-498e-8f6c-c07062708a8c.jpg'),
(409, NULL, 178821753, 'test', '2024-10-15 14:23:08', NULL, 42, '2024-10-15 12:23:08', NULL),
(410, NULL, 178821753, '', '2024-10-15 14:23:20', NULL, 42, '2024-10-15 12:23:20', '1728995000_cd92878a-0e77-498e-8f6c-c07062708a8c.jpg'),
(411, NULL, 178821753, 'efze', '', NULL, 42, '2024-10-15 12:45:40', NULL),
(412, NULL, 178821753, 'sss', '', NULL, 39, '2024-10-15 12:46:15', NULL),
(413, NULL, 178821753, 'efez', '', NULL, 39, '2024-10-15 12:48:35', NULL),
(414, NULL, 178821753, 'zadad', '', NULL, 44, '2024-10-15 12:56:06', NULL),
(415, NULL, 178821753, 'sss', '', NULL, 40, '2024-10-15 12:56:50', NULL),
(416, NULL, 178821753, 'sss', '', NULL, 40, '2024-10-15 13:00:24', NULL),
(417, NULL, 178821753, 'ddsd', '', NULL, 40, '2024-10-15 13:02:02', NULL),
(418, NULL, 178821753, 'qsss', '', NULL, 40, '2024-10-15 13:09:44', NULL),
(419, NULL, 178821753, 'fefz', '', NULL, 40, '2024-10-15 13:10:25', NULL),
(420, NULL, 178821753, 'jijo', '', NULL, 40, '2024-10-15 13:16:06', NULL),
(421, NULL, 178821753, 'sss', '', NULL, 40, '2024-10-15 13:22:44', NULL),
(422, NULL, 178821753, '', '', NULL, 40, '2024-10-15 13:22:49', 'uploads/1728998569_cd92878a-0e77-498e-8f6c-c07062708a8c.jpg'),
(423, 1226469360, 178821753, 'eee', '15-10-24 04:38:25', NULL, NULL, '2024-10-15 14:38:25', NULL),
(424, NULL, 178821753, 'eee', '', NULL, 37, '2024-10-15 14:38:32', NULL),
(425, NULL, 178821753, 'ee', '', NULL, 37, '2024-10-15 14:38:35', NULL),
(426, NULL, 178821753, '', '', NULL, 37, '2024-10-15 14:38:39', '1729003119_cd92878a-0e77-498e-8f6c-c07062708a8c.jpg'),
(427, 1515853698, 178821753, 'Hello!', '16-10-24 10:26:09', NULL, NULL, '2024-10-16 08:26:09', NULL),
(428, 178821753, 1324944816, 'Hello Kerio', '16-10-24 10:26:59', NULL, NULL, '2024-10-16 08:26:59', NULL),
(429, 1324944816, 178821753, 'Hello Allan!', '16-10-24 10:27:29', NULL, NULL, '2024-10-16 08:27:29', NULL),
(430, NULL, 178821753, 'Hello!', '', NULL, 30, '2024-10-16 08:28:05', NULL),
(431, NULL, 1324944816, 'Hello everyone!', '', NULL, 30, '2024-10-16 08:28:29', NULL),
(432, NULL, 1324944816, 'How Are you?', '', NULL, 30, '2024-10-16 08:28:35', NULL),
(433, NULL, 463485142, 'Hi!', '', NULL, 30, '2024-10-16 08:29:12', NULL),
(434, NULL, 1102062906, 'Hi!!!', '', NULL, 30, '2024-10-16 08:29:30', NULL),
(435, NULL, 1245719561, 'Oh, hello you!', '', NULL, 30, '2024-10-16 08:29:55', NULL),
(436, 820662914, 178821753, 'Test', '16-10-24 10:30:55', NULL, NULL, '2024-10-16 08:30:55', NULL),
(437, 820662914, 178821753, 'test', '16-10-24 10:30:57', NULL, NULL, '2024-10-16 08:30:57', NULL),
(438, 820662914, 178821753, 'test', '16-10-24 10:30:58', NULL, NULL, '2024-10-16 08:30:58', NULL),
(439, 820662914, 178821753, 'test', '16-10-24 10:30:59', NULL, NULL, '2024-10-16 08:30:59', NULL),
(440, 820662914, 178821753, 'test', '16-10-24 10:31:01', NULL, NULL, '2024-10-16 08:31:01', NULL),
(441, 820662914, 178821753, 'test', '16-10-24 10:31:02', NULL, NULL, '2024-10-16 08:31:02', NULL),
(442, 820662914, 178821753, 'test', '16-10-24 10:31:04', NULL, NULL, '2024-10-16 08:31:04', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(400) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `fname`, `lname`, `email`, `password`, `img`, `status`) VALUES
(7, '820662914', 'Mohamed', 'EL FARHI', 'Mohamed@elfarhi.com', 'bc2ab28e4cda984ca76646874371e864', '165343230462769abadd30f9868249fc27_employee1-p-500.jpeg', 'Active now'),
(8, '1226469360', 'Paul', 'BREMOND', 'paul@bremond.com', '6c63212ab48e8401eaf6b59b95d816a9', '165343236762769abadd30f94a0f49fc28_employee2-p-500.jpeg', 'Active now'),
(9, '1193206598', 'Evelyn', 'URIETA', 'evelyn@urieta.com', '8fbb8264c5040ec3ef3320336afa435a', '1653432660b95f5a121927103.60cfcde048711.jpg', 'Offline now'),
(10, '508512115', 'Mohamed2', 'EL FARHI', 'Mohamed2@elfarhi.com', '1b4502ffef5ea3424711683b8ed43591', '166480411062769abadd30f9868249fc27_employee1-p-500.jpeg', 'Active now'),
(11, '134789881', 'Ahmed', 'EL FARHI', 'ahmed45@elfarhi.com', '7f1e43d880f09c64ac6378af6de47702', '1704403503165343236762769abadd30f94a0f49fc28_employee2-p-500.jpeg', 'Active now'),
(12, '1515853698', 'TOTO', 'First', 'toto@first.com', '04c1d7cd203ef496f200ee5a096b5764', '1704403603b95f5a121927103.60cfcde048711.jpg', 'Active now'),
(13, '459195383', 'User1', 'ForTest', 'User1@ForTest.com', '5cf0b2214c4c3fa77dfed819ffe53d73', '170732830262769abadd30f9868249fc27_employee1-p-500.jpeg', 'Active now'),
(14, '1366442486', 'User2', 'ForTest', 'User2@ForTest.com', 'b5764351ae796fc9483f65a9a3239f35', '1707328549165343236762769abadd30f94a0f49fc28_employee2-p-500.jpeg', 'Active now'),
(18, '934312454', 'Test02', 'Test02', 'Test02@gmail.com', 'c0fd72993917c1ff43a0f9d62b648015', '1727695548azdzada(1).png', 'Offline now'),
(19, '1102062906', 'Test01', 'Test01', 'Test01@gmail.com', '651e73b8a18b69f3223289dd636d8056', '1727695651azdzada.png', 'Offline now'),
(20, '358132890', 'Test03', 'Test03', 'Test03@gmail.com', '84db97c11dba030f93cefcb8abe95019', '1727699391azdzada.png', 'Offline now'),
(21, '1324944816', 'Allan', 'Thom', 'Allan@gmail.com', 'b0ff314b3f47765d691d81050fe81a1a', '172770021634.png', 'Offline now'),
(22, '395909317', 'Sam@gmail.com', 'Pierre', 'SamPierre@gmail.com', '1e9614f9b393e03685ff90a1a874b9c0', '172777488234.png', 'Offline now'),
(23, '1245719561', 'Lucas', 'Yanne', 'Lucasyanne@gmail.com', 'bc9f12553d1a494919a080b80c616028', '1727790122cd92878a-0e77-498e-8f6c-c07062708a8c.jpg', 'Active now'),
(24, '463485142', 'Mario', 'Minth', 'Mario@gmail.com', '1cc477616bb182e87ec7285bfbf8c34b', '172779049834.png', 'Offline now'),
(25, '178821753', 'Kerio', 'Ark', 'Kerios@gmail.com', 'a131b75ac26e3a1f80474cd475e62a27', '1727884446Test2.png.png', 'Offline now'),
(26, '713233813', 'Thomas', 'Ray', 'Thomas@gmail.com', '2042101ac1f6e7741bfe43f3672e6d7c', '1728045383azdzada (1).png', 'Active now'),
(27, '878294072', 'Samuel', 'Cien', 'samuel@gmail.com', 'd8ae5776067290c4712fa454006c8ec6', '1728307169cd92878a-0e77-498e-8f6c-c07062708a8c.jpg', 'Offline now'),
(28, '596629953', 'Demian', 'Charles', 'Demian@gmail.com', '410c79a01af1d0ab434db3614dba22de', '1728307236wp8963451-minimalist-4k-desktop-wallpapers.jpg', 'Offline now'),
(29, '206266960', 'Hunt', 'Leo', 'hunt@gmail.com', 'bc9bf7bb6c4ab8d0daf374963110f4a7', '1728566201cd92878a-0e77-498e-8f6c-c07062708a8c.jpg', 'Offline now'),
(30, '214873511', 'Sora', 'Hyan', 'sora@gmail.com', 'b78bb582523a89da07ce348eb5e16d88', '1728634661cd92878a-0e77-498e-8f6c-c07062708a8c.jpg', 'Offline now'),
(31, '1541595388', 'Sony', 'Lars', 'sony@gmail.com', '33561003f44d374c719506bef4faeba4', '1728662606cd92878a-0e77-498e-8f6c-c07062708a8c.jpg', 'Offline now'),
(32, '359828422', 'Hollow', 'Purple', 'hollow@gmail.com', 'ff362afb00fa83da92fd95b38424a556', '1728662682digital-art-landscape-forest-mountains-wallpaper-fb664cddf3914f99a564ab590d0cdc50.jpg', 'Offline now');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `chatrooms`
--
ALTER TABLE `chatrooms`
  ADD PRIMARY KEY (`room_id`),
  ADD KEY `fk_created_by` (`created_by`);

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `unique_id` (`unique_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `chatrooms`
--
ALTER TABLE `chatrooms`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=443;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `chatrooms`
--
ALTER TABLE `chatrooms`
  ADD CONSTRAINT `fk_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`unique_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `chatrooms` (`room_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
