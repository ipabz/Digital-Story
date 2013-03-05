-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 04, 2012 at 12:40 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `digital_story`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE IF NOT EXISTS `administrator` (
  `administrator_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `username` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  PRIMARY KEY (`administrator_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`administrator_id`, `first_name`, `last_name`, `username`, `password`) VALUES
(1, 'ivan', 'pabelona', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('177b6892cf504e78d468b0ef0507bddc', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.4 (KHTML, like Gecko) Chrome/22.0.1229.79 Safari/537.4', 1349354175, 'a:6:{s:9:"user_data";s:0:"";s:8:"language";s:7:"english";s:16:"administrator_id";s:1:"1";s:10:"first_name";s:4:"ivan";s:9:"last_name";s:8:"pabelona";s:8:"username";s:5:"admin";}');

-- --------------------------------------------------------

--
-- Table structure for table `stories`
--

CREATE TABLE IF NOT EXISTS `stories` (
  `stories_id` int(11) NOT NULL AUTO_INCREMENT,
  `english_title` varchar(100) NOT NULL,
  `tagalog_title` varchar(100) DEFAULT NULL,
  `english_contents` text NOT NULL,
  `tagalog_contents` text,
  `english_audio` varchar(255) DEFAULT NULL,
  `english_video` varchar(255) DEFAULT NULL COMMENT '	',
  `tagalog_audio` varchar(255) DEFAULT NULL,
  `tagalog_video` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`stories_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `stories`
--

INSERT INTO `stories` (`stories_id`, `english_title`, `tagalog_title`, `english_contents`, `tagalog_contents`, `english_audio`, `english_video`, `tagalog_audio`, `tagalog_video`) VALUES
(1, 'American Architecture', NULL, '<p style="text-align: justify;"><span class="inline_title">American Architecture</span>, architecture that developed in the European colonies in America and subsequently in the United States. This development covers a period of almost five centuries, beginning with the establishment of Saint Augustine in Florida in 1565, English settlement along the Atlantic Coast in 1585, and Spanish settlement in New Mexico in 1598. Settlers from France, Sweden, The Netherlands, Germany, and other countries arrived in the 1600s.</p>\n<p style="text-align: justify;">The full history of building in what became the United States reaches back 10,000 years, but European settlers almost universally ignored the many building traditions of Native American peoples. Over the five centuries after European arrival, transplanted European building traditions were gradually reshaped and redefined. They emerged as distinctly American building traditions by the early 19th century. Each of the European colonies in North America developed its own building tradition.</p>\n<p style="text-align: justify;"><strong><br /></strong></p>\n<p><strong><br /></strong></p>\n<p><strong><br /></strong></p>', '<p>Tagalog Content</p>', 'stuckonyou.mp3', 'payphone.mp4', NULL, NULL),
(2, 'African Art and Architecture', NULL, '<p style="text-align: justify;"><span class="inline_title">African Art and Architecture</span>, works of art and architecture created on the African continent south of the Sahara. The immense Sahara acts as a natural barrier, separating African cultures to the north from those to the south. Although there has always been some intermingling of peoples on the two sides of the Sahara, differences in history and culture are pronounced. This article primarily discusses the art created south of the Sahara, a region known as sub-Saharan Africa. For information on the art of northern Africa, <em>see </em>Islamic Art and Architecture; Egyptian Art and Architecture; and Coptic Art and Architecture.</p>\r\n<p style="text-align: justify;">The history of African art and architecture spans a vast period, beginning as early as 25,500 <span>bc</span> and continuing to the present. Among the earliest surviving examples of African art are images of animals painted on rock slabs found in caves in Namibia. Animal images painted on or cut into rocks and canyon walls in the Sahara date from 6000 to 4000 <span>bc</span>. Later Saharan rock art depicts ritual activities, herding, and food preparation. The earliest known African sculptures (500 <span>bc</span> to <span>ad</span>200) are sculpted clay heads and human figures from central Nigeria. Many surviving examples of African art date from the 14th to the 17th century. However, most of the African art known today is relatively recent, from the 19th century or later. Very little earlier African art has survived, primarily because it was made largely of perishable materials such as wood, cloth, and plant fibers, and because it typically met with intensive use in ceremonies and in daily life. Scholars of African art base suppositions about earlier art mainly on art of the last two centuries, but they can only guess at the earlier traditions from which the recent art developed.</p>\r\n<p style="text-align: justify;">African art does not constitute a single tradition. Africa is an enormous continent with hundreds of cultures that have their own languages, religious beliefs, political systems, and ways of doing things. Each culture produces its own distinctive art and architecture, with variations in materials, intentions, and results. Whereas some cultures excel in carving wood, others are known for casting objects in metal. In one culture a decorated pot might be used for cooling water, while in another culture a similar pot is used in ritual ceremonies.</p>\r\n<p style="text-align: justify;">The major types of art produced in Africa are masks, statues, furniture, textiles, pottery, baskets, beadwork, and metalwork. Most objects that are sculpted or shaped—masks and statues, for example—are created chiefly by men and depict human or animal forms. Where two-dimensional art exists, as in textile design or painted decoration on houses, it is generally produced by women.</p>', NULL, NULL, NULL, NULL, NULL),
(5, 'Folk Dance', NULL, '<p style="text-align: justify;"><span class="inline_title">Folk Dance</span>, recreational or ceremonial dance performed usually by members of the community to which the dance is traditional. Varying criteria have been used to differentiate folk dance from other kinds of dance: For example, the dancers are said to belong to a certain economic level or come from certain locales; the steps are simple and repeated, so that any member of the community can participate; the dances require no audience; and they are passed down through many generations. Each of these criteria can be contradicted by dances that are indisputably folk dances, and in each of these criteria, folk dance overlaps with other kinds of dance.</p>\r\n<p style="text-align: justify;">Folk dance is sometimes defined as dance performed by agricultural peoples who live in close-knit communities—a definition that reflects the division of preindustrial Europe into a peasant class and an aristocracy. People in modern industrialized cities, however, participate regularly in what are called folk dances, which were brought to the city by immigrants from rural areas or, sometimes, from other nations. Although the dances of rural Europe are called folk dances, in Africa—which has no peasant-aristocracy division comparable to that of 18th-century Europe—rural dances that in function and complexity are comparable to European folk dances are instead often called tribal dances; confusingly and inconsistently, African traditional stories are often called folktales.</p>\r\n<p style="text-align: justify;">Folk dance is usually viewed as being strictly for the pleasure of the participants, as not requiring an audience, and, despite the dancers'' enjoyment, as often being of little interest to spectators. If participant pleasure is the only criterion, folk dance overlaps somewhat with much tribal dance and with modern social dance, for example, the waltz and the twist. Paradoxically, some traditional ritual and ceremonial dances, such as the English morris dance and the Romanian <em>calu?ari,</em>have for generations attracted local informal audiences. On the other hand, when a traditional recreational dance is performed onstage in a formal concert, its origin, steps, and patterns may be those of folk dance, but it has been removed from the context of folk culture.</p>\r\n<p style="text-align: justify;">Folk dances are usually thought to be simple dances composed of repetitive, easy-to-learn steps. Many folk dances, however, are highly complex and may even be performed as solo virtuosic pieces, an example being the Highland fling of Scotland. Although folk dancing may be considered a nonprofessional activity, some people make their living by performing staged adaptations of folk dances.</p>\r\n<p style="text-align: justify;">Folk dances are defined as being passed from generation to generation, with no known choreographer. Folk dances continue to be invented, however, and in many cases the composer of the dance is known; most Israeli folk dances, for example, were created in the 20th century. At the same time, the choreographers of popular social dances (such as the jitterbug) are usually anonymous; but because these dances remain popular only for a brief time and do not gradually become part of tradition, they are generally not considered folk dances (<em>See also </em>Popular and Social Dance). The many forms of folk, popular, court, and theatrical dance, however, may be closely related. The waltz, for example, originated in Alpine folk dances, was popular for more than a century as an urban social dance, and persisted in folk tradition after its popularity had otherwise lapsed.</p>', NULL, NULL, NULL, NULL, NULL),
(6, 'Blues', NULL, '<p style="text-align: justify;"><span class="inline_title">Blues</span>, type of music developed during the late 19th century by African American performers (<em>see </em>African American Music). Blues embraces a variety of styles, including downhome or country blues, boogie-woogie, classic blues, jump blues, and Chicago (urban) blues. Blues directly or indirectly influenced the vast majority of popular music during the 20th century, including jazz, rock, rhythm and blues (R&amp;B), and gospel.</p>\r\n<p style="text-align: justify;">As a form and style blues most likely first appeared in the 1890s, a quarter century after the Civil War (1861-1865) officially ended slavery in the United States. Jazz and ragtime<strong> </strong>also first appeared around this time. Although freedom did not substantially change the material conditions of the majority of African Americans, it did have a tremendous effect on the mindset of those born into freedom. It is therefore probably no accident that the first generation born outside of slavery would develop a new music that more accurately reflected their worldview and the social situations in which they lived.</p>\r\n<p style="text-align: justify;">Blues can be distinguished both as a musical form and as a genre (style) of music. The typical blues form consists of a 12-bar harmonic pattern that subdivides into three groups of four bars each. (A bar is one measure and in musical notation is indicated by a vertical line). The 12-bar pattern usually follows a traditional blues chord progression. This form was standardized in 1912 with the publication of “Memphis Blues” by musician and composer W. C. Handy. From the beginning, the blues form became one of the standard harmonic structures used in jazz music, although jazz musicians have made the form much more complex over time by substituting and altering chords at various points in the pattern. The blues form has also been an important component of country music, R&amp;B, and rock and roll.</p>\r\n<p style="text-align: justify;">Another aspect of the blues style is the use of special vocal techniques, techniques that American folklorist Alan Lomax termed “playful voicedness.” One of these is to employ a wide variation in the timbre of the voice. A skilled blues vocalist often uses three distinctly different vocal sounds over the course of a single lyric line. This technique serves both to give shape to the lyric line and to increase its emotional effect. Similarly, blues performers repeatedly embellish their singing, using techniques such as <em>vibrato</em> (rapid fluctuation of pitch) and <em>melisma</em>(several notes sung on the same syllable), and by inserting cries, grunts, or other sounds between words.</p>\r\n<p style="text-align: justify;">Blues artists often attempt to imitate instrumental sounds with their voice and to replicate aspects of the human voice with their instruments. The most obvious example of a blues instrumental technique that mimics the human voice is slide guitar playing. To play slide, a guitarist employs a round metal tube on the neck of the guitar instead of fingering individual frets. The resulting sound covers every pitch gradation between any given set of notes and can very closely approximate human vocal sounds. Blues harmonica players also commonly emulate vocal sounds.</p>\r\n<p style="text-align: justify;">As is the case with most African American music forms, blues is typically played in 4/4 time. Each beat is often subdivided into eighth-note triplets with the middle triplet omitted, creating a shuffle feel. Blues drummers usually mark beats one and three with the bass drum, while beats two and four are accented by the snare drum. The same shuffle feel is played on either a closed hi-hat cymbal or on the ride cymbal. The other members of a blues ensemble reinforce these rhythms. Like much other African American music, most blues performers make extensive use of <em>syncopation</em>, placing accents on weak beats and at various unexpected points in the bar.</p>', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `view`
--

CREATE TABLE IF NOT EXISTS `view` (
  `view_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `story_id` int(11) NOT NULL,
  `date_viewed` datetime NOT NULL,
  PRIMARY KEY (`view_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=267 ;

--
-- Dumping data for table `view`
--

INSERT INTO `view` (`view_id`, `story_id`, `date_viewed`) VALUES
(1, 1, '2012-09-18 14:39:43'),
(2, 1, '2012-09-18 14:39:43'),
(3, 5, '2012-09-18 14:39:53'),
(4, 5, '2012-09-18 14:39:53'),
(5, 5, '2012-09-18 14:40:06'),
(6, 5, '2012-09-18 14:40:06'),
(7, 2, '2012-09-18 14:40:28'),
(8, 2, '2012-09-18 14:40:28'),
(9, 3, '2012-09-18 14:40:41'),
(10, 3, '2012-09-18 14:40:41'),
(11, 3, '2012-09-18 14:40:43'),
(12, 3, '2012-09-18 14:40:43'),
(13, 3, '2012-09-18 14:40:43'),
(14, 3, '2012-09-18 14:40:43'),
(15, 3, '2012-09-18 14:40:43'),
(16, 3, '2012-09-18 14:40:43'),
(17, 3, '2012-09-18 14:40:43'),
(18, 3, '2012-09-18 14:40:44'),
(19, 3, '2012-09-18 14:40:44'),
(20, 3, '2012-09-18 14:40:44'),
(21, 3, '2012-09-18 14:40:44'),
(22, 3, '2012-09-18 14:40:44'),
(23, 3, '2012-09-18 14:40:44'),
(24, 3, '2012-09-18 14:40:44'),
(25, 3, '2012-09-18 14:45:39'),
(26, 3, '2012-09-18 14:45:39'),
(27, 3, '2012-09-18 14:45:42'),
(28, 3, '2012-09-18 14:45:42'),
(29, 3, '2012-09-18 14:45:43'),
(30, 3, '2012-09-18 14:45:43'),
(31, 1, '2012-09-18 14:46:52'),
(32, 1, '2012-09-18 14:46:52'),
(33, 1, '2012-09-18 14:46:54'),
(34, 1, '2012-09-18 14:46:54'),
(35, 1, '2012-09-18 14:46:54'),
(36, 1, '2012-09-18 14:46:55'),
(37, 1, '2012-09-18 14:46:55'),
(38, 1, '2012-09-18 14:46:55'),
(39, 1, '2012-09-18 14:46:55'),
(40, 1, '2012-09-18 14:46:55'),
(41, 1, '2012-09-18 14:46:55'),
(42, 1, '2012-09-18 14:46:55'),
(43, 1, '2012-09-18 14:46:55'),
(44, 1, '2012-09-18 14:46:56'),
(45, 1, '2012-09-18 14:46:56'),
(46, 1, '2012-09-18 14:46:56'),
(47, 1, '2012-09-18 14:46:56'),
(48, 1, '2012-09-18 14:46:56'),
(49, 1, '2012-09-18 14:46:56'),
(50, 1, '2012-09-18 14:46:56'),
(51, 1, '2012-09-18 14:46:57'),
(52, 1, '2012-09-18 14:46:57'),
(53, 1, '2012-09-18 14:46:57'),
(54, 1, '2012-09-18 14:46:57'),
(55, 1, '2012-09-18 14:46:57'),
(56, 1, '2012-09-18 14:46:57'),
(57, 1, '2012-09-18 14:46:57'),
(58, 1, '2012-09-18 14:46:58'),
(59, 1, '2012-09-18 14:46:58'),
(60, 1, '2012-09-18 14:46:58'),
(61, 1, '2012-09-18 14:46:58'),
(62, 1, '2012-09-18 14:46:58'),
(63, 1, '2012-09-18 14:46:58'),
(64, 1, '2012-09-18 14:46:58'),
(65, 1, '2012-09-18 14:46:59'),
(66, 1, '2012-09-18 14:46:59'),
(67, 1, '2012-09-18 14:46:59'),
(68, 1, '2012-09-18 14:46:59'),
(69, 1, '2012-09-18 14:46:59'),
(70, 1, '2012-09-18 15:01:33'),
(71, 1, '2012-09-18 15:01:33'),
(72, 1, '2012-09-18 15:02:23'),
(73, 1, '2012-09-18 15:02:23'),
(74, 3, '2012-09-18 15:02:29'),
(75, 3, '2012-09-18 15:02:29'),
(76, 3, '2012-09-18 15:16:01'),
(77, 3, '2012-09-18 15:16:01'),
(78, 6, '2012-09-18 15:25:38'),
(79, 6, '2012-09-18 15:25:38'),
(80, 3, '2012-09-18 15:26:15'),
(81, 3, '2012-09-18 15:26:15'),
(82, 2, '2012-09-19 13:06:39'),
(83, 2, '2012-09-19 13:06:39'),
(84, 2, '2012-09-19 13:08:27'),
(85, 2, '2012-09-19 13:08:27'),
(86, 1, '2012-09-19 13:09:51'),
(87, 1, '2012-09-19 13:09:52'),
(88, 1, '2012-09-19 13:10:19'),
(89, 1, '2012-09-19 13:10:19'),
(90, 2, '2012-09-19 13:10:30'),
(91, 2, '2012-09-19 13:10:30'),
(92, 6, '2012-09-19 13:10:32'),
(93, 6, '2012-09-19 13:10:32'),
(94, 2, '2012-09-19 13:10:43'),
(95, 2, '2012-09-19 13:10:43'),
(96, 1, '2012-09-19 13:45:07'),
(97, 1, '2012-09-19 13:45:07'),
(98, 1, '2012-09-19 13:48:54'),
(99, 1, '2012-09-19 13:48:55'),
(100, 1, '2012-09-19 13:49:21'),
(101, 1, '2012-09-19 13:49:22'),
(102, 1, '2012-09-19 13:49:35'),
(103, 1, '2012-09-19 13:49:35'),
(104, 1, '2012-09-19 13:52:03'),
(105, 1, '2012-09-19 13:52:04'),
(106, 1, '2012-09-19 13:58:13'),
(107, 1, '2012-09-19 13:58:14'),
(108, 1, '2012-09-19 13:58:16'),
(109, 1, '2012-09-19 13:58:17'),
(110, 1, '2012-09-19 13:58:19'),
(111, 1, '2012-09-19 13:58:20'),
(112, 1, '2012-09-19 13:58:21'),
(113, 1, '2012-09-19 13:58:21'),
(114, 1, '2012-09-19 13:58:22'),
(115, 1, '2012-09-19 13:58:22'),
(116, 1, '2012-09-19 13:58:24'),
(117, 1, '2012-09-19 13:58:24'),
(118, 1, '2012-09-19 13:58:25'),
(119, 1, '2012-09-19 13:58:25'),
(120, 1, '2012-09-19 13:58:26'),
(121, 1, '2012-09-19 13:58:26'),
(122, 1, '2012-09-19 14:03:04'),
(123, 1, '2012-09-19 14:03:04'),
(124, 1, '2012-09-19 14:03:06'),
(125, 1, '2012-09-19 14:03:06'),
(126, 1, '2012-09-19 14:03:08'),
(127, 1, '2012-09-19 14:03:08'),
(128, 1, '2012-09-19 14:03:09'),
(129, 1, '2012-09-19 14:03:09'),
(130, 1, '2012-09-19 14:03:25'),
(131, 1, '2012-09-19 14:03:26'),
(132, 1, '2012-09-19 14:03:28'),
(133, 1, '2012-09-19 14:03:28'),
(134, 1, '2012-09-19 14:03:29'),
(135, 1, '2012-09-19 14:03:29'),
(136, 1, '2012-09-19 14:03:57'),
(137, 1, '2012-09-19 14:03:58'),
(138, 1, '2012-09-19 14:04:00'),
(139, 1, '2012-09-19 14:04:00'),
(140, 1, '2012-09-19 14:04:41'),
(141, 1, '2012-09-19 14:04:41'),
(142, 1, '2012-09-19 14:04:42'),
(143, 1, '2012-09-19 14:04:43'),
(144, 1, '2012-09-19 14:04:58'),
(145, 1, '2012-09-19 14:04:59'),
(146, 1, '2012-09-19 14:05:44'),
(147, 1, '2012-09-19 14:05:45'),
(148, 1, '2012-09-19 14:06:36'),
(149, 1, '2012-09-19 14:06:36'),
(150, 1, '2012-09-19 14:07:00'),
(151, 1, '2012-09-19 14:07:00'),
(152, 1, '2012-09-19 14:07:00'),
(153, 1, '2012-09-19 14:09:19'),
(154, 1, '2012-09-19 14:09:19'),
(155, 1, '2012-09-19 14:09:43'),
(156, 1, '2012-09-19 14:09:44'),
(157, 1, '2012-09-19 14:10:21'),
(158, 1, '2012-09-19 14:10:21'),
(159, 1, '2012-09-19 14:10:31'),
(160, 1, '2012-09-19 14:10:31'),
(161, 1, '2012-09-19 14:12:35'),
(162, 1, '2012-09-19 14:12:36'),
(163, 1, '2012-09-19 14:13:11'),
(164, 1, '2012-09-19 14:13:12'),
(165, 1, '2012-09-19 14:13:36'),
(166, 1, '2012-09-19 14:13:37'),
(167, 1, '2012-09-19 14:14:55'),
(168, 1, '2012-09-19 14:14:55'),
(169, 6, '2012-09-19 14:15:18'),
(170, 6, '2012-09-19 14:15:19'),
(171, 6, '2012-09-19 14:16:09'),
(172, 6, '2012-09-19 14:16:09'),
(173, 2, '2012-09-19 14:16:12'),
(174, 2, '2012-09-19 14:16:12'),
(175, 1, '2012-09-19 14:16:19'),
(176, 1, '2012-09-19 14:16:19'),
(177, 1, '2012-09-19 14:18:50'),
(178, 1, '2012-09-19 14:18:51'),
(179, 2, '2012-09-27 12:09:28'),
(180, 2, '2012-09-27 12:09:28'),
(181, 6, '2012-09-27 12:10:55'),
(182, 6, '2012-09-27 12:10:55'),
(183, 6, '2012-09-30 10:13:01'),
(184, 6, '2012-09-30 10:13:02'),
(185, 2, '2012-09-30 10:13:06'),
(186, 2, '2012-09-30 10:13:07'),
(187, 1, '2012-09-30 10:13:14'),
(188, 1, '2012-09-30 10:13:15'),
(189, 6, '2012-09-30 11:36:43'),
(190, 6, '2012-09-30 11:36:43'),
(191, 1, '2012-09-30 11:36:54'),
(192, 1, '2012-09-30 11:36:55'),
(193, 1, '2012-09-30 11:38:23'),
(194, 1, '2012-09-30 11:38:23'),
(195, 1, '2012-09-30 11:40:17'),
(196, 1, '2012-09-30 11:40:17'),
(197, 1, '2012-09-30 11:40:38'),
(198, 1, '2012-09-30 11:40:38'),
(199, 1, '2012-09-30 11:41:18'),
(200, 1, '2012-09-30 11:41:18'),
(201, 1, '2012-09-30 11:41:33'),
(202, 1, '2012-09-30 11:41:33'),
(203, 1, '2012-09-30 11:41:34'),
(204, 1, '2012-09-30 11:41:34'),
(205, 1, '2012-09-30 11:42:25'),
(206, 1, '2012-09-30 11:42:25'),
(207, 1, '2012-09-30 11:42:52'),
(208, 1, '2012-09-30 11:42:52'),
(209, 6, '2012-09-30 11:45:14'),
(210, 6, '2012-09-30 11:45:14'),
(211, 6, '2012-09-30 11:46:03'),
(212, 6, '2012-09-30 11:46:03'),
(213, 1, '2012-09-30 11:46:12'),
(214, 1, '2012-09-30 11:46:12'),
(215, 1, '2012-09-30 12:35:29'),
(216, 1, '2012-09-30 12:35:29'),
(217, 1, '2012-09-30 12:36:11'),
(218, 1, '2012-09-30 12:36:11'),
(219, 1, '2012-09-30 12:36:15'),
(220, 1, '2012-09-30 12:36:15'),
(221, 6, '2012-09-30 12:36:24'),
(222, 6, '2012-09-30 12:36:24'),
(223, 6, '2012-09-30 12:36:28'),
(224, 6, '2012-09-30 12:36:28'),
(225, 6, '2012-09-30 12:36:34'),
(226, 6, '2012-09-30 12:36:34'),
(227, 6, '2012-09-30 12:36:43'),
(228, 6, '2012-09-30 12:36:43'),
(229, 1, '2012-10-04 11:55:37'),
(230, 1, '2012-10-04 11:55:37'),
(231, 1, '2012-10-04 11:56:36'),
(232, 1, '2012-10-04 11:56:36'),
(233, 1, '2012-10-04 11:56:38'),
(234, 1, '2012-10-04 11:56:38'),
(235, 1, '2012-10-04 11:57:15'),
(236, 1, '2012-10-04 11:57:15'),
(237, 1, '2012-10-04 11:57:24'),
(238, 1, '2012-10-04 11:57:24'),
(239, 1, '2012-10-04 12:04:01'),
(240, 1, '2012-10-04 12:04:01'),
(241, 1, '2012-10-04 12:05:56'),
(242, 1, '2012-10-04 12:05:56'),
(243, 1, '2012-10-04 12:11:23'),
(244, 1, '2012-10-04 12:11:23'),
(245, 1, '2012-10-04 12:11:31'),
(246, 1, '2012-10-04 12:11:31'),
(247, 1, '2012-10-04 12:14:59'),
(248, 1, '2012-10-04 12:15:00'),
(249, 1, '2012-10-04 12:15:42'),
(250, 1, '2012-10-04 12:15:42'),
(251, 1, '2012-10-04 12:15:47'),
(252, 1, '2012-10-04 12:15:48'),
(253, 1, '2012-10-04 12:17:46'),
(254, 1, '2012-10-04 12:17:46'),
(255, 2, '2012-10-04 12:26:55'),
(256, 2, '2012-10-04 12:26:55'),
(257, 2, '2012-10-04 12:28:31'),
(258, 2, '2012-10-04 12:28:31'),
(259, 2, '2012-10-04 12:28:32'),
(260, 2, '2012-10-04 12:28:32'),
(261, 2, '2012-10-04 12:29:09'),
(262, 2, '2012-10-04 12:29:09'),
(263, 2, '2012-10-04 12:29:14'),
(264, 2, '2012-10-04 12:29:14'),
(265, 2, '2012-10-04 12:29:18'),
(266, 2, '2012-10-04 12:29:18');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
