/*
MySQL Data Transfer
Source Host: localhost
Source Database: digital_story
Target Host: localhost
Target Database: digital_story
Date: 9/22/2012 7:39:00 AM
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for administrator
-- ----------------------------
CREATE TABLE `administrator` (
  `administrator_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `username` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  PRIMARY KEY (`administrator_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
CREATE TABLE `sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for stories
-- ----------------------------
CREATE TABLE `stories` (
  `stories_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `contents` text NOT NULL,
  `audio` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`stories_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for view
-- ----------------------------
CREATE TABLE `view` (
  `view_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `story_id` int(11) NOT NULL,
  `date_viewed` datetime NOT NULL,
  PRIMARY KEY (`view_id`)
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `administrator` VALUES ('1', 'ivan', 'pabelona', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997');
INSERT INTO `sessions` VALUES ('8e8d58790cb624e8ed10ae3d3814f492', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.89 Safari/537.1', '1348064095', 'a:5:{s:9:\"user_data\";s:0:\"\";s:16:\"administrator_id\";s:1:\"1\";s:10:\"first_name\";s:4:\"ivan\";s:9:\"last_name\";s:8:\"pabelona\";s:8:\"username\";s:5:\"admin\";}');
INSERT INTO `stories` VALUES ('1', 'American Architecture', '<p style=\"text-align: justify;\"><span class=\"inline_title\">American Architecture</span>, architecture that developed in the European colonies in America and subsequently in the United States. This development covers a period of almost five centuries, beginning with the establishment of Saint Augustine in Florida in 1565, English settlement along the Atlantic Coast in 1585, and Spanish settlement in New Mexico in 1598. Settlers from France, Sweden, The Netherlands, Germany, and other countries arrived in the 1600s.</p>\r\n<p style=\"text-align: justify;\">The full history of building in what became the United States reaches back 10,000 years, but European settlers almost universally ignored the many building traditions of Native American peoples. Over the five centuries after European arrival, transplanted European building traditions were gradually reshaped and redefined. They emerged as distinctly American building traditions by the early 19th century. Each of the European colonies in North America developed its own building tradition.</p>\r\n<p style=\"text-align: justify;\"><strong><br /></strong></p>\r\n<p><strong><br /></strong></p>\r\n<p><strong><br /></strong></p>', 'stuckonyou.mp3', 'payphone.mp4');
INSERT INTO `stories` VALUES ('2', 'African Art and Architecture', '<p style=\"text-align: justify;\"><span class=\"inline_title\">African Art and Architecture</span>, works of art and architecture created on the African continent south of the Sahara. The immense Sahara acts as a natural barrier, separating African cultures to the north from those to the south. Although there has always been some intermingling of peoples on the two sides of the Sahara, differences in history and culture are pronounced. This article primarily discusses the art created south of the Sahara, a region known as sub-Saharan Africa. For information on the art of northern Africa, <em>see </em>Islamic Art and Architecture; Egyptian Art and Architecture; and Coptic Art and Architecture.</p>\r\n<p style=\"text-align: justify;\">The history of African art and architecture spans a vast period, beginning as early as 25,500 <span>bc</span> and continuing to the present. Among the earliest surviving examples of African art are images of animals painted on rock slabs found in caves in Namibia. Animal images painted on or cut into rocks and canyon walls in the Sahara date from 6000 to 4000 <span>bc</span>. Later Saharan rock art depicts ritual activities, herding, and food preparation. The earliest known African sculptures (500 <span>bc</span> to <span>ad</span>200) are sculpted clay heads and human figures from central Nigeria. Many surviving examples of African art date from the 14th to the 17th century. However, most of the African art known today is relatively recent, from the 19th century or later. Very little earlier African art has survived, primarily because it was made largely of perishable materials such as wood, cloth, and plant fibers, and because it typically met with intensive use in ceremonies and in daily life. Scholars of African art base suppositions about earlier art mainly on art of the last two centuries, but they can only guess at the earlier traditions from which the recent art developed.</p>\r\n<p style=\"text-align: justify;\">African art does not constitute a single tradition. Africa is an enormous continent with hundreds of cultures that have their own languages, religious beliefs, political systems, and ways of doing things. Each culture produces its own distinctive art and architecture, with variations in materials, intentions, and results. Whereas some cultures excel in carving wood, others are known for casting objects in metal. In one culture a decorated pot might be used for cooling water, while in another culture a similar pot is used in ritual ceremonies.</p>\r\n<p style=\"text-align: justify;\">The major types of art produced in Africa are masks, statues, furniture, textiles, pottery, baskets, beadwork, and metalwork. Most objects that are sculpted or shaped—masks and statues, for example—are created chiefly by men and depict human or animal forms. Where two-dimensional art exists, as in textile design or painted decoration on houses, it is generally produced by women.</p>', null, null);
INSERT INTO `stories` VALUES ('5', 'Folk Dance', '<p style=\"text-align: justify;\"><span class=\"inline_title\">Folk Dance</span>, recreational or ceremonial dance performed usually by members of the community to which the dance is traditional. Varying criteria have been used to differentiate folk dance from other kinds of dance: For example, the dancers are said to belong to a certain economic level or come from certain locales; the steps are simple and repeated, so that any member of the community can participate; the dances require no audience; and they are passed down through many generations. Each of these criteria can be contradicted by dances that are indisputably folk dances, and in each of these criteria, folk dance overlaps with other kinds of dance.</p>\r\n<p style=\"text-align: justify;\">Folk dance is sometimes defined as dance performed by agricultural peoples who live in close-knit communities—a definition that reflects the division of preindustrial Europe into a peasant class and an aristocracy. People in modern industrialized cities, however, participate regularly in what are called folk dances, which were brought to the city by immigrants from rural areas or, sometimes, from other nations. Although the dances of rural Europe are called folk dances, in Africa—which has no peasant-aristocracy division comparable to that of 18th-century Europe—rural dances that in function and complexity are comparable to European folk dances are instead often called tribal dances; confusingly and inconsistently, African traditional stories are often called folktales.</p>\r\n<p style=\"text-align: justify;\">Folk dance is usually viewed as being strictly for the pleasure of the participants, as not requiring an audience, and, despite the dancers\' enjoyment, as often being of little interest to spectators. If participant pleasure is the only criterion, folk dance overlaps somewhat with much tribal dance and with modern social dance, for example, the waltz and the twist. Paradoxically, some traditional ritual and ceremonial dances, such as the English morris dance and the Romanian <em>calu?ari,</em>have for generations attracted local informal audiences. On the other hand, when a traditional recreational dance is performed onstage in a formal concert, its origin, steps, and patterns may be those of folk dance, but it has been removed from the context of folk culture.</p>\r\n<p style=\"text-align: justify;\">Folk dances are usually thought to be simple dances composed of repetitive, easy-to-learn steps. Many folk dances, however, are highly complex and may even be performed as solo virtuosic pieces, an example being the Highland fling of Scotland. Although folk dancing may be considered a nonprofessional activity, some people make their living by performing staged adaptations of folk dances.</p>\r\n<p style=\"text-align: justify;\">Folk dances are defined as being passed from generation to generation, with no known choreographer. Folk dances continue to be invented, however, and in many cases the composer of the dance is known; most Israeli folk dances, for example, were created in the 20th century. At the same time, the choreographers of popular social dances (such as the jitterbug) are usually anonymous; but because these dances remain popular only for a brief time and do not gradually become part of tradition, they are generally not considered folk dances (<em>See also </em>Popular and Social Dance). The many forms of folk, popular, court, and theatrical dance, however, may be closely related. The waltz, for example, originated in Alpine folk dances, was popular for more than a century as an urban social dance, and persisted in folk tradition after its popularity had otherwise lapsed.</p>', null, null);
INSERT INTO `stories` VALUES ('6', 'Blues', '<p style=\"text-align: justify;\"><span class=\"inline_title\">Blues</span>, type of music developed during the late 19th century by African American performers (<em>see </em>African American Music). Blues embraces a variety of styles, including downhome or country blues, boogie-woogie, classic blues, jump blues, and Chicago (urban) blues. Blues directly or indirectly influenced the vast majority of popular music during the 20th century, including jazz, rock, rhythm and blues (R&amp;B), and gospel.</p>\r\n<p style=\"text-align: justify;\">As a form and style blues most likely first appeared in the 1890s, a quarter century after the Civil War (1861-1865) officially ended slavery in the United States. Jazz and ragtime<strong> </strong>also first appeared around this time. Although freedom did not substantially change the material conditions of the majority of African Americans, it did have a tremendous effect on the mindset of those born into freedom. It is therefore probably no accident that the first generation born outside of slavery would develop a new music that more accurately reflected their worldview and the social situations in which they lived.</p>\r\n<p style=\"text-align: justify;\">Blues can be distinguished both as a musical form and as a genre (style) of music. The typical blues form consists of a 12-bar harmonic pattern that subdivides into three groups of four bars each. (A bar is one measure and in musical notation is indicated by a vertical line). The 12-bar pattern usually follows a traditional blues chord progression. This form was standardized in 1912 with the publication of “Memphis Blues” by musician and composer W. C. Handy. From the beginning, the blues form became one of the standard harmonic structures used in jazz music, although jazz musicians have made the form much more complex over time by substituting and altering chords at various points in the pattern. The blues form has also been an important component of country music, R&amp;B, and rock and roll.</p>\r\n<p style=\"text-align: justify;\">Another aspect of the blues style is the use of special vocal techniques, techniques that American folklorist Alan Lomax termed “playful voicedness.” One of these is to employ a wide variation in the timbre of the voice. A skilled blues vocalist often uses three distinctly different vocal sounds over the course of a single lyric line. This technique serves both to give shape to the lyric line and to increase its emotional effect. Similarly, blues performers repeatedly embellish their singing, using techniques such as <em>vibrato</em> (rapid fluctuation of pitch) and <em>melisma</em>(several notes sung on the same syllable), and by inserting cries, grunts, or other sounds between words.</p>\r\n<p style=\"text-align: justify;\">Blues artists often attempt to imitate instrumental sounds with their voice and to replicate aspects of the human voice with their instruments. The most obvious example of a blues instrumental technique that mimics the human voice is slide guitar playing. To play slide, a guitarist employs a round metal tube on the neck of the guitar instead of fingering individual frets. The resulting sound covers every pitch gradation between any given set of notes and can very closely approximate human vocal sounds. Blues harmonica players also commonly emulate vocal sounds.</p>\r\n<p style=\"text-align: justify;\">As is the case with most African American music forms, blues is typically played in 4/4 time. Each beat is often subdivided into eighth-note triplets with the middle triplet omitted, creating a shuffle feel. Blues drummers usually mark beats one and three with the bass drum, while beats two and four are accented by the snare drum. The same shuffle feel is played on either a closed hi-hat cymbal or on the ride cymbal. The other members of a blues ensemble reinforce these rhythms. Like much other African American music, most blues performers make extensive use of <em>syncopation</em>, placing accents on weak beats and at various unexpected points in the bar.</p>', null, null);
INSERT INTO `view` VALUES ('1', '1', '2012-09-18 14:39:43');
INSERT INTO `view` VALUES ('2', '1', '2012-09-18 14:39:43');
INSERT INTO `view` VALUES ('3', '5', '2012-09-18 14:39:53');
INSERT INTO `view` VALUES ('4', '5', '2012-09-18 14:39:53');
INSERT INTO `view` VALUES ('5', '5', '2012-09-18 14:40:06');
INSERT INTO `view` VALUES ('6', '5', '2012-09-18 14:40:06');
INSERT INTO `view` VALUES ('7', '2', '2012-09-18 14:40:28');
INSERT INTO `view` VALUES ('8', '2', '2012-09-18 14:40:28');
INSERT INTO `view` VALUES ('9', '3', '2012-09-18 14:40:41');
INSERT INTO `view` VALUES ('10', '3', '2012-09-18 14:40:41');
INSERT INTO `view` VALUES ('11', '3', '2012-09-18 14:40:43');
INSERT INTO `view` VALUES ('12', '3', '2012-09-18 14:40:43');
INSERT INTO `view` VALUES ('13', '3', '2012-09-18 14:40:43');
INSERT INTO `view` VALUES ('14', '3', '2012-09-18 14:40:43');
INSERT INTO `view` VALUES ('15', '3', '2012-09-18 14:40:43');
INSERT INTO `view` VALUES ('16', '3', '2012-09-18 14:40:43');
INSERT INTO `view` VALUES ('17', '3', '2012-09-18 14:40:43');
INSERT INTO `view` VALUES ('18', '3', '2012-09-18 14:40:44');
INSERT INTO `view` VALUES ('19', '3', '2012-09-18 14:40:44');
INSERT INTO `view` VALUES ('20', '3', '2012-09-18 14:40:44');
INSERT INTO `view` VALUES ('21', '3', '2012-09-18 14:40:44');
INSERT INTO `view` VALUES ('22', '3', '2012-09-18 14:40:44');
INSERT INTO `view` VALUES ('23', '3', '2012-09-18 14:40:44');
INSERT INTO `view` VALUES ('24', '3', '2012-09-18 14:40:44');
INSERT INTO `view` VALUES ('25', '3', '2012-09-18 14:45:39');
INSERT INTO `view` VALUES ('26', '3', '2012-09-18 14:45:39');
INSERT INTO `view` VALUES ('27', '3', '2012-09-18 14:45:42');
INSERT INTO `view` VALUES ('28', '3', '2012-09-18 14:45:42');
INSERT INTO `view` VALUES ('29', '3', '2012-09-18 14:45:43');
INSERT INTO `view` VALUES ('30', '3', '2012-09-18 14:45:43');
INSERT INTO `view` VALUES ('31', '1', '2012-09-18 14:46:52');
INSERT INTO `view` VALUES ('32', '1', '2012-09-18 14:46:52');
INSERT INTO `view` VALUES ('33', '1', '2012-09-18 14:46:54');
INSERT INTO `view` VALUES ('34', '1', '2012-09-18 14:46:54');
INSERT INTO `view` VALUES ('35', '1', '2012-09-18 14:46:54');
INSERT INTO `view` VALUES ('36', '1', '2012-09-18 14:46:55');
INSERT INTO `view` VALUES ('37', '1', '2012-09-18 14:46:55');
INSERT INTO `view` VALUES ('38', '1', '2012-09-18 14:46:55');
INSERT INTO `view` VALUES ('39', '1', '2012-09-18 14:46:55');
INSERT INTO `view` VALUES ('40', '1', '2012-09-18 14:46:55');
INSERT INTO `view` VALUES ('41', '1', '2012-09-18 14:46:55');
INSERT INTO `view` VALUES ('42', '1', '2012-09-18 14:46:55');
INSERT INTO `view` VALUES ('43', '1', '2012-09-18 14:46:55');
INSERT INTO `view` VALUES ('44', '1', '2012-09-18 14:46:56');
INSERT INTO `view` VALUES ('45', '1', '2012-09-18 14:46:56');
INSERT INTO `view` VALUES ('46', '1', '2012-09-18 14:46:56');
INSERT INTO `view` VALUES ('47', '1', '2012-09-18 14:46:56');
INSERT INTO `view` VALUES ('48', '1', '2012-09-18 14:46:56');
INSERT INTO `view` VALUES ('49', '1', '2012-09-18 14:46:56');
INSERT INTO `view` VALUES ('50', '1', '2012-09-18 14:46:56');
INSERT INTO `view` VALUES ('51', '1', '2012-09-18 14:46:57');
INSERT INTO `view` VALUES ('52', '1', '2012-09-18 14:46:57');
INSERT INTO `view` VALUES ('53', '1', '2012-09-18 14:46:57');
INSERT INTO `view` VALUES ('54', '1', '2012-09-18 14:46:57');
INSERT INTO `view` VALUES ('55', '1', '2012-09-18 14:46:57');
INSERT INTO `view` VALUES ('56', '1', '2012-09-18 14:46:57');
INSERT INTO `view` VALUES ('57', '1', '2012-09-18 14:46:57');
INSERT INTO `view` VALUES ('58', '1', '2012-09-18 14:46:58');
INSERT INTO `view` VALUES ('59', '1', '2012-09-18 14:46:58');
INSERT INTO `view` VALUES ('60', '1', '2012-09-18 14:46:58');
INSERT INTO `view` VALUES ('61', '1', '2012-09-18 14:46:58');
INSERT INTO `view` VALUES ('62', '1', '2012-09-18 14:46:58');
INSERT INTO `view` VALUES ('63', '1', '2012-09-18 14:46:58');
INSERT INTO `view` VALUES ('64', '1', '2012-09-18 14:46:58');
INSERT INTO `view` VALUES ('65', '1', '2012-09-18 14:46:59');
INSERT INTO `view` VALUES ('66', '1', '2012-09-18 14:46:59');
INSERT INTO `view` VALUES ('67', '1', '2012-09-18 14:46:59');
INSERT INTO `view` VALUES ('68', '1', '2012-09-18 14:46:59');
INSERT INTO `view` VALUES ('69', '1', '2012-09-18 14:46:59');
INSERT INTO `view` VALUES ('70', '1', '2012-09-18 15:01:33');
INSERT INTO `view` VALUES ('71', '1', '2012-09-18 15:01:33');
INSERT INTO `view` VALUES ('72', '1', '2012-09-18 15:02:23');
INSERT INTO `view` VALUES ('73', '1', '2012-09-18 15:02:23');
INSERT INTO `view` VALUES ('74', '3', '2012-09-18 15:02:29');
INSERT INTO `view` VALUES ('75', '3', '2012-09-18 15:02:29');
INSERT INTO `view` VALUES ('76', '3', '2012-09-18 15:16:01');
INSERT INTO `view` VALUES ('77', '3', '2012-09-18 15:16:01');
INSERT INTO `view` VALUES ('78', '6', '2012-09-18 15:25:38');
INSERT INTO `view` VALUES ('79', '6', '2012-09-18 15:25:38');
INSERT INTO `view` VALUES ('80', '3', '2012-09-18 15:26:15');
INSERT INTO `view` VALUES ('81', '3', '2012-09-18 15:26:15');
INSERT INTO `view` VALUES ('82', '2', '2012-09-19 13:06:39');
INSERT INTO `view` VALUES ('83', '2', '2012-09-19 13:06:39');
INSERT INTO `view` VALUES ('84', '2', '2012-09-19 13:08:27');
INSERT INTO `view` VALUES ('85', '2', '2012-09-19 13:08:27');
INSERT INTO `view` VALUES ('86', '1', '2012-09-19 13:09:51');
INSERT INTO `view` VALUES ('87', '1', '2012-09-19 13:09:52');
INSERT INTO `view` VALUES ('88', '1', '2012-09-19 13:10:19');
INSERT INTO `view` VALUES ('89', '1', '2012-09-19 13:10:19');
INSERT INTO `view` VALUES ('90', '2', '2012-09-19 13:10:30');
INSERT INTO `view` VALUES ('91', '2', '2012-09-19 13:10:30');
INSERT INTO `view` VALUES ('92', '6', '2012-09-19 13:10:32');
INSERT INTO `view` VALUES ('93', '6', '2012-09-19 13:10:32');
INSERT INTO `view` VALUES ('94', '2', '2012-09-19 13:10:43');
INSERT INTO `view` VALUES ('95', '2', '2012-09-19 13:10:43');
INSERT INTO `view` VALUES ('96', '1', '2012-09-19 13:45:07');
INSERT INTO `view` VALUES ('97', '1', '2012-09-19 13:45:07');
INSERT INTO `view` VALUES ('98', '1', '2012-09-19 13:48:54');
INSERT INTO `view` VALUES ('99', '1', '2012-09-19 13:48:55');
INSERT INTO `view` VALUES ('100', '1', '2012-09-19 13:49:21');
INSERT INTO `view` VALUES ('101', '1', '2012-09-19 13:49:22');
INSERT INTO `view` VALUES ('102', '1', '2012-09-19 13:49:35');
INSERT INTO `view` VALUES ('103', '1', '2012-09-19 13:49:35');
INSERT INTO `view` VALUES ('104', '1', '2012-09-19 13:52:03');
INSERT INTO `view` VALUES ('105', '1', '2012-09-19 13:52:04');
INSERT INTO `view` VALUES ('106', '1', '2012-09-19 13:58:13');
INSERT INTO `view` VALUES ('107', '1', '2012-09-19 13:58:14');
INSERT INTO `view` VALUES ('108', '1', '2012-09-19 13:58:16');
INSERT INTO `view` VALUES ('109', '1', '2012-09-19 13:58:17');
INSERT INTO `view` VALUES ('110', '1', '2012-09-19 13:58:19');
INSERT INTO `view` VALUES ('111', '1', '2012-09-19 13:58:20');
INSERT INTO `view` VALUES ('112', '1', '2012-09-19 13:58:21');
INSERT INTO `view` VALUES ('113', '1', '2012-09-19 13:58:21');
INSERT INTO `view` VALUES ('114', '1', '2012-09-19 13:58:22');
INSERT INTO `view` VALUES ('115', '1', '2012-09-19 13:58:22');
INSERT INTO `view` VALUES ('116', '1', '2012-09-19 13:58:24');
INSERT INTO `view` VALUES ('117', '1', '2012-09-19 13:58:24');
INSERT INTO `view` VALUES ('118', '1', '2012-09-19 13:58:25');
INSERT INTO `view` VALUES ('119', '1', '2012-09-19 13:58:25');
INSERT INTO `view` VALUES ('120', '1', '2012-09-19 13:58:26');
INSERT INTO `view` VALUES ('121', '1', '2012-09-19 13:58:26');
INSERT INTO `view` VALUES ('122', '1', '2012-09-19 14:03:04');
INSERT INTO `view` VALUES ('123', '1', '2012-09-19 14:03:04');
INSERT INTO `view` VALUES ('124', '1', '2012-09-19 14:03:06');
INSERT INTO `view` VALUES ('125', '1', '2012-09-19 14:03:06');
INSERT INTO `view` VALUES ('126', '1', '2012-09-19 14:03:08');
INSERT INTO `view` VALUES ('127', '1', '2012-09-19 14:03:08');
INSERT INTO `view` VALUES ('128', '1', '2012-09-19 14:03:09');
INSERT INTO `view` VALUES ('129', '1', '2012-09-19 14:03:09');
INSERT INTO `view` VALUES ('130', '1', '2012-09-19 14:03:25');
INSERT INTO `view` VALUES ('131', '1', '2012-09-19 14:03:26');
INSERT INTO `view` VALUES ('132', '1', '2012-09-19 14:03:28');
INSERT INTO `view` VALUES ('133', '1', '2012-09-19 14:03:28');
INSERT INTO `view` VALUES ('134', '1', '2012-09-19 14:03:29');
INSERT INTO `view` VALUES ('135', '1', '2012-09-19 14:03:29');
INSERT INTO `view` VALUES ('136', '1', '2012-09-19 14:03:57');
INSERT INTO `view` VALUES ('137', '1', '2012-09-19 14:03:58');
INSERT INTO `view` VALUES ('138', '1', '2012-09-19 14:04:00');
INSERT INTO `view` VALUES ('139', '1', '2012-09-19 14:04:00');
INSERT INTO `view` VALUES ('140', '1', '2012-09-19 14:04:41');
INSERT INTO `view` VALUES ('141', '1', '2012-09-19 14:04:41');
INSERT INTO `view` VALUES ('142', '1', '2012-09-19 14:04:42');
INSERT INTO `view` VALUES ('143', '1', '2012-09-19 14:04:43');
INSERT INTO `view` VALUES ('144', '1', '2012-09-19 14:04:58');
INSERT INTO `view` VALUES ('145', '1', '2012-09-19 14:04:59');
INSERT INTO `view` VALUES ('146', '1', '2012-09-19 14:05:44');
INSERT INTO `view` VALUES ('147', '1', '2012-09-19 14:05:45');
INSERT INTO `view` VALUES ('148', '1', '2012-09-19 14:06:36');
INSERT INTO `view` VALUES ('149', '1', '2012-09-19 14:06:36');
INSERT INTO `view` VALUES ('150', '1', '2012-09-19 14:07:00');
INSERT INTO `view` VALUES ('151', '1', '2012-09-19 14:07:00');
INSERT INTO `view` VALUES ('152', '1', '2012-09-19 14:07:00');
INSERT INTO `view` VALUES ('153', '1', '2012-09-19 14:09:19');
INSERT INTO `view` VALUES ('154', '1', '2012-09-19 14:09:19');
INSERT INTO `view` VALUES ('155', '1', '2012-09-19 14:09:43');
INSERT INTO `view` VALUES ('156', '1', '2012-09-19 14:09:44');
INSERT INTO `view` VALUES ('157', '1', '2012-09-19 14:10:21');
INSERT INTO `view` VALUES ('158', '1', '2012-09-19 14:10:21');
INSERT INTO `view` VALUES ('159', '1', '2012-09-19 14:10:31');
INSERT INTO `view` VALUES ('160', '1', '2012-09-19 14:10:31');
INSERT INTO `view` VALUES ('161', '1', '2012-09-19 14:12:35');
INSERT INTO `view` VALUES ('162', '1', '2012-09-19 14:12:36');
INSERT INTO `view` VALUES ('163', '1', '2012-09-19 14:13:11');
INSERT INTO `view` VALUES ('164', '1', '2012-09-19 14:13:12');
INSERT INTO `view` VALUES ('165', '1', '2012-09-19 14:13:36');
INSERT INTO `view` VALUES ('166', '1', '2012-09-19 14:13:37');
INSERT INTO `view` VALUES ('167', '1', '2012-09-19 14:14:55');
INSERT INTO `view` VALUES ('168', '1', '2012-09-19 14:14:55');
INSERT INTO `view` VALUES ('169', '6', '2012-09-19 14:15:18');
INSERT INTO `view` VALUES ('170', '6', '2012-09-19 14:15:19');
INSERT INTO `view` VALUES ('171', '6', '2012-09-19 14:16:09');
INSERT INTO `view` VALUES ('172', '6', '2012-09-19 14:16:09');
INSERT INTO `view` VALUES ('173', '2', '2012-09-19 14:16:12');
INSERT INTO `view` VALUES ('174', '2', '2012-09-19 14:16:12');
INSERT INTO `view` VALUES ('175', '1', '2012-09-19 14:16:19');
INSERT INTO `view` VALUES ('176', '1', '2012-09-19 14:16:19');
INSERT INTO `view` VALUES ('177', '1', '2012-09-19 14:18:50');
INSERT INTO `view` VALUES ('178', '1', '2012-09-19 14:18:51');
