-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2023 at 02:44 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `librarymanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `il_bookcategories`
--

CREATE TABLE `il_bookcategories` (
  `bc_id` int(20) NOT NULL,
  `bc_code` varchar(200) NOT NULL,
  `bc_name` varchar(200) NOT NULL,
  `bc_desc` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `il_bookcategories`
--

INSERT INTO `il_bookcategories` (`bc_id`, `bc_code`, `bc_name`, `bc_desc`) VALUES
(4, 'BC-CAVGI', 'Non-fiction', 'Nonfiction or non-fiction is content that purports in good faith to represent truth and accuracy regarding information, events, or people. Nonfiction content may be presented either objectively or subjectively, and may sometimes take the form of a story. This is an updated book category description'),
(5, 'BC-JVQBM', 'Fiction', 'A fiction is a deliberately fabricated account of something. It can also be a literary work based on imagination rather than on fact, like a novel or short story. The Latin word fictus means â€œto form,â€ which seems like a good source for the English word fiction, since fiction is formed in the imagination.'),
(6, 'BC-AHGWJ', 'References', 'Reference materials are various sources that provide background information or quick facts on any given topic.');

-- --------------------------------------------------------

--
-- Table structure for table `il_books`
--

CREATE TABLE `il_books` (
  `b_id` int(20) NOT NULL,
  `b_title` varchar(200) NOT NULL,
  `b_author` varchar(200) NOT NULL,
  `b_isbn_no` varchar(200) NOT NULL,
  `b_publisher` varchar(200) NOT NULL,
  `b_coverimage` varchar(200) NOT NULL,
  `bc_id` varchar(200) NOT NULL,
  `bc_name` varchar(200) NOT NULL,
  `b_status` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `b_summary` longtext NOT NULL,
  `b_copies` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `il_books`
--

INSERT INTO `il_books` (`b_id`, `b_title`, `b_author`, `b_isbn_no`, `b_publisher`, `b_coverimage`, `bc_id`, `bc_name`, `b_status`, `created_at`, `b_summary`, `b_copies`) VALUES
(1, 'Practical Web 2.0 Applications With PHP', 'Quentin Zervaas', '978-1-59059-906-8', 'Apress', '', '6', 'References', 'Available', '2020-05-10 17:28:52.161058', 'Many of today\'s web development books and articles cover single aspects of the development life cycle, delving only into specific features rather than looking at the whole picture. In this book, we will develop a complete web application. Although we will be using various third-party libraries and tools to aid in development, we will be developing the application from start to finish. The focus of this book is on Web 2. 0, a catchphrase that has been in use for a few years now and is typically used to refer to web sites or web applications that have particular char- teristics. Some of these characteristics include the following:  Correctly using HTML/XHTML, CSS, and other standards Using Ajax (Asynchronous JavaScript and XML) to provide a responsive application without requiring a full refresh of pages  Allowing syndication of web site content using RSS Adding wikis, blogs, or tags Although not everybody is an advocate of the Web 2. 0 phrase, the term does signify forward progress in web development. And although not everybody has the need to provide a wiki or a blog on their web site, the other characteristics listed (such as correct standards usage) provide a good basis for a web site and should be used by all developers, regardless of how they want their web site or application categorized. I wrote this book because I want to share with other users how I build web sites.', '40'),
(2, 'Adobe Dreamweaver CS4 Complete', 'Shelly Wells', 'ISBN-13: 978-0-324-78832-7', 'Cengange Learning', 'IMG_20200413_112931_6.jpg', '6', 'References', 'Available', '2020-04-21 11:42:33.568354', 'Adobe Dreamweaver CS4: Complete Concepts and Techniques gives students a complete introduction to Web design and Development using the Adobe Dreamweaver CS4 software.Visually-dynamic chapters and ongoing central project allow students to gain the skills necessary to build exciting, professional looking websites and more! Real-World, hands on training successful prepares students to use Dreamweaver CS4 in their professional and personal lives.', '86'),
(3, 'Unix Fundermentals', 'Harley Hann', 'ISBN 0-07-025511-3', 'Mc Graw Hill', 'IMG_20200413_111712_8.jpg', '6', 'References', 'Available', '2020-04-20 11:07:34.340681', 'This book will show you how to Use Unix operating system effectively.You will learn: What is UNIX, and why is so important, useful and satisfying. How UNIX world is connected, How to start using Unix and which UNIX programs and features you can use immediately.', '46'),
(4, 'The Immortal Life of Henrietta Lacks', 'Rebecca Skloot', 'ISBN 0-13-681095-1', 'Crown Publishing Group', 'Rebecca Skloot.jpeg', '4', 'Non-fiction', 'Available', '2020-04-23 11:02:42.194390', 'The book is about Henrietta Lacks and the immortal cell line, known as HeLa, that came from Lacks\'s cervical cancer cells in 1951. Skloot became interested in Lacks after a biology teacher referenced her, but didn\'t know much about her. Skloot began conducting extensive research on her and worked with Lacks\' family to create the book. The book is notable for its science writing and dealing with ethical issues of race and class in medical research. Skloot said that some of the information was taken from the journal of Deborah Lacks, Henrietta Lacks\'s daughter, as well as from \"archival photos and documents, scientific and historical research.\" It is Skloot\'s first book.', '198'),
(5, 'Nineteen Eighty-Four', 'George Orwell', 'ISBN 0-13-379061-1', 'Secker & Warburg Publishers', '1984.jpg', '5', 'Fiction', 'Available', '2020-04-28 10:05:27.648929', 'Nineteen Eighty-Four: A Novel, often published as 1984, is a dystopian novel by English novelist George Orwell. It was published on 8 June 1949 by Secker & Warburg as Orwell\'s ninth and final book completed in his lifetime. The story was mostly written at Barnhill, a farmhouse on the Scottish island of Jura, at times while Orwell suffered from severe tuberculosis. Thematically, Nineteen Eighty-Four centres on the consequences of government over-reach, totalitarianism, mass surveillance, and repressive regimentation of all persons and behaviours within society.\r\n\r\nThe story takes place in an imagined future, the year 1984, when much of the world has fallen victim to perpetual war, omnipresent government surveillance, historical negationism, and propaganda. Great Britain, known as Airstrip One, has become a province of a superstate named Oceania that is ruled by the Party who employ the Thought Police to persecute individuality and independent thinking.[4] Big Brother, the leader of the Party, enjoys an intense cult of personality despite the fact that he may not exist. The protagonist, Winston Smith, is a diligent and skillful rank-and-file worker and Party member who secretly hates the Party and dreams of rebellion. He enters a forbidden relationship with a co-worker, Julia.\r\n\r\nNineteen Eighty-Four has become a classic literary example of political and dystopian fiction. Many terms used in the novel have entered common usage, including Big Brother, doublethink, thoughtcrime, Newspeak, Room 101, telescreen, 2 + 2 = 5, prole, and memory hole. Nineteen Eighty-Four also popularised the adjective \"Orwellian\", connoting things such as official deception, secret surveillance, brazenly misleading terminology, and manipulation of recorded history by a totalitarian or authoritarian state. Time included it on its 100 best English-language novels from 1923 to 2005.[5] It was placed on the Modern Library\'s 100 Best Novels, reaching No. 13 on the editors\' list and No. 6 on the readers\' list.[6] In 2003, the novel was listed at No. 8 on The Big Read survey by the BBC.[7] Parallels have been drawn between the novel\'s subject matter and real life instances of totalitarianism, communism, mass surveillance, and violations of freedom of expression among other themes.', '56');

-- --------------------------------------------------------

--
-- Table structure for table `il_chargesrates`
--

CREATE TABLE `il_chargesrates` (
  `cr_id` int(20) NOT NULL,
  `cr_code` varchar(200) NOT NULL,
  `cr_name` varchar(200) NOT NULL,
  `cr_amount` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `il_chargesrates`
--

INSERT INTO `il_chargesrates` (`cr_id`, `cr_code`, `cr_name`, `cr_amount`) VALUES
(1, 'XTUOB', 'Lost Book', '1000'),
(2, 'QPDSY', 'Damaged Book', '600'),
(4, 'EVNUI', 'Late Return', '500');

-- --------------------------------------------------------

--
-- Table structure for table `il_fines`
--

CREATE TABLE `il_fines` (
  `f_id` int(200) NOT NULL,
  `f_type` varchar(200) NOT NULL,
  `f_amt` varchar(200) NOT NULL,
  `f_payment_code` varchar(200) NOT NULL,
  `s_id` varchar(200) NOT NULL,
  `s_number` varchar(200) NOT NULL,
  `s_name` varchar(200) NOT NULL,
  `f_status` varchar(200) NOT NULL,
  `f_checksum` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `il_fines`
--

INSERT INTO `il_fines` (`f_id`, `f_type`, `f_amt`, `f_payment_code`, `s_id`, `s_number`, `s_name`, `f_status`, `f_checksum`, `created_at`) VALUES
(11, 'Damaged Book', '600', 'TQSZPCUBHR', '6', 'iLib-59213', 'Student 004', 'Paid', '3f7ac931a9f7042411f7d851459d441258ef1af4', '2020-04-23 13:41:53.411860'),
(12, 'Lost Book', '1000', 'KVNLBTUXGP', '6', 'iLib-59213', 'Student 004', 'Paid', '52faed65cfc51f15802600f8ec7cb27da65cddac', '2020-04-23 13:48:22.641902'),
(13, 'Damaged Book', '600', 'ELVXDCNTZK', '3', 'iLib-37508', 'Student 001', 'Paid', '1uqj0wlmg29fisr', '2020-04-28 10:12:04.734839'),
(14, 'Lost Book', '1000', 'BSKTYCUDWN', '7', 'iLib-74291', 'Student 005', 'Paid', 'xy2u1o9l7zgw0eh', '2020-04-28 10:38:03.186140'),
(15, 'Damaged Book', '600', 'VIXKRBZFWA', '5', 'iLib-12487', 'Student 003', 'Paid', 'fd6n9qygrtsvxp4', '2020-04-28 10:38:15.158537'),
(16, 'Lost Book', '1000', 'UZQXOLMBHW', '6', 'iLib-59213', 'Student 004', 'Paid', 'ed097f2bedb1f9e7a8c35f5611cbed8e804b1e2f', '2020-04-28 11:01:20.784047'),
(17, 'Lost Book', '1000', 'CSUWKBZEIV', '6', 'iLib-59213', 'Student 004', 'Paid', 'f4ba4db2a956eedc5e9705e3d7e2acbe9e47a1e2', '2020-05-10 17:09:12.351553');

-- --------------------------------------------------------

--
-- Table structure for table `il_librarians`
--

CREATE TABLE `il_librarians` (
  `l_id` int(20) NOT NULL,
  `l_name` varchar(200) NOT NULL,
  `l_number` varchar(200) NOT NULL,
  `l_email` varchar(200) NOT NULL,
  `l_pwd` varchar(200) NOT NULL,
  `l_bio` longtext NOT NULL,
  `l_phone` varchar(200) NOT NULL,
  `l_adr` varchar(200) NOT NULL,
  `l_dpic` varchar(200) NOT NULL,
  `l_acc_status` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `il_librarians`
--

INSERT INTO `il_librarians` (`l_id`, `l_name`, `l_number`, `l_email`, `l_pwd`, `l_bio`, `l_phone`, `l_adr`, `l_dpic`, `l_acc_status`, `created_at`) VALUES
(4, 'haroon', 'iLib-29057', 'h1@gmail.com', '63982e54a7aeb0d89910475ba6dbd3ca6dd4e5a1', '', '03063529347', 'kchi', '', 'Active', '2023-09-10 07:46:32.572758');

-- --------------------------------------------------------

--
-- Table structure for table `il_libraryoperations`
--

CREATE TABLE `il_libraryoperations` (
  `lo_id` int(20) NOT NULL,
  `lo_type` varchar(200) NOT NULL,
  `lo_number` varchar(200) NOT NULL,
  `s_id` varchar(200) NOT NULL,
  `s_name` varchar(200) NOT NULL,
  `s_number` varchar(200) NOT NULL,
  `l_id` varchar(200) NOT NULL,
  `l_name` varchar(200) NOT NULL,
  `l_number` varchar(200) NOT NULL,
  `bc_id` varchar(200) NOT NULL,
  `bc_name` varchar(200) NOT NULL,
  `b_id` varchar(200) NOT NULL,
  `b_title` varchar(200) NOT NULL,
  `b_isbn_no` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `lo_checksum` varchar(200) NOT NULL,
  `lo_status` varchar(200) NOT NULL,
  `lo_return_date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `il_messages`
