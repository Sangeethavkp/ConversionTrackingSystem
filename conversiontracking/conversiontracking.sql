-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2018 at 12:53 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `conversiontracking`
--

-- --------------------------------------------------------

--
-- Table structure for table `calendar_events`
--

CREATE TABLE `calendar_events` (
  `ID` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `userid` int(11) NOT NULL,
  `projectid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('3np1i1uble9blrrf8bbt5shh8oq35lgp', '::1', 1533027975, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533333032373937353b705f706167657c733a353a22696e646578223b),
('7l760j2v8fva6hq7s5h4a0986qo7004i', '::1', 1533034427, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533333033333934333b705f706167657c733a353a22696e646578223b),
('bsuipovu3oj3bhpah93gdpjdf5dqepjo', '::1', 1533027667, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533333032373636373b705f706167657c733a353a22696e646578223b),
('mefs7fvk0hhpn7irtthd5gvdphmt7k0u', '::1', 1533033943, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533333033333934333b),
('v4a2s57edcjv5ugql2n8tmsk6euab5vk', '::1', 1533029056, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533333032393035363b705f706167657c733a353a22696e646578223b);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`ID`, `name`, `symbol`, `code`) VALUES
(1, 'Pounds', '£', 'GBP'),
(2, 'Dollars', '$', 'USD'),
(4, 'Euros', '€', 'EUR');

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `options` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `required` int(11) NOT NULL,
  `profile` int(11) NOT NULL,
  `edit` int(11) NOT NULL,
  `help_text` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `register` int(11) NOT NULL,
  `leads` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `ID` int(11) NOT NULL,
  `projectid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `document` text NOT NULL,
  `timestamp` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL,
  `link_documentid` int(11) NOT NULL,
  `sort_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `document_files`
--

CREATE TABLE `document_files` (
  `ID` int(11) NOT NULL,
  `documentid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `extension` varchar(25) NOT NULL,
  `file_size` int(11) NOT NULL,
  `file_type` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `ID` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `hook` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`ID`, `title`, `message`, `hook`, `language`) VALUES
(1, 'Forgot Your Password', '<p>Dear [NAME],<br />\n<br />\nSomeone (hopefully you) requested a password reset at [SITE_URL].<br />\n<br />\nTo reset your password, please follow the following link: [EMAIL_LINK]<br />\n<br />\nIf you did not reset your password, please kindly ignore this email.<br />\n<br />\nYours,<br />\n[SITE_NAME]</p>\n', 'forgot_password', 'english'),
(2, 'Email Activation', '<p>Dear [NAME],<br />\r\n<br />\r\nSomeone (hopefully you) has registered an account on [SITE_NAME] using this email address.<br />\r\n<br />\r\nPlease activate the account by following this link: [EMAIL_LINK]<br />\r\n<br />\r\nIf you did not register an account, please kindly ignore this email.<br />\r\n<br />\r\nYours,<br />\r\n[SITE_NAME]</p>\r\n', 'email_activation', 'english'),
(3, 'Support Ticket Reply', '<p>## - REPLY ABOVE THIS LINE - ##<br />\r\n<br />\r\nDear [NAME],<br />\r\n<br />\r\nA new reply was posted on your ticket:<br />\r\n<br />\r\n[TICKET_BODY]<br />\r\n<br />\r\nTicket was generated here: [SITE_URL]<br />\r\n<br />\r\n## Ticket ID: [TICKET_ID] ##<br />\r\n<br />\r\nYours,<br />\r\n[SITE_NAME]</p>\r\n', 'ticket_reply', 'english'),
(4, 'Support Ticket Creation', '<p>## - REPLY ABOVE THIS LINE - ##<br />\r\n<br />\r\nDear [NAME],<br />\r\n<br />\r\nThanks for creating a ticket at our site: [SITE_URL]<br />\r\n<br />\r\nYour message:<br />\r\n<br />\r\n[TICKET_BODY]<br />\r\n<br />\r\nWe&#39;ll be in touch shortly.<br />\r\n<br />\r\n## Ticket ID: [TICKET_ID] ##<br />\r\n<br />\r\nYours,<br />\r\n[SITE_NAME]</p>\r\n', 'ticket_creation', 'english'),
(5, 'Ordered Service', '<p>Dear [NAME],<br />\r\n<br />\r\nThank you for ordering our service. Before we can complete it for you, please make sure you have paid the invoice. You can view the invoice at: <a href=\"[INVOICE_URL]\">[INVOICE_URL]</a>.<br />\r\n<br />\r\nOnce the Invoice has been paid, we will contact you via email to let you know when the service has been completed.<br />\r\n<br />\r\nThank you,<br />\r\n[SITE_NAME]</p>\r\n', 'ordered_service', 'english'),
(6, 'Invoice Reminder', 'Dear [NAME],\r\n\r\nAn Invoice generated by [SITE_NAME] requires your attention. You can view the Invoice online at:\r\n\r\n[INVOICE_URL]\r\n\r\nYou can pay the invoice using PayPal, Stripe or 2Checkout services.\r\n\r\nThank you,\r\n[SITE_NAME]', 'invoice_reminder', 'english'),
(7, 'Invoice Overdue', 'Dear [NAME],\r\n\r\nAn Invoice generated by [SITE_NAME] is currently overdue and requires paying. You can view the Invoice online at:\r\n\r\n[INVOICE_URL]\r\n\r\nYou can pay the invoice using PayPal, Stripe or 2Checkout services.\r\n\r\nThank you,\r\n[SITE_NAME]', 'invoice_overdue', 'english'),
(8, 'New Notification', 'Dear [NAME],<br /><br />\n\nYou have a new notification waiting for you at [SITE_NAME]. You can view it by logging into:<br /><br />\n\n[SITE_URL]<br /><br />\n\nYours,<br />\n[SITE_NAME]', 'new_notification', 'english');

-- --------------------------------------------------------

--
-- Table structure for table `finance`
--

