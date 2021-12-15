-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2021 at 05:31 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sch3`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_title`
--

CREATE TABLE `account_title` (
  `id` int(11) NOT NULL,
  `account_title` varchar(100) NOT NULL,
  `category` varchar(20) NOT NULL,
  `description` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_title`
--

INSERT INTO `account_title` (`id`, `account_title`, `category`, `description`) VALUES
(1, 'Foodstuffs', 'Expense', ''),
(2, 'Tuition Fee', 'Income', ''),
(3, 'Meals Fee', 'Income', ''),
(4, 'Transport Fee', 'Income', ''),
(5, 'Assessment Fee', 'Income', ''),
(6, 'Co-curricular Fee', 'Income', ''),
(7, 'Other Fee', 'Income', 'Uniform, Diary, Interview'),
(8, 'Electricity & Water Bills', 'Expense', ''),
(9, 'Activity Bills', 'Expense', 'Swimming etc');

-- --------------------------------------------------------

--
-- Table structure for table `add_exam`
--

CREATE TABLE `add_exam` (
  `id` int(11) NOT NULL,
  `year` int(5) NOT NULL,
  `exam_title` varchar(100) NOT NULL,
  `start_date` varchar(30) NOT NULL,
  `class_id` int(11) NOT NULL,
  `total_time` varchar(10) NOT NULL,
  `publish` varchar(50) NOT NULL,
  `final` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_exam`
--

INSERT INTO `add_exam` (`id`, `year`, `exam_title`, `start_date`, `class_id`, `total_time`, `publish`, `final`, `status`) VALUES
(4, 2018, 'Test Exam 1', '09/06/2018', 1, '1 Hour 30 ', 'Publish', 'NoFinal', 'NoResult'),
(5, 2018, 'FInal Exam', '08/10/2018', 3, '30 Minute', 'Not Publish', 'Final', 'NoResult'),
(7, 2021, 'End-Term Exam', '14/12/2021', 11, '1 Hour 30 ', 'Not Publish', 'Final', 'NoResult');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `isbn_no` varchar(20) NOT NULL,
  `book_no` int(11) NOT NULL,
  `books_title` varchar(100) NOT NULL,
  `authore` varchar(150) NOT NULL,
  `category` varchar(100) NOT NULL,
  `edition` varchar(100) NOT NULL,
  `pages` int(11) NOT NULL,
  `language` varchar(30) NOT NULL,
  `uploderTitle` varchar(100) NOT NULL,
  `books_amount` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `issu_date` int(11) NOT NULL,
  `due_date` int(11) NOT NULL,
  `issu_member_no` int(11) NOT NULL,
  `cover_photo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `date`, `isbn_no`, `book_no`, `books_title`, `authore`, `category`, `edition`, `pages`, `language`, `uploderTitle`, `books_amount`, `status`, `issu_date`, `due_date`, `issu_member_no`, `cover_photo`) VALUES
(3, 1464559200, '978-3-16-148410-2', 20163, 'Book Test 3', 'Author Test 3', 'English', '16 th', 522, 'English', 'Headmaster', 3, 'Available', 0, 0, 0, '6583655141ea7c33d3981bbd7332c586.gif'),
(6, 1464559200, '978-3-16-148410-5', 20166, 'Book Test 6', 'Author Test 6', 'English', '10 th', 485, 'English', 'Headmaster', 6, 'Available', 0, 0, 0, '1d28dd98b150b33ad4a708a95031408a.gif');

-- --------------------------------------------------------

--
-- Table structure for table `books_category`
--

CREATE TABLE `books_category` (
  `id` int(11) NOT NULL,
  `category_creator` varchar(100) NOT NULL,
  `category_title` varchar(100) NOT NULL,
  `parent_category` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `books_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books_category`
--

INSERT INTO `books_category` (`id`, `category_creator`, `category_title`, `parent_category`, `description`, `books_amount`) VALUES
(1, 'Headmaster', 'English', '', '', 0),
(2, 'Headmaster', 'Story ', 'English', '', 0),
(5, 'Headmaster', 'poem', 'English', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `calender_events`
--

CREATE TABLE `calender_events` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `start_date` varchar(15) NOT NULL,
  `end_date` varchar(15) NOT NULL,
  `color` varchar(15) NOT NULL,
  `url` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `calender_events`
--

INSERT INTO `calender_events` (`id`, `title`, `start_date`, `end_date`, `color`, `url`, `user_id`) VALUES
(1, 'test', '05-05-2016', '06-05-2016', 'red', 'test.com', 1),
(2, 'Portal Launch Date', '20-12-2021', '20-12-2021', 'green', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `class_title` varchar(50) NOT NULL,
  `class_group` varchar(150) NOT NULL,
  `section` varchar(100) NOT NULL,
  `section_student_capacity` varchar(5) NOT NULL,
  `classCode` int(11) NOT NULL,
  `student_amount` int(11) NOT NULL,
  `attendance_percentices_daily` int(11) NOT NULL,
  `attend_percentise_yearly` int(11) NOT NULL,
  `month_fee` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `class_title`, `class_group`, `section`, `section_student_capacity`, `classCode`, `student_amount`, `attendance_percentices_daily`, `attend_percentise_yearly`, `month_fee`) VALUES
(11, 'Grade 3', 'Lower Primary', 'Grade 3', '10', 0, 5, 100, 100, ''),
(13, 'Grade 1', 'Lower Primary', 'Grade 1', '10', 2, 0, 0, 0, ''),
(14, 'Grade 2', 'Lower Primary', 'Grade 2', '10', 3, 0, 0, 0, ''),
(15, 'PP1', 'Nursery', 'PP1', '10', 4, 0, 0, 0, ''),
(16, 'PP2', 'Nursery', 'PP2', '10', 5, 0, 0, 0, ''),
(17, 'Creche', 'Play-Group', '', '10', 11, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `class_routine`
--

CREATE TABLE `class_routine` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section` varchar(100) NOT NULL,
  `day_title` varchar(50) NOT NULL,
  `subject` varchar(300) NOT NULL,
  `subject_teacher` varchar(200) NOT NULL,
  `start_time` varchar(30) NOT NULL,
  `end_time` varchar(30) NOT NULL,
  `room_number` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_routine`
--

INSERT INTO `class_routine` (`id`, `class_id`, `section`, `day_title`, `subject`, `subject_teacher`, `start_time`, `end_time`, `room_number`) VALUES
(1, 1, '', 'Sunday', 'AMAR BANGLA BOI', 'Willie B. Quint', '9.00am', '9.30', '101'),
(2, 1, '', 'Sunday', 'ENGLISH FOR TODAY', 'Fredrick V. Keyes', '9.31am', '10.00am', '101'),
(3, 1, '', 'Sunday', 'PRIMARY MATHEMATICS', 'mumar abboud', '10.01am', '10.30am', '101'),
(4, 1, '', 'Sunday', 'PRIMARY MATHEMATICS', 'mumar abboud', '10.01am', '10.30am', '101'),
(5, 2, '', 'Sunday', 'AMAR BANGLA BOI', 'Inayah Asfour', '9.00am', '9.30am', '102'),
(6, 2, '', 'Sunday', 'ENGLISH FOR TODAY', 'mumar abboud', '9.31am', '10.00am', '102'),
(7, 2, '', 'Sunday', 'PRIMARY MATHEMATICS', 'Fredrick V. Keyes', '10.01am', '10.30am', '102'),
(8, 3, '', 'Sunday', 'AMAR BANGLA BOI', 'Willie B. Quint', '9.00am', '9.30am', '103'),
(9, 3, '', 'Sunday', 'ENGLISH FOR TODAY', 'Fredrick V. Keyes', '9.31am', '10.00am', '103'),
(10, 3, '', 'Sunday', 'PRIMARY MATHEMATICS', 'mumar abboud', '10.01am', '10.30am', '103'),
(11, 3, '', 'Sunday', 'BANGLADESH AND GLOBAL STUDIES', 'Inayah Asfour', '10.30am', '11.00am', '103'),
(12, 3, '', 'Monday', 'ENGLISH FOR TODAY', 'Fredrick V. Keyes', '9.00am', '9.30', '103'),
(13, 3, '', 'Monday', 'PRIMARY MATHEMATICS', 'mumar abboud', '9.31am', '10.00am', '103'),
(14, 11, '', 'Monday', 'LANG', 'Teacher Martha', '08:30', '09:00', 'Grade 3 Cl'),
(15, 11, '', 'Monday', 'Math', 'Teacher Martha', '09:00', '09:30', 'Grade 3 Cl'),
(16, 11, '', 'Monday', 'BREAK TIME', 'Teacher Martha', '09:30', '10:00', 'Field'),
(17, 11, '', 'Monday', 'Literature', 'Teacher Martha', '10:00', '10:30', 'Grade 3 Cl'),
(18, 11, '', 'Monday', 'P.E', 'Teacher Martha', '10:30', '11:00', 'Field'),
(19, 11, '', 'Monday', 'BREAK TIME', 'Teacher Martha', '11:00', '11:30', 'Field'),
(20, 11, '', 'Monday', 'ENV', 'Teacher Martha', '11:30', '00:00', 'Grade 3 Cl'),
(21, 11, '', 'Monday', 'HSG', 'Teacher Martha', '12:00', '12:30', 'Grade 3 Cl'),
(22, 11, '', 'Monday', 'Creative Arts', 'Teacher Martha', '12:30', '13:00', 'Grade 3 Cl'),
(23, 11, '', 'Monday', 'LUNCH TIME', 'Teacher Martha', '13:00', '14:00', 'Dining Roo'),
(24, 11, '', 'Monday', 'Remedials / Home Work', 'Teacher Martha', '14:00', '15:00', 'Grade 3 Cl');

-- --------------------------------------------------------

--
-- Table structure for table `class_students`
--

CREATE TABLE `class_students` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `roll_number` int(11) DEFAULT NULL,
  `student_id` varchar(100) NOT NULL,
  `class_id` int(11) NOT NULL,
  `class_title` varchar(50) NOT NULL,
  `section` varchar(150) NOT NULL,
  `student_title` varchar(100) NOT NULL,
  `attendance_percentices_daily` int(11) NOT NULL,
  `optional_sub` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_students`
--

INSERT INTO `class_students` (`id`, `year`, `user_id`, `roll_number`, `student_id`, `class_id`, `class_title`, `section`, `student_title`, `attendance_percentices_daily`, `optional_sub`) VALUES
(1, 2018, 4, 1, '201601001', 1, 'Class 1', 'Section A,Section B,Section C,Section D', 'Benjamin D. Lampe', 100, ''),
(2, 2018, 12, 2, '201601002', 1, 'Class 1', 'Section A,Section B,Section C,Section D', 'Rahim Hasan', 100, ''),
(3, 2018, 13, 3, '201601003', 1, 'Class 1', 'Section A,Section B,Section C,Section D', 'Junayed Hak', 100, ''),
(4, 2018, 16, 4, '201601004', 1, 'Class 1', '', 'Razia Akture', 0, ''),
(5, 2018, 17, 1, '201602001', 2, 'Class 2', '', 'Abdullah  hossain', 100, ''),
(6, 2018, 18, 2, '201602002', 2, 'Class 2', '', 'Sujana Ahmed', 100, ''),
(7, 2018, 19, 3, '201602003', 2, 'Class 2', '', 'Mahmud Hasan', 100, ''),
(8, 2018, 20, 4, '201602004', 2, 'Class 2', '', 'Mahbuba Akter', 100, ''),
(9, 2018, 21, 5, '201602005', 2, 'Class 2', '', 'Irfan Hossain', 100, ''),
(10, 2018, 22, 6, '201602006', 2, 'Class 2', '', 'Imran Hasan', 100, ''),
(11, 2018, 23, 5, '201601005', 1, 'Class 1', '', 'Polash Sarder', 100, ''),
(12, 2018, 24, 6, '201601006', 1, 'Class 1', '', 'Sumon Akon', 0, ''),
(13, 2018, 25, 1, '201603001', 3, 'Class 3', '', 'Farjana Akter', 0, ''),
(14, 2018, 26, 2, '201603002', 3, 'Class 3', '', 'Akram Hossain', 100, ''),
(15, 2018, 27, 3, '201603003', 3, 'Class 3', '', 'Alamin Saeder', 100, ''),
(16, 2018, 28, 4, '201603004', 3, 'Class 3', '', 'Sabina Sumi', 100, ''),
(17, 2018, 29, 1, '201604001', 4, 'Class 4', '', 'Sanjida Hossain', 100, ''),
(18, 2018, 30, 2, '201604002', 4, 'Class 4', '', 'Kawser  Shikder', 100, ''),
(19, 2018, 31, 3, '201604003', 4, 'Class 4', '', 'Shohana Akter', 100, ''),
(20, 2018, 32, 4, '201604004', 4, 'Class 4', '', 'Juthi Khanam', 100, ''),
(21, 2018, 33, 1, '201605001', 5, 'Class 5', '', 'Tanjila Akter', 100, ''),
(22, 2018, 34, 2, '201605002', 5, 'Class 5', '', 'Nusrat Jahan', 100, ''),
(23, 2018, 35, 3, '201605003', 5, 'Class 5', '', 'Amina Akter', 100, ''),
(24, 2018, 36, 4, '201605004', 5, 'Class 5', '', 'Ebrahim Khondokar', 0, ''),
(25, 2018, 37, 5, '201605005', 5, 'Class 5', '', 'Mintu  Fokir', 0, ''),
(26, 2018, 38, 1, '201606001', 6, 'Class 6', 'Section A', 'Shohid Islam', 100, ''),
(27, 2018, 39, 2, '201606002', 6, 'Class 6', 'Section B', 'Khadija Akter', 100, ''),
(28, 2018, 40, 3, '201606003', 6, 'Class 6', 'Section A', 'Maruf Hossain', 100, ''),
(29, 2018, 41, 4, '201606004', 6, 'Class 6', 'Section B', 'Mitu  Akter', 100, ''),
(30, 2018, 42, 5, '201606005', 6, 'Class 6', 'Section A', 'Rayhan  Kebria', 0, ''),
(32, 2016, 44, 2, '201607002', 7, 'Class 7', 'Section A,Section B,Section C,Section D', 'Airin Akter', 0, ''),
(33, 2016, 45, 3, '201607003', 7, 'Class 7', '', 'Hemel Hossain', 0, ''),
(34, 2016, 46, 4, '201607004', 7, 'Class 7', '', 'Mou Akter', 0, ''),
(35, 2016, 47, 5, '201607005', 7, 'Class 7', '', 'Dedar  Hossain', 0, ''),
(36, 2016, 48, 6, '201607006', 7, 'Class 7', '', 'Samia Akter', 0, ''),
(37, 2016, 49, 1, '201608001', 8, 'Class 8', '', 'Al Mamun', 0, ''),
(38, 2016, 50, 2, '201608002', 8, 'Class 8', '', 'Jiniya Hoq', 0, ''),
(39, 2016, 51, 3, '201608003', 8, 'Class 8', '', 'Junayed Ahmed', 0, ''),
(40, 2016, 52, 4, '201608004', 8, 'Class 8', '', 'Priya Ahmed', 0, ''),
(41, 2016, 53, 5, '201608005', 8, 'Class 8', '', 'Mithu Khondokar', 0, ''),
(42, 2016, 54, 1, '201609001', 9, 'Class 9', '', 'Rasel Hossain', 0, ''),
(43, 2016, 56, 2, '201609002', 9, 'Class 9', '', 'Test Name', 0, ''),
(44, 2021, 59, 1, '202100001', 11, 'Grade 3', 'Grade 3', 'Remmy Baraka', 100, ''),
(45, 2021, 60, 2, '202100002', 11, 'Grade 3', '', 'Lisa Wanjiru', 100, ''),
(46, 2021, 61, 3, '202100003', 11, 'Grade 3', '', 'Abias Mutuku', 100, ''),
(47, 2021, 62, 4, '202100004', 11, 'Grade 3', 'Grade 3', 'Cecilia Wamuyu', 100, ''),
(48, 2021, 63, 5, '202100005', 11, 'Grade 3', 'Grade 3', 'Ruth Muthoni', 100, '');

-- --------------------------------------------------------

--
-- Table structure for table `class_subject`
--

CREATE TABLE `class_subject` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_title` varchar(100) NOT NULL,
  `group` varchar(100) NOT NULL,
  `subject_teacher` varchar(100) NOT NULL,
  `edition` varchar(100) NOT NULL,
  `writer_name` varchar(100) NOT NULL,
  `optional` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_subject`
--

INSERT INTO `class_subject` (`id`, `year`, `class_id`, `subject_title`, `group`, `subject_teacher`, `edition`, `writer_name`, `optional`) VALUES
(1, 2018, 1, 'AMAR BANGLA BOI', '', 'Willie B. Quint', '2016', 'NCTB', 0),
(2, 2018, 1, 'ENGLISH FOR TODAY', '', 'Fredrick V. Keyes', '2016', 'NCTB', 0),
(3, 2018, 1, 'PRIMARY MATHEMATICS', '', 'mumar abboud', '2016', 'NCTB', 0),
(4, 2018, 2, 'AMAR BANGLA BOI', '', 'Inayah Asfour', '2016', 'NCTB', 0),
(5, 2018, 2, 'ENGLISH FOR TODAY', '', 'mumar abboud', '2016', 'NCTB', 0),
(6, 2018, 2, 'PRIMARY MATHEMATICS', '', 'Fredrick V. Keyes', '2016', 'NCTB', 0),
(7, 2018, 2, 'PRIMARY MATHEMATICS', '', 'Fredrick V. Keyes', '2016', 'NCTB', 0),
(8, 2018, 3, 'AMAR BANGLA BOI', '', 'Willie B. Quint', '2016', 'NCTB', 0),
(9, 2018, 3, 'ENGLISH FOR TODAY', '', 'Fredrick V. Keyes', '2016', 'NCTB', 0),
(10, 2018, 3, 'PRIMARY MATHEMATICS', '', 'mumar abboud', '2016', 'NCTB', 0),
(11, 2018, 3, 'BANGLADESH AND GLOBAL STUDIES', '', 'Inayah Asfour', '2016', 'NCTB', 0),
(12, 2018, 3, 'PRIMARY SCIENCE', '', '', '2016', 'NCTB', 0),
(13, 2018, 3, 'ISLAM AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(14, 2018, 3, 'HINDU RELIGION AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(15, 2018, 3, 'BUDDIST RELIGION AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(16, 2018, 3, 'CHRIST RELIGION AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(17, 2018, 4, 'AMAR BANGLA BOI', '', '', '2016', 'NCTB', 0),
(18, 2018, 4, 'ENGLISH FOR TODAY', '', '', '2016', 'NCTB', 0),
(19, 2018, 4, 'PRIMARY MATHEMATICS', '', '', '2016', 'NCTB', 0),
(20, 2018, 4, 'BANGLADESH AND GLOBAL STUDIES', '', '', '2016', 'NCTB', 0),
(21, 2018, 4, 'PRIMARY SCIENCE', '', '', '2016', 'NCTB', 0),
(22, 2018, 4, 'ISLAM AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(23, 2018, 4, 'HINDU RELIGION AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(24, 2018, 4, 'BUDDIST RELIGION AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(25, 2018, 4, 'CHRIST RELIGION AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(26, 2018, 5, 'AMAR BANGLA BOI', '', '', '2016', 'NCTB', 0),
(27, 2018, 5, 'ENGLISH FOR TODAY', '', '', '2016', 'NCTB', 0),
(28, 2018, 5, 'PRIMARY MATHEMATICS', '', '', '2016', 'NCTB', 0),
(29, 2018, 5, 'BANGLADESH AND GLOBAL STUDIES', '', '', '2016', 'NCTB', 0),
(30, 2018, 5, 'PRIMARY SCIENCE', '', '', '2016', 'NCTB', 0),
(31, 2016, 5, 'ISLAM AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(32, 2016, 5, 'HINDU RELIGION AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(33, 2016, 5, 'BUDDIST RELIGION AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(34, 2016, 5, 'CHRIST RELIGION AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(35, 2016, 6, 'AMAR BANGLA BOI', '', '', '2016', 'NCTB', 0),
(36, 2016, 6, 'ENGLISH FOR TODAY', '', '', '2016', 'NCTB', 0),
(37, 2016, 6, 'PRIMARY MATHEMATICS', '', '', '2016', 'NCTB', 0),
(38, 2016, 6, 'BANGLADESH AND GLOBAL STUDIES', '', '', '2016', 'NCTB', 0),
(39, 2016, 6, 'PRIMARY SCIENCE', '', '', '2016', 'NCTB', 0),
(40, 2016, 6, 'ISLAM AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(41, 2016, 6, 'HINDU RELIGION AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(42, 2016, 6, 'BUDDIST RELIGION AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(43, 2016, 6, 'CHRIST RELIGION AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(44, 2016, 7, 'AMAR BANGLA BOI', '', '', '2016', 'NCTB', 0),
(45, 2016, 7, 'ENGLISH FOR TODAY', '', '', '2016', 'NCTB', 0),
(46, 2016, 7, 'PRIMARY MATHEMATICS', '', '', '2016', 'NCTB', 0),
(47, 2016, 7, 'BANGLADESH AND GLOBAL STUDIES', '', '', '2016', 'NCTB', 0),
(48, 2016, 7, 'PRIMARY SCIENCE', '', '', '2016', 'NCTB', 0),
(49, 2016, 7, 'ISLAM AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(50, 2016, 7, 'HINDU RELIGION AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(51, 2016, 7, 'BUDDIST RELIGION AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(52, 2016, 7, 'CHRIST RELIGION AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(53, 2016, 8, 'AMAR BANGLA BOI', '', '', '2016', 'NCTB', 0),
(54, 2016, 8, 'ENGLISH FOR TODAY', '', '', '2016', 'NCTB', 0),
(55, 2016, 8, 'PRIMARY MATHEMATICS', '', '', '2016', 'NCTB', 0),
(56, 2016, 8, 'ISLAM AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(57, 2016, 8, 'HINDU RELIGION AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(58, 2016, 8, 'BUDDIST RELIGION AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(59, 2016, 8, 'CHRIST RELIGION AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(60, 2016, 8, 'BANGLADESH AND GLOBAL STUDIES', '', '', '2016', 'NCTB', 0),
(61, 2016, 8, 'PRIMARY SCIENCE', '', '', '2016', 'NCTB', 0),
(62, 2016, 9, 'AMAR BANGLA BOI', '', '', '2016', 'NCTB', 0),
(63, 2016, 9, 'ENGLISH FOR TODAY', '', '', '2016', 'NCTB', 0),
(64, 2016, 9, 'PRIMARY MATHEMATICS', '', '', '2016', 'NCTB', 0),
(65, 2016, 9, 'BANGLADESH AND GLOBAL STUDIES', '', '', '2016', 'NCTB', 0),
(66, 2016, 9, 'PRIMARY SCIENCE', '', '', '2016', 'NCTB', 0),
(67, 2016, 9, 'ISLAM AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(68, 2016, 9, 'HINDU RELIGION AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(69, 2016, 9, 'BUDDIST RELIGION AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(70, 2016, 9, 'CHRIST RELIGION AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(71, 2016, 10, 'AMAR BANGLA BOI', '', '', '2016', 'NCTB', 0),
(72, 2016, 10, 'ENGLISH FOR TODAY', '', '', '2016', 'NCTB', 0),
(73, 2016, 10, 'PRIMARY MATHEMATICS', '', '', '2016', 'NCTB', 0),
(74, 2016, 10, 'BANGLADESH AND GLOBAL STUDIES', '', '', '2016', 'NCTB', 0),
(75, 2016, 10, 'ISLAM AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(76, 2016, 10, 'HINDU RELIGION AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(77, 2016, 10, 'BUDDIST RELIGION AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(78, 2016, 10, 'CHRIST RELIGION AND MORAL EDUCATION', '', '', '2016', 'NCTB', 0),
(79, 2016, 10, 'PRIMARY SCIENCE', '', '', '2016', 'NCTB', 0),
(80, 2016, 9, 'AGRICULTURE STUDIES', '', '', '2016', 'NCTB', 1),
(81, 2016, 10, 'AGRICULTURE STUDIES', '', '', '2016', 'NCTB', 1),
(82, 2016, 10, 'ARTS & CRAFTS', '', '', '2016', 'NCTB', 1),
(83, 2016, 10, 'ARTS & CRAFTS', '', '', '2016', 'NCTB', 1),
(84, 2016, 9, 'MUSIC', '', '', '2016', 'NCTB', 1),
(85, 2016, 10, 'MUSIC', '', '', '2016', 'NCTB', 1),
(86, 2021, 11, 'Kiswahili', '', '', '', '', 0),
(87, 2021, 11, 'Math', '', 'Teacher Martha', '', '', 0),
(88, 2021, 11, 'English', '', '', '', '', 0),
(89, 2021, 11, 'P.E', '', 'Teacher Martha', '', '', 0),
(90, 2021, 11, 'C.R.E', '', '', '', '', 0),
(91, 2021, 11, 'Creative Arts', '', 'Teacher Martha', '', '', 0),
(92, 2021, 11, 'Literature', '', 'Teacher Martha', '', '', 0),
(93, 2021, 11, 'ENV', '', 'Teacher Martha', '', '', 0),
(94, 2021, 11, 'HSG', '', 'Teacher Martha', '', '', 0),
(95, 2021, 11, 'BREAK TIME', '', 'Teacher Martha', '', 'St. Albans', 0),
(96, 2021, 11, 'LUNCH TIME', '', 'Teacher Martha', '', 'St. Albans', 0),
(97, 2021, 11, 'Remedials / Home Work', '', 'Teacher Martha', '', 'St. Albans', 0),
(98, 2021, 11, 'P.P.I', '', '', 'School Edition', 'St. Albans', 0),
(99, 2021, 11, 'LANG', '', 'Teacher Martha', 'School Edition', 'St. Albans', 0);

-- --------------------------------------------------------

--
-- Table structure for table `configuration`
--

CREATE TABLE `configuration` (
  `id` int(11) NOT NULL,
  `logo` varchar(150) NOT NULL,
  `time_zone` varchar(150) NOT NULL,
  `school_name` varchar(150) NOT NULL,
  `starting_year` varchar(50) NOT NULL,
  `headmaster_name` varchar(150) NOT NULL,
  `address` varchar(150) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `currenct` varchar(50) NOT NULL,
  `country` varchar(150) NOT NULL,
  `language` text NOT NULL,
  `msg_apai_email` varchar(100) NOT NULL,
  `msg_hash_number` varchar(100) NOT NULL,
  `msg_sender_title` varchar(100) NOT NULL,
  `countryPhonCode` varchar(5) NOT NULL,
  `t_a_s_p` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `configuration`
--

INSERT INTO `configuration` (`id`, `logo`, `time_zone`, `school_name`, `starting_year`, `headmaster_name`, `address`, `phone`, `email`, `currenct`, `country`, `language`, `msg_apai_email`, `msg_hash_number`, `msg_sender_title`, `countryPhonCode`, `t_a_s_p`) VALUES
(0, '', 'UP3', 'St. Albans School, Thika', '01/01/2020', 'Mr. Martin Mwangi', 'Muguga, Thika, Kiambu County, Kenya', '715679978', 'StAlbansSchoolThika@gmail.com', 'fa fa-money', 'Kenya', '', '', '', '', '', '2405');

-- --------------------------------------------------------

--
-- Table structure for table `config_week_day`
--

CREATE TABLE `config_week_day` (
  `id` int(11) NOT NULL,
  `day_name` varchar(20) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config_week_day`
--

INSERT INTO `config_week_day` (`id`, `day_name`, `status`) VALUES
(1, 'Sunday', 'Holyday'),
(2, 'Monday', 'Open'),
(3, 'Tuesday', 'Open'),
(4, 'Wednesday', 'Open'),
(5, 'Thursday', 'Open'),
(6, 'Friday', 'Open'),
(7, 'Saturday', 'Holyday');

-- --------------------------------------------------------

--
-- Table structure for table `daily_attendance`
--

CREATE TABLE `daily_attendance` (
  `id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `student_id` varchar(150) NOT NULL,
  `class_title` varchar(30) NOT NULL,
  `section` varchar(100) NOT NULL,
  `days_amount` varchar(20) NOT NULL,
  `roll_no` int(11) NOT NULL,
  `present_or_absent` varchar(2) NOT NULL,
  `student_title` varchar(100) NOT NULL,
  `class_amount_monthly` int(11) NOT NULL,
  `class_amount_yearly` int(11) NOT NULL,
  `attend_amount_monthly` int(11) NOT NULL,
  `attend_amount_yearly` int(11) NOT NULL,
  `percentise_month` int(11) NOT NULL,
  `percentise_year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daily_attendance`
--

INSERT INTO `daily_attendance` (`id`, `date`, `user_id`, `student_id`, `class_title`, `section`, `days_amount`, `roll_no`, `present_or_absent`, `student_title`, `class_amount_monthly`, `class_amount_yearly`, `attend_amount_monthly`, `attend_amount_yearly`, `percentise_month`, `percentise_year`) VALUES
(39, '1639436400', '59', '202100001', 'Grade 3', 'Grade 3', '', 1, 'P', 'Remmy Baraka', 1, 1, 1, 1, 100, 100),
(40, '1639436400', '60', '202100002', 'Grade 3', '', '', 2, 'P', 'Lisa Wanjiru', 1, 1, 1, 1, 100, 100),
(41, '1639436400', '61', '202100003', 'Grade 3', '', '', 3, 'P', 'Abias Mutuku', 1, 1, 1, 1, 100, 100),
(42, '1639436400', '62', '202100004', 'Grade 3', 'Grade 3', '', 4, 'P', 'Cecilia Wamuyu', 1, 1, 1, 1, 100, 100),
(43, '1639436400', '63', '202100005', 'Grade 3', 'Grade 3', '', 5, 'P', 'Ruth Muthoni', 1, 1, 1, 1, 100, 100);

-- --------------------------------------------------------

--
-- Table structure for table `dormitory`
--

CREATE TABLE `dormitory` (
  `id` int(11) NOT NULL,
  `dormitory_name` varchar(100) NOT NULL,
  `dormitory_for` varchar(100) NOT NULL,
  `room_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dormitory`
--

INSERT INTO `dormitory` (`id`, `dormitory_name`, `dormitory_for`, `room_amount`) VALUES
(1, 'Boys Hostel', 'Only for male', 125),
(2, 'Girls Hostel', 'Only for female', 40),
(3, 'Teachers Dormitory', 'Only for teachers (Male Teacher)', 10);

-- --------------------------------------------------------

--
-- Table structure for table `dormitory_bed`
--

CREATE TABLE `dormitory_bed` (
  `id` int(11) NOT NULL,
  `dormitory_id` int(11) NOT NULL,
  `dormitory_name` varchar(100) NOT NULL,
  `room_number` varchar(50) NOT NULL,
  `bed_number` varchar(50) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `class` varchar(50) NOT NULL,
  `roll_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dormitory_bed`
--

INSERT INTO `dormitory_bed` (`id`, `dormitory_id`, `dormitory_name`, `room_number`, `bed_number`, `student_id`, `student_name`, `class`, `roll_number`) VALUES
(1, 1, 'Boys Hostel', 'Room No: 1', 'Seat No: 1', 201601001, 'Benjamin D. Lampe', '1', 1),
(2, 1, 'Boys Hostel', 'Room No: 1', 'Seat No: 2', 0, '', '', 0),
(3, 1, 'Boys Hostel', 'Room No: 1', 'Seat No: 3', 0, '', '', 0),
(4, 1, 'Boys Hostel', 'Room No: 1', 'Seat No: 4', 0, '', '', 0),
(5, 1, 'Boys Hostel', 'Room No: 1', 'Seat No: 5', 0, '', '', 0),
(6, 1, 'Boys Hostel', 'Room No: 1', 'Seat No: 6', 0, '', '', 0),
(7, 1, 'Boys Hostel', 'Room No: 1', 'Seat No: 7', 0, '', '', 0),
(8, 1, 'Boys Hostel', 'Room No: 1', 'Seat No: 8', 0, '', '', 0),
(9, 1, 'Boys Hostel', 'Room No: 1', 'Seat No: 9', 0, '', '', 0),
(10, 1, 'Boys Hostel', 'Room No: 1', 'Seat No: 10', 0, '', '', 0),
(11, 1, 'Boys Hostel', 'Room No: 2', 'Seat No: 1', 0, '', '', 0),
(12, 1, 'Boys Hostel', 'Room No: 2', 'Seat No: 2', 0, '', '', 0),
(13, 1, 'Boys Hostel', 'Room No: 2', 'Seat No: 3', 0, '', '', 0),
(14, 1, 'Boys Hostel', 'Room No: 2', 'Seat No: 4', 0, '', '', 0),
(15, 1, 'Boys Hostel', 'Room No: 2', 'Seat No: 5', 0, '', '', 0),
(16, 1, 'Boys Hostel', 'Room No: 2', 'Seat No: 6', 0, '', '', 0),
(17, 1, 'Boys Hostel', 'Room No: 2', 'Seat No: 7', 0, '', '', 0),
(18, 1, 'Boys Hostel', 'Room No: 2', 'Seat No: 8', 0, '', '', 0),
(19, 1, 'Boys Hostel', 'Room No: 2', 'Seat No: 9', 0, '', '', 0),
(20, 1, 'Boys Hostel', 'Room No: 2', 'Seat No: 10', 0, '', '', 0),
(21, 2, 'Girls Hostel', 'Room No: 1', 'Seat No: 1', 0, '', '', 0),
(22, 2, 'Girls Hostel', 'Room No: 1', 'Seat No: 2', 0, '', '', 0),
(23, 2, 'Girls Hostel', 'Room No: 1', 'Seat No: 3', 0, '', '', 0),
(24, 2, 'Girls Hostel', 'Room No: 1', 'Seat No: 4', 0, '', '', 0),
(25, 2, 'Girls Hostel', 'Room No: 1', 'Seat No: 5', 0, '', '', 0),
(26, 2, 'Girls Hostel', 'Room No: 1', 'Seat No: 6', 0, '', '', 0),
(27, 2, 'Girls Hostel', 'Room No: 1', 'Seat No: 7', 0, '', '', 0),
(28, 2, 'Girls Hostel', 'Room No: 1', 'Seat No: 8', 0, '', '', 0),
(29, 2, 'Girls Hostel', 'Room No: 1', 'Seat No: 9', 0, '', '', 0),
(30, 2, 'Girls Hostel', 'Room No: 1', 'Seat No: 10', 0, '', '', 0),
(31, 2, 'Girls Hostel', 'Room No: 2', 'Seat No: 1', 0, '', '', 0),
(32, 2, 'Girls Hostel', 'Room No: 2', 'Seat No: 2', 0, '', '', 0),
(33, 2, 'Girls Hostel', 'Room No: 2', 'Seat No: 3', 0, '', '', 0),
(34, 2, 'Girls Hostel', 'Room No: 2', 'Seat No: 4', 0, '', '', 0),
(35, 2, 'Girls Hostel', 'Room No: 2', 'Seat No: 5', 0, '', '', 0),
(36, 2, 'Girls Hostel', 'Room No: 2', 'Seat No: 6', 0, '', '', 0),
(37, 2, 'Girls Hostel', 'Room No: 2', 'Seat No: 7', 0, '', '', 0),
(38, 2, 'Girls Hostel', 'Room No: 2', 'Seat No: 8', 0, '', '', 0),
(39, 2, 'Girls Hostel', 'Room No: 2', 'Seat No: 9', 0, '', '', 0),
(40, 2, 'Girls Hostel', 'Room No: 2', 'Seat No: 10', 0, '', '', 0),
(41, 2, 'Girls Hostel', 'Room No: 2', 'Seat No: 1', 0, '', '', 0),
(42, 2, 'Girls Hostel', 'Room No: 2', 'Seat No: 2', 0, '', '', 0),
(43, 2, 'Girls Hostel', 'Room No: 2', 'Seat No: 3', 0, '', '', 0),
(44, 2, 'Girls Hostel', 'Room No: 2', 'Seat No: 4', 0, '', '', 0),
(45, 2, 'Girls Hostel', 'Room No: 2', 'Seat No: 5', 0, '', '', 0),
(46, 2, 'Girls Hostel', 'Room No: 2', 'Seat No: 6', 0, '', '', 0),
(47, 2, 'Girls Hostel', 'Room No: 2', 'Seat No: 7', 0, '', '', 0),
(48, 2, 'Girls Hostel', 'Room No: 2', 'Seat No: 8', 0, '', '', 0),
(49, 2, 'Girls Hostel', 'Room No: 2', 'Seat No: 9', 0, '', '', 0),
(50, 2, 'Girls Hostel', 'Room No: 2', 'Seat No: 10', 0, '', '', 0),
(51, 2, 'Girls Hostel', 'Room No: 3', 'Seat No: 1', 0, '', '', 0),
(52, 2, 'Girls Hostel', 'Room No: 3', 'Seat No: 2', 0, '', '', 0),
(53, 2, 'Girls Hostel', 'Room No: 3', 'Seat No: 3', 0, '', '', 0),
(54, 2, 'Girls Hostel', 'Room No: 3', 'Seat No: 4', 0, '', '', 0),
(55, 2, 'Girls Hostel', 'Room No: 3', 'Seat No: 5', 0, '', '', 0),
(56, 2, 'Girls Hostel', 'Room No: 3', 'Seat No: 6', 0, '', '', 0),
(57, 2, 'Girls Hostel', 'Room No: 3', 'Seat No: 7', 0, '', '', 0),
(58, 2, 'Girls Hostel', 'Room No: 3', 'Seat No: 8', 0, '', '', 0),
(59, 2, 'Girls Hostel', 'Room No: 3', 'Seat No: 9', 0, '', '', 0),
(60, 2, 'Girls Hostel', 'Room No: 3', 'Seat No: 10', 0, '', '', 0),
(61, 3, 'Teachers Dormitory', 'Room No: 1', 'Seat No: 1', 0, '', '', 0),
(62, 3, 'Teachers Dormitory', 'Room No: 1', 'Seat No: 2', 0, '', '', 0),
(63, 3, 'Teachers Dormitory', 'Room No: 1', 'Seat No: 3', 0, '', '', 0),
(64, 3, 'Teachers Dormitory', 'Room No: 1', 'Seat No: 4', 0, '', '', 0),
(65, 3, 'Teachers Dormitory', 'Room No: 1', 'Seat No: 5', 0, '', '', 0),
(66, 3, 'Teachers Dormitory', 'Room No: 1', 'Seat No: 6', 0, '', '', 0),
(67, 3, 'Teachers Dormitory', 'Room No: 1', 'Seat No: 7', 0, '', '', 0),
(68, 3, 'Teachers Dormitory', 'Room No: 1', 'Seat No: 8', 0, '', '', 0),
(69, 3, 'Teachers Dormitory', 'Room No: 1', 'Seat No: 9', 0, '', '', 0),
(70, 3, 'Teachers Dormitory', 'Room No: 1', 'Seat No: 10', 0, '', '', 0),
(71, 3, 'Teachers Dormitory', 'Room No: 2', 'Seat No: 1', 0, '', '', 0),
(72, 3, 'Teachers Dormitory', 'Room No: 2', 'Seat No: 2', 0, '', '', 0),
(73, 3, 'Teachers Dormitory', 'Room No: 2', 'Seat No: 3', 0, '', '', 0),
(74, 3, 'Teachers Dormitory', 'Room No: 2', 'Seat No: 4', 0, '', '', 0),
(75, 3, 'Teachers Dormitory', 'Room No: 2', 'Seat No: 5', 0, '', '', 0),
(76, 3, 'Teachers Dormitory', 'Room No: 2', 'Seat No: 6', 0, '', '', 0),
(77, 3, 'Teachers Dormitory', 'Room No: 2', 'Seat No: 7', 0, '', '', 0),
(78, 3, 'Teachers Dormitory', 'Room No: 2', 'Seat No: 8', 0, '', '', 0),
(79, 3, 'Teachers Dormitory', 'Room No: 2', 'Seat No: 9', 0, '', '', 0),
(80, 3, 'Teachers Dormitory', 'Room No: 2', 'Seat No: 10', 0, '', '', 0),
(81, 1, 'Boys Hostel', 'Room No: 7', 'Seat No: 1', 201602001, 'Abdullah  hossain', '2', 1),
(82, 1, 'Boys Hostel', 'Room No: 7', 'Seat No: 2', 0, '', '', 0),
(83, 1, 'Boys Hostel', 'Room No: 7', 'Seat No: 3', 0, '', '', 0),
(84, 1, 'Boys Hostel', 'Room No: 7', 'Seat No: 4', 0, '', '', 0),
(85, 1, 'Boys Hostel', 'Room No: 7', 'Seat No: 5', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dormitory_room`
--

CREATE TABLE `dormitory_room` (
  `id` int(11) NOT NULL,
  `dormitory_id` int(11) NOT NULL,
  `dormitory_name` varchar(100) NOT NULL,
  `room` varchar(50) NOT NULL,
  `bed_amount` int(11) NOT NULL,
  `free_seat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dormitory_room`
--

INSERT INTO `dormitory_room` (`id`, `dormitory_id`, `dormitory_name`, `room`, `bed_amount`, `free_seat`) VALUES
(1, 1, 'Boys Hostel', 'Room No: 1', 10, 10),
(2, 1, 'Boys Hostel', 'Room No: 2', 10, 10),
(3, 1, 'Boys Hostel', 'Room No: 3', 0, 0),
(4, 1, 'Boys Hostel', 'Room No: 4', 0, 0),
(5, 1, 'Boys Hostel', 'Room No: 5', 0, 0),
(6, 1, 'Boys Hostel', 'Room No: 6', 0, 0),
(7, 1, 'Boys Hostel', 'Room No: 7', 5, 5),
(8, 1, 'Boys Hostel', 'Room No: 8', 0, 0),
(9, 1, 'Boys Hostel', 'Room No: 9', 0, 0),
(10, 1, 'Boys Hostel', 'Room No: 10', 0, 0),
(11, 1, 'Boys Hostel', 'Room No: 11', 0, 0),
(12, 1, 'Boys Hostel', 'Room No: 12', 0, 0),
(13, 1, 'Boys Hostel', 'Room No: 13', 0, 0),
(14, 1, 'Boys Hostel', 'Room No: 14', 0, 0),
(15, 1, 'Boys Hostel', 'Room No: 15', 0, 0),
(16, 1, 'Boys Hostel', 'Room No: 16', 0, 0),
(17, 1, 'Boys Hostel', 'Room No: 17', 0, 0),
(18, 1, 'Boys Hostel', 'Room No: 18', 0, 0),
(19, 1, 'Boys Hostel', 'Room No: 19', 0, 0),
(20, 1, 'Boys Hostel', 'Room No: 20', 0, 0),
(21, 1, 'Boys Hostel', 'Room No: 21', 0, 0),
(22, 1, 'Boys Hostel', 'Room No: 22', 0, 0),
(23, 1, 'Boys Hostel', 'Room No: 23', 0, 0),
(24, 1, 'Boys Hostel', 'Room No: 24', 0, 0),
(25, 1, 'Boys Hostel', 'Room No: 25', 0, 0),
(26, 1, 'Boys Hostel', 'Room No: 26', 0, 0),
(27, 1, 'Boys Hostel', 'Room No: 27', 0, 0),
(28, 1, 'Boys Hostel', 'Room No: 28', 0, 0),
(29, 1, 'Boys Hostel', 'Room No: 29', 0, 0),
(30, 1, 'Boys Hostel', 'Room No: 30', 0, 0),
(31, 1, 'Boys Hostel', 'Room No: 31', 0, 0),
(32, 1, 'Boys Hostel', 'Room No: 32', 0, 0),
(33, 1, 'Boys Hostel', 'Room No: 33', 0, 0),
(34, 1, 'Boys Hostel', 'Room No: 34', 0, 0),
(35, 1, 'Boys Hostel', 'Room No: 35', 0, 0),
(36, 1, 'Boys Hostel', 'Room No: 36', 0, 0),
(37, 1, 'Boys Hostel', 'Room No: 37', 0, 0),
(38, 1, 'Boys Hostel', 'Room No: 38', 0, 0),
(39, 1, 'Boys Hostel', 'Room No: 39', 0, 0),
(40, 1, 'Boys Hostel', 'Room No: 40', 0, 0),
(41, 1, 'Boys Hostel', 'Room No: 41', 0, 0),
(42, 1, 'Boys Hostel', 'Room No: 42', 0, 0),
(43, 1, 'Boys Hostel', 'Room No: 43', 0, 0),
(44, 1, 'Boys Hostel', 'Room No: 44', 0, 0),
(45, 1, 'Boys Hostel', 'Room No: 45', 0, 0),
(46, 1, 'Boys Hostel', 'Room No: 46', 0, 0),
(47, 1, 'Boys Hostel', 'Room No: 47', 0, 0),
(48, 1, 'Boys Hostel', 'Room No: 48', 0, 0),
(49, 1, 'Boys Hostel', 'Room No: 49', 0, 0),
(50, 1, 'Boys Hostel', 'Room No: 50', 0, 0),
(51, 1, 'Boys Hostel', 'Room No: 51', 0, 0),
(52, 1, 'Boys Hostel', 'Room No: 52', 0, 0),
(53, 1, 'Boys Hostel', 'Room No: 53', 0, 0),
(54, 1, 'Boys Hostel', 'Room No: 54', 0, 0),
(55, 1, 'Boys Hostel', 'Room No: 55', 0, 0),
(56, 1, 'Boys Hostel', 'Room No: 56', 0, 0),
(57, 1, 'Boys Hostel', 'Room No: 57', 0, 0),
(58, 1, 'Boys Hostel', 'Room No: 58', 0, 0),
(59, 1, 'Boys Hostel', 'Room No: 59', 0, 0),
(60, 1, 'Boys Hostel', 'Room No: 60', 0, 0),
(61, 1, 'Boys Hostel', 'Room No: 61', 0, 0),
(62, 1, 'Boys Hostel', 'Room No: 62', 0, 0),
(63, 1, 'Boys Hostel', 'Room No: 63', 0, 0),
(64, 1, 'Boys Hostel', 'Room No: 64', 0, 0),
(65, 1, 'Boys Hostel', 'Room No: 65', 0, 0),
(66, 1, 'Boys Hostel', 'Room No: 66', 0, 0),
(67, 1, 'Boys Hostel', 'Room No: 67', 0, 0),
(68, 1, 'Boys Hostel', 'Room No: 68', 0, 0),
(69, 1, 'Boys Hostel', 'Room No: 69', 0, 0),
(70, 1, 'Boys Hostel', 'Room No: 70', 0, 0),
(71, 1, 'Boys Hostel', 'Room No: 71', 0, 0),
(72, 1, 'Boys Hostel', 'Room No: 72', 0, 0),
(73, 1, 'Boys Hostel', 'Room No: 73', 0, 0),
(74, 1, 'Boys Hostel', 'Room No: 74', 0, 0),
(75, 1, 'Boys Hostel', 'Room No: 75', 0, 0),
(76, 1, 'Boys Hostel', 'Room No: 76', 0, 0),
(77, 1, 'Boys Hostel', 'Room No: 77', 0, 0),
(78, 1, 'Boys Hostel', 'Room No: 78', 0, 0),
(79, 1, 'Boys Hostel', 'Room No: 79', 0, 0),
(80, 1, 'Boys Hostel', 'Room No: 80', 0, 0),
(81, 1, 'Boys Hostel', 'Room No: 81', 0, 0),
(82, 1, 'Boys Hostel', 'Room No: 82', 0, 0),
(83, 1, 'Boys Hostel', 'Room No: 83', 0, 0),
(84, 1, 'Boys Hostel', 'Room No: 84', 0, 0),
(85, 1, 'Boys Hostel', 'Room No: 85', 0, 0),
(86, 1, 'Boys Hostel', 'Room No: 86', 0, 0),
(87, 1, 'Boys Hostel', 'Room No: 87', 0, 0),
(88, 1, 'Boys Hostel', 'Room No: 88', 0, 0),
(89, 1, 'Boys Hostel', 'Room No: 89', 0, 0),
(90, 1, 'Boys Hostel', 'Room No: 90', 0, 0),
(91, 1, 'Boys Hostel', 'Room No: 91', 0, 0),
(92, 1, 'Boys Hostel', 'Room No: 92', 0, 0),
(93, 1, 'Boys Hostel', 'Room No: 93', 0, 0),
(94, 1, 'Boys Hostel', 'Room No: 94', 0, 0),
(95, 1, 'Boys Hostel', 'Room No: 95', 0, 0),
(96, 1, 'Boys Hostel', 'Room No: 96', 0, 0),
(97, 1, 'Boys Hostel', 'Room No: 97', 0, 0),
(98, 1, 'Boys Hostel', 'Room No: 98', 0, 0),
(99, 1, 'Boys Hostel', 'Room No: 99', 0, 0),
(100, 1, 'Boys Hostel', 'Room No: 100', 0, 0),
(101, 1, 'Boys Hostel', 'Room No: 101', 0, 0),
(102, 1, 'Boys Hostel', 'Room No: 102', 0, 0),
(103, 1, 'Boys Hostel', 'Room No: 103', 0, 0),
(104, 1, 'Boys Hostel', 'Room No: 104', 0, 0),
(105, 1, 'Boys Hostel', 'Room No: 105', 0, 0),
(106, 1, 'Boys Hostel', 'Room No: 106', 0, 0),
(107, 1, 'Boys Hostel', 'Room No: 107', 0, 0),
(108, 1, 'Boys Hostel', 'Room No: 108', 0, 0),
(109, 1, 'Boys Hostel', 'Room No: 109', 0, 0),
(110, 1, 'Boys Hostel', 'Room No: 110', 0, 0),
(111, 1, 'Boys Hostel', 'Room No: 111', 0, 0),
(112, 1, 'Boys Hostel', 'Room No: 112', 0, 0),
(113, 1, 'Boys Hostel', 'Room No: 113', 0, 0),
(114, 1, 'Boys Hostel', 'Room No: 114', 0, 0),
(115, 1, 'Boys Hostel', 'Room No: 115', 0, 0),
(116, 1, 'Boys Hostel', 'Room No: 116', 0, 0),
(117, 1, 'Boys Hostel', 'Room No: 117', 0, 0),
(118, 1, 'Boys Hostel', 'Room No: 118', 0, 0),
(119, 1, 'Boys Hostel', 'Room No: 119', 0, 0),
(120, 1, 'Boys Hostel', 'Room No: 120', 0, 0),
(121, 1, 'Boys Hostel', 'Room No: 121', 0, 0),
(122, 1, 'Boys Hostel', 'Room No: 122', 0, 0),
(123, 1, 'Boys Hostel', 'Room No: 123', 0, 0),
(124, 1, 'Boys Hostel', 'Room No: 124', 0, 0),
(125, 1, 'Boys Hostel', 'Room No: 125', 0, 0),
(126, 2, 'Girls Hostel', 'Room No: 1', 10, 10),
(127, 2, 'Girls Hostel', 'Room No: 2', 10, 10),
(128, 2, 'Girls Hostel', 'Room No: 3', 10, 10),
(129, 2, 'Girls Hostel', 'Room No: 4', 0, 0),
(130, 2, 'Girls Hostel', 'Room No: 5', 0, 0),
(131, 2, 'Girls Hostel', 'Room No: 6', 0, 0),
(132, 2, 'Girls Hostel', 'Room No: 7', 0, 0),
(133, 2, 'Girls Hostel', 'Room No: 8', 0, 0),
(134, 2, 'Girls Hostel', 'Room No: 9', 0, 0),
(135, 2, 'Girls Hostel', 'Room No: 10', 0, 0),
(136, 2, 'Girls Hostel', 'Room No: 11', 0, 0),
(137, 2, 'Girls Hostel', 'Room No: 12', 0, 0),
(138, 2, 'Girls Hostel', 'Room No: 13', 0, 0),
(139, 2, 'Girls Hostel', 'Room No: 14', 0, 0),
(140, 2, 'Girls Hostel', 'Room No: 15', 0, 0),
(141, 2, 'Girls Hostel', 'Room No: 16', 0, 0),
(142, 2, 'Girls Hostel', 'Room No: 17', 0, 0),
(143, 2, 'Girls Hostel', 'Room No: 18', 0, 0),
(144, 2, 'Girls Hostel', 'Room No: 19', 0, 0),
(145, 2, 'Girls Hostel', 'Room No: 20', 0, 0),
(146, 2, 'Girls Hostel', 'Room No: 21', 0, 0),
(147, 2, 'Girls Hostel', 'Room No: 22', 0, 0),
(148, 2, 'Girls Hostel', 'Room No: 23', 0, 0),
(149, 2, 'Girls Hostel', 'Room No: 24', 0, 0),
(150, 2, 'Girls Hostel', 'Room No: 25', 0, 0),
(151, 2, 'Girls Hostel', 'Room No: 26', 0, 0),
(152, 2, 'Girls Hostel', 'Room No: 27', 0, 0),
(153, 2, 'Girls Hostel', 'Room No: 28', 0, 0),
(154, 2, 'Girls Hostel', 'Room No: 29', 0, 0),
(155, 2, 'Girls Hostel', 'Room No: 30', 0, 0),
(156, 2, 'Girls Hostel', 'Room No: 31', 0, 0),
(157, 2, 'Girls Hostel', 'Room No: 32', 0, 0),
(158, 2, 'Girls Hostel', 'Room No: 33', 0, 0),
(159, 2, 'Girls Hostel', 'Room No: 34', 0, 0),
(160, 2, 'Girls Hostel', 'Room No: 35', 0, 0),
(161, 2, 'Girls Hostel', 'Room No: 36', 0, 0),
(162, 2, 'Girls Hostel', 'Room No: 37', 0, 0),
(163, 2, 'Girls Hostel', 'Room No: 38', 0, 0),
(164, 2, 'Girls Hostel', 'Room No: 39', 0, 0),
(165, 2, 'Girls Hostel', 'Room No: 40', 0, 0),
(166, 3, 'Teachers Dormitory', 'Room No: 1', 10, 10),
(167, 3, 'Teachers Dormitory', 'Room No: 2', 10, 10),
(168, 3, 'Teachers Dormitory', 'Room No: 3', 0, 0),
(169, 3, 'Teachers Dormitory', 'Room No: 4', 0, 0),
(170, 3, 'Teachers Dormitory', 'Room No: 5', 0, 0),
(171, 3, 'Teachers Dormitory', 'Room No: 6', 0, 0),
(172, 3, 'Teachers Dormitory', 'Room No: 7', 0, 0),
(173, 3, 'Teachers Dormitory', 'Room No: 8', 0, 0),
(174, 3, 'Teachers Dormitory', 'Room No: 9', 0, 0),
(175, 3, 'Teachers Dormitory', 'Room No: 10', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `employe`
--

CREATE TABLE `employe` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `father_name` varchar(150) NOT NULL,
  `mother_name` varchar(150) NOT NULL,
  `birth_date` varchar(100) NOT NULL,
  `sex` varchar(50) NOT NULL,
  `present_address` varchar(150) NOT NULL,
  `permanent_address` varchar(150) NOT NULL,
  `job_title_post` varchar(100) NOT NULL,
  `working_hour` varchar(20) NOT NULL,
  `salary_amount` varchar(100) NOT NULL,
  `educational_qualifation_1` varchar(300) NOT NULL,
  `educational_qualifation_2` varchar(300) NOT NULL,
  `educational_qualifation_3` varchar(300) NOT NULL,
  `educational_qualifation_4` varchar(300) NOT NULL,
  `educational_qualifation_5` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `exam_attendanc`
--

CREATE TABLE `exam_attendanc` (
  `id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `student_title` varchar(100) NOT NULL,
  `class_id` int(11) NOT NULL,
  `roll_no` varchar(11) NOT NULL,
  `section` varchar(100) NOT NULL,
  `exam_title` varchar(150) NOT NULL,
  `exam_subject` varchar(100) NOT NULL,
  `attendance` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_attendanc`
--

INSERT INTO `exam_attendanc` (`id`, `date`, `user_id`, `student_id`, `student_title`, `class_id`, `roll_no`, `section`, `exam_title`, `exam_subject`, `attendance`) VALUES
(1, '10/06/2016', 4, '201601001', 'Benjamin D. Lampe', 1, '1', 'Section A,Section B,Section C,Section D', 'Test Exam 1', 'AMAR BANGLA BOI', 'P'),
(2, '10/06/2016', 12, '201601002', 'Rahim Hasan', 1, '2', 'Section A,Section B,Section C,Section D', 'Test Exam 1', 'AMAR BANGLA BOI', 'P'),
(3, '10/06/2016', 13, '201601003', 'Junayed Hak', 1, '3', 'Section A,Section B,Section C,Section D', 'Test Exam 1', 'AMAR BANGLA BOI', 'P'),
(4, '10/06/2016', 16, '201601004', 'Razia Akture', 1, '4', '', 'Test Exam 1', 'AMAR BANGLA BOI', 'P'),
(5, '10/06/2016', 23, '201601005', 'Polash Sarder', 1, '5', '', 'Test Exam 1', 'AMAR BANGLA BOI', 'P'),
(6, '10/06/2016', 24, '201601006', 'Sumon Akon', 1, '6', '', 'Test Exam 1', 'AMAR BANGLA BOI', 'P'),
(7, '10/06/2016', 4, '201601001', 'Benjamin D. Lampe', 1, '1', 'Section A,Section B,Section C,Section D', 'Test Exam 1', 'ENGLISH FOR TODAY', 'P'),
(8, '10/06/2016', 12, '201601002', 'Rahim Hasan', 1, '2', 'Section A,Section B,Section C,Section D', 'Test Exam 1', 'ENGLISH FOR TODAY', 'P'),
(9, '10/06/2016', 13, '201601003', 'Junayed Hak', 1, '3', 'Section A,Section B,Section C,Section D', 'Test Exam 1', 'ENGLISH FOR TODAY', 'P'),
(10, '10/06/2016', 16, '201601004', 'Razia Akture', 1, '4', '', 'Test Exam 1', 'ENGLISH FOR TODAY', 'P'),
(11, '10/06/2016', 23, '201601005', 'Polash Sarder', 1, '5', '', 'Test Exam 1', 'ENGLISH FOR TODAY', 'P'),
(12, '10/06/2016', 24, '201601006', 'Sumon Akon', 1, '6', '', 'Test Exam 1', 'ENGLISH FOR TODAY', 'P'),
(13, '10/06/2016', 4, '201601001', 'Benjamin D. Lampe', 1, '1', 'Section A,Section B,Section C,Section D', 'Test Exam 1', 'PRIMARY MATHEMATICS', 'P'),
(14, '10/06/2016', 12, '201601002', 'Rahim Hasan', 1, '2', 'Section A,Section B,Section C,Section D', 'Test Exam 1', 'PRIMARY MATHEMATICS', 'P'),
(15, '10/06/2016', 13, '201601003', 'Junayed Hak', 1, '3', 'Section A,Section B,Section C,Section D', 'Test Exam 1', 'PRIMARY MATHEMATICS', 'P'),
(16, '10/06/2016', 16, '201601004', 'Razia Akture', 1, '4', '', 'Test Exam 1', 'PRIMARY MATHEMATICS', 'P'),
(17, '10/06/2016', 23, '201601005', 'Polash Sarder', 1, '5', '', 'Test Exam 1', 'PRIMARY MATHEMATICS', 'P'),
(18, '10/06/2016', 24, '201601006', 'Sumon Akon', 1, '6', '', 'Test Exam 1', 'PRIMARY MATHEMATICS', 'P'),
(19, '08/10/2016', 25, '201603001', 'Farjana Akter', 3, '1', '', 'FInal Exam', 'AMAR BANGLA BOI', 'P'),
(20, '08/10/2016', 26, '201603002', 'Akram Hossain', 3, '2', '', 'FInal Exam', 'AMAR BANGLA BOI', 'P'),
(21, '08/10/2016', 27, '201603003', 'Alamin Saeder', 3, '3', '', 'FInal Exam', 'AMAR BANGLA BOI', 'P'),
(22, '08/10/2016', 28, '201603004', 'Sabina Sumi', 3, '4', '', 'FInal Exam', 'AMAR BANGLA BOI', 'P'),
(23, '14/12/2021', 59, '202100001', 'Remmy Baraka', 11, '1', 'Grade 3', 'End-Term Exam', 'Math', 'P'),
(24, '14/12/2021', 60, '202100002', 'Lisa Wanjiru', 11, '2', '', 'End-Term Exam', 'Math', 'P'),
(25, '14/12/2021', 61, '202100003', 'Abias Mutuku', 11, '3', '', 'End-Term Exam', 'Math', 'P'),
(26, '14/12/2021', 62, '202100004', 'Cecilia Wamuyu', 11, '4', 'Grade 3', 'End-Term Exam', 'Math', 'P'),
(27, '14/12/2021', 63, '202100005', 'Ruth Muthoni', 11, '5', 'Grade 3', 'End-Term Exam', 'Math', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `exam_grade`
--

CREATE TABLE `exam_grade` (
  `id` int(11) NOT NULL,
  `grade_name` varchar(30) NOT NULL,
  `point` varchar(4) NOT NULL,
  `number_form` varchar(5) NOT NULL,
  `number_to` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_grade`
--

INSERT INTO `exam_grade` (`id`, `grade_name`, `point`, `number_form`, `number_to`) VALUES
(1, 'F', '0', '0', '32'),
(2, 'D', '1', '33', '39'),
(3, 'C', '2', '40', '49'),
(4, 'B', '3', '50', '59'),
(5, 'A-', '3.5', '60', '69'),
(6, 'A', '4', '70', '79'),
(7, 'A+', '5', '80', '100');

-- --------------------------------------------------------

--
-- Table structure for table `exam_routine`
--

CREATE TABLE `exam_routine` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `exam_date` varchar(30) NOT NULL,
  `exam_subject` varchar(100) NOT NULL,
  `subject_code` varchar(15) NOT NULL,
  `rome_number` varchar(10) NOT NULL,
  `start_time` varchar(10) NOT NULL,
  `end_time` varchar(30) NOT NULL,
  `exam_shift` varchar(50) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_routine`
--

INSERT INTO `exam_routine` (`id`, `exam_id`, `exam_date`, `exam_subject`, `subject_code`, `rome_number`, `start_time`, `end_time`, `exam_shift`, `status`) VALUES
(1, 4, '9/06/2018', 'AMAR BANGLA BOI', '101', '101', '09.00am', '10.30am', 'Morning shift', 'Result'),
(2, 4, '10/06/2018', 'ENGLISH FOR TODAY', '102', '101', '09.00am', '10.30am', 'Morning shift', 'Result'),
(3, 4, '11/06/2018', 'PRIMARY MATHEMATICS', '103', '101', '09.00am', '10.30am', 'Morning shift', 'Result'),
(4, 5, '08/10/2018', 'AMAR BANGLA BOI', '101', '101', '10.30am', '11.00am', 'Morning shift', 'Result'),
(7, 7, '14/12/2021', 'Math', '002', 'Grade 3 Cl', '8:00 AM', '9:30 AM', 'Morning shift', 'NoResult'),
(8, 7, '15/12/2021', 'English', '003', 'Grade 3 Cl', '10:00 AM', '11:30 AM', 'Morning shift', 'NoResult'),
(9, 7, '16/12/2021', 'Kiswahili', '004', 'Grade 3 Cl', '8:00 AM', '9:30 AM', 'Morning shift', 'NoResult'),
(10, 7, '16/12/2021', 'Creative Arts', '005', 'Grade 3 Cl', '10:00 AM', '11:30 AM', 'Morning shift', 'NoResult'),
(11, 7, '17/12/2021', 'C.R.E', '006', 'Grade 3 Cl', '10:00 AM', '11:30 AM', 'Morning shift', 'NoResult'),
(12, 7, '17/12/2021', 'HSG', '007', 'Grade 3 Cl', '2:00 PM', '3:30 PM', 'Evening shift', 'NoResult');

-- --------------------------------------------------------

--
-- Table structure for table `fee_item`
--

CREATE TABLE `fee_item` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fee_item`
--

INSERT INTO `fee_item` (`id`, `year`, `class_id`, `title`, `amount`) VALUES
(5, 2021, 11, 'Tuition Fee', 5000),
(6, 2021, 11, 'Assessment Fee', 500),
(7, 2021, 11, 'Assessment Books', 500),
(8, 2021, 11, 'Co-Curricular', 400),
(9, 2021, 11, 'Repair & Improvement', 250),
(10, 2021, 11, 'Meals', 4200),
(11, 2021, 11, 'Swimming Classes', 1000),
(12, 2021, 11, 'Swimming Classes', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `final_result`
--

CREATE TABLE `final_result` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section` varchar(100) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `exam_title` varchar(100) NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `total_mark` varchar(100) NOT NULL,
  `final_grade` varchar(10) NOT NULL,
  `maride_list` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  `point` varchar(11) NOT NULL,
  `fail_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(3, 'student', 'This user is student\'s groups member.'),
(4, 'teacher', 'This user is teacher\'s groups member.'),
(5, 'parents', 'This user is parent\'s groups member.'),
(6, 'accountant', 'This user is accountent\'s groups member.'),
(7, 'library_man', 'The library man can manage library and library\'s account information'),
(8, '4th_class_employ', ''),
(9, 'driver', '');

-- --------------------------------------------------------

--
-- Table structure for table `inven_category`
--

CREATE TABLE `inven_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `details` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inven_category`
--

INSERT INTO `inven_category` (`id`, `category_name`, `details`) VALUES
(1, 'Furniture', ''),
(4, 'Uniform', 'Pupils\\\' uniform'),
(5, 'Foodstuffs', ''),
(6, 'Teaching Materials', 'Dusters, Chalks etc');

-- --------------------------------------------------------

--
-- Table structure for table `inve_item`
--

CREATE TABLE `inve_item` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `item` varchar(200) NOT NULL,
  `quantity` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `total_rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inve_item`
--

INSERT INTO `inve_item` (`id`, `vendor_id`, `category`, `item`, `quantity`, `rate`, `discount`, `total_rate`) VALUES
(6, 5, '6', 'Chalks', 85, 200, 0, 20000),
(7, 5, '1', 'Lockers', 12, 2500, 2500, 35000);

-- --------------------------------------------------------

--
-- Table structure for table `issu_item`
--

CREATE TABLE `issu_item` (
  `id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `user_type` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issu_item`
--

INSERT INTO `issu_item` (`id`, `date`, `user_type`, `user_id`, `item_id`, `quantity`, `rate`, `total_price`, `status`) VALUES
(8, 1639522800, 'Employee', 57, 7, 2, 2500, 5000, 'Cash'),
(9, 1639522800, 'Student', 59, 6, 5, 200, 1000, 'Cash');

-- --------------------------------------------------------

--
-- Table structure for table `leave_application`
--

CREATE TABLE `leave_application` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `sender_title` varchar(150) NOT NULL,
  `subject` varchar(150) NOT NULL,
  `jobtype` text NOT NULL,
  `leave_start` int(11) NOT NULL,
  `leave_end` int(11) NOT NULL,
  `application_date` int(11) NOT NULL,
  `reason` varchar(500) NOT NULL,
  `cheack_by` varchar(150) NOT NULL,
  `status` text NOT NULL,
  `cheack_statuse` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `library_member`
--

CREATE TABLE `library_member` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `fine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library_member`
--

INSERT INTO `library_member` (`id`, `user_id`, `title`, `fine`) VALUES
(1, 4, 'Benjamin D. Lampe', 0),
(2, 4, 'Benjamin D. Lampe', 0),
(3, 12, 'Rahim Hasan', 0),
(4, 13, 'Junayed Hak', 0),
(5, 1, 'Headmaster', 0),
(6, 2, 'Helen K Helton', 0),
(7, 6, 'Robert D. Franco', 0),
(8, 7, 'Michael R. Kemp', 0),
(9, 8, 'Willie B. Quint', 0),
(10, 9, 'Fredrick V. Keyes', 0),
(11, 10, 'mumar abboud', 0),
(12, 11, 'Inayah Asfour', 0);

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `massage`
--

CREATE TABLE `massage` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` varchar(50) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `read_unread` int(1) NOT NULL,
  `date` int(11) NOT NULL,
  `sender_delete` int(11) NOT NULL,
  `receiver_delete` int(11) NOT NULL,
  `class` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `massage`
--

INSERT INTO `massage` (`id`, `sender_id`, `receiver_id`, `message`, `subject`, `read_unread`, `date`, `sender_delete`, `receiver_delete`, `class`) VALUES
(1, 1, '4', '<p>This is test Message for all students in class 1. This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.</p>\\r\\n', 'This is test Message.', 0, 1465806801, 1, 1, ''),
(2, 1, '12', '<p>This is test Message for all students in class 1. This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.</p>\\r\\n', 'This is test Message.', 0, 1465806801, 1, 1, ''),
(3, 1, '13', '<p>This is test Message for all students in class 1. This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.</p>\\r\\n', 'This is test Message.', 0, 1465806801, 1, 1, ''),
(4, 1, '16', '<p>This is test Message for all students in class 1. This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.</p>\\r\\n', 'This is test Message.', 0, 1465806801, 1, 1, ''),
(5, 1, '23', '<p>This is test Message for all students in class 1. This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.</p>\\r\\n', 'This is test Message.', 0, 1465806801, 1, 1, ''),
(6, 1, '24', '<p>This is test Message for all students in class 1. This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.This is test Message for all students in class 1.</p>\\r\\n', 'This is test Message.', 0, 1465806801, 1, 1, ''),
(7, 1, '4', '<p >This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.</p>\\r\\n', 'This is test Message.', 0, 1465807087, 1, 1, ''),
(8, 1, '12', '<p >This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.</p>\\r\\n', 'This is test Message.', 0, 1465807087, 1, 1, ''),
(9, 1, '13', '<p >This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.</p>\\r\\n', 'This is test Message.', 0, 1465807087, 1, 1, ''),
(10, 1, '16', '<p >This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.</p>\\r\\n', 'This is test Message.', 0, 1465807087, 1, 1, ''),
(11, 1, '23', '<p >This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.</p>\\r\\n', 'This is test Message.', 0, 1465807087, 1, 1, ''),
(12, 1, '24', '<p >This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.This is test Message.</p>\\r\\n', 'This is test Message.', 0, 1465807087, 1, 1, ''),
(13, 1, '57', '<p><strong>Notice to all Teachers:</strong></p>\\r\\n\\r <div >There will be a meeting at 4:00 PM in the meeting room.</div>\\r\\n', 'Teachers\\\' meeting.', 0, 1639541925, 1, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `notice_board`
--

CREATE TABLE `notice_board` (
  `id` int(11) NOT NULL,
  `date` varchar(11) NOT NULL,
  `sender` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `notice` varchar(1000) NOT NULL,
  `receiver` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice_board`
--

INSERT INTO `notice_board` (`id`, `date`, `sender`, `subject`, `notice`, `receiver`) VALUES
(2, '14/12/2021', 'Manager', 'The St. Albans Portal.', '<p style=\\\"text-align: center;\\\"><span style=\\\"font-size:24px\\\"><q><span style=\\\"font-family:courier new,courier,monospace\\\"><strong>Welcome to the St. Albans School, Thika Students&#39; portal.&nbsp;</strong></span></q></span></p><p style=\\\"text-align: center;\\\"><span style=\\\"font-size:24px\\\"><q><span style=\\\"font-family:courier new,courier,monospace\\\"><strong><a href=\"https://stalbansschoolthika.sc.ke/images/fav.jpg\\\"><img alt=\"St. Albans\" src=\"https://stalbansschoolthika.sc.ke/images/fav.jpg\" style=\"height:285px; width:300px\" /></a></strong></span></q></span></p>', 'all');

-- --------------------------------------------------------

--
-- Table structure for table `parents_info`
--

CREATE TABLE `parents_info` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `parents_name` varchar(100) NOT NULL,
  `relation` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parents_info`
--

INSERT INTO `parents_info` (`id`, `user_id`, `class_id`, `student_id`, `parents_name`, `relation`, `email`, `phone`) VALUES
(7, 68, 11, 202100001, 'Austin Meyer', 'Friend', 'parent@stalbansschoolthika.sc.ke', '254716912002');

-- --------------------------------------------------------

--
-- Table structure for table `result_action`
--

CREATE TABLE `result_action` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `exam_title` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL,
  `publish` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `result_shit`
--

CREATE TABLE `result_shit` (
  `id` int(11) NOT NULL,
  `exam_title` varchar(100) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section` varchar(100) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `student_id` varchar(100) NOT NULL,
  `exam_subject` varchar(100) NOT NULL,
  `mark` varchar(10) NOT NULL,
  `point` varchar(5) NOT NULL,
  `grade` varchar(5) NOT NULL,
  `roll_number` int(11) NOT NULL,
  `result` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result_shit`
--

INSERT INTO `result_shit` (`id`, `exam_title`, `exam_id`, `class_id`, `section`, `student_name`, `student_id`, `exam_subject`, `mark`, `point`, `grade`, `roll_number`, `result`) VALUES
(27, 'Grade 3 Maths', 6, 11, '', 'Remmy Baraka', '202100001', 'Math', '90', '5', 'A+', 1, 'Pass'),
(28, 'Grade 3 Maths', 6, 11, '', 'Lisa Wanjiru', '202100002', 'Math', '90', '5', 'A+', 2, 'Pass'),
(29, 'Grade 3 Maths', 6, 11, '', 'Abias Mutuku', '202100003', 'Math', '90', '5', 'A+', 3, 'Pass'),
(30, 'Grade 3 Maths', 6, 11, '', 'Cecilia Wamuyu', '202100004', 'Math', '90', '5', 'A+', 4, 'Pass'),
(31, 'Grade 3 Maths', 6, 11, '', 'Ruth Muthoni', '202100005', 'Math', '90', '5', 'A+', 5, 'Pass'),
(32, 'Grade 3 Maths', 6, 11, '', 'Remmy Baraka', '202100001', 'English', '70', '3', 'B', 1, 'Pass'),
(33, 'Grade 3 Maths', 6, 11, '', 'Lisa Wanjiru', '202100002', 'English', '70', '3', 'B', 2, 'Pass'),
(34, 'Grade 3 Maths', 6, 11, '', 'Abias Mutuku', '202100003', 'English', '70', '3', 'B', 3, 'Pass'),
(35, 'Grade 3 Maths', 6, 11, '', 'Cecilia Wamuyu', '202100004', 'English', '70', '3', 'B', 4, 'Pass'),
(36, 'Grade 3 Maths', 6, 11, '', 'Ruth Muthoni', '202100005', 'English', '70', '3', 'B', 5, 'Pass');

-- --------------------------------------------------------

--
-- Table structure for table `result_submition_info`
--

CREATE TABLE `result_submition_info` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section` varchar(100) NOT NULL,
  `exam_title` varchar(150) NOT NULL,
  `date` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `submited` varchar(50) NOT NULL,
  `teacher` varchar(100) NOT NULL,
  `exam_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result_submition_info`
--

INSERT INTO `result_submition_info` (`id`, `class_id`, `section`, `exam_title`, `date`, `subject`, `submited`, `teacher`, `exam_id`) VALUES
(6, 11, '', 'Grade 3 Maths', '14/12/2021', 'Math', '1', 'Teacher Martha', 6),
(7, 11, '', 'Grade 3 Maths', '14/12/2021', 'English', '1', 'Teacher Martha', 6);

-- --------------------------------------------------------

--
-- Table structure for table `role_based_access`
--

CREATE TABLE `role_based_access` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(1) NOT NULL,
  `das_top_info` int(1) NOT NULL,
  `das_grab_chart` int(1) NOT NULL,
  `das_class_info` int(1) NOT NULL,
  `das_message` int(1) NOT NULL,
  `das_employ_attend` int(1) NOT NULL,
  `das_notice` int(1) NOT NULL,
  `das_calender` int(1) NOT NULL,
  `admission` int(1) NOT NULL,
  `all_student_info` int(1) NOT NULL,
  `stud_edit_delete` int(1) NOT NULL,
  `stu_own_info` int(1) NOT NULL,
  `teacher_info` int(1) NOT NULL,
  `add_teacher` int(1) NOT NULL,
  `teacher_details` int(1) NOT NULL,
  `teacher_edit_delete` int(1) NOT NULL,
  `all_parents_info` int(1) NOT NULL,
  `own_parents_info` int(1) NOT NULL,
  `make_parents_id` int(1) NOT NULL,
  `parents_edit_dlete` int(1) NOT NULL,
  `add_employee` int(1) NOT NULL,
  `employee_list` int(1) NOT NULL,
  `employ_attendance` int(1) NOT NULL,
  `empl_atte_view` int(1) NOT NULL,
  `add_new_class` int(1) NOT NULL,
  `all_class_info` int(1) NOT NULL,
  `class_details` int(1) NOT NULL,
  `class_delete` int(1) NOT NULL,
  `class_promotion` int(1) NOT NULL,
  `add_class_routine` int(1) NOT NULL,
  `own_class_routine` int(1) NOT NULL,
  `all_class_routine` int(1) NOT NULL,
  `rutin_edit_delete` int(1) NOT NULL,
  `attendance_preview` int(1) NOT NULL,
  `take_studence_atten` int(1) NOT NULL,
  `edit_student_atten` int(1) NOT NULL,
  `add_subject` int(1) NOT NULL,
  `all_subject` int(1) NOT NULL,
  `assin_optio_sub` int(1) NOT NULL,
  `make_suggestion` int(1) NOT NULL,
  `all_suggestion` int(1) NOT NULL,
  `own_suggestion` int(1) NOT NULL,
  `add_exam_gread` int(1) NOT NULL,
  `exam_gread` int(1) NOT NULL,
  `gread_edit_dele` int(1) NOT NULL,
  `add_exam_routin` int(1) NOT NULL,
  `all_exam_routine` int(1) NOT NULL,
  `own_exam_routine` int(1) NOT NULL,
  `exam_attend_preview` int(1) NOT NULL,
  `approve_result` int(1) NOT NULL,
  `view_result` int(1) NOT NULL,
  `all_mark_sheet` int(1) NOT NULL,
  `own_mark_sheet` int(1) NOT NULL,
  `take_exam_attend` int(1) NOT NULL,
  `change_exam_attendance` int(1) NOT NULL,
  `make_result` int(1) NOT NULL,
  `add_category` int(1) NOT NULL,
  `all_category` int(1) NOT NULL,
  `edit_delete_category` int(1) NOT NULL,
  `add_books` int(1) NOT NULL,
  `all_books` int(1) NOT NULL,
  `edit_delete_books` int(1) NOT NULL,
  `add_library_mem` int(1) NOT NULL,
  `memb_list` int(1) NOT NULL,
  `issu_return` int(1) NOT NULL,
  `add_dormitories` int(1) NOT NULL,
  `add_set_dormi` int(1) NOT NULL,
  `set_member_bed` int(1) NOT NULL,
  `dormi_report` int(1) NOT NULL,
  `add_transport` int(1) NOT NULL,
  `all_transport` int(1) NOT NULL,
  `transport_edit_dele` int(1) NOT NULL,
  `add_account_title` int(1) NOT NULL,
  `edit_dele_acco` int(1) NOT NULL,
  `trensection` int(1) NOT NULL,
  `fee_collection` int(1) NOT NULL,
  `all_slips` int(1) NOT NULL,
  `own_slip` int(1) NOT NULL,
  `slip_edit_delete` int(1) NOT NULL,
  `pay_salary` int(1) NOT NULL,
  `creat_notice` int(1) NOT NULL,
  `send_message` int(1) NOT NULL,
  `vendor` int(1) NOT NULL,
  `delet_vendor` int(1) NOT NULL,
  `add_inv_cat` int(1) NOT NULL,
  `inve_item` int(1) NOT NULL,
  `delete_inve_ite` int(1) NOT NULL,
  `delete_inv_cat` int(1) NOT NULL,
  `inve_issu` int(1) NOT NULL,
  `delete_inven_issu` int(1) NOT NULL,
  `check_leav_appli` int(1) NOT NULL,
  `setting_accounts` int(1) NOT NULL,
  `other_setting` int(1) NOT NULL,
  `front_setings` int(1) NOT NULL,
  `set_optional` int(1) NOT NULL,
  `setting_manage_user` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_based_access`
--

INSERT INTO `role_based_access` (`id`, `user_id`, `group_id`, `das_top_info`, `das_grab_chart`, `das_class_info`, `das_message`, `das_employ_attend`, `das_notice`, `das_calender`, `admission`, `all_student_info`, `stud_edit_delete`, `stu_own_info`, `teacher_info`, `add_teacher`, `teacher_details`, `teacher_edit_delete`, `all_parents_info`, `own_parents_info`, `make_parents_id`, `parents_edit_dlete`, `add_employee`, `employee_list`, `employ_attendance`, `empl_atte_view`, `add_new_class`, `all_class_info`, `class_details`, `class_delete`, `class_promotion`, `add_class_routine`, `own_class_routine`, `all_class_routine`, `rutin_edit_delete`, `attendance_preview`, `take_studence_atten`, `edit_student_atten`, `add_subject`, `all_subject`, `assin_optio_sub`, `make_suggestion`, `all_suggestion`, `own_suggestion`, `add_exam_gread`, `exam_gread`, `gread_edit_dele`, `add_exam_routin`, `all_exam_routine`, `own_exam_routine`, `exam_attend_preview`, `approve_result`, `view_result`, `all_mark_sheet`, `own_mark_sheet`, `take_exam_attend`, `change_exam_attendance`, `make_result`, `add_category`, `all_category`, `edit_delete_category`, `add_books`, `all_books`, `edit_delete_books`, `add_library_mem`, `memb_list`, `issu_return`, `add_dormitories`, `add_set_dormi`, `set_member_bed`, `dormi_report`, `add_transport`, `all_transport`, `transport_edit_dele`, `add_account_title`, `edit_dele_acco`, `trensection`, `fee_collection`, `all_slips`, `own_slip`, `slip_edit_delete`, `pay_salary`, `creat_notice`, `send_message`, `vendor`, `delet_vendor`, `add_inv_cat`, `inve_item`, `delete_inve_ite`, `delete_inv_cat`, `inve_issu`, `delete_inven_issu`, `check_leav_appli`, `setting_accounts`, `other_setting`, `front_setings`, `set_optional`, `setting_manage_user`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 2, 6, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 1, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(3, 4, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 6, 7, 1, 0, 1, 1, 0, 1, 1, 0, 1, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 7, 8, 1, 1, 0, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 8, 4, 1, 0, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 9, 4, 1, 0, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 10, 4, 1, 0, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 11, 4, 1, 0, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 12, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 13, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 14, 5, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 15, 5, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 16, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 17, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 18, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17, 19, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(18, 20, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(19, 21, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(20, 22, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(21, 23, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(22, 24, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(23, 25, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(24, 26, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(25, 27, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(26, 28, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27, 29, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(28, 30, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(29, 31, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30, 32, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(31, 33, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(32, 34, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33, 35, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(34, 36, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(35, 37, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36, 38, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(37, 39, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(38, 40, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(39, 41, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(40, 42, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(41, 43, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(42, 44, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(43, 45, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(44, 46, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45, 47, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(46, 48, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(47, 49, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(48, 50, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(49, 51, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(50, 52, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(51, 53, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(52, 54, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(53, 56, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(54, 57, 4, 1, 0, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(55, 58, 4, 1, 0, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56, 59, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(57, 60, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(58, 61, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(59, 62, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(60, 63, 3, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(61, 64, 5, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(62, 65, 5, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(63, 66, 5, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(64, 67, 5, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(65, 68, 5, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `month` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `employ_title` varchar(100) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `method` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`id`, `year`, `date`, `month`, `user_id`, `employ_title`, `total_amount`, `method`) VALUES
(1, 2021, 1639436400, 'December', 1, 'Headmaster', 17500, 'Cash');

-- --------------------------------------------------------

--
-- Table structure for table `set_salary`
--

CREATE TABLE `set_salary` (
  `id` int(11) NOT NULL,
  `year` int(5) NOT NULL,
  `employ_user_id` int(11) NOT NULL,
  `employe_title` varchar(100) NOT NULL,
  `job_post` varchar(50) NOT NULL,
  `basic` int(11) NOT NULL,
  `treatment` int(11) NOT NULL,
  `increased` int(11) NOT NULL,
  `others` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `month` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `set_salary`
--

INSERT INTO `set_salary` (`id`, `year`, `employ_user_id`, `employe_title`, `job_post`, `basic`, `treatment`, `increased`, `others`, `total`, `month`) VALUES
(1, 2018, 1, 'Headmaster', 'Headmaster', 15000, 2000, 0, 500, 17500, 12);

-- --------------------------------------------------------

--
-- Table structure for table `slip`
--

CREATE TABLE `slip` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `date` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `item_id` varchar(100) NOT NULL,
  `amount` int(11) NOT NULL,
  `dues` int(11) NOT NULL,
  `advance` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `paid` int(11) NOT NULL,
  `balance` int(11) NOT NULL,
  `edit_by` varchar(100) NOT NULL,
  `status` text NOT NULL,
  `mathod` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `roll_number` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `student_nam` varchar(100) NOT NULL,
  `farther_name` varchar(150) NOT NULL,
  `mother_name` varchar(150) NOT NULL,
  `birth_date` varchar(100) NOT NULL,
  `sex` varchar(30) NOT NULL,
  `present_address` varchar(300) NOT NULL,
  `permanent_address` varchar(300) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `father_occupation` varchar(150) NOT NULL,
  `father_incom_range` varchar(100) NOT NULL,
  `mother_occupation` varchar(100) NOT NULL,
  `student_photo` varchar(200) NOT NULL,
  `last_class_certificate` text NOT NULL,
  `t_c` text NOT NULL,
  `national_birth_certificate` text NOT NULL,
  `academic_transcription` text NOT NULL,
  `testimonial` text NOT NULL,
  `documents_info` varchar(500) NOT NULL,
  `starting_year` int(11) NOT NULL,
  `transfer_year` int(11) NOT NULL,
  `transfer_to` text NOT NULL,
  `transfer_reason` text NOT NULL,
  `tc_appli_approved_by` text NOT NULL,
  `passing_year` int(11) NOT NULL,
  `compleat_level` text NOT NULL,
  `registration_number` text NOT NULL,
  `certificates_status` text NOT NULL,
  `admission_year` int(11) NOT NULL,
  `admission_class` varchar(100) NOT NULL,
  `admission_roll` int(5) NOT NULL,
  `admission_form_no` int(11) NOT NULL,
  `admission_test_result` int(11) NOT NULL,
  `tc_form` varchar(150) NOT NULL,
  `blood` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`id`, `year`, `user_id`, `student_id`, `roll_number`, `class_id`, `student_nam`, `farther_name`, `mother_name`, `birth_date`, `sex`, `present_address`, `permanent_address`, `phone`, `father_occupation`, `father_incom_range`, `mother_occupation`, `student_photo`, `last_class_certificate`, `t_c`, `national_birth_certificate`, `academic_transcription`, `testimonial`, `documents_info`, `starting_year`, `transfer_year`, `transfer_to`, `transfer_reason`, `tc_appli_approved_by`, `passing_year`, `compleat_level`, `registration_number`, `certificates_status`, `admission_year`, `admission_class`, `admission_roll`, `admission_form_no`, `admission_test_result`, `tc_form`, `blood`) VALUES
(45, 2021, 59, '202100001', 1, 11, 'Remmy Baraka', '--Blank--', '--Blank--', '29/03/2013', 'Male', 'Muguga, Thika, Kenya', 'Muguga, Thika, Kenya', '+254000000000', 'Other', '10000', 'Other', '03e1c9507a236b5b99929bdc299a0529.jpg', '', '', 'submited', '', '', '261342831', 2021, 0, '', '', '', 0, '', '', '', 0, '', 0, 0, 0, '', 'B+'),
(46, 2021, 60, '202100002', 2, 11, 'Lisa Wanjiru', '--Blank--', '--Blank--', '06/07/2013', 'Female', 'Muguga, Thika, Kenya', 'Muguga, Thika, Kenya', '254000000000', 'Other', '10000', 'Other', '05b2f5a70a3e6ae1a86b4531e56fd1b5.jpg', '', '', 'submited', '', '', '0361311961', 2021, 0, '', '', '', 0, '', '', '', 0, '', 0, 0, 0, '', 'B+'),
(47, 2021, 61, '202100003', 3, 11, 'Abias Mutuku', '--Blank--', '--Blank--', '06/03/2013', 'Male', 'Muguga, Thika, Kenya', 'Muguga, Thika, Kenya', '254000000000', 'Other', '10000', 'Other', '82a48e9d75ff19f879d78bf6ce0a7e0a.jpg', '', '', 'submited', '', '', '0361304947', 2021, 0, '', '', '', 0, '', '', '', 0, '', 0, 0, 0, '', 'B+'),
(48, 2021, 62, '202100004', 4, 11, 'Cecilia Wamuyu', '--Blank--', '--Blank--', '18/09/2012', 'Female', 'Muguga, Thika, Kenya', 'Muguga, Thika, Kenya', '254000000000', 'Other', '10000', 'Other', '175d7f8dd5b9d413374f21e8b637988b.jpg', '', '', 'submited', '', '', '0361222581', 2021, 0, '', '', '', 0, '', '', '', 0, '', 0, 0, 0, '', 'B+'),
(49, 2021, 63, '202100005', 5, 11, 'Ruth Muthoni', '--Blank--', '--Blank--', '07/09/2011', 'Female', 'Muguga, Thika, Kenya', 'Muguga, Thika, Kenya', '254000000000', 'Other', '10000', 'Other', '78e4710ffe9794e39528ed61b1d8a7a9.jpg', '', '', '', '', 'submited', 'No Birth Cert', 2021, 0, '', '', '', 0, '', '', '', 0, '', 0, 0, 0, '', 'B+');

-- --------------------------------------------------------

--
-- Table structure for table `subjects_mark`
--

CREATE TABLE `subjects_mark` (
  `id` int(11) NOT NULL,
  `exam_title` varchar(100) NOT NULL,
  `class` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `roll_number` int(11) NOT NULL,
  `mark` int(11) NOT NULL,
  `grade` varchar(30) NOT NULL,
  `statud` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `suggestion`
--

CREATE TABLE `suggestion` (
  `id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `author_name` varchar(150) NOT NULL,
  `class` varchar(20) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `suggestion_title` varchar(150) NOT NULL,
  `suggestion` varchar(2500) NOT NULL,
  `date` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suggestion`
--

INSERT INTO `suggestion` (`id`, `author_id`, `author_name`, `class`, `subject`, `suggestion_title`, `suggestion`, `date`) VALUES
(2, 8, 'Willie B. Quint', 'Class 1', '', 'This is test suggestion.', '<p>This is test suggestion.This is test suggestion.This is test suggestion.This is test suggestion.This is test suggestion.This is test suggestion.This is test suggestion.This is test suggestion.This is test suggestion.This is test suggestion.This is test suggestion.This is test suggestion.This is test suggestion.This is test suggestion.This is test suggestion.This is test suggestion.This is test suggestion.This is test suggestion.This is test suggestion.This is test suggestion.</p>\\r\\n', 1466152654);

-- --------------------------------------------------------

--
-- Table structure for table `teachers_info`
--

CREATE TABLE `teachers_info` (
  `id` int(11) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `farther_name` varchar(150) NOT NULL,
  `mother_name` varchar(150) NOT NULL,
  `birth_date` varchar(150) NOT NULL,
  `sex` varchar(30) NOT NULL,
  `present_address` varchar(300) NOT NULL,
  `permanent_address` varchar(300) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `subject` varchar(150) NOT NULL,
  `position` varchar(150) NOT NULL,
  `working_hour` varchar(50) NOT NULL,
  `educational_qualification_1` varchar(500) NOT NULL,
  `educational_qualification_2` varchar(500) NOT NULL,
  `educational_qualification_3` varchar(500) NOT NULL,
  `educational_qualification_4` varchar(500) NOT NULL,
  `educational_qualification_5` varchar(500) NOT NULL,
  `teachers_photo` varchar(200) NOT NULL,
  `cv` varchar(30) NOT NULL,
  `educational_certificat` varchar(30) NOT NULL,
  `exprieance_certificatte` varchar(30) NOT NULL,
  `files_info` varchar(500) NOT NULL,
  `index_no` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachers_info`
--

INSERT INTO `teachers_info` (`id`, `user_id`, `fullname`, `farther_name`, `mother_name`, `birth_date`, `sex`, `present_address`, `permanent_address`, `phone`, `subject`, `position`, `working_hour`, `educational_qualification_1`, `educational_qualification_2`, `educational_qualification_3`, `educational_qualification_4`, `educational_qualification_5`, `teachers_photo`, `cv`, `educational_certificat`, `exprieance_certificatte`, `files_info`, `index_no`) VALUES
(5, '57', 'Teacher Martha', '--Blank--', '--Blank--', '01/01/1980', 'Female', 'Muguga, Thika, Kenya', 'Muguga, Thika, Kenya', '+254706229121', 'Grade 3 Class Teacher', 'Teacher', 'Full time', '--Blank--,--Blank--,--Blank--,--Blank--', '--Blank--,--Blank--,--Blank--,--Blank--', '--Blank--,--Blank--,--Blank--,--Blank--', '--Blank--,--Blank--,--Blank--,--Blank--', '--Blank--,--Blank--,--Blank--,--Blank--', '724533829d88bde4c907e95033264a5d.jpg', '', 'submited', '', '--Blank--', '005');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_attendance`
--

CREATE TABLE `teacher_attendance` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `employ_id` int(11) NOT NULL,
  `employ_title` varchar(150) NOT NULL,
  `present_or_absent` text NOT NULL,
  `attend_time` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_attendance`
--

INSERT INTO `teacher_attendance` (`id`, `year`, `date`, `employ_id`, `employ_title`, `present_or_absent`, `attend_time`) VALUES
(1, 2018, 1464991200, 1, 'Headmaster', 'Present', '02:33 pm'),
(2, 2018, 1464991200, 2, 'Helen K Helton', 'Present', '02:34 pm'),
(3, 2018, 1464991200, 6, 'Robert D. Franco', 'Present', '02:34 pm'),
(4, 2018, 1464991200, 7, 'Michael R. Kemp', 'Present', '02:34 pm'),
(5, 2018, 1464991200, 8, 'Willie B. Quint', 'Absent', ''),
(6, 2018, 1464991200, 9, 'Fredrick V. Keyes', 'Present', '02:34 pm'),
(7, 2018, 1464991200, 10, 'mumar abboud', 'Absent', ''),
(8, 2018, 1464991200, 11, 'Inayah Asfour', 'Present', '02:34 pm'),
(9, 2018, 1466287200, 1, 'Headmaster', 'Present', '11:46 pm'),
(10, 2018, 1466287200, 2, 'Helen K Helton', 'Absent', ''),
(11, 2018, 1466287200, 6, 'Robert D. Franco', 'Present', '11:47 pm'),
(12, 2018, 1466287200, 7, 'Michael R. Kemp', 'Present', '11:47 pm'),
(13, 2018, 1466287200, 8, 'Willie B. Quint', 'Absent', ''),
(14, 2018, 1466287200, 9, 'Fredrick V. Keyes', 'Present', '11:47 pm'),
(15, 2018, 1466287200, 10, 'mumar abboud', 'Absent', ''),
(16, 2018, 1466287200, 11, 'Inayah Asfour', 'Present', '11:47 pm'),
(17, 2018, 1472767200, 1, 'Headmaster', 'Absent', ''),
(18, 2018, 1472767200, 2, 'Helen K Helton', 'Absent', ''),
(19, 2018, 1472767200, 6, 'Robert D. Franco', 'Absent', ''),
(20, 2018, 1472767200, 7, 'Michael R. Kemp', 'Absent', ''),
(21, 2018, 1472767200, 8, 'Willie B. Quint', 'Absent', ''),
(22, 2018, 1472767200, 9, 'Fredrick V. Keyes', 'Absent', ''),
(23, 2018, 1472767200, 10, 'mumar abboud', 'Absent', ''),
(24, 2018, 1472767200, 11, 'Inayah Asfour', 'Absent', ''),
(25, 2021, 1639522800, 1, 'Manager', 'Absent', ''),
(26, 2021, 1639522800, 57, 'Teacher Martha', 'Present', '08:16 am');

-- --------------------------------------------------------

--
-- Table structure for table `transection`
--

CREATE TABLE `transection` (
  `id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `acco_id` int(11) NOT NULL,
  `category` varchar(10) NOT NULL,
  `amount` int(11) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transection`
--

INSERT INTO `transection` (`id`, `date`, `acco_id`, `category`, `amount`, `balance`) VALUES
(1, 1463025600, 1, 'Expense', 16200, 6200),
(2, 1475186400, 2, 'Income', 34000, 30200),
(3, 1475186400, 1, 'Expense', 10000, 10200),
(4, 1639436400, 2, 'Expense', 29500, 19700),
(5, 1639436400, 7, 'Income', 15000, 37200);

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE `transport` (
  `id` int(11) NOT NULL,
  `rout_title` varchar(200) NOT NULL,
  `start_end` varchar(300) NOT NULL,
  `vicles_amount` varchar(20) NOT NULL,
  `descriptions` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `farther_name` varchar(50) NOT NULL,
  `mother_name` varchar(50) NOT NULL,
  `birth_date` varchar(15) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `present_address` varchar(200) NOT NULL,
  `permanent_address` varchar(200) NOT NULL,
  `working_hour` varchar(30) NOT NULL,
  `educational_qualification_1` varchar(200) NOT NULL,
  `educational_qualification_2` varchar(200) NOT NULL,
  `educational_qualification_3` varchar(200) NOT NULL,
  `educational_qualification_4` varchar(200) NOT NULL,
  `educational_qualification_5` varchar(200) NOT NULL,
  `users_photo` varchar(200) NOT NULL,
  `cv` varchar(30) NOT NULL,
  `educational_certificat` varchar(30) NOT NULL,
  `exprieance_certificatte` varchar(30) NOT NULL,
  `files_info` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `profile_image` varchar(100) NOT NULL,
  `user_status` text NOT NULL,
  `leave_status` varchar(15) NOT NULL,
  `leave_start` int(11) NOT NULL,
  `leave_end` int(11) NOT NULL,
  `salary` int(1) NOT NULL,
  `child_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `phone`, `profile_image`, `user_status`, `leave_status`, `leave_start`, `leave_end`, `salary`, `child_id`) VALUES
(1, '127.0.0.1', 'Manager', '$2y$08$qBQ/MzJzXyil0yuVM.s1XewJerIMCntwxez/Jfs3x/xwxFnkKWo2y', NULL, 'manager@stalbansschoolthika.sc.ke', NULL, 'HBj4C30st5pOHbjpHojzGu4667ad49e75655b131', 1420113369, 'IcD7gVAwU5DDX4jTuWOVXe', 1268889823, 1639541202, 1, 'Martin', 'Mwangi', '123456789', 'log.png', 'Employee', 'Available', 1447196400, 1449874800, 1, 0),
(57, '::1', 'Teacher Martha', '$2y$08$SrKGDuaROFrpjUSiWVL3wujOmRDaFTT1PuTlHn66AufEeXcXNZaVG', NULL, 'tresther@stalbansschoolthika.sc.ke', NULL, NULL, NULL, NULL, 1639476435, 1639540252, 1, 'Teacher', 'Martha', '+254706229121', '724533829d88bde4c907e95033264a5d.jpg', 'Employee', 'Available', 0, 0, 0, 0),
(59, '::1', 'Remmy Baraka', '$2y$08$TaSgTSo6G5Yew1uk6kHVCuDpLcV2LywBFpEOXg16Mfo5PL2gAcaty', NULL, 'pp.remmy@stalbansschoolthika.sc.ke', NULL, NULL, NULL, NULL, 1639477235, 1639539900, 1, 'Remmy', 'Baraka', '+254000000000', '03e1c9507a236b5b99929bdc299a0529.jpg', '', '', 0, 0, 0, 0),
(60, '::1', 'Lisa Wanjiru', '$2y$08$Evw.2zwU4s1asUKHdql9mOp4sTgLvRdwiXex2ErZ..kCOTV9/1XDS', NULL, 'pp.lisa@stalbansschoolthika.sc.ke', NULL, NULL, NULL, NULL, 1639477349, 1639477349, 1, 'Lisa', 'Wanjiru', '254000000000', '05b2f5a70a3e6ae1a86b4531e56fd1b5.jpg', '', '', 0, 0, 0, 0),
(61, '::1', 'Abias Mutuku', '$2y$08$.FWlur2J2E8oYlUIBiwbheziFQ98T9WgIULuHE4Mxp12Pbrigzar6', NULL, 'pp.abias@stalbansschoolthika.sc.ke', NULL, NULL, NULL, NULL, 1639477450, 1639477450, 1, 'Abias', 'Mutuku', '254000000000', '82a48e9d75ff19f879d78bf6ce0a7e0a.jpg', '', '', 0, 0, 0, 0),
(62, '::1', 'Cecilia Wamuyu', '$2y$08$9VdxncDgFeWODQTpB7GK5e8S9ROk2ei7AXZJIuZnIhtrW5snyt.q.', NULL, 'pp.cecilia@stalbansschoolthika.sc.ke', NULL, NULL, NULL, NULL, 1639477554, 1639477554, 1, 'Cecilia', 'Wamuyu', '254000000000', '175d7f8dd5b9d413374f21e8b637988b.jpg', '', '', 0, 0, 0, 0),
(63, '::1', 'Ruth Muthoni', '$2y$08$3xib9FN5gGaJcoyDP6oAQO2I5dmnoPrmD16/lPPlqGowpqwRK0zJO', NULL, 'pp.ruth@stalbansschoolthika.sc.ke', NULL, NULL, NULL, NULL, 1639477731, 1639477731, 1, 'Ruth', 'Muthoni', '254000000000', '78e4710ffe9794e39528ed61b1d8a7a9.jpg', '', '', 0, 0, 0, 0),
(65, '::1', 'Alex Warorua', '$2y$08$1LgYZ4Xy5H433VIGEmUDN.AaSeMAKee01CnFBvspCgZZrhokXuiF2', NULL, 'waroruaalex640@gmail.com', NULL, NULL, NULL, NULL, 1639497137, 1639502138, 1, 'Alex', 'Warorua', '2542312513483', '3e371cb3f85dfcb8fe30e13d52e97593.gif', '', '', 0, 0, 0, 0),
(66, '::1', 'Alex Warorua1', '$2y$08$odS8qcyJhROT7FU31QSEa.w7iZJ7DQYag927dy2Gzs054TMm46ovK', NULL, 'thetsavo254@gmail.com', NULL, NULL, NULL, NULL, 1639500456, 1639502533, 1, 'Alex', 'Warorua', '2540716912002', '5b34f3b949aaf280ad4cd76465869874.gif', '', '', 0, 0, 0, 202100005),
(68, '::1', 'Austin Meyer', '$2y$08$S2DiVlkowFcGNRr7.tP5deP5FmBAqxmFkdJ21c5zLzwuvN1KHCwCK', NULL, 'parent@stalbansschoolthika.sc.ke', NULL, NULL, NULL, NULL, 1639505227, 1639539874, 1, 'Austin', 'Meyer', '254716912002', 'man.jpeg', '', '', 0, 0, 0, 202100001);

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(57, 57, 4),
(59, 59, 3),
(60, 60, 3),
(61, 61, 3),
(62, 62, 3),
(63, 63, 3),
(65, 65, 5),
(66, 66, 5),
(68, 68, 5);

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(11) NOT NULL,
  `company_name` varchar(150) NOT NULL,
  `company_phone` varchar(15) NOT NULL,
  `company_email` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `cp_name` varchar(150) NOT NULL,
  `cp_address` varchar(200) NOT NULL,
  `cp_phone` varchar(15) NOT NULL,
  `bank_name` varchar(150) NOT NULL,
  `branch_name` varchar(15) NOT NULL,
  `account_no` varchar(30) NOT NULL,
  `ifsc_code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `company_name`, `company_phone`, `company_email`, `country`, `state`, `city`, `cp_name`, `cp_address`, `cp_phone`, `bank_name`, `branch_name`, `account_no`, `ifsc_code`) VALUES
(5, 'Tsavo Africa', '+254793060164', 'Waroruaalex640@gmail.com', 'Kenya', 'Nairobi', 'Thika', 'Alex Warorua', 'Kamagambo, Thika, Kenya', '+254716912002', 'Coop Bank', 'Thika Branch', '0112220015566568', '55-664');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_title`
--
ALTER TABLE `account_title`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_exam`
--
ALTER TABLE `add_exam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books_category`
--
ALTER TABLE `books_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calender_events`
--
ALTER TABLE `calender_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_routine`
--
ALTER TABLE `class_routine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_students`
--
ALTER TABLE `class_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_subject`
--
ALTER TABLE `class_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `configuration`
--
ALTER TABLE `configuration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `config_week_day`
--
ALTER TABLE `config_week_day`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily_attendance`
--
ALTER TABLE `daily_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dormitory`
--
ALTER TABLE `dormitory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dormitory_bed`
--
ALTER TABLE `dormitory_bed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dormitory_room`
--
ALTER TABLE `dormitory_room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employe`
--
ALTER TABLE `employe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_attendanc`
--
ALTER TABLE `exam_attendanc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_grade`
--
ALTER TABLE `exam_grade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_routine`
--
ALTER TABLE `exam_routine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_item`
--
ALTER TABLE `fee_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `final_result`
--
ALTER TABLE `final_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inven_category`
--
ALTER TABLE `inven_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inve_item`
--
ALTER TABLE `inve_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issu_item`
--
ALTER TABLE `issu_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_application`
--
ALTER TABLE `leave_application`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library_member`
--
ALTER TABLE `library_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `massage`
--
ALTER TABLE `massage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice_board`
--
ALTER TABLE `notice_board`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parents_info`
--
ALTER TABLE `parents_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result_action`
--
ALTER TABLE `result_action`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result_shit`
--
ALTER TABLE `result_shit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result_submition_info`
--
ALTER TABLE `result_submition_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_based_access`
--
ALTER TABLE `role_based_access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `set_salary`
--
ALTER TABLE `set_salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slip`
--
ALTER TABLE `slip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects_mark`
--
ALTER TABLE `subjects_mark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suggestion`
--
ALTER TABLE `suggestion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers_info`
--
ALTER TABLE `teachers_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_attendance`
--
ALTER TABLE `teacher_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transection`
--
ALTER TABLE `transection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_title`
--
ALTER TABLE `account_title`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `add_exam`
--
ALTER TABLE `add_exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `books_category`
--
ALTER TABLE `books_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `calender_events`
--
ALTER TABLE `calender_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `class_routine`
--
ALTER TABLE `class_routine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `class_students`
--
ALTER TABLE `class_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `class_subject`
--
ALTER TABLE `class_subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `config_week_day`
--
ALTER TABLE `config_week_day`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `daily_attendance`
--
ALTER TABLE `daily_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `dormitory`
--
ALTER TABLE `dormitory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dormitory_bed`
--
ALTER TABLE `dormitory_bed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `dormitory_room`
--
ALTER TABLE `dormitory_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `employe`
--
ALTER TABLE `employe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_attendanc`
--
ALTER TABLE `exam_attendanc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `exam_grade`
--
ALTER TABLE `exam_grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `exam_routine`
--
ALTER TABLE `exam_routine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `fee_item`
--
ALTER TABLE `fee_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `final_result`
--
ALTER TABLE `final_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `inven_category`
--
ALTER TABLE `inven_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `inve_item`
--
ALTER TABLE `inve_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `issu_item`
--
ALTER TABLE `issu_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `leave_application`
--
ALTER TABLE `leave_application`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `library_member`
--
ALTER TABLE `library_member`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `massage`
--
ALTER TABLE `massage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `notice_board`
--
ALTER TABLE `notice_board`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `parents_info`
--
ALTER TABLE `parents_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `result_action`
--
ALTER TABLE `result_action`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `result_shit`
--
ALTER TABLE `result_shit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `result_submition_info`
--
ALTER TABLE `result_submition_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `role_based_access`
--
ALTER TABLE `role_based_access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `set_salary`
--
ALTER TABLE `set_salary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slip`
--
ALTER TABLE `slip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `student_info`
--
ALTER TABLE `student_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `subjects_mark`
--
ALTER TABLE `subjects_mark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suggestion`
--
ALTER TABLE `suggestion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teachers_info`
--
ALTER TABLE `teachers_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `teacher_attendance`
--
ALTER TABLE `teacher_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `transection`
--
ALTER TABLE `transection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transport`
--
ALTER TABLE `transport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userinfo`
--
ALTER TABLE `userinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
