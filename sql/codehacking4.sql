-- MySQL dump 10.13  Distrib 5.7.22, for Win64 (x86_64)
--
-- Host: localhost    Database: codehacking
-- ------------------------------------------------------
-- Server version	5.7.22-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Travel','2019-09-11 01:24:35','2019-09-11 01:24:35'),(2,'Money','2019-09-11 01:24:35','2019-09-11 01:24:35'),(3,'PHP','2019-09-11 01:24:35','2019-09-11 01:24:35'),(4,'Coffee','2019-09-11 01:24:35','2019-09-11 01:24:35'),(5,'Programming','2019-09-11 01:24:35','2019-09-11 01:24:35'),(6,'JavaScript','2019-09-11 01:24:35','2019-09-11 01:24:35'),(7,'Men','2019-09-11 01:24:35','2019-09-11 01:24:35'),(8,'Women','2019-09-11 01:24:35','2019-09-11 01:24:35'),(9,'Love','2019-09-11 01:24:35','2019-09-11 01:24:35'),(10,'Life','2019-09-11 01:24:35','2019-09-11 01:24:35'),(11,'Node.js','2019-09-14 20:05:37','2019-09-14 20:05:37'),(12,'COBOL','2019-09-14 20:05:50','2019-09-14 20:05:50');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_replies`
--