CREATE TABLE `finance` (
  `ID` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `projectid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `time_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `finance_categories`
--

CREATE TABLE `finance_categories` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `finance_categories`
--

INSERT INTO `finance_categories` (`ID`, `name`, `description`) VALUES
(1, 'Default', '<p></p>\n');

-- --------------------------------------------------------

--
-- Table structure for table `home_stats`
--

CREATE TABLE `home_stats` (
  `ID` int(11) NOT NULL,
  `google_members` int(11) NOT NULL,
  `facebook_members` int(11) NOT NULL,
  `twitter_members` int(11) NOT NULL,
  `total_members` int(11) NOT NULL,
  `new_members` int(11) NOT NULL,
  `active_today` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `home_stats`
--

INSERT INTO `home_stats` (`ID`, `google_members`, `facebook_members`, `twitter_members`, `total_members`, `new_members`, `active_today`, `timestamp`) VALUES
(1, 0, 0, 0, 1, 1, 1, 1517915855);

-- --------------------------------------------------------

--
-- Table structure for table `home_stats_user`
--

CREATE TABLE `home_stats_user` (
  `ID` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `projects` int(11) NOT NULL,
  `tasks` int(11) NOT NULL,
  `time` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `time_projects` varchar(9999) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `home_stats_user`
--

INSERT INTO `home_stats_user` (`ID`, `userid`, `projects`, `tasks`, `time`, `timestamp`, `time_projects`) VALUES
(1, 1, 3, 2, '1h', 1533033943, 'a:2:{i:1;a:3:{s:5:\"title\";s:8:\"Project1\";s:5:\"times\";i:3;s:5:\"hours\";d:1.1808333333333332;}i:2;a:3:{s:5:\"title\";s:8:\"Project2\";s:5:\"times\";i:1;s:5:\"hours\";d:0.0030555555555555557;}}'),
(2, 2, 1, 0, '0', 1533028114, 'a:0:{}'),
(3, 3, 0, 0, '0', 1532588264, 'a:0:{}'),
(4, 7, 0, 0, '0', 1532598346, 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `ID` int(11) NOT NULL,
  `invoice_id` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `clientid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `projectid` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `currencyid` int(11) NOT NULL,
  `due_date` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `tax_name_1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tax_rate_1` decimal(10,2) NOT NULL,
  `tax_name_2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tax_rate_2` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_paid` int(11) NOT NULL,
  `paypal_email` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `address_1` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `address_2` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `paid_by` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `template` int(11) NOT NULL,
  `stripe` int(11) NOT NULL,
  `time_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `time_date_paid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `checkout2_hash` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `checkout2` int(11) NOT NULL,
  `paypal` int(11) NOT NULL,
  `serviceid` int(11) NOT NULL,
  `guest_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `guest_email` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `paying_accountid` int(11) NOT NULL,
  `themeid` int(11) NOT NULL DEFAULT '1',
  `term_notes` text COLLATE utf8_unicode_ci NOT NULL,
  `hidden_notes` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `ID` int(11) NOT NULL,
  `invoiceid` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_item_db`
--

CREATE TABLE `invoice_item_db` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `projectid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_reoccur`
--

CREATE TABLE `invoice_reoccur` (
  `ID` int(11) NOT NULL,
  `clientid` int(11) NOT NULL,
  `templateid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `amount_time` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `start_date` int(11) NOT NULL,
  `end_date` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `last_occurence` int(11) NOT NULL,
  `next_occurence` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_settings`
--

CREATE TABLE `invoice_settings` (
  `ID` int(11) NOT NULL,
  `image` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `enable_paypal` int(11) NOT NULL DEFAULT '1',
  `enable_stripe` int(11) NOT NULL,
  `enable_checkout2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoice_settings`
--

INSERT INTO `invoice_settings` (`ID`, `image`, `enable_paypal`, `enable_stripe`, `enable_checkout2`) VALUES
(1, 'invoice_logo.jpg', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_themes`
--

CREATE TABLE `invoice_themes` (
  `ID` int(11) NOT NULL,
  `name` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoice_themes`
--

INSERT INTO `invoice_themes` (`ID`, `name`, `image`, `file`) VALUES
(1, 'Default', 'invoice_default.png', 'default'),
(2, 'Navy Blue', 'invoice_blue.png', 'navy_blue');

-- --------------------------------------------------------

--
-- Table structure for table `ipn_log`
--

CREATE TABLE `ipn_log` (
  `ID` int(11) NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `IP` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ip_block`
--

CREATE TABLE `ip_block` (
  `ID` int(11) NOT NULL,
  `IP` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `reason` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_forms`
--

CREATE TABLE `lead_forms` (
  `ID` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `welcome` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `assignedid` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `collect_user` int(11) NOT NULL,
  `default_statusid` int(11) NOT NULL,
  `default_sourceid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_form_fields`
--

CREATE TABLE `lead_form_fields` (
  `ID` int(11) NOT NULL,
  `formid` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `required` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `options` varchar(2500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_notes`
--

CREATE TABLE `lead_notes` (
  `ID` int(11) NOT NULL,
  `leadid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_sources`
--

CREATE TABLE `lead_sources` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lead_sources`
--

INSERT INTO `lead_sources` (`ID`, `name`) VALUES
(2, 'Facebook'),
(3, 'Twitter');

-- --------------------------------------------------------

--
-- Table structure for table `lead_statuses`
--

CREATE TABLE `lead_statuses` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lead_statuses`
--

INSERT INTO `lead_statuses` (`ID`, `name`) VALUES
(1, 'New'),
(3, 'Updated');

-- --------------------------------------------------------

--
-- Table structure for table `live_chat`
--

CREATE TABLE `live_chat` (
  `ID` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `live_chat_messages`
--

CREATE TABLE `live_chat_messages` (
  `ID` int(11) NOT NULL,
  `chatid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `live_chat_users`
--

CREATE TABLE `live_chat_users` (
  `ID` int(11) NOT NULL,
  `chatid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `unread` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `ID` int(11) NOT NULL,
  `IP` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `login_attempts`
--

INSERT INTO `login_attempts` (`ID`, `IP`, `username`, `count`, `timestamp`) VALUES
(1, '::1', 'ctsadmin@spi-global.com', 3, 1532587773),
(2, '::1', '205301', 3, 1532599441),
(3, '::1', 'v.sangeetha@spi-global.com', 1, 1532663511);

-- --------------------------------------------------------

--
-- Table structure for table `mail`
--

CREATE TABLE `mail` (
  `ID` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `toid` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `delete_userid` int(11) NOT NULL,
  `delete_toid` int(11) NOT NULL,
  `replies` int(11) NOT NULL DEFAULT '1',
  `last_reply_timestamp` int(11) NOT NULL,
  `unread_userid` int(11) NOT NULL,
  `unread_toid` int(11) NOT NULL,
  `last_replyid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mail_replies`
--

CREATE TABLE `mail_replies` (
  `ID` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `mailid` int(11) NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `ID` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `projectid` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `last_updated_timestamp` int(11) NOT NULL,
  `last_updated_userid` int(11) NOT NULL,
  `personal` int(11) NOT NULL,
  `pinned` int(11) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `note_todos`
--

CREATE TABLE `note_todos` (
  `ID` int(11) NOT NULL,
  `noteid` int(11) NOT NULL,
  `todo` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `completed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset`
--

CREATE TABLE `password_reset` (
  `ID` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `IP` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paying_accounts`
--

CREATE TABLE `paying_accounts` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `paypal_email` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `stripe_secret_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stripe_publishable_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `checkout2_account_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `checkout2_secret_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address_line_1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address_line_2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_logs`
--

CREATE TABLE `payment_logs` (
  `ID` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `email` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `invoiceid` int(11) NOT NULL,
  `processor` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_plans`
--

CREATE TABLE `payment_plans` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hexcolor` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `fontcolor` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  `days` int(11) NOT NULL,
  `sales` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment_plans`
--

INSERT INTO `payment_plans` (`ID`, `name`, `hexcolor`, `fontcolor`, `cost`, `days`, `sales`, `description`) VALUES
(2, 'BASIC', '68aa9b', 'FFFFFF', '3.00', 30, 6, 'This is the basic plan which gives you a introduction to our Premium Plans'),
(3, 'Professional', '416375', 'FFFFFF', '7.99', 90, 3, 'Get all the benefits of basic at a cheaper price and gain content for longer.'),
(4, 'LIFETIME', '578465', 'FFFFFF', '300.00', 0, 1, 'Become a premium member for life and have access to all our premium content.');

-- --------------------------------------------------------

--
-- Table structure for table `profile_comments`
--

CREATE TABLE `profile_comments` (
  `ID` int(11) NOT NULL,
  `profileid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `ID` int(11) NOT NULL,
  `name` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `userid` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `catid` int(11) NOT NULL,
  `customer` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publisher` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isbn` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `eisbn` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `acronym` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `process_name` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pm` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `calendar_id` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `calendar_color` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `complete` int(11) NOT NULL,
  `complete_sync` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`ID`, `name`, `image`, `userid`, `description`, `catid`, `customer`, `publisher`, `isbn`, `eisbn`, `author`, `acronym`, `process_name`, `pm`, `timestamp`, `status`, `calendar_id`, `calendar_color`, `complete`, `complete_sync`) VALUES
(1, 'Project1', 'default.png', 1, '<p>My first Project!</p>\r\n', 6, 'Sophie', 'Kamal', '7856654643554', '5609865809478', 'Ashok', 'ash', 'XML', 'Joker', 1532771686, 0, '', 'FD7D82', 0, 1),
(2, 'Project2', 'default.png', 1, '<p>fdsfdsf</p>\r\n', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1532670390, 0, '', '', 0, 1),
(3, 'Project3', '4166e635043b9314790abad0d3acdab2.png', 1, '<p>My Pro</p>\r\n', 6, 'Balaji', 'Sangeetha', '7890768765f897', '5623147896598', 'Healthy', 'Fitness', 'Relax', 'Iswarya', 1532765723, 0, '', 'FD7D82', 0, 1),
(4, 'Project4', 'f6c6547736e27f16669474537effc8b0.png', 1, '<p>gffdg</p>\r\n', 6, 'gfg', '', '7698767567657', '6576575435435', 'Healthy', 'h', 'Relax', 'jhgfhgf', 1532766026, 0, '', 'FD7D82', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `project_categories`
--

CREATE TABLE `project_categories` (
  `ID` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(6) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `project_categories`
--

INSERT INTO `project_categories` (`ID`, `name`, `color`) VALUES
(6, 'In Progress', '4BC94B'),
(7, 'Completed', '28aac2'),
(8, 'Cancelled', 'da2222');

-- --------------------------------------------------------

--
-- Table structure for table `project_chat`
--

CREATE TABLE `project_chat` (
  `ID` int(11) NOT NULL,
  `projectid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_files`
--

CREATE TABLE `project_files` (
  `ID` int(11) NOT NULL,
  `projectid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `folder_flag` int(11) NOT NULL DEFAULT '0',
  `file_name` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `extension` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `file_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `folder_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `folder_parent` int(11) NOT NULL,
  `file_url` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `upload_file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_file_notes`
--

CREATE TABLE `project_file_notes` (
  `ID` int(11) NOT NULL,
  `fileid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_members`
--

CREATE TABLE `project_members` (
  `ID` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `projectid` int(11) NOT NULL,
  `roleid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `project_members`
--

INSERT INTO `project_members` (`ID`, `userid`, `projectid`, `roleid`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 2),
(3, 1, 3, 1),
(4, 1, 4, 1),
(5, 4, 2, 6),
(6, 9, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `project_roles`
--

CREATE TABLE `project_roles` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `admin` int(11) NOT NULL,
  `team` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `file` int(11) NOT NULL,
  `task` int(11) NOT NULL,
  `calendar` int(11) NOT NULL,
  `finance` int(11) NOT NULL,
  `notes` int(11) NOT NULL,
  `reports` int(11) NOT NULL,
  `client` int(11) NOT NULL,
  `doc` int(11) NOT NULL,
  `invoice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `project_roles`
--

INSERT INTO `project_roles` (`ID`, `name`, `admin`, `team`, `time`, `file`, `task`, `calendar`, `finance`, `notes`, `reports`, `client`, `doc`, `invoice`) VALUES
(1, 'Admin', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 'Team', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 'Time', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 'File Manager', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 'Task Manager', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(7, 'Calendar Manager', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(8, 'Finance Manager', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(9, 'Notes', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(10, 'Worker', 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0),
(11, 'Reports', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(12, 'Client', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `project_tasks`
--

CREATE TABLE `project_tasks` (
  `ID` int(11) NOT NULL,
  `projectid` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `input` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `output` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `complexity` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unitPricePerPage` decimal(10,2) NOT NULL,
  `unitPricePerArticle` decimal(10,2) NOT NULL,
  `totalPages` int(11) NOT NULL,
  `totalArticles` int(11) NOT NULL,
  `totalPagesPrice` decimal(10,2) NOT NULL,
  `totalArticlesPrice` decimal(10,2) NOT NULL,
  `start_date` int(11) NOT NULL,
  `due_date` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `complete` int(11) NOT NULL,
  `complete_sync` int(11) NOT NULL DEFAULT '1',
  `archived` int(11) NOT NULL,
  `template` int(11) NOT NULL,
  `template_projectid` int(11) NOT NULL,
  `template_start_days` int(11) NOT NULL,
  `template_due_days` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `project_tasks`
--

INSERT INTO `project_tasks` (`ID`, `projectid`, `name`, `description`, `input`, `output`, `complexity`, `unitPricePerPage`, `unitPricePerArticle`, `totalPages`, `totalArticles`, `totalPagesPrice`, `totalArticlesPrice`, `start_date`, `due_date`, `status`, `userid`, `complete`, `complete_sync`, `archived`, `template`, `template_projectid`, `template_start_days`, `template_due_days`) VALUES
(1, 1, 'Xml', '<p>Xml to Pdf</p>\r\n', NULL, NULL, '0', '0.00', '0.00', 0, 0, '0.00', '0.00', 1532762632, 1532849032, 2, 1, 0, 1, 0, 0, 0, 0, 0),
(2, 3, 'Conversion', '<p>Conversion of the Xml file to the Pdf file format!!!</p>\r\n', 'XMLs', 'PDFs', 'Medium', '15.00', '4.00', 3, 6, '45.00', '24.00', 1533107631, 1533366831, 3, 1, 0, 1, 0, 0, 0, 0, 0),
(3, 1, 'test1', '<p>Xml to Pdf</p>\r\n', 'XMLs', 'PDFs', 'High', '10.00', '2.00', 5, 7, '50.00', '14.00', 1532762632, 1532849032, 2, 1, 0, 1, 0, 0, 0, 0, 0),
(4, 3, 'test2', '<p>Conversion of the Xml file to the Pdf file format!!!</p>\r\n', 'XMLs', 'PDFs', 'Medium', '15.00', '4.00', 3, 6, '45.00', '24.00', 1533107631, 1533366831, 3, 1, 0, 1, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `project_task_files`
--

CREATE TABLE `project_task_files` (
  `ID` int(11) NOT NULL,
  `taskid` int(11) NOT NULL,
  `fileid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_task_members`
--

CREATE TABLE `project_task_members` (
  `iD` int(11) NOT NULL,
  `taskid` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `project_task_members`
--

INSERT INTO `project_task_members` (`iD`, `taskid`, `userid`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 4),
(5, 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `project_task_messages`
--

CREATE TABLE `project_task_messages` (
  `ID` int(11) NOT NULL,
  `taskid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_task_objectives`
--

CREATE TABLE `project_task_objectives` (
  `ID` int(11) NOT NULL,
  `taskid` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `complete` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_task_objective_members`
--

CREATE TABLE `project_task_objective_members` (
  `ID` int(11) NOT NULL,
  `objectiveid` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reset_log`
--

CREATE TABLE `reset_log` (
  `ID` int(11) NOT NULL,
  `IP` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_forms`
--

CREATE TABLE `service_forms` (
  `ID` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `welcome` text COLLATE utf8_unicode_ci NOT NULL,
  `userid` int(11) NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  `invoice` int(11) NOT NULL,
  `currencyid` int(11) NOT NULL,
  `invoice_message` text COLLATE utf8_unicode_ci NOT NULL,
  `require_login` int(11) NOT NULL,
  `paying_accountid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_form_fields`
--

CREATE TABLE `service_form_fields` (
  `ID` int(11) NOT NULL,
  `formid` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `required` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `options` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `cost` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `site_layouts`
--

CREATE TABLE `site_layouts` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `layout_path` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `site_layouts`
--

INSERT INTO `site_layouts` (`ID`, `name`, `layout_path`) VALUES
(1, 'Basic', 'layout/themes/layout.php'),
(2, 'Titan', 'layout/themes/titan_layout.php'),
(3, 'Dark Fire', 'layout/themes/dark_fire_layout.php'),
(4, 'Light Blue', 'layout/themes/light_blue_layout.php'),
(5, 'Titan - RTL', 'layout/themes/titan_rtl.php');

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `ID` int(11) NOT NULL,
  `site_name` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `site_desc` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `upload_path` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `upload_path_relative` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `site_email` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `site_logo` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'logo.png',
  `register` int(11) NOT NULL,
  `disable_captcha` int(11) NOT NULL,
  `date_format` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `avatar_upload` int(11) NOT NULL DEFAULT '1',
  `file_types` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `twitter_consumer_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `twitter_consumer_secret` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `disable_social_login` int(11) NOT NULL,
  `facebook_app_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook_app_secret` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `google_client_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `google_client_secret` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `paypal_email` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `paypal_currency` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'USD',
  `payment_enabled` int(11) NOT NULL,
  `payment_symbol` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '$',
  `global_premium` int(11) NOT NULL,
  `calendar_type` int(11) NOT NULL,
  `google_calendar_id` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `calendar_timezone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `google_calendar_api_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `disable_ticket_upload` int(11) NOT NULL,
  `protocol` int(11) NOT NULL,
  `protocol_path` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `protocol_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `protocol_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ticket_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `protocol_ssl` int(11) NOT NULL,
  `login_protect` int(11) NOT NULL,
  `activate_account` int(11) NOT NULL,
  `fp_currency_symbol` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `enable_calendar` int(11) NOT NULL,
  `enable_tasks` int(11) NOT NULL,
  `enable_files` int(11) NOT NULL,
  `enable_team` int(11) NOT NULL,
  `enable_time` int(11) NOT NULL,
  `enable_tickets` int(11) NOT NULL,
  `enable_finance` int(11) NOT NULL,
  `enable_invoices` int(11) NOT NULL,
  `enable_notes` int(11) NOT NULL,
  `enable_leads` int(11) NOT NULL,
  `default_user_role` int(11) NOT NULL,
  `install` int(11) NOT NULL,
  `secure_login` int(11) NOT NULL DEFAULT '1',
  `enable_reports` int(11) NOT NULL DEFAULT '1',
  `date_picker_format` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'd/m/Y',
  `calendar_picker_format` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `google_recaptcha_secret` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `google_recaptcha_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `google_recaptcha` int(11) NOT NULL,
  `logo_option` int(11) NOT NULL,
  `enable_services` int(11) NOT NULL,
  `layout` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'layout/themes/titan_layout.php',
  `cache_time` int(11) NOT NULL DEFAULT '3600',
  `imap_ticket_string` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT '## Ticket ID:',
  `imap_reply_string` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT '## - REPLY ABOVE THIS LINE - ##',
  `profile_comments` int(11) NOT NULL,
  `client_user_role` int(11) NOT NULL,
  `enable_chat` int(11) NOT NULL DEFAULT '1',
  `chat_update` int(11) NOT NULL DEFAULT '5000',
  `avatar_height` int(11) NOT NULL,
  `avatar_width` int(11) NOT NULL,
  `resize_avatar` int(11) NOT NULL,
  `chat_online_client` int(11) NOT NULL,
  `enable_docs` int(11) NOT NULL,
  `doc_view_all` int(11) NOT NULL,
  `dashboard_services` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`ID`, `site_name`, `site_desc`, `upload_path`, `upload_path_relative`, `site_email`, `site_logo`, `register`, `disable_captcha`, `date_format`, `avatar_upload`, `file_types`, `twitter_consumer_key`, `twitter_consumer_secret`, `disable_social_login`, `facebook_app_id`, `facebook_app_secret`, `google_client_id`, `google_client_secret`, `file_size`, `paypal_email`, `paypal_currency`, `payment_enabled`, `payment_symbol`, `global_premium`, `calendar_type`, `google_calendar_id`, `calendar_timezone`, `google_calendar_api_key`, `disable_ticket_upload`, `protocol`, `protocol_path`, `protocol_email`, `protocol_password`, `ticket_title`, `protocol_ssl`, `login_protect`, `activate_account`, `fp_currency_symbol`, `enable_calendar`, `enable_tasks`, `enable_files`, `enable_team`, `enable_time`, `enable_tickets`, `enable_finance`, `enable_invoices`, `enable_notes`, `enable_leads`, `default_user_role`, `install`, `secure_login`, `enable_reports`, `date_picker_format`, `calendar_picker_format`, `google_recaptcha_secret`, `google_recaptcha_key`, `google_recaptcha`, `logo_option`, `enable_services`, `layout`, `cache_time`, `imap_ticket_string`, `imap_reply_string`, `profile_comments`, `client_user_role`, `enable_chat`, `chat_update`, `avatar_height`, `avatar_width`, `resize_avatar`, `chat_online_client`, `enable_docs`, `doc_view_all`, `dashboard_services`) VALUES
(1, 'Conversion Tracking System', 'A powerful tracking system!', 'D:\\spi_rad_php\\htdocs\\conversiontracking\\uploads', 'uploads', 'test@test.com', 'logo.png', 0, 1, 'd/m/Y h:i', 1, 'gif|png|jpg|jpeg', '', '', 0, '', '', '', '', 1028, '', 'USD', 1, '$', 0, 0, '', 'Europe/London', '', 0, 1, '', '', '', 'PMS TIcket', 1, 1, 0, '$', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 7, 0, 0, 1, 'm/d/Y', 'Y/m/d H:i', '', '', 0, 0, 1, 'layout/themes/titan_layout.php', 3600, '## Ticket ID:', '## - REPLY ABOVE THIS LINE - ##', 1, 11, 1, 5000, 80, 80, 1, 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `ID` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `departmentid` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `assignedid` int(11) NOT NULL,
  `last_reply_userid` int(11) NOT NULL,
  `last_reply_timestamp` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `message_id_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ticket_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `close_ticket_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_category_groups`
--

CREATE TABLE `ticket_category_groups` (
  `ID` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `groupid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_custom_fields`
--

CREATE TABLE `ticket_custom_fields` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `help_text` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `select_options` varchar(1500) COLLATE utf8_unicode_ci NOT NULL,
  `required` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_custom_field_data`
--

CREATE TABLE `ticket_custom_field_data` (
  `ID` int(11) NOT NULL,
  `ticketid` int(11) NOT NULL,
  `fieldid` int(11) NOT NULL,
  `value` varchar(2000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_departments`
--

CREATE TABLE `ticket_departments` (
  `ID` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ticket_departments`
--

INSERT INTO `ticket_departments` (`ID`, `name`, `description`) VALUES
(1, 'Default', '');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_files`
--

CREATE TABLE `ticket_files` (
  `ID` int(11) NOT NULL,
  `ticketid` int(11) NOT NULL,
  `upload_file_name` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `file_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `extension` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `file_size` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `replyid` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_replies`
--

CREATE TABLE `ticket_replies` (
  `ID` int(11) NOT NULL,
  `ticketid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `body` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `replyid` int(11) NOT NULL,
  `files` int(11) NOT NULL,
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `IP` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `designation` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `department` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `doj` date NOT NULL,
  `reporting` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bloodGroup` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skillSet` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default.png',
  `joined` int(11) NOT NULL,
  `joined_date` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `online_timestamp` int(11) NOT NULL,
  `oauth_provider` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `oauth_id` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `oauth_token` varchar(1500) COLLATE utf8_unicode_ci NOT NULL,
  `oauth_secret` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `email_notification` int(11) NOT NULL DEFAULT '1',
  `aboutme` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `points` decimal(10,2) NOT NULL,
  `premium_time` int(11) NOT NULL,
  `user_role` int(11) NOT NULL,
  `premium_planid` int(11) NOT NULL,
  `noti_count` int(11) NOT NULL,
  `email_count` int(11) NOT NULL,
  `active_projectid` int(11) NOT NULL,
  `timer_count` int(11) NOT NULL,
  `time_rate` decimal(10,2) NOT NULL,
  `address_1` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `address_2` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `activate_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `profile_comments` int(11) NOT NULL DEFAULT '1',
  `profile_views` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `employee_id`, `email`, `password`, `token`, `IP`, `username`, `first_name`, `last_name`, `designation`, `department`, `category`, `doj`, `reporting`, `gender`, `mobile`, `bloodGroup`, `skillSet`, `avatar`, `joined`, `joined_date`, `online_timestamp`, `oauth_provider`, `oauth_id`, `oauth_token`, `oauth_secret`, `email_notification`, `aboutme`, `points`, `premium_time`, `user_role`, `premium_planid`, `noti_count`, `email_count`, `active_projectid`, `timer_count`, `time_rate`, `address_1`, `address_2`, `city`, `state`, `zipcode`, `country`, `active`, `activate_code`, `profile_comments`, `profile_views`) VALUES
(1, 123456, 'ctsadmin@spi-global.com', '$2a$12$vu7VCrjC6SZXIQZNd3SUl.I9AEDAbeKaUUUESMhTyW71NpZY3mCh6', '5ea420ecc8a3a9edf65c15a35bdc7103', '::1', 'Admin', 'Admin', 'User', 'Administrator', 'Management', 'Organiser', '2005-12-10', 'George', 'male', '9675654654', 'A +Ve', 'Project Mangement', 'd535c3ae73e8ee047a9badbc742db9c3.png', 1532587356, '7-2018', 1533034212, '', '', '', '', 1, 'Cool!!!', '0.00', 0, 1, 0, 5, 0, 0, 0, '0.00', '43', 'Rue', 'Paris', 'Paris', '34564', 'France', 1, '', 1, 5),
(2, 205301, 'v.sangeetha@spi-global.com', '$2a$12$OOgNdZXQsrLn71JHyuGgFOAGlIL6cipxUff6Emi/5/2NMpLxFNxQK', '616560d67cbe8e32cb20153f422cf163', '::1', 'SangeethaV', 'Sangeetha', 'Vengadassalam', '', '', '', '0000-00-00', '', NULL, '', '', '', 'default.png', 1532587624, '7-2018', 1533029026, '', '', '', '', 1, '', '0.00', 0, 23, 0, 0, 0, 0, 0, '0.00', '', '', '', '', '', '', 1, '', 1, 1),
(3, 345874, 'bala@spi-global.com', '$2a$12$TklKy8H.zyx3qIkAYRC70O/D/MEQ.iCFVLVXI9Vim.uQ5t5jTUkYm', 'ae17b5ad2f8ca31a1d5ee590f9a6ba82', '::1', 'Balaji', 'Balaji', 'Prushoth', 'Officer', 'Research', 'RMD', '2010-01-05', 'Ruby', '', '7566546546', 'O+ve', 'Sprit', 'default.png', 1532588245, '7-2018', 1532589463, '', '', '', '', 1, 'Good', '43.50', 0, 23, 0, 0, 0, 0, 0, '0.00', '7', 'jghjhg', 'jhkjhk', 'jkjhj', 'ghfdgd', 'jkljlkjkh', 1, '', 1, 0),
(4, 654654, 'luc.mathi@yopmail.com', '$2a$12$5kOpVg2wsUreJdOwZYArruGgBkfQtbNd2U85wH0nZYBkfRweir.Oy', '', '::1', 'lucmathi', 'luc', 'mathi', 'Advisor', 'Training', 'Rmd', '2013-12-12', 'Domel', 'male', '3367657657', 'A+ve', 'Sprit', 'default.png', 1532589630, '7-2018', 0, '', '', '', '', 1, '', '0.00', 0, 7, 0, 3, 0, 0, 0, '0.00', '', '', '', '', '', '', 1, '', 1, 0),
(5, 565541, 'sophie1@sophie.com', '$2a$12$8BJ93fIpdYT8UE9W2aIw.OkKI18oEU1vnfLwERc07sHt0qf/gqa1.', '', '::1', 'Sophie', 'Sophie1', 'srii1', 'SoftwareDeveloper', 'Training1', 'drsf1', '0000-00-00', 'rosy1', 'female', '5654651111', 'O+ve', 'Typing ', 'default.png', 1532589775, '7-2018', 0, '', '', '', '', 1, 'gfgfdgd', '1.00', 0, 23, 0, 0, 0, 0, 0, '0.00', 'fgfdg', 'fdgfdgfd', 'dgfdg', 'gfdgfdg', '56546', 'hgfhfgh', 1, '', 1, 1),
(6, 655465, 'demo@admin.com', '$2a$12$N2V.v12ji579f8bxFc6G1ulfeAjxYS9/aWNlVYH2KVaFBErJA4LL.', '', '::1', 'gfdgfdg', 'hgf', 'hgfh', 'gfhgf', 'hgfhjk', 'jhkhj', '2014-12-15', 'fghgfh', 'female', '5675765765', 'O+ve', 'ghjghj', 'default.png', 1532590500, '7-2018', 0, '', '', '', '', 1, '', '0.00', 0, 23, 0, 0, 0, 0, 0, '0.00', '', '', '', '', '', '', 1, '', 1, 0),
(7, 205304, 'lorine@yopmail.com', '$2a$12$7cRVO8TsKflXg6zfNTVMje.CIfumfbSk6FZG./loeCNlnYkTs9KnS', '107b8ce39cc7665de27e7f53170b7993', '::1', 'lorine', 'Lorine', 'Mathi', NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'default.png', 1532598331, '7-2018', 1532598346, '', '', '', '', 1, '', '0.00', 0, 7, 0, 0, 0, 0, 0, '0.00', '', '', '', '', '', '', 1, '', 1, 0),
(8, 215441, 'cts@spi-global.com', '$2y$10$zd2a5CQlV4THOQAK6y1l6u7dLr2FTTHdoby4YonpjkK8yxXGWhw9.', '', '::1', 'san', 'San', 'Sweety', 'Publisher', 'Burge', 'Books', '0000-00-00', 'Luc', 'female', '6258947896', 'O+ve', 'Administration', 'default.png', 1532665090, '7-2018', 0, '', '', '', '', 1, '', '0.00', 0, 1, 0, 0, 0, 0, 0, '0.00', '', '', '', '', '', '', 1, '', 1, 0),
(9, 435455, 'manager@spi-global.com', '$2y$10$LEFGhlOzMtXWM5PbE/ePDuF6RCIgqSxle6s49DRiTv0RIw9MDq8Uq', '', '::1', 'kannan', 'Kannan', 'Luc', 'Publisher', 'Lotsu', 'Guide', '0000-00-00', 'Boss', 'male', '1236598748', 'A+ve', 'Managing', 'default.png', 1532665090, '7-2018', 0, '', '', '', '', 1, '', '0.00', 0, 23, 0, 2, 0, 0, 0, '0.00', '', '', '', '', '', '', 1, '', 1, 1),
(10, 204341, 'employee@spi-global.com', '$2y$10$BEBrXdxTghYvMfKHFmrV1.os0.2A7ramKsgME6jQLshpj0fiZq7Q.', '', '::1', 'joe', 'Joe', 'Bob', 'Publisher', 'E-pub', 'Books', '0000-00-00', 'Donald', 'male', '3698745269', 'O+ve', 'E-pub', 'default.png', 1532665090, '7-2018', 0, '', '', '', '', 1, '', '0.00', 0, 11, 0, 0, 0, 0, 0, '0.00', '', '', '', '', '', '', 1, '', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_action_log`
--

CREATE TABLE `user_action_log` (
  `ID` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `projectid` int(11) NOT NULL,
  `message` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `IP` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `url` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `taskid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_action_log`
--

INSERT INTO `user_action_log` (`ID`, `userid`, `projectid`, `message`, `IP`, `timestamp`, `url`, `taskid`) VALUES
(1, 1, 1, 'created a new project <b>Project1</b>.', '::1', 1532665669, 'projects', 0),
(2, 1, 1, 'added a new user <b>SangeethaV</b> to a project.', '::1', 1532675595, 'team', 0),
(3, 1, 1, 'created a new task: Xmlfor project Project1', '::1', 1532675679, 'tasks/view_task/1', 1),
(4, 1, 1, 'started a new timer with the note <b>Time taken for task1</b>.', '::1', 1532676169, 'time', 0),
(5, 1, 1, 'stopped a timer with the note <b>Time taken for task1</b>.', '::1', 1532676187, 'time', 0),
(6, 1, 1, 'modified a taskXmlfor project Project1', '::1', 1532676234, 'tasks/view/1', 1),
(7, 1, 1, 'modified a timer with the note <b>Time taken for task1</b>.', '::1', 1532676248, 'time', 0),
(8, 1, 1, 'restarted a timer with the note <b>Time taken for task1</b>.', '::1', 1532676250, 'time', 0),
(9, 1, 1, 'stopped a timer with the note <b>Time taken for task1</b>.', '::1', 1532680471, 'time', 0),
(10, 1, 3, 'created a new project <b>Project3</b>.', '::1', 1532765568, 'projects', 0),
(11, 1, 3, 'updated a project <b>Project3</b>.', '::1', 1532765723, 'projects', 0),
(12, 1, 4, 'created a new project <b>Project4</b>.', '::1', 1532766026, 'projects', 0),
(13, 1, 1, 'updated a project <b>Project1</b>.', '::1', 1532771662, 'projects', 0),
(14, 1, 1, 'updated a project <b>Project1</b>.', '::1', 1532771686, 'projects', 0),
(15, 1, 2, 'created a new task: Conversionfor project Project2', '::1', 1533014613, 'tasks/view_task/2', 2),
(16, 1, 2, 'added a new user <b>lucmathi</b> to a project.', '::1', 1533016006, 'team', 0),
(17, 1, 2, 'started a new timer with the note <b>Time taken for task2</b>.', '::1', 1533016068, 'time', 0),
(18, 1, 2, 'stopped a timer with the note <b>Time taken for task2</b>.', '::1', 1533016079, 'time', 0),
(19, 1, 2, 'modified a taskConversionfor project Project2', '::1', 1533016143, 'tasks/view/2', 2),
(20, 1, 2, 'added a new user <b>lucmathi</b> to a task: <a href=\'http://localhost:81/conversiontracking/tasks/view/2\'>Conversion</a>', '::1', 1533016365, 'tasks/view/2', 2),
(21, 1, 3, 'modified a taskConversionfor project Project3', '::1', 1533020888, 'tasks/view/2', 2),
(22, 1, 3, 'modified a taskConversionfor project Project3', '::1', 1533021227, 'tasks/view/2', 2),
(23, 1, 3, 'modified a taskConversionfor project Project3', '::1', 1533021231, 'tasks/view/2', 2),
(24, 1, 1, 'added a new user <b>kannan</b> to a project.', '::1', 1533021414, 'team', 0),
(25, 1, 1, 'added a new user <b>kannan</b> to a task: <a href=\'http://localhost:81/conversiontracking/tasks/view/1\'>Xml</a>', '::1', 1533021488, 'tasks/view/1', 1),
(26, 1, 1, 'started a new timer with the note <b>Admin Timer</b>.', '::1', 1533027715, 'time', 0),
(27, 1, 1, 'stopped a timer with the note <b>Admin Timer</b>.', '::1', 1533027721, 'time', 0),
(28, 1, 1, 'restarted a timer with the note <b>Admin Timer</b>.', '::1', 1533027723, 'time', 0),
(29, 1, 1, 'stopped a timer with the note <b>Admin Timer</b>.', '::1', 1533027725, 'time', 0),
(30, 1, 1, 'modified a timer with the note <b>Admin Timer</b>.', '::1', 1533027738, 'time', 0),
(31, 1, 1, 'started a new timer with the note <b>hfgh</b>.', '::1', 1533028028, 'time', 0),
(32, 1, 1, 'stopped a timer with the note <b>hfgh</b>.', '::1', 1533028032, 'time', 0),
(33, 1, 1, 'modified a timer with the note <b>hfgh</b>.', '::1', 1533028041, 'time', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_blocks`
--

CREATE TABLE `user_blocks` (
  `ID` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `blockid` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `reason` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_custom_fields`
--

CREATE TABLE `user_custom_fields` (
  `ID` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `fieldid` int(11) NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE `user_data` (
  `ID` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `twitter` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `facebook` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `google` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `linkedin` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `company_name` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`ID`, `userid`, `twitter`, `facebook`, `google`, `linkedin`, `website`, `company_name`, `phone`) VALUES
(1, 1, '', '', '', '', '', '', ''),
(2, 5, '', '', '', '', '', '', ''),
(3, 9, '', '', '', '', '', '', ''),
(4, 2, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_events`
--

CREATE TABLE `user_events` (
  `ID` int(11) NOT NULL,
  `IP` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `event` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE `user_groups` (
  `ID` int(11) NOT NULL,
  `name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `default` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`ID`, `name`, `default`) VALUES
(1, 'Default Group', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_group_users`
--

CREATE TABLE `user_group_users` (
  `ID` int(11) NOT NULL,
  `groupid` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_group_users`
--

INSERT INTO `user_group_users` (`ID`, `groupid`, `userid`) VALUES
(1, 1, 2),
(2, 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `user_leads`
--

CREATE TABLE `user_leads` (
  `ID` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `formid` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `IP` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address_1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address_2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_added` int(11) NOT NULL,
  `statusid` int(11) NOT NULL,
  `sourceid` int(11) NOT NULL,
  `assignedid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_lead_custom_fields`
--

CREATE TABLE `user_lead_custom_fields` (
  `ID` int(11) NOT NULL,
  `leadid` int(11) NOT NULL,
  `fieldid` int(11) NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_lead_fields`
--

CREATE TABLE `user_lead_fields` (
  `ID` int(11) NOT NULL,
  `leadid` int(11) NOT NULL,
  `fieldid` int(11) NOT NULL,
  `answer` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

CREATE TABLE `user_notifications` (
  `ID` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `url` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `message` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `fromid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_notifications`
--

INSERT INTO `user_notifications` (`ID`, `userid`, `url`, `timestamp`, `status`, `message`, `fromid`) VALUES
(1, 2, 'projects', 1532675594, 1, 'has added you to the team of a project: Project1', 1),
(2, 1, 'tasks/view/1', 1532675677, 0, 'has assigned you to a task:Xml', 1),
(3, 2, 'tasks/view/1', 1532675678, 1, 'has assigned you to a task:Xml', 1),
(4, 1, 'tasks/view/1', 1532676232, 0, 'The status of the Task[Xml] has been changed to \n				 <strong>In Progress</strong>', 1),
(5, 2, 'tasks/view/1', 1532676233, 1, 'The status of the Task[Xml] has been changed to \n				 <strong>In Progress</strong>', 1),
(6, 1, 'tasks/view/2', 1533014611, 0, 'has assigned you to a task:Conversion', 1),
(7, 4, 'projects', 1533016005, 0, 'has added you to the team of a project: Project2', 1),
(8, 1, 'tasks/view/2', 1533016141, 0, 'The status of the Task[Conversion] has been changed to \n				 <strong>In Progress</strong>', 1),
(9, 4, 'tasks/view/2', 1533016364, 0, 'has assigned you to a task:Conversion', 1),
(10, 9, 'projects', 1533021413, 0, 'has added you to the team of a project: Project1', 1),
(11, 9, 'tasks/view/1', 1533021487, 0, 'has assigned you to a task:Xml', 1),
(12, 1, 'tasks/view/2', 1533021554, 0, 'The status of the Task[Conversion] has been changed to \n				 <strong>Completed</strong>', 1),
(13, 4, 'tasks/view/2', 1533021555, 0, 'The status of the Task[Conversion] has been changed to \n				 <strong>Completed</strong>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `admin` int(11) NOT NULL,
  `admin_settings` int(11) NOT NULL,
  `admin_members` int(11) NOT NULL,
  `admin_payment` int(11) NOT NULL,
  `project_admin` int(11) NOT NULL,
  `project_worker` int(11) NOT NULL,
  `team_manage` int(11) NOT NULL,
  `time_manage` int(11) NOT NULL,
  `team_worker` int(11) NOT NULL,
  `time_worker` int(11) NOT NULL,
  `file_manage` int(11) NOT NULL,
  `file_worker` int(11) NOT NULL,
  `task_manage` int(11) NOT NULL,
  `task_worker` int(11) NOT NULL,
  `calendar_manage` int(11) NOT NULL,
  `calendar_worker` int(11) NOT NULL,
  `ticket_manage` int(11) NOT NULL,
  `ticket_worker` int(11) NOT NULL,
  `finance_worker` int(11) NOT NULL,
  `finance_manage` int(11) NOT NULL,
  `invoice_manage` int(11) NOT NULL,
  `invoice_client` int(11) NOT NULL,
  `ticket_client` int(11) NOT NULL,
  `notes_manage` int(11) NOT NULL,
  `notes_worker` int(11) NOT NULL,
  `lead_manage` int(11) NOT NULL,
  `banned` int(11) NOT NULL,
  `reports_manage` int(11) NOT NULL,
  `reports_worker` int(11) NOT NULL,
  `project_client` int(11) NOT NULL,
  `task_client` int(11) NOT NULL,
  `services_manage` int(11) NOT NULL,
  `live_chat` int(11) NOT NULL,
  `client` int(11) NOT NULL,
  `doc_manage` int(11) NOT NULL,
  `doc_worker` int(11) NOT NULL,
  `invoice_worker` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`ID`, `name`, `admin`, `admin_settings`, `admin_members`, `admin_payment`, `project_admin`, `project_worker`, `team_manage`, `time_manage`, `team_worker`, `time_worker`, `file_manage`, `file_worker`, `task_manage`, `task_worker`, `calendar_manage`, `calendar_worker`, `ticket_manage`, `ticket_worker`, `finance_worker`, `finance_manage`, `invoice_manage`, `invoice_client`, `ticket_client`, `notes_manage`, `notes_worker`, `lead_manage`, `banned`, `reports_manage`, `reports_worker`, `project_client`, `task_client`, `services_manage`, `live_chat`, `client`, `doc_manage`, `doc_worker`, `invoice_worker`) VALUES
(1, 'Admin', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 'Member Manager', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 'Admin Settings', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 'Admin Payments', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 'Time Manager', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 'Project Admin', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 'Default User', 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0),
(8, 'Calendar Manager', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 'Finance Manager', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 'Invoice Manager', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 'Client', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 1),
(12, 'Notes Manager', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 'Lead Manage', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 'Ticket Manager', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 'Team Manager', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 'File Manager', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17, 'Task Manager', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(19, 'Banned', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(20, 'Reports Manager', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(21, 'Services Manage', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(22, 'Team Worker Role', 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(23, 'Employee', 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_role_permissions`
--

CREATE TABLE `user_role_permissions` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `classname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hook` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_role_permissions`
--

INSERT INTO `user_role_permissions` (`ID`, `name`, `description`, `classname`, `hook`) VALUES
(1, 'ctn_308', 'ctn_308', 'admin', 'admin'),
(2, 'ctn_309', 'ctn_309', 'admin', 'admin_settings'),
(3, 'ctn_310', 'ctn_310', 'admin', 'admin_members'),
(4, 'ctn_311', 'ctn_311', 'admin', 'admin_payment'),
(5, 'ctn_33', 'ctn_33', 'banned', 'banned'),
(6, 'ctn_362', 'ctn_384', 'project', 'project_admin'),
(7, 'ctn_367', 'ctn_385', 'project', 'project_worker'),
(8, 'ctn_364', 'ctn_387', 'project', 'time_manage'),
(9, 'ctn_365', 'ctn_388', 'project', 'team_worker'),
(10, 'ctn_366', 'ctn_389', 'project', 'time_worker'),
(11, 'ctn_369', 'ctn_390', 'project', 'file_worker'),
(12, 'ctn_368', 'ctn_391', 'project', 'file_manage'),
(13, 'ctn_371', 'ctn_392', 'project', 'task_worker'),
(14, 'ctn_370', 'ctn_393', 'project', 'task_manage'),
(15, 'ctn_1189', 'ctn_1190', 'project', 'services_manage'),
(16, 'ctn_372', 'ctn_394', 'project', 'calendar_manage'),
(17, 'ctn_373', 'ctn_395', 'project', 'calendar_worker'),
(18, 'ctn_374', 'ctn_396', 'project', 'ticket_manage'),
(19, 'ctn_375', 'ctn_397', 'project', 'ticket_worker'),
(20, 'ctn_376', 'ctn_398', 'project', 'finance_manage'),
(21, 'ctn_377', 'ctn_399', 'project', 'finance_worker'),
(22, 'ctn_378', 'ctn_400', 'project', 'invoice_manage'),
(23, 'ctn_379', 'ctn_401', 'project', 'invoice_client'),
(24, 'ctn_380', 'ctn_402', 'project', 'ticket_client'),
(25, 'ctn_1185', 'ctn_1186', 'project', 'project_client'),
(26, 'ctn_1187', 'ctn_1188', 'project', 'task_client'),
(27, 'ctn_381', 'ctn_403', 'project', 'notes_manage'),
(28, 'ctn_382', 'ctn_404', 'project', 'notes_worker'),
(29, 'ctn_383', 'ctn_405', 'project', 'lead_manage'),
(30, 'ctn_1142', 'ctn_1143', 'project', 'reports_manage'),
(31, 'ctn_1144', 'ctn_1145', 'project', 'reports_worker'),
(32, 'ctn_363', 'ctn_386', 'project', 'team_manage'),
(33, 'ctn_1265', 'ctn_1266', 'project', 'live_chat'),
(34, 'ctn_635', 'ctn_1413', 'project', 'client'),
(35, 'ctn_1516', 'ctn_1517', 'project', 'doc_manage'),
(36, 'ctn_1518', 'ctn_1519', 'project', 'doc_worker'),
(37, 'ctn_1520', 'ctn_1521', 'project', 'invoice_worker');

-- --------------------------------------------------------

--
-- Table structure for table `user_services`
--

CREATE TABLE `user_services` (
  `ID` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `formid` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `IP` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `invoiceid` int(11) NOT NULL,
  `email` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `total_cost` decimal(10,2) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_service_fields`
--

CREATE TABLE `user_service_fields` (
  `ID` int(11) NOT NULL,
  `serviceid` int(11) NOT NULL,
  `fieldid` int(11) NOT NULL,
  `answer` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `cost` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_timers`
--

CREATE TABLE `user_timers` (
  `ID` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `start_time` int(11) NOT NULL,
  `end_time` int(11) NOT NULL,
  `added` int(11) NOT NULL,
  `projectid` int(11) NOT NULL,
  `note` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `date_stamp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `taskid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_timers`
--

INSERT INTO `user_timers` (`ID`, `userid`, `start_time`, `end_time`, `added`, `projectid`, `note`, `rate`, `date_stamp`, `taskid`) VALUES
(1, 1, 1532676232, 1532680471, 1532676169, 1, 'Time taken for task1', '15.00', '2018-07-27', 1),
(2, 1, 1533016068, 1533016079, 1533016068, 2, 'Time taken for task2', '0.00', '2018-07-31', 0),
(3, 1, 1533027730, 1533027738, 1533027715, 1, 'Admin Timer', '3.00', '2018-07-31', 1),
(4, 1, 1533028037, 1533028041, 1533028028, 1, 'hfgh', '5.00', '2018-07-31', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calendar_events`
--
ALTER TABLE `calendar_events`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `document_files`
--
ALTER TABLE `document_files`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `finance`
--
ALTER TABLE `finance`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `finance_categories`
--
ALTER TABLE `finance_categories`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `home_stats`
--
ALTER TABLE `home_stats`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `home_stats_user`
--
ALTER TABLE `home_stats_user`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `invoice_item_db`
--
ALTER TABLE `invoice_item_db`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `invoice_reoccur`
--
ALTER TABLE `invoice_reoccur`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `invoice_settings`
--
ALTER TABLE `invoice_settings`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `invoice_themes`
--
ALTER TABLE `invoice_themes`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ipn_log`
--
ALTER TABLE `ipn_log`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ip_block`
--
ALTER TABLE `ip_block`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `lead_forms`
--
ALTER TABLE `lead_forms`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `lead_form_fields`
--
ALTER TABLE `lead_form_fields`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `lead_notes`
--
ALTER TABLE `lead_notes`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `lead_sources`
--
ALTER TABLE `lead_sources`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `lead_statuses`
--
ALTER TABLE `lead_statuses`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `live_chat`
--
ALTER TABLE `live_chat`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `live_chat_messages`
--
ALTER TABLE `live_chat_messages`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `live_chat_users`
--
ALTER TABLE `live_chat_users`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `userid` (`userid`),
  ADD KEY `toid` (`toid`);

--
-- Indexes for table `mail_replies`
--
ALTER TABLE `mail_replies`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `userid` (`userid`),
  ADD KEY `mailid` (`mailid`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `note_todos`
--
ALTER TABLE `note_todos`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `password_reset`
--
ALTER TABLE `password_reset`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `paying_accounts`
--
ALTER TABLE `paying_accounts`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `payment_logs`
--
ALTER TABLE `payment_logs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `payment_plans`
--
ALTER TABLE `payment_plans`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `profile_comments`
--
ALTER TABLE `profile_comments`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `project_categories`
--
ALTER TABLE `project_categories`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `project_chat`
--
ALTER TABLE `project_chat`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `project_files`
--
ALTER TABLE `project_files`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `project_file_notes`
--
ALTER TABLE `project_file_notes`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `project_members`
--
ALTER TABLE `project_members`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `project_roles`
--
ALTER TABLE `project_roles`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `project_tasks`
--
ALTER TABLE `project_tasks`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `project_task_files`
--
ALTER TABLE `project_task_files`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `project_task_members`
--
ALTER TABLE `project_task_members`
  ADD PRIMARY KEY (`iD`);

--
-- Indexes for table `project_task_messages`
--
ALTER TABLE `project_task_messages`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `project_task_objectives`
--
ALTER TABLE `project_task_objectives`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `project_task_objective_members`
--
ALTER TABLE `project_task_objective_members`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `reset_log`
--
ALTER TABLE `reset_log`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `service_forms`
--
ALTER TABLE `service_forms`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `service_form_fields`
--
ALTER TABLE `service_form_fields`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `site_layouts`
--
ALTER TABLE `site_layouts`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ticket_category_groups`
--
ALTER TABLE `ticket_category_groups`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ticket_custom_fields`
--
ALTER TABLE `ticket_custom_fields`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ticket_custom_field_data`
--
ALTER TABLE `ticket_custom_field_data`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ticket_departments`
--
ALTER TABLE `ticket_departments`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ticket_files`
--
ALTER TABLE `ticket_files`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_action_log`
--
ALTER TABLE `user_action_log`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_blocks`
--
ALTER TABLE `user_blocks`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_custom_fields`
--
ALTER TABLE `user_custom_fields`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_events`
--
ALTER TABLE `user_events`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_group_users`
--
ALTER TABLE `user_group_users`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_leads`
--
ALTER TABLE `user_leads`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_lead_custom_fields`
--
ALTER TABLE `user_lead_custom_fields`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_lead_fields`
--
ALTER TABLE `user_lead_fields`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_role_permissions`
--
ALTER TABLE `user_role_permissions`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_services`
--
ALTER TABLE `user_services`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_service_fields`
--
ALTER TABLE `user_service_fields`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_timers`
--
ALTER TABLE `user_timers`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calendar_events`
--
ALTER TABLE `calendar_events`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `document_files`
--
ALTER TABLE `document_files`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `finance`
--
ALTER TABLE `finance`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `finance_categories`
--
ALTER TABLE `finance_categories`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_stats`
--
ALTER TABLE `home_stats`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_stats_user`
--
ALTER TABLE `home_stats_user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_item_db`
--
ALTER TABLE `invoice_item_db`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_reoccur`
--
ALTER TABLE `invoice_reoccur`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_settings`
--
ALTER TABLE `invoice_settings`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invoice_themes`
--
ALTER TABLE `invoice_themes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ipn_log`
--
ALTER TABLE `ipn_log`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_block`
--
ALTER TABLE `ip_block`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_forms`
--
ALTER TABLE `lead_forms`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_form_fields`
--
ALTER TABLE `lead_form_fields`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_notes`
--
ALTER TABLE `lead_notes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_sources`
--
ALTER TABLE `lead_sources`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lead_statuses`
--
ALTER TABLE `lead_statuses`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `live_chat`
--
ALTER TABLE `live_chat`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `live_chat_messages`
--
ALTER TABLE `live_chat_messages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `live_chat_users`
--
ALTER TABLE `live_chat_users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mail`
--
ALTER TABLE `mail`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mail_replies`
--
ALTER TABLE `mail_replies`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `note_todos`
--
ALTER TABLE `note_todos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `password_reset`
--
ALTER TABLE `password_reset`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `paying_accounts`
--
ALTER TABLE `paying_accounts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_logs`
--
ALTER TABLE `payment_logs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_plans`
--
ALTER TABLE `payment_plans`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `profile_comments`
--
ALTER TABLE `profile_comments`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `project_categories`
--
ALTER TABLE `project_categories`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `project_chat`
--
ALTER TABLE `project_chat`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_files`
--
ALTER TABLE `project_files`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_file_notes`
--
ALTER TABLE `project_file_notes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_members`
--
ALTER TABLE `project_members`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `project_roles`
--
ALTER TABLE `project_roles`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `project_tasks`
--
ALTER TABLE `project_tasks`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `project_task_files`
--
ALTER TABLE `project_task_files`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_task_members`
--
ALTER TABLE `project_task_members`
  MODIFY `iD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `project_task_messages`
--
ALTER TABLE `project_task_messages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_task_objectives`
--
ALTER TABLE `project_task_objectives`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_task_objective_members`
--
ALTER TABLE `project_task_objective_members`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reset_log`
--
ALTER TABLE `reset_log`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_forms`
--
ALTER TABLE `service_forms`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_form_fields`
--
ALTER TABLE `service_form_fields`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `site_layouts`
--
ALTER TABLE `site_layouts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_category_groups`
--
ALTER TABLE `ticket_category_groups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_custom_fields`
--
ALTER TABLE `ticket_custom_fields`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_custom_field_data`
--
ALTER TABLE `ticket_custom_field_data`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_departments`
--
ALTER TABLE `ticket_departments`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ticket_files`
--
ALTER TABLE `ticket_files`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_action_log`
--
ALTER TABLE `user_action_log`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `user_blocks`
--
ALTER TABLE `user_blocks`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_custom_fields`
--
ALTER TABLE `user_custom_fields`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_data`
--
ALTER TABLE `user_data`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_events`
--
ALTER TABLE `user_events`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_group_users`
--
ALTER TABLE `user_group_users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_leads`
--
ALTER TABLE `user_leads`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_lead_custom_fields`
--
ALTER TABLE `user_lead_custom_fields`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_lead_fields`
--
ALTER TABLE `user_lead_fields`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_notifications`
--
ALTER TABLE `user_notifications`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user_role_permissions`
--
ALTER TABLE `user_role_permissions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `user_services`
--
ALTER TABLE `user_services`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_service_fields`
--
ALTER TABLE `user_service_fields`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_timers`
--
ALTER TABLE `user_timers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
