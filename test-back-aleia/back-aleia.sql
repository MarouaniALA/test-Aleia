-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 26, 2020 at 02:05 PM
-- Server version: 10.1.44-MariaDB-0ubuntu0.18.04.1
-- PHP Version: 7.1.25-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `back-aleia`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `correct` tinyint(1) DEFAULT NULL,
  `question` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `isCorrect` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `answer`, `correct`, `question`, `created_by`, `updated_by`, `created_at`, `updated_at`, `isCorrect`) VALUES
(1, 'Orienté objet', NULL, 1, 1, 1, '2020-08-25 09:47:20', '2020-08-25 09:48:27', 0),
(2, 'Hiérarchique', NULL, 1, 1, 1, '2020-08-25 09:47:36', '2020-08-25 09:48:19', 0),
(3, 'Relationnel', NULL, 1, 1, 1, '2020-08-25 09:48:00', '2020-08-25 09:48:00', 1),
(4, 'Objets', NULL, 2, 1, 1, '2020-08-25 09:50:21', '2020-08-25 09:50:21', 0),
(5, 'Tables', NULL, 2, 1, 1, '2020-08-25 09:50:41', '2020-08-25 09:50:41', 1),
(6, 'Réseaux', NULL, 2, 1, 1, '2020-08-25 09:50:54', '2020-08-25 09:50:54', 0);

-- --------------------------------------------------------

--
-- Table structure for table `core_store`
--