DROP TABLE IF EXISTS `comment_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment_replies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` int(10) unsigned NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT '0',
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_replies_comment_id_index` (`comment_id`),
  CONSTRAINT `comment_replies_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_replies`
--

LOCK TABLES `comment_replies` WRITE;
/*!40000 ALTER TABLE `comment_replies` DISABLE KEYS */;
INSERT INTO `comment_replies` VALUES (1,1,1,'Claudie Klocko','domenica73@example.org','Eius sapiente quia quia consequatur sed id. Est beatae quia molestiae reprehenderit. Sit eum officiis maiores recusandae facere dolore enim. Nostrum aut atque voluptatem.','2019-09-11 01:24:35','2019-09-11 01:24:35','placeholder.jpg'),(2,2,1,'Lorine Kreiger','lemke.tressie@example.com','Aut dolore sint repellat aut id aut qui dignissimos. Eum eaque consequatur aliquam. Dolor sed maiores id numquam non.','2019-09-11 01:24:35','2019-09-11 01:24:35','placeholder.jpg'),(3,3,1,'Coty Spencer','hilpert.yoshiko@example.org','Sint voluptate repudiandae eaque doloremque consequuntur delectus dignissimos eos. Ea aliquam ipsum voluptatem quia atque autem. Est nostrum harum harum ut. Quaerat placeat nihil quasi ut.','2019-09-11 01:24:35','2019-09-11 01:24:35','placeholder.jpg'),(4,4,1,'Pamela Hagenes','botsford.bernardo@example.org','Nisi porro qui est animi sed consequuntur. Voluptas molestiae est praesentium et. Omnis optio modi labore dolor tempora adipisci hic.','2019-09-11 01:24:35','2019-09-11 01:24:35','placeholder.jpg'),(5,5,1,'Gladys O\'Connell','akoch@example.com','Ducimus quia reiciendis voluptatem sed. Quo rem neque quisquam. Est saepe aspernatur quis explicabo.','2019-09-11 01:24:35','2019-09-11 01:24:35','placeholder.jpg'),(6,6,1,'Era Auer','west.amya@example.com','Exercitationem dolor sequi illum. Fugiat cum aut accusantium mollitia eius qui. Perspiciatis facere omnis rerum ea sapiente ut voluptatum sed. Molestias vel non sequi iure.','2019-09-11 01:24:35','2019-09-11 01:24:35','placeholder.jpg'),(7,7,1,'Mr. Josiah Hodkiewicz IV','epfannerstill@example.com','Sint doloribus saepe perspiciatis accusantium deleniti. Nihil cum quisquam ullam quo. Qui at et veniam.','2019-09-11 01:24:35','2019-09-11 01:24:35','placeholder.jpg'),(8,8,1,'Prof. Jordan Upton Jr.','kiel.lueilwitz@example.com','Itaque eaque laborum quas dolor assumenda et ipsa expedita. Magni et tempora aut. Quisquam natus repudiandae fugit repellat vel consequatur et.','2019-09-11 01:24:36','2019-09-11 01:24:36','placeholder.jpg'),(9,9,1,'Rhianna Kerluke','tianna60@example.org','Odit et modi est nihil. Fuga quasi ut soluta ut cum similique. Voluptate nihil et perspiciatis dolorem praesentium.','2019-09-11 01:24:36','2019-09-11 01:24:36','placeholder.jpg'),(10,10,1,'Prof. Lane Welch IV','axel.monahan@example.org','Ducimus labore dolorum id eligendi voluptatem quia. Mollitia quo repellat repellendus totam ducimus. Dolor ut rem voluptatum ex quia. Dolorem recusandae fuga temporibus voluptatem ratione. Ipsam voluptatem veniam ut aut.','2019-09-11 01:24:36','2019-09-11 01:24:36','placeholder.jpg');
/*!40000 ALTER TABLE `comment_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT '0',
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_post_id_index` (`post_id`),
  CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,9,1,'Burdette Thiel','krunte@example.com','Eaque rerum voluptatem eligendi saepe nemo. Quia eaque aperiam aperiam dignissimos natus. Cumque repellat consectetur alias deleniti rerum.','2019-09-11 01:24:35','2019-09-11 01:24:35','placeholder.jpg'),(2,5,1,'Miss Katherine Reichert III','plubowitz@example.net','Vel amet quia earum similique voluptatum et. Veniam minus pariatur consequatur ea. Vel voluptates non unde est dolor facilis.','2019-09-11 01:24:35','2019-09-11 01:24:35','placeholder.jpg'),(3,3,1,'Lavinia Ritchie','ebert.declan@example.org','Voluptate veniam quia earum. Recusandae a soluta velit doloribus rerum.','2019-09-11 01:24:35','2019-09-11 01:24:35','placeholder.jpg'),(4,9,1,'Delores Gusikowski','rcartwright@example.com','Ut nesciunt autem quod assumenda qui animi fugiat et. Eaque laudantium totam qui mollitia. Velit illum suscipit architecto aut dolor quis. Molestias qui vero est laboriosam nulla animi.','2019-09-11 01:24:35','2019-09-11 01:24:35','placeholder.jpg'),(5,10,1,'Miss Winifred Ratke','kuvalis.bradley@example.org','Iste aut explicabo aliquid in fugit id delectus vero. Ea eum repudiandae iusto et ipsum molestiae nobis. Quia in nostrum suscipit nulla nulla sit nesciunt. Iste sit eum vero.','2019-09-11 01:24:35','2019-09-11 01:24:35','placeholder.jpg'),(6,4,1,'Miss Precious Carter I','herminio48@example.org','Aperiam quo exercitationem accusamus esse molestias. Et id in numquam fugit quis expedita facere. Rerum vero dolores dolores ea quam. Debitis laboriosam qui itaque sit.','2019-09-11 01:24:35','2019-09-11 01:24:35','placeholder.jpg'),(7,5,1,'Alysha Watsica','natalie.lindgren@example.org','Dolore molestiae facilis iure. Voluptatem temporibus saepe aut laborum ut.','2019-09-11 01:24:35','2019-09-11 01:24:35','placeholder.jpg'),(8,8,1,'Elena Kunze','armstrong.stacy@example.net','Dolorem nam sed recusandae. Tempore atque odio odit dicta illo doloremque explicabo. Aut adipisci praesentium repudiandae quaerat quis dicta autem. Et quisquam ipsum aliquam omnis. Quos expedita totam rerum enim placeat.','2019-09-11 01:24:35','2019-09-11 01:24:35','placeholder.jpg'),(9,6,1,'Owen Ortiz','bartell.daryl@example.com','Est delectus reprehenderit eaque a officia et. Facere eum quis eligendi odit ut libero hic explicabo. Et quidem id deleniti.','2019-09-11 01:24:35','2019-09-11 01:24:35','placeholder.jpg'),(10,2,1,'Raymundo Macejkovic','nettie.keebler@example.net','Corrupti sit qui mollitia occaecati tenetur accusantium tenetur. Dicta quae error id eveniet. Consequatur earum repudiandae veniam nemo vitae. Odit voluptatem facilis laborum aut. Consequuntur minus in consequatur nihil delectus accusamus nostrum nihil.','2019-09-11 01:24:35','2019-09-11 01:24:35','placeholder.jpg'),(11,2,1,'Barry Rayfield','barry.rayfield@gmail.com','This is a test','2019-09-16 14:52:08','2019-09-17 16:42:46',''),(12,2,1,'Barry Rayfield','barry.rayfield@gmail.com','Another test comment','2019-09-17 05:13:34','2019-09-17 16:43:16',''),(13,2,1,'Barry Rayfield','barry.rayfield@gmail.com','Let\'s put another comment up for moderation.','2019-09-17 05:17:12','2019-09-17 16:43:13',''),(14,2,1,'Barry Rayfield','barry.rayfield@gmail.com','one more time','2019-09-17 05:18:56','2019-09-17 16:43:11',''),(15,2,1,'Barry Rayfield','barry.rayfield@gmail.com','do ocn dbvdwbvnv','2019-09-17 05:24:36','2019-09-17 16:43:05',''),(16,2,1,'Barry Rayfield','barry.rayfield@gmail.com','rama lama ding dang','2019-09-17 05:26:17','2019-09-17 16:42:58',''),(17,2,1,'Barry Rayfield','barry.rayfield@gmail.com','nvvi ods nvcio dcn id','2019-09-17 05:27:42','2019-09-17 16:42:51',''),(18,2,1,'Barry Rayfield','barry.rayfield@gmail.com','cnduohc owudvh odhv nod','2019-09-17 05:38:15','2019-09-17 16:42:49','');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table',1),('2014_10_12_100000_create_password_resets_table',1),('2019_07_09_041605_create_roles_table',1),('2019_07_18_050725_add_photo_id_to_users',1),('2019_07_18_154702_create_photos_table',1),('2019_08_01_220052_create_posts_table',1),('2019_08_06_225206_create_categories_table',1),('2019_08_16_013917_create_comments_table',2),('2019_08_16_013957_create_comment_replies_table',2),('2019_08_19_163547_add_photo_column_to_comments',3),('2019_08_19_201331_add_photo_column_to_comments_replies',4),('2019_08_25_155338_add_slug_to_posts_table',5);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` VALUES (1,'placeholder.jpg','2019-09-11 01:24:35','2019-09-11 01:24:35');
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `photo_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_user_id_index` (`user_id`),
  KEY `posts_category_id_index` (`category_id`),
  KEY `posts_photo_id_index` (`photo_id`),
  CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,1,1,1,'Sapiente suscipit sit alias et autem maiores.','Veniam odit unde nihil velit qui quo sunt quo. Eius quo quos sed non ex eveniet. Veniam et nam corrupti pariatur laborum. Sapiente incidunt molestiae earum beatae qui iusto.\n\nA soluta rerum quod fugiat. Occaecati dolor sit ipsum totam eos. Rem alias illum officiis qui ut. Aliquam voluptate quis ab soluta.\n\nOdit ut velit magnam explicabo dolore ratione esse placeat. Et quos est eos tempore rerum.\n\nAliquam qui neque in dignissimos. Temporibus eaque tempore tempore. Fugiat a impedit laudantium voluptatem. Deserunt tenetur ab et. Enim quae eveniet dignissimos dolorum.\n\nVoluptatibus sequi voluptate architecto suscipit aut nemo et. Quia velit ullam eos voluptatem omnis consequatur. Ut architecto sit occaecati quasi molestiae at.\n\nUt dolores dicta esse ducimus eos omnis nihil provident. Consequuntur debitis ea quo unde cupiditate. Recusandae unde sed molestiae a ut impedit velit.\n\nRem vero sit aliquam labore. Nam saepe voluptatem eveniet necessitatibus nobis nisi optio. Laudantium nulla excepturi numquam minus ipsum aperiam. Facere aut veritatis quam cum quas labore iusto.\n\nQuis facere rerum quis sed quos quia. Ipsum quos officia excepturi eligendi incidunt voluptas possimus. Fugiat eaque recusandae odio. Qui itaque et iste. Vel sit magnam accusamus placeat quibusdam reiciendis laboriosam.\n\nDeserunt voluptas corporis consequuntur qui nihil. Est ea nesciunt ut voluptatibus ut soluta suscipit rerum. Aut reiciendis recusandae ex fuga reiciendis beatae.\n\nRerum non blanditiis ut quas et est ut. Sed exercitationem exercitationem assumenda magni et. Et quia hic suscipit et est aliquam dolores. Aut optio eum repellendus quae perspiciatis quisquam tempore. Et incidunt quo corrupti provident ratione rerum nihil incidunt.\n\nVoluptate aut suscipit quibusdam quasi et iste vel. Perspiciatis est voluptatem fugit quia voluptatibus repellendus voluptas. Rem suscipit dolor minus omnis. Aut aliquam expedita est eligendi.\n\nAut doloremque quos voluptas et ipsa aspernatur alias. Et pariatur eos pariatur magnam iste aperiam. Magnam in commodi laborum delectus laborum atque et. Voluptatem fuga culpa dolores ratione corporis aspernatur.\n\nQuod aut magni qui voluptatem esse ea accusantium. Id iusto ducimus consequatur tenetur tempore. Eos itaque voluptatem non et et. Deleniti earum facere est amet.\n\nVitae et libero corporis ut rem modi. Nobis ut illo alias. Sit numquam voluptatem quisquam aperiam quo repellat debitis consectetur. Alias ullam ut voluptatem mollitia molestiae ab.\n\nUt dolore dolore ut quis et. Delectus deserunt sed suscipit. Alias delectus nesciunt eos dolor accusantium.','2019-09-11 01:24:35','2019-09-11 01:24:35','sapiente-suscipit-sit-alias-et-autem-maiores'),(2,2,2,2,'Placeat iure sit quos voluptatem.','Ut illum rerum tempora. Voluptatibus hic itaque exercitationem. Ratione ut quod officia amet eligendi doloribus. Ut laboriosam architecto tempore quidem nobis odit expedita.\n\nMagnam perferendis error qui aliquam impedit assumenda. Exercitationem aliquam est soluta mollitia. Ut temporibus facilis occaecati nihil illo delectus. Optio nobis eum voluptate sed ullam. Molestiae beatae porro perferendis fugiat eveniet aliquid.\n\nDicta sunt et quam. Odio sequi laborum sed. Totam voluptatum excepturi dolor debitis necessitatibus doloremque inventore.\n\nFacere illum ipsa voluptatem commodi eius sunt. Odio qui architecto qui tempora neque corporis et. Laudantium deserunt qui ex neque. Expedita sunt distinctio odit error sint velit. Debitis tenetur qui soluta aut dolorem iste aliquid.\n\nOdio nemo amet et enim. Amet dolorem velit quos ut quis porro consequuntur. Ipsum officiis hic dolorem at sint.\n\nEveniet non nostrum ut quis consequatur officia dolores. Et aliquam fugit perferendis alias quis aut in. Quia iste qui commodi libero. Itaque et quo sit velit. Commodi voluptatibus cupiditate placeat ut.\n\nRerum tempora aut architecto officiis illo consequatur. Voluptatem ipsa nihil hic sunt ea nulla dolores. Tempora voluptatem facere et molestiae possimus sit rerum.\n\nCumque et qui odit voluptatem maxime est qui. Perferendis accusamus consectetur vel neque veritatis voluptatem. Error perspiciatis atque ipsam ea qui provident velit.\n\nTenetur earum amet in qui error officia. Ut maxime quae reprehenderit doloribus. Occaecati sed voluptatum voluptatem itaque numquam delectus facilis.\n\nEt ratione dolores et rem rerum blanditiis assumenda. Mollitia recusandae tenetur nulla est. Animi nihil et earum et. Hic et quisquam ea error deleniti sint exercitationem.\n\nNam et eos deleniti quia. Qui nobis nostrum necessitatibus laudantium aut adipisci. Sequi fuga aperiam esse.\n\nSed autem in eum qui maxime itaque. Laudantium sequi id eligendi nobis et nam quis rerum. Sint nemo voluptates velit ipsum tempore a id.','2019-09-11 01:24:35','2019-09-11 01:24:35','placeat-iure-sit-quos-voluptatem'),(3,3,5,1,'Odit aperiam laudantium placeat voluptas.','Debitis commodi recusandae sed consequuntur maxime. In cum deleniti neque dolores. Reprehenderit provident deserunt et reiciendis illum quaerat perferendis.\n\nEt at sunt praesentium ipsam culpa repudiandae veritatis. Maiores aut eaque cumque et omnis sit facere. Rem cupiditate repellendus asperiores. Nam tempore qui ratione similique. Aut eos corrupti magnam pariatur et ut blanditiis.\n\nAnimi sed necessitatibus esse. Voluptatem sequi nemo enim modi quidem. Deleniti quibusdam et at aut molestias est nam. Aspernatur at officia tempora adipisci culpa sequi.\n\nNon voluptates qui voluptas laudantium. Minus eveniet dolorem maiores numquam aut est et ipsum. Ut rerum consequatur nobis labore error sit ratione. Et neque ea est vitae.\n\nQuae laboriosam aut voluptas repellendus. Exercitationem ad amet perferendis ipsa veniam. Delectus consequuntur enim aut magnam quis nisi quos. Quidem aut quas autem laborum iusto nobis. Expedita et sunt dolores aliquam temporibus voluptatum.\n\nEst deserunt est ut voluptas minima. Aliquid natus enim quod doloremque hic. Eius tenetur aut inventore ut enim odio. Deleniti molestiae itaque quia facilis dolor fugiat.\n\nTenetur totam accusamus enim libero omnis quaerat incidunt omnis. Aut tempora aut voluptatibus aspernatur ut est sit. Cumque dolor veniam maiores aut autem sit. Et sed officiis consequatur explicabo.\n\nDignissimos sit beatae repellendus quia aut corrupti nemo. Vero id perspiciatis sequi enim quibusdam iste velit alias. Et ad eum alias eum.\n\nVoluptas est adipisci praesentium voluptas. Odit ut laborum cum ut non exercitationem. Ab consequatur ex voluptas quisquam id quam quia labore. Autem fugit dolor enim esse.\n\nIncidunt quaerat ut ut suscipit maxime quis tenetur hic. Totam omnis veniam quia laboriosam rerum et reiciendis itaque. Pariatur amet repellendus nihil error dolor et mollitia.\n\nMolestias tempore provident corrupti vel. Recusandae est deleniti qui placeat vel doloremque. Praesentium qui fugit vel ullam suscipit optio et.\n\nRepellat beatae magnam officiis quia. Cumque consequuntur est ea veritatis quisquam eligendi. Et similique officiis ad aut. Enim ut quia quos eligendi.','2019-09-11 01:24:35','2019-09-11 01:24:35','odit-aperiam-laudantium-placeat-voluptas'),(4,4,6,1,'Id rerum suscipit totam fugiat fuga magnam odit et eum.','Expedita aut fugit animi. Iusto aut aut non nulla itaque repellat.\n\nLaudantium quis dicta commodi ratione cupiditate nostrum voluptas. Dolores nostrum omnis dolorem quasi qui alias et. Iure placeat nam quos veniam.\n\nTemporibus eaque quidem corporis amet dolorum rerum ut. Ex nobis corrupti facere magni et. Et quasi quo ipsa pariatur ut fugit. Temporibus dignissimos est quo laudantium iusto velit.\n\nCum et aliquam qui suscipit perspiciatis. Autem quis cum natus adipisci iure quia. Et molestiae ipsa asperiores molestiae cumque. Est nisi consequuntur aut id sit qui at veritatis. In corrupti et non doloremque saepe ea nihil impedit.\n\nQuasi voluptates autem quaerat hic. Dolor id temporibus quam facere velit. Saepe voluptates id incidunt voluptate repudiandae.\n\nOfficiis cumque laudantium voluptas dolores dolorem. Ut aut veritatis est fugiat. Totam eos maiores deleniti qui enim ratione qui. Aut tenetur et quibusdam.\n\nQuasi et fugit laudantium aut. Totam accusamus dignissimos blanditiis. Cupiditate qui iusto tenetur dolore asperiores aut et illo.\n\nProvident delectus possimus ab et et. Temporibus dolorem assumenda blanditiis nihil dolores doloribus. Vel distinctio asperiores voluptas sapiente doloremque voluptatem error.\n\nDolor quia tempora quo odit dolores non veniam. Ipsum numquam numquam beatae autem hic quo quam. Rerum eveniet laborum enim et voluptatem neque. Quia incidunt cum odit ut suscipit debitis ut.\n\nIpsam omnis ut voluptas autem ad qui placeat. Dolorum voluptas omnis aut magnam provident. Corporis nobis eum porro asperiores rerum. Odit eos maxime explicabo ab quisquam nisi libero.\n\nCumque dolores dolor blanditiis praesentium ut sit sapiente. Aliquam maxime sit perferendis quasi eum. Officiis qui sit sed praesentium.\n\nIste quia voluptates dolorum fuga error in. Labore distinctio vel id est qui id. Quas possimus quia et. Eius dolore magnam delectus ut.','2019-09-11 01:24:35','2019-09-11 01:24:35','id-rerum-suscipit-totam-fugiat-fuga-magnam-odit-et-eum'),(5,5,7,1,'A neque eius rerum harum qui recusandae.','Consequatur expedita quasi nisi natus est ex. Tempora consequuntur ut explicabo corrupti doloribus et. Nihil vel quod et ut minima voluptatem dolor. Sit culpa dolores eaque ex corrupti dolorum.\n\nNisi non mollitia accusamus sed amet praesentium eligendi quia. Quasi ratione quia ea dicta et necessitatibus iste. Ut dolores repellat sapiente earum numquam dignissimos voluptate ut. Ex et sint et.\n\nEt facere doloremque et delectus est nobis rerum. Quia nesciunt tempora nisi itaque est exercitationem optio. A facere rerum et porro natus quaerat. Voluptatem ut non quia vel fugit.\n\nUt qui quisquam qui ducimus dolore. Ea illum rem commodi rerum fugiat unde. Repellendus nihil eos error facere. Atque maiores quo aut sit debitis.\n\nEveniet et voluptate cum dolorem. Corporis quis consequatur ratione odio tempora sit. Est quam aliquid ipsa itaque quam corporis non. Vel iure fuga minima. Autem assumenda nihil a nulla eum quod inventore.\n\nVoluptas aut est at delectus laborum. Placeat quia repudiandae corrupti vero commodi magnam. Ea non officia corporis qui quo. Suscipit qui omnis ea optio earum unde. Aspernatur blanditiis quo doloremque voluptatem est enim eligendi.\n\nUllam quos repellat iusto omnis officiis eius dignissimos. Autem voluptatem harum earum iusto. Beatae et architecto asperiores voluptates voluptas modi consequuntur.\n\nVeniam atque voluptates perferendis nisi dolor. Sapiente neque vel libero quo aut voluptatem. Sint rem et sed non vero in odit animi.\n\nEsse nostrum praesentium magni aliquid et quos earum quidem. Facere id rerum id sequi et et voluptatibus. Perspiciatis ut expedita rerum blanditiis sed.\n\nEt sit totam totam ut. Tenetur modi fugiat est accusantium. Est velit ullam consectetur dolor maxime debitis. Non consectetur in est enim vel est molestiae.\n\nDucimus quo veritatis dignissimos quia ex nesciunt est nostrum. Omnis sit praesentium aut nisi voluptatem velit. Alias illo et voluptate qui quidem omnis. Dolore quo ut consequatur inventore ducimus doloremque voluptatem ipsa.\n\nFacere assumenda sunt ad debitis. Quis porro minima velit possimus quaerat voluptatem necessitatibus. Quia blanditiis dolores sint.\n\nQuo qui non corporis excepturi similique corrupti ut non. Consequatur qui aspernatur neque praesentium quia magnam cupiditate. Velit ex sapiente sint tempore accusamus vel autem. Praesentium impedit fuga culpa autem et.\n\nOmnis modi iusto doloremque animi necessitatibus dolores. Necessitatibus nihil ad ipsam porro autem distinctio. Minima accusamus qui temporibus odio.','2019-09-11 01:24:35','2019-09-11 01:24:35','a-neque-eius-rerum-harum-qui-recusandae'),(6,6,8,1,'Suscipit quidem excepturi expedita voluptate enim.','Ullam ipsum distinctio officia aut cumque numquam totam. Quia magnam asperiores doloremque ut. Reprehenderit sit aut esse iste debitis.\n\nOdit sit esse voluptas enim optio doloremque ad. Non tempore omnis dolorem quibusdam nulla voluptas eaque corporis. Beatae ducimus ut rem voluptas velit. Quo veritatis harum perferendis nobis ut.\n\nAssumenda qui dicta ullam eaque. Voluptatem ut quia voluptatibus praesentium magnam et. Odio quis mollitia et ut exercitationem voluptatibus quaerat.\n\nTotam veniam ipsa est excepturi ipsum excepturi est. Delectus similique cupiditate quis voluptatibus. Sequi assumenda rem aliquam placeat asperiores. Aliquid eum facilis voluptas explicabo officiis quo nemo voluptates. Est qui quam ea qui sint vel facere.\n\nIpsam voluptatem asperiores corrupti pariatur quod et exercitationem. Cupiditate et et voluptatem est temporibus minima omnis voluptas. A et et quam dolor iste est impedit. Reiciendis voluptatibus accusantium consequatur et et saepe.\n\nVoluptas amet deleniti cum sint esse ut assumenda. Id et eius vel laborum. Blanditiis architecto asperiores eum excepturi et ut omnis.\n\nSequi consequatur quam dolores tempora aut modi. Nihil quia est quos minima dolorem dicta aut. Qui ratione tenetur dolorem dolores qui delectus.\n\nAut cupiditate non ipsum voluptatem. Officiis occaecati vitae dolor quasi fuga tempora. Qui aperiam consequatur aperiam magnam non nisi.\n\nNostrum perspiciatis ut iste soluta omnis. Atque quos nemo qui autem doloremque. Aliquam explicabo itaque mollitia sit accusamus.\n\nAspernatur vitae qui blanditiis labore voluptas. Consectetur rerum in non.','2019-09-11 01:24:35','2019-09-11 01:24:35','suscipit-quidem-excepturi-expedita-voluptate-enim'),(7,7,6,1,'Cumque ut non facilis ipsam molestias placeat.','Nemo corrupti iure ut dolorum. Rerum debitis totam mollitia nobis aut quia. Quisquam non vel consequatur aut quis.\n\nEst rerum voluptas atque pariatur. Vel provident voluptas doloremque nihil est sint. Autem omnis inventore sequi eum qui atque. Vel non totam aliquid consectetur et labore.\n\nIure iste quod labore nisi repudiandae. Ut recusandae ratione molestiae quia eos. Nihil nobis eum iste sed ut. Praesentium magnam aut tenetur neque illo. Eaque excepturi et quam et est.\n\nQuo consequatur fugiat beatae quo exercitationem in iste. Ut voluptatem minus temporibus aliquid et aliquam. Cumque voluptas sit aperiam consequatur et nihil.\n\nModi ea veniam enim perferendis similique praesentium repellat. Corporis dolorem nihil et natus ut quasi fuga. Doloremque animi facere ipsa sed quo aliquid et repudiandae. Error qui magni non recusandae aliquam hic modi. Voluptatem tempore maiores explicabo officia.\n\nEa doloribus quia quas. Ipsum odio eaque eos adipisci cum. Voluptas laboriosam quibusdam ea quia quia labore. Officia hic quidem vel animi.\n\nDucimus quae ea autem in. Molestiae cupiditate veritatis libero commodi aliquid veniam quod earum. Voluptatem dolore quod porro eos.\n\nOfficia eius voluptates quaerat reprehenderit iure quos. Ducimus quibusdam nisi qui itaque nihil aut. Placeat quibusdam ab quis officiis eius perspiciatis modi. Cumque commodi quo sit praesentium.\n\nMagni ea iste maxime corporis sapiente vel consectetur nihil. Et ut et laboriosam quidem velit. Et est architecto perspiciatis. Nihil sunt sit molestiae accusantium ut maxime nemo.\n\nAliquid sunt impedit reprehenderit sed hic. Totam adipisci distinctio voluptatem provident dicta.\n\nVoluptatem sit qui expedita suscipit. Quisquam recusandae consectetur qui eius labore sunt quod.\n\nEarum eveniet fuga blanditiis tempora sit. Sint fugit dolore sunt dolores commodi. Quo sed quis nisi illo expedita officiis est. Est at rerum tenetur eos.\n\nSunt eum aut esse. Enim recusandae aut harum voluptatum aut accusamus. Rem ut sint voluptas incidunt qui enim perspiciatis.\n\nQui sit omnis minima omnis at voluptatem labore. Id dolore et aliquid molestiae autem non accusantium. Numquam nostrum a cum officia minima sunt error.','2019-09-11 01:24:35','2019-09-11 01:24:35','cumque-ut-non-facilis-ipsam-molestias-placeat'),(8,8,10,1,'Voluptas rerum et enim veniam provident dolore.','Sit vero perferendis sit beatae pariatur perferendis ut cumque. Tenetur possimus tempore reiciendis qui ut voluptate. Cum recusandae nobis dolor sint facere nesciunt. Nihil voluptatum velit mollitia deserunt. Aut ipsam tenetur et consequuntur ipsum quas dolorum.\n\nQuis doloribus esse et magni. In aut illum et laudantium doloremque dolor magni. Sed maxime voluptatem eveniet libero quo pariatur sint.\n\nItaque corrupti doloribus earum ipsam qui fuga consequatur sequi. Et minus quia totam mollitia exercitationem commodi. Ipsam quibusdam iure eveniet et ut vitae praesentium. Consectetur velit adipisci distinctio quia omnis ullam omnis dolor.\n\nQuo sed aut corporis aut. Dicta molestiae ea quia tempore ullam. Quaerat esse magni ut illum rerum odio voluptatum.\n\nUnde corrupti itaque quis dolore. Rerum excepturi et esse sunt dolor alias. Ipsa sunt et magni quia qui et. Est reprehenderit quia voluptas doloribus.\n\nArchitecto tempore quia iure nisi. Molestiae sit aut unde eaque. Eaque impedit nostrum beatae est corporis.\n\nItaque aliquam id rerum autem consequatur pariatur aperiam. Porro ipsum qui similique aut. Qui itaque sit exercitationem voluptas. Placeat reiciendis possimus quia ratione.\n\nIn ipsam illum non totam aut. Tempore neque dicta velit quia provident nemo exercitationem. Nihil illo voluptas eos rem harum vel provident. Iure aperiam amet ducimus laboriosam omnis qui architecto.\n\nNecessitatibus alias eos dolor soluta. Distinctio rerum et iusto fugiat laborum dolorem explicabo sit. Voluptas qui labore quia id consequatur quia aliquam. Facilis et exercitationem officia odio a nulla voluptates at.\n\nRerum incidunt minima est nemo eum est qui. Facilis quidem ipsa eveniet necessitatibus ut voluptas. Similique optio provident expedita accusantium similique et.','2019-09-11 01:24:35','2019-09-11 01:24:35','voluptas-rerum-et-enim-veniam-provident-dolore'),(9,9,9,1,'Magnam dolorum incidunt sit aut adipisci pariatur est esse rem.','Dolores quis quaerat fugit fuga maxime. Ea eos explicabo eaque beatae quia mollitia ex. Perspiciatis illo fugit fuga molestiae est.\n\nEos voluptas aut a explicabo impedit voluptas. Mollitia dolores facere non repudiandae dicta eius. Rem ut facere eos ipsa. Molestias voluptatem nesciunt doloremque perferendis ullam ex.\n\nOmnis exercitationem eum corporis repudiandae error explicabo voluptatem. Enim omnis in excepturi delectus.\n\nAnimi voluptas possimus distinctio ut nulla aut ducimus qui. Consequatur hic est porro beatae aliquid. Vero omnis voluptatum dolor unde illum sint inventore.\n\nOfficia dolorem asperiores dignissimos autem repudiandae tempore aut. Voluptatum deleniti non sit. Soluta odio ut sit excepturi voluptas illum.\n\nNecessitatibus est in rerum et. Sit aliquid rem sed. Doloremque quae nostrum cupiditate et.\n\nUllam qui laudantium ratione eaque blanditiis culpa. Sit impedit quod repudiandae fuga. Soluta blanditiis inventore voluptatem vitae omnis nisi et. Provident soluta corrupti dolore enim.\n\nNon voluptas sed reprehenderit minus similique quae. Et illum corrupti quibusdam provident minus qui et sunt. Quod libero rerum iste.\n\nIpsam cumque sit in perspiciatis qui repellendus quis. Aut aspernatur soluta dolor assumenda et. Omnis dolore optio fugiat provident voluptatum est est. Fugit enim tenetur et.\n\nQuia ut assumenda suscipit voluptatem at dolores qui. Eum ut neque dolores voluptatum sit quasi ut. Facilis aut nihil praesentium ratione. Perspiciatis possimus non nulla veniam voluptatibus hic.\n\nAutem accusantium pariatur voluptate voluptatum doloremque repellat sed. Cumque modi cumque debitis enim iusto. Consequatur deleniti eaque qui distinctio ut. Illum sint ab corrupti sint dignissimos sint.\n\nPorro ducimus voluptatem ipsam tempore aut praesentium. Perspiciatis aliquid id neque quibusdam voluptatum culpa. Esse repellendus aspernatur omnis ut. Cupiditate et et maiores aut enim. Sed nulla atque impedit maxime aperiam nisi porro.\n\nQuasi dolore saepe ducimus aliquid et. Eos deserunt expedita commodi. Vero aut earum ratione quaerat laudantium maxime enim. Nemo placeat accusamus molestiae.\n\nTenetur esse laboriosam quia aliquid. Labore natus aut saepe ea a deleniti ut.\n\nTemporibus suscipit minima accusamus. Id quasi saepe et voluptates beatae animi enim. Quia inventore similique sunt quaerat.','2019-09-11 01:24:35','2019-09-11 01:24:35','magnam-dolorum-incidunt-sit-aut-adipisci-pariatur-est-esse-rem'),(10,10,9,1,'Qui provident cupiditate veniam consequatur placeat accusantium natus.','Incidunt voluptatem sint voluptas mollitia quod est et. Laborum sapiente ratione in voluptatem quia ut. Deleniti ullam ex perspiciatis cumque et aperiam sed.\n\nQui odio expedita ea quia qui. Enim nobis sunt quaerat. Et reprehenderit a dolorem tenetur.\n\nDolores quo et deserunt non. Qui dolore rerum quo sunt sunt. Natus ex non dolores.\n\nVoluptas officiis quia nobis reprehenderit itaque et alias. Repudiandae dolor consequatur nam voluptatem soluta dignissimos totam. Assumenda inventore labore aliquid velit impedit sint ratione explicabo. Asperiores amet impedit qui enim. Rerum velit in autem labore ex explicabo ipsa.\n\nSit pariatur et ipsam quisquam illum. Magnam quia dignissimos corrupti est ea voluptas. Laboriosam est esse ut ut.\n\nConsequatur dignissimos exercitationem ducimus dolores. Esse laudantium nihil consequatur aspernatur. Doloremque dicta eum qui animi illum recusandae mollitia laborum. Explicabo iure eveniet sunt odit.\n\nIpsum ipsa nobis amet optio omnis voluptatem possimus. Praesentium quia molestiae vel voluptatem ut est voluptas. Laboriosam quia laudantium accusamus voluptate. Odit qui ut ab voluptas perspiciatis expedita molestias. Laborum labore odit sint praesentium.\n\nQuia assumenda itaque ab esse praesentium dolores. Nostrum et molestiae officia minus error enim error. Facilis id consequatur autem ex magni consectetur numquam.\n\nEius voluptatem corporis exercitationem id. Natus temporibus sit dolor. Voluptas sed voluptatem sunt ut sed minus quos sit. Enim voluptas veniam nisi incidunt voluptatibus.\n\nIn eius at sunt sunt perferendis facilis. Labore quia quibusdam consequatur qui quod doloremque.\n\nEst rerum dolor eum neque eaque et. Occaecati dolore esse aliquid rem omnis. Id ab repellat cumque eos itaque voluptatibus molestiae quia.\n\nQui aut eum est perspiciatis quis nemo provident. Non et enim quia magnam. Vero ex aliquam reiciendis tenetur eos. Atque nam ipsam officiis explicabo itaque possimus aut. Modi rem aut et inventore ut reprehenderit nesciunt.\n\nConsectetur quas voluptatem dolores sit quo. Illo eius ut architecto sunt.\n\nUt ea labore ea et. Consequatur fuga sed vel maiores. Unde quis consequatur molestiae a. Placeat at adipisci reprehenderit omnis quisquam qui.\n\nIllo sapiente impedit qui reprehenderit dignissimos quis. Laboriosam placeat voluptas illum in pariatur. Porro enim ad veniam error earum recusandae. Quos aut officiis aut neque sunt et accusamus et.','2019-09-11 01:24:35','2019-09-11 01:24:35','qui-provident-cupiditate-veniam-consequatur-placeat-accusantium-natus');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Author','2019-09-11 01:24:35','2019-09-11 01:24:35'),(2,'Subscriber','2019-09-11 01:24:35','2019-09-11 01:24:35'),(3,'Administrator','2019-09-11 01:24:35','2019-09-11 01:24:35');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_index` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,2,0,'Erna Ondricka I','ellen21@example.net','$2y$10$2ZlxZZNF7ewkwRbID8ULtOyLBkhpW9qxOdoPDnU7n61WV1Ef1jGvO','wr6KGteB8t','2019-09-11 01:24:35','2019-09-11 01:24:35',''),(2,2,0,'Miss Leanna Mitchell V','mayert.julio@example.org','$2y$10$6ILbejJA0OXafSCHWrBEpOd1/tvnqW7Cx7BulfGbga3B5RC/3Gzky','xfEroJtEZN','2019-09-11 01:24:35','2019-09-11 01:24:35',''),(3,1,0,'Donny Tremblay','dgraham@example.org','$2y$10$a1P4NyHn4NmZhLC2PnX1Mu2ubFN4b6CdnKNfT37oDKXrZij.kJTeW','DITT3rkZS5','2019-09-11 01:24:35','2019-09-11 01:24:35',''),(4,1,0,'Robyn Murazik','slebsack@example.org','$2y$10$f9jFz9.SLAUClOTAuH9N4.t3J0sgjRIFQ96QzSTMh8LkM9An0jJRe','pIy1ujE9qE','2019-09-11 01:24:35','2019-09-11 01:24:35',''),(5,2,0,'Jeanie Dare','horace.leannon@example.org','$2y$10$tF3hlFk7pRvu9TPGixdNpOWsXdtQnre4oJE3MSmiPv1UVLgjTueXu','GBHkpfc7SV','2019-09-11 01:24:35','2019-09-11 01:24:35',''),(6,1,0,'Dr. Edwin Padberg','paula.adams@example.org','$2y$10$xnzsDUXZGpsIZesvmGt16.6.meZRYA7pLQ95Ey3SFqFKHhlaC5Eeu','VdbeCugVjS','2019-09-11 01:24:35','2019-09-11 01:24:35',''),(7,3,0,'Ms. Jacynthe Hagenes V','michel63@example.com','$2y$10$o5I0jYTperOSE74SkkjcJ.Z3F9nRpN6JiX1LXi6wTazPqdLyAfgTu','rPbQPUpzxp','2019-09-11 01:24:35','2019-09-11 01:24:35',''),(8,3,0,'Anna Rippin V','ohara.monty@example.com','$2y$10$SqqR/qOmlE8yKBPm1KD3IuPGzkBnyQulEjBO2N7khGddE9awko88a','YTFhmP5sSP','2019-09-11 01:24:35','2019-09-11 01:24:35',''),(9,2,0,'Adaline Rodriguez DDS','marianna06@example.org','$2y$10$fAAr9rzM7PWDzaS3b27.tO8uk36.3nDOAxfr35SHVuKvZjtlQbNHy','BKBXNrxY5u','2019-09-11 01:24:35','2019-09-11 01:24:35',''),(10,1,0,'Mr. Cruz Crist II','tavares.ortiz@example.org','$2y$10$9deryrXwrdH29hmWFAcGJO112fczl2WQUgz1ZynrlmKuZhb5FGsKi','GgoyOjeYqH','2019-09-11 01:24:35','2019-09-11 01:24:35',''),(11,3,1,'Barry Rayfield','barry.rayfield@gmail.com','$2y$10$wMaIqYN7ffbmIJ43YXKLVuHDjidgmyVRWCJQqMlrtG8pbZvNMHwC2','IAPhGP0DI89GpWndEuclR0p38nNEvWkf7WLD7inv0xOKbLQu0uR3rMUtO94o','2019-09-11 01:25:04','2019-09-11 01:25:04','');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-17 20:50:06
