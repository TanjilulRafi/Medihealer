-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2022 at 10:15 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medihealer`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointmenttable`
--

CREATE TABLE `appointmenttable` (
  `id` bigint(20) NOT NULL,
  `firstname` longtext NOT NULL,
  `lastname` longtext NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `appfor` longtext NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointmenttable`
--

INSERT INTO `appointmenttable` (`id`, `firstname`, `lastname`, `phone`, `email`, `appfor`, `date`, `time`) VALUES
(1, 'test', 'user', '01773488082', 'thrafi16@gmail.com', 'admin', '2022-09-02', '10:52:00.000000'),
(2, 'tanjil', 'is', '01773488082', 'thrafi16@gmail.com', 'admin', '2022-09-02', '11:59:00.000000'),
(3, 'test1', 'user1', '1773488082', 'thrafi16@gmail.com', 'test_user', '2022-09-05', '09:00:00.000000'),
(4, 'test', 'user', '01773488082', '2020-1-60-214@std.ewubd.edu', 'admin', '2022-09-06', '12:50:00.000000'),
(5, 'fariha', 'naomi', '0122222222', 'fnaomi@gmail.com', 'Dr. Rafi', '2022-09-10', '14:41:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add doctor', 7, 'add_doctor'),
(26, 'Can change doctor', 7, 'change_doctor'),
(27, 'Can delete doctor', 7, 'delete_doctor'),
(28, 'Can view doctor', 7, 'view_doctor'),
(29, 'Can add appointment', 8, 'add_appointment'),
(30, 'Can change appointment', 8, 'change_appointment'),
(31, 'Can delete appointment', 8, 'delete_appointment'),
(32, 'Can view appointment', 8, 'view_appointment'),
(33, 'Can add profile', 9, 'add_profile'),
(34, 'Can change profile', 9, 'change_profile'),
(35, 'Can delete profile', 9, 'delete_profile'),
(36, 'Can view profile', 9, 'view_profile'),
(37, 'Can add patient', 10, 'add_patient'),
(38, 'Can change patient', 10, 'change_patient'),
(39, 'Can delete patient', 10, 'delete_patient'),
(40, 'Can view patient', 10, 'view_patient');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'MediHealer', 'appointment'),
(7, 'MediHealer', 'doctor'),
(10, 'MediHealer', 'patient'),
(9, 'MediHealer', 'profile'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'MediHealer', '0001_initial', '2022-09-03 09:51:38.969384'),
(2, 'MediHealer', '0002_doctor_confirmpassword_doctor_password_and_more', '2022-09-03 09:51:39.061160'),
(3, 'MediHealer', '0003_rename_username_doctor_username_and_more', '2022-09-03 09:51:39.186540'),
(4, 'MediHealer', '0004_remove_doctor_confirmpassword_resetpwdtokens', '2022-09-03 09:51:39.305094'),
(5, 'MediHealer', '0005_delete_resetpwdtokens', '2022-09-03 09:51:39.322069'),
(6, 'MediHealer', '0006_appointment', '2022-09-03 09:51:39.359968'),
(7, 'MediHealer', '0007_profile', '2022-09-03 09:51:39.464394'),
(8, 'MediHealer', '0008_doctor_address_doctor_medicalfrom_and_more', '2022-09-03 09:51:39.573348'),
(9, 'contenttypes', '0001_initial', '2022-09-03 09:51:39.622580'),
(10, 'auth', '0001_initial', '2022-09-03 09:51:40.366123'),
(11, 'admin', '0001_initial', '2022-09-03 09:51:40.545800'),
(12, 'admin', '0002_logentry_remove_auto_add', '2022-09-03 09:51:40.558767'),
(13, 'admin', '0003_logentry_add_action_flag_choices', '2022-09-03 09:51:40.573725'),
(14, 'contenttypes', '0002_remove_content_type_name', '2022-09-03 09:51:40.656770'),
(15, 'auth', '0002_alter_permission_name_max_length', '2022-09-03 09:51:40.767349'),
(16, 'auth', '0003_alter_user_email_max_length', '2022-09-03 09:51:40.792695'),
(17, 'auth', '0004_alter_user_username_opts', '2022-09-03 09:51:40.806675'),
(18, 'auth', '0005_alter_user_last_login_null', '2022-09-03 09:51:40.875535'),
(19, 'auth', '0006_require_contenttypes_0002', '2022-09-03 09:51:40.880684'),
(20, 'auth', '0007_alter_validators_add_error_messages', '2022-09-03 09:51:40.894797'),
(21, 'auth', '0008_alter_user_username_max_length', '2022-09-03 09:51:40.922723'),
(22, 'auth', '0009_alter_user_last_name_max_length', '2022-09-03 09:51:40.950648'),
(23, 'auth', '0010_alter_group_name_max_length', '2022-09-03 09:51:41.014480'),
(24, 'auth', '0011_update_proxy_permissions', '2022-09-03 09:51:41.032430'),
(25, 'auth', '0012_alter_user_first_name_max_length', '2022-09-03 09:51:41.057397'),
(26, 'sessions', '0001_initial', '2022-09-03 09:51:41.113193'),
(27, 'MediHealer', '0009_patient_doctor_specialized', '2022-09-03 14:31:43.401891');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `doctortable`
--

CREATE TABLE `doctortable` (
  `id` bigint(20) NOT NULL,
  `username` longtext NOT NULL,
  `FirstName` longtext NOT NULL,
  `LastName` longtext NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `password` varchar(1050) NOT NULL,
  `Address` longtext NOT NULL,
  `MedicalFrom` longtext NOT NULL,
  `WorkingMedical` longtext NOT NULL,
  `Specialized` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctortable`
--

INSERT INTO `doctortable` (`id`, `username`, `FirstName`, `LastName`, `Email`, `Phone`, `password`, `Address`, `MedicalFrom`, `WorkingMedical`, `Specialized`) VALUES
(6, 'Dr. Rafi', 'Tanjilul', 'Rafi', 'tr@gamil.com', '01711111111', 'pbkdf2_sha256$320000$GjWlHzOsNjR6goOd3kYL0i$IaQFpjN2qb/PAnwyoYA1ZV2k5EOhisrohB8Sc0JCA+I=', 'Nayapatan', 'Dhaka Medical', 'Dhaka Medical', 'Cardiology'),
(7, 'Fariha', 'Fariha', 'Naomi', 'naomi@gmail.com', '0191111111', 'pbkdf2_sha256$320000$cMyo0JO7w4MUAXW8FHVWSe$l4LMByEyMDmRPddJEWVW7zzILeX8iCxznPxvkRyEd0s=', 'Bashabo', 'Dhaka Medical', 'Dhaka Medical', 'Neurologist'),
(8, 'Zarin', 'Tasnim', 'Hassan', 'hassan@gmail.com', '0191111111', 'pbkdf2_sha256$320000$ezQbkkxKnrvALxnH4PDWBh$wCcMRzehNQOAHifY5V10eGVB3JfrBFEUCNCFHUpqWOw=', 'Aftabnagar', 'Dhaka Medical', 'Dhaka Medical', 'Radiologist'),
(9, 'Rafi', 'Tanjilul', 'Haq', 'haq@gmail.com', '0179999999', 'pbkdf2_sha256$320000$jG145Rz6QI7zZTYrE6hbre$SQ+9r3gEnLY9Z1n0yyB9q6ZQmd8ocfYdSLKT0WEzRoM=', 'Paltan', 'Dhaka Medical', 'Dhaka Medical', 'Psychiatrist'),
(10, 'dr test', 'test', 'user', 'tu@gmailcom', '0199999999', 'pbkdf2_sha256$320000$4clLCT1Vsp8hjAGTZGrPAj$MAj4VSEnSZy2oWsgVpkifNZvgWh+RMSQGJWKBjS/KIE=', 'Gulshan', 'Chittagong Medical', 'Dhaka Medical', 'Radiologist');

-- --------------------------------------------------------

--
-- Table structure for table `medihealer_profile`
--

CREATE TABLE `medihealer_profile` (
  `id` bigint(20) NOT NULL,
  `forget_password_token` varchar(1000) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patienttable`
--

CREATE TABLE `patienttable` (
  `id` bigint(20) NOT NULL,
  `username` longtext NOT NULL,
  `FirstName` longtext NOT NULL,
  `LastName` longtext NOT NULL,
  `Email` varchar(50) NOT NULL,
  `NID` varchar(20) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Address` longtext NOT NULL,
  `password` varchar(1050) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patienttable`
--

INSERT INTO `patienttable` (`id`, `username`, `FirstName`, `LastName`, `Email`, `NID`, `Phone`, `Address`, `password`) VALUES
(2, 'Rafi', 'Tanjilul', 'Haq', 'rafi@gamil.com', '2411252303', '0198888888', 'nayapaltan', 'pbkdf2_sha256$320000$7OPulndchSAiZ6a5E3gWdy$cRQRSzOqNdj2TT5mcE6QxxfzgDhiRyYVV8xbyPM+i2k='),
(3, 'user1', 'test1', 'user1', 'tuser@gmail.com', '2121212121', '019777777', 'Dhaka', 'pbkdf2_sha256$320000$6GN4qAtGvGXkjfJbOPaXjA$KZV+4AZH7C9K1vXp+lYnWseaL+HdgPrd/OqYf/afOY4='),
(4, 'user2', 'test2', 'user2', 'test2@gamil.com', '32323232323', '0188888888', 'paltan', 'pbkdf2_sha256$320000$77gn9ymUfBxy0yrmERw8pJ$mMRGJMVoAiPGfvyGPWkvOh9pvBYDslOqIs7Fy+LK+/g='),
(5, 'user3', 'test3', 'user3', 'test3@gamil.com', '828282282', '0198888888', 'Badda', 'pbkdf2_sha256$320000$zNGtIEPZnmXM0RwYuDwS5u$ZYSb4OnO/UgwV3lpnmGggdIBiaZk33X5Xh28LLmkIsw='),
(6, 'user4', 'test4', 'user4', 'test4@gamil.com', '0999999999', '01611111111', 'Shantinagar', 'pbkdf2_sha256$320000$n4URDIkwRu6FQsGtdJe6zL$/RA1l/FmIna5CN7SKBmsyQ4ctkU4k9kD58SFXcAQBv0=');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointmenttable`
--
ALTER TABLE `appointmenttable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `doctortable`
--
ALTER TABLE `doctortable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medihealer_profile`
--
ALTER TABLE `medihealer_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `patienttable`
--
ALTER TABLE `patienttable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointmenttable`
--
ALTER TABLE `appointmenttable`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `doctortable`
--
ALTER TABLE `doctortable`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `medihealer_profile`
--
ALTER TABLE `medihealer_profile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patienttable`
--
ALTER TABLE `patienttable`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `medihealer_profile`
--
ALTER TABLE `medihealer_profile`
  ADD CONSTRAINT `MediHealer_profile_user_id_a49c8adb_fk_DoctorTable_id` FOREIGN KEY (`user_id`) REFERENCES `doctortable` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
