-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2023 at 02:08 PM
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
-- Database: `blog_all`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `parent_id`, `title`, `meta_title`, `slug`, `content`, `created_at`, `updated_at`) VALUES
(1, 0, 'e-learning platforms', 'The Education', 'the-education', 'online education', NULL, NULL),
(2, 0, 'online learning', 'online learning', 'online-learning', 'It harnesses the power of multimedia tools, simulations, gamification, and interactive content to create engaging learning experiences. This interactive approach not only captivates learners\' attention but also facilitates better comprehension and knowledge retention.', NULL, NULL),
(3, 0, 'Educational technology', 'Educational technology', 'educational-technology', 'Educational Technology is the field of study that investigates the process of analyzing, designing, developing, implementing, and evaluating the instructional environment, learning materials, learners, and the learning process in order to improve teaching and learning.', NULL, NULL),
(4, 0, 'Homeschooling', 'Homeschooling', 'home-schooling', 'Homeschooling can be used as a form of supplemental education and as a way of helping children learn under specific circumstances.', NULL, NULL),
(5, 0, 'Classroom management', 'Classroom management', 'classroom-management', 'Classroom management encompasses a variety of skills and techniques that teachers can use to create a high-performing learning environment. ', NULL, NULL),
(6, 0, 'international education', 'Study abroad and international education', 'study-abroad-and-international-education', 'Study abroad is one of the best ways to acquire global skills and access personal and professional opportunities. Study abroad is a life-changing experience for many students, opening their eyes to different ways of life and promoting understanding and tolerance.', NULL, NULL),
(7, 0, 'e-courses', 'Online learning and e-courses', 'e-courses', 'eLearning, or electronic learning, is the delivery of learning and training through digital resources. Although eLearning is based on formalized learning, it is provided through electronic devices such as computers, tablets and even cellular phones that are connected to the internet.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `summary` text DEFAULT NULL,
  `published` int(11) DEFAULT NULL,
  `content` text NOT NULL,
  `published_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `author_id`, `parent_id`, `title`, `meta_title`, `photo`, `slug`, `summary`, `published`, `content`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'What is a e-learning ?', NULL, '651d81aea84d61696432558.jpg', NULL, 'eLearning, or electronic learning, is the delivery of learning and training through digital resources', NULL, '<p>A learning system based on formalised teaching but with the help of electronic resources is known as E-learning. While teaching can be based in or out of the classrooms, the use of computers and the Internet forms the major component of E-learning</p>', '2023-10-04 15:15:58', NULL, NULL),
(2, 1, 0, 'What is e-learning in education example?', NULL, '1696829765.jpg', NULL, 'Some interactive e-learning examples in social learning include: Live webinars with Q&A chats.', NULL, '<p>Virtual meetings and discussions on platforms like Zoom and Google Meet. Digital educational content, like courses, podcasts, blogs, or eBooks developed by SMEs and technical teams.</p>', '2023-10-09 05:36:05', NULL, NULL),
(3, 1, 0, 'Types of e-learning', NULL, '651d834b53c641696432971.jpg', NULL, 'Different Types of E-Learning Platforms', NULL, '<ul>\r\n	<li>Fixed eLearning. Fixed eLearning is one of the traditional forms of online learning. ...</li>\r\n	<li>Computer Managed Learning (CML) ...</li>\r\n	<li>Computer Assisted Instruction (CAI) ...</li>\r\n	<li>Synchronous Online Learning. ...</li>\r\n	<li>Asynchronous Online Learning. ...</li>\r\n	<li>Adaptive e-Learning. ...</li>\r\n	<li>Linear E-Learning. .</li>\r\n</ul>', '2023-10-04 15:22:51', NULL, NULL),
(5, 1, 0, 'Benifits of e-learning', NULL, '651d859ad6bd81696433562.png', NULL, 'elearning helps for to complete students homeworks', NULL, '<p><strong>The 8 Most Important Benefits Of eLearning For Students</strong></p>\r\n\r\n<ul>\r\n	<li>1) Online learning accommodates everyone&#39;s needs.</li>\r\n	<li>2) Lectures can be repeated if necessary.</li>\r\n	<li>3) Content can easily be updated.</li>\r\n	<li>4) Quick Delivery.</li>\r\n	<li>5) Cost-Effective.</li>\r\n	<li>6) Consistent in Quality.</li>\r\n	<li>7) Less Impact on the Environment.</li>\r\n</ul>', '2023-10-04 15:32:42', NULL, NULL),
(6, 1, 0, 'E-learning management system', NULL, '651d8698a45101696433816.jpg', NULL, 'Learners obtain knowledge through e-Learning systems rather than manually teaching and learning. In this research paper proposes the e-learning management', NULL, '<p>E-learning fulfils the thirst of knowledge and offers online content that can be delivered for the learner at anywhere, anytime and any age through a wide range of e-learning solution while compared with traditional learning system. It also provides the rapid access to specific knowledge and information. With the rapid growth of voluminous information sources and the time constraint the learning methodology has changed.&nbsp;</p>', '2023-10-04 15:36:56', NULL, NULL),
(7, 1, 0, 'Why e-lrarning works ?', NULL, '651d877f57a301696434047.png', NULL, 'eLearning allows learners different avenues for connection outside of the office, thanks to forums, social media, and a flipped classroom model.', NULL, 'One of the most obvious benefits of eLearning is a reduction in costs when compared to traditional training methods. In-person training is expensive: add up paying for an instructor, travel time, time off work, and even the cost of physical training materials like workbooks, and it’s easy to see how eLearning is more cost-effective. \r\n\r\n', '2023-10-04 17:42:43', NULL, NULL),
(11, 1, 0, 'Functions of educational technology', NULL, '651e5138175281696485688.jpg', NULL, 'Education technology is the application of new tools and ideas that help teachers teach and students learn.', NULL, '<p>Education technology can automate processes, improve information access, enable sharing of knowledge and data, duplicate information between media forms, curate important knowledge, communicate ideas, visualize critical concepts, and more</p>', '2023-10-05 06:01:28', NULL, NULL),
(12, 1, 0, 'What is Educational Technology', NULL, '651e5323403981696486179.jpg', NULL, 'Educational technology is a field of study that investigates the process of analyzing, designing, developing, implementing, and evaluating the instructional', NULL, '<p>Educational Technology is the field of study that investigates the process of analyzing, designing, developing, implementing, and evaluating the instructional environment, learning materials, learners, and the learning process in order to improve teaching and learning</p>', '2023-10-05 06:09:39', NULL, NULL),
(13, 1, 0, 'What is international study abroad?', NULL, '651e543e711ba1696486462.jpg', NULL, '“Study abroad” is a chance to pursue your college studies in a foreign country.', NULL, '<p>&ldquo;Study abroad&rdquo; is&nbsp;<strong>a chance to pursue your college studies in a foreign country</strong>. Students attend lectures or carry out research at a foreign university or through their home university&#39;s study-abroad program. Participants typically live in a residence hall, apartment, or with a local family through a homestay.</p>', '2023-10-05 06:14:22', NULL, NULL),
(17, 1, 0, 'Plymouth University', NULL, '651e7648ef7d91696495176.jpg', NULL, 'Welcome to the University of Plymouth, advancing knowledge, transforming lives.', NULL, '<p>The University of Plymouth is a public research university based predominantly in Plymouth, England, where the main campus is located, but the university has campuses and affiliated colleges across South West England. With 18,410 students, it is the 57th largest in the United Kingdom by total number of students.&nbsp;</p>', '2023-10-05 08:39:37', NULL, NULL),
(18, 1, 0, 'About University college of dublin', NULL, '651e76f8e269c1696495352.jpg', NULL, 'Explore how UCD, ranked within the top 1% of higher education institutions worldwide, has become Ireland’s global university', NULL, '<p>UCD is one of Europe&#39;s leading research-intensive universities; an environment where&nbsp;<a href=\"https://www.myucd.ie/\" target=\"_blank\">undergraduate education</a>,&nbsp;<a href=\"http://www.ucd.ie/graduatestudies/\" target=\"_blank\">masters and PhD training</a>, research, innovation and community engagement form a dynamic spectrum of activity.</p>\r\n\r\n<p>Since its foundation, the University has made a unique contribution to the creation of modern Ireland, based on successful engagement with Irish society on every level and across every sphere of activity.</p>', '2023-10-09 14:00:59', NULL, NULL),
(19, 1, 0, 'Birmingham City University', NULL, '651e77e3d5c721696495587.jpg', NULL, 'At Birmingham City University, we\'ve invested £340 million transforming our campus and facilities and are committed to giving you the skills you need to ...', NULL, '<p>Birmingham City University City Centre Campus &quot;flagship&quot; campus in the centre of Birmingham. It was constructed next to the existing facilities at Millennium Point and is part of the ambitious Eastside project - Birmingham&#39;s biggest physical regeneration scheme.</p>', '2023-10-05 08:46:27', NULL, NULL),
(21, 1, 0, 'Top Reasons to Study in Coventry University, UK', NULL, '651ed12e8041b1696518446.jpg', NULL, 'Coventry University is a public research university in Coventry, England', NULL, '<p>Are you planning to study abroad and searching for a university that offers top-notch education, exceptional support services, and an unforgettable experience? Look no further! Coventry University, located in the heart of the UK, is an institution that provides a modern and innovative learning environment for students from around the globe.&nbsp;</p>', '2023-10-05 15:07:26', NULL, NULL),
(22, 1, 0, 'What is the acceptance rate for Victoria University Australia?', NULL, '651ed21e72dbd1696518686.jpg', NULL, 'Victoria University acceptance rate is 64%.', NULL, '<p>This means that the university is moderately competitive when it comes to admissions. The University offers a range of the world&#39;s best courses to international students.</p>', '2023-10-05 15:11:26', NULL, NULL),
(23, 1, 0, 'What is the acceptance rate for UWA?', NULL, '651ed3bdc5f0f1696519101.png', NULL, 'Acceptance Rate: The university exhibits an acceptance rate of 38%,', NULL, '<p>Acceptance Rate: The university exhibits an acceptance rate of&nbsp;<strong>38%</strong>, reflecting a selective admission policy. Admission Deadlines: The university accepts applications for Fall and Spring sessions</p>', '2023-10-05 15:18:21', NULL, NULL),
(25, 1, 0, 'What is Deakin University ranked in Australia?', NULL, '651ed72e54a231696519982.jpeg', NULL, 'Deaking university is a top ranking university of the world', NULL, '<p>US News &amp; World Report has ranked one of the top universities in Australia, Deakin University&nbsp;<strong>#218 for 2022</strong>. The university&#39;s ranking improve from 238 in 2021. US News also placed the university at 15 ranks in Global Universities in Australia.</p>', '2023-10-05 15:33:02', NULL, NULL),
(26, 1, 0, 'Zoom Video Communications', NULL, '651ef61e8a4261696527902.jpeg', NULL, 'Work from anywhere with a single app that combines team chat, phone, whiteboard, meetings, and more', NULL, '<p><strong>Zoom</strong>, stylized as&nbsp;<strong>zoom</strong>&nbsp;or&nbsp;<strong>Zoom Meetings</strong>, is a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Proprietary_software\">proprietary</a>&nbsp;<a href=\"https://en.wikipedia.org/wiki/Videotelephony\">videotelephony</a>&nbsp;software program developed by&nbsp;<a href=\"https://en.wikipedia.org/wiki/Zoom_Video_Communications\">Zoom Video Communications</a>. The free plan allows up to 100 concurrent participants, with a 40-minute time restriction. Users have the option to upgrade by subscribing to a paid plan. The highest plan supports up to 1,000 concurrent participants for meetings lasting up to 30 hours</p>', '2023-10-05 17:45:03', NULL, NULL),
(27, 1, 0, 'Microsoft Teams', NULL, '651ef7e77f0c81696528359.jpg', NULL, 'Microsoft Teams is the ultimate messaging app', NULL, '<p>Microsoft Teams is a proprietary business communication platform developed by Microsoft, as part of the Microsoft 365 family of products. Teams primarily competes with the similar service Slack, offering workspace chat and videoconferencing, file storage and application integration.</p>', '2023-10-05 17:52:39', NULL, NULL),
(28, 1, 0, 'Slack productivity platform', NULL, '651ef8b232b181696528562.jpg', NULL, 'Slack is a messaging app for business that connects people to the information they need.', NULL, '<p>Slack is a cloud-based freemium cross-platform instant messaging service created by Slack Technologies and currently owned by Salesforce. While initially developed for professional and organizational communications, it has also been adopted as a community platform</p>', '2023-10-05 17:56:02', NULL, NULL),
(29, 1, 0, 'E-Library', NULL, '651efa38e21e91696528952.jpg', NULL, 'A digital library, also known as an e-library, is a collection of documents in an organized digital form, available on the internet', NULL, '<p>A&nbsp;<strong>digital library</strong>, also called an&nbsp;<strong>online library</strong>, an&nbsp;<strong>internet library</strong>, a&nbsp;<strong>digital repository</strong>,&nbsp;<strong>a library without walls</strong>, or a&nbsp;<strong>digital collection</strong>, is an&nbsp;<a href=\"https://en.wikipedia.org/wiki/Online_database\">online database</a>&nbsp;of digital objects that can include text, still images, audio, video,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Digital_document\">digital documents</a>, or other&nbsp;<a href=\"https://en.wikipedia.org/wiki/Digital_media\">digital media</a>&nbsp;formats or a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Library\">library</a>&nbsp;accessible through the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Internet\">internet</a>. Objects can consist of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Digitization\">digitized</a>&nbsp;content like&nbsp;<a href=\"https://en.wikipedia.org/wiki/Printing\">print</a>&nbsp;or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Photography\">photographs</a>, as well as&nbsp;<a href=\"https://en.wikipedia.org/wiki/Born-digital\">originally produced digital</a>&nbsp;content like&nbsp;<a href=\"https://en.wikipedia.org/wiki/Word_processor\">word processor</a>&nbsp;files or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Social_media\">social media</a>&nbsp;posts. In addition to storing content, digital libraries provide means for organizing, searching, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Information_retrieval\">retrieving</a>&nbsp;the content contained in the collection. Digital libraries can vary immensely in size and scope, and can be maintained by individuals or organizations.<a href=\"https://en.wikipedia.org/wiki/Digital_library#cite_note-1\">[1]</a>&nbsp;The digital content may be stored locally, or accessed remotely via computer networks.</p>', '2023-10-05 18:02:32', NULL, NULL),
(30, 1, 0, 'Best E-Commerce Platforms', NULL, '651eff7351b451696530291.png', NULL, 'There are many eLearning companies out there that offer online learning platforms', NULL, '<p>An electronic learning platform is an integrated set of interactive online services that provide trainers, learners, and others involved in education with information, tools, and resources to support and enhance education delivery and management. One type of eLearning platform is a learning management system (LMS).</p>', '2023-10-05 18:24:51', NULL, NULL),
(31, 1, 0, 'E-Learning Platform Advanetages', NULL, '651f005414c311696530516.jpg', NULL, 'Other studies show that, because it is self paced, eLearning leads to increased student satisfaction and reduced stress. This results in improved learning', NULL, '<p>One of the biggest advantages of online learning is that it offers flexibility. Courses are self-paced, which means users can complete assignments within a specific time frame.</p>\r\n\r\n<p>Participants access the lessons through a Learning Management System (LMS), follow the instructions, and complete the material. Users and instructors interact through messaging apps, email, or discussion boards.&nbsp;</p>', '2023-10-05 18:28:36', NULL, NULL),
(32, 1, 0, 'Why is eLearning effective?', NULL, '6523f1e323ef21696854499.jpg', NULL, 'e-learning is Increasing Collaboration.', NULL, '<p><strong>Because online courses provide students with full control over their studies, they can work at their own pace</strong>.</p>', '2023-10-09 12:28:19', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts_categories`
--

CREATE TABLE `blog_posts_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_posts_categories`
--

INSERT INTO `blog_posts_categories` (`id`, `post_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 3, 1, NULL, NULL),
(5, 5, 1, NULL, NULL),
(6, 6, 2, NULL, NULL),
(7, 7, 1, NULL, NULL),
(11, 11, 2, NULL, NULL),
(12, 12, 3, NULL, NULL),
(13, 13, 6, NULL, NULL),
(17, 17, 6, NULL, NULL),
(18, 18, 6, NULL, NULL),
(19, 19, 6, NULL, NULL),
(21, 21, 6, NULL, NULL),
(22, 22, 6, NULL, NULL),
(23, 23, 6, NULL, NULL),
(25, 25, 6, NULL, NULL),
(26, 26, 1, NULL, NULL),
(27, 27, 1, NULL, NULL),
(28, 28, 1, NULL, NULL),
(29, 29, 2, NULL, NULL),
(30, 30, 1, NULL, NULL),
(31, 31, 1, NULL, NULL),
(32, 32, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts_comments`
--

CREATE TABLE `blog_posts_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `published` int(11) DEFAULT NULL,
  `content` text NOT NULL,
  `published_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_posts_comments`
--

INSERT INTO `blog_posts_comments` (`id`, `post_id`, `parent_id`, `title`, `published`, `content`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 5, NULL, NULL, NULL, 'online learning is reduced financial costs', '2023-10-12 04:35:33', NULL, NULL),
(2, 5, 1, NULL, NULL, 'More Free Time', '2023-10-12 04:36:26', NULL, NULL),
(3, 5, 2, NULL, NULL, 'Increased Collaboration.', '2023-10-12 04:39:10', NULL, NULL),
(4, 5, 3, NULL, NULL, 'Enhanced Time Management Skills', '2023-10-12 04:42:06', NULL, NULL),
(6, 5, 4, NULL, NULL, 'Personalized Education. ...', '2023-10-12 04:42:55', NULL, NULL),
(7, 5, 6, NULL, NULL, 'individual Learning Styles', '2023-10-12 04:44:09', NULL, NULL),
(8, 5, 7, NULL, NULL, 'Self-Paced Learning', '2023-10-12 04:44:55', NULL, NULL),
(9, 5, 8, NULL, NULL, 'Customizable Learning Environments.', '2023-10-12 04:45:55', NULL, NULL),
(10, 5, 9, NULL, NULL, 'The Solution to Teacher Scarcity', '2023-10-12 08:09:19', NULL, NULL),
(11, 5, 10, NULL, NULL, 'Improving Virtual Communication Skills', '2023-10-12 08:13:29', NULL, NULL),
(12, 5, 11, NULL, NULL, 'Regulary updated content', '2023-10-12 08:33:01', NULL, NULL),
(14, 5, 12, NULL, NULL, 'Mobility', '2023-10-12 08:51:32', NULL, NULL),
(15, 5, 14, NULL, NULL, 'Budget Friendly', '2023-10-12 08:52:10', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts_metas`
--

CREATE TABLE `blog_posts_metas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_post_tags`
--

CREATE TABLE `blog_post_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_tags`
--

CREATE TABLE `blog_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_27_054729_create_permission_tables', 1),
(6, '2023_09_27_070001_blog_posts', 1),
(7, '2023_09_27_071356_blog_categories', 1),
(8, '2023_09_27_072928_blog_post_categories', 1),
(9, '2023_09_27_074557_blog_post_comments', 1),
(10, '2023_09_27_080140_blog_post_metas', 1),
(11, '2023_09_27_081714_blog_tags', 1),
(12, '2023_09_27_084416_blog_post_tags', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2023-10-03 03:33:54', '2023-10-03 03:33:54'),
(2, 'writer', 'web', '2023-10-03 03:33:54', '2023-10-03 03:33:54'),
(3, 'user', 'web', '2023-10-03 03:33:54', '2023-10-03 03:33:54');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '2023-10-03 03:33:54', 'admin123', NULL, '2023-10-03 03:33:54', '2023-10-03 03:33:54'),
(2, 'writer', 'writer@gmail.com', '2023-10-03 03:33:55', 'writer123', NULL, '2023-10-03 03:33:55', '2023-10-03 03:33:55'),
(3, 'user', 'user@gmail.com', '2023-10-03 03:33:55', 'user123', NULL, '2023-10-03 03:33:55', '2023-10-03 03:33:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_posts_author_id_foreign` (`author_id`);

--
-- Indexes for table `blog_posts_categories`
--
ALTER TABLE `blog_posts_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_posts_categories_category_id_foreign` (`category_id`),
  ADD KEY `fk_column_post_id` (`post_id`);

--
-- Indexes for table `blog_posts_comments`
--
ALTER TABLE `blog_posts_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_posts_metas`
--
ALTER TABLE `blog_posts_metas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_posts_metas_post_id_foreign` (`post_id`);

--
-- Indexes for table `blog_post_tags`
--
ALTER TABLE `blog_post_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_post_tags_post_id_foreign` (`post_id`),
  ADD KEY `blog_post_tags_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `blog_tags`
--
ALTER TABLE `blog_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `blog_posts_categories`
--
ALTER TABLE `blog_posts_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `blog_posts_comments`
--
ALTER TABLE `blog_posts_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `blog_posts_metas`
--
ALTER TABLE `blog_posts_metas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_post_tags`
--
ALTER TABLE `blog_post_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_tags`
--
ALTER TABLE `blog_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD CONSTRAINT `blog_posts_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `blog_posts_categories`
--
ALTER TABLE `blog_posts_categories`
  ADD CONSTRAINT `blog_posts_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `blog_categories` (`id`),
  ADD CONSTRAINT `blog_posts_categories_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `blog_posts` (`id`),
  ADD CONSTRAINT `fk_column_post_id` FOREIGN KEY (`post_id`) REFERENCES `blog_posts` (`id`);

--
-- Constraints for table `blog_posts_metas`
--
ALTER TABLE `blog_posts_metas`
  ADD CONSTRAINT `blog_posts_metas_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `blog_posts` (`id`);

--
-- Constraints for table `blog_post_tags`
--
ALTER TABLE `blog_post_tags`
  ADD CONSTRAINT `blog_post_tags_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `blog_post_tags` (`id`),
  ADD CONSTRAINT `blog_post_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `blog_tags` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
