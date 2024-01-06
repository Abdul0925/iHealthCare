-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2024 at 05:23 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `g4g`
--
CREATE DATABASE IF NOT EXISTS `g4g` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `g4g`;

-- --------------------------------------------------------

--
-- Table structure for table `apt`
--

CREATE TABLE `apt` (
  `id` int(3) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` int(10) NOT NULL,
  `date` date NOT NULL,
  `department` varchar(200) NOT NULL,
  `doctor` varchar(200) NOT NULL,
  `message` varchar(250) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='For Appointment ';

--
-- Dumping data for table `apt`
--

INSERT INTO `apt` (`id`, `name`, `email`, `phone`, `date`, `department`, `doctor`, `message`, `time`) VALUES
(4, 'Abdul Rahime', 'adbul@gmail.com', 2147483647, '2024-01-10', 'Neurology', 'Dr. Pranay Bhorje', 'TEST', '2024-01-04 08:57:39'),
(5, 'Sakshi Yenkeshwar', 'yenkeshwar@gmail.com', 766599512, '2024-01-06', 'Dermatology', 'DR ABDUL RAHIME', 'Test', '2024-01-04 08:59:22'),
(6, 'NightWing', 'batman@gmail.com', 2147483647, '2024-01-09', 'Physcology', 'Dr. Pranay Bhorje', 'Mission', '2024-01-04 09:00:02'),
(7, 'Yash', 'skidde@gmail.com', 2147483647, '2024-01-11', 'Neurology', 'DR ABDUL RAHIME', 'xbdhbcdh', '2024-01-05 04:18:21');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(3) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `sub` varchar(200) NOT NULL,
  `msg` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='For Emails';

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

CREATE TABLE `subscribe` (
  `id` int(3) NOT NULL,
  `email` varchar(200) NOT NULL,
  `Time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='For Subscription Purpose';

--
-- Dumping data for table `subscribe`
--

INSERT INTO `subscribe` (`id`, `email`, `Time`) VALUES
(1, 'skidde7@gmail.com', '2024-01-04 09:31:58'),
(2, 'pranaybhorje@gmail.com', '2024-01-04 09:33:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(2) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'Admin', 'Password');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apt`
--
ALTER TABLE `apt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribe`
--
ALTER TABLE `subscribe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apt`
--
ALTER TABLE `apt`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscribe`
--
ALTER TABLE `subscribe`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'g4g', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"g4g\",\"phpmyadmin\",\"sih\",\"test\",\"wordpress\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

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
('root', '[{\"db\":\"g4g\",\"table\":\"users\"},{\"db\":\"g4g\",\"table\":\"subscribe\"},{\"db\":\"g4g\",\"table\":\"apt\"},{\"db\":\"g4g\",\"table\":\"contact\"},{\"db\":\"mydatabase\",\"table\":\"users\"},{\"db\":\"sih\",\"table\":\"sih_tbl\"},{\"db\":\"sih\",\"table\":\"sih_table\"},{\"db\":\"test\",\"table\":\"tech\"}]');

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
('root', '2024-01-05 04:22:38', '{\"Console\\/Mode\":\"collapse\"}');

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
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- Database: `sih`
--
CREATE DATABASE IF NOT EXISTS `sih` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sih`;

-- --------------------------------------------------------

--
-- Table structure for table `sih_table`
--

CREATE TABLE `sih_table` (
  `stamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sih_tbl`
--

CREATE TABLE `sih_tbl` (
  `id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `log_level` varchar(256) NOT NULL,
  `msg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Table structure for table `tech`
--

CREATE TABLE `tech` (
  `id` int(3) NOT NULL,
  `name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `contact` int(10) NOT NULL,
  `salary` int(255) NOT NULL,
  `joining` int(9) NOT NULL,
  `subject` varchar(256) NOT NULL,
  `shift` varchar(256) NOT NULL,
  `age` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- Database: `wordpress`
--
CREATE DATABASE IF NOT EXISTS `wordpress` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `wordpress`;

-- --------------------------------------------------------

--
-- Table structure for table `wp_aiowps_debug_log`
--

CREATE TABLE `wp_aiowps_debug_log` (
  `id` bigint(20) NOT NULL,
  `level` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '1000-10-10 10:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_aiowps_events`
--

CREATE TABLE `wp_aiowps_events` (
  `id` bigint(20) NOT NULL,
  `event_type` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `event_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `ip_or_host` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_aiowps_failed_logins`
--

CREATE TABLE `wp_aiowps_failed_logins` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_login_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `login_attempt_ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_aiowps_global_meta`
--

CREATE TABLE `wp_aiowps_global_meta` (
  `meta_id` bigint(20) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `meta_key1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_key2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_key3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_key4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_key5` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value3` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value4` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value5` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_aiowps_login_activity`
--

CREATE TABLE `wp_aiowps_login_activity` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `logout_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `login_ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `login_country` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `browser_type` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_aiowps_login_lockdown`
--

CREATE TABLE `wp_aiowps_login_lockdown` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lockdown_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `release_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `failed_login_ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lock_reason` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `unlock_key` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_aiowps_permanent_block`
--

CREATE TABLE `wp_aiowps_permanent_block` (
  `id` bigint(20) NOT NULL,
  `blocked_ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block_reason` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country_origin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `blocked_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `unblock` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'Cyber_LAb', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'yashdoifode@hotmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:118:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"portfolio-type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?portfolio-type=$matches[1]&feed=$matches[2]\";s:50:\"portfolio-type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?portfolio-type=$matches[1]&feed=$matches[2]\";s:31:\"portfolio-type/([^/]+)/embed/?$\";s:47:\"index.php?portfolio-type=$matches[1]&embed=true\";s:43:\"portfolio-type/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?portfolio-type=$matches[1]&paged=$matches[2]\";s:25:\"portfolio-type/([^/]+)/?$\";s:36:\"index.php?portfolio-type=$matches[1]\";s:37:\"portfolio/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"portfolio/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"portfolio/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"portfolio/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"portfolio/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"portfolio/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"portfolio/([^/]+)/embed/?$\";s:42:\"index.php?portfolio=$matches[1]&embed=true\";s:30:\"portfolio/([^/]+)/trackback/?$\";s:36:\"index.php?portfolio=$matches[1]&tb=1\";s:50:\"portfolio/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?portfolio=$matches[1]&feed=$matches[2]\";s:45:\"portfolio/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?portfolio=$matches[1]&feed=$matches[2]\";s:38:\"portfolio/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?portfolio=$matches[1]&paged=$matches[2]\";s:34:\"portfolio/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?portfolio=$matches[1]&page=$matches[2]\";s:26:\"portfolio/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"portfolio/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"portfolio/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"portfolio/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"portfolio/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"portfolio/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=11&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:36:\"contact-form-7/wp-contact-form-7.php\";i:1;s:33:\"kadence-blocks/kadence-blocks.php\";i:2;s:27:\"updraftplus/updraftplus.php\";i:3;s:33:\"virtue-toolkit/virtue_toolkit.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'virtue', 'yes'),
(41, 'stylesheet', 'virtue', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '51917', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '14', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1665679415', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'widget_block', 'a:25:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;i:8;a:1:{s:7:\"content\";s:173:\"<!-- wp:paragraph -->\n<p><strong><mark style=\"background-color:rgba(0, 0, 0, 0);color:#259cee\" class=\"has-inline-color\">FOLLOW US </mark></strong></p>\n<!-- /wp:paragraph -->\";}i:9;a:1:{s:7:\"content\";s:103:\"<!-- wp:paragraph -->\n<p>hey there just posting random shit over footer area</p>\n<!-- /wp:paragraph -->\";}i:11;a:1:{s:7:\"content\";s:174:\"<!-- wp:paragraph -->\n<p><strong><mark style=\"background-color:rgba(0, 0, 0, 0);color:#1c95e8\" class=\"has-inline-color\">RECENT POST</mark></strong></p>\n<!-- /wp:paragraph -->\";}i:12;a:1:{s:7:\"content\";s:169:\"<!-- wp:paragraph -->\n<p><mark style=\"background-color:rgba(0, 0, 0, 0);color:#08a3b4\" class=\"has-inline-color\"><strong>REVIWE</strong></mark></p>\n<!-- /wp:paragraph -->\";}i:15;a:1:{s:7:\"content\";s:52:\"<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\";}i:16;a:1:{s:7:\"content\";s:105:\"<!-- wp:paragraph {\"align\":\"left\"} -->\n<p class=\"has-text-align-left\">facebook</p>\n<!-- /wp:paragraph -->\";}i:18;a:1:{s:7:\"content\";s:61:\"<!-- wp:paragraph -->\n<p>INSTAGRAN</p>\n<!-- /wp:paragraph -->\";}i:19;a:1:{s:7:\"content\";s:52:\"<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\";}i:22;a:1:{s:7:\"content\";s:94:\"<!-- wp:paragraph -->\n<p><a href=\"http://EXAMPLE.COM\">INSTAGRAM</a></p>\n<!-- /wp:paragraph -->\";}i:24;a:1:{s:7:\"content\";s:93:\"<!-- wp:paragraph -->\n<p><a href=\"http://EXAMPLE.COM\">FACEBOOK</a></p>\n<!-- /wp:paragraph -->\";}i:25;a:1:{s:7:\"content\";s:92:\"<!-- wp:paragraph -->\n<p><a href=\"http://EXAMPLE.COM\">TWITTER</a></p>\n<!-- /wp:paragraph -->\";}i:27;a:1:{s:7:\"content\";s:114:\"<!-- wp:paragraph -->\n<p><a href=\"http://EXAMPLE.COM\">BEST SOCIAL ENGINNERING TOOLS</a></p>\n<!-- /wp:paragraph -->\";}i:28;a:1:{s:7:\"content\";s:66:\"<!-- wp:paragraph -->\n<p>BEST DEFENCIVE</p>\n<!-- /wp:paragraph -->\";}i:29;a:1:{s:7:\"content\";s:105:\"<!-- wp:paragraph -->\n<p><a href=\"http://EXAMPLE.COM\">BEST DEFENCIVE TOOLS</a></p>\n<!-- /wp:paragraph -->\";}i:31;a:1:{s:7:\"content\";s:105:\"<!-- wp:paragraph -->\n<p><a href=\"http://EXAMPLE.COM\">BEST OFFENCIVE TOOLS</a></p>\n<!-- /wp:paragraph -->\";}i:32;a:1:{s:7:\"content\";s:52:\"<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\";}i:34;a:1:{s:7:\"content\";s:94:\"<!-- wp:paragraph -->\n<p><a href=\"http://helpmeout\">HP GALVINDA</a></p>\n<!-- /wp:paragraph -->\";}i:36;a:1:{s:7:\"content\";s:91:\"<!-- wp:paragraph -->\n<p><a href=\"http://helpmeout\">ASUS ROG</a></p>\n<!-- /wp:paragraph -->\";}i:37;a:1:{s:7:\"content\";s:88:\"<!-- wp:paragraph -->\n<p><a href=\"http://helpmeout\">MAC X</a></p>\n<!-- /wp:paragraph -->\";}}', 'yes'),
(103, 'sidebars_widgets', 'a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:15:\"sidebar-primary\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:15:\"footer_double_1\";a:0:{}s:15:\"footer_double_2\";a:0:{}s:13:\"array_version\";i:3;s:14:\"footer_third_1\";a:5:{i:0;s:7:\"block-8\";i:1;s:8:\"block-22\";i:2;s:8:\"block-24\";i:3;s:8:\"block-25\";i:4;s:8:\"block-19\";}s:14:\"footer_third_2\";a:5:{i:0;s:8:\"block-11\";i:1;s:8:\"block-27\";i:2;s:8:\"block-29\";i:3;s:8:\"block-31\";i:4;s:8:\"block-32\";}s:14:\"footer_third_3\";a:4:{i:0;s:8:\"block-12\";i:1;s:8:\"block-34\";i:2;s:8:\"block-36\";i:3;s:8:\"block-37\";}}', 'yes'),
(104, 'cron', 'a:7:{i:1704005023;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1704041022;a:2:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1704041023;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1704041045;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1704041046;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1704697414;a:1:{s:27:\"delete_block_library_folder\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2592000;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:0:{}', 'yes'),
(119, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1650182543;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(120, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(133, 'finished_updating_comment_type', '1', 'yes'),
(138, 'db_upgraded', '', 'yes'),
(139, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.9.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.9.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.9.3\";s:7:\"version\";s:5:\"5.9.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1704001990;s:15:\"version_checked\";s:5:\"5.9.3\";s:12:\"translations\";a:0:{}}', 'no'),
(142, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:23:\"yashdoifode@hotmail.com\";s:7:\"version\";s:5:\"5.9.3\";s:9:\"timestamp\";i:1650181371;}', 'no'),
(147, 'can_compress_scripts', '1', 'no'),
(161, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(162, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(171, 'widget_widget_kadence_contact', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(172, 'widget_widget_kadence_social', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(173, 'widget_kadence_recent_posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(174, 'widget_kadence_image_grid', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(175, 'widget_virtue_about_with_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(176, 'theme_mods_virtue', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:2:{s:20:\"secondary_navigation\";i:3;s:18:\"primary_navigation\";i:4;}s:6:\"virtue\";a:27:{s:13:\"footer_layout\";s:6:\"threec\";s:11:\"logo_layout\";s:8:\"logohalf\";s:23:\"paragraph_margin_bottom\";s:1:\"0\";s:13:\"topbar_widget\";s:1:\"0\";s:14:\"show_cartcount\";s:1:\"0\";s:21:\"x1_virtue_logo_upload\";a:9:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";s:5:\"title\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:16:\"logo_padding_top\";s:2:\"34\";s:19:\"logo_padding_bottom\";s:2:\"16\";s:17:\"logo_padding_left\";s:2:\"12\";s:18:\"logo_padding_right\";s:1:\"4\";s:15:\"menu_margin_top\";s:2:\"18\";s:18:\"menu_margin_bottom\";s:2:\"35\";s:15:\"logo_below_text\";s:17:\"An security lab\r\n\";s:12:\"boxed_layout\";s:4:\"wide\";s:19:\"home_sidebar_layout\";s:7:\"sidebar\";s:16:\"content_bg_color\";s:7:\"#ffffff\";s:15:\"topbar_bg_color\";s:7:\"#5ed608\";s:15:\"header_bg_color\";s:7:\"#efefef\";s:13:\"menu_bg_color\";s:7:\"#dd3333\";s:15:\"mobile_bg_color\";s:7:\"#ffffff\";s:15:\"footer_bg_color\";s:7:\"#ffffff\";s:13:\"primary_color\";s:7:\"#ffa500\";s:15:\"primary20_color\";s:7:\"#ffa500\";s:15:\"gray_font_color\";s:7:\"#ffa500\";s:16:\"footerfont_color\";s:7:\"#000000\";s:13:\"topbar_search\";s:1:\"1\";s:16:\"kadence_lightbox\";s:1:\"0\";}}', 'yes'),
(182, 'recently_activated', 'a:0:{}', 'yes'),
(187, 'aiowpsec_db_version', '1.9', 'yes'),
(188, 'aio_wp_security_configs', 'a:93:{s:19:\"aiowps_enable_debug\";s:0:\"\";s:36:\"aiowps_remove_wp_generator_meta_info\";s:0:\"\";s:25:\"aiowps_prevent_hotlinking\";s:0:\"\";s:28:\"aiowps_enable_login_lockdown\";s:0:\"\";s:28:\"aiowps_allow_unlock_requests\";s:1:\"1\";s:25:\"aiowps_max_login_attempts\";s:1:\"3\";s:24:\"aiowps_retry_time_period\";s:1:\"5\";s:26:\"aiowps_lockout_time_length\";s:2:\"60\";s:28:\"aiowps_set_generic_login_msg\";s:0:\"\";s:26:\"aiowps_enable_email_notify\";s:0:\"\";s:20:\"aiowps_email_address\";s:23:\"yashdoifode@hotmail.com\";s:27:\"aiowps_enable_forced_logout\";s:0:\"\";s:25:\"aiowps_logout_time_period\";s:2:\"60\";s:39:\"aiowps_enable_invalid_username_lockdown\";s:0:\"\";s:43:\"aiowps_instantly_lockout_specific_usernames\";a:0:{}s:32:\"aiowps_unlock_request_secret_key\";s:20:\"yoff71fokh3k9foz15pv\";s:35:\"aiowps_lockdown_enable_whitelisting\";s:0:\"\";s:36:\"aiowps_lockdown_allowed_ip_addresses\";s:0:\"\";s:26:\"aiowps_enable_whitelisting\";s:0:\"\";s:27:\"aiowps_allowed_ip_addresses\";s:0:\"\";s:27:\"aiowps_enable_login_captcha\";s:0:\"\";s:34:\"aiowps_enable_custom_login_captcha\";s:0:\"\";s:31:\"aiowps_enable_woo_login_captcha\";s:0:\"\";s:34:\"aiowps_enable_woo_register_captcha\";s:0:\"\";s:38:\"aiowps_enable_woo_lostpassword_captcha\";s:0:\"\";s:25:\"aiowps_captcha_secret_key\";s:20:\"ujdyvyrkk7k9i8a482rv\";s:42:\"aiowps_enable_manual_registration_approval\";s:0:\"\";s:39:\"aiowps_enable_registration_page_captcha\";s:0:\"\";s:35:\"aiowps_enable_registration_honeypot\";s:0:\"\";s:27:\"aiowps_enable_random_prefix\";s:0:\"\";s:31:\"aiowps_enable_automated_backups\";s:0:\"\";s:26:\"aiowps_db_backup_frequency\";s:1:\"4\";s:25:\"aiowps_db_backup_interval\";s:1:\"2\";s:26:\"aiowps_backup_files_stored\";s:1:\"2\";s:32:\"aiowps_send_backup_email_address\";s:0:\"\";s:27:\"aiowps_backup_email_address\";s:23:\"yashdoifode@hotmail.com\";s:27:\"aiowps_disable_file_editing\";s:0:\"\";s:37:\"aiowps_prevent_default_wp_file_access\";s:0:\"\";s:22:\"aiowps_system_log_file\";s:9:\"error_log\";s:26:\"aiowps_enable_blacklisting\";s:0:\"\";s:26:\"aiowps_banned_ip_addresses\";s:0:\"\";s:28:\"aiowps_enable_basic_firewall\";s:0:\"\";s:27:\"aiowps_max_file_upload_size\";i:2;s:31:\"aiowps_enable_pingback_firewall\";s:0:\"\";s:38:\"aiowps_disable_xmlrpc_pingback_methods\";s:0:\"\";s:34:\"aiowps_block_debug_log_file_access\";s:0:\"\";s:26:\"aiowps_disable_index_views\";s:0:\"\";s:30:\"aiowps_disable_trace_and_track\";s:0:\"\";s:28:\"aiowps_forbid_proxy_comments\";s:0:\"\";s:29:\"aiowps_deny_bad_query_strings\";s:0:\"\";s:34:\"aiowps_advanced_char_string_filter\";s:0:\"\";s:25:\"aiowps_enable_5g_firewall\";s:0:\"\";s:25:\"aiowps_enable_6g_firewall\";s:0:\"\";s:26:\"aiowps_enable_custom_rules\";s:0:\"\";s:32:\"aiowps_place_custom_rules_at_top\";s:0:\"\";s:19:\"aiowps_custom_rules\";s:0:\"\";s:25:\"aiowps_enable_404_logging\";s:0:\"\";s:28:\"aiowps_enable_404_IP_lockout\";s:0:\"\";s:30:\"aiowps_404_lockout_time_length\";i:60;s:28:\"aiowps_404_lock_redirect_url\";s:16:\"http://127.0.0.1\";s:31:\"aiowps_enable_rename_login_page\";s:1:\"1\";s:28:\"aiowps_enable_login_honeypot\";s:1:\"1\";s:43:\"aiowps_enable_brute_force_attack_prevention\";s:0:\"\";s:30:\"aiowps_brute_force_secret_word\";s:0:\"\";s:24:\"aiowps_cookie_brute_test\";s:0:\"\";s:44:\"aiowps_cookie_based_brute_force_redirect_url\";s:16:\"http://127.0.0.1\";s:59:\"aiowps_brute_force_attack_prevention_pw_protected_exception\";s:0:\"\";s:51:\"aiowps_brute_force_attack_prevention_ajax_exception\";s:0:\"\";s:19:\"aiowps_site_lockout\";s:0:\"\";s:23:\"aiowps_site_lockout_msg\";s:0:\"\";s:30:\"aiowps_enable_spambot_blocking\";s:0:\"\";s:29:\"aiowps_enable_comment_captcha\";s:1:\"1\";s:31:\"aiowps_enable_autoblock_spam_ip\";s:1:\"1\";s:33:\"aiowps_spam_ip_min_comments_block\";i:5;s:33:\"aiowps_enable_bp_register_captcha\";s:0:\"\";s:35:\"aiowps_enable_bbp_new_topic_captcha\";s:0:\"\";s:32:\"aiowps_enable_automated_fcd_scan\";s:0:\"\";s:25:\"aiowps_fcd_scan_frequency\";i:4;s:24:\"aiowps_fcd_scan_interval\";s:1:\"2\";s:28:\"aiowps_fcd_exclude_filetypes\";s:0:\"\";s:24:\"aiowps_fcd_exclude_files\";s:0:\"\";s:26:\"aiowps_send_fcd_scan_email\";s:0:\"\";s:29:\"aiowps_fcd_scan_email_address\";s:23:\"yashdoifode@hotmail.com\";s:27:\"aiowps_fcds_change_detected\";b:0;s:22:\"aiowps_copy_protection\";s:1:\"1\";s:40:\"aiowps_prevent_site_display_inside_frame\";s:1:\"1\";s:32:\"aiowps_prevent_users_enumeration\";s:1:\"1\";s:42:\"aiowps_disallow_unauthorized_rest_requests\";s:0:\"\";s:25:\"aiowps_recaptcha_site_key\";s:0:\"\";s:27:\"aiowps_recaptcha_secret_key\";s:0:\"\";s:24:\"aiowps_default_recaptcha\";s:0:\"\";s:12:\"installed-at\";i:1650181922;s:22:\"aiowps_login_page_slug\";s:5:\"login\";}', 'yes'),
(196, 'current_theme', 'Virtue', 'yes'),
(197, 'theme_switched', '', 'yes'),
(202, 'virtue', 'a:149:{s:8:\"last_tab\";s:0:\"\";s:12:\"boxed_layout\";s:4:\"wide\";s:13:\"footer_layout\";s:6:\"threec\";s:11:\"logo_layout\";s:8:\"logohalf\";s:21:\"x1_virtue_logo_upload\";a:9:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";s:5:\"title\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:21:\"x2_virtue_logo_upload\";a:9:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";s:5:\"title\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:15:\"font_logo_style\";a:9:{s:11:\"font-family\";s:4:\"Lato\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:3:\"400\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:9:\"font-size\";s:4:\"32px\";s:11:\"line-height\";s:4:\"40px\";s:5:\"color\";s:0:\"\";}s:15:\"logo_below_text\";s:15:\"An security lab\";s:18:\"font_tagline_style\";a:9:{s:11:\"font-family\";s:4:\"Lato\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:3:\"400\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:9:\"font-size\";s:4:\"14px\";s:11:\"line-height\";s:4:\"20px\";s:5:\"color\";s:7:\"#444444\";}s:16:\"logo_padding_top\";s:2:\"34\";s:19:\"logo_padding_bottom\";s:2:\"16\";s:17:\"logo_padding_left\";s:2:\"12\";s:18:\"logo_padding_right\";s:1:\"4\";s:15:\"menu_margin_top\";s:2:\"18\";s:18:\"menu_margin_bottom\";s:2:\"35\";s:20:\"virtue_banner_upload\";a:9:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";s:5:\"title\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:6:\"topbar\";s:1:\"1\";s:12:\"topbar_icons\";s:1:\"0\";s:16:\"topbar_icon_menu\";a:1:{i:0;a:12:{s:6:\"icon_o\";s:0:\"\";s:3:\"url\";s:0:\"\";s:5:\"title\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"link\";s:0:\"\";s:4:\"sort\";s:1:\"0\";s:13:\"attachment_id\";s:0:\"\";s:5:\"thumb\";s:0:\"\";s:5:\"image\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:6:\"target\";s:1:\"0\";}}s:14:\"show_cartcount\";s:1:\"0\";s:13:\"topbar_search\";s:1:\"1\";s:13:\"topbar_widget\";s:1:\"0\";s:13:\"topbar_layout\";s:1:\"0\";s:13:\"choose_slider\";s:4:\"none\";s:11:\"home_slider\";a:2:{i:0;a:11:{s:3:\"url\";s:59:\"http://localhost/wordpress/wp-content/uploads/2022/04/1.jpg\";s:5:\"title\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"link\";s:0:\"\";s:4:\"sort\";s:1:\"1\";s:13:\"attachment_id\";s:2:\"66\";s:5:\"thumb\";s:59:\"http://localhost/wordpress/wp-content/uploads/2022/04/1.jpg\";s:5:\"image\";s:59:\"http://localhost/wordpress/wp-content/uploads/2022/04/1.jpg\";s:6:\"height\";s:3:\"173\";s:5:\"width\";s:3:\"291\";s:6:\"target\";s:1:\"0\";}i:1;a:11:{s:3:\"url\";s:59:\"http://localhost/wordpress/wp-content/uploads/2022/04/3.jpg\";s:5:\"title\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"link\";s:0:\"\";s:4:\"sort\";s:1:\"2\";s:13:\"attachment_id\";s:2:\"64\";s:5:\"thumb\";s:59:\"http://localhost/wordpress/wp-content/uploads/2022/04/3.jpg\";s:5:\"image\";s:59:\"http://localhost/wordpress/wp-content/uploads/2022/04/3.jpg\";s:6:\"height\";s:3:\"191\";s:5:\"width\";s:3:\"263\";s:6:\"target\";s:1:\"0\";}}s:11:\"slider_size\";s:3:\"400\";s:17:\"slider_size_width\";s:4:\"1170\";s:15:\"slider_autoplay\";s:1:\"1\";s:16:\"slider_pausetime\";s:4:\"7000\";s:10:\"trans_type\";s:4:\"fade\";s:16:\"slider_transtime\";s:3:\"600\";s:15:\"slider_captions\";s:1:\"0\";s:11:\"video_embed\";s:0:\"\";s:13:\"mobile_switch\";s:1:\"0\";s:20:\"choose_mobile_slider\";s:4:\"none\";s:18:\"home_mobile_slider\";a:2:{i:0;a:11:{s:3:\"url\";s:0:\"\";s:5:\"title\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"link\";s:0:\"\";s:4:\"sort\";s:1:\"3\";s:13:\"attachment_id\";s:0:\"\";s:5:\"thumb\";s:0:\"\";s:5:\"image\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:6:\"target\";s:1:\"0\";}i:1;a:11:{s:3:\"url\";s:0:\"\";s:5:\"title\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"link\";s:0:\"\";s:4:\"sort\";s:1:\"4\";s:13:\"attachment_id\";s:0:\"\";s:5:\"thumb\";s:0:\"\";s:5:\"image\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:6:\"target\";s:1:\"0\";}}s:18:\"mobile_slider_size\";s:3:\"300\";s:24:\"mobile_slider_size_width\";s:3:\"480\";s:22:\"mobile_slider_autoplay\";s:1:\"1\";s:23:\"mobile_slider_pausetime\";s:4:\"7000\";s:17:\"mobile_trans_type\";s:4:\"fade\";s:23:\"mobile_slider_transtime\";s:3:\"600\";s:22:\"mobile_slider_captions\";s:1:\"0\";s:18:\"mobile_video_embed\";s:0:\"\";s:19:\"home_sidebar_layout\";s:7:\"sidebar\";s:12:\"home_sidebar\";s:15:\"sidebar-primary\";s:15:\"homepage_layout\";a:2:{s:8:\"disabled\";a:4:{s:7:\"placebo\";s:7:\"placebo\";s:10:\"block_five\";s:17:\"Latest Blog Posts\";s:9:\"block_six\";s:18:\"Portfolio Carousel\";s:11:\"block_seven\";s:9:\"Icon Menu\";}s:7:\"enabled\";a:3:{s:7:\"placebo\";s:7:\"placebo\";s:9:\"block_one\";s:10:\"Page Title\";s:10:\"block_four\";s:12:\"Page Content\";}}s:10:\"blog_title\";s:0:\"\";s:15:\"home_post_count\";s:1:\"4\";s:14:\"home_post_type\";s:0:\"\";s:15:\"portfolio_title\";s:0:\"\";s:29:\"home_portfolio_carousel_count\";s:1:\"6\";s:20:\"home_portfolio_order\";s:10:\"menu_order\";s:19:\"portfolio_show_type\";s:1:\"0\";s:9:\"icon_menu\";a:1:{i:0;a:12:{s:6:\"icon_o\";s:0:\"\";s:3:\"url\";s:0:\"\";s:5:\"title\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"link\";s:0:\"\";s:4:\"sort\";s:1:\"5\";s:13:\"attachment_id\";s:0:\"\";s:5:\"thumb\";s:0:\"\";s:5:\"image\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:6:\"target\";s:1:\"0\";}}s:21:\"home_icon_menu_column\";s:1:\"3\";s:17:\"home_post_summery\";s:7:\"summery\";s:11:\"shop_layout\";s:4:\"full\";s:12:\"shop_sidebar\";s:15:\"sidebar-primary\";s:17:\"products_per_page\";s:2:\"12\";s:11:\"shop_rating\";s:1:\"1\";s:22:\"product_quantity_input\";s:1:\"1\";s:21:\"product_cat_img_ratio\";s:13:\"widelandscape\";s:15:\"font_shop_title\";a:9:{s:11:\"font-family\";s:4:\"Lato\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:3:\"700\";s:7:\"subsets\";s:0:\"\";s:9:\"font-size\";s:4:\"16px\";s:11:\"line-height\";s:4:\"20px\";s:5:\"color\";s:0:\"\";}s:20:\"shop_title_uppercase\";s:1:\"0\";s:21:\"shop_title_min_height\";s:2:\"40\";s:18:\"product_img_resize\";s:1:\"1\";s:19:\"product_simg_resize\";s:1:\"1\";s:22:\"product_gallery_slider\";s:1:\"0\";s:20:\"product_gallery_zoom\";s:1:\"0\";s:12:\"product_tabs\";s:1:\"1\";s:16:\"related_products\";s:1:\"1\";s:15:\"skin_stylesheet\";s:11:\"default.css\";s:13:\"primary_color\";s:7:\"#ffa500\";s:15:\"primary20_color\";s:7:\"#ffa500\";s:15:\"gray_font_color\";s:7:\"#ffa500\";s:16:\"footerfont_color\";s:7:\"#000000\";s:16:\"content_bg_color\";s:7:\"#ffffff\";s:17:\"bg_content_bg_img\";a:9:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";s:5:\"title\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:17:\"content_bg_repeat\";s:0:\"\";s:21:\"content_bg_placementx\";s:0:\"\";s:21:\"content_bg_placementy\";s:0:\"\";s:15:\"topbar_bg_color\";s:7:\"#5ed608\";s:16:\"bg_topbar_bg_img\";a:9:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";s:5:\"title\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:16:\"topbar_bg_repeat\";s:0:\"\";s:20:\"topbar_bg_placementx\";s:0:\"\";s:20:\"topbar_bg_placementy\";s:0:\"\";s:15:\"header_bg_color\";s:7:\"#efefef\";s:16:\"bg_header_bg_img\";a:9:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";s:5:\"title\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:16:\"header_bg_repeat\";s:0:\"\";s:20:\"header_bg_placementx\";s:0:\"\";s:20:\"header_bg_placementy\";s:0:\"\";s:13:\"menu_bg_color\";s:7:\"#000000\";s:14:\"bg_menu_bg_img\";a:9:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";s:5:\"title\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:14:\"menu_bg_repeat\";s:0:\"\";s:18:\"menu_bg_placementx\";s:0:\"\";s:18:\"menu_bg_placementy\";s:0:\"\";s:15:\"mobile_bg_color\";s:7:\"#ffffff\";s:16:\"bg_mobile_bg_img\";a:9:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";s:5:\"title\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:16:\"mobile_bg_repeat\";s:0:\"\";s:20:\"mobile_bg_placementx\";s:0:\"\";s:20:\"mobile_bg_placementy\";s:0:\"\";s:15:\"footer_bg_color\";s:7:\"#ffffff\";s:16:\"bg_footer_bg_img\";a:9:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";s:5:\"title\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:16:\"footer_bg_repeat\";s:0:\"\";s:20:\"footer_bg_placementx\";s:0:\"\";s:20:\"footer_bg_placementy\";s:0:\"\";s:14:\"boxed_bg_color\";s:0:\"\";s:15:\"bg_boxed_bg_img\";a:9:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";s:5:\"title\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:15:\"boxed_bg_repeat\";s:0:\"\";s:19:\"boxed_bg_placementx\";s:0:\"\";s:19:\"boxed_bg_placementy\";s:0:\"\";s:14:\"boxed_bg_fixed\";s:0:\"\";s:7:\"font_h1\";a:9:{s:11:\"font-family\";s:4:\"Lato\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:3:\"400\";s:7:\"subsets\";s:0:\"\";s:9:\"font-size\";s:4:\"38px\";s:11:\"line-height\";s:4:\"40px\";s:5:\"color\";s:0:\"\";}s:7:\"font_h2\";a:9:{s:11:\"font-family\";s:4:\"Lato\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:6:\"normal\";s:7:\"subsets\";s:0:\"\";s:9:\"font-size\";s:4:\"32px\";s:11:\"line-height\";s:4:\"40px\";s:5:\"color\";s:0:\"\";}s:7:\"font_h3\";a:9:{s:11:\"font-family\";s:4:\"Lato\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:3:\"400\";s:7:\"subsets\";s:0:\"\";s:9:\"font-size\";s:4:\"28px\";s:11:\"line-height\";s:4:\"40px\";s:5:\"color\";s:0:\"\";}s:7:\"font_h4\";a:9:{s:11:\"font-family\";s:4:\"Lato\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:3:\"400\";s:7:\"subsets\";s:0:\"\";s:9:\"font-size\";s:4:\"24px\";s:11:\"line-height\";s:4:\"40px\";s:5:\"color\";s:0:\"\";}s:7:\"font_h5\";a:9:{s:11:\"font-family\";s:4:\"Lato\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:3:\"700\";s:7:\"subsets\";s:0:\"\";s:9:\"font-size\";s:4:\"18px\";s:11:\"line-height\";s:4:\"24px\";s:5:\"color\";s:0:\"\";}s:6:\"font_p\";a:9:{s:11:\"font-family\";s:27:\"Verdana, Geneva, sans-serif\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:3:\"400\";s:7:\"subsets\";s:0:\"\";s:9:\"font-size\";s:4:\"14px\";s:11:\"line-height\";s:4:\"20px\";s:5:\"color\";s:0:\"\";}s:17:\"font_primary_menu\";a:9:{s:11:\"font-family\";s:4:\"Lato\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:3:\"900\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:9:\"font-size\";s:4:\"12px\";s:11:\"line-height\";s:4:\"18px\";s:5:\"color\";s:7:\"#81d742\";}s:19:\"font_secondary_menu\";a:9:{s:11:\"font-family\";s:4:\"Lato\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:3:\"400\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:9:\"font-size\";s:4:\"18px\";s:11:\"line-height\";s:4:\"22px\";s:5:\"color\";s:7:\"#81d742\";}s:23:\"mobile_submenu_collapse\";s:1:\"0\";s:16:\"font_mobile_menu\";a:9:{s:11:\"font-family\";s:4:\"Lato\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:3:\"400\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:9:\"font-size\";s:4:\"16px\";s:11:\"line-height\";s:4:\"20px\";s:5:\"color\";s:0:\"\";}s:23:\"paragraph_margin_bottom\";s:1:\"0\";s:15:\"page_title_show\";s:1:\"1\";s:26:\"default_page_content_width\";s:9:\"contained\";s:25:\"default_page_show_sidebar\";s:3:\"yes\";s:14:\"close_comments\";s:1:\"0\";s:13:\"page_comments\";s:1:\"0\";s:18:\"portfolio_comments\";s:1:\"0\";s:14:\"portfolio_link\";s:0:\"\";s:22:\"portfolio_type_columns\";s:1:\"3\";s:26:\"portfolio_type_under_title\";s:1:\"1\";s:20:\"post_summery_default\";s:12:\"img_portrait\";s:26:\"post_summery_default_image\";a:9:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";s:5:\"title\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:17:\"post_head_default\";s:4:\"none\";s:14:\"show_postlinks\";s:1:\"0\";s:11:\"hide_author\";s:1:\"1\";s:19:\"post_author_default\";s:2:\"no\";s:21:\"post_carousel_default\";s:2:\"no\";s:17:\"blog_archive_full\";s:7:\"summery\";s:17:\"hide_image_border\";s:1:\"0\";s:13:\"contact_email\";s:13:\"test@test.com\";s:11:\"footer_text\";s:49:\"[copyright] [the-year] [site-name] [theme-credit]\";s:13:\"cust_sidebars\";a:1:{i:0;s:0:\"\";}s:14:\"virtue_gallery\";s:1:\"1\";s:16:\"kadence_lightbox\";s:1:\"0\";s:14:\"google_map_api\";s:0:\"\";s:10:\"custom_css\";s:0:\"\";}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(203, 'virtue-transients', 'a:2:{s:14:\"changed_values\";a:1:{s:13:\"choose_slider\";s:4:\"flex\";}s:9:\"last_save\";i:1651133125;}', 'yes'),
(208, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(262, '_transient_health-check-site-status-result', '{\"good\":12,\"recommended\":5,\"critical\":2}', 'yes'),
(271, 'aiowps_temp_configs', 'a:93:{s:19:\"aiowps_enable_debug\";s:0:\"\";s:36:\"aiowps_remove_wp_generator_meta_info\";s:0:\"\";s:25:\"aiowps_prevent_hotlinking\";s:0:\"\";s:28:\"aiowps_enable_login_lockdown\";s:0:\"\";s:28:\"aiowps_allow_unlock_requests\";s:1:\"1\";s:25:\"aiowps_max_login_attempts\";s:1:\"3\";s:24:\"aiowps_retry_time_period\";s:1:\"5\";s:26:\"aiowps_lockout_time_length\";s:2:\"60\";s:28:\"aiowps_set_generic_login_msg\";s:0:\"\";s:26:\"aiowps_enable_email_notify\";s:0:\"\";s:20:\"aiowps_email_address\";s:23:\"yashdoifode@hotmail.com\";s:27:\"aiowps_enable_forced_logout\";s:0:\"\";s:25:\"aiowps_logout_time_period\";s:2:\"60\";s:39:\"aiowps_enable_invalid_username_lockdown\";s:0:\"\";s:43:\"aiowps_instantly_lockout_specific_usernames\";a:0:{}s:32:\"aiowps_unlock_request_secret_key\";s:20:\"yoff71fokh3k9foz15pv\";s:35:\"aiowps_lockdown_enable_whitelisting\";s:0:\"\";s:36:\"aiowps_lockdown_allowed_ip_addresses\";s:0:\"\";s:26:\"aiowps_enable_whitelisting\";s:0:\"\";s:27:\"aiowps_allowed_ip_addresses\";s:0:\"\";s:27:\"aiowps_enable_login_captcha\";s:0:\"\";s:34:\"aiowps_enable_custom_login_captcha\";s:0:\"\";s:31:\"aiowps_enable_woo_login_captcha\";s:0:\"\";s:34:\"aiowps_enable_woo_register_captcha\";s:0:\"\";s:38:\"aiowps_enable_woo_lostpassword_captcha\";s:0:\"\";s:25:\"aiowps_captcha_secret_key\";s:20:\"ujdyvyrkk7k9i8a482rv\";s:42:\"aiowps_enable_manual_registration_approval\";s:0:\"\";s:39:\"aiowps_enable_registration_page_captcha\";s:0:\"\";s:35:\"aiowps_enable_registration_honeypot\";s:0:\"\";s:27:\"aiowps_enable_random_prefix\";s:0:\"\";s:31:\"aiowps_enable_automated_backups\";s:0:\"\";s:26:\"aiowps_db_backup_frequency\";s:1:\"4\";s:25:\"aiowps_db_backup_interval\";s:1:\"2\";s:26:\"aiowps_backup_files_stored\";s:1:\"2\";s:32:\"aiowps_send_backup_email_address\";s:0:\"\";s:27:\"aiowps_backup_email_address\";s:23:\"yashdoifode@hotmail.com\";s:27:\"aiowps_disable_file_editing\";s:0:\"\";s:37:\"aiowps_prevent_default_wp_file_access\";s:0:\"\";s:22:\"aiowps_system_log_file\";s:9:\"error_log\";s:26:\"aiowps_enable_blacklisting\";s:0:\"\";s:26:\"aiowps_banned_ip_addresses\";s:0:\"\";s:28:\"aiowps_enable_basic_firewall\";s:1:\"1\";s:27:\"aiowps_max_file_upload_size\";i:2;s:31:\"aiowps_enable_pingback_firewall\";s:0:\"\";s:38:\"aiowps_disable_xmlrpc_pingback_methods\";s:1:\"1\";s:34:\"aiowps_block_debug_log_file_access\";s:0:\"\";s:26:\"aiowps_disable_index_views\";s:1:\"1\";s:30:\"aiowps_disable_trace_and_track\";s:1:\"1\";s:28:\"aiowps_forbid_proxy_comments\";s:1:\"1\";s:29:\"aiowps_deny_bad_query_strings\";s:1:\"1\";s:34:\"aiowps_advanced_char_string_filter\";s:1:\"1\";s:25:\"aiowps_enable_5g_firewall\";s:0:\"\";s:25:\"aiowps_enable_6g_firewall\";s:0:\"\";s:26:\"aiowps_enable_custom_rules\";s:0:\"\";s:32:\"aiowps_place_custom_rules_at_top\";s:0:\"\";s:19:\"aiowps_custom_rules\";s:0:\"\";s:25:\"aiowps_enable_404_logging\";s:0:\"\";s:28:\"aiowps_enable_404_IP_lockout\";s:0:\"\";s:30:\"aiowps_404_lockout_time_length\";i:60;s:28:\"aiowps_404_lock_redirect_url\";s:16:\"http://127.0.0.1\";s:31:\"aiowps_enable_rename_login_page\";s:1:\"1\";s:28:\"aiowps_enable_login_honeypot\";s:1:\"1\";s:43:\"aiowps_enable_brute_force_attack_prevention\";s:0:\"\";s:30:\"aiowps_brute_force_secret_word\";s:0:\"\";s:24:\"aiowps_cookie_brute_test\";s:0:\"\";s:44:\"aiowps_cookie_based_brute_force_redirect_url\";s:16:\"http://127.0.0.1\";s:59:\"aiowps_brute_force_attack_prevention_pw_protected_exception\";s:0:\"\";s:51:\"aiowps_brute_force_attack_prevention_ajax_exception\";s:0:\"\";s:19:\"aiowps_site_lockout\";s:0:\"\";s:23:\"aiowps_site_lockout_msg\";s:0:\"\";s:30:\"aiowps_enable_spambot_blocking\";s:1:\"1\";s:29:\"aiowps_enable_comment_captcha\";s:1:\"1\";s:31:\"aiowps_enable_autoblock_spam_ip\";s:1:\"1\";s:33:\"aiowps_spam_ip_min_comments_block\";i:5;s:33:\"aiowps_enable_bp_register_captcha\";s:0:\"\";s:35:\"aiowps_enable_bbp_new_topic_captcha\";s:0:\"\";s:32:\"aiowps_enable_automated_fcd_scan\";s:0:\"\";s:25:\"aiowps_fcd_scan_frequency\";i:4;s:24:\"aiowps_fcd_scan_interval\";s:1:\"2\";s:28:\"aiowps_fcd_exclude_filetypes\";s:0:\"\";s:24:\"aiowps_fcd_exclude_files\";s:0:\"\";s:26:\"aiowps_send_fcd_scan_email\";s:0:\"\";s:29:\"aiowps_fcd_scan_email_address\";s:23:\"yashdoifode@hotmail.com\";s:27:\"aiowps_fcds_change_detected\";b:0;s:22:\"aiowps_copy_protection\";s:1:\"1\";s:40:\"aiowps_prevent_site_display_inside_frame\";s:1:\"1\";s:32:\"aiowps_prevent_users_enumeration\";s:1:\"1\";s:42:\"aiowps_disallow_unauthorized_rest_requests\";s:0:\"\";s:25:\"aiowps_recaptcha_site_key\";s:0:\"\";s:27:\"aiowps_recaptcha_secret_key\";s:0:\"\";s:24:\"aiowps_default_recaptcha\";s:0:\"\";s:12:\"installed-at\";i:1650181922;s:22:\"aiowps_login_page_slug\";s:5:\"login\";}', 'yes'),
(310, 'kadence_toolkit_flushpermalinks', '2', 'yes'),
(318, 'theme_mods_twentytwenty', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(324, 'auto_update_plugins', 'a:0:{}', 'no'),
(325, 'updraftplus_version', '1.22.11', 'yes'),
(326, 'updraft_updraftvault', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-f0f89d4d51bc4b51b625dab7778d33c6\";a:3:{s:5:\"token\";s:0:\"\";s:5:\"email\";s:0:\"\";s:5:\"quota\";i:-1;}}}', 'yes'),
(327, 'updraft_dropbox', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-9c6e34dc8da97d664492c608fce3a0fe\";a:4:{s:6:\"appkey\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:6:\"folder\";s:0:\"\";s:15:\"tk_access_token\";s:0:\"\";}}}', 'yes'),
(328, 'updraft_s3', 'a:2:{s:7:\"version\";s:1:\"1\";s:8:\"settings\";a:1:{s:34:\"s-9c88bf85f161b91075a5ef02c7e4cf75\";a:3:{s:9:\"accesskey\";s:0:\"\";s:9:\"secretkey\";s:0:\"\";s:4:\"path\";s:0:\"\";}}}', 'yes'),
(329, 'updraft_cloudfiles', 'a:2:{s:7:\"version\";s:1:\"1\";s:8:\"settings\";a:1:{s:34:\"s-45c815c082438d76379fe05a7d28a4e6\";a:5:{s:7:\"authurl\";s:35:\"https://auth.api.rackspacecloud.com\";s:6:\"region\";s:3:\"DFW\";s:4:\"user\";s:0:\"\";s:6:\"apikey\";s:0:\"\";s:4:\"path\";s:0:\"\";}}}', 'yes'),
(330, 'updraft_googledrive', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-7be0bdd198f254ada76612bb95aa09b5\";a:4:{s:8:\"clientid\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:5:\"token\";s:0:\"\";s:6:\"folder\";s:11:\"UpdraftPlus\";}}}', 'yes'),
(331, 'updraft_onedrive', 'a:1:{s:7:\"version\";s:1:\"1\";}', 'yes'),
(332, 'updraft_ftp', 'a:2:{s:7:\"version\";s:1:\"1\";s:8:\"settings\";a:1:{s:34:\"s-af548440a9ead76e70cb9037e1d795fe\";a:5:{s:4:\"host\";s:0:\"\";s:4:\"user\";s:0:\"\";s:4:\"pass\";s:0:\"\";s:4:\"path\";s:0:\"\";s:7:\"passive\";s:1:\"1\";}}}', 'yes'),
(333, 'updraft_azure', 'a:1:{s:7:\"version\";s:1:\"1\";}', 'yes'),
(334, 'updraft_sftp', 'a:1:{s:7:\"version\";s:1:\"1\";}', 'yes'),
(335, 'updraft_googlecloud', 'a:1:{s:7:\"version\";s:1:\"1\";}', 'yes'),
(336, 'updraft_backblaze', 'a:1:{s:7:\"version\";s:1:\"1\";}', 'yes'),
(337, 'updraft_webdav', 'a:1:{s:7:\"version\";s:1:\"1\";}', 'yes'),
(338, 'updraft_s3generic', 'a:2:{s:7:\"version\";s:1:\"1\";s:8:\"settings\";a:1:{s:34:\"s-c195dd542f8d4a259e2fe81f8e54d676\";a:5:{s:9:\"accesskey\";s:0:\"\";s:9:\"secretkey\";s:0:\"\";s:4:\"path\";s:0:\"\";s:8:\"endpoint\";s:0:\"\";s:19:\"bucket_access_style\";s:10:\"path_style\";}}}', 'yes'),
(339, 'updraft_openstack', 'a:2:{s:7:\"version\";s:1:\"1\";s:8:\"settings\";a:1:{s:34:\"s-6149571f1bc00561b4ff13c08c9ffc73\";a:6:{s:7:\"authurl\";s:0:\"\";s:6:\"tenant\";s:0:\"\";s:6:\"region\";s:0:\"\";s:4:\"user\";s:0:\"\";s:8:\"password\";s:0:\"\";s:4:\"path\";s:0:\"\";}}}', 'yes'),
(340, 'updraft_dreamobjects', 'a:2:{s:7:\"version\";s:1:\"1\";s:8:\"settings\";a:1:{s:34:\"s-680a6f2dcfb4a3d43c07462b89803db0\";a:4:{s:9:\"accesskey\";s:0:\"\";s:9:\"secretkey\";s:0:\"\";s:4:\"path\";s:0:\"\";s:8:\"endpoint\";s:26:\"objects-us-east-1.dream.io\";}}}', 'yes'),
(341, 'updraftplus-addons_siteid', '4d5a83a3792d15a93d18e88f8b6e8251', 'no'),
(342, 'updraft_lastmessage', 'The backup attempt has finished, apparently unsuccessfully (Apr 19 02:55:59)', 'yes'),
(343, 'updraftplus_unlocked_fd', '1', 'no'),
(344, 'updraftplus_last_lock_time_fd', '2022-04-18 06:39:26', 'no'),
(345, 'updraftplus_semaphore_fd', '0', 'no'),
(346, 'updraft_last_scheduled_fd', '1650263966', 'yes'),
(348, 'updraftplus_tour_cancelled_on', 'premium', 'yes'),
(349, 'updraft_backup_history', 'a:2:{i:1650263966;a:19:{s:7:\"plugins\";a:1:{i:0;s:57:\"backup_2022-04-18-0639_Cyber_LAb_cc34014c0fd8-plugins.zip\";}s:12:\"plugins-size\";i:10337583;s:6:\"themes\";a:1:{i:0;s:56:\"backup_2022-04-18-0639_Cyber_LAb_cc34014c0fd8-themes.zip\";}s:11:\"themes-size\";i:12232965;s:7:\"uploads\";a:1:{i:0;s:57:\"backup_2022-04-18-0639_Cyber_LAb_cc34014c0fd8-uploads.zip\";}s:12:\"uploads-size\";i:9320;s:6:\"others\";a:1:{i:0;s:56:\"backup_2022-04-18-0639_Cyber_LAb_cc34014c0fd8-others.zip\";}s:11:\"others-size\";i:144;s:2:\"db\";s:51:\"backup_2022-04-18-0639_Cyber_LAb_cc34014c0fd8-db.gz\";s:7:\"db-size\";i:32109;s:9:\"checksums\";a:2:{s:4:\"sha1\";a:5:{s:8:\"plugins0\";s:40:\"3a395ccf3fa76aefc303cfcbabc1b650b657141e\";s:7:\"themes0\";s:40:\"41be268e5e45b60f80daa2c02d30499c24c78722\";s:8:\"uploads0\";s:40:\"6800b0b804887409da257e40ac39a7e0c4b10a4b\";s:7:\"others0\";s:40:\"de53b11be152f8b5f570d08a328fe56c166962a8\";s:3:\"db0\";s:40:\"1323ce6a8372b6992e9f2a50c9ecebe42b23fde0\";}s:6:\"sha256\";a:5:{s:8:\"plugins0\";s:64:\"582b7546910ca49dac66f40f0c9bf4c4883178b879deedfe5d5336f2b81ed6ec\";s:7:\"themes0\";s:64:\"eb4e8b11ac9da8b3e39f26f57177079b84ae0e0d20e2bc8abec69b95057f28b7\";s:8:\"uploads0\";s:64:\"5ea789e64282b51246a074829ca37d4f11104dceeeed610b3c101e8d534934e1\";s:7:\"others0\";s:64:\"174c32dcc427c2a7d408649a6e1ba98afaac060c8f1e09bc5666220803c3c9ac\";s:3:\"db0\";s:64:\"33451ebd795b1759be343af0f922aba888764c6b8be5f4b4d7395db0fe7329b0\";}}s:5:\"nonce\";s:12:\"cc34014c0fd8\";s:7:\"service\";a:1:{i:0;s:5:\"email\";}s:20:\"service_instance_ids\";a:0:{}s:11:\"always_keep\";b:0;s:19:\"files_enumerated_at\";a:4:{s:7:\"plugins\";i:1650263967;s:6:\"themes\";i:1650263978;s:7:\"uploads\";i:1650263985;s:6:\"others\";i:1650263986;}s:18:\"created_by_version\";s:7:\"1.22.11\";s:21:\"last_saved_by_version\";s:7:\"1.22.11\";s:12:\"is_multisite\";b:0;}i:1650263520;a:3:{s:7:\"plugins\";a:1:{i:0;s:57:\"backup_2022-04-18-0632_Cyber_LAb_f06209b811de-plugins.zip\";}s:12:\"plugins-size\";i:10337583;s:5:\"nonce\";s:12:\"f06209b811de\";}}', 'no'),
(350, 'updraft_retain_extrarules', 'a:0:{}', 'yes'),
(351, 'updraft_email', 'yashdoifode@hotmail.com', 'yes'),
(352, 'updraft_report_warningsonly', 'a:0:{}', 'yes'),
(353, 'updraft_report_wholebackup', 'a:0:{}', 'yes'),
(354, 'updraft_extradbs', 'a:0:{}', 'yes'),
(355, 'updraft_include_more_path', 'a:0:{}', 'yes'),
(356, 'updraft_interval', 'manual', 'yes'),
(357, 'updraft_retain', '2', 'yes'),
(358, 'updraft_interval_database', 'manual', 'yes'),
(359, 'updraft_retain_db', '2', 'yes'),
(360, 'updraft_service', 'email', 'yes'),
(361, 'updraft_include_plugins', '1', 'yes'),
(362, 'updraft_include_themes', '1', 'yes'),
(363, 'updraft_include_uploads', '1', 'yes'),
(364, 'updraft_include_uploads_exclude', 'backup*,*backups,backwpup*,wp-clone,snapshots', 'yes'),
(365, 'updraft_include_others', '1', 'yes'),
(366, 'updraft_include_others_exclude', 'upgrade,cache,updraft,backup*,*backups,mysql.sql,debug.log', 'yes'),
(367, 'updraft_split_every', '400', 'yes'),
(368, 'updraft_delete_local', '1', 'yes'),
(369, 'updraft_dir', 'updraft', 'yes'),
(370, 'updraft_debug_mode', '0', 'yes'),
(371, 'updraft_ssl_useservercerts', '0', 'yes'),
(372, 'updraft_ssl_disableverify', '0', 'yes'),
(373, 'updraft_ssl_nossl', '0', 'yes'),
(374, 'updraft_jobdata_cc34014c0fd8', 'a:41:{s:15:\"resume_interval\";i:300;s:8:\"job_type\";s:6:\"backup\";s:9:\"jobstatus\";s:7:\"pruning\";s:11:\"backup_time\";i:1650263966;s:11:\"job_time_ms\";d:1650263966.267934;s:7:\"service\";a:1:{i:0;s:5:\"email\";}s:11:\"split_every\";i:400;s:11:\"maxzipbatch\";i:26214400;s:17:\"job_file_entities\";a:4:{s:7:\"plugins\";a:1:{s:5:\"index\";i:0;}s:6:\"themes\";a:1:{s:5:\"index\";i:0;}s:7:\"uploads\";a:1:{s:5:\"index\";i:0;}s:6:\"others\";a:1:{s:5:\"index\";i:0;}}s:12:\"option_cache\";a:4:{s:25:\"updraft_ssl_disableverify\";s:1:\"0\";s:17:\"updraft_ssl_nossl\";s:1:\"0\";s:26:\"updraft_ssl_useservercerts\";s:1:\"0\";s:13:\"updraft_email\";s:23:\"yashdoifode@hotmail.com\";}s:18:\"uploaded_lastreset\";i:9;s:8:\"one_shot\";b:0;s:18:\"followsups_allowed\";b:0;s:15:\"backup_database\";a:1:{s:2:\"wp\";a:2:{s:6:\"status\";s:8:\"finished\";s:6:\"dbinfo\";a:0:{}}}s:12:\"backup_files\";s:8:\"finished\";s:24:\"remote_storage_instances\";a:1:{s:5:\"email\";a:1:{i:0;s:0:\"\";}}s:12:\"runs_started\";a:10:{i:0;d:1650263966.833408;i:1;d:1650264059.650135;i:2;d:1650264394.914276;i:3;d:1650264699.18829;i:4;d:1650265043.997006;i:5;d:1650265389.89447;i:6;d:1650265719.114155;i:7;d:1650268759.75727;i:8;d:1650269645.333019;i:9;d:1650336946.227371;}s:18:\"current_resumption\";i:9;s:6:\"binzip\";b:0;s:22:\"filecreating_substatus\";a:3:{s:1:\"e\";s:6:\"others\";s:1:\"i\";i:4;s:1:\"t\";i:4;}s:19:\"files_enumerated_at\";a:4:{s:7:\"plugins\";i:1650263967;s:6:\"themes\";i:1650263978;s:7:\"uploads\";i:1650263985;s:6:\"others\";i:1650263986;}s:9:\"run_times\";a:1:{i:0;d:27.827465057373047;}s:15:\"useful_checkins\";a:1:{i:0;i:0;}s:13:\"sha1-plugins0\";s:40:\"3a395ccf3fa76aefc303cfcbabc1b650b657141e\";s:15:\"sha256-plugins0\";s:64:\"582b7546910ca49dac66f40f0c9bf4c4883178b879deedfe5d5336f2b81ed6ec\";s:12:\"sha1-themes0\";s:40:\"41be268e5e45b60f80daa2c02d30499c24c78722\";s:14:\"sha256-themes0\";s:64:\"eb4e8b11ac9da8b3e39f26f57177079b84ae0e0d20e2bc8abec69b95057f28b7\";s:13:\"sha1-uploads0\";s:40:\"6800b0b804887409da257e40ac39a7e0c4b10a4b\";s:15:\"sha256-uploads0\";s:64:\"5ea789e64282b51246a074829ca37d4f11104dceeeed610b3c101e8d534934e1\";s:12:\"sha1-others0\";s:40:\"de53b11be152f8b5f570d08a328fe56c166962a8\";s:14:\"sha256-others0\";s:64:\"174c32dcc427c2a7d408649a6e1ba98afaac060c8f1e09bc5666220803c3c9ac\";s:18:\"backup_files_array\";a:8:{s:7:\"plugins\";a:1:{i:0;s:57:\"backup_2022-04-18-0639_Cyber_LAb_cc34014c0fd8-plugins.zip\";}s:12:\"plugins-size\";i:10337583;s:6:\"themes\";a:1:{i:0;s:56:\"backup_2022-04-18-0639_Cyber_LAb_cc34014c0fd8-themes.zip\";}s:11:\"themes-size\";i:12232965;s:7:\"uploads\";a:1:{i:0;s:57:\"backup_2022-04-18-0639_Cyber_LAb_cc34014c0fd8-uploads.zip\";}s:12:\"uploads-size\";i:9320;s:6:\"others\";a:1:{i:0;s:56:\"backup_2022-04-18-0639_Cyber_LAb_cc34014c0fd8-others.zip\";}s:11:\"others-size\";i:144;}s:10:\"binsqldump\";b:0;s:20:\"dbcreating_substatus\";a:3:{s:1:\"t\";s:25:\"wp_aiowps_permanent_block\";s:1:\"i\";i:19;s:1:\"a\";i:19;}s:10:\"fetch_rows\";i:1000;s:8:\"sha1-db0\";s:40:\"1323ce6a8372b6992e9f2a50c9ecebe42b23fde0\";s:10:\"sha256-db0\";s:64:\"33451ebd795b1759be343af0f922aba888764c6b8be5f4b4d7395db0fe7329b0\";s:19:\"uploading_substatus\";a:3:{s:1:\"i\";i:0;s:1:\"p\";i:0;s:1:\"t\";i:5;}s:5:\"prune\";s:8:\"finished\";s:8:\"warnings\";a:1:{s:16:\"infrequentvisits\";s:215:\"Your website is visited infrequently and UpdraftPlus is not getting the resources it hoped for; please read this page: https://updraftplus.com/faqs/why-am-i-getting-warnings-about-my-site-not-having-enough-visitors/\";}s:14:\"fail_on_resume\";i:10;}', 'no'),
(375, 'updraft_last_backup', 'a:6:{s:26:\"nonincremental_backup_time\";i:1650263966;s:11:\"backup_time\";i:1650263966;s:12:\"backup_array\";a:11:{s:7:\"plugins\";a:1:{i:0;s:57:\"backup_2022-04-18-0639_Cyber_LAb_cc34014c0fd8-plugins.zip\";}s:12:\"plugins-size\";i:10337583;s:6:\"themes\";a:1:{i:0;s:56:\"backup_2022-04-18-0639_Cyber_LAb_cc34014c0fd8-themes.zip\";}s:11:\"themes-size\";i:12232965;s:7:\"uploads\";a:1:{i:0;s:57:\"backup_2022-04-18-0639_Cyber_LAb_cc34014c0fd8-uploads.zip\";}s:12:\"uploads-size\";i:9320;s:6:\"others\";a:1:{i:0;s:56:\"backup_2022-04-18-0639_Cyber_LAb_cc34014c0fd8-others.zip\";}s:11:\"others-size\";i:144;s:2:\"db\";s:51:\"backup_2022-04-18-0639_Cyber_LAb_cc34014c0fd8-db.gz\";s:7:\"db-size\";i:32109;s:9:\"checksums\";a:2:{s:4:\"sha1\";a:5:{s:8:\"plugins0\";s:40:\"3a395ccf3fa76aefc303cfcbabc1b650b657141e\";s:7:\"themes0\";s:40:\"41be268e5e45b60f80daa2c02d30499c24c78722\";s:8:\"uploads0\";s:40:\"6800b0b804887409da257e40ac39a7e0c4b10a4b\";s:7:\"others0\";s:40:\"de53b11be152f8b5f570d08a328fe56c166962a8\";s:3:\"db0\";s:40:\"1323ce6a8372b6992e9f2a50c9ecebe42b23fde0\";}s:6:\"sha256\";a:5:{s:8:\"plugins0\";s:64:\"582b7546910ca49dac66f40f0c9bf4c4883178b879deedfe5d5336f2b81ed6ec\";s:7:\"themes0\";s:64:\"eb4e8b11ac9da8b3e39f26f57177079b84ae0e0d20e2bc8abec69b95057f28b7\";s:8:\"uploads0\";s:64:\"5ea789e64282b51246a074829ca37d4f11104dceeeed610b3c101e8d534934e1\";s:7:\"others0\";s:64:\"174c32dcc427c2a7d408649a6e1ba98afaac060c8f1e09bc5666220803c3c9ac\";s:3:\"db0\";s:64:\"33451ebd795b1759be343af0f922aba888764c6b8be5f4b4d7395db0fe7329b0\";}}}s:7:\"success\";i:0;s:6:\"errors\";a:7:{i:0;a:2:{s:5:\"level\";s:7:\"warning\";s:7:\"message\";s:215:\"Your website is visited infrequently and UpdraftPlus is not getting the resources it hoped for; please read this page: https://updraftplus.com/faqs/why-am-i-getting-warnings-about-my-site-not-having-enough-visitors/\";}s:16:\"infrequentvisits\";a:2:{s:5:\"level\";s:7:\"warning\";s:7:\"message\";s:215:\"Your website is visited infrequently and UpdraftPlus is not getting the resources it hoped for; please read this page: https://updraftplus.com/faqs/why-am-i-getting-warnings-about-my-site-not-having-enough-visitors/\";}i:1;a:2:{s:5:\"level\";s:5:\"error\";s:7:\"message\";s:106:\"Email: The attempt to send the backup via email failed (probably the backup was too large for this method)\";}i:2;a:2:{s:5:\"level\";s:5:\"error\";s:7:\"message\";s:106:\"Email: The attempt to send the backup via email failed (probably the backup was too large for this method)\";}i:3;a:2:{s:5:\"level\";s:5:\"error\";s:7:\"message\";s:106:\"Email: The attempt to send the backup via email failed (probably the backup was too large for this method)\";}i:4;a:2:{s:5:\"level\";s:5:\"error\";s:7:\"message\";s:106:\"Email: The attempt to send the backup via email failed (probably the backup was too large for this method)\";}i:5;a:2:{s:5:\"level\";s:5:\"error\";s:7:\"message\";s:106:\"Email: The attempt to send the backup via email failed (probably the backup was too large for this method)\";}}s:12:\"backup_nonce\";s:12:\"cc34014c0fd8\";}', 'yes'),
(377, 'updraft_lock_cc34014c0fd8', '0', 'no'),
(469, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.5.6\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1650337215;s:7:\"version\";s:5:\"5.5.6\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(604, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(612, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1704001994;s:7:\"checked\";a:5:{s:14:\"twentynineteen\";s:3:\"2.1\";s:12:\"twentytwenty\";s:3:\"1.8\";s:15:\"twentytwentyone\";s:3:\"1.4\";s:15:\"twentytwentytwo\";s:3:\"1.1\";s:6:\"virtue\";s:5:\"3.4.6\";}s:8:\"response\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.2\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.2.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.9.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.5.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:2:{s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.1.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}s:6:\"virtue\";a:6:{s:5:\"theme\";s:6:\"virtue\";s:11:\"new_version\";s:5:\"3.4.6\";s:3:\"url\";s:36:\"https://wordpress.org/themes/virtue/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/theme/virtue.3.4.6.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(613, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1704001993;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:6:{s:51:\"all-in-one-wp-security-and-firewall/wp-security.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:49:\"w.org/plugins/all-in-one-wp-security-and-firewall\";s:4:\"slug\";s:35:\"all-in-one-wp-security-and-firewall\";s:6:\"plugin\";s:51:\"all-in-one-wp-security-and-firewall/wp-security.php\";s:11:\"new_version\";s:6:\"4.4.11\";s:3:\"url\";s:66:\"https://wordpress.org/plugins/all-in-one-wp-security-and-firewall/\";s:7:\"package\";s:85:\"https://downloads.wordpress.org/plugin/all-in-one-wp-security-and-firewall.4.4.11.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:88:\"https://ps.w.org/all-in-one-wp-security-and-firewall/assets/icon-128x128.png?rev=1232826\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:91:\"https://ps.w.org/all-in-one-wp-security-and-firewall/assets/banner-1544x500.png?rev=1914011\";s:2:\"1x\";s:90:\"https://ps.w.org/all-in-one-wp-security-and-firewall/assets/banner-772x250.png?rev=1914013\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.5.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.5.6.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.7\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:33:\"kadence-blocks/kadence-blocks.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/kadence-blocks\";s:4:\"slug\";s:14:\"kadence-blocks\";s:6:\"plugin\";s:33:\"kadence-blocks/kadence-blocks.php\";s:11:\"new_version\";s:5:\"2.4.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/kadence-blocks/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/kadence-blocks.2.4.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/kadence-blocks/assets/icon-256x256.png?rev=2502131\";s:2:\"1x\";s:67:\"https://ps.w.org/kadence-blocks/assets/icon-128x128.png?rev=2502131\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/kadence-blocks/assets/banner-1544x500.jpg?rev=1954109\";s:2:\"1x\";s:69:\"https://ps.w.org/kadence-blocks/assets/banner-772x250.jpg?rev=1954109\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.9\";}s:27:\"updraftplus/updraftplus.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/updraftplus\";s:4:\"slug\";s:11:\"updraftplus\";s:6:\"plugin\";s:27:\"updraftplus/updraftplus.php\";s:11:\"new_version\";s:7:\"1.22.11\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/updraftplus/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/updraftplus.1.22.11.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/updraftplus/assets/icon-256x256.jpg?rev=1686200\";s:2:\"1x\";s:64:\"https://ps.w.org/updraftplus/assets/icon-128x128.jpg?rev=1686200\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/updraftplus/assets/banner-1544x500.png?rev=1686200\";s:2:\"1x\";s:66:\"https://ps.w.org/updraftplus/assets/banner-772x250.png?rev=1686200\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.2\";}s:33:\"virtue-toolkit/virtue_toolkit.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/virtue-toolkit\";s:4:\"slug\";s:14:\"virtue-toolkit\";s:6:\"plugin\";s:33:\"virtue-toolkit/virtue_toolkit.php\";s:11:\"new_version\";s:5:\"4.9.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/virtue-toolkit/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/virtue-toolkit.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:58:\"https://s.w.org/plugins/geopattern-icon/virtue-toolkit.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.5\";}}s:7:\"checked\";a:7:{s:19:\"akismet/akismet.php\";s:6:\"4.1.12\";s:51:\"all-in-one-wp-security-and-firewall/wp-security.php\";s:6:\"4.4.11\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.5.6\";s:9:\"hello.php\";s:5:\"1.7.2\";s:33:\"kadence-blocks/kadence-blocks.php\";s:5:\"2.4.4\";s:27:\"updraftplus/updraftplus.php\";s:7:\"1.22.11\";s:33:\"virtue-toolkit/virtue_toolkit.php\";s:5:\"4.9.6\";}}', 'no'),
(773, 'category_children', 'a:0:{}', 'yes'),
(805, '_transient_timeout_global_styles_virtue', '1704002045', 'no'),
(807, '_transient_global_styles_virtue', 'body{--wp--preset--color--black: #000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #fff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--color--virtue-primary: #ffa500;--wp--preset--color--virtue-primary-light: #ffa500;--wp--preset--color--very-light-gray: #eee;--wp--preset--color--very-dark-gray: #444;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no'),
(809, '_transient_timeout_global_styles_svg_filters_virtue', '1704002048', 'no'),
(811, '_transient_global_styles_svg_filters_virtue', '<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-dark-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncG type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncB type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.54901960784314 0.98823529411765\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.71764705882353 0.25490196078431\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-red\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 0.27843137254902\" /><feFuncB type=\"table\" tableValues=\"0.5921568627451 0.27843137254902\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-midnight\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0\" /><feFuncG type=\"table\" tableValues=\"0 0.64705882352941\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-magenta-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.78039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.94901960784314\" /><feFuncB type=\"table\" tableValues=\"0.35294117647059 0.47058823529412\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-green\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.65098039215686 0.40392156862745\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.44705882352941 0.4\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-orange\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.098039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.66274509803922\" /><feFuncB type=\"table\" tableValues=\"0.84705882352941 0.41960784313725\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg>', 'no'),
(814, '_site_transient_timeout_theme_roots', '1704003794', 'no'),
(815, '_site_transient_theme_roots', 'a:5:{s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";s:6:\"virtue\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(15, 11, '_edit_lock', '1651134484:1'),
(16, 14, '_edit_lock', '1650342827:1'),
(17, 16, '_edit_lock', '1650337430:1'),
(18, 18, '_edit_lock', '1651133504:1'),
(37, 22, '_menu_item_type', 'post_type'),
(38, 22, '_menu_item_menu_item_parent', '0'),
(39, 22, '_menu_item_object_id', '18'),
(40, 22, '_menu_item_object', 'page'),
(41, 22, '_menu_item_target', ''),
(42, 22, '_menu_item_classes', 'a:1:{i:0;s:11:\"icon-camera\";}'),
(43, 22, '_menu_item_xfn', ''),
(44, 22, '_menu_item_url', ''),
(46, 23, '_menu_item_type', 'post_type'),
(47, 23, '_menu_item_menu_item_parent', '0'),
(48, 23, '_menu_item_object_id', '16'),
(49, 23, '_menu_item_object', 'page'),
(50, 23, '_menu_item_target', ''),
(51, 23, '_menu_item_classes', 'a:1:{i:0;s:12:\"icon-windows\";}'),
(52, 23, '_menu_item_xfn', ''),
(53, 23, '_menu_item_url', ''),
(55, 24, '_menu_item_type', 'post_type'),
(56, 24, '_menu_item_menu_item_parent', '0'),
(57, 24, '_menu_item_object_id', '14'),
(58, 24, '_menu_item_object', 'page'),
(59, 24, '_menu_item_target', ''),
(60, 24, '_menu_item_classes', 'a:1:{i:0;s:12:\"icon-desktop\";}'),
(61, 24, '_menu_item_xfn', ''),
(62, 24, '_menu_item_url', ''),
(64, 25, '_menu_item_type', 'post_type'),
(65, 25, '_menu_item_menu_item_parent', '0'),
(66, 25, '_menu_item_object_id', '11'),
(67, 25, '_menu_item_object', 'page'),
(68, 25, '_menu_item_target', ''),
(69, 25, '_menu_item_classes', 'a:1:{i:0;s:9:\"icon-home\";}'),
(70, 25, '_menu_item_xfn', ''),
(71, 25, '_menu_item_url', ''),
(73, 2, '_edit_lock', '1650183078:1'),
(74, 27, '_wp_attached_file', '2022/04/hawk.jpeg'),
(75, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:416;s:6:\"height\";i:416;s:4:\"file\";s:17:\"2022/04/hawk.jpeg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(76, 14, '_thumbnail_id', '63'),
(92, 34, '_customize_changeset_uuid', 'ed2b4f4c-5545-40ae-9ae7-67ae1588ed83'),
(93, 37, '_menu_item_type', 'post_type'),
(94, 37, '_menu_item_menu_item_parent', '0'),
(95, 37, '_menu_item_object_id', '2'),
(96, 37, '_menu_item_object', 'page'),
(97, 37, '_menu_item_target', ''),
(98, 37, '_menu_item_classes', 'a:1:{i:0;s:10:\"icon-paste\";}'),
(99, 37, '_menu_item_xfn', ''),
(100, 37, '_menu_item_url', ''),
(101, 38, '_menu_item_type', 'post_type'),
(102, 38, '_menu_item_menu_item_parent', '0'),
(103, 38, '_menu_item_object_id', '34'),
(104, 38, '_menu_item_object', 'page'),
(105, 38, '_menu_item_target', ''),
(106, 38, '_menu_item_classes', 'a:1:{i:0;s:11:\"icon-medkit\";}'),
(107, 38, '_menu_item_xfn', ''),
(108, 38, '_menu_item_url', ''),
(123, 25, '_wp_old_date', '2022-04-17'),
(124, 24, '_wp_old_date', '2022-04-17'),
(125, 23, '_wp_old_date', '2022-04-17'),
(126, 22, '_wp_old_date', '2022-04-17'),
(138, 48, '_form', '<label> Your name\n    [text* your-name] </label>\n\n<label> Your email\n    [email* your-email] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]'),
(139, 48, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:39:\"[_site_title] <yashdoifode@hotmail.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:163:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(140, 48, '_mail_2', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:39:\"[_site_title] <yashdoifode@hotmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:97:\"Message Body:\n[your-message]\n\n-- \nthank you for sending your responce [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(141, 48, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(142, 48, '_additional_settings', ''),
(143, 48, '_locale', 'en_US'),
(144, 16, '_edit_last', '1'),
(145, 16, '_kad_page_sidebar', 'default'),
(146, 16, '_kad_sidebar_choice', 'sidebar-primary'),
(147, 16, '_kad_page_content_width', 'default'),
(148, 16, '_kad_show_page_title', 'default'),
(174, 59, '_wp_attached_file', '2022/04/8.png'),
(175, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:168;s:4:\"file\";s:13:\"2022/04/8.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(176, 60, '_wp_attached_file', '2022/04/7.jpg'),
(177, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:275;s:6:\"height\";i:183;s:4:\"file\";s:13:\"2022/04/7.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(178, 61, '_wp_attached_file', '2022/04/6.jpg'),
(179, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:318;s:6:\"height\";i:159;s:4:\"file\";s:13:\"2022/04/6.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(180, 62, '_wp_attached_file', '2022/04/5.jpg'),
(181, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:284;s:6:\"height\";i:178;s:4:\"file\";s:13:\"2022/04/5.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(182, 63, '_wp_attached_file', '2022/04/4.jpg'),
(183, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:311;s:6:\"height\";i:162;s:4:\"file\";s:13:\"2022/04/4.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(184, 64, '_wp_attached_file', '2022/04/3.jpg'),
(185, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:263;s:6:\"height\";i:191;s:4:\"file\";s:13:\"2022/04/3.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(186, 65, '_wp_attached_file', '2022/04/2.png'),
(187, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:321;s:6:\"height\";i:157;s:4:\"file\";s:13:\"2022/04/2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(188, 66, '_wp_attached_file', '2022/04/1.jpg'),
(189, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:291;s:6:\"height\";i:173;s:4:\"file\";s:13:\"2022/04/1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(193, 11, '_edit_last', '1'),
(194, 11, '_kad_page_sidebar', 'default'),
(195, 11, '_kad_sidebar_choice', 'sidebar-primary'),
(196, 11, '_kad_page_content_width', 'default'),
(197, 11, '_kad_show_page_title', 'default'),
(198, 14, '_edit_last', '1'),
(199, 14, '_kad_page_sidebar', 'default'),
(200, 14, '_kad_sidebar_choice', 'sidebar-primary'),
(201, 14, '_kad_page_content_width', 'default'),
(202, 14, '_kad_show_page_title', 'default'),
(203, 72, '_edit_lock', '1650344239:1'),
(206, 72, '_thumbnail_id', '61'),
(207, 72, '_edit_last', '1'),
(210, 72, '_kad_blog_head', 'default'),
(211, 72, '_kad_post_summery', 'default'),
(212, 72, '_kad_post_sidebar', 'yes'),
(213, 72, '_kad_sidebar_choice', 'sidebar-primary'),
(214, 72, '_kad_blog_author', 'default'),
(215, 72, '_kad_blog_carousel_similar', 'default'),
(220, 75, '_edit_lock', '1650343933:1'),
(223, 75, '_thumbnail_id', '59'),
(224, 75, '_edit_last', '1'),
(227, 75, '_kad_blog_head', 'default'),
(228, 75, '_kad_post_summery', 'default'),
(229, 75, '_kad_post_sidebar', 'yes'),
(230, 75, '_kad_sidebar_choice', 'sidebar-primary'),
(231, 75, '_kad_blog_author', 'default'),
(232, 75, '_kad_blog_carousel_similar', 'default'),
(233, 77, '_edit_lock', '1650343916:1'),
(236, 77, '_thumbnail_id', '63'),
(237, 77, '_edit_last', '1'),
(240, 77, '_kad_blog_head', 'default'),
(241, 77, '_kad_post_summery', 'default'),
(242, 77, '_kad_post_sidebar', 'yes'),
(243, 77, '_kad_sidebar_choice', 'sidebar-primary'),
(244, 77, '_kad_blog_author', 'default'),
(245, 77, '_kad_blog_carousel_similar', 'default'),
(246, 79, '_edit_lock', '1650343894:1'),
(249, 79, '_thumbnail_id', '64'),
(250, 79, '_edit_last', '1'),
(253, 79, '_kad_blog_head', 'default'),
(254, 79, '_kad_post_summery', 'default'),
(255, 79, '_kad_post_sidebar', 'yes'),
(256, 79, '_kad_sidebar_choice', 'sidebar-primary'),
(257, 79, '_kad_blog_author', 'default'),
(258, 79, '_kad_blog_carousel_similar', 'default'),
(308, 18, '_thumbnail_id', '62'),
(309, 18, '_edit_last', '1'),
(310, 18, '_kad_page_sidebar', 'default'),
(311, 18, '_kad_sidebar_choice', 'sidebar-primary'),
(312, 18, '_kad_page_content_width', 'default'),
(313, 18, '_kad_show_page_title', 'default'),
(316, 34, '_edit_lock', '1651134833:1'),
(317, 93, '_wp_attached_file', '2022/04/qr.png'),
(318, 93, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:130;s:6:\"height\";i:130;s:4:\"file\";s:14:\"2022/04/qr.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(319, 95, '_wp_attached_file', '2022/04/kt_01_background_image.jpg'),
(320, 95, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1265;s:4:\"file\";s:34:\"2022/04/kt_01_background_image.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(321, 95, '_kadence_blocks_image_hash', '22fb1308057145456f7bef30fa7ff174742547fa'),
(322, 34, '_edit_last', '1'),
(323, 34, '_wp_page_template', 'default'),
(324, 101, '_wp_attached_file', '2022/04/qr-1.png'),
(325, 101, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:130;s:6:\"height\";i:130;s:4:\"file\";s:16:\"2022/04/qr-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(326, 34, '_kad_page_sidebar', 'default'),
(327, 34, '_kad_sidebar_choice', 'sidebar-primary'),
(328, 34, '_kad_page_content_width', 'default'),
(329, 34, '_kad_show_page_title', 'default'),
(330, 105, '_edit_lock', '1657038800:1'),
(331, 106, '_wp_attached_file', '2022/07/18.png'),
(332, 106, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:14:\"2022/07/18.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(333, 107, '_wp_attached_file', '2022/07/17.png'),
(334, 107, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:318;s:6:\"height\";i:159;s:4:\"file\";s:14:\"2022/07/17.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(335, 108, '_wp_attached_file', '2022/07/16.jpg'),
(336, 108, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:274;s:6:\"height\";i:184;s:4:\"file\";s:14:\"2022/07/16.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(337, 109, '_wp_attached_file', '2022/07/15.jpg'),
(338, 109, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:299;s:6:\"height\";i:168;s:4:\"file\";s:14:\"2022/07/15.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(339, 110, '_wp_attached_file', '2022/07/14.png'),
(340, 110, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:293;s:6:\"height\";i:172;s:4:\"file\";s:14:\"2022/07/14.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(341, 111, '_wp_attached_file', '2022/07/13.png'),
(342, 111, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:14:\"2022/07/13.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(343, 112, '_wp_attached_file', '2022/07/11.jpg'),
(344, 112, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1456;s:6:\"height\";i:799;s:4:\"file\";s:14:\"2022/07/11.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(345, 113, '_wp_attached_file', '2022/07/10.jpg'),
(346, 113, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:310;s:6:\"height\";i:162;s:4:\"file\";s:14:\"2022/07/10.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(349, 105, '_thumbnail_id', '107'),
(350, 105, '_edit_last', '1'),
(351, 105, '_pingme', '1'),
(352, 105, '_kad_blog_head', 'default'),
(353, 105, '_kad_post_summery', 'default'),
(354, 105, '_kad_post_sidebar', 'yes'),
(355, 105, '_kad_sidebar_choice', 'sidebar-primary'),
(356, 105, '_kad_blog_author', 'default'),
(357, 105, '_kad_blog_carousel_similar', 'default');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2022-04-16 16:43:41', '2022-04-16 16:43:41', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2022-04-16 16:43:41', '2022-04-16 16:43:41', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2022-04-16 16:43:41', '2022-04-16 16:43:41', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2022-04-16 16:43:41', '2022-04-16 16:43:41', '', 0, 'http://localhost/wordpress/?page_id=3', 0, 'page', '', 0),
(11, 1, '2022-04-17 08:05:23', '2022-04-17 08:05:23', '<!-- wp:kadence/rowlayout {\"uniqueID\":\"_78bb21-4c\",\"columns\":1,\"colLayout\":\"equal\",\"minHeight\":500,\"maxWidth\":2000,\"topPadding\":17,\"bottomPadding\":0,\"bgImg\":\"http://localhost/wordpress/wp-content/uploads/2022/04/kt_01_background_image.jpg\",\"overlay\":\"#008c9e\",\"overlayOpacity\":60,\"overlayBlendMode\":\"normal\",\"blockAlignment\":\"full\",\"verticalAlignment\":\"middle\"} -->\n<div class=\"wp-block-kadence-rowlayout alignnone\"><div id=\"kt-layout-id_78bb21-4c\" class=\"kt-row-layout-inner kt-row-has-bg kt-layout-id_78bb21-4c\"><div class=\"kt-row-layout-overlay kt-row-overlay-normal\"></div><div class=\"kt-row-column-wrap kt-has-1-columns kt-gutter-default kt-v-gutter-default kt-row-valign-middle kt-row-layout-equal kt-tab-layout-inherit kt-m-colapse-left-to-right kt-mobile-layout-row\"><!-- wp:kadence/column {\"uniqueID\":\"_6d7851-fe\"} -->\n<div class=\"wp-block-kadence-column inner-column-1 kadence-column_6d7851-fe\"><div class=\"kt-inside-inner-col\"><!-- wp:kadence/advancedheading {\"uniqueID\":\"_3a2a39-4e\",\"align\":\"center\",\"color\":\"#fff\",\"size\":3.5,\"sizeType\":\"em\",\"lineHeight\":1.5,\"lineType\":\"em\",\"mobileSize\":2.8,\"markSize\":[\"\",\"\",\"\"],\"markLineHeight\":[\"\",\"\",\"\"],\"markPadding\":[0,0,0,0]} -->\n<h2 class=\"kt-adv-heading_3a2a39-4e wp-block-kadence-advancedheading\" data-kb-block=\"kb-adv-heading_3a2a39-4e\">Lets Connect!</h2>\n<!-- /wp:kadence/advancedheading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:kadence/advancedbtn {\"uniqueID\":\"_68e156-6f\",\"btns\":[{\"text\":[\"Contact us\"],\"link\":\"http://localhost/wordpress/contact/\",\"target\":\"_self\",\"size\":18,\"paddingBT\":\"\",\"paddingLR\":\"\",\"color\":\"#fff\",\"background\":\"transparent\",\"border\":\"#fff\",\"borderRadius\":3,\"borderWidth\":2,\"colorHover\":\"#fff\",\"backgroundHover\":\"#008c9e\",\"borderHover\":\"#008c9e\",\"icon\":\"\",\"iconSide\":\"right\",\"iconHover\":false,\"btnSize\":\"custom\"}]} -->\n<div class=\"wp-block-kadence-advancedbtn kt-btn-align-center kt-btn-tablet-align-inherit kt-btn-mobile-align-inherit kt-btns-wrap kt-btns_68e156-6f\"><div class=\"kt-btn-wrap kt-btn-wrap-0\"><a class=\"kt-button button kt-btn-0-action kt-btn-size-custom kt-btn-style-basic kt-btn-svg-show-always kt-btn-has-text-true kt-btn-has-svg-false\" href=\"http://localhost/wordpress/contact/\" style=\"border-radius:3px;border-width:2px\"><span class=\"kt-btn-inner-text\">Contact us</span></a></div></div>\n<!-- /wp:kadence/advancedbtn --></div></div>\n<!-- /wp:kadence/column --></div></div></div>\n<!-- /wp:kadence/rowlayout -->\n\n<!-- wp:gallery {\"linkTo\":\"none\"} -->\n<figure class=\"wp-block-gallery has-nested-images columns-default is-cropped\"><!-- wp:image {\"id\":60,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2022/04/7.jpg\" alt=\"\" class=\"wp-image-60\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":61,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2022/04/6.jpg\" alt=\"\" class=\"wp-image-61\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":62,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2022/04/5.jpg\" alt=\"\" class=\"wp-image-62\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":63,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2022/04/4.jpg\" alt=\"\" class=\"wp-image-63\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":64,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2022/04/3.jpg\" alt=\"\" class=\"wp-image-64\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":65,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2022/04/2.png\" alt=\"\" class=\"wp-image-65\"/></figure>\n<!-- /wp:image --></figure>\n<!-- /wp:gallery -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2022-04-28 08:28:02', '2022-04-28 08:28:02', '', 0, 'http://localhost/wordpress/?page_id=11', 0, 'page', '', 0),
(12, 1, '2022-04-17 08:04:37', '2022-04-17 08:04:37', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-virtue', '', '', '2022-04-17 08:04:37', '2022-04-17 08:04:37', '', 0, 'http://localhost/wordpress/2022/04/17/wp-global-styles-virtue/', 0, 'wp_global_styles', '', 0),
(13, 1, '2022-04-17 08:05:23', '2022-04-17 08:05:23', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2022-04-17 08:05:23', '2022-04-17 08:05:23', '', 11, 'http://localhost/wordpress/?p=13', 0, 'revision', '', 0),
(14, 1, '2022-04-17 08:05:44', '2022-04-17 08:05:44', '<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n<!-- /wp:paragraph -->', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2022-04-19 04:33:19', '2022-04-19 04:33:19', '', 0, 'http://localhost/wordpress/?page_id=14', 0, 'page', '', 0),
(15, 1, '2022-04-17 08:05:44', '2022-04-17 08:05:44', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2022-04-17 08:05:44', '2022-04-17 08:05:44', '', 14, 'http://localhost/wordpress/?p=15', 0, 'revision', '', 0),
(16, 1, '2022-04-17 08:06:09', '2022-04-17 08:06:09', '<!-- wp:contact-form-7/contact-form-selector {\"id\":48,\"title\":\"Contact form 1\"} -->\n<div class=\"wp-block-contact-form-7-contact-form-selector\">[contact-form-7 id=\"48\" title=\"Contact form 1\"]</div>\n<!-- /wp:contact-form-7/contact-form-selector -->', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2022-04-19 03:03:44', '2022-04-19 03:03:44', '', 0, 'http://localhost/wordpress/?page_id=16', 0, 'page', '', 0),
(17, 1, '2022-04-17 08:06:09', '2022-04-17 08:06:09', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2022-04-17 08:06:09', '2022-04-17 08:06:09', '', 16, 'http://localhost/wordpress/?p=17', 0, 'revision', '', 0),
(18, 1, '2022-04-17 08:06:22', '2022-04-17 08:06:22', '<!-- wp:paragraph -->\n<p>We Started a journy towards a digital eras in fiel<strong>d of cyber secuity company .</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>m used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n<!-- /wp:paragraph -->', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2022-04-28 08:08:55', '2022-04-28 08:08:55', '', 0, 'http://localhost/wordpress/?page_id=18', 0, 'page', '', 0),
(19, 1, '2022-04-17 08:06:22', '2022-04-17 08:06:22', '', 'About', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2022-04-17 08:06:22', '2022-04-17 08:06:22', '', 18, 'http://localhost/wordpress/?p=19', 0, 'revision', '', 0),
(22, 1, '2022-04-18 06:50:31', '2022-04-17 08:09:07', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2022-04-18 06:50:31', '2022-04-18 06:50:31', '', 0, 'http://localhost/wordpress/?p=22', 4, 'nav_menu_item', '', 0),
(23, 1, '2022-04-18 06:50:30', '2022-04-17 08:09:07', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2022-04-18 06:50:30', '2022-04-18 06:50:30', '', 0, 'http://localhost/wordpress/?p=23', 3, 'nav_menu_item', '', 0),
(24, 1, '2022-04-18 06:50:30', '2022-04-17 08:10:48', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2022-04-18 06:50:30', '2022-04-18 06:50:30', '', 0, 'http://localhost/wordpress/?p=24', 2, 'nav_menu_item', '', 0),
(25, 1, '2022-04-18 06:50:30', '2022-04-17 08:10:47', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2022-04-18 06:50:30', '2022-04-18 06:50:30', '', 0, 'http://localhost/wordpress/?p=25', 1, 'nav_menu_item', '', 0),
(27, 1, '2022-04-17 08:18:58', '2022-04-17 08:18:58', '', 'hawk', '', 'inherit', 'open', 'closed', '', 'hawk', '', '', '2022-04-17 08:18:58', '2022-04-17 08:18:58', '', 14, 'http://localhost/wordpress/wp-content/uploads/2022/04/hawk.jpeg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2022-04-17 08:19:08', '2022-04-17 08:19:08', '<!-- wp:paragraph -->\n<p>Hey there :)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> welcome to our cyber security website. we have started our journy in the bussiness of securing website through malicous activity . Dont hesited to contact in order to step in the way of securing your assest .</p>\n<!-- /wp:paragraph -->', 'Blog', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2022-04-17 08:19:08', '2022-04-17 08:19:08', '', 14, 'http://localhost/wordpress/?p=28', 0, 'revision', '', 0),
(34, 1, '2022-04-18 06:16:58', '2022-04-18 06:16:58', '<!-- wp:kadence/rowlayout {\"uniqueID\":\"_8980ff-0b\",\"colLayout\":\"right-golden\"} -->\n<div class=\"wp-block-kadence-rowlayout alignnone\"><div id=\"kt-layout-id_8980ff-0b\" class=\"kt-row-layout-inner kt-layout-id_8980ff-0b\"><div class=\"kt-row-column-wrap kt-has-2-columns kt-gutter-default kt-v-gutter-default kt-row-valign-top kt-row-layout-right-golden kt-tab-layout-inherit kt-m-colapse-left-to-right kt-mobile-layout-row\"><!-- wp:kadence/column {\"uniqueID\":\"_74cbb2-0c\"} -->\n<div class=\"wp-block-kadence-column inner-column-1 kadence-column_74cbb2-0c\"><div class=\"kt-inside-inner-col\"><!-- wp:paragraph -->\n<p><mark style=\"background-color:rgba(0, 0, 0, 0);color:#cb1b1b\" class=\"has-inline-color\">Donate us </mark></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>help us to do more for you </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>by just donating your funds .</p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:kadence/column -->\n\n<!-- wp:kadence/column {\"id\":2,\"uniqueID\":\"_12799c-d0\"} -->\n<div class=\"wp-block-kadence-column inner-column-2 kadence-column_12799c-d0\"><div class=\"kt-inside-inner-col\"><!-- wp:image {\"align\":\"center\",\"id\":101,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-full\"><img src=\"http://localhost/wordpress/wp-content/uploads/2022/04/qr-1.png\" alt=\"\" class=\"wp-image-101\"/></figure></div>\n<!-- /wp:image --></div></div>\n<!-- /wp:kadence/column --></div></div></div>\n<!-- /wp:kadence/rowlayout -->', 'donate', '', 'publish', 'closed', 'closed', '', 'donate', '', '', '2022-04-28 08:33:52', '2022-04-28 08:33:52', '', 0, 'http://localhost/wordpress/?page_id=34', 0, 'page', '', 0),
(36, 1, '2022-04-18 06:16:58', '2022-04-18 06:16:58', '', 'donate', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2022-04-18 06:16:58', '2022-04-18 06:16:58', '', 34, 'http://localhost/wordpress/?p=36', 0, 'revision', '', 0),
(37, 1, '2022-04-18 06:51:32', '2022-04-18 06:16:58', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2022-04-18 06:51:32', '2022-04-18 06:51:32', '', 0, 'http://localhost/wordpress/2022/04/18/37/', 1, 'nav_menu_item', '', 0),
(38, 1, '2022-04-18 06:51:32', '2022-04-18 06:16:59', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2022-04-18 06:51:32', '2022-04-18 06:51:32', '', 0, 'http://localhost/wordpress/2022/04/18/38/', 2, 'nav_menu_item', '', 0),
(48, 1, '2022-04-19 03:00:14', '2022-04-19 03:00:14', '<label> Your name\r\n    [text* your-name] </label>\r\n\r\n<label> Your email\r\n    [email* your-email] </label>\r\n\r\n<label> Your message (optional)\r\n    [textarea your-message] </label>\r\n\r\n[submit \"Submit\"]\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <yashdoifode@hotmail.com>\n[_site_admin_email]\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [your-email]\n\n\n\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <yashdoifode@hotmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nthank you for sending your responce [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2022-04-19 03:06:16', '2022-04-19 03:06:16', '', 0, 'http://localhost/wordpress/?post_type=wpcf7_contact_form&#038;p=48', 0, 'wpcf7_contact_form', '', 0),
(49, 1, '2022-04-19 03:03:42', '2022-04-19 03:03:42', '<!-- wp:contact-form-7/contact-form-selector {\"id\":48,\"title\":\"Contact form 1\"} -->\n<div class=\"wp-block-contact-form-7-contact-form-selector\">[contact-form-7 id=\"48\" title=\"Contact form 1\"]</div>\n<!-- /wp:contact-form-7/contact-form-selector -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2022-04-19 03:03:42', '2022-04-19 03:03:42', '', 16, 'http://localhost/wordpress/?p=49', 0, 'revision', '', 0),
(59, 1, '2022-04-19 04:04:30', '2022-04-19 04:04:30', '', '8', '', 'inherit', 'open', 'closed', '', '8', '', '', '2022-04-19 04:04:30', '2022-04-19 04:04:30', '', 0, 'http://localhost/wordpress/wp-content/uploads/2022/04/8.png', 0, 'attachment', 'image/png', 0),
(60, 1, '2022-04-19 04:04:31', '2022-04-19 04:04:31', '', '7', '', 'inherit', 'open', 'closed', '', '7', '', '', '2022-04-19 04:04:31', '2022-04-19 04:04:31', '', 0, 'http://localhost/wordpress/wp-content/uploads/2022/04/7.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2022-04-19 04:04:32', '2022-04-19 04:04:32', '', '6', '', 'inherit', 'open', 'closed', '', '6', '', '', '2022-04-19 04:04:32', '2022-04-19 04:04:32', '', 0, 'http://localhost/wordpress/wp-content/uploads/2022/04/6.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2022-04-19 04:04:32', '2022-04-19 04:04:32', '', '5', '', 'inherit', 'open', 'closed', '', '5', '', '', '2022-04-19 04:04:32', '2022-04-19 04:04:32', '', 0, 'http://localhost/wordpress/wp-content/uploads/2022/04/5.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2022-04-19 04:04:33', '2022-04-19 04:04:33', '', '4', '', 'inherit', 'open', 'closed', '', '4', '', '', '2022-04-19 04:04:33', '2022-04-19 04:04:33', '', 0, 'http://localhost/wordpress/wp-content/uploads/2022/04/4.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2022-04-19 04:04:34', '2022-04-19 04:04:34', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2022-04-19 04:04:34', '2022-04-19 04:04:34', '', 0, 'http://localhost/wordpress/wp-content/uploads/2022/04/3.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2022-04-19 04:04:34', '2022-04-19 04:04:34', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2022-04-19 04:04:34', '2022-04-19 04:04:34', '', 0, 'http://localhost/wordpress/wp-content/uploads/2022/04/2.png', 0, 'attachment', 'image/png', 0),
(66, 1, '2022-04-19 04:04:35', '2022-04-19 04:04:35', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2022-04-19 04:04:35', '2022-04-19 04:04:35', '', 0, 'http://localhost/wordpress/wp-content/uploads/2022/04/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2022-04-19 04:10:30', '2022-04-19 04:10:30', '<!-- wp:image -->\n<figure class=\"wp-block-image\"><img alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:gallery {\"linkTo\":\"none\"} -->\n<figure class=\"wp-block-gallery has-nested-images columns-default is-cropped\"><!-- wp:image {\"id\":59,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2022/04/8.png\" alt=\"\" class=\"wp-image-59\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":60,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2022/04/7.jpg\" alt=\"\" class=\"wp-image-60\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":61,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2022/04/6.jpg\" alt=\"\" class=\"wp-image-61\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":62,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2022/04/5.jpg\" alt=\"\" class=\"wp-image-62\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":63,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2022/04/4.jpg\" alt=\"\" class=\"wp-image-63\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":64,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2022/04/3.jpg\" alt=\"\" class=\"wp-image-64\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":65,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2022/04/2.png\" alt=\"\" class=\"wp-image-65\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":66,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2022/04/1.jpg\" alt=\"\" class=\"wp-image-66\"/></figure>\n<!-- /wp:image --></figure>\n<!-- /wp:gallery -->', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2022-04-19 04:10:30', '2022-04-19 04:10:30', '', 11, 'http://localhost/wordpress/?p=68', 0, 'revision', '', 0),
(70, 1, '2022-04-19 04:33:18', '2022-04-19 04:33:18', '<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n<!-- /wp:paragraph -->', 'Blog', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2022-04-19 04:33:18', '2022-04-19 04:33:18', '', 14, 'http://localhost/wordpress/?p=70', 0, 'revision', '', 0),
(72, 1, '2022-04-19 04:42:52', '2022-04-19 04:42:52', '<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n<!-- /wp:paragraph -->', 'Phishing Attack', '', 'publish', 'open', 'open', '', 'phishing-attack', '', '', '2022-04-19 04:52:27', '2022-04-19 04:52:27', '', 0, 'http://localhost/wordpress/?p=72', 0, 'post', '', 0),
(73, 1, '2022-04-19 04:42:52', '2022-04-19 04:42:52', '<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n<!-- /wp:paragraph -->', 'Phishing Attack', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2022-04-19 04:42:52', '2022-04-19 04:42:52', '', 72, 'http://localhost/wordpress/?p=73', 0, 'revision', '', 0),
(75, 1, '2022-04-19 04:44:02', '2022-04-19 04:44:02', '<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n<!-- /wp:paragraph -->', 'GPS TRACKING', '', 'publish', 'open', 'open', '', 'gps-tracking', '', '', '2022-04-19 04:52:12', '2022-04-19 04:52:12', '', 0, 'http://localhost/wordpress/?p=75', 0, 'post', '', 0),
(76, 1, '2022-04-19 04:44:02', '2022-04-19 04:44:02', '<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n<!-- /wp:paragraph -->', 'GPS TRACKING', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2022-04-19 04:44:02', '2022-04-19 04:44:02', '', 75, 'http://localhost/wordpress/?p=76', 0, 'revision', '', 0),
(77, 1, '2022-04-19 04:44:44', '2022-04-19 04:44:44', '<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n<!-- /wp:paragraph -->', 'Website Hacking', '', 'publish', 'open', 'open', '', 'website-hacking', '', '', '2022-04-19 04:51:55', '2022-04-19 04:51:55', '', 0, 'http://localhost/wordpress/?p=77', 0, 'post', '', 0),
(78, 1, '2022-04-19 04:44:44', '2022-04-19 04:44:44', '<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n<!-- /wp:paragraph -->', 'Website Hacking', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2022-04-19 04:44:44', '2022-04-19 04:44:44', '', 77, 'http://localhost/wordpress/?p=78', 0, 'revision', '', 0),
(79, 1, '2022-04-19 04:45:16', '2022-04-19 04:45:16', '<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n<!-- /wp:paragraph -->', 'Network Hacking', '', 'publish', 'open', 'open', '', 'network-hacking', '', '', '2022-04-19 04:51:33', '2022-04-19 04:51:33', '', 0, 'http://localhost/wordpress/?p=79', 0, 'post', '', 0),
(80, 1, '2022-04-19 04:45:16', '2022-04-19 04:45:16', '<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n<!-- /wp:paragraph -->', 'Network Hacking', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2022-04-19 04:45:16', '2022-04-19 04:45:16', '', 79, 'http://localhost/wordpress/?p=80', 0, 'revision', '', 0),
(83, 1, '2022-04-19 04:55:11', '2022-04-19 04:55:11', '<!-- wp:paragraph -->\n<p>We Started a journy towards a digital eras in fiel<strong>d of cyber secuity company .</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n<!-- /wp:paragraph -->', 'About', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2022-04-19 04:55:11', '2022-04-19 04:55:11', '', 18, 'http://localhost/wordpress/?p=83', 0, 'revision', '', 0),
(84, 1, '2022-04-19 04:55:45', '2022-04-19 04:55:45', '<!-- wp:paragraph -->\n<p>We Started a journy towards a digital eras in fiel<strong>d of cyber secuity company .</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n<!-- /wp:paragraph -->', 'About', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2022-04-19 04:55:45', '2022-04-19 04:55:45', '', 18, 'http://localhost/wordpress/?p=84', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(85, 1, '2022-04-19 04:56:47', '2022-04-19 04:56:47', '<!-- wp:image {\"id\":62,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/wordpress/wp-content/uploads/2022/04/5.jpg\" alt=\"\" class=\"wp-image-62\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>We Started a journy towards a digital eras in fiel<strong>d of cyber secuity company .</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n<!-- /wp:paragraph -->', 'About', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2022-04-19 04:56:47', '2022-04-19 04:56:47', '', 18, 'http://localhost/wordpress/?p=85', 0, 'revision', '', 0),
(86, 1, '2022-04-19 04:57:20', '2022-04-19 04:57:20', '<!-- wp:image {\"id\":62,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/wordpress/wp-content/uploads/2022/04/5.jpg\" alt=\"\" class=\"wp-image-62\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>We Started a journy towards a digital eras in fiel<strong>d of cyber secuity company .</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n<!-- /wp:paragraph -->', 'About', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2022-04-19 04:57:20', '2022-04-19 04:57:20', '', 18, 'http://localhost/wordpress/?p=86', 0, 'revision', '', 0),
(89, 1, '2022-04-28 08:07:33', '2022-04-28 08:07:33', '<!-- wp:paragraph -->\n<p>We Started a journy towards a digital eras in fiel<strong>d of cyber secuity company .</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n<!-- /wp:paragraph -->', 'About', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2022-04-28 08:07:33', '2022-04-28 08:07:33', '', 18, 'http://localhost/wordpress/?p=89', 0, 'revision', '', 0),
(90, 1, '2022-04-28 08:08:14', '2022-04-28 08:08:14', '<!-- wp:paragraph -->\n<p>We Started a journy towards a digital eras in fiel<strong>d of cyber secuity company .</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n<!-- /wp:paragraph -->', 'About', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2022-04-28 08:08:14', '2022-04-28 08:08:14', '', 18, 'http://localhost/wordpress/?p=90', 0, 'revision', '', 0),
(91, 1, '2022-04-28 08:08:54', '2022-04-28 08:08:54', '<!-- wp:paragraph -->\n<p>We Started a journy towards a digital eras in fiel<strong>d of cyber secuity company .</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>m used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n<!-- /wp:paragraph -->', 'About', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2022-04-28 08:08:54', '2022-04-28 08:08:54', '', 18, 'http://localhost/wordpress/?p=91', 0, 'revision', '', 0),
(93, 1, '2022-04-28 08:15:10', '2022-04-28 08:15:10', '', 'qr', '', 'inherit', 'open', 'closed', '', 'qr', '', '', '2022-04-28 08:15:10', '2022-04-28 08:15:10', '', 34, 'http://localhost/wordpress/wp-content/uploads/2022/04/qr.png', 0, 'attachment', 'image/png', 0),
(95, 1, '2022-04-28 08:18:54', '2022-04-28 08:18:54', '', 'kt_01_background_image.jpg', '', 'inherit', 'open', 'closed', '', 'kt_01_background_image-jpg', '', '', '2022-04-28 08:18:54', '2022-04-28 08:18:54', '', 0, 'http://localhost/wordpress/wp-content/uploads/2022/04/kt_01_background_image.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2022-04-28 08:20:46', '2022-04-28 08:20:46', '<!-- wp:kadence/rowlayout {\"uniqueID\":\"_78bb21-4c\",\"columns\":1,\"colLayout\":\"equal\",\"minHeight\":500,\"maxWidth\":2000,\"topPadding\":17,\"bottomPadding\":0,\"bgImg\":\"http://localhost/wordpress/wp-content/uploads/2022/04/kt_01_background_image.jpg\",\"overlay\":\"#008c9e\",\"overlayOpacity\":60,\"overlayBlendMode\":\"normal\",\"blockAlignment\":\"full\",\"verticalAlignment\":\"middle\"} -->\n<div class=\"wp-block-kadence-rowlayout alignnone\"><div id=\"kt-layout-id_78bb21-4c\" class=\"kt-row-layout-inner kt-row-has-bg kt-layout-id_78bb21-4c\"><div class=\"kt-row-layout-overlay kt-row-overlay-normal\"></div><div class=\"kt-row-column-wrap kt-has-1-columns kt-gutter-default kt-v-gutter-default kt-row-valign-middle kt-row-layout-equal kt-tab-layout-inherit kt-m-colapse-left-to-right kt-mobile-layout-row\"><!-- wp:kadence/column {\"uniqueID\":\"_6d7851-fe\"} -->\n<div class=\"wp-block-kadence-column inner-column-1 kadence-column_6d7851-fe\"><div class=\"kt-inside-inner-col\"><!-- wp:kadence/advancedheading {\"uniqueID\":\"_ce2a98-b5\",\"align\":\"center\",\"color\":\"#fff\",\"size\":3.5,\"sizeType\":\"em\",\"lineHeight\":1.5,\"lineType\":\"em\",\"mobileSize\":2.8,\"markSize\":[\"\",\"\",\"\"],\"markLineHeight\":[\"\",\"\",\"\"],\"markPadding\":[0,0,0,0]} -->\n<h2 class=\"kt-adv-heading_ce2a98-b5 wp-block-kadence-advancedheading\" data-kb-block=\"kb-adv-heading_ce2a98-b5\">Lets Connect!</h2>\n<!-- /wp:kadence/advancedheading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"white\"} -->\n<p class=\"has-text-align-center has-white-color has-text-color\">we’d love to hear your feedback or answer any questions you may have.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:kadence/advancedbtn {\"uniqueID\":\"_68e156-6f\",\"btns\":[{\"text\":[\"Contact us\"],\"link\":\"https://themes.kadencethemes.com/ascend-5/contact/\",\"target\":\"_self\",\"size\":18,\"paddingBT\":\"\",\"paddingLR\":\"\",\"color\":\"#fff\",\"background\":\"transparent\",\"border\":\"#fff\",\"borderRadius\":3,\"borderWidth\":2,\"colorHover\":\"#fff\",\"backgroundHover\":\"#008c9e\",\"borderHover\":\"#008c9e\",\"icon\":\"\",\"iconSide\":\"right\",\"iconHover\":false,\"btnSize\":\"custom\"}]} -->\n<div class=\"wp-block-kadence-advancedbtn kt-btn-align-center kt-btn-tablet-align-inherit kt-btn-mobile-align-inherit kt-btns-wrap kt-btns_68e156-6f\"><div class=\"kt-btn-wrap kt-btn-wrap-0\"><a class=\"kt-button button kt-btn-0-action kt-btn-size-custom kt-btn-style-basic kt-btn-svg-show-always kt-btn-has-text-true kt-btn-has-svg-false\" href=\"https://themes.kadencethemes.com/ascend-5/contact/\" style=\"border-radius:3px;border-width:2px\"><span class=\"kt-btn-inner-text\">Contact us</span></a></div></div>\n<!-- /wp:kadence/advancedbtn --></div></div>\n<!-- /wp:kadence/column --></div></div></div>\n<!-- /wp:kadence/rowlayout -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:gallery {\"linkTo\":\"none\"} -->\n<figure class=\"wp-block-gallery has-nested-images columns-default is-cropped\"><!-- wp:image {\"id\":60,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2022/04/7.jpg\" alt=\"\" class=\"wp-image-60\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":61,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2022/04/6.jpg\" alt=\"\" class=\"wp-image-61\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":62,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2022/04/5.jpg\" alt=\"\" class=\"wp-image-62\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":63,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2022/04/4.jpg\" alt=\"\" class=\"wp-image-63\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":64,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2022/04/3.jpg\" alt=\"\" class=\"wp-image-64\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":65,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2022/04/2.png\" alt=\"\" class=\"wp-image-65\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":66,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2022/04/1.jpg\" alt=\"\" class=\"wp-image-66\"/></figure>\n<!-- /wp:image --></figure>\n<!-- /wp:gallery -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2022-04-28 08:20:46', '2022-04-28 08:20:46', '', 11, 'http://localhost/wordpress/?p=96', 0, 'revision', '', 0),
(98, 1, '2022-04-28 08:26:28', '2022-04-28 08:26:28', '<!-- wp:kadence/rowlayout {\"uniqueID\":\"_78bb21-4c\",\"columns\":1,\"colLayout\":\"equal\",\"minHeight\":500,\"maxWidth\":2000,\"topPadding\":17,\"bottomPadding\":0,\"bgImg\":\"http://localhost/wordpress/wp-content/uploads/2022/04/kt_01_background_image.jpg\",\"overlay\":\"#008c9e\",\"overlayOpacity\":60,\"overlayBlendMode\":\"normal\",\"blockAlignment\":\"full\",\"verticalAlignment\":\"middle\"} -->\n<div class=\"wp-block-kadence-rowlayout alignnone\"><div id=\"kt-layout-id_78bb21-4c\" class=\"kt-row-layout-inner kt-row-has-bg kt-layout-id_78bb21-4c\"><div class=\"kt-row-layout-overlay kt-row-overlay-normal\"></div><div class=\"kt-row-column-wrap kt-has-1-columns kt-gutter-default kt-v-gutter-default kt-row-valign-middle kt-row-layout-equal kt-tab-layout-inherit kt-m-colapse-left-to-right kt-mobile-layout-row\"><!-- wp:kadence/column {\"uniqueID\":\"_6d7851-fe\"} -->\n<div class=\"wp-block-kadence-column inner-column-1 kadence-column_6d7851-fe\"><div class=\"kt-inside-inner-col\"><!-- wp:kadence/advancedheading {\"uniqueID\":\"_3a2a39-4e\",\"align\":\"center\",\"color\":\"#fff\",\"size\":3.5,\"sizeType\":\"em\",\"lineHeight\":1.5,\"lineType\":\"em\",\"mobileSize\":2.8,\"markSize\":[\"\",\"\",\"\"],\"markLineHeight\":[\"\",\"\",\"\"],\"markPadding\":[0,0,0,0]} -->\n<h2 class=\"kt-adv-heading_3a2a39-4e wp-block-kadence-advancedheading\" data-kb-block=\"kb-adv-heading_3a2a39-4e\">Lets Connect!</h2>\n<!-- /wp:kadence/advancedheading -->\n\n<!-- wp:paragraph -->\n<p>                                                 <mark style=\"background-color:rgba(0, 0, 0, 0)\" class=\"has-inline-color has-white-color\">Hire us to secure your Bussness </mark></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:kadence/advancedbtn {\"uniqueID\":\"_68e156-6f\",\"btns\":[{\"text\":[\"Contact us\"],\"link\":\"http://localhost/wordpress/contact/\",\"target\":\"_self\",\"size\":18,\"paddingBT\":\"\",\"paddingLR\":\"\",\"color\":\"#fff\",\"background\":\"transparent\",\"border\":\"#fff\",\"borderRadius\":3,\"borderWidth\":2,\"colorHover\":\"#fff\",\"backgroundHover\":\"#008c9e\",\"borderHover\":\"#008c9e\",\"icon\":\"\",\"iconSide\":\"right\",\"iconHover\":false,\"btnSize\":\"custom\"}]} -->\n<div class=\"wp-block-kadence-advancedbtn kt-btn-align-center kt-btn-tablet-align-inherit kt-btn-mobile-align-inherit kt-btns-wrap kt-btns_68e156-6f\"><div class=\"kt-btn-wrap kt-btn-wrap-0\"><a class=\"kt-button button kt-btn-0-action kt-btn-size-custom kt-btn-style-basic kt-btn-svg-show-always kt-btn-has-text-true kt-btn-has-svg-false\" href=\"http://localhost/wordpress/contact/\" style=\"border-radius:3px;border-width:2px\"><span class=\"kt-btn-inner-text\">Contact us</span></a></div></div>\n<!-- /wp:kadence/advancedbtn --></div></div>\n<!-- /wp:kadence/column --></div></div></div>\n<!-- /wp:kadence/rowlayout -->\n\n<!-- wp:gallery {\"linkTo\":\"none\"} -->\n<figure class=\"wp-block-gallery has-nested-images columns-default is-cropped\"><!-- wp:image {\"id\":60,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2022/04/7.jpg\" alt=\"\" class=\"wp-image-60\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":61,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2022/04/6.jpg\" alt=\"\" class=\"wp-image-61\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":62,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2022/04/5.jpg\" alt=\"\" class=\"wp-image-62\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":63,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2022/04/4.jpg\" alt=\"\" class=\"wp-image-63\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":64,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2022/04/3.jpg\" alt=\"\" class=\"wp-image-64\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":65,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2022/04/2.png\" alt=\"\" class=\"wp-image-65\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":66,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2022/04/1.jpg\" alt=\"\" class=\"wp-image-66\"/></figure>\n<!-- /wp:image --></figure>\n<!-- /wp:gallery -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2022-04-28 08:26:28', '2022-04-28 08:26:28', '', 11, 'http://localhost/wordpress/?p=98', 0, 'revision', '', 0),
(99, 1, '2022-04-28 08:27:12', '2022-04-28 08:27:12', '<!-- wp:kadence/rowlayout {\"uniqueID\":\"_78bb21-4c\",\"columns\":1,\"colLayout\":\"equal\",\"minHeight\":500,\"maxWidth\":2000,\"topPadding\":17,\"bottomPadding\":0,\"bgImg\":\"http://localhost/wordpress/wp-content/uploads/2022/04/kt_01_background_image.jpg\",\"overlay\":\"#008c9e\",\"overlayOpacity\":60,\"overlayBlendMode\":\"normal\",\"blockAlignment\":\"full\",\"verticalAlignment\":\"middle\"} -->\n<div class=\"wp-block-kadence-rowlayout alignnone\"><div id=\"kt-layout-id_78bb21-4c\" class=\"kt-row-layout-inner kt-row-has-bg kt-layout-id_78bb21-4c\"><div class=\"kt-row-layout-overlay kt-row-overlay-normal\"></div><div class=\"kt-row-column-wrap kt-has-1-columns kt-gutter-default kt-v-gutter-default kt-row-valign-middle kt-row-layout-equal kt-tab-layout-inherit kt-m-colapse-left-to-right kt-mobile-layout-row\"><!-- wp:kadence/column {\"uniqueID\":\"_6d7851-fe\"} -->\n<div class=\"wp-block-kadence-column inner-column-1 kadence-column_6d7851-fe\"><div class=\"kt-inside-inner-col\"><!-- wp:kadence/advancedheading {\"uniqueID\":\"_3a2a39-4e\",\"align\":\"center\",\"color\":\"#fff\",\"size\":3.5,\"sizeType\":\"em\",\"lineHeight\":1.5,\"lineType\":\"em\",\"mobileSize\":2.8,\"markSize\":[\"\",\"\",\"\"],\"markLineHeight\":[\"\",\"\",\"\"],\"markPadding\":[0,0,0,0]} -->\n<h2 class=\"kt-adv-heading_3a2a39-4e wp-block-kadence-advancedheading\" data-kb-block=\"kb-adv-heading_3a2a39-4e\">Lets Connect!</h2>\n<!-- /wp:kadence/advancedheading -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">                                                 <mark style=\"background-color:rgba(0, 0, 0, 0)\" class=\"has-inline-color has-white-color\">Hire us to secure your Bussness </mark></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:kadence/advancedbtn {\"uniqueID\":\"_68e156-6f\",\"btns\":[{\"text\":[\"Contact us\"],\"link\":\"http://localhost/wordpress/contact/\",\"target\":\"_self\",\"size\":18,\"paddingBT\":\"\",\"paddingLR\":\"\",\"color\":\"#fff\",\"background\":\"transparent\",\"border\":\"#fff\",\"borderRadius\":3,\"borderWidth\":2,\"colorHover\":\"#fff\",\"backgroundHover\":\"#008c9e\",\"borderHover\":\"#008c9e\",\"icon\":\"\",\"iconSide\":\"right\",\"iconHover\":false,\"btnSize\":\"custom\"}]} -->\n<div class=\"wp-block-kadence-advancedbtn kt-btn-align-center kt-btn-tablet-align-inherit kt-btn-mobile-align-inherit kt-btns-wrap kt-btns_68e156-6f\"><div class=\"kt-btn-wrap kt-btn-wrap-0\"><a class=\"kt-button button kt-btn-0-action kt-btn-size-custom kt-btn-style-basic kt-btn-svg-show-always kt-btn-has-text-true kt-btn-has-svg-false\" href=\"http://localhost/wordpress/contact/\" style=\"border-radius:3px;border-width:2px\"><span class=\"kt-btn-inner-text\">Contact us</span></a></div></div>\n<!-- /wp:kadence/advancedbtn --></div></div>\n<!-- /wp:kadence/column --></div></div></div>\n<!-- /wp:kadence/rowlayout -->\n\n<!-- wp:gallery {\"linkTo\":\"none\"} -->\n<figure class=\"wp-block-gallery has-nested-images columns-default is-cropped\"><!-- wp:image {\"id\":60,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2022/04/7.jpg\" alt=\"\" class=\"wp-image-60\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":61,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2022/04/6.jpg\" alt=\"\" class=\"wp-image-61\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":62,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2022/04/5.jpg\" alt=\"\" class=\"wp-image-62\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":63,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2022/04/4.jpg\" alt=\"\" class=\"wp-image-63\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":64,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2022/04/3.jpg\" alt=\"\" class=\"wp-image-64\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":65,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2022/04/2.png\" alt=\"\" class=\"wp-image-65\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":66,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2022/04/1.jpg\" alt=\"\" class=\"wp-image-66\"/></figure>\n<!-- /wp:image --></figure>\n<!-- /wp:gallery -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2022-04-28 08:27:12', '2022-04-28 08:27:12', '', 11, 'http://localhost/wordpress/?p=99', 0, 'revision', '', 0),
(100, 1, '2022-04-28 08:28:00', '2022-04-28 08:28:00', '<!-- wp:kadence/rowlayout {\"uniqueID\":\"_78bb21-4c\",\"columns\":1,\"colLayout\":\"equal\",\"minHeight\":500,\"maxWidth\":2000,\"topPadding\":17,\"bottomPadding\":0,\"bgImg\":\"http://localhost/wordpress/wp-content/uploads/2022/04/kt_01_background_image.jpg\",\"overlay\":\"#008c9e\",\"overlayOpacity\":60,\"overlayBlendMode\":\"normal\",\"blockAlignment\":\"full\",\"verticalAlignment\":\"middle\"} -->\n<div class=\"wp-block-kadence-rowlayout alignnone\"><div id=\"kt-layout-id_78bb21-4c\" class=\"kt-row-layout-inner kt-row-has-bg kt-layout-id_78bb21-4c\"><div class=\"kt-row-layout-overlay kt-row-overlay-normal\"></div><div class=\"kt-row-column-wrap kt-has-1-columns kt-gutter-default kt-v-gutter-default kt-row-valign-middle kt-row-layout-equal kt-tab-layout-inherit kt-m-colapse-left-to-right kt-mobile-layout-row\"><!-- wp:kadence/column {\"uniqueID\":\"_6d7851-fe\"} -->\n<div class=\"wp-block-kadence-column inner-column-1 kadence-column_6d7851-fe\"><div class=\"kt-inside-inner-col\"><!-- wp:kadence/advancedheading {\"uniqueID\":\"_3a2a39-4e\",\"align\":\"center\",\"color\":\"#fff\",\"size\":3.5,\"sizeType\":\"em\",\"lineHeight\":1.5,\"lineType\":\"em\",\"mobileSize\":2.8,\"markSize\":[\"\",\"\",\"\"],\"markLineHeight\":[\"\",\"\",\"\"],\"markPadding\":[0,0,0,0]} -->\n<h2 class=\"kt-adv-heading_3a2a39-4e wp-block-kadence-advancedheading\" data-kb-block=\"kb-adv-heading_3a2a39-4e\">Lets Connect!</h2>\n<!-- /wp:kadence/advancedheading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:kadence/advancedbtn {\"uniqueID\":\"_68e156-6f\",\"btns\":[{\"text\":[\"Contact us\"],\"link\":\"http://localhost/wordpress/contact/\",\"target\":\"_self\",\"size\":18,\"paddingBT\":\"\",\"paddingLR\":\"\",\"color\":\"#fff\",\"background\":\"transparent\",\"border\":\"#fff\",\"borderRadius\":3,\"borderWidth\":2,\"colorHover\":\"#fff\",\"backgroundHover\":\"#008c9e\",\"borderHover\":\"#008c9e\",\"icon\":\"\",\"iconSide\":\"right\",\"iconHover\":false,\"btnSize\":\"custom\"}]} -->\n<div class=\"wp-block-kadence-advancedbtn kt-btn-align-center kt-btn-tablet-align-inherit kt-btn-mobile-align-inherit kt-btns-wrap kt-btns_68e156-6f\"><div class=\"kt-btn-wrap kt-btn-wrap-0\"><a class=\"kt-button button kt-btn-0-action kt-btn-size-custom kt-btn-style-basic kt-btn-svg-show-always kt-btn-has-text-true kt-btn-has-svg-false\" href=\"http://localhost/wordpress/contact/\" style=\"border-radius:3px;border-width:2px\"><span class=\"kt-btn-inner-text\">Contact us</span></a></div></div>\n<!-- /wp:kadence/advancedbtn --></div></div>\n<!-- /wp:kadence/column --></div></div></div>\n<!-- /wp:kadence/rowlayout -->\n\n<!-- wp:gallery {\"linkTo\":\"none\"} -->\n<figure class=\"wp-block-gallery has-nested-images columns-default is-cropped\"><!-- wp:image {\"id\":60,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2022/04/7.jpg\" alt=\"\" class=\"wp-image-60\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":61,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2022/04/6.jpg\" alt=\"\" class=\"wp-image-61\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":62,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2022/04/5.jpg\" alt=\"\" class=\"wp-image-62\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":63,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2022/04/4.jpg\" alt=\"\" class=\"wp-image-63\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":64,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2022/04/3.jpg\" alt=\"\" class=\"wp-image-64\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":65,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/uploads/2022/04/2.png\" alt=\"\" class=\"wp-image-65\"/></figure>\n<!-- /wp:image --></figure>\n<!-- /wp:gallery -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2022-04-28 08:28:00', '2022-04-28 08:28:00', '', 11, 'http://localhost/wordpress/?p=100', 0, 'revision', '', 0),
(101, 1, '2022-04-28 08:29:24', '2022-04-28 08:29:24', '', 'qr-1', '', 'inherit', 'open', 'closed', '', 'qr-1', '', '', '2022-04-28 08:29:24', '2022-04-28 08:29:24', '', 34, 'http://localhost/wordpress/wp-content/uploads/2022/04/qr-1.png', 0, 'attachment', 'image/png', 0),
(103, 1, '2022-04-28 08:33:51', '2022-04-28 08:33:51', '<!-- wp:kadence/rowlayout {\"uniqueID\":\"_8980ff-0b\",\"colLayout\":\"right-golden\"} -->\n<div class=\"wp-block-kadence-rowlayout alignnone\"><div id=\"kt-layout-id_8980ff-0b\" class=\"kt-row-layout-inner kt-layout-id_8980ff-0b\"><div class=\"kt-row-column-wrap kt-has-2-columns kt-gutter-default kt-v-gutter-default kt-row-valign-top kt-row-layout-right-golden kt-tab-layout-inherit kt-m-colapse-left-to-right kt-mobile-layout-row\"><!-- wp:kadence/column {\"uniqueID\":\"_74cbb2-0c\"} -->\n<div class=\"wp-block-kadence-column inner-column-1 kadence-column_74cbb2-0c\"><div class=\"kt-inside-inner-col\"><!-- wp:paragraph -->\n<p><mark style=\"background-color:rgba(0, 0, 0, 0);color:#cb1b1b\" class=\"has-inline-color\">Donate us </mark></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>help us to do more for you </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>by just donating your funds .</p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:kadence/column -->\n\n<!-- wp:kadence/column {\"id\":2,\"uniqueID\":\"_12799c-d0\"} -->\n<div class=\"wp-block-kadence-column inner-column-2 kadence-column_12799c-d0\"><div class=\"kt-inside-inner-col\"><!-- wp:image {\"align\":\"center\",\"id\":101,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-full\"><img src=\"http://localhost/wordpress/wp-content/uploads/2022/04/qr-1.png\" alt=\"\" class=\"wp-image-101\"/></figure></div>\n<!-- /wp:image --></div></div>\n<!-- /wp:kadence/column --></div></div></div>\n<!-- /wp:kadence/rowlayout -->', 'donate', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2022-04-28 08:33:51', '2022-04-28 08:33:51', '', 34, 'http://localhost/wordpress/?p=103', 0, 'revision', '', 0),
(105, 1, '2022-07-05 16:30:55', '2022-07-05 16:30:55', '<!-- wp:paragraph -->\n<p>hciconfig -a</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>hciconfig hci0 up</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Bluetooth Hacking', '', 'publish', 'open', 'open', '', 'bluetooth-hacking', '', '', '2022-07-05 16:31:05', '2022-07-05 16:31:05', '', 0, 'http://localhost/wordpress/?p=105', 0, 'post', '', 0),
(106, 1, '2022-07-05 16:29:19', '2022-07-05 16:29:19', '', '18', '', 'inherit', 'open', 'closed', '', '18', '', '', '2022-07-05 16:29:19', '2022-07-05 16:29:19', '', 105, 'http://localhost/wordpress/wp-content/uploads/2022/07/18.png', 0, 'attachment', 'image/png', 0),
(107, 1, '2022-07-05 16:29:22', '2022-07-05 16:29:22', '', '17', '', 'inherit', 'open', 'closed', '', '17', '', '', '2022-07-05 16:29:22', '2022-07-05 16:29:22', '', 105, 'http://localhost/wordpress/wp-content/uploads/2022/07/17.png', 0, 'attachment', 'image/png', 0),
(108, 1, '2022-07-05 16:30:11', '2022-07-05 16:30:11', '', '16', '', 'inherit', 'open', 'closed', '', '16', '', '', '2022-07-05 16:30:11', '2022-07-05 16:30:11', '', 105, 'http://localhost/wordpress/wp-content/uploads/2022/07/16.jpg', 0, 'attachment', 'image/jpeg', 0),
(109, 1, '2022-07-05 16:30:25', '2022-07-05 16:30:25', '', '15', '', 'inherit', 'open', 'closed', '', '15', '', '', '2022-07-05 16:30:25', '2022-07-05 16:30:25', '', 105, 'http://localhost/wordpress/wp-content/uploads/2022/07/15.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2022-07-05 16:30:27', '2022-07-05 16:30:27', '', '14', '', 'inherit', 'open', 'closed', '', '14', '', '', '2022-07-05 16:30:27', '2022-07-05 16:30:27', '', 105, 'http://localhost/wordpress/wp-content/uploads/2022/07/14.png', 0, 'attachment', 'image/png', 0),
(111, 1, '2022-07-05 16:30:29', '2022-07-05 16:30:29', '', '13', '', 'inherit', 'open', 'closed', '', '13', '', '', '2022-07-05 16:30:29', '2022-07-05 16:30:29', '', 105, 'http://localhost/wordpress/wp-content/uploads/2022/07/13.png', 0, 'attachment', 'image/png', 0),
(112, 1, '2022-07-05 16:30:31', '2022-07-05 16:30:31', '', '11', '', 'inherit', 'open', 'closed', '', '11', '', '', '2022-07-05 16:30:31', '2022-07-05 16:30:31', '', 105, 'http://localhost/wordpress/wp-content/uploads/2022/07/11.jpg', 0, 'attachment', 'image/jpeg', 0),
(113, 1, '2022-07-05 16:30:37', '2022-07-05 16:30:37', '', '10', '', 'inherit', 'open', 'closed', '', '10', '', '', '2022-07-05 16:30:37', '2022-07-05 16:30:37', '', 105, 'http://localhost/wordpress/wp-content/uploads/2022/07/10.jpg', 0, 'attachment', 'image/jpeg', 0),
(114, 1, '2022-07-05 16:30:55', '2022-07-05 16:30:55', '<!-- wp:paragraph -->\n<p>hciconfig -a</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>hciconfig hci0 up</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Bluetooth Hacking', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2022-07-05 16:30:55', '2022-07-05 16:30:55', '', 105, 'http://localhost/wordpress/?p=114', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'virtue', 'virtue', 0),
(3, 'second', 'second', 0),
(4, 'main', 'main', 0),
(5, 'Website', 'website', 0),
(6, 'Network', 'network', 0),
(7, 'Location Tracking', 'location-tracking', 0),
(8, 'Phishing', 'phishing', 0),
(9, 'Fun type', 'fun-type', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(12, 2, 0),
(22, 3, 0),
(23, 3, 0),
(24, 3, 0),
(25, 3, 0),
(37, 4, 0),
(38, 4, 0),
(72, 1, 0),
(72, 8, 0),
(75, 1, 0),
(75, 7, 0),
(77, 1, 0),
(77, 5, 0),
(79, 1, 0),
(79, 6, 0),
(105, 9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 4),
(2, 2, 'wp_theme', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 4),
(4, 4, 'nav_menu', '', 0, 2),
(5, 5, 'category', '', 0, 1),
(6, 6, 'category', '', 0, 1),
(7, 7, 'category', '', 0, 1),
(8, 8, 'category', '', 0, 1),
(9, 9, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"73ff89de31eb72d9a9e53f22f2d80f2e0dcfec7c2d7d6a120c5ddf017d647d12\";a:4:{s:10:\"expiration\";i:1657210906;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:80:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0\";s:5:\"login\";i:1657038106;}}'),
(17, 1, 'wp_user-settings', 'libraryContent=browse&ampmfold=f'),
(18, 1, 'wp_user-settings-time', '1650265320'),
(19, 1, 'wp_dashboard_quick_press_last_post_id', '104'),
(20, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(21, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(23, 1, 'nav_menu_recently_edited', '4'),
(24, 2, 'nickname', 'Boss'),
(25, 2, 'first_name', 'Yash'),
(26, 2, 'last_name', ''),
(27, 2, 'description', ''),
(28, 2, 'rich_editing', 'true'),
(29, 2, 'syntax_highlighting', 'true'),
(30, 2, 'comment_shortcuts', 'false'),
(31, 2, 'admin_color', 'fresh'),
(32, 2, 'use_ssl', '0'),
(33, 2, 'show_admin_bar_front', 'true'),
(34, 2, 'locale', ''),
(35, 2, 'wp_capabilities', 'a:1:{s:6:\"editor\";b:1;}'),
(36, 2, 'wp_user_level', '7'),
(37, 2, 'dismissed_wp_pointers', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B/zwCe.95eG9j7Xyn7.rC6zUc9kwjl/', 'admin', 'yashdoifode@hotmail.com', 'http://localhost/wordpress', '2022-04-16 16:43:40', '', 0, 'admin'),
(2, 'Boss', '$P$B27cHftfKZ4Iv0gMhGJ3Tc1rJESBOJ0', 'boss', 'skidde7@gmail.com', '', '2022-04-18 06:11:08', '1650262269:$P$B0XdnyQ8A4cG17jyl1T3OurWvBB.mU0', 0, 'Yash');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_aiowps_debug_log`
--
ALTER TABLE `wp_aiowps_debug_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_aiowps_events`
--
ALTER TABLE `wp_aiowps_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_aiowps_failed_logins`
--
ALTER TABLE `wp_aiowps_failed_logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_aiowps_global_meta`
--
ALTER TABLE `wp_aiowps_global_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `wp_aiowps_login_activity`
--
ALTER TABLE `wp_aiowps_login_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_aiowps_login_lockdown`
--
ALTER TABLE `wp_aiowps_login_lockdown`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_aiowps_permanent_block`
--
ALTER TABLE `wp_aiowps_permanent_block`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_aiowps_debug_log`
--
ALTER TABLE `wp_aiowps_debug_log`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_aiowps_events`
--
ALTER TABLE `wp_aiowps_events`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_aiowps_failed_logins`
--
ALTER TABLE `wp_aiowps_failed_logins`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_aiowps_global_meta`
--
ALTER TABLE `wp_aiowps_global_meta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_aiowps_login_activity`
--
ALTER TABLE `wp_aiowps_login_activity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_aiowps_login_lockdown`
--
ALTER TABLE `wp_aiowps_login_lockdown`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_aiowps_permanent_block`
--
ALTER TABLE `wp_aiowps_permanent_block`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=816;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=358;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
