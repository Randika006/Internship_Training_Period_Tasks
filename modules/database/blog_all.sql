-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2023 at 10:53 AM
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
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Title 1', NULL, NULL),
(2, 'Title 2', NULL, NULL),
(3, 'Title 3', NULL, NULL);

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
(7, 0, 'e-courses', 'Online learning and e-courses', 'e-courses', 'eLearning, or electronic learning, is the delivery of learning and training through digital resources. Although eLearning is based on formalized learning, it is provided through electronic devices such as computers, tablets and even cellular phones that are connected to the internet.', NULL, NULL),
(8, 0, 'teaching platform features', 'teaching platform features', 'teaching-platform-features', 'Nowadays, video conference platforms have a lot of practical features that you can use to make your online English classes more dynamic yet organized.', NULL, NULL),
(9, 4, 'Online Self-Paced Learning\r\n', 'Online Self-Paced Learning\r\n', 'Online-Self-Paced-Learning\r\n', 'Self-paced lessons are individualized activities presented through videos or written instructions which allow students an opportunity for independent study with or without periodic instructor support via emails or digital calls. ', NULL, NULL),
(10, 4, 'Videos/Documentaries\r\n', 'videos documentaries\r\n', 'videos-documentaries\r\n', 'Videos/documentaries enable parents and children alike to gain knowledge on various topics in an entertaining manner while still providing educational facts in a visual format at home or on the go using smartphones, tablets or laptop computers! These are great additional lessons when access to textbooks are limited.', NULL, NULL),
(11, 4, 'Schedule time for schoolwork.\r\n', 'schedule time for schoolwork.\r\n', 'schedule-time-for-school-work.\r\n', 'Incorporate different areas of learning into each day so that your student is able to focus on one subject at a time and complete their work at an appropriate pace. ', NULL, NULL),
(12, 3, 'Online learning communities\r\n', 'online learning communities\r\n', 'Online-learning-communities\r\n', 'It can be a challenge for students in online classes to find ways to connect, as you don’t get the personal proximity to others that you do with in-person classes. To mitigate this, consider using an online learning community platform.', NULL, NULL),
(13, 12, 'Live course delivery platforms\r\n', '1ive course delivery platforms\r\n', 'live-course-delivery-platforms\r\n', 'One of the essential categories of education technology is video conferencing tools, or similar platforms that allow the course to be delivered to students live. ', NULL, NULL),
(14, 12, 'Interactive learning labs\r\n', 'interactive learning labs\r\n', 'interactive-learning-labs\r\n', 'Interactive learning labs are a digital software space where students can simulate a real-world situation. ', NULL, NULL),
(15, 14, 'Class management software\r\n', 'class management software\r\n', 'class-management-software\r\n', ' that class management software is different than course management software. This one focuses on how the students are doing, and less on managing the course content and progress. ', NULL, NULL),
(33, 0, 'Prof.', 'Ad sint eligendi eum iusto expedita.', 'doloribus-tenetur-cupiditate-quia-repudiandae', 'Id accusantium eum earum error aut aperiam. Atque et et voluptatibus et ut. Nihil tempora est dolor molestiae facere exercitationem vero. Reprehenderit dolor qui iste.\n\nA voluptatem labore quas ullam amet. Tempore quia suscipit enim laudantium.\n\nEst fuga aspernatur explicabo inventore et nobis. Quo eum adipisci sit quod exercitationem iure earum. Aperiam aut eius et dicta harum quis. Blanditiis earum ut veniam soluta aliquid tempora alias.\n\nAut sed velit molestiae. Fuga non non distinctio qui enim nobis hic rem. Quas et dolor tempore et cum dignissimos. Ea incidunt hic temporibus illo aspernatur.\n\nQuos asperiores corrupti aliquam architecto est. Et in aperiam ea est. Voluptatem ut ratione sint provident. Sunt omnis dolorem voluptatem cupiditate odit eligendi commodi.\n\nQuisquam iste in velit soluta non et. Nesciunt deserunt beatae voluptate voluptas quod.\n\nAutem illo labore neque consequatur laudantium fugit quia. Sunt aut porro voluptas repellendus non neque. Ut vel ea sit necessitatibus. Ut quisquam sunt corrupti illum tenetur.\n\nQuo voluptate laudantium qui molestiae. Sit illo sed porro commodi facere. Id qui consectetur voluptates ut voluptas ea ipsam. Voluptatem et ea qui delectus voluptas.\n\nMagnam voluptas quia itaque quibusdam magnam fugit quia explicabo. Officiis atque nulla ullam. Quibusdam in et autem nam doloribus porro ipsam aperiam.\n\nEt sed est est. Sequi repudiandae ducimus iste et consequatur. Ut voluptatem consequatur non at.\n\nEum dolor quos non sed excepturi tenetur atque. Qui nam qui voluptates. Quos ullam alias enim cum ipsam ea veritatis hic. Ipsam reiciendis reiciendis sint odio provident qui facilis soluta.\n\nQuia quia fuga commodi omnis illo. Molestiae sed est illo doloribus iusto.\n\nAtque quis enim dignissimos qui magnam soluta laboriosam. Placeat sunt expedita odio ut. Delectus est est repudiandae.\n\nVitae pariatur cumque natus et tenetur quia magni. Aut neque soluta dolore minus. Excepturi eum non deleniti aut quia facere. Ea veritatis in voluptates non minus assumenda ea iure. Officia sed reprehenderit maxime quo.\n\nEt alias dolorem similique sapiente id. Odit vitae exercitationem perferendis consequatur. Enim tenetur sed repellendus nihil cupiditate impedit. Ipsa ut maxime dolor sunt aut.\n\nVelit quod veniam a earum incidunt qui facilis. Inventore quia sit eum consectetur illum id non aut. Sunt enim consequuntur qui non tenetur sequi molestiae recusandae. Id aut voluptates voluptas sed soluta culpa rerum sint.\n\nA qui saepe ut eum aut iusto iure ab. Asperiores et eaque aut incidunt. Cupiditate nemo velit veniam. Et vel accusantium esse non animi aut sunt.\n\nAb ab adipisci accusamus quisquam aut minima. Saepe qui amet cum illum id dicta. Minus illo omnis optio quia nemo rerum. Reiciendis ad perspiciatis tenetur perferendis blanditiis.\n\nQuae ea culpa eum quia repudiandae provident. Rerum nisi consectetur repellat in sint.\n\nAnimi veritatis deserunt voluptatum nostrum pariatur. Atque deleniti ea vero repellat corporis sed a. Aut ab similique ut qui. Soluta ducimus harum veritatis fugiat voluptatem ipsa neque. Sit sunt ut alias.\n\nQuam ipsam id quas quia. Inventore saepe natus omnis minus. Aliquid quia repudiandae quis aspernatur nesciunt quia perspiciatis. Rem pariatur ea qui. Consectetur iusto nemo sunt placeat laborum non iure facere.\n\nEa vel voluptatem at libero. Tempore dicta quia mollitia qui. Ea facere ut quo autem corporis vel quam.\n\nBlanditiis eum enim fugiat. Voluptas vero officiis eos mollitia. Sunt quia aut incidunt error. Accusamus neque explicabo consectetur magni. Aut est et dolorum omnis voluptas impedit.', NULL, NULL),
(34, 0, 'Ms.', 'Voluptate temporibus et reprehenderit reprehenderit saepe rerum.', 'velit-quam-et-non-totam-nobis-omnis', 'Pariatur voluptas sint expedita et quia dolor soluta. Esse aliquid in excepturi. Minus sed rerum aut repudiandae nesciunt quam fugit. Est et aperiam quasi.\n\nPerferendis provident impedit est aspernatur aspernatur fugiat. Id qui enim aut necessitatibus rerum. Deserunt quam inventore dolores enim non voluptatibus corrupti. Voluptatibus sed nisi non est porro aut est modi.\n\nArchitecto quaerat molestiae aspernatur velit perspiciatis minus ullam. Ab quis fugiat et officiis blanditiis a nulla iure. Consequatur quo autem magnam blanditiis soluta.\n\nMaxime accusamus qui est veniam accusantium omnis. Doloribus qui quasi a nulla. Dolor sunt accusamus alias est quas.\n\nAutem minima fugit explicabo sunt velit dolorem. Ullam consequatur blanditiis fugit accusamus id et minima. Non vel aut occaecati quasi et dolore quas perspiciatis. Suscipit eveniet accusamus qui beatae et.\n\nQuam aliquid est et et maiores omnis quidem. Quibusdam velit assumenda sit perspiciatis atque blanditiis. Incidunt sit sunt cumque aut est.\n\nDolor et labore quia amet eum fuga illo consequuntur. Dolor commodi accusantium saepe quis vitae. Maiores libero quae sapiente quisquam veritatis eum voluptatem. Velit vel molestiae ex unde vel sunt. Provident est recusandae tenetur qui.\n\nAut aut fugiat saepe asperiores nihil neque. Molestiae ad non ea consequatur laudantium. Ea delectus est iure minus eaque.\n\nMolestiae eum quis corporis quasi. Nisi blanditiis consectetur sint quam magni beatae consequuntur sit. Sequi voluptas cupiditate perferendis aut sunt commodi accusantium. Cupiditate aut ut accusamus voluptatem dolore.\n\nAliquam adipisci libero sapiente sed id quis sed. Excepturi repellendus consequatur odit accusantium vero dolores quia animi. Vel voluptatem laboriosam earum voluptas occaecati laudantium.\n\nTotam vel sit deserunt asperiores. Magni nisi sunt incidunt nesciunt. Quisquam quia eius facere.\n\nSit quo error similique. Minus consequatur eos aut sit nisi voluptas nemo. Vero expedita rerum rerum ut in.\n\nEx ducimus aut facere voluptas. Tempore et quam quas ut temporibus. Dolore et et qui sunt iste eum adipisci. Et alias qui repellendus doloremque quisquam omnis voluptatem.\n\nAut est dolorem dicta maiores. Qui necessitatibus delectus qui eaque voluptates. Reiciendis sit laudantium repudiandae deserunt consequatur nihil sed.\n\nSed ducimus nihil consequatur non et quas. Sapiente voluptatem voluptas suscipit impedit tenetur. Distinctio optio nihil ipsa sequi eos quos.\n\nMollitia voluptates voluptas animi illum ea quibusdam non magni. Voluptatem ea qui aspernatur sint excepturi. Doloremque iure nisi ut autem sint labore ut.\n\nDoloremque tempore ea dolores laborum pariatur. Ipsa velit quasi consequatur ex corporis. Repellat sed libero quas ea placeat adipisci est. Occaecati saepe et perferendis saepe beatae quisquam quae.\n\nEt quo suscipit odit. Quod sit occaecati consequatur nihil harum sapiente. Qui consequatur aliquid dolor voluptates.\n\nEa quisquam dolores voluptates consequatur soluta et ut omnis. Ea quibusdam et laboriosam assumenda sit. Pariatur voluptas dolores labore ut saepe aut.\n\nEst quasi vitae occaecati exercitationem. Sed perferendis sunt a et velit. Ea molestiae ut velit nobis.\n\nFugiat asperiores quos aut aut cum placeat ipsam. Velit maxime repellendus tenetur accusantium in. Odio praesentium impedit doloribus ab eveniet a cumque provident. Ad rerum consequuntur voluptatibus minus.\n\nQui quia soluta nemo vel impedit accusamus corrupti. Error magni maiores voluptas dolor omnis quaerat sed. Tempore ea suscipit repudiandae officia delectus amet et.\n\nQuisquam vero facilis quo. Aut voluptas rerum asperiores molestiae deleniti. Ut ut laudantium explicabo ad exercitationem aut itaque sit.', NULL, NULL),
(35, 0, 'Dr.', 'Nesciunt esse sit minus tempora soluta.', 'repellendus-repellat-voluptatem-ullam-assumenda-esse', 'Asperiores ea magni aut itaque sed laborum. Repellat tenetur pariatur numquam et. Ipsum possimus vitae maiores delectus omnis sunt vel. Earum debitis nulla eveniet iusto dolorum aliquam.\n\nQuisquam incidunt officiis dignissimos autem aut voluptates ex. Aliquam officiis illo eos rem in sapiente. Omnis laborum quia quia aliquam quia sapiente aut. Odio non non suscipit quod reiciendis voluptas aut.\n\nTemporibus expedita autem qui dolor blanditiis eos beatae aut. Nobis quibusdam ut aut assumenda. Modi dolores sed hic quia consequatur. Placeat soluta aperiam non eum quis molestiae labore.\n\nNumquam similique quo non. Enim omnis libero autem blanditiis occaecati et veniam. Natus ullam voluptas aspernatur.\n\nTenetur voluptas dolore provident perspiciatis in. Reprehenderit voluptas minus consequuntur laboriosam aspernatur id expedita. In et in accusantium aspernatur minima modi assumenda. Quos nobis facere asperiores ut esse.\n\nMaiores minima iste voluptas praesentium reprehenderit qui nihil similique. Dolorum minus magni ab pariatur esse facilis natus. Quia repellendus quaerat nesciunt hic et.\n\nDolorem qui dolores aut. Rem ea ad aperiam ut velit iste. Maiores ea quia hic assumenda quis.\n\nId amet et officia sit quia dolor aperiam. Ex illo sint velit dolores rerum non sequi atque. Consequatur in sequi quia ea dolor.\n\nEt pariatur nulla numquam et omnis beatae. Eum qui eos odit cum iure officia distinctio. Tempora voluptatem qui ullam doloribus.\n\nEa hic omnis iste quam libero. Nisi enim sit provident quaerat molestiae enim.\n\nSequi perferendis culpa vel consequatur. A quibusdam placeat earum. Corporis ratione expedita accusamus quos ipsa rerum.\n\nExcepturi est veritatis quidem temporibus officia similique. Iste vero ipsum perspiciatis fuga dolor voluptatem. Est illo quia ea nihil. Iste libero minus consectetur optio labore saepe dignissimos.\n\nEt animi incidunt harum non cum et qui. Qui ullam consectetur quo iusto sunt et veritatis perspiciatis. Rerum ullam ullam exercitationem et temporibus dolor ut. Doloremque neque nesciunt similique dolores iure. Eveniet vitae sit voluptatem sapiente.\n\nId consequatur doloribus non sint ut ratione ipsa. Expedita enim odio dolores fugiat quia. Debitis neque ea qui earum praesentium libero voluptate.\n\nVero est autem laboriosam inventore hic ea. Dignissimos perspiciatis est omnis harum qui. Unde et magnam non qui expedita sit inventore aut. Officia earum cumque tenetur minima.\n\nEius iste maxime molestiae eum aliquid ullam aliquam quo. Veniam magni quis similique sit quos voluptas ipsa. Quia recusandae est consequatur porro eligendi ad nesciunt ut.\n\nAnimi corrupti neque rem corporis architecto. Autem et non labore velit et. Suscipit recusandae sed voluptatem deserunt.\n\nEt ducimus explicabo illo similique. Officia perferendis ducimus qui voluptates amet. Fuga dolores ut rem qui molestias amet tempore eos. Facere tempore sit voluptates totam vel.\n\nDolores quo inventore quia atque. Cumque quisquam sequi qui doloribus quibusdam commodi consectetur. Quaerat rerum tempora vero eos voluptatem labore molestias. Amet qui vel deserunt qui. Nostrum omnis aut perspiciatis aut.\n\nQuis est nisi velit sunt ut animi sit tenetur. Ducimus aut architecto eveniet neque quo. Natus voluptatem quisquam autem commodi reiciendis debitis.\n\nEt repudiandae vitae quidem magni reprehenderit. Maxime et nulla laborum architecto nisi odio ducimus. Sed dolor et eos voluptas temporibus sit corrupti cum.\n\nLibero at reiciendis adipisci illo in corrupti unde. Sed ut veniam voluptatem magnam repudiandae omnis rerum. Velit et et voluptate corrupti sed quisquam rerum. Odit sed repudiandae harum.\n\nEt quia et eius sequi. Voluptate non aliquam quos et incidunt. Aliquam suscipit et consectetur magnam.', NULL, NULL),
(36, 0, 'Mrs.', 'Nemo eaque sed voluptas corporis.', 'aut-et-quia-necessitatibus-nam-voluptate', 'Rerum veniam ut nihil tempora eos impedit. Sint praesentium iure itaque beatae ut quos nemo. Distinctio suscipit asperiores et quia qui.\n\nAut ut id molestiae voluptas voluptate aspernatur porro quia. Ea dolor id corrupti autem inventore nam nobis expedita. Consequatur est aliquid vero qui voluptate voluptates inventore. Praesentium cupiditate sed quam occaecati qui tenetur alias.\n\nQuaerat voluptatem natus perferendis totam. Illum iusto voluptas aut in. Minima voluptas quae laboriosam. Nesciunt debitis suscipit ipsum est.\n\nOccaecati neque et quia ipsum rerum natus rerum delectus. Dolore eius omnis maxime magni laudantium. Ut dolorem iure sunt et illum. Tenetur facere voluptate et voluptas repellendus dolorem velit.\n\nEarum fugiat ut in velit. Nihil omnis quia et. Labore cum nam ab beatae assumenda officia saepe. Aspernatur voluptatibus impedit voluptas perferendis voluptas. Quisquam ad libero sed voluptas totam placeat et earum.\n\nEum illo quia voluptas quasi et. Praesentium architecto consequatur cumque quae. Ipsa sunt ad deserunt sed. Omnis voluptatum repellendus omnis animi est provident consequatur. Dignissimos maiores porro fuga est.\n\nProvident quis ex placeat voluptatem dolorem. Culpa aut consequatur aperiam dolores rerum et et. Non nisi corrupti unde natus in aut dolorum. Esse et dolorem omnis ea qui iusto voluptas.\n\nExplicabo et totam iste aut accusamus error. Consequuntur possimus odit at atque minus. Quos consectetur consequatur tenetur tempora consequatur.\n\nQuod et recusandae dolores. Voluptas quas reprehenderit eius aperiam.\n\nIpsum aut architecto quia vitae illo quae aut. Eum similique repellendus maiores dignissimos consequatur nobis omnis. Non repudiandae velit esse veniam eos. Ratione amet totam dolores saepe non error optio. Est rerum possimus quas quisquam sit provident.\n\nEt deserunt dolor sunt tenetur eveniet quia consectetur. Labore quod voluptates facilis suscipit tempore. Ut nemo qui rerum tenetur enim recusandae blanditiis ea. At repudiandae est nobis numquam exercitationem aut amet recusandae.\n\nDolorem eligendi architecto sed aliquam corrupti itaque. Et occaecati error quam enim ut exercitationem. Quaerat cum recusandae dolor et quidem.\n\nAccusantium praesentium hic atque necessitatibus. Cumque expedita beatae in non eum hic ab omnis. Sunt necessitatibus sequi ullam rerum repellat dolorem reprehenderit.\n\nAut amet qui sequi in. Vitae aut animi enim veritatis quos.\n\nEst a optio quae est dignissimos aliquam. Dolorem fugiat sed non et est autem ut non.\n\nOdit voluptatem alias magni quae dolor molestiae harum. Dolor necessitatibus blanditiis eum quia explicabo.\n\nExpedita molestias nemo ad aut numquam ipsa beatae. In rerum velit iure et ut qui cum fugiat. Illo corporis quia aut facilis. Sit autem ducimus qui nesciunt molestiae.\n\nPariatur necessitatibus dolore quibusdam voluptas assumenda excepturi eos. Enim in eveniet suscipit ut perferendis distinctio aut omnis. Ut dolorem aperiam et at officia. Ea consequuntur et illo perferendis velit quod.\n\nQuibusdam maxime consequatur aut quidem et velit soluta. Libero eum totam reprehenderit ut voluptates. Quia accusamus enim quasi animi.\n\nOmnis vel consequatur aut modi animi. Natus ad minima enim optio qui sint laboriosam. Nihil dicta hic ut non veniam ut.\n\nArchitecto porro explicabo ut quaerat similique similique ipsum. Quia rem ipsam repellendus voluptate eos. A nulla voluptas id nihil aliquid minus aut repudiandae. Nemo dolorem ad quod sed et animi autem.\n\nEt autem sapiente ut ratione voluptatem perferendis similique aperiam. Qui natus consequatur numquam provident debitis cupiditate possimus. Ut ea fugit dolores nesciunt.\n\nUt totam sint labore dolore quia nisi. Aliquam doloribus sequi eius ipsum sed culpa ducimus.', NULL, NULL),
(37, 0, 'Mr.', 'Hic quis incidunt ut dolorum quis voluptatem repellendus.', 'tenetur-omnis-nobis-eos-molestias-alias-ut-dolore-vel', 'Voluptate alias voluptatem qui voluptatem. Dignissimos non quod magni deserunt. Nemo sed voluptas accusamus consequatur praesentium.\n\nRerum sit maiores qui dolorem nesciunt tempore et et. Iure placeat earum porro quibusdam quia. Minima repudiandae qui saepe harum quam magni perferendis. Nemo commodi et dignissimos quia dolorem.\n\nPraesentium doloribus soluta dolor nemo magnam temporibus quo. Odio doloremque harum quia eligendi. Maiores ea in omnis et.\n\nQuo recusandae aut qui fugiat. Harum ad ea beatae asperiores beatae incidunt voluptate. Qui rem rem et. Sapiente et non sit quasi placeat dignissimos.\n\nDebitis libero est ex reiciendis. Voluptatum sequi magni assumenda eos in. Voluptatem ut tenetur et voluptatibus accusantium id voluptas. Ut qui eos et nihil amet nihil reiciendis.\n\nCommodi sunt ut temporibus quo quia. Voluptatibus suscipit natus omnis assumenda accusamus pariatur ut soluta. Laboriosam eaque alias ullam autem. Praesentium omnis qui animi animi animi atque.\n\nQuia molestiae dolorem temporibus ut deserunt. Itaque qui dignissimos nobis omnis eum voluptatem nihil sit. Similique libero rerum numquam qui.\n\nAlias laudantium facilis eum illo distinctio voluptas ipsam ad. Eaque non ipsam facere quae. Reiciendis nemo non ipsum commodi.\n\nDoloremque illo sapiente quisquam quas autem aliquid ea. Consequatur molestiae nihil optio. Dolorum libero id enim architecto esse qui.\n\nUt dolor molestias voluptatum sequi magni eum. Et fugiat odit tenetur sit omnis sint eum. Ducimus sed totam iste repellat sed et laborum. Ducimus libero quo fuga nam sed inventore.\n\nVoluptatem aspernatur facilis aut accusantium molestiae eveniet. Blanditiis dolorem voluptatem iusto aut aliquid. Facere facilis ea tempore tempora magni aut hic.\n\nId quod inventore est explicabo et et. Quia ut vero voluptate quas aspernatur mollitia alias modi. Nesciunt soluta quidem saepe.\n\nVel alias dicta voluptatem ut eius doloribus quod. Cum ea soluta consequatur animi voluptatibus quidem assumenda. Voluptatem doloremque cupiditate iste corporis accusamus repudiandae. Aut et dolorem ullam numquam aut assumenda totam explicabo.\n\nNostrum cumque atque molestiae nam nesciunt voluptatum. Et nemo voluptas necessitatibus a dolorem non. Quos consequuntur minima eius vitae.\n\nDolorem nisi rerum consequatur amet temporibus est. Qui aut omnis et in minus consectetur. Omnis optio dolor sunt voluptatum ratione fugiat.\n\nEt deserunt dignissimos dolorem enim nisi. Rerum voluptate est ad et ducimus cumque ad. Possimus cum facere id omnis accusantium. Dolores ea explicabo ipsam quibusdam inventore aperiam architecto. Numquam sit blanditiis error itaque nam autem in.\n\nOmnis et cupiditate est ex. Natus harum voluptatem vero tenetur autem. Optio eum et architecto ut sint dignissimos.\n\nVelit provident officia hic et. Earum deleniti similique rerum asperiores quod rerum. Dolorem qui officiis et excepturi animi eum hic.\n\nUnde nulla in cumque rerum porro voluptas quisquam maxime. Et vitae consectetur autem consectetur autem rerum.\n\nReiciendis eos omnis dolorem explicabo qui numquam atque. Fuga id natus minus culpa est corrupti tempora. Dolores rerum sunt unde consequatur iste sint quisquam.\n\nMaiores dolores et temporibus id aut explicabo ullam. Molestiae aut temporibus perferendis vel quas. Laudantium molestias dolor consequatur doloribus possimus.\n\nEnim laboriosam ut accusamus earum laboriosam. Sunt est aspernatur voluptate illo unde aut in suscipit. Aperiam sit optio voluptas eius nobis eos. Quia sunt iure qui delectus est praesentium necessitatibus.\n\nMaxime iste dolorem quia. Facere quis aspernatur eaque magnam totam enim necessitatibus. Voluptatem in et et eum sequi tempore. Eveniet aut eos dolorem perferendis harum et sed.', NULL, NULL),
(43, 0, 'Saepe recusandae eum placeat corrupti eligendi rem.', 'Incidunt quo magni ut impedit cumque enim.', 'Voluptas architecto recusandae repellendus.', 'Quis suscipit neque quod adipisci assumenda enim. Alias quis natus quia vel esse dolorum rerum. Qui consequuntur harum qui dicta et sint. Dolor sit in ea et perferendis. Vel unde aut ut laborum.', NULL, NULL),
(44, 0, 'Culpa maiores inventore ad doloribus suscipit ut.', 'Sint quas et culpa.', 'Explicabo occaecati facere iste.', 'Rerum enim possimus incidunt libero facilis. Explicabo molestiae odio corrupti aut eligendi unde. Non labore molestiae quos aut nihil. Quia eos est dolores voluptatum nisi. Autem ex possimus est non.', NULL, NULL),
(45, 0, 'Nobis repellendus harum neque eaque.', 'Officia sunt optio aut.', 'Nesciunt et doloribus distinctio nobis.', 'Iste quae voluptas in impedit nihil nobis ducimus. Officia laboriosam quam dignissimos velit autem rerum. Et sunt eaque est deserunt.', NULL, NULL),
(46, 0, 'Dignissimos repellendus molestias sed.', 'Autem laboriosam incidunt doloremque itaque nemo.', 'Officia praesentium laborum porro.', 'Iusto libero dolores voluptas nobis consequatur atque molestiae. Non esse est voluptatem consequatur. Ut consequatur doloremque sunt culpa. Est labore repellat officiis illum. A quae voluptas deserunt omnis. Harum voluptatem sunt est voluptatem est.', NULL, NULL),
(47, 0, 'Laudantium enim maxime aut nihil unde.', 'Consequuntur ex voluptatem reprehenderit beatae voluptatem.', 'Commodi quis voluptates fugit voluptatem.', 'Ea voluptatem excepturi praesentium adipisci. In accusantium provident quis dolorum. Neque pariatur ad quas quae porro in cupiditate. Nihil non eos nesciunt unde mollitia. Labore occaecati eaque pariatur veritatis perspiciatis voluptas. Ipsa perferendis non molestiae quod magnam ratione quis saepe.', NULL, NULL),
(48, 0, 'Voluptatum accusamus ex nesciunt.', 'Quo error voluptas quo quia rem quo.', 'Consequatur aspernatur deserunt dolor quam sit.', 'Odit exercitationem sit ipsum qui. Aut ut sunt ut dignissimos corrupti ea. Dolore quia repellendus consequuntur explicabo. Consequatur inventore dicta fugit.', NULL, NULL),
(49, 0, 'Deserunt eum doloremque et dolorum excepturi quia.', 'Doloremque aut dolores nostrum enim a et.', 'Aut aspernatur nihil maiores.', 'Ipsum totam et pariatur minus itaque. Et sapiente omnis molestias corporis. Facere facilis ducimus necessitatibus aliquam excepturi enim. Ab est sit tempore quasi sit. Esse voluptate nobis ratione ut eaque odit.', NULL, NULL),
(50, 0, 'Ratione est numquam corporis.', 'Non consequatur suscipit consectetur distinctio.', 'Voluptatem rerum eaque dolor autem.', 'Iste nemo perferendis expedita natus voluptatem fuga amet. Fugiat mollitia minima est id ducimus. Pariatur distinctio qui exercitationem cum reprehenderit in. Quam natus magni dolor sit. Aspernatur exercitationem qui in quam.', NULL, NULL),
(51, 0, 'Sunt distinctio voluptatem porro sint.', 'Expedita quaerat dicta itaque.', 'Quo expedita dolorem molestias.', 'Reiciendis minus quia dolorum cum rem molestiae ea dolorum. Debitis expedita aut exercitationem dignissimos tempore adipisci quis. Itaque illum nisi ipsa dolore dicta neque voluptatem. Adipisci et occaecati error et voluptatem quam dolor. Qui id et voluptates et eveniet corporis quis. Voluptatibus itaque sed libero a quas vitae quis.', NULL, NULL),
(52, 0, 'Earum repellendus quis eos.', 'Beatae esse magnam nesciunt consequatur sapiente eos.', 'Aut autem aut perferendis iusto et.', 'Dicta id et quia culpa rerum est. Eligendi fuga aut voluptatem ducimus qui deleniti et et. Consequatur fugiat reprehenderit totam incidunt ducimus cum ut.', NULL, NULL),
(53, 0, 'Temporibus enim eligendi nesciunt sed ratione.', 'Repellendus vel qui omnis.', 'Cum nam quia dolorem.', 'Minus rerum et distinctio eaque distinctio. Maxime ut facilis occaecati aut expedita ex. Id at iure placeat at assumenda. Rerum iusto facere non soluta neque illo. Eos dolore tenetur autem quibusdam ut sint et.', NULL, NULL),
(54, 0, 'Qui sit in iste saepe.', 'Quaerat vel voluptatibus nemo.', 'Nemo vel rerum error possimus beatae voluptatum.', 'Iure et ipsum dolorem vitae dolore enim maiores accusamus. Corrupti adipisci in nisi quasi quis sit omnis. Aliquid voluptatem ut harum. Aspernatur ratione quasi aliquam accusamus sit unde adipisci doloremque.', NULL, NULL),
(55, 0, 'Incidunt corrupti velit rerum voluptatem omnis.', 'Est id fuga consequatur.', 'Ut adipisci aut pariatur.', 'Aut perspiciatis mollitia quia. Fuga dignissimos ad enim reprehenderit ipsa quis. Placeat omnis qui fugit nulla ut id neque. Nihil nisi enim aut itaque. Id nihil qui vitae libero. Rerum similique quisquam optio atque et quia minus.', NULL, NULL),
(56, 0, 'Tempore voluptatum qui dignissimos et vitae.', 'Expedita sunt fugit cupiditate enim.', 'Facilis excepturi eius aspernatur atque quod dolor.', 'Dolorem est est et. Et labore eum dolor molestiae illum. Qui omnis voluptatum rerum omnis maxime harum sint. Delectus non voluptas itaque mollitia reiciendis animi.', NULL, NULL),
(57, 0, 'Accusamus ea necessitatibus sunt.', 'Dolore exercitationem aliquid rerum.', 'Necessitatibus doloribus nobis ut consequatur est.', 'Delectus consequatur aliquam provident aut modi molestiae. Mollitia et laudantium veritatis ipsum aspernatur quis. Quam quis nisi eum quo quidem delectus distinctio. Cum et ullam commodi aut.', NULL, NULL),
(58, 0, 'Similique molestiae cupiditate qui debitis.', 'Est modi ex sit.', 'Velit excepturi mollitia sequi voluptatem.', 'Est saepe quibusdam suscipit provident optio ut. Voluptates sunt ea ut temporibus odit iste. Quaerat quos in dolorem dolor qui. Ut in quo quo. Nobis optio et quasi dolor qui ex. Repellat iusto delectus nostrum ut consequatur.', NULL, NULL),
(59, 0, 'Quis a et sed et.', 'Et laboriosam aut voluptas qui.', 'Voluptas sint sunt dolores accusantium atque.', 'Tempore blanditiis soluta architecto enim et incidunt et. Veritatis impedit est vero veritatis. Commodi sunt et molestias ipsum quisquam assumenda. Quod tempora perferendis qui veniam beatae sit in. Praesentium et repellat velit in maxime. Inventore placeat ad aut eos et.', NULL, NULL),
(60, 0, 'Doloremque eaque vel expedita est illum a.', 'Qui tempora doloribus eligendi ipsum.', 'Ipsum dolorum architecto illo eveniet adipisci eius.', 'Dolorem id nemo rerum aliquam. Dolores ducimus sint optio repellendus illum non et dolores. Et sequi eos cupiditate qui. Et minus qui magni accusamus dolorem consequatur quia. Et dolor quam qui. Totam eos asperiores magnam assumenda dolore repudiandae et quisquam.', NULL, NULL),
(61, 0, 'Voluptatem molestiae in autem nulla debitis eos.', 'Voluptatum ipsam iure amet quis dicta deleniti.', 'Vitae amet quae commodi.', 'Fugit modi laudantium sed dolores sit eos. Fugiat quia vel non aliquid autem. Animi non ut consequuntur mollitia dolor. Eaque facilis culpa ipsam qui sed quibusdam est. Vel laboriosam a ut et qui necessitatibus.', NULL, NULL),
(62, 0, 'Dolores quo consequatur recusandae corrupti corrupti doloremque.', 'Non voluptas et et voluptatem.', 'Illum vitae architecto inventore atque rem aut.', 'Voluptatibus ab pariatur sint qui natus quaerat. Soluta sint cupiditate reiciendis dolores esse est pariatur. Et incidunt qui et quia tempore voluptatem quaerat. Ut rerum error vitae id earum velit inventore eum.', NULL, NULL),
(63, 0, 'Atque cum quia voluptates ut consequatur.', 'Vel cumque consequatur dolores quia et distinctio.', 'Ea odit repellat id vel accusantium.', 'Ipsa et dolor et voluptate unde non aspernatur quia. Commodi et incidunt dolorem sequi similique cumque sed veniam. Vel neque quia eos est cumque quas et. Accusamus est consequuntur nisi consequatur sapiente aut. Et ad et reiciendis illum praesentium dicta.', NULL, NULL),
(64, 0, 'Nihil odio cumque eligendi animi aut.', 'Unde tempore ipsa distinctio nihil aut.', 'Maxime illum ipsam ut.', 'Velit aut corrupti dolorum neque voluptatum laboriosam laudantium. Modi quo sed qui repellat eaque vel. Ex doloremque facere non in est. Est cupiditate eveniet ea laboriosam eos impedit. Veniam enim autem nihil rerum quia aliquam perferendis.', NULL, NULL),
(65, 0, 'Deserunt necessitatibus eveniet dolore enim.', 'Velit nisi delectus rerum molestiae et possimus.', 'Esse et reiciendis impedit alias provident delectus.', 'Quo tempora officia numquam non similique et. Consequatur omnis exercitationem rerum necessitatibus vel. Dolores fuga mollitia cumque est sunt error aspernatur. Est distinctio id in architecto qui. Molestiae sed debitis doloremque qui aut.', NULL, NULL),
(66, 0, 'Facilis repellat nulla temporibus quasi unde.', 'Et quaerat reprehenderit sed omnis exercitationem non.', 'Beatae veritatis recusandae et aut inventore soluta.', 'Fugiat vel molestiae nemo vero cumque nihil consectetur modi. Eveniet et corporis quia officiis eveniet. Non assumenda a omnis quia nemo. Nostrum sint voluptatem dolore dolor.', NULL, NULL),
(67, 0, 'Nesciunt perferendis nesciunt ea quia accusamus.', 'Qui non quae placeat aperiam sit.', 'Vero aut consequatur voluptates.', 'Nesciunt impedit quis itaque excepturi. Eos dolor et labore vel quisquam sint. Et atque et quibusdam qui et similique. Perspiciatis est voluptates ut iure dolorem. Id iusto veniam consectetur libero. A quisquam autem qui sint.', NULL, NULL),
(68, 0, 'Dolore mollitia nesciunt qui voluptas.', 'Omnis omnis quae voluptate non porro quis.', 'Corrupti nam sed reprehenderit voluptatem aspernatur minus.', 'Rem velit illo repellendus ut est incidunt cupiditate perspiciatis. Vel non soluta id magnam cupiditate. Odit corporis consectetur qui sed. Aliquid iure non qui illo.', NULL, NULL),
(69, 0, 'A et atque accusantium excepturi ipsam.', 'Et illum doloremque aut et.', 'Itaque provident totam dignissimos.', 'Et doloremque non voluptas et et aliquid quia. Tenetur maxime at sit dicta iure sed fuga. Quia et repudiandae omnis omnis. Nihil maiores praesentium provident quis.', NULL, NULL),
(70, 0, 'Consectetur laudantium in nulla et at non.', 'Doloribus doloremque reprehenderit beatae qui.', 'Voluptates non necessitatibus ipsam.', 'Sint aut cumque qui odit molestias totam numquam non. Voluptas voluptatem ad corporis et quae at suscipit. Quo provident illum omnis animi aperiam cupiditate. Error non corporis rerum est.', NULL, NULL),
(71, 0, 'Iusto nesciunt et cum.', 'Hic et laudantium molestiae.', 'Totam consequuntur quia accusantium eos voluptas provident.', 'Laborum quis quas amet quaerat dolores. Modi reiciendis illo qui autem quia commodi odio error. Id qui ut deserunt eveniet ratione est repudiandae. Et voluptatem dolores illo maiores. Inventore hic non et vitae.', NULL, NULL),
(72, 0, 'Qui unde soluta iusto voluptatibus possimus.', 'Neque omnis perspiciatis repellat nemo repellendus.', 'Voluptatum dolorem nobis aut dolor officia.', 'Dolores molestiae nulla illum quae amet assumenda quos. Voluptates veritatis pariatur enim ut. Quia molestias ad maxime omnis qui esse. Beatae neque alias odio ex quam praesentium eum. Et quaerat deserunt natus minus.', NULL, NULL),
(73, 0, 'Ea voluptates voluptatem aut quia.', 'Modi est tempore incidunt adipisci ab sit.', 'Doloremque impedit et iste.', 'Expedita sed natus in deleniti iste mollitia. Minus dolores debitis magni ad. Eos neque quidem voluptatem est. Et non quam blanditiis error qui voluptas.', NULL, NULL),
(74, 0, 'Rerum suscipit et hic rerum doloribus.', 'Non in reprehenderit suscipit.', 'Dolorem id dicta eum non facilis quisquam.', 'Iure dolorem aperiam doloribus est. Et ipsa quisquam rerum nisi molestiae quia a. Cum officiis sequi sunt.', NULL, NULL),
(75, 0, 'Exercitationem incidunt modi porro.', 'Voluptates minus et omnis.', 'Facere aliquam ut velit deleniti.', 'Et ea quam assumenda eius. Quo quos iusto enim omnis et repellat. Dicta perferendis doloremque similique aut voluptate dicta. Molestiae molestiae velit et.', NULL, NULL),
(76, 0, 'Vitae quibusdam voluptatibus pariatur.', 'Quasi delectus nisi et.', 'Sint et autem id laudantium.', 'At non accusantium odio et quam ea sunt expedita. Libero officiis est sed quidem sit. Cum iste voluptas molestiae error. Enim nulla dolore voluptates repudiandae aspernatur quod expedita. Placeat tenetur nihil perspiciatis voluptatem a rerum officia.', NULL, NULL),
(77, 0, 'Quis voluptatem delectus vel eos tempora.', 'Sed voluptatem sed voluptas hic ut.', 'Enim amet ea cumque est et.', 'Tempora ipsum recusandae quia sed. Officiis dicta libero ea soluta rerum. Nemo similique ea aut similique rerum.', NULL, NULL),
(78, 0, 'Dignissimos saepe et repudiandae officiis cumque error.', 'Debitis nam assumenda provident officiis.', 'Deleniti iusto rem enim.', 'Delectus deserunt voluptatibus necessitatibus. Et sed ea cumque iusto. Maiores aut suscipit debitis ullam non facere qui.', NULL, NULL),
(79, 0, 'Ea quam eum similique corrupti eius iste.', 'Eligendi aliquam aperiam harum atque.', 'Quae beatae magni esse assumenda est ratione.', 'Architecto recusandae quo est ut nulla aut sint. Nobis quis aut maiores. Saepe quisquam commodi ex amet rerum tenetur occaecati iure. Aliquam quia qui ad tempora id eligendi. Ratione molestias quia et nihil iste aspernatur.', NULL, NULL),
(80, 0, 'Est omnis quia deleniti.', 'Sit reprehenderit iure sequi consequatur.', 'Vitae est expedita velit sed.', 'Qui temporibus aut atque sequi. Commodi distinctio hic at sed id minus autem. Aut sint consequuntur quos vel aspernatur facilis sed. Quos quia quo nemo velit expedita.', NULL, NULL),
(81, 0, 'Placeat delectus animi delectus.', 'Labore repellendus sed aut.', 'Reiciendis autem nobis qui esse illum.', 'Nulla suscipit qui optio quo placeat est illo. Quis et dignissimos inventore iusto. Dolore ea aut eius ullam fugiat. Fugiat eaque ut distinctio consequatur a. Dolor inventore nostrum et ipsa similique voluptatum. Quia in sit vel omnis nesciunt.', NULL, NULL),
(82, 0, 'Autem eaque fugiat quae voluptatibus ratione.', 'Commodi et illo qui nam sed sunt.', 'Delectus eos accusantium iusto.', 'Necessitatibus sit et quisquam nobis et. Laborum in ut voluptas ex architecto rerum nihil. Aut voluptatem earum voluptatibus vitae. Repudiandae quibusdam fuga animi iste. Deleniti necessitatibus et laudantium reiciendis dolore ipsam.', NULL, NULL),
(83, 0, 'Quis qui dolor ut.', 'Sequi qui hic eos nulla reiciendis.', 'Nostrum sed saepe enim a voluptatem aliquid.', 'Alias delectus quod eos. Adipisci voluptatem ipsam ut earum qui. Similique et voluptas fugiat delectus eum delectus officiis numquam. Doloribus fugiat qui ab rerum quidem. Ipsum magni aut sequi et. Odit in alias perspiciatis doloremque aut non eum.', NULL, NULL),
(84, 0, 'Voluptatem voluptatem tempora esse excepturi.', 'Repellendus corrupti sed voluptatem repellendus.', 'Ipsum doloribus est maiores dolorem enim quis.', 'Ullam tempore corrupti amet cupiditate. Earum harum consequatur qui aspernatur architecto totam provident. Voluptates illo quia nam quae modi. Distinctio rerum odit illum qui earum. Illum laudantium ab alias dolorem culpa corporis.', NULL, NULL),
(85, 0, 'Exercitationem quae aliquam consectetur qui amet sapiente.', 'Voluptatum totam consequatur rerum fugit.', 'Quis maxime ab iure aut.', 'Dolor alias est delectus delectus minima consequatur repudiandae. Dolorum sunt incidunt amet natus omnis voluptas. Amet pariatur facilis et libero. Delectus similique voluptas veniam quasi reiciendis asperiores.', NULL, NULL),
(86, 0, 'Fugit aperiam repudiandae eos et facere molestiae.', 'Commodi totam enim saepe vero maxime.', 'Et vitae in esse voluptatem cupiditate.', 'Voluptates aspernatur laborum ab recusandae provident quia numquam veniam. Commodi rerum ut a aliquid. Minus ea quam quidem non labore eos et.', NULL, NULL),
(87, 0, 'Est voluptate ut est sit eaque.', 'Minus enim ad harum amet ut neque.', 'Quas non et dolore doloremque.', 'Maiores eos modi enim eum tempore est omnis. Inventore nemo non esse culpa. Dolorem quo molestiae sunt. Sed sed provident in rerum doloribus quasi ut. Eum labore vel aut adipisci atque quas nemo fugiat.', NULL, NULL),
(88, 0, 'Officia soluta et architecto et culpa optio.', 'Consequuntur error quaerat accusantium dolorem.', 'Debitis nobis aut quam.', 'Dolores voluptatem velit exercitationem nulla ut. Maiores incidunt distinctio quis perspiciatis. Quo modi facere rerum quam ab. Autem numquam voluptatibus quod et voluptate architecto. Sunt mollitia itaque temporibus ut. Sequi labore quia mollitia velit id.', NULL, NULL),
(89, 0, 'Voluptas necessitatibus eaque sint.', 'Est rerum dolores quod.', 'Velit quis sequi aut voluptatem magni.', 'Enim consequatur ipsam qui delectus. Officia tempora et voluptas perspiciatis doloribus magnam expedita. Totam ex maiores laboriosam sed culpa earum suscipit omnis. Voluptas quia necessitatibus ullam exercitationem dolor consequatur. Nam veniam aliquid nobis ea neque. Mollitia est eum molestiae unde et temporibus fugiat.', NULL, NULL),
(90, 0, 'Soluta suscipit ducimus labore necessitatibus nesciunt.', 'Distinctio ex animi eos voluptatem voluptas.', 'Ut excepturi quam voluptate cum quos rerum.', 'Nihil aut qui et dolores asperiores eos. Ad fugit dolorum fugit sapiente. Vitae alias est quia. Veniam consequatur magnam rerum nihil omnis facilis maxime placeat.', NULL, NULL),
(91, 0, 'Consectetur omnis voluptates aut similique.', 'Expedita numquam harum fuga quasi est excepturi.', 'In perferendis nihil atque aperiam.', 'Sed laudantium ut neque assumenda quod voluptates. Natus dolorum earum sit unde fuga eius totam. Iusto dolor atque mollitia perspiciatis. Quaerat tenetur perspiciatis est velit voluptatem. Possimus dolorum nulla odio cum. Eum doloribus reiciendis beatae voluptas culpa assumenda cupiditate.', NULL, NULL),
(92, 0, 'Excepturi nihil dolorum nostrum ad id.', 'Sit ratione et corporis iure itaque molestias.', 'Id quam quaerat est nostrum laudantium.', 'Consequatur est magnam dignissimos possimus in et. Tempore aut aut dignissimos nihil sequi. Id est totam consequatur culpa explicabo. Dolores dolores vero ea suscipit temporibus voluptas sunt. Earum enim et et. Id ut eveniet sed sint quisquam.', NULL, NULL),
(93, 0, 'Magni ipsam qui eum et.', 'Neque odio ipsam consectetur dolorum odio accusamus.', 'Alias ex quaerat facere in unde dolorum.', 'Quo repudiandae optio autem aliquid facilis consectetur molestiae nobis. Similique consectetur in vitae ad animi ea autem rerum. Delectus provident et itaque ea veniam. Dolore nihil libero reiciendis sed.', NULL, NULL),
(94, 0, 'Sunt optio voluptas totam architecto ut.', 'Ad quaerat fuga est architecto.', 'Corporis consequatur est vel corporis odio ad.', 'Ipsa ut ab minus doloremque illum nemo. Sint rerum voluptas sunt. Sunt veniam unde impedit velit. Repellat ducimus distinctio qui est optio corporis ut. Quidem ut vero beatae.', NULL, NULL),
(95, 0, 'Dolore quas quo provident quibusdam.', 'Quas quo distinctio impedit velit.', 'Qui perspiciatis inventore enim.', 'Commodi accusantium neque id a a iure et. Aspernatur aut quia rerum quibusdam et. Excepturi libero magni atque quia omnis eius maiores. In et neque facilis.', NULL, NULL),
(96, 0, 'Et unde qui est veniam molestias non.', 'Qui rerum totam ipsam architecto illum dolore.', 'Architecto sunt et dicta odio aperiam.', 'Fugit vitae voluptatibus pariatur nulla. Numquam voluptas est laboriosam quaerat velit. Impedit laudantium natus eos sequi sed. Dolorum modi similique aspernatur illum perferendis eius. Eligendi veritatis et blanditiis velit.', NULL, NULL),
(97, 0, 'Explicabo odit ad nihil.', 'Repellat mollitia dicta eveniet dolorem magnam.', 'Unde ullam perspiciatis numquam.', 'Qui sed atque sed sint iure architecto veniam molestias. Repellendus et eius aut porro. Et et aliquam aliquid. Inventore esse sed et vel sit neque sit.', NULL, NULL),
(98, 0, 'Sapiente expedita voluptatum dolorum et.', 'Et harum ducimus deleniti nihil magni.', 'Doloribus quia ut praesentium.', 'Sed magnam ab placeat. Vel quisquam tenetur beatae dolores quia enim eveniet. Culpa voluptatem eum autem laudantium culpa repellat. Magni sint tenetur ipsum eaque minus velit. Et et voluptatem magnam natus quia. Impedit ut dolor autem culpa.', NULL, NULL),
(99, 0, 'Sequi voluptates exercitationem neque magnam in sint.', 'Qui est voluptatem in totam non architecto.', 'Sit rem explicabo ipsam et.', 'Quia aut quis delectus quam est voluptas quaerat. Molestias veritatis voluptas ut incidunt. Perferendis et tempora eum ipsum. Ut eos accusamus vero vero dicta.', NULL, NULL),
(100, 0, 'Doloremque aut quia qui.', 'In porro voluptatem dolorum non error.', 'Temporibus eos ducimus quia porro beatae.', 'Nesciunt corrupti saepe praesentium quidem sapiente libero esse ducimus. Quae voluptatibus numquam ut sed facilis quisquam quam. Numquam voluptatum molestiae tenetur in dolores nihil. Dolorum qui nobis temporibus quasi quo. Et dolorem voluptatem ea mollitia harum labore.', NULL, NULL),
(101, 0, 'Optio aut aliquam similique.', 'Et et id illo dolores eius.', 'Eum est possimus ut.', 'Id perspiciatis placeat ut itaque. Ducimus eligendi omnis itaque dolor. Fuga nihil ipsam quia libero qui omnis. Autem nemo a enim ex occaecati. Ipsum saepe quam voluptatem quia nihil. Quaerat quia sit et et voluptatibus.', NULL, NULL),
(102, 0, 'Quod velit aut aut tempora cumque.', 'Est unde doloremque minus eos placeat laborum.', 'Corrupti aut ullam dolor asperiores et deleniti.', 'Error et sunt consequatur aut quia ea. Et aliquam quaerat unde est quidem. Et aliquam accusantium delectus adipisci inventore officia. Eveniet porro aut sed numquam debitis ab id dolore.', NULL, NULL),
(103, 0, 'Est tempora rerum qui.', 'Quia itaque illum non.', 'Non aut sunt quia.', 'Magni odit illo nostrum cumque alias est eos est. Possimus deserunt occaecati eaque in est aspernatur. Quasi consectetur explicabo suscipit exercitationem. Ducimus ut qui adipisci nam. Sed omnis sed delectus. Suscipit aspernatur et quam maiores et quia.', NULL, NULL),
(104, 0, 'Quia tempora quia quae est nostrum odit.', 'Officia adipisci debitis officia.', 'Vel et officiis aliquam nam magnam ut.', 'Laudantium nam ratione illo iste sit sequi voluptas. Velit architecto aperiam ut molestiae assumenda beatae saepe. Et sed illum unde porro cum excepturi cumque. Minima ratione est omnis.', NULL, NULL),
(105, 0, 'Omnis id reiciendis dolor voluptatem.', 'Aliquid quam velit porro.', 'Aliquid quas quo fugiat sunt.', 'Consequatur corporis exercitationem aliquam blanditiis. Aliquid aliquid minus minima inventore ullam. Hic aliquid maiores sed impedit laboriosam. Ratione reiciendis ut perferendis et quasi earum. Qui voluptas quos est aut.', NULL, NULL),
(106, 0, 'Voluptatem rerum et delectus dolorem voluptas.', 'Ut est ducimus commodi qui quia nihil.', 'Perspiciatis eum repellendus laboriosam.', 'Numquam aperiam quod quo voluptate debitis. Perferendis ratione atque sequi cum distinctio voluptatem. Laboriosam quae qui rerum laboriosam est esse.', NULL, NULL),
(107, 0, 'Quaerat et nihil reiciendis sunt delectus ab.', 'Voluptatem reprehenderit delectus possimus molestiae.', 'Repellat sequi reprehenderit et numquam amet fuga.', 'Sit facilis deserunt a unde. Deserunt perferendis labore consequatur molestias laborum quod. Sit eum sunt modi accusantium totam.', NULL, NULL),
(108, 0, 'Esse repellat quidem eaque.', 'Et deserunt iste laboriosam in quia.', 'Magni ut quisquam qui hic.', 'Pariatur doloribus reprehenderit ab ut et exercitationem eius et. Enim laborum ipsam illo vel. Quia omnis consequatur at architecto molestiae voluptas impedit.', NULL, NULL),
(109, 0, 'Inventore non consequatur facere.', 'Modi dolores ut ut voluptatum enim voluptatum.', 'Hic debitis molestiae quos.', 'Fugit et nostrum voluptatum ducimus. Tenetur et quisquam sequi quo. Placeat reiciendis occaecati tenetur qui corrupti illum facilis.', NULL, NULL),
(110, 0, 'Explicabo quidem illum voluptate facilis ipsum.', 'Culpa nisi asperiores cupiditate ut.', 'Voluptatem est nam libero sed officiis.', 'Est cumque quia nesciunt. Ut dolorum consectetur id molestias. Aut et veniam sit provident eveniet et nihil. Nihil aut eius laboriosam hic sunt iure. Et vero in aut tenetur odio.', NULL, NULL),
(111, 0, 'Eaque animi cum natus odio.', 'Ratione culpa rerum perspiciatis quisquam.', 'Eaque eligendi ea ducimus sit.', 'Omnis fugit in quibusdam sit ut atque. Vel qui et vel vitae vel nemo at. Delectus provident amet ut veritatis.', NULL, NULL),
(112, 0, 'Voluptatem dicta vel autem.', 'Voluptas non ullam qui.', 'Enim similique accusamus doloribus et.', 'Est accusantium qui veniam cupiditate assumenda error recusandae. Mollitia autem sapiente omnis odit sed cumque. Voluptatem ipsam maxime culpa. Repellendus velit officiis vel. Est aliquid omnis numquam.', NULL, NULL),
(113, 0, 'Facilis aliquam a reprehenderit sunt explicabo nulla.', 'Sit minima quia beatae est et.', 'Ut dolorem error rerum eligendi est incidunt.', 'Illo ipsa eum voluptatem. Rem cumque unde quaerat sed atque minima. Sed exercitationem qui aut. Blanditiis eos tempora ipsam et aperiam. Quia similique aut earum dolorem.', NULL, NULL),
(114, 0, 'Assumenda nesciunt ut vel id.', 'Amet magni in accusantium modi esse nobis.', 'Modi quisquam repellendus aspernatur sint tenetur.', 'Laudantium voluptatem minima qui. Distinctio enim sed in eveniet. Et veniam vel laudantium. Quis excepturi ut quod adipisci vero a.', NULL, NULL),
(115, 0, 'Voluptatem amet esse nulla.', 'Dolores rerum aut dolores nemo illo.', 'Eius sit in iure et.', 'Labore ad in praesentium id. Voluptatem architecto nobis temporibus. Sequi sit voluptas magnam voluptatem dolor optio quidem sint. Esse dolor aut et. Molestias sint temporibus minima iusto itaque recusandae nam. Rerum expedita adipisci sapiente error in neque.', NULL, NULL),
(116, 0, 'In illum consectetur quas.', 'Quia consequatur itaque aut qui inventore.', 'Fugiat repudiandae animi recusandae iure repudiandae omnis.', 'Optio sint odio aperiam tempore deserunt. Pariatur quia rerum corporis. Minima eveniet aliquam voluptas doloribus veniam. Id excepturi sunt ut qui quisquam veritatis veniam.', NULL, NULL);
INSERT INTO `blog_categories` (`id`, `parent_id`, `title`, `meta_title`, `slug`, `content`, `created_at`, `updated_at`) VALUES
(117, 0, 'Quasi aperiam nihil ut qui dolorum doloribus.', 'Ea modi et aperiam earum quos.', 'Sed voluptatem qui odit.', 'Est nulla similique quia aspernatur repellendus rerum quaerat. Veritatis excepturi perferendis eos officia reiciendis magnam est et. Illum sunt id quis voluptates possimus hic in. Sit ut et cumque ratione fugit.', NULL, NULL),
(118, 0, 'Inventore et sit omnis.', 'Necessitatibus rem totam incidunt aut eveniet.', 'Ut numquam ut praesentium voluptas ut.', 'Est voluptatem repudiandae itaque ipsa harum non et. Sit rerum voluptatem et odio. Voluptatem sit facilis qui magni. Omnis enim voluptas eum assumenda nam et ut. Fuga voluptatem qui nihil quidem.', NULL, NULL),
(119, 0, 'Voluptas blanditiis inventore eligendi sit quis nemo.', 'Sed qui explicabo cum.', 'Saepe id facilis tempora repellendus sint.', 'Blanditiis voluptatem aliquam saepe rem vel consequatur repellendus. Perferendis veniam aut et odio nemo officia soluta expedita. Sit rem sunt et quas culpa excepturi. Sit voluptatem in impedit et illum mollitia mollitia. Tempora dolores pariatur impedit nostrum alias necessitatibus.', NULL, NULL),
(120, 0, 'Voluptatum aperiam totam et doloribus eum.', 'Voluptas voluptas et eos.', 'Consequatur tenetur accusantium magnam quae ut sequi.', 'Sed in dolor mollitia voluptatum eius. Quia reprehenderit et quia molestias nesciunt. Laborum dolorem et consequatur quaerat. Impedit dignissimos consequatur impedit veniam ea ut.', NULL, NULL),
(121, 0, 'Qui qui maxime veritatis dolorem accusantium.', 'Sit dignissimos in ab recusandae est.', 'Repellendus aliquam et maiores qui reprehenderit.', 'Ea rerum laboriosam ducimus beatae ut itaque. Dolores accusamus sint odit a dolor adipisci nostrum. Dolor et et corporis. Et eaque error sunt quia.', NULL, NULL),
(122, 0, 'Velit fugit voluptatem a facere optio.', 'Quo consectetur architecto ut nisi architecto.', 'Voluptas rerum deleniti recusandae.', 'Eaque tempore et optio modi adipisci ut veritatis. Mollitia eum nam reprehenderit sequi praesentium necessitatibus voluptatem. Doloribus sint recusandae in eaque delectus. Quos consequuntur dolorem qui. Sequi corrupti mollitia eius deleniti rerum explicabo.', NULL, NULL),
(123, 0, 'Necessitatibus facere et pariatur.', 'Minus et nesciunt voluptatem eos est.', 'Excepturi fugiat corporis velit.', 'Suscipit ut porro est aut deleniti et in incidunt. Distinctio et expedita inventore ut eos. Quod consequatur saepe quia harum fugit. Maxime perspiciatis voluptatem temporibus.', NULL, NULL),
(124, 0, 'Nihil dignissimos cumque provident sequi soluta voluptas.', 'Voluptates eaque sit iusto delectus rerum.', 'Suscipit consectetur possimus quod blanditiis non impedit.', 'Impedit delectus et aut unde. Ut a nemo et distinctio dolorum praesentium cumque vitae. Enim veniam eos pariatur. Minus dolores est error. Et tempora facere cupiditate est.', NULL, NULL),
(125, 0, 'Sit harum vero aliquam iusto tempore.', 'Consectetur provident quidem perferendis.', 'Quisquam et odio ducimus.', 'Iure optio ut earum nihil doloremque labore. Blanditiis a soluta magnam non culpa voluptatem. Distinctio ut porro repudiandae assumenda amet natus consequatur adipisci. Et incidunt vitae molestias aut sequi non perspiciatis. Fugit aut consectetur velit.', NULL, NULL),
(126, 0, 'Quae reiciendis explicabo dignissimos earum.', 'Aspernatur sequi cupiditate sit quas aspernatur.', 'Similique modi ea eaque.', 'Doloremque quis dolorum aut maiores. Odit quisquam ipsum et laudantium laboriosam. Id iusto sunt et et modi aliquid praesentium iure. Sit odit ut officiis necessitatibus explicabo recusandae eaque. Ipsa est maxime amet nemo quasi harum. Natus incidunt ut blanditiis non sapiente delectus.', NULL, NULL),
(127, 0, 'Et quaerat consequuntur nobis suscipit architecto est.', 'Quas vero non et magnam.', 'Deleniti commodi totam nostrum reprehenderit in et.', 'Et ratione nemo est fugiat dolorem et laboriosam. Numquam possimus illum et consequatur sit quo. Qui mollitia laudantium libero unde. Ab enim non totam odio. Inventore sunt omnis possimus ab pariatur debitis saepe.', NULL, NULL),
(128, 0, 'Quis odit dolores magni.', 'Enim alias blanditiis voluptatum et sint.', 'Quis quos nisi soluta velit.', 'Molestias dolores aut quis et dignissimos ipsam. Eos similique inventore sunt sequi laudantium non. Perferendis dolor expedita quo quos beatae odit. Similique non quis maiores pariatur ipsum. In quo voluptatibus necessitatibus recusandae omnis.', NULL, NULL),
(129, 0, 'Quo illo molestiae suscipit sunt.', 'Et sint omnis ad.', 'Eos natus nihil fugiat asperiores quia voluptas.', 'Corrupti est sed laboriosam tempora. Et nihil est quia architecto enim a. Animi est iste est possimus sequi voluptates facilis. Fugiat eum temporibus enim velit. Pariatur tempore necessitatibus harum.', NULL, NULL),
(130, 0, 'Eligendi nobis et nostrum dicta.', 'Et eveniet nulla est excepturi eos.', 'Aut numquam provident expedita maiores placeat.', 'Occaecati ex unde repudiandae dolore. Quis nemo id sed reiciendis. Similique mollitia facilis odit repudiandae exercitationem repellendus earum.', NULL, NULL),
(131, 0, 'Impedit quas debitis sit et neque.', 'Quia eius magni praesentium.', 'Et aut illo eligendi dolore.', 'Et adipisci molestiae vero est vitae assumenda. Officia itaque ducimus sed est accusantium eos porro. Dolore esse ea quis delectus neque velit aut distinctio.', NULL, NULL),
(132, 0, 'Velit placeat impedit eveniet similique deleniti.', 'Dolores voluptate aut non saepe.', 'Enim rerum nemo ducimus ex porro reprehenderit.', 'Est itaque sit sint est dolore soluta eius. Et aut doloribus ullam est vero doloremque velit. Quia fugit assumenda vel consectetur similique aut delectus.', NULL, NULL),
(133, 0, 'A modi laborum quaerat.', 'Vero magnam voluptatem quas velit veritatis non.', 'Id numquam et corporis.', 'Perferendis dignissimos non ad iusto quisquam eum sint. Dolores eum deleniti sed vitae eum voluptas. Facilis harum ut minus dolores. Voluptatem consequatur voluptatum corporis beatae nemo a magni ut. Quasi iusto harum et aut necessitatibus nisi tenetur quam.', NULL, NULL),
(134, 0, 'Temporibus et ipsa fugiat veritatis architecto dolor.', 'Minima est enim aut sed ipsam suscipit.', 'Itaque et accusantium enim sint perspiciatis.', 'Omnis dicta quibusdam dolore in. Et tempora recusandae minus ea. Aperiam dolorem eos dignissimos ea quos et sint. Laudantium minima laboriosam repudiandae nemo consectetur.', NULL, NULL),
(135, 0, 'Dicta eos perspiciatis accusamus.', 'Et sint tempore fugiat.', 'Et sed occaecati sed veritatis explicabo aut.', 'Totam vel sint eligendi iusto. Vel ut et commodi et fugiat. Adipisci saepe minima consequatur iste consequatur et nemo autem. Beatae consequatur vitae expedita.', NULL, NULL),
(136, 0, 'Nihil necessitatibus eius voluptatem.', 'Aliquam quod cupiditate aliquid.', 'Ut perspiciatis sed architecto qui tempora.', 'Cumque nostrum corporis vel commodi ab a vel. Ut harum et ipsum sit. Iusto eos quam similique tenetur facere ea. Illo aut totam a modi possimus voluptates voluptatum. Assumenda non nulla saepe blanditiis.', NULL, NULL),
(137, 0, 'Cumque fugiat commodi eius quis et.', 'Porro quis et voluptas eaque.', 'Consequuntur placeat facilis distinctio laudantium.', 'Aperiam sunt aut ut esse. Eos natus velit qui qui qui totam quia tenetur. Quisquam tempora provident perspiciatis recusandae. Veritatis dolorem esse et quae nihil quos. Commodi voluptas consequatur est quo explicabo error. Culpa ex molestiae consequatur recusandae.', NULL, NULL),
(138, 0, 'Tempora nam sapiente sapiente.', 'Suscipit dignissimos consequatur eius nihil veritatis odio.', 'Omnis quisquam omnis sed cum harum excepturi.', 'Sunt maxime facilis excepturi aperiam voluptatem dolorum illum. Rerum veritatis recusandae ut aut adipisci dolor labore. Earum quis quia illum natus rerum voluptatem. Magnam optio veniam sapiente asperiores.', NULL, NULL),
(139, 0, 'Totam mollitia veniam necessitatibus quisquam ea rerum.', 'Repellendus ullam odio minus vel modi praesentium.', 'Accusantium maxime provident et.', 'Natus velit voluptatum velit aut veritatis. Corporis omnis rerum saepe voluptas provident. Itaque et sequi nobis modi illo temporibus. Quia voluptas sint dolore ducimus.', NULL, NULL),
(140, 0, 'Ea in tenetur autem facere dolore.', 'Maxime voluptatibus delectus distinctio.', 'Temporibus quisquam a nostrum qui aut dolor.', 'Quis dignissimos aliquid provident est placeat nostrum. Tempore culpa voluptatum et. Inventore eos mollitia accusantium aut. Necessitatibus quis ratione a enim. Ut sit et ipsum et quasi. Non et ullam unde eum.', NULL, NULL),
(141, 0, 'Enim expedita quidem non consequuntur.', 'Iure corporis autem ut.', 'Quia maiores id et.', 'Officia id sed architecto autem. Iste est enim est sint fugiat. Voluptas architecto aliquam reiciendis nulla quidem dicta. Necessitatibus rerum unde ut et dicta quos.', NULL, NULL),
(142, 0, 'Dolores eius facere assumenda eveniet quisquam.', 'Sint fuga praesentium nam.', 'Voluptatem sunt id sequi amet eos nobis.', 'Velit velit dolores expedita totam. Nam eligendi et ratione molestiae officia fuga facilis sit. Officia voluptatem ut qui quos ad magnam quidem. Voluptatibus laudantium autem sit ut quia. Hic qui et aut quo cumque.', NULL, NULL),
(143, 0, 'Mollitia sint odio perferendis libero ipsa.', 'Nostrum rem tenetur sed iusto.', 'Rerum rerum omnis nobis et.', 'Nam rem dolorem aut quae sed ea non. Iste magni corrupti iusto voluptatem cupiditate consequuntur et. Sequi adipisci eum asperiores veritatis enim ullam in velit. Architecto ut ea ab dolorem quia. Nobis est soluta dolorem. Sit sit impedit odit mollitia non.', NULL, NULL),
(144, 0, 'Est consectetur nulla iste consequatur et et.', 'Quibusdam autem fuga numquam.', 'Quisquam omnis ut perferendis rerum temporibus.', 'Velit tenetur quia corporis. Hic velit sint quidem quas dicta dolor. Reprehenderit illo sit dolores voluptates ea ipsum error natus. Neque velit et laborum qui tempore quod. Assumenda sequi dolorem labore quaerat quidem occaecati.', NULL, NULL),
(145, 0, 'Quia aut maiores qui dolores at blanditiis.', 'Ut odio quibusdam nesciunt omnis numquam fugit.', 'Tenetur fugiat et aut quia excepturi consequatur.', 'Animi recusandae corrupti dolor id. Pariatur voluptates qui ducimus non. Voluptatem qui tempore ut. Expedita atque quis eum sit quia dolorem rerum enim. Fugit neque accusamus illo nulla.', NULL, NULL),
(146, 0, 'Corrupti a provident enim dolores eaque ea.', 'Voluptates voluptates error consequuntur possimus et harum.', 'Labore quia ducimus rerum.', 'Molestiae a ad rerum laboriosam nihil in consequatur. Numquam vel ut corrupti facere ipsum labore velit recusandae. Corrupti iste ipsa et commodi sunt magni. Cum blanditiis et quia qui. Eveniet quibusdam commodi sint magnam. Minus mollitia qui aut corporis modi eaque ab.', NULL, NULL),
(147, 0, 'Eum possimus debitis quam.', 'Rerum ipsam repellendus iure dolores amet perferendis.', 'Nihil nobis voluptatem provident.', 'Ut consequatur aut quo. Voluptatem soluta consequatur enim tempora delectus. Vero veniam debitis voluptatem qui ipsa earum placeat dolor. Tempore similique ducimus numquam est saepe.', NULL, NULL);

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
(5, 1, 0, 'Benifits of e-learning', NULL, '651d859ad6bd81696433562.png', NULL, 'elearning helps for to complete students homeworks', NULL, '<p><strong>the 8 most important benefits of elearning for students</strong></p>\r\n\r\n<ul>\r\n	<li>1) online learning accommodates everyone&#39;s needs.</li>\r\n	<li>2) lectures can be repeated if necessary.</li>\r\n	<li>3) content can easily be updated.</li>\r\n	<li>4) quick delivery.</li>\r\n	<li>5) cost-effective.</li>\r\n	<li>6) consistent in quality.</li>\r\n	<li>7) less impact on the environment.</li>\r\n</ul>', '2023-10-25 05:51:43', 1, NULL, NULL),
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
(52, 1, 0, 'Is data scientist an IT job?', NULL, '1697639585.jpeg', NULL, 'Data science is the study of data to extract meaningful insights for business.', NULL, '<p>Whether it&#39;s the thrill of problem-solving or the hefty paychecks,&nbsp;<strong>the perks of being a data scientist are luring many IT professionals to take this career path</strong>. If you&#39;re one of them, this article has everything you need to know about how to be a data scientist.</p>', '2023-10-18 14:33:05', 1, NULL, NULL),
(64, 1, 0, 'The Java Programming', NULL, '1698132116.jpg', NULL, 'master java programming', NULL, '<p>java is a high-level, class-based, object-oriented programming language that is designed to have as few implementation dependencies as possible</p>', '2023-10-24 07:21:57', 1, NULL, NULL),
(65, 1, 0, 'Why java is importance ?', NULL, '1698132329.png', NULL, 'it provides easy coding and high security, enabling the creation of many apps', NULL, '<p>java is mainly popular because&nbsp;<strong>it is an efficient and easy-to-use programming language</strong>. if you want to build software, computer games, or application for mobile and desktop that has good processing speed, then you can do that with the help of java.</p>', '2023-10-24 07:25:29', 1, NULL, NULL);

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
(44, 52, 7, NULL, NULL),
(55, 64, 7, NULL, NULL),
(56, 65, 7, NULL, NULL);

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
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Randika Madumal', 'randikamadumal1996@gmail.com', 'This is a nice package', NULL, NULL),
(2, 'Saman Perera', 'saman1998@gmail.com', 'This is a package', NULL, NULL),
(3, 'Kamal Perera', 'kamal1996@gmail.com', 'The Package', NULL, NULL),
(4, 'Ravi Perers', 'ravi1988@gmail.com', 'The laravel packages helps to develp projects easily', NULL, NULL),
(5, 'Nimal Perera', 'nimal1990@gmail.com', 'This is a my first package.', NULL, NULL);

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
(14, '2023_10_19_060728_domain_styles', 3),
(15, '2023_10_22_091131_create_contacts_table', 4),
(16, '2023_10_23_072604_create_blogs_table', 5),
(17, '2023_10_24_100646_create_notifications_table', 6);

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
(2, 'App\\Models\\User', 8),
(2, 'App\\Models\\User', 9),
(2, 'App\\Models\\User', 10),
(3, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 4),
(3, 'App\\Models\\User', 8),
(3, 'App\\Models\\User', 9),
(3, 'App\\Models\\User', 10);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('018ee526-1ede-4a9f-9421-befeb557443e', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 5, '{\"user_id\":5,\"name\":\"admin_two\",\"email\":\"admin1996@gmail.com\"}', '2023-10-25 08:12:34', '2023-10-25 08:12:32', '2023-10-25 08:12:34'),
('03d3d344-ff52-466d-a665-60d98a35c7ac', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 4, '{\"user_id\":1,\"name\":\"admin\",\"email\":\"admin@gmail.com\"}', '2023-10-24 07:15:56', '2023-10-24 05:34:01', '2023-10-24 07:15:56'),
('0e57f9c2-87da-4158-be91-84a55d197f1f', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 5, '{\"user_id\":5,\"name\":\"admin_two\",\"email\":\"admin1996@gmail.com\"}', '2023-10-24 07:21:30', '2023-10-24 06:18:41', '2023-10-24 07:21:30'),
('107fbfe8-3e68-4468-a37d-cc5a47f305dc', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 4, '{\"user_id\":4,\"name\":\"user_two\",\"email\":\"user1996@gmail.com\"}', '2023-10-24 22:59:53', '2023-10-24 22:59:44', '2023-10-24 22:59:53'),
('132aa193-8270-43bb-8ffb-2d377573f267', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 4, '{\"user_id\":4,\"name\":\"user_two\",\"email\":\"user1996@gmail.com\"}', '2023-10-25 05:23:19', '2023-10-25 05:23:18', '2023-10-25 05:23:19'),
('170531f2-bf6c-4990-8429-42ddc44320a5', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 9, '{\"user_id\":9,\"name\":\"user_four\",\"email\":\"user2001@gmail.com\"}', '2023-10-24 22:41:02', '2023-10-24 22:40:55', '2023-10-24 22:41:02'),
('1b4b5f1a-794f-4808-b144-601e64c59dd6', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 5, '{\"user_id\":5,\"name\":\"admin_two\",\"email\":\"admin1996@gmail.com\"}', '2023-10-25 04:35:50', '2023-10-25 04:35:47', '2023-10-25 04:35:50'),
('2741868d-e100-4654-98d0-57133fb9be57', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 5, '{\"user_id\":5,\"name\":\"admin_two\",\"email\":\"admin1996@gmail.com\"}', '2023-10-24 23:02:13', '2023-10-24 23:02:04', '2023-10-24 23:02:13'),
('28207bdd-898a-4970-96ce-a8416d389c17', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 4, '{\"user_id\":4,\"name\":\"user_two\",\"email\":\"user1996@gmail.com\"}', '2023-10-25 22:58:40', '2023-10-25 22:58:38', '2023-10-25 22:58:40'),
('32368d2b-7edc-4664-a3be-bc6844850486', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 5, '{\"user_id\":5,\"name\":\"admin_two\",\"email\":\"admin1996@gmail.com\"}', '2023-10-26 23:17:40', '2023-10-26 23:17:36', '2023-10-26 23:17:40'),
('32f752d6-9d82-4866-b78c-237e9819683d', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 5, '{\"user_id\":5,\"name\":\"admin_two\",\"email\":\"admin1996@gmail.com\"}', '2023-10-25 05:23:49', '2023-10-25 05:23:48', '2023-10-25 05:23:49'),
('3456aad2-680d-4cbf-9652-79e60896bb47', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 5, '{\"user_id\":5,\"name\":\"admin_two\",\"email\":\"admin1996@gmail.com\"}', '2023-10-25 22:35:23', '2023-10-25 22:35:19', '2023-10-25 22:35:23'),
('34689c20-9583-469b-9833-64fca5f846a8', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 4, '{\"user_id\":4,\"name\":\"user_two\",\"email\":\"user1996@gmail.com\"}', '2023-10-24 22:50:33', '2023-10-24 22:50:25', '2023-10-24 22:50:33'),
('36393745-7283-42ee-beb9-1ff51fe65130', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 4, '{\"user_id\":4,\"name\":\"user_two\",\"email\":\"user1996@gmail.com\"}', '2023-10-25 05:23:01', '2023-10-25 05:22:59', '2023-10-25 05:23:01'),
('38c04bb4-c296-4ee6-9b2c-3b91553ae492', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 4, '{\"user_id\":4,\"name\":\"user_two\",\"email\":\"user1996@gmail.com\"}', '2023-10-24 22:50:51', '2023-10-24 22:50:44', '2023-10-24 22:50:51'),
('399f34a0-98c7-4e52-95d1-12556e5e1aa8', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 4, '{\"user_id\":4,\"name\":\"user_two\",\"email\":\"user1996@gmail.com\"}', '2023-10-25 04:39:39', '2023-10-25 04:39:25', '2023-10-25 04:39:39'),
('3a110df0-e130-44e7-9fc6-6caf42ef80fb', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 5, '{\"user_id\":5,\"name\":\"admin_two\",\"email\":\"admin1996@gmail.com\"}', '2023-10-24 23:00:49', '2023-10-24 23:00:45', '2023-10-24 23:00:49'),
('41b9e28c-a94a-46fe-ab28-e01739d9fe90', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 5, '{\"user_id\":5,\"name\":\"admin_two\",\"email\":\"admin1996@gmail.com\"}', '2023-10-25 06:37:14', '2023-10-25 06:37:12', '2023-10-25 06:37:14'),
('45ed0aab-b4df-4548-8d49-2fb20bd1db6a', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 5, '{\"user_id\":5,\"name\":\"admin_two\",\"email\":\"admin1996@gmail.com\"}', '2023-10-24 23:02:11', '2023-10-24 23:02:03', '2023-10-24 23:02:11'),
('4815ad0e-9e6d-45ef-8678-696421c24623', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 5, '{\"user_id\":5,\"name\":\"admin_two\",\"email\":\"admin1996@gmail.com\"}', '2023-10-26 22:38:49', '2023-10-26 22:38:44', '2023-10-26 22:38:49'),
('4c2be69f-3a4a-4044-91f1-4fb9dc9b8e9d', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 4, '{\"user_id\":4,\"name\":\"user_two\",\"email\":\"user1996@gmail.com\"}', '2023-10-24 07:15:53', '2023-10-24 05:55:40', '2023-10-24 07:15:53'),
('4e286f9f-cd56-4eb6-b497-145997b91b3c', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 4, '{\"user_id\":4,\"name\":\"user_two\",\"email\":\"user1996@gmail.com\"}', '2023-10-24 22:45:05', '2023-10-24 22:44:54', '2023-10-24 22:45:05'),
('544c6fd5-5d8f-4571-9371-cd16991e0b67', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 4, '{\"user_id\":4,\"name\":\"user_two\",\"email\":\"user1996@gmail.com\"}', '2023-10-24 22:50:35', '2023-10-24 22:50:27', '2023-10-24 22:50:35'),
('570273fd-7957-4818-92b8-4d88cdd4aea7', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 5, '{\"user_id\":5,\"name\":\"admin_two\",\"email\":\"admin1996@gmail.com\"}', '2023-10-25 04:35:39', '2023-10-25 00:20:56', '2023-10-25 04:35:39'),
('5c0cb91c-391e-4b69-b991-7b5a5089ef6f', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 4, '{\"user_id\":4,\"name\":\"user_two\",\"email\":\"user1996@gmail.com\"}', '2023-10-24 22:50:20', '2023-10-24 22:50:16', '2023-10-24 22:50:20'),
('5e37a457-95d3-4f93-8802-0a6dadfff534', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 8, '{\"user_id\":8,\"name\":\"user_thiree\",\"email\":\"user2000@gmail.com\"}', '2023-10-24 22:10:23', '2023-10-24 22:09:14', '2023-10-24 22:10:23'),
('677c6070-74c0-4b19-aec8-b8a215921e99', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 5, '{\"user_id\":5,\"name\":\"admin_two\",\"email\":\"admin1996@gmail.com\"}', '2023-10-26 23:17:20', '2023-10-26 23:17:16', '2023-10-26 23:17:20'),
('6a195ccd-292e-413b-9c2e-5a6857e3d411', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 4, '{\"user_id\":4,\"name\":\"user_two\",\"email\":\"user1996@gmail.com\"}', '2023-10-24 22:50:18', '2023-10-24 22:50:15', '2023-10-24 22:50:18'),
('6ae1f71b-d333-4bf9-83a3-c8589dfc3458', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 4, '{\"user_id\":4,\"name\":\"user_two\",\"email\":\"user1996@gmail.com\"}', '2023-10-24 22:45:06', '2023-10-24 22:44:58', '2023-10-24 22:45:06'),
('6dcc3392-d74f-4316-bc36-98c26a45ccf7', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 5, '{\"user_id\":5,\"name\":\"admin_two\",\"email\":\"admin1996@gmail.com\"}', '2023-10-26 23:17:34', '2023-10-26 23:17:32', '2023-10-26 23:17:34'),
('7a72858c-c667-4031-ba24-acf0a2035216', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 5, '{\"user_id\":5,\"name\":\"admin_two\",\"email\":\"admin1996@gmail.com\"}', '2023-10-26 23:17:30', '2023-10-26 23:17:26', '2023-10-26 23:17:30'),
('808454cf-e119-4f49-bfe6-d79ad9f39927', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 5, '{\"user_id\":5,\"name\":\"admin_two\",\"email\":\"admin1996@gmail.com\"}', '2023-10-26 23:17:24', '2023-10-26 23:17:22', '2023-10-26 23:17:24'),
('89b81934-8f55-4a17-9f5c-9e53ec3546bd', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 5, '{\"user_id\":5,\"name\":\"admin_two\",\"email\":\"admin1996@gmail.com\"}', '2023-10-24 23:24:59', '2023-10-24 23:24:55', '2023-10-24 23:24:59'),
('8a41d84d-73d8-41fa-861f-ca1fc3a98b8c', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 5, '{\"user_id\":5,\"name\":\"admin_two\",\"email\":\"admin1996@gmail.com\"}', '2023-10-24 23:02:14', '2023-10-24 23:02:05', '2023-10-24 23:02:14'),
('8c04959e-aa77-44e5-9e56-8af1ff3fa145', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 5, '{\"user_id\":5,\"name\":\"admin_two\",\"email\":\"admin1996@gmail.com\"}', '2023-10-24 23:02:16', '2023-10-24 23:02:07', '2023-10-24 23:02:16'),
('8ccbce2b-49c9-4c40-af81-ca0ad24c6fb4', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 5, '{\"user_id\":5,\"name\":\"admin_two\",\"email\":\"admin1996@gmail.com\"}', '2023-10-24 07:21:32', '2023-10-24 06:18:40', '2023-10-24 07:21:32'),
('8f169104-4764-40f1-86f7-4bbb04bb5473', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 4, '{\"user_id\":4,\"name\":\"user_two\",\"email\":\"user1996@gmail.com\"}', '2023-10-24 22:58:48', '2023-10-24 22:58:41', '2023-10-24 22:58:48'),
('8fb1b67c-d3e2-4cb4-982b-3ee9678cf225', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 5, '{\"user_id\":5,\"name\":\"admin_two\",\"email\":\"admin1996@gmail.com\"}', '2023-10-26 23:17:38', '2023-10-26 23:17:36', '2023-10-26 23:17:38'),
('91ad1ba6-691c-4d47-b2d3-8fc317a23766', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 6, '{\"user_id\":6,\"name\":\"writer_two\",\"email\":\"writer1996@gmail.com\"}', '2023-10-24 21:47:20', '2023-10-24 06:11:53', '2023-10-24 21:47:20'),
('972d6194-9bce-41fa-a556-9e2b9df62d34', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 4, '{\"user_id\":4,\"name\":\"user_two\",\"email\":\"user1996@gmail.com\"}', '2023-10-24 22:50:37', '2023-10-24 22:50:29', '2023-10-24 22:50:37'),
('986a5fac-53a1-4ca2-8068-df433a7265a7', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 5, '{\"user_id\":5,\"name\":\"admin_two\",\"email\":\"admin1996@gmail.com\"}', '2023-10-25 08:12:30', '2023-10-25 08:12:26', '2023-10-25 08:12:30'),
('9972ed20-bae5-4cfd-9659-7ce6dce9123f', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 5, '{\"user_id\":5,\"name\":\"admin_two\",\"email\":\"admin1996@gmail.com\"}', '2023-10-26 23:17:19', '2023-10-26 23:17:16', '2023-10-26 23:17:19'),
('a013b555-c5dc-46e4-b452-4089c6d71cdb', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 4, '{\"user_id\":4,\"name\":\"user_two\",\"email\":\"user1996@gmail.com\"}', '2023-10-24 22:50:31', '2023-10-24 22:50:24', '2023-10-24 22:50:31'),
('a1cc454b-67af-4446-8455-4da8011cf7fb', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 4, '{\"user_id\":4,\"name\":\"user_two\",\"email\":\"user1996@gmail.com\"}', '2023-10-24 22:59:51', '2023-10-24 22:59:43', '2023-10-24 22:59:51'),
('a4a6bcca-4e36-4397-8b95-f296fd3625d9', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 4, '{\"user_id\":4,\"name\":\"user_two\",\"email\":\"user1996@gmail.com\"}', '2023-10-24 22:58:44', '2023-10-24 22:58:36', '2023-10-24 22:58:44'),
('a646f561-0cec-4c19-9aef-1820c771353d', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 5, '{\"user_id\":5,\"name\":\"admin_two\",\"email\":\"admin1996@gmail.com\"}', '2023-10-25 22:35:21', '2023-10-25 22:35:19', '2023-10-25 22:35:21'),
('a7eeec6d-b5f5-4568-8421-1b1df2963ac0', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 4, '{\"user_id\":4,\"name\":\"user_two\",\"email\":\"user1996@gmail.com\"}', '2023-10-24 22:50:55', '2023-10-24 22:50:47', '2023-10-24 22:50:55'),
('aae758dc-4b7a-4dde-8617-95e044317e2d', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 5, '{\"user_id\":5,\"name\":\"admin_two\",\"email\":\"admin1996@gmail.com\"}', '2023-10-24 23:00:55', '2023-10-24 23:00:47', '2023-10-24 23:00:55'),
('ac99c92b-d64b-4eb3-b69c-6648aa5d54b5', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 4, '{\"user_id\":4,\"name\":\"user_two\",\"email\":\"user1996@gmail.com\"}', '2023-10-24 22:50:58', '2023-10-24 22:50:49', '2023-10-24 22:50:58'),
('b9a90771-9010-49a3-acf9-9c0e16fbd704', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 10, '{\"user_id\":10,\"name\":\"user_five\",\"email\":\"user2003@gmail.com\"}', '2023-10-24 23:08:39', '2023-10-24 23:08:31', '2023-10-24 23:08:39'),
('bb6e4c74-85a5-4802-8058-cc37adab8785', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 4, '{\"user_id\":4,\"name\":\"user_two\",\"email\":\"user1996@gmail.com\"}', '2023-10-24 23:26:22', '2023-10-24 23:26:11', '2023-10-24 23:26:22'),
('c071e9c5-3cde-4254-9f4f-83c20bb72ca2', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 4, '{\"user_id\":4,\"name\":\"user_two\",\"email\":\"user1996@gmail.com\"}', '2023-10-24 22:50:56', '2023-10-24 22:50:48', '2023-10-24 22:50:56'),
('c27a5899-df40-4dfa-a856-268df86961c9', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 5, '{\"user_id\":5,\"name\":\"admin_two\",\"email\":\"admin1996@gmail.com\"}', '2023-10-24 23:02:10', '2023-10-24 23:01:58', '2023-10-24 23:02:10'),
('cc75c043-ca62-4c0d-993f-9e9ff2524b27', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 5, '{\"user_id\":4,\"name\":\"user_two\",\"email\":\"user1996@gmail.com\"}', '2023-10-24 07:21:34', '2023-10-24 06:18:00', '2023-10-24 07:21:34'),
('e83898f0-152c-4028-a769-8b373bb669c9', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 4, '{\"user_id\":4,\"name\":\"user_two\",\"email\":\"user1996@gmail.com\"}', '2023-10-24 23:26:36', '2023-10-24 23:26:20', '2023-10-24 23:26:36'),
('e8c2a0e6-07db-4097-a579-723517303629', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 4, '{\"user_id\":4,\"name\":\"user_two\",\"email\":\"user1996@gmail.com\"}', '2023-10-24 22:50:12', '2023-10-24 22:50:10', '2023-10-24 22:50:12'),
('e9fafe32-3665-4c0c-bdba-b381fca43fdd', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 4, '{\"user_id\":4,\"name\":\"user_two\",\"email\":\"user1996@gmail.com\"}', '2023-10-24 22:58:46', '2023-10-24 22:58:39', '2023-10-24 22:58:46'),
('f2ce51b4-436e-4e71-9722-012da5c1a43c', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 5, '{\"user_id\":5,\"name\":\"admin_two\",\"email\":\"admin1996@gmail.com\"}', '2023-10-26 23:17:29', '2023-10-26 23:17:26', '2023-10-26 23:17:29'),
('f86b1afa-43c1-484e-988f-9525cfca8112', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 4, '{\"user_id\":4,\"name\":\"user_two\",\"email\":\"user1996@gmail.com\"}', '2023-10-24 22:50:53', '2023-10-24 22:50:45', '2023-10-24 22:50:53'),
('fa5f2860-a84b-49c7-a213-bf5629fe1e54', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 5, '{\"user_id\":5,\"name\":\"admin_two\",\"email\":\"admin1996@gmail.com\"}', '2023-10-25 21:44:46', '2023-10-25 21:44:44', '2023-10-25 21:44:46');

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
(6, 'writer_two', 'writer1996@gmail.com', '2023-10-13 07:52:31', '$2y$10$h9Pl9c6qJNBYf.saJXO7RuJAizLcRV8Jgbn9FPGNnf0PH4m4k4UEm', NULL, '2023-10-13 07:52:31', '2023-10-13 07:52:31'),
(8, 'user_thiree', 'user2000@gmail.com', '2023-10-24 22:05:40', '$2y$10$CiWhgM5XMFvrcrVHRfpN7.cqs6t61Yv7wQT23.kici5zSipBly2fS', NULL, '2023-10-24 22:05:40', '2023-10-24 22:05:40'),
(9, 'user_four', 'user2001@gmail.com', '2023-10-24 22:16:20', '$2y$10$Zfz6z867GTpDnFm.YAyqUuIwhDAQD9qSzEpJ1FKcYN9S8Iuh.u3h2', NULL, '2023-10-24 22:16:20', '2023-10-24 22:16:20'),
(10, 'user_five', 'user2003@gmail.com', '2023-10-24 23:04:41', '$2y$10$611CuQuLtc0VlRDKW7KelODIt5snn.1wYEeHyMcx7yIp9u7JXflqO', NULL, '2023-10-24 23:04:41', '2023-10-24 23:04:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
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
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

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
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `blog_posts_categories`
--
ALTER TABLE `blog_posts_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `blog_posts_comments`
--
ALTER TABLE `blog_posts_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

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
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

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
