-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2023 at 03:07 PM
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
  `status` tinyint(3) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `author_id`, `parent_id`, `title`, `meta_title`, `photo`, `slug`, `summary`, `published`, `content`, `published_at`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'What is a e-learning ?', NULL, '651d81aea84d61696432558.jpg', NULL, 'eLearning, or electronic learning, is the delivery of learning and training through digital resources', NULL, '<p>A learning system based on formalised teaching but with the help of electronic resources is known as E-learning. While teaching can be based in or out of the classrooms, the use of computers and the Internet forms the major component of E-learning</p>', '2023-10-04 15:15:58', 1, NULL, NULL),
(2, 1, 0, 'e-learning in education example', NULL, '1697314431.jpeg', NULL, 'Some interactive e-learning examples in social learning include: Live webinars with Q&A chats.', NULL, '<p>Virtual meetings and discussions on platforms like Zoom and Google Meet. Digital educational content, like courses, podcasts, blogs, or eBooks developed by SMEs and technical teams.</p>', '2023-10-14 20:13:51', 1, NULL, NULL),
(3, 1, 0, 'Types of e-learning', NULL, '651d834b53c641696432971.jpg', NULL, 'Different Types of E-Learning Platforms', NULL, '<ul>\r\n	<li>Fixed eLearning. Fixed eLearning is one of the traditional forms of online learning. ...</li>\r\n	<li>Computer Managed Learning (CML) ...</li>\r\n	<li>Computer Assisted Instruction (CAI) ...</li>\r\n	<li>Synchronous Online Learning. ...</li>\r\n	<li>Asynchronous Online Learning. ...</li>\r\n	<li>Adaptive e-Learning. ...</li>\r\n	<li>Linear E-Learning. .</li>\r\n</ul>', '2023-10-04 15:22:51', 1, NULL, NULL),
(5, 1, 0, 'Benifits of e-learning', NULL, '651d859ad6bd81696433562.png', NULL, 'elearning helps for to complete students homeworks', NULL, '<p><strong>The 8 Most Important Benefits Of eLearning For Students</strong></p>\r\n\r\n<ul>\r\n	<li>1) Online learning accommodates everyone&#39;s needs.</li>\r\n	<li>2) Lectures can be repeated if necessary.</li>\r\n	<li>3) Content can easily be updated.</li>\r\n	<li>4) Quick Delivery.</li>\r\n	<li>5) Cost-Effective.</li>\r\n	<li>6) Consistent in Quality.</li>\r\n	<li>7) Less Impact on the Environment.</li>\r\n</ul>', '2023-10-04 15:32:42', 1, NULL, NULL),
(6, 1, 0, 'E-learning management system', NULL, '651d8698a45101696433816.jpg', NULL, 'Learners obtain knowledge through e-Learning systems rather than manually teaching and learning. In this research paper proposes the e-learning management', NULL, '<p>E-learning fulfils the thirst of knowledge and offers online content that can be delivered for the learner at anywhere, anytime and any age through a wide range of e-learning solution while compared with traditional learning system. It also provides the rapid access to specific knowledge and information. With the rapid growth of voluminous information sources and the time constraint the learning methodology has changed.&nbsp;</p>', '2023-10-04 15:36:56', 1, NULL, NULL),
(7, 1, 0, 'Why e-lrarning works ?', NULL, '651d877f57a301696434047.png', NULL, 'eLearning allows learners different avenues for connection outside of the office, thanks to forums, social media, and a flipped classroom model.', NULL, 'One of the most obvious benefits of eLearning is a reduction in costs when compared to traditional training methods. In-person training is expensive: add up paying for an instructor, travel time, time off work, and even the cost of physical training materials like workbooks, and it’s easy to see how eLearning is more cost-effective. \r\n\r\n', '2023-10-04 17:42:43', 1, NULL, NULL),
(11, 1, 0, 'Functions of educational technology', NULL, '651e5138175281696485688.jpg', NULL, 'Education technology is the application of new tools and ideas that help teachers teach and students learn.', NULL, '<p>Education technology can automate processes, improve information access, enable sharing of knowledge and data, duplicate information between media forms, curate important knowledge, communicate ideas, visualize critical concepts, and more</p>', '2023-10-05 06:01:28', 1, NULL, NULL),
(12, 1, 0, 'What is Educational Technology', NULL, '651e5323403981696486179.jpg', NULL, 'Educational technology is a field of study that investigates the process of analyzing, designing, developing, implementing, and evaluating the instructional', NULL, '<p>Educational Technology is the field of study that investigates the process of analyzing, designing, developing, implementing, and evaluating the instructional environment, learning materials, learners, and the learning process in order to improve teaching and learning</p>', '2023-10-05 06:09:39', 1, NULL, NULL),
(13, 1, 0, 'What is international study abroad?', NULL, '651e543e711ba1696486462.jpg', NULL, '“Study abroad” is a chance to pursue your college studies in a foreign country.', NULL, '<p>&ldquo;Study abroad&rdquo; is&nbsp;<strong>a chance to pursue your college studies in a foreign country</strong>. Students attend lectures or carry out research at a foreign university or through their home university&#39;s study-abroad program. Participants typically live in a residence hall, apartment, or with a local family through a homestay.</p>', '2023-10-05 06:14:22', 1, NULL, NULL),
(17, 1, 0, 'Plymouth University', NULL, '651e7648ef7d91696495176.jpg', NULL, 'Welcome to the University of Plymouth, advancing knowledge, transforming lives.', NULL, '<p>The University of Plymouth is a public research university based predominantly in Plymouth, England, where the main campus is located, but the university has campuses and affiliated colleges across South West England. With 18,410 students, it is the 57th largest in the United Kingdom by total number of students.&nbsp;</p>', '2023-10-05 08:39:37', 1, NULL, NULL),
(18, 1, 0, 'About University college of dublin', NULL, '651e76f8e269c1696495352.jpg', NULL, 'Explore how UCD, ranked within the top 1% of higher education institutions worldwide, has become Ireland’s global university', NULL, '<p>UCD is one of Europe&#39;s leading research-intensive universities; an environment where&nbsp;<a href=\"https://www.myucd.ie/\" target=\"_blank\">undergraduate education</a>,&nbsp;<a href=\"http://www.ucd.ie/graduatestudies/\" target=\"_blank\">masters and PhD training</a>, research, innovation and community engagement form a dynamic spectrum of activity.</p>\r\n\r\n<p>Since its foundation, the University has made a unique contribution to the creation of modern Ireland, based on successful engagement with Irish society on every level and across every sphere of activity.</p>', '2023-10-09 14:00:59', 1, NULL, NULL),
(19, 1, 0, 'Birmingham City University', NULL, '651e77e3d5c721696495587.jpg', NULL, 'At Birmingham City University, we\'ve invested £340 million transforming our campus and facilities and are committed to giving you the skills you need to ...', NULL, '<p>Birmingham City University City Centre Campus &quot;flagship&quot; campus in the centre of Birmingham. It was constructed next to the existing facilities at Millennium Point and is part of the ambitious Eastside project - Birmingham&#39;s biggest physical regeneration scheme.</p>', '2023-10-05 08:46:27', 1, NULL, NULL),
(21, 1, 0, 'Top Reasons to Study in Coventry University, UK', NULL, '651ed12e8041b1696518446.jpg', NULL, 'Coventry University is a public research university in Coventry, England', NULL, '<p>Are you planning to study abroad and searching for a university that offers top-notch education, exceptional support services, and an unforgettable experience? Look no further! Coventry University, located in the heart of the UK, is an institution that provides a modern and innovative learning environment for students from around the globe.&nbsp;</p>', '2023-10-05 15:07:26', 1, NULL, NULL),
(22, 1, 0, 'What is the acceptance rate for Victoria University Australia?', NULL, '651ed21e72dbd1696518686.jpg', NULL, 'Victoria University acceptance rate is 64%.', NULL, '<p>This means that the university is moderately competitive when it comes to admissions. The University offers a range of the world&#39;s best courses to international students.</p>', '2023-10-05 15:11:26', 1, NULL, NULL),
(23, 1, 0, 'What is the acceptance rate for UWA?', NULL, '651ed3bdc5f0f1696519101.png', NULL, 'Acceptance Rate: The university exhibits an acceptance rate of 38%,', NULL, '<p>Acceptance Rate: The university exhibits an acceptance rate of&nbsp;<strong>38%</strong>, reflecting a selective admission policy. Admission Deadlines: The university accepts applications for Fall and Spring sessions</p>', '2023-10-05 15:18:21', 1, NULL, NULL),
(25, 1, 0, 'What is Deakin University ranked in Australia?', NULL, '651ed72e54a231696519982.jpeg', NULL, 'Deaking university is a top ranking university of the world', NULL, '<p>US News &amp; World Report has ranked one of the top universities in Australia, Deakin University&nbsp;<strong>#218 for 2022</strong>. The university&#39;s ranking improve from 238 in 2021. US News also placed the university at 15 ranks in Global Universities in Australia.</p>', '2023-10-05 15:33:02', 1, NULL, NULL),
(26, 1, 0, 'Zoom Video Communications', NULL, '651ef61e8a4261696527902.jpeg', NULL, 'Work from anywhere with a single app that combines team chat, phone, whiteboard, meetings, and more', NULL, '<p><strong>Zoom</strong>, stylized as&nbsp;<strong>zoom</strong>&nbsp;or&nbsp;<strong>Zoom Meetings</strong>, is a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Proprietary_software\">proprietary</a>&nbsp;<a href=\"https://en.wikipedia.org/wiki/Videotelephony\">videotelephony</a>&nbsp;software program developed by&nbsp;<a href=\"https://en.wikipedia.org/wiki/Zoom_Video_Communications\">Zoom Video Communications</a>. The free plan allows up to 100 concurrent participants, with a 40-minute time restriction. Users have the option to upgrade by subscribing to a paid plan. The highest plan supports up to 1,000 concurrent participants for meetings lasting up to 30 hours</p>', '2023-10-05 17:45:03', 1, NULL, NULL),
(27, 1, 0, 'Microsoft Teams', NULL, '651ef7e77f0c81696528359.jpg', NULL, 'Microsoft Teams is the ultimate messaging app', NULL, '<p>Microsoft Teams is a proprietary business communication platform developed by Microsoft, as part of the Microsoft 365 family of products. Teams primarily competes with the similar service Slack, offering workspace chat and videoconferencing, file storage and application integration.</p>', '2023-10-05 17:52:39', 1, NULL, NULL),
(28, 1, 0, 'Slack productivity platform', NULL, '651ef8b232b181696528562.jpg', NULL, 'Slack is a messaging app for business that connects people to the information they need.', NULL, '<p>Slack is a cloud-based freemium cross-platform instant messaging service created by Slack Technologies and currently owned by Salesforce. While initially developed for professional and organizational communications, it has also been adopted as a community platform</p>', '2023-10-05 17:56:02', 1, NULL, NULL),
(30, 1, 0, 'Best E-Commerce Platforms', NULL, '651eff7351b451696530291.png', NULL, 'There are many eLearning companies out there that offer online learning platforms', NULL, '<p>An electronic learning platform is an integrated set of interactive online services that provide trainers, learners, and others involved in education with information, tools, and resources to support and enhance education delivery and management. One type of eLearning platform is a learning management system (LMS).</p>', '2023-10-05 18:24:51', 1, NULL, NULL),
(31, 1, 0, 'E-Learning Platform Advanetages', NULL, '651f005414c311696530516.jpg', NULL, 'Other studies show that, because it is self paced, eLearning leads to increased student satisfaction and reduced stress. This results in improved learning', NULL, '<p>One of the biggest advantages of online learning is that it offers flexibility. Courses are self-paced, which means users can complete assignments within a specific time frame.</p>\r\n\r\n<p>Participants access the lessons through a Learning Management System (LMS), follow the instructions, and complete the material. Users and instructors interact through messaging apps, email, or discussion boards.&nbsp;</p>', '2023-10-05 18:28:36', 1, NULL, NULL),
(32, 1, 0, 'Why is eLearning effective?', NULL, '6523f1e323ef21696854499.jpg', NULL, 'e-learning is Increasing Collaboration.', NULL, '<p><strong>Because online courses provide students with full control over their studies, they can work at their own pace</strong>.</p>', '2023-10-09 12:28:19', 1, NULL, NULL),
(33, 1, 0, 'Advantage of the online education', NULL, '1697302119.jpg', NULL, 'online education is that it allows students to attend classes from any location of their choice.', NULL, '<p>Ten E-Learning Advantages in Higher Education Over its Traditional Counterparts. Greater Access. Resource Scalability. Better Results. Improved Pace. Cost-Effectiveness. Quick Lesson Delivery. Personalization. Instant Upskilling.&nbsp;</p>', '2023-10-14 16:48:39', 1, NULL, NULL),
(34, 1, 0, 'THE BENEFITS OF ONLINE EDUCATION', NULL, '1697302793.jpg', NULL, 'Learning online also provides the need to apply critical-thinking skills to your daily routine', NULL, '<p>Education can be expensive, but virtual learning can provide a number of ways for students to save. Not having to commute to campus can help you save on transportation costs</p>', '2023-10-14 16:59:53', 1, NULL, NULL),
(35, 1, 0, 'IT related Online Cources', NULL, '1697611979.jpg', NULL, 'Cybersecurity or improve your skills online today', NULL, '<p><strong>Cybrary</strong>. One of the most well-known online cybersecurity learning and training platforms, Cybrary offers a massive catalog of free, quality training for those interested in developing their I.T. skills.</p>', '2023-10-18 06:52:59', 1, NULL, NULL),
(37, 1, 0, 'Online learning offers', NULL, '1697544444.jpg', NULL, 'online courses offer flexibility', NULL, '<p>Online courses offer&nbsp;<strong>flexibility</strong>. You can study any time you want. You can study with whomever you want. You can study wearing anything you want (or nothing if you prefer!) Online courses give you the flexibility to spend time with work, family, friends, significant others or any other activity you like.</p>', '2023-10-17 12:07:24', 1, NULL, NULL),
(44, 1, 0, 'Cybersecurity', NULL, '1697618807.jpg', NULL, 'Cybersecurity is the practice of protecting computer systems', NULL, '<p><strong>Cyber Threats:</strong> Cyber threats come in various forms, including viruses, malware, ransomware, phishing attacks, and more. These threats can exploit vulnerabilities in software, hardware, or human behavior to compromise the security of a system or network</p>', '2023-10-18 08:46:47', 1, NULL, NULL),
(45, 1, 0, 'Information Security', NULL, '1697618985.jpg', NULL, 'Information security involves safeguarding sensitive', NULL, '<p>Information security involves safeguarding sensitive data from unauthorized access, disclosure, alteration, or destruction. This includes protecting personal information, financial data, intellectual property, and more.</p>', '2023-10-18 08:49:45', 1, NULL, NULL),
(46, 1, 0, 'Robotics', NULL, '1697619592.jpeg', NULL, 'Robotics is an interdisciplinary branch of electronics', NULL, '<p>Robotics is&nbsp;<strong>a branch of engineering and computer science that involves the conception, design, manufacture and operation of robots</strong>.</p>', '2023-10-18 08:59:52', 1, NULL, NULL),
(47, 1, 0, 'Main purpose of robotics', NULL, '1697620302.jpg', NULL, 'Robotics is an interdisciplinary branch of electronics', NULL, '<p>Robots are widely used in such industries as automobile manufacture&nbsp;<strong>to perform simple repetitive tasks</strong>, and in industries where work must be performed in environments hazardous to humans.6 days ago</p>', '2023-10-18 09:11:42', 1, NULL, NULL),
(51, 1, 0, 'Data Science', NULL, '1697639421.jpeg', NULL, 'What is Data Science ?', NULL, '<p>Data science is&nbsp;<strong>the study of data to extract meaningful insights for business</strong>. It is a multidisciplinary approach that combines principles and practices from the fields of mathematics, statistics, artificial intelligence, and computer engineering to analyze large amounts of data.</p>', '2023-10-18 14:30:21', 1, NULL, NULL),
(52, 1, 0, 'Is data scientist an IT job?', NULL, '1697639585.jpeg', NULL, 'Data science is the study of data to extract meaningful insights for business.', NULL, '<p>Whether it&#39;s the thrill of problem-solving or the hefty paychecks,&nbsp;<strong>the perks of being a data scientist are luring many IT professionals to take this career path</strong>. If you&#39;re one of them, this article has everything you need to know about how to be a data scientist.</p>', '2023-10-18 14:33:05', 1, NULL, NULL);

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
(2, 2, 2, NULL, NULL),
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
(30, 30, 1, NULL, NULL),
(31, 31, 1, NULL, NULL),
(32, 32, 2, NULL, NULL),
(33, 33, 2, NULL, NULL),
(34, 34, 2, NULL, NULL),
(35, 35, 2, NULL, NULL),
(37, 37, 2, NULL, NULL),
(39, 47, 7, NULL, NULL),
(43, 51, 7, NULL, NULL),
(44, 52, 7, NULL, NULL);

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
(15, 5, 14, NULL, NULL, 'Budget Friendly', '2023-10-12 08:52:10', NULL, NULL),
(16, 5, 15, NULL, NULL, 'It allows students to take courses and earn degrees remotely, without the need to be physically present on campus. Online learning can take many ...', '2023-10-14 18:16:50', NULL, NULL),
(17, 35, NULL, NULL, NULL, 'What are the best online cources ?', '2023-10-17 06:27:10', NULL, NULL),
(18, 35, 17, NULL, NULL, 'IT related cources are best to students.', '2023-10-17 06:29:03', NULL, NULL),
(19, 5, 16, NULL, NULL, 'online educations helps to improve our skills', '2023-10-17 09:19:12', NULL, NULL),
(20, 5, 19, NULL, NULL, 'Online learning offers teachers an efficient way to deliver lessons to student', '2023-10-17 10:00:48', NULL, NULL),
(21, 1, NULL, NULL, NULL, 'e-learning, or electronic learning, is the delivery of learning and training through digital resources.', '2023-10-17 11:44:01', NULL, NULL),
(22, 1, 21, NULL, NULL, 'Definition: A learning system based on formalised teaching but with the help of electronic resources is known as E-learning.', '2023-10-17 11:45:04', NULL, NULL),
(23, 1, 22, NULL, NULL, 'How can we use eLearning?', '2023-10-17 11:46:02', NULL, NULL),
(24, 1, 23, NULL, NULL, 'Examples of synchronous e-learning methods include the use of scheduled and timed online tests, virtual classrooms, web conferencing technology or interactive shared whiteboards that learners can use to collaborate', '2023-10-17 11:46:41', NULL, NULL),
(25, 1, 24, NULL, NULL, 'Which is the best LMS in Sri Lanka?', '2023-10-17 11:53:52', NULL, NULL),
(26, 1, 25, NULL, NULL, 'Ediflix is one of the best online educational platform in Sri Lanka. It is highly facilitated to work on the educational activities simply as well as smartly through ediflix LMS.', '2023-10-17 11:54:44', NULL, NULL),
(27, 5, 20, NULL, NULL, 'what are the new changes of e-learning ?', '2023-10-18 09:26:53', NULL, NULL);

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
(12, '2023_09_27_084416_blog_post_tags', 1),
(13, '2014_10_12_100000_create_password_reset_tokens_table', 2),
(14, '2023_10_19_060728_domain_styles', 3);

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
(1, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 6),
(3, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 4);

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
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Edit', 'Web', NULL, NULL),
(2, 'Delete', 'Web', NULL, NULL),
(3, 'View', 'Web', NULL, NULL);

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

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(2, 2),
(3, 1),
(3, 3);

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
(3, 'user', 'user@gmail.com', '2023-10-03 03:33:55', 'user123', NULL, '2023-10-03 03:33:55', '2023-10-03 03:33:55'),
(4, 'user_two', 'user1996@gmail.com', '2023-10-13 07:47:37', '$2y$10$okuOTitig/jc6OpShS8V9ecJJyORpFoRHPvoUSwJoCrLKa9KKLTeG', NULL, '2023-10-13 07:47:37', '2023-10-13 07:47:37'),
(5, 'admin_two', 'admin1996@gmail.com', '2023-10-13 07:51:25', '$2y$10$Vgus3DpO0xpM6i28lUDFiOQBSnGG2rqmHDVVgWd43lViyvuOTmYdC', NULL, '2023-10-13 07:51:25', '2023-10-13 07:51:25'),
(6, 'writer_two', 'writer1996@gmail.com', '2023-10-13 07:52:31', '$2y$10$h9Pl9c6qJNBYf.saJXO7RuJAizLcRV8Jgbn9FPGNnf0PH4m4k4UEm', NULL, '2023-10-13 07:52:31', '2023-10-13 07:52:31');

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `blog_posts_categories`
--
ALTER TABLE `blog_posts_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `blog_posts_comments`
--
ALTER TABLE `blog_posts_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