CREATE TABLE `core_store` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_store`
--

INSERT INTO `core_store` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'db_model_core_store', '{\"key\":{\"type\":\"string\"},\"value\":{\"type\":\"text\"},\"type\":{\"type\":\"string\"},\"environment\":{\"type\":\"string\"},\"tag\":{\"type\":\"string\"}}', 'object', NULL, NULL),
(2, 'db_model_strapi_permission', '{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"fields\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"model\":\"role\",\"plugin\":\"admin\"},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}', 'object', NULL, NULL),
(3, 'db_model_users-permissions_permission', '{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\"},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\"}}', 'object', NULL, NULL),
(4, 'db_model_upload_file', '{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"collection\":\"*\",\"filter\":\"field\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\"},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\"},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}', 'object', NULL, NULL),
(5, 'db_model_strapi_webhooks', '{\"name\":{\"type\":\"string\"},\"url\":{\"type\":\"text\"},\"headers\":{\"type\":\"json\"},\"events\":{\"type\":\"json\"},\"enabled\":{\"type\":\"boolean\"}}', 'object', NULL, NULL),
(6, 'db_model_users-permissions_user', '{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\"},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\"},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}', 'object', NULL, NULL),
(7, 'db_model_strapi_role', '{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"collection\":\"user\",\"via\":\"roles\",\"plugin\":\"admin\",\"attribute\":\"user\",\"column\":\"id\",\"isVirtual\":true},\"permissions\":{\"configurable\":false,\"plugin\":\"admin\",\"collection\":\"permission\",\"via\":\"role\",\"isVirtual\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}', 'object', NULL, NULL),
(8, 'db_model_users-permissions_role', '{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"configurable\":false,\"plugin\":\"users-permissions\",\"isVirtual\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\"},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\"}}', 'object', NULL, NULL),
(9, 'db_model_strapi_administrator', '{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"collection\":\"role\",\"collectionName\":\"strapi_users_roles\",\"via\":\"users\",\"dominant\":true,\"plugin\":\"admin\",\"configurable\":false,\"private\":true,\"attribute\":\"role\",\"column\":\"id\",\"isVirtual\":true},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true}}', 'object', NULL, NULL),
(10, 'db_model_upload_file_morph', '{\"upload_file_id\":{\"type\":\"integer\"},\"related_id\":{\"type\":\"integer\"},\"related_type\":{\"type\":\"text\"},\"field\":{\"type\":\"text\"},\"order\":{\"type\":\"integer\"}}', 'object', NULL, NULL),
(11, 'db_model_strapi_users_roles', '{\"user_id\":{\"type\":\"integer\"},\"role_id\":{\"type\":\"integer\"}}', 'object', NULL, NULL),
(12, 'plugin_users-permissions_grant', '{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/instagram/callback\"},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitch/callback\",\"scope\":[\"user:read:email\"]}}', 'object', '', ''),
(13, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":true}', 'object', 'development', ''),
(14, 'plugin_content_manager_configuration_content_types::strapi::permission', '{\"uid\":\"strapi::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"Subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subject\",\"searchable\":true,\"sortable\":true}},\"fields\":{\"edit\":{\"label\":\"Fields\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Fields\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"Conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"created_at\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"fields\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}]]}}', 'object', '', ''),
(15, 'plugin_content_manager_configuration_content_types::strapi::role', '{\"uid\":\"strapi::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"editRelations\":[\"users\",\"permissions\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6}]]}}', 'object', '', ''),
(16, 'plugin_content_manager_configuration_content_types::strapi::user', '{\"uid\":\"strapi::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"Firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"Lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"RegistrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"RegistrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"IsActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"IsActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"Roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"editRelations\":[\"roles\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]]}}', 'object', '', ''),
(17, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.permission', '{\"uid\":\"plugins::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"type\",\"defaultSortBy\":\"type\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"controller\":{\"edit\":{\"label\":\"Controller\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Controller\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"enabled\":{\"edit\":{\"label\":\"Enabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Enabled\",\"searchable\":true,\"sortable\":true}},\"policy\":{\"edit\":{\"label\":\"Policy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Policy\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"type\",\"controller\",\"action\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"controller\",\"size\":6}],[{\"name\":\"action\",\"size\":6},{\"name\":\"enabled\",\"size\":4}],[{\"name\":\"policy\",\"size\":6}]]}}', 'object', '', ''),
(18, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.role', '{\"uid\":\"plugins::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"type\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\",\"users\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]}}', 'object', '', ''),
(19, 'plugin_content_manager_configuration_content_types::plugins::upload.file', '{\"uid\":\"plugins::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"AlternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AlternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"Caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"Width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"Height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"Formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"Hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"Ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"Mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"Size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"Url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"PreviewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreviewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"Provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider_metadata\",\"searchable\":false,\"sortable\":false}},\"related\":{\"edit\":{\"label\":\"Related\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"Related\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"editRelations\":[\"related\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}]]}}', 'object', '', ''),
(20, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.user', '{\"uid\":\"plugins::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"Confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]],\"editRelations\":[\"role\"]}}', 'object', '', ''),
(21, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', '', ''),
(22, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}', 'object', '', ''),
(23, 'db_model_questions', '{\"question\":{\"type\":\"string\"},\"answers\":{\"collection\":\"answers\",\"attribute\":\"answer\",\"column\":\"id\",\"isVirtual\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\"},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\"},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}', 'object', NULL, NULL),
(24, 'plugin_content_manager_configuration_content_types::application::questions.questions', '{\"uid\":\"application::questions.questions\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"question\",\"defaultSortBy\":\"question\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"question\":{\"edit\":{\"label\":\"Question\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Question\",\"searchable\":true,\"sortable\":true}},\"answers\":{\"edit\":{\"label\":\"Answers\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"answer\"},\"list\":{\"label\":\"Answers\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"question\",\"created_at\",\"updated_at\"],\"edit\":[[{\"name\":\"question\",\"size\":6}]],\"editRelations\":[\"answers\"]}}', 'object', '', ''),
(25, 'db_model_answers', '{\"answer\":{\"type\":\"string\"},\"isCorrect\":{\"type\":\"boolean\",\"default\":false},\"question\":{\"model\":\"questions\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\"},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\"},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}', 'object', NULL, NULL),
(26, 'plugin_content_manager_configuration_content_types::application::answers.answers', '{\"uid\":\"application::answers.answers\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"answer\",\"defaultSortBy\":\"answer\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"answer\":{\"edit\":{\"label\":\"Answer\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Answer\",\"searchable\":true,\"sortable\":true}},\"isCorrect\":{\"edit\":{\"label\":\"IsCorrect\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"IsCorrect\",\"searchable\":true,\"sortable\":true}},\"question\":{\"edit\":{\"label\":\"Question\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"question\"},\"list\":{\"label\":\"Question\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"answer\",\"created_at\",\"isCorrect\"],\"edit\":[[{\"name\":\"answer\",\"size\":6},{\"name\":\"isCorrect\",\"size\":4}]],\"editRelations\":[\"question\"]}}', 'object', '', ''),
(27, 'db_model_questions__answers', '{\"question_id\":{\"type\":\"integer\"},\"answer_id\":{\"type\":\"integer\"}}', 'object', NULL, NULL),
(28, 'db_model_user_participations', '{\"user\":{\"plugin\":\"users-permissions\",\"model\":\"user\"},\"score\":{\"type\":\"integer\"},\"answers\":{\"collection\":\"answers\",\"attribute\":\"answer\",\"column\":\"id\",\"isVirtual\":true},\"questions\":{\"collection\":\"questions\",\"attribute\":\"question\",\"column\":\"id\",\"isVirtual\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\"},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\"},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}', 'object', NULL, NULL),
(29, 'plugin_content_manager_configuration_content_types::application::user-participation.user-participation', '{\"uid\":\"application::user-participation.user-participation\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"user\":{\"edit\":{\"label\":\"User\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"User\",\"searchable\":false,\"sortable\":false}},\"score\":{\"edit\":{\"label\":\"Score\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Score\",\"searchable\":true,\"sortable\":true}},\"answers\":{\"edit\":{\"label\":\"Answers\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"answer\"},\"list\":{\"label\":\"Answers\",\"searchable\":false,\"sortable\":false}},\"questions\":{\"edit\":{\"label\":\"Questions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"question\"},\"list\":{\"label\":\"Questions\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"score\",\"created_at\",\"updated_at\"],\"edit\":[[{\"name\":\"score\",\"size\":4}]],\"editRelations\":[\"user\",\"answers\",\"questions\"]}}', 'object', '', ''),
(30, 'db_model_user_participations__answers', '{\"user_participation_id\":{\"type\":\"integer\"},\"answer_id\":{\"type\":\"integer\"}}', 'object', NULL, NULL),
(31, 'db_model_user_participations__questions', '{\"user_participation_id\":{\"type\":\"integer\"},\"question_id\":{\"type\":\"integer\"}}', 'object', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'MySQL est un système de gestion de base de données', 1, 1, '2020-08-25 09:46:45', '2020-08-25 10:02:21'),
(2, 'À quoi correspondent les données d’une base de données MySQL', 1, 1, '2020-08-25 09:49:33', '2020-08-25 10:01:30');

-- --------------------------------------------------------

--
-- Table structure for table `questions__answers`
--

CREATE TABLE `questions__answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `answer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions__answers`
--