--

CREATE TABLE `il_messages` (
  `id` int(20) NOT NULL,
  `sender` varchar(200) NOT NULL,
  `receiver` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `sender_id` varchar(200) NOT NULL,
  `receiver_id` varchar(200) NOT NULL,
  `send_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `il_messages`
--

INSERT INTO `il_messages` (`id`, `sender`, `receiver`, `content`, `sender_id`, `receiver_id`, `send_at`) VALUES
(2, 'TrueHost Inc', 'MartDevelopers Inc', 'Hi @MartDeveloper,hope you doing good. Your invoice has been processed.', '0', '1', '0000-00-00 00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `il_notifications`
--

CREATE TABLE `il_notifications` (
  `id` int(20) NOT NULL,
  `content` longtext NOT NULL,
  `user_id` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `il_notifications`
--

INSERT INTO `il_notifications` (`id`, `content`, `user_id`, `created_at`) VALUES
(1, 'Server 001 (Orion Server) operating at 100 % optimum.', '1', '0000-00-00 00:00:00.000000'),
(2, 'Practical Web 2.0 Applications With PHP, ISBN NO: 978-1-59059-906-8 Has been borrowed', '1', '2020-04-20 10:54:30.414376'),
(3, 'Adobe Dreamweaver CS4 Complete, ISBN NO: ISBN-13: 978-0-324-78832-7 Has been returned', '1', '2020-04-20 10:58:51.725060'),
(4, 'Practical Web 2.0 Applications With PHP, ISBN NO: 978-1-59059-906-8 Has been reported lost.', '1', '2020-04-20 11:02:25.052180'),
(5, 'Unix Fundermentals, ISBN NO: ISBN 0-07-025511-3 Has been borrowed', '1', '2020-04-20 11:07:10.641909'),
(6, 'Unix Fundermentals, ISBN NO: ISBN 0-07-025511-3 Has been returned as a damanged book.', '1', '2020-04-20 11:07:34.499307'),
(7, 'Ksh 1000 Has been paid as a fine for Lost Book', '1', '2020-04-20 11:12:00.421075'),
(8, 'Ksh 1000 Has been paid as a fine for Lost Book', '1', '2020-04-20 11:12:33.908551'),
(9, 'Adobe Dreamweaver CS4 Complete, ISBN NO: ISBN-13: 978-0-324-78832-7 Has been borrowed', '1', '2020-04-21 11:26:24.578722'),
(10, 'Adobe Dreamweaver CS4 Complete, ISBN NO: ISBN-13: 978-0-324-78832-7 Has been borrowed', '1', '2020-04-21 11:26:59.547041'),
(11, 'Nineteen Eighty-Four, ISBN NO: ISBN 0-13-379061-1 Has been borrowed', '1', '2020-04-21 11:27:50.671456'),
(12, 'The Immortal Life of Henrietta Lacks, ISBN NO: ISBN 0-13-681095-1 Has been borrowed', '1', '2020-04-21 11:29:39.512183'),
(13, 'Adobe Dreamweaver CS4 Complete, ISBN NO: ISBN-13: 978-0-324-78832-7 Has been returned', '1', '2020-04-21 11:37:10.097938'),
(14, 'Nineteen Eighty-Four, ISBN NO: ISBN 0-13-379061-1 Has been reported lost.', '1', '2020-04-21 11:40:01.880245'),
(15, 'Adobe Dreamweaver CS4 Complete, ISBN NO: ISBN-13: 978-0-324-78832-7 Has been returned as a damanged book.', '1', '2020-04-21 11:42:33.931608'),
(16, 'The Immortal Life of Henrietta Lacks, ISBN NO: ISBN 0-13-681095-1 Has been returned', '1', '2020-04-21 11:49:22.880157'),
(17, 'Ksh 1000 Has been paid as a fine for Lost Book', '1', '2020-04-21 12:20:16.850445'),
(18, 'Ksh 600 Has been paid as a fine for Damaged Book', '1', '2020-04-21 12:20:32.977956'),
(19, 'Practical Web 2.0 Applications With PHP, ISBN NO: 978-1-59059-906-8 Has been borrowed', '1', '2020-04-23 10:34:36.988780'),
(20, 'Practical Web 2.0 Applications With PHP, ISBN NO: 978-1-59059-906-8 Has been returned', '1', '2020-04-23 10:55:09.309200'),
(21, 'Nineteen Eighty-Four, ISBN NO: ISBN 0-13-379061-1 Has been borrowed', '1', '2020-04-23 10:58:23.022505'),
(22, 'Nineteen Eighty-Four, ISBN NO: ISBN 0-13-379061-1 Has been returned as a damanged book.', '1', '2020-04-23 10:58:42.680808'),
(23, 'The Immortal Life of Henrietta Lacks, ISBN NO: ISBN 0-13-681095-1 Has been borrowed', '1', '2020-04-23 11:01:54.950067'),
(24, 'The Immortal Life of Henrietta Lacks, ISBN NO: ISBN 0-13-681095-1 Has been reported lost.', '1', '2020-04-23 11:02:42.303080'),
(25, 'Practical Web 2.0 Applications With PHP, ISBN NO: 978-1-59059-906-8 Has been borrowed', '1', '2020-04-23 13:32:20.448552'),
(26, 'Ksh 600 Has been paid as a fine for Damaged Book', '1', '2020-04-23 13:41:53.263587'),
(27, 'Ksh 1000 Has been paid as a fine for Lost Book', '1', '2020-04-23 13:48:22.361684'),
(28, 'Nineteen Eighty-Four, ISBN NO: ISBN 0-13-379061-1 Has been borrowed', '1', '2020-04-28 10:02:37.328843'),
(29, 'Practical Web 2.0 Applications With PHP, ISBN NO: 978-1-59059-906-8 Has been returned', '1', '2020-04-28 10:03:17.259697'),
(30, 'Nineteen Eighty-Four, ISBN NO: ISBN 0-13-379061-1 Has been returned', '1', '2020-04-28 10:05:27.708106'),
(31, 'Practical Web 2.0 Applications With PHP, ISBN NO: 978-1-59059-906-8 Has been borrowed', '1', '2020-04-28 10:09:43.948572'),
(32, 'Practical Web 2.0 Applications With PHP, ISBN NO: 978-1-59059-906-8 Has been returned as a damanged book.', '1', '2020-04-28 10:09:58.585580'),
(33, 'Ksh 600 Has been paid as a fine for Damaged Book', '1', '2020-04-28 10:12:04.529798'),
(34, 'Practical Web 2.0 Applications With PHP, ISBN NO: 978-1-59059-906-8 Has been borrowed', '3', '2020-04-28 10:30:37.316856'),
(35, 'Practical Web 2.0 Applications With PHP, ISBN NO: 978-1-59059-906-8 Has been returned', '3', '2020-04-28 10:32:29.814260'),
(36, 'Practical Web 2.0 Applications With PHP, ISBN NO: 978-1-59059-906-8 Has been reported lost.', '3', '2020-04-28 10:35:27.157350'),
(37, 'Practical Web 2.0 Applications With PHP, ISBN NO: 978-1-59059-906-8 Has been returned as a damanged book.', '3', '2020-04-28 10:35:56.629559'),
(38, 'Ksh 1000 Has been paid as a fine for Lost Book', '3', '2020-04-28 10:38:03.026219'),
(39, 'Ksh 600 Has been paid as a fine for Damaged Book', '3', '2020-04-28 10:38:14.916425'),
(40, 'Practical Web 2.0 Applications With PHP, ISBN NO: 978-1-59059-906-8 Has been borrowed', '1', '2020-04-28 10:56:57.811919'),
(41, 'Practical Web 2.0 Applications With PHP, ISBN NO: 978-1-59059-906-8 Has been borrowed', '6', '2020-04-28 10:58:10.691321'),
(42, 'Practical Web 2.0 Applications With PHP, ISBN NO: 978-1-59059-906-8 Has been returned', '1', '2020-04-28 10:59:55.242160'),
(43, 'Practical Web 2.0 Applications With PHP, ISBN NO: 978-1-59059-906-8 Has been reported lost.', '1', '2020-04-28 11:00:07.237435'),
(44, 'Ksh 1000 Has been paid as a fine for Lost Book', '6', '2020-04-28 11:01:20.667103'),
(45, 'Practical Web 2.0 Applications With PHP, ISBN NO: 978-1-59059-906-8 Has been borrowed', '1', '2020-05-10 17:00:56.354003'),
(46, 'Practical Web 2.0 Applications With PHP, ISBN NO: 978-1-59059-906-8 Has been returned', '1', '2020-05-10 17:02:36.296531'),
(47, 'Practical Web 2.0 Applications With PHP, ISBN NO: 978-1-59059-906-8 Has been borrowed', '1', '2020-05-10 17:04:27.231322'),
(48, 'Practical Web 2.0 Applications With PHP, ISBN NO: 978-1-59059-906-8 Has been borrowed', '1', '2020-05-10 17:04:32.083926'),
(49, 'Practical Web 2.0 Applications With PHP, ISBN NO: 978-1-59059-906-8 Has been reported lost.', '1', '2020-05-10 17:05:24.736874'),
(50, 'Ksh 1000 Has been paid as a fine for Lost Book', '1', '2020-05-10 17:09:12.307379');

-- --------------------------------------------------------

--
-- Table structure for table `il_passwordresets`
--

CREATE TABLE `il_passwordresets` (
  `pr_id` int(20) NOT NULL,
  `pr_useremail` varchar(200) NOT NULL,
  `pr_usertype` varchar(200) NOT NULL,
  `pr_dummypwd` varchar(200) NOT NULL,
  `pr_token` varchar(200) NOT NULL,
  `pr_status` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `il_passwordresets`
--

INSERT INTO `il_passwordresets` (`pr_id`, `pr_useremail`, `pr_usertype`, `pr_dummypwd`, `pr_token`, `pr_status`, `created_at`) VALUES
(4, 'lib002@ilib.org', 'Librarian', '9UWEOL5YMF', '8b652d8ad3549176cdc3d78fc59bfc71f5810b86', 'Reset', '2020-04-28 09:58:46'),
(5, 'student004@gmail.com', 'Student', 'PHTIFKQGU2', 'c22335c0f48a0309b57c1f009ddae19e3dbafa88', 'Reset', '2020-04-28 09:58:58'),
(6, 'haroonkamboh81@gmail.com', 'Librarian', 'PXRNH1J96U', '3ae66565d9f65c37dae0084e53123019606f75ec', 'Pending', '2023-09-11 11:33:41');

-- --------------------------------------------------------

--
-- Table structure for table `il_reccomendations`
--

CREATE TABLE `il_reccomendations` (
  `iR_id` int(20) NOT NULL,
  `iR_Booktitle` varchar(200) NOT NULL,
  `iR_author` varchar(200) NOT NULL,
  `iR_desc` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `il_reccomendations`
--

INSERT INTO `il_reccomendations` (`iR_id`, `iR_Booktitle`, `iR_author`, `iR_desc`) VALUES
(1, 'HTML and CSS: Design and Build Websites', 'Jon Duckett', 'A full-color introduction to the basics of HTML and CSS from the publishers of Wrox! \r\n\r\nEvery day, more and more people want to learn some HTML and CSS. Joining the professional web designers and programmers are new audiences who need to know a little bit of code at work (update a content management system or e-commerce store) and those who want to make their personal blogs more attractive. Many books teaching HTML and CSS are dry and only written for those who want to become programmers, which is why this book takes an entirely new approach.\r\n\r\n    Introduces HTML and CSS in a way that makes them accessible to everyoneâ€”hobbyists, students, and professionalsâ€”and itâ€™s full-color throughout\r\n    Utilizes information graphics and lifestyle photography to explain the topics in a simple way that is engaging\r\n    Boasts a unique structure that allows you to progress through the chapters from beginning to end or just dip into topics of particular interest at your leisure\r\n\r\nThis educational book is one that you will enjoy picking up, reading, then referring back to. It will make you wish other technical topics were presented in such a simple, attractive and engaging way!\r\n\r\nThis book is also available as part of a set in hardcover - Web Design with HTML, CSS, JavaScript and jQuery, 9781119038634; and in softcover - Web Design with HTML, CSS, JavaScript and jQuery, 9781118907443.');

-- --------------------------------------------------------

--
-- Table structure for table `il_receivedmails`
--

CREATE TABLE `il_receivedmails` (
  `rm_id` int(20) NOT NULL,
  `sm_id` varchar(200) NOT NULL,
  `sm_title` varchar(200) NOT NULL,
  `sm_receiverNo` varchar(200) NOT NULL,
  `sm_senderNo` varchar(200) NOT NULL,
  `sm_senderName` varchar(200) NOT NULL,
  `sm_receiverName` varchar(200) NOT NULL,
  `sm_reply` longtext NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `il_sendmails`
--

CREATE TABLE `il_sendmails` (
  `sm_id` int(20) NOT NULL,
  `sm_title` varchar(200) NOT NULL,
  `sm_senderNo` varchar(200) NOT NULL,
  `sm_receiverNo` varchar(200) NOT NULL,
  `sm_senderName` varchar(200) NOT NULL,
  `sm_receiverName` varchar(200) NOT NULL,
  `sm_sentMail` longtext NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `il_sendmails`
--

INSERT INTO `il_sendmails` (`sm_id`, `sm_title`, `sm_senderNo`, `sm_receiverNo`, `sm_senderName`, `sm_receiverName`, `sm_sentMail`, `created_at`) VALUES
(1, 'Test Mail', '', 'iLib-37508', 'System Admin', 'Student 001', 'Hello this is a test mail.', '2020-04-18 13:23:17.946244'),
(2, 'Test Mail 2', '', 'iLib-89325', 'System Admin', 'Student 002', 'This is not an emergency broadcast. Its a mail functionality test', '2020-04-18 13:26:22.527257'),
(3, 'Lost Book Payment', '', 'iLib-74291', 'Library Staff', 'Student 005', 'Hello, hope you are doing well, please make sure you pay for the lost book asap.', '2020-04-22 13:14:59.155093'),
(4, 'Test Mail', '', 'iLib-24567', 'System Admin', 'Library Staff', 'Hello @ Librarian 002. Hope you doing good, so hows the going?\r\n', '2020-04-22 13:30:42.802898');

-- --------------------------------------------------------

--
-- Table structure for table `il_students`
--

CREATE TABLE `il_students` (
  `s_id` int(20) NOT NULL,
  `s_name` varchar(200) NOT NULL,
  `s_number` varchar(200) NOT NULL,
  `s_email` varchar(200) NOT NULL,
  `s_pwd` varchar(200) NOT NULL,
  `s_sex` varchar(200) NOT NULL,
  `s_phone` varchar(200) NOT NULL,
  `s_bio` longtext NOT NULL,
  `s_adr` varchar(200) NOT NULL,
  `s_dpic` varchar(200) NOT NULL,
  `s_acc_status` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `il_students`
--

INSERT INTO `il_students` (`s_id`, `s_name`, `s_number`, `s_email`, `s_pwd`, `s_sex`, `s_phone`, `s_bio`, `s_adr`, `s_dpic`, `s_acc_status`, `created_at`) VALUES
(9, 'babar', 'iLib-82960', 'b1@gmail.com', '63982e54a7aeb0d89910475ba6dbd3ca6dd4e5a1', 'Select Gender', '03034312347', '', 'larkana', '', 'Active', '2023-09-10 07:44:54.012362'),
(10, 'bilal', 'iLib-13269', 'bilal@gmail.com', '63982e54a7aeb0d89910475ba6dbd3ca6dd4e5a1', 'Male', '03063529347', 'std', 'larkana', '', 'Active', '2023-09-10 15:04:26.506553');

-- --------------------------------------------------------

--
-- Table structure for table `il_subscriptions`
--

CREATE TABLE `il_subscriptions` (
  `s_id` int(20) NOT NULL,
  `s_title` varchar(200) NOT NULL,
  `s_code` varchar(200) NOT NULL,
  `s_category` varchar(200) NOT NULL,
  `s_desc` longtext NOT NULL,
  `s_cover_img` varchar(200) NOT NULL,
  `s_created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `s_file` varchar(200) NOT NULL,
  `s_publisher` varchar(200) NOT NULL,
  `s_year` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `il_subscriptions`
--

INSERT INTO `il_subscriptions` (`s_id`, `s_title`, `s_code`, `s_category`, `s_desc`, `s_cover_img`, `s_created_at`, `s_file`, `s_publisher`, `s_year`) VALUES
(1, 'Architectural Digest', 'SUB-71048', 'Art & Architecture', 'Architectural Digest is the world\'s foremost design authority, showcasing the work of top architects and interior decorators. It continues to set new benchmarks for how to live wellâ€”what to buy, what to see and do, where to travel, and who to watch on the fast-paced, multifaceted global design scene.', '', '2020-04-28 10:46:29.827955', '', 'Conde Nast US', 'April 2020');

-- --------------------------------------------------------

--
-- Table structure for table `il_sudo`
--

CREATE TABLE `il_sudo` (
  `id` int(20) NOT NULL,
  `username` varchar(200) NOT NULL,
  `number` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `profile_pic` varchar(200) NOT NULL,
  `bio` longtext NOT NULL,
  `phone` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `il_sudo`
--

INSERT INTO `il_sudo` (`id`, `username`, `number`, `email`, `password`, `profile_pic`, `bio`, `phone`, `created_at`) VALUES
(1, 'MartDevelopers Inc', '7OBA6', 'admin@ilib.org', '90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad', '', 'Et sequi sit sit in eius officia est corrupti illo amet expedita labore sed sunt iusto numquam quod sapiente iusto laboriosam debitis qui sapiente dolorem alias vel aut explicabo iure culpa inventore ut debitis voluptate non libero autem voluptas ad ipsa nisi enim voluptatem qui nihil omnis ut voluptas numquam qui vel voluptatum commodi earum aut quibusdam impedit voluptatem exercitationem odio dolores ab reprehenderit nesciunt exercitationem vero libero ut ad aperiam laboriosam aut animi voluptatem perspiciatis voluptas unde id delectus omnis sint laboriosam sit enim tempore recusandae distinctio sequi et eveniet. ', '+254737229776', '2020-06-11 11:00:08.999494');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `il_bookcategories`
--
ALTER TABLE `il_bookcategories`
  ADD PRIMARY KEY (`bc_id`);

--
-- Indexes for table `il_books`
--
ALTER TABLE `il_books`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `il_chargesrates`
--
ALTER TABLE `il_chargesrates`
  ADD PRIMARY KEY (`cr_id`);

--
-- Indexes for table `il_fines`
--
ALTER TABLE `il_fines`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `il_librarians`
--
ALTER TABLE `il_librarians`
  ADD PRIMARY KEY (`l_id`);

--
-- Indexes for table `il_libraryoperations`
--
ALTER TABLE `il_libraryoperations`
  ADD PRIMARY KEY (`lo_id`);

--
-- Indexes for table `il_messages`
--
ALTER TABLE `il_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `il_notifications`
--
ALTER TABLE `il_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `il_passwordresets`
--
ALTER TABLE `il_passwordresets`
  ADD PRIMARY KEY (`pr_id`);

--
-- Indexes for table `il_reccomendations`
--
ALTER TABLE `il_reccomendations`
  ADD PRIMARY KEY (`iR_id`);

--
-- Indexes for table `il_receivedmails`
--
ALTER TABLE `il_receivedmails`
  ADD PRIMARY KEY (`rm_id`);

--
-- Indexes for table `il_sendmails`
--
ALTER TABLE `il_sendmails`
  ADD PRIMARY KEY (`sm_id`);

--
-- Indexes for table `il_students`
--
ALTER TABLE `il_students`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `il_subscriptions`
--
ALTER TABLE `il_subscriptions`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `il_sudo`
--
ALTER TABLE `il_sudo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `il_bookcategories`
--
ALTER TABLE `il_bookcategories`
  MODIFY `bc_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `il_books`
--
ALTER TABLE `il_books`
  MODIFY `b_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `il_chargesrates`
--
ALTER TABLE `il_chargesrates`
  MODIFY `cr_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `il_fines`
--
ALTER TABLE `il_fines`
  MODIFY `f_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `il_librarians`
--
ALTER TABLE `il_librarians`
  MODIFY `l_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `il_libraryoperations`
--
ALTER TABLE `il_libraryoperations`
  MODIFY `lo_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `il_messages`
--
ALTER TABLE `il_messages`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `il_notifications`
--
ALTER TABLE `il_notifications`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `il_passwordresets`
--
ALTER TABLE `il_passwordresets`
  MODIFY `pr_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `il_reccomendations`
--
ALTER TABLE `il_reccomendations`
  MODIFY `iR_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `il_receivedmails`
--
ALTER TABLE `il_receivedmails`
  MODIFY `rm_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `il_sendmails`
--
ALTER TABLE `il_sendmails`
  MODIFY `sm_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `il_students`
--
ALTER TABLE `il_students`
  MODIFY `s_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `il_subscriptions`
--
ALTER TABLE `il_subscriptions`
  MODIFY `s_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `il_sudo`
--
ALTER TABLE `il_sudo`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