INSERT INTO `questions__answers` (`id`, `question_id`, `answer_id`) VALUES
(1, 2, 6),
(2, 2, 4),
(3, 2, 5),
(4, 1, 1),
(5, 1, 3),
(6, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_administrator`
--

CREATE TABLE `strapi_administrator` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `registrationToken` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `strapi_administrator`
--

INSERT INTO `strapi_administrator` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `resetPasswordToken`, `registrationToken`, `isActive`, `blocked`) VALUES
(1, 'Aladin', 'Marouani', NULL, 'alamarouani95@gmail.com', '$2a$10$JN0HlFqC75s4fZbZQuQpVeRziocCv4I8A.v7CrZBbLOJQL3AbJ7CS', NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_permission`
--

CREATE TABLE `strapi_permission` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fields` longtext,
  `conditions` longtext,
  `role` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `strapi_permission`
--

INSERT INTO `strapi_permission` (`id`, `action`, `subject`, `fields`, `conditions`, `role`, `created_at`, `updated_at`) VALUES
(1, 'plugins::upload.read', NULL, NULL, '[]', 2, '2020-08-25 08:13:46', '2020-08-25 08:13:46'),
(2, 'plugins::upload.assets.create', NULL, NULL, '[]', 2, '2020-08-25 08:13:46', '2020-08-25 08:13:46'),
(3, 'plugins::upload.assets.update', NULL, NULL, '[]', 2, '2020-08-25 08:13:46', '2020-08-25 08:13:46'),
(4, 'plugins::upload.assets.download', NULL, NULL, '[]', 2, '2020-08-25 08:13:46', '2020-08-25 08:13:46'),
(5, 'plugins::upload.assets.copy-link', NULL, NULL, '[]', 2, '2020-08-25 08:13:46', '2020-08-25 08:13:46'),
(6, 'plugins::upload.read', NULL, NULL, '[\"admin::is-creator\"]', 3, '2020-08-25 08:13:46', '2020-08-25 08:13:46'),
(7, 'plugins::upload.assets.create', NULL, NULL, '[]', 3, '2020-08-25 08:13:46', '2020-08-25 08:13:46'),
(8, 'plugins::upload.assets.update', NULL, NULL, '[\"admin::is-creator\"]', 3, '2020-08-25 08:13:46', '2020-08-25 08:13:46'),
(9, 'plugins::upload.assets.download', NULL, NULL, '[]', 3, '2020-08-25 08:13:46', '2020-08-25 08:13:46'),
(10, 'plugins::upload.assets.copy-link', NULL, NULL, '[]', 3, '2020-08-25 08:13:46', '2020-08-25 08:13:46'),
(14, 'plugins::content-manager.explorer.delete', 'plugins::users-permissions.user', NULL, '[]', 1, '2020-08-25 08:13:46', '2020-08-25 08:13:46'),
(15, 'plugins::content-type-builder.read', NULL, NULL, '[]', 1, '2020-08-25 08:13:46', '2020-08-25 08:13:46'),
(16, 'plugins::upload.read', NULL, NULL, '[]', 1, '2020-08-25 08:13:46', '2020-08-25 08:13:46'),
(17, 'plugins::upload.assets.create', NULL, NULL, '[]', 1, '2020-08-25 08:13:46', '2020-08-25 08:13:46'),
(18, 'plugins::upload.assets.update', NULL, NULL, '[]', 1, '2020-08-25 08:13:46', '2020-08-25 08:13:46'),
(19, 'plugins::upload.assets.download', NULL, NULL, '[]', 1, '2020-08-25 08:13:46', '2020-08-25 08:13:46'),
(20, 'plugins::upload.assets.copy-link', NULL, NULL, '[]', 1, '2020-08-25 08:13:46', '2020-08-25 08:13:46'),
(21, 'plugins::upload.settings.read', NULL, NULL, '[]', 1, '2020-08-25 08:13:46', '2020-08-25 08:13:46'),
(22, 'plugins::content-manager.single-types.configure-view', NULL, NULL, '[]', 1, '2020-08-25 08:13:46', '2020-08-25 08:13:47'),
(23, 'plugins::content-manager.collection-types.configure-view', NULL, NULL, '[]', 1, '2020-08-25 08:13:46', '2020-08-25 08:13:47'),
(24, 'plugins::content-manager.components.configure-layout', NULL, NULL, '[]', 1, '2020-08-25 08:13:46', '2020-08-25 08:13:47'),
(25, 'plugins::users-permissions.roles.create', NULL, NULL, '[]', 1, '2020-08-25 08:13:46', '2020-08-25 08:13:47'),
(26, 'plugins::users-permissions.roles.read', NULL, NULL, '[]', 1, '2020-08-25 08:13:46', '2020-08-25 08:13:47'),
(27, 'plugins::users-permissions.roles.update', NULL, NULL, '[]', 1, '2020-08-25 08:13:46', '2020-08-25 08:13:47'),
(28, 'plugins::users-permissions.roles.delete', NULL, NULL, '[]', 1, '2020-08-25 08:13:46', '2020-08-25 08:13:47'),
(29, 'plugins::users-permissions.providers.read', NULL, NULL, '[]', 1, '2020-08-25 08:13:46', '2020-08-25 08:13:47'),
(30, 'plugins::users-permissions.providers.update', NULL, NULL, '[]', 1, '2020-08-25 08:13:46', '2020-08-25 08:13:47'),
(31, 'plugins::users-permissions.email-templates.read', NULL, NULL, '[]', 1, '2020-08-25 08:13:47', '2020-08-25 08:13:47'),
(32, 'plugins::users-permissions.email-templates.update', NULL, NULL, '[]', 1, '2020-08-25 08:13:47', '2020-08-25 08:13:47'),
(33, 'plugins::users-permissions.advanced-settings.read', NULL, NULL, '[]', 1, '2020-08-25 08:13:47', '2020-08-25 08:13:47'),
(34, 'plugins::users-permissions.advanced-settings.update', NULL, NULL, '[]', 1, '2020-08-25 08:13:47', '2020-08-25 08:13:47'),
(35, 'admin::marketplace.read', NULL, NULL, '[]', 1, '2020-08-25 08:13:47', '2020-08-25 08:13:47'),
(36, 'admin::marketplace.plugins.install', NULL, NULL, '[]', 1, '2020-08-25 08:13:47', '2020-08-25 08:13:47'),
(37, 'admin::marketplace.plugins.uninstall', NULL, NULL, '[]', 1, '2020-08-25 08:13:47', '2020-08-25 08:13:47'),
(38, 'admin::webhooks.create', NULL, NULL, '[]', 1, '2020-08-25 08:13:47', '2020-08-25 08:13:47'),
(39, 'admin::webhooks.read', NULL, NULL, '[]', 1, '2020-08-25 08:13:47', '2020-08-25 08:13:47'),
(40, 'admin::webhooks.update', NULL, NULL, '[]', 1, '2020-08-25 08:13:47', '2020-08-25 08:13:47'),
(41, 'admin::webhooks.delete', NULL, NULL, '[]', 1, '2020-08-25 08:13:47', '2020-08-25 08:13:47'),
(42, 'admin::users.create', NULL, NULL, '[]', 1, '2020-08-25 08:13:47', '2020-08-25 08:13:47'),
(43, 'admin::users.read', NULL, NULL, '[]', 1, '2020-08-25 08:13:47', '2020-08-25 08:13:47'),
(44, 'admin::users.update', NULL, NULL, '[]', 1, '2020-08-25 08:13:47', '2020-08-25 08:13:47'),
(45, 'admin::users.delete', NULL, NULL, '[]', 1, '2020-08-25 08:13:47', '2020-08-25 08:13:47'),
(46, 'admin::roles.create', NULL, NULL, '[]', 1, '2020-08-25 08:13:47', '2020-08-25 08:13:47'),
(47, 'admin::roles.read', NULL, NULL, '[]', 1, '2020-08-25 08:13:47', '2020-08-25 08:13:47'),
(48, 'admin::roles.update', NULL, NULL, '[]', 1, '2020-08-25 08:13:47', '2020-08-25 08:13:47'),
(49, 'admin::roles.delete', NULL, NULL, '[]', 1, '2020-08-25 08:13:47', '2020-08-25 08:13:47'),
(53, 'plugins::content-manager.explorer.delete', 'application::questions.questions', NULL, '[]', 1, '2020-08-25 08:28:42', '2020-08-25 08:28:42'),
(57, 'plugins::content-manager.explorer.delete', 'application::answers.answers', NULL, '[]', 1, '2020-08-25 08:32:15', '2020-08-25 08:32:15'),
(61, 'plugins::content-manager.explorer.create', 'application::questions.questions', '[\"question\",\"answers\"]', '[]', 1, '2020-08-25 08:34:48', '2020-08-25 08:34:48'),
(62, 'plugins::content-manager.explorer.read', 'application::questions.questions', '[\"question\",\"answers\"]', '[]', 1, '2020-08-25 08:34:48', '2020-08-25 08:34:48'),
(63, 'plugins::content-manager.explorer.update', 'application::questions.questions', '[\"question\",\"answers\"]', '[]', 1, '2020-08-25 08:34:48', '2020-08-25 08:34:48'),
(64, 'plugins::content-manager.explorer.create', 'application::answers.answers', '[\"answer\",\"isCorrect\",\"question\"]', '[]', 1, '2020-08-25 08:36:52', '2020-08-25 08:36:52'),
(65, 'plugins::content-manager.explorer.read', 'application::answers.answers', '[\"answer\",\"isCorrect\",\"question\"]', '[]', 1, '2020-08-25 08:36:52', '2020-08-25 08:36:52'),
(66, 'plugins::content-manager.explorer.update', 'application::answers.answers', '[\"answer\",\"isCorrect\",\"question\"]', '[]', 1, '2020-08-25 08:36:52', '2020-08-25 08:36:52'),
(67, 'plugins::content-manager.explorer.create', 'plugins::users-permissions.user', '[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmed\",\"blocked\",\"role\"]', '[]', 1, '2020-08-25 08:44:31', '2020-08-25 21:50:35'),
(68, 'plugins::content-manager.explorer.read', 'plugins::users-permissions.user', '[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmed\",\"blocked\",\"role\"]', '[]', 1, '2020-08-25 08:44:31', '2020-08-25 21:50:35'),
(69, 'plugins::content-manager.explorer.update', 'plugins::users-permissions.user', '[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmed\",\"blocked\",\"role\"]', '[]', 1, '2020-08-25 08:44:31', '2020-08-25 21:50:35'),
(73, 'plugins::content-manager.explorer.delete', 'application::user-participation.user-participation', NULL, '[]', 1, '2020-08-25 12:28:52', '2020-08-25 12:28:52'),
(74, 'plugins::content-manager.explorer.create', 'application::user-participation.user-participation', '[\"user\",\"score\",\"answers\",\"questions\"]', '[]', 1, '2020-08-25 21:45:37', '2020-08-25 21:45:38'),
(75, 'plugins::content-manager.explorer.read', 'application::user-participation.user-participation', '[\"user\",\"score\",\"answers\",\"questions\"]', '[]', 1, '2020-08-25 21:45:37', '2020-08-25 21:45:38'),
(76, 'plugins::content-manager.explorer.update', 'application::user-participation.user-participation', '[\"user\",\"score\",\"answers\",\"questions\"]', '[]', 1, '2020-08-25 21:45:37', '2020-08-25 21:45:38');

-- --------------------------------------------------------

--
-- Table structure for table `strapi_role`
--

CREATE TABLE `strapi_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `strapi_role`
--

INSERT INTO `strapi_role` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2020-08-25 08:13:46', '2020-08-25 08:13:46'),
(2, 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2020-08-25 08:13:46', '2020-08-25 08:13:46'),
(3, 'Author', 'strapi-author', 'Authors can manage and publish the content they created.', '2020-08-25 08:13:46', '2020-08-25 08:13:46');

-- --------------------------------------------------------

--
-- Table structure for table `strapi_users_roles`
--

CREATE TABLE `strapi_users_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `strapi_users_roles`
--

INSERT INTO `strapi_users_roles` (`id`, `user_id`, `role_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_webhooks`
--

CREATE TABLE `strapi_webhooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `headers` longtext,
  `events` longtext,
  `enabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `upload_file`
--

CREATE TABLE `upload_file` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `alternativeText` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext,
  `hash` varchar(255) NOT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) NOT NULL,
  `size` decimal(10,2) NOT NULL,
  `url` varchar(255) NOT NULL,
  `previewUrl` varchar(255) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `provider_metadata` longtext,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `upload_file_morph`
--

CREATE TABLE `upload_file_morph` (
  `id` int(10) UNSIGNED NOT NULL,
  `upload_file_id` int(11) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  `related_type` longtext,
  `field` longtext,
  `order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users-permissions_permission`
--

CREATE TABLE `users-permissions_permission` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `controller` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `policy` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users-permissions_permission`
--

INSERT INTO `users-permissions_permission` (`id`, `type`, `controller`, `action`, `enabled`, `policy`, `role`, `created_by`, `updated_by`) VALUES
(1, 'content-manager', 'components', 'findcomponent', 0, '', 1, NULL, NULL),
(2, 'content-manager', 'components', 'findcomponent', 0, '', 2, NULL, NULL),
(3, 'content-manager', 'components', 'listcomponents', 0, '', 1, NULL, NULL),
(4, 'content-manager', 'components', 'listcomponents', 0, '', 2, NULL, NULL),
(5, 'content-manager', 'components', 'updatecomponent', 0, '', 1, NULL, NULL),
(6, 'content-manager', 'components', 'updatecomponent', 0, '', 2, NULL, NULL),
(7, 'content-manager', 'contentmanager', 'checkuidavailability', 0, '', 1, NULL, NULL),
(8, 'content-manager', 'contentmanager', 'checkuidavailability', 0, '', 2, NULL, NULL),
(9, 'content-manager', 'contentmanager', 'count', 0, '', 2, NULL, NULL),
(10, 'content-manager', 'contentmanager', 'count', 0, '', 1, NULL, NULL),
(11, 'content-manager', 'contentmanager', 'create', 0, '', 1, NULL, NULL),
(12, 'content-manager', 'contentmanager', 'create', 0, '', 2, NULL, NULL),
(13, 'content-manager', 'contentmanager', 'delete', 0, '', 1, NULL, NULL),
(14, 'content-manager', 'contentmanager', 'delete', 0, '', 2, NULL, NULL),
(15, 'content-manager', 'contentmanager', 'deletemany', 0, '', 1, NULL, NULL),
(16, 'content-manager', 'contentmanager', 'deletemany', 0, '', 2, NULL, NULL),
(17, 'content-manager', 'contentmanager', 'find', 0, '', 1, NULL, NULL),
(18, 'content-manager', 'contentmanager', 'find', 0, '', 2, NULL, NULL),
(19, 'content-manager', 'contentmanager', 'findone', 0, '', 1, NULL, NULL),
(20, 'content-manager', 'contentmanager', 'findone', 0, '', 2, NULL, NULL),
(21, 'content-manager', 'contentmanager', 'findrelationlist', 0, '', 1, NULL, NULL),
(22, 'content-manager', 'contentmanager', 'findrelationlist', 0, '', 2, NULL, NULL),
(23, 'content-manager', 'contentmanager', 'generateuid', 0, '', 1, NULL, NULL),
(24, 'content-manager', 'contentmanager', 'generateuid', 0, '', 2, NULL, NULL),
(25, 'content-manager', 'contentmanager', 'update', 0, '', 1, NULL, NULL),
(26, 'content-manager', 'contentmanager', 'update', 0, '', 2, NULL, NULL),
(27, 'content-manager', 'contenttypes', 'findcontenttype', 0, '', 1, NULL, NULL),
(28, 'content-manager', 'contenttypes', 'findcontenttype', 0, '', 2, NULL, NULL),
(29, 'content-manager', 'contenttypes', 'listcontenttypes', 0, '', 1, NULL, NULL),
(30, 'content-manager', 'contenttypes', 'listcontenttypes', 0, '', 2, NULL, NULL),
(31, 'content-manager', 'contenttypes', 'updatecontenttype', 0, '', 1, NULL, NULL),
(32, 'content-manager', 'contenttypes', 'updatecontenttype', 0, '', 2, NULL, NULL),
(33, 'content-type-builder', 'builder', 'getreservednames', 0, '', 1, NULL, NULL),
(34, 'content-type-builder', 'builder', 'getreservednames', 0, '', 2, NULL, NULL),
(35, 'content-type-builder', 'componentcategories', 'deletecategory', 0, '', 1, NULL, NULL),
(36, 'content-type-builder', 'componentcategories', 'deletecategory', 0, '', 2, NULL, NULL),
(37, 'content-type-builder', 'componentcategories', 'editcategory', 0, '', 1, NULL, NULL),
(38, 'content-type-builder', 'componentcategories', 'editcategory', 0, '', 2, NULL, NULL),
(39, 'content-type-builder', 'components', 'createcomponent', 0, '', 1, NULL, NULL),
(40, 'content-type-builder', 'components', 'createcomponent', 0, '', 2, NULL, NULL),
(41, 'content-type-builder', 'components', 'deletecomponent', 0, '', 1, NULL, NULL),
(42, 'content-type-builder', 'components', 'deletecomponent', 0, '', 2, NULL, NULL),
(43, 'content-type-builder', 'components', 'getcomponent', 0, '', 1, NULL, NULL),
(44, 'content-type-builder', 'components', 'getcomponent', 0, '', 2, NULL, NULL),
(45, 'content-type-builder', 'components', 'getcomponents', 0, '', 1, NULL, NULL),
(46, 'content-type-builder', 'components', 'getcomponents', 0, '', 2, NULL, NULL),
(47, 'content-type-builder', 'components', 'updatecomponent', 0, '', 1, NULL, NULL),
(48, 'content-type-builder', 'components', 'updatecomponent', 0, '', 2, NULL, NULL),
(49, 'content-type-builder', 'connections', 'getconnections', 0, '', 1, NULL, NULL),
(50, 'content-type-builder', 'connections', 'getconnections', 0, '', 2, NULL, NULL),
(51, 'content-type-builder', 'contenttypes', 'createcontenttype', 0, '', 1, NULL, NULL),
(52, 'content-type-builder', 'contenttypes', 'createcontenttype', 0, '', 2, NULL, NULL),
(53, 'content-type-builder', 'contenttypes', 'deletecontenttype', 0, '', 1, NULL, NULL),
(54, 'content-type-builder', 'contenttypes', 'deletecontenttype', 0, '', 2, NULL, NULL),
(55, 'content-type-builder', 'contenttypes', 'getcontenttype', 0, '', 1, NULL, NULL),
(56, 'content-type-builder', 'contenttypes', 'getcontenttype', 0, '', 2, NULL, NULL),
(57, 'content-type-builder', 'contenttypes', 'getcontenttypes', 0, '', 1, NULL, NULL),
(58, 'content-type-builder', 'contenttypes', 'getcontenttypes', 0, '', 2, NULL, NULL),
(59, 'content-type-builder', 'contenttypes', 'updatecontenttype', 0, '', 1, NULL, NULL),
(60, 'content-type-builder', 'contenttypes', 'updatecontenttype', 0, '', 2, NULL, NULL),
(61, 'email', 'email', 'send', 0, '', 1, NULL, NULL),
(62, 'email', 'email', 'send', 0, '', 2, NULL, NULL),
(63, 'upload', 'proxy', 'uploadproxy', 0, '', 1, NULL, NULL),
(64, 'upload', 'proxy', 'uploadproxy', 0, '', 2, NULL, NULL),
(65, 'upload', 'upload', 'count', 0, '', 1, NULL, NULL),
(66, 'upload', 'upload', 'count', 0, '', 2, NULL, NULL),
(67, 'upload', 'upload', 'destroy', 0, '', 1, NULL, NULL),
(68, 'upload', 'upload', 'destroy', 0, '', 2, NULL, NULL),
(69, 'upload', 'upload', 'find', 0, '', 1, NULL, NULL),
(70, 'upload', 'upload', 'find', 0, '', 2, NULL, NULL),
(71, 'upload', 'upload', 'findone', 0, '', 1, NULL, NULL),
(72, 'upload', 'upload', 'findone', 0, '', 2, NULL, NULL),
(73, 'upload', 'upload', 'getsettings', 0, '', 1, NULL, NULL),
(74, 'upload', 'upload', 'getsettings', 0, '', 2, NULL, NULL),
(75, 'upload', 'upload', 'search', 0, '', 1, NULL, NULL),
(76, 'upload', 'upload', 'search', 0, '', 2, NULL, NULL),
(77, 'upload', 'upload', 'updatesettings', 0, '', 1, NULL, NULL),
(78, 'upload', 'upload', 'updatesettings', 0, '', 2, NULL, NULL),
(79, 'upload', 'upload', 'upload', 0, '', 1, NULL, NULL),
(80, 'upload', 'upload', 'upload', 0, '', 2, NULL, NULL),
(81, 'users-permissions', 'auth', 'callback', 0, '', 1, NULL, NULL),
(82, 'users-permissions', 'auth', 'callback', 1, '', 2, NULL, NULL),
(83, 'users-permissions', 'auth', 'connect', 1, '', 1, NULL, NULL),
(84, 'users-permissions', 'auth', 'connect', 1, '', 2, NULL, NULL),
(85, 'users-permissions', 'auth', 'emailconfirmation', 0, '', 1, NULL, NULL),
(86, 'users-permissions', 'auth', 'emailconfirmation', 1, '', 2, NULL, NULL),
(87, 'users-permissions', 'auth', 'forgotpassword', 0, '', 1, NULL, NULL),
(88, 'users-permissions', 'auth', 'forgotpassword', 1, '', 2, NULL, NULL),
(89, 'users-permissions', 'auth', 'register', 0, '', 1, NULL, NULL),
(90, 'users-permissions', 'auth', 'register', 1, '', 2, NULL, NULL),
(91, 'users-permissions', 'auth', 'resetpassword', 0, '', 1, NULL, NULL),
(92, 'users-permissions', 'auth', 'resetpassword', 1, '', 2, NULL, NULL),
(93, 'users-permissions', 'auth', 'sendemailconfirmation', 0, '', 1, NULL, NULL),
(94, 'users-permissions', 'auth', 'sendemailconfirmation', 0, '', 2, NULL, NULL),
(95, 'users-permissions', 'user', 'count', 0, '', 1, NULL, NULL),
(96, 'users-permissions', 'user', 'count', 0, '', 2, NULL, NULL),
(97, 'users-permissions', 'user', 'create', 0, '', 1, NULL, NULL),
(98, 'users-permissions', 'user', 'create', 0, '', 2, NULL, NULL),
(99, 'users-permissions', 'user', 'destroy', 0, '', 1, NULL, NULL),
(100, 'users-permissions', 'user', 'destroy', 0, '', 2, NULL, NULL),
(101, 'users-permissions', 'user', 'destroyall', 0, '', 1, NULL, NULL),
(102, 'users-permissions', 'user', 'destroyall', 0, '', 2, NULL, NULL),
(103, 'users-permissions', 'user', 'find', 0, '', 1, NULL, NULL),
(104, 'users-permissions', 'user', 'find', 0, '', 2, NULL, NULL),
(105, 'users-permissions', 'user', 'findone', 0, '', 1, NULL, NULL),
(106, 'users-permissions', 'user', 'findone', 0, '', 2, NULL, NULL),
(107, 'users-permissions', 'user', 'me', 1, '', 1, NULL, NULL),
(108, 'users-permissions', 'user', 'me', 1, '', 2, NULL, NULL),
(109, 'users-permissions', 'user', 'update', 0, '', 1, NULL, NULL),
(110, 'users-permissions', 'user', 'update', 0, '', 2, NULL, NULL),
(111, 'users-permissions', 'userspermissions', 'createrole', 0, '', 1, NULL, NULL),
(112, 'users-permissions', 'userspermissions', 'createrole', 0, '', 2, NULL, NULL),
(113, 'users-permissions', 'userspermissions', 'deleterole', 0, '', 1, NULL, NULL),
(114, 'users-permissions', 'userspermissions', 'deleterole', 0, '', 2, NULL, NULL),
(115, 'users-permissions', 'userspermissions', 'getadvancedsettings', 0, '', 1, NULL, NULL),
(116, 'users-permissions', 'userspermissions', 'getadvancedsettings', 0, '', 2, NULL, NULL),
(117, 'users-permissions', 'userspermissions', 'getemailtemplate', 0, '', 1, NULL, NULL),
(118, 'users-permissions', 'userspermissions', 'getemailtemplate', 0, '', 2, NULL, NULL),
(119, 'users-permissions', 'userspermissions', 'getpermissions', 0, '', 1, NULL, NULL),
(120, 'users-permissions', 'userspermissions', 'getpermissions', 0, '', 2, NULL, NULL),
(121, 'users-permissions', 'userspermissions', 'getpolicies', 0, '', 1, NULL, NULL),
(122, 'users-permissions', 'userspermissions', 'getpolicies', 0, '', 2, NULL, NULL),
(123, 'users-permissions', 'userspermissions', 'getproviders', 0, '', 1, NULL, NULL),
(124, 'users-permissions', 'userspermissions', 'getproviders', 0, '', 2, NULL, NULL),
(125, 'users-permissions', 'userspermissions', 'getrole', 0, '', 1, NULL, NULL),
(126, 'users-permissions', 'userspermissions', 'getrole', 0, '', 2, NULL, NULL),
(127, 'users-permissions', 'userspermissions', 'getroles', 0, '', 1, NULL, NULL),
(128, 'users-permissions', 'userspermissions', 'getroles', 0, '', 2, NULL, NULL),
(129, 'users-permissions', 'userspermissions', 'getroutes', 0, '', 1, NULL, NULL),
(130, 'users-permissions', 'userspermissions', 'getroutes', 0, '', 2, NULL, NULL),
(131, 'users-permissions', 'userspermissions', 'index', 0, '', 1, NULL, NULL),
(132, 'users-permissions', 'userspermissions', 'index', 0, '', 2, NULL, NULL),
(133, 'users-permissions', 'userspermissions', 'searchusers', 0, '', 1, NULL, NULL),
(134, 'users-permissions', 'userspermissions', 'searchusers', 0, '', 2, NULL, NULL),
(135, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 0, '', 1, NULL, NULL),
(136, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 0, '', 2, NULL, NULL),
(137, 'users-permissions', 'userspermissions', 'updateemailtemplate', 0, '', 1, NULL, NULL),
(138, 'users-permissions', 'userspermissions', 'updateemailtemplate', 0, '', 2, NULL, NULL),
(139, 'users-permissions', 'userspermissions', 'updateproviders', 0, '', 1, NULL, NULL),
(140, 'users-permissions', 'userspermissions', 'updateproviders', 0, '', 2, NULL, NULL),
(141, 'users-permissions', 'userspermissions', 'updaterole', 0, '', 1, NULL, NULL),
(142, 'users-permissions', 'userspermissions', 'updaterole', 0, '', 2, NULL, NULL),
(143, 'application', 'questions', 'count', 1, '', 1, NULL, NULL),
(144, 'application', 'questions', 'count', 0, '', 2, NULL, NULL),
(145, 'application', 'questions', 'create', 0, '', 1, NULL, NULL),
(146, 'application', 'questions', 'create', 0, '', 2, NULL, NULL),
(147, 'application', 'questions', 'delete', 0, '', 1, NULL, NULL),
(148, 'application', 'questions', 'delete', 0, '', 2, NULL, NULL),
(149, 'application', 'questions', 'find', 1, '', 1, NULL, NULL),
(150, 'application', 'questions', 'find', 0, '', 2, NULL, NULL),
(151, 'application', 'questions', 'findone', 1, '', 1, NULL, NULL),
(152, 'application', 'questions', 'findone', 0, '', 2, NULL, NULL),
(153, 'application', 'questions', 'update', 0, '', 1, NULL, NULL),
(154, 'application', 'questions', 'update', 0, '', 2, NULL, NULL),
(155, 'application', 'answers', 'count', 1, '', 1, NULL, NULL),
(156, 'application', 'answers', 'count', 0, '', 2, NULL, NULL),
(157, 'application', 'answers', 'create', 0, '', 1, NULL, NULL),
(158, 'application', 'answers', 'create', 0, '', 2, NULL, NULL),
(159, 'application', 'answers', 'delete', 0, '', 1, NULL, NULL),
(160, 'application', 'answers', 'delete', 0, '', 2, NULL, NULL),
(161, 'application', 'answers', 'find', 1, '', 1, NULL, NULL),
(162, 'application', 'answers', 'find', 0, '', 2, NULL, NULL),
(163, 'application', 'answers', 'findone', 1, '', 1, NULL, NULL),
(164, 'application', 'answers', 'findone', 0, '', 2, NULL, NULL),
(165, 'application', 'answers', 'update', 0, '', 1, NULL, NULL),
(166, 'application', 'answers', 'update', 0, '', 2, NULL, NULL),
(167, 'application', 'questions', 'checkqcm', 1, '', 1, NULL, NULL),
(168, 'application', 'questions', 'checkqcm', 0, '', 2, NULL, NULL),
(169, 'application', 'user-participation', 'count', 0, '', 1, NULL, NULL),
(170, 'application', 'user-participation', 'count', 0, '', 2, NULL, NULL),
(171, 'application', 'user-participation', 'create', 0, '', 1, NULL, NULL),
(172, 'application', 'user-participation', 'create', 0, '', 2, NULL, NULL),
(173, 'application', 'user-participation', 'delete', 0, '', 1, NULL, NULL),
(174, 'application', 'user-participation', 'delete', 0, '', 2, NULL, NULL),
(175, 'application', 'user-participation', 'find', 0, '', 1, NULL, NULL),
(176, 'application', 'user-participation', 'find', 0, '', 2, NULL, NULL),
(177, 'application', 'user-participation', 'findone', 0, '', 1, NULL, NULL),
(178, 'application', 'user-participation', 'findone', 0, '', 2, NULL, NULL),
(179, 'application', 'user-participation', 'update', 0, '', 1, NULL, NULL),
(180, 'application', 'user-participation', 'update', 0, '', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users-permissions_role`
--

CREATE TABLE `users-permissions_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users-permissions_role`
--

INSERT INTO `users-permissions_role` (`id`, `name`, `description`, `type`, `created_by`, `updated_by`) VALUES
(1, 'Authenticated', 'Default role given to authenticated user.', 'authenticated', NULL, NULL),
(2, 'Public', 'Default role given to unauthenticated user.', 'public', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users-permissions_user`
--

CREATE TABLE `users-permissions_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users-permissions_user`
--

INSERT INTO `users-permissions_user` (`id`, `username`, `email`, `provider`, `password`, `resetPasswordToken`, `confirmed`, `blocked`, `role`, `created_by`, `updated_by`, `created_at`, `updated_at`, `score`) VALUES
(1, 'marouani', 'marouani@test.com', 'local', '$2a$10$ASRQZAJ9t2Vdfp/PEhaK1e6t3Hgz9ApjtMNcdvPmgOz9.nIBZONHO', NULL, 1, NULL, 1, NULL, NULL, '2020-08-25 08:53:19', '2020-08-25 11:50:25', 2),
(2, 'marouani', 'marouani2@test.com', 'local', '$2a$10$xDqYqBUnnazVr4uPMOhXWucj7EchbsGGztv0cwh8hvHo52vnx7jmi', NULL, 1, NULL, 1, NULL, NULL, '2020-08-25 22:44:48', '2020-08-25 22:44:48', NULL),
(3, 'marouani3', 'marouani3@test.com', 'local', '$2a$10$Rs0W3IdvLeauY4onZXgZz.641kC8A2gk919U3oXRWtCmgH/TGsri6', NULL, 1, NULL, 1, NULL, NULL, '2020-08-26 10:31:49', '2020-08-26 10:31:49', NULL),
(4, 'marouaniTest', 'marouanitest@test.com', 'local', '$2a$10$K34yBKbR0BGQdQMKcjvwtOTT5vauT3kstZ/t.dVq8QsXE5jEBhy9u', NULL, 1, NULL, 1, NULL, NULL, '2020-08-26 10:47:12', '2020-08-26 10:47:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_participations`
--

CREATE TABLE `user_participations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_participations`
--

INSERT INTO `user_participations` (`id`, `user`, `score`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 1, 1, '2020-08-25 21:47:14', '2020-08-25 21:47:14'),
(2, 1, 2, NULL, 1, '2020-08-25 21:57:17', '2020-08-25 21:59:46'),
(3, 1, 6, NULL, 1, '2020-08-25 21:58:01', '2020-08-25 21:59:39'),
(4, 1, 6, NULL, NULL, '2020-08-25 21:59:56', '2020-08-25 21:59:56'),
(5, 1, 2, NULL, NULL, '2020-08-25 22:09:29', '2020-08-25 22:09:29'),
(6, 1, 2, NULL, NULL, '2020-08-25 22:10:57', '2020-08-25 22:10:58'),
(7, 1, -2, NULL, NULL, '2020-08-25 22:11:16', '2020-08-25 22:11:17'),
(8, 1, 2, NULL, NULL, '2020-08-25 22:22:07', '2020-08-25 22:22:08'),
(9, 1, 2, NULL, NULL, '2020-08-26 10:05:14', '2020-08-26 10:05:14'),
(10, 1, 2, NULL, NULL, '2020-08-26 10:16:37', '2020-08-26 10:16:37'),
(11, 4, 2, NULL, NULL, '2020-08-26 10:48:01', '2020-08-26 10:48:01'),
(12, 4, -2, NULL, NULL, '2020-08-26 10:49:27', '2020-08-26 10:49:28');

-- --------------------------------------------------------

--
-- Table structure for table `user_participations__answers`
--

CREATE TABLE `user_participations__answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_participation_id` int(11) DEFAULT NULL,
  `answer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_participations__answers`
--

INSERT INTO `user_participations__answers` (`id`, `user_participation_id`, `answer_id`) VALUES
(1, 1, 3),
(2, 1, 1),
(3, 2, 3),
(4, 2, 4),
(5, 3, 3),
(6, 3, 5),
(7, 4, 3),
(8, 4, 5),
(9, 5, 3),
(10, 5, 4),
(11, 6, 2),
(12, 6, 5),
(13, 7, 2),
(14, 7, 6),
(15, 8, 4),
(16, 8, 3),
(17, 9, 2),
(18, 9, 5),
(19, 10, 5),
(20, 10, 2),
(21, 11, 3),
(22, 11, 4),
(23, 12, 1),
(24, 12, 6);

-- --------------------------------------------------------

--
-- Table structure for table `user_participations__questions`
--

CREATE TABLE `user_participations__questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_participation_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_participations__questions`
--

INSERT INTO `user_participations__questions` (`id`, `user_participation_id`, `question_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 2),
(5, 3, 1),
(6, 3, 2),
(7, 4, 1),
(8, 4, 2),
(9, 5, 1),
(10, 5, 2),
(11, 6, 1),
(12, 6, 2),
(13, 7, 1),
(14, 7, 2),
(15, 8, 2),
(16, 8, 1),
(17, 9, 1),
(18, 9, 2),
(19, 10, 2),
(20, 10, 1),
(21, 11, 1),
(22, 11, 2),
(23, 12, 1),
(24, 12, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_store`
--
ALTER TABLE `core_store`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions__answers`
--
ALTER TABLE `questions__answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_administrator`
--
ALTER TABLE `strapi_administrator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_permission`
--
ALTER TABLE `strapi_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_role`
--
ALTER TABLE `strapi_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_users_roles`
--
ALTER TABLE `strapi_users_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_file`
--
ALTER TABLE `upload_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_file_morph`
--
ALTER TABLE `upload_file_morph`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users-permissions_permission`
--
ALTER TABLE `users-permissions_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users-permissions_role`
--
ALTER TABLE `users-permissions_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users-permissions_user`
--
ALTER TABLE `users-permissions_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_participations`
--
ALTER TABLE `user_participations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_participations__answers`
--
ALTER TABLE `user_participations__answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_participations__questions`
--
ALTER TABLE `user_participations__questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `core_store`
--
ALTER TABLE `core_store`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `questions__answers`
--
ALTER TABLE `questions__answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `strapi_administrator`
--
ALTER TABLE `strapi_administrator`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `strapi_permission`
--
ALTER TABLE `strapi_permission`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `strapi_role`
--
ALTER TABLE `strapi_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `strapi_users_roles`
--
ALTER TABLE `strapi_users_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `upload_file`
--
ALTER TABLE `upload_file`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `upload_file_morph`
--
ALTER TABLE `upload_file_morph`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users-permissions_permission`
--
ALTER TABLE `users-permissions_permission`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;
--
-- AUTO_INCREMENT for table `users-permissions_role`
--
ALTER TABLE `users-permissions_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users-permissions_user`
--
ALTER TABLE `users-permissions_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user_participations`
--
ALTER TABLE `user_participations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `user_participations__answers`
--
ALTER TABLE `user_participations__answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `user_participations__questions`
--
ALTER TABLE `user_participations__questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
