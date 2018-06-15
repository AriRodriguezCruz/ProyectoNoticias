-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.7.19 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para proyectonoticias
CREATE DATABASE IF NOT EXISTS `proyectonoticias` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `proyectonoticias`;

-- Volcando estructura para tabla proyectonoticias.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla proyectonoticias.migrations: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(13, '2014_10_12_000000_create_users_table', 1),
	(14, '2014_10_12_100000_create_password_resets_table', 1),
	(15, '2018_06_13_004744_create_notices_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Volcando estructura para tabla proyectonoticias.notices
CREATE TABLE IF NOT EXISTS `notices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('PUBLISHED','DRAFT') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notices_user_id_foreign` (`user_id`),
  CONSTRAINT `notices_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla proyectonoticias.notices: ~21 rows (aproximadamente)
/*!40000 ALTER TABLE `notices` DISABLE KEYS */;
INSERT INTO `notices` (`id`, `user_id`, `title`, `body`, `image`, `slug`, `status`, `created_at`, `updated_at`) VALUES
	(1, 25, 'Aperiam animi sit.', 'Nam et sit quia modi. Ut voluptatum suscipit sunt minima aliquid quasi blanditiis. Eius ab iste est assumenda repellat. Beatae occaecati ullam officia officiis dolorem.\r\nEsta noticia ya esta editada', '6623-user.png', 'aperiam-animi-sit', 'DRAFT', '2018-06-13 03:31:08', '2018-06-15 03:15:00'),
	(2, 20, 'Recusandae consectetur quam illum vitae.', 'Quam pariatur error et magni excepturi. Esse at facilis velit quas facilis velit ab est. Ipsa cumque sunt illo sit quia. Et odio ut aliquid reprehenderit.', '6623-user.png', 'recusandae-consectetur-quam-illum-vitae', 'DRAFT', '2018-06-13 03:31:08', '2018-06-13 03:31:08'),
	(3, 9, 'Explicabo id aperiam est.', 'Molestiae sed recusandae eum. Nihil id laboriosam doloremque architecto eos. Aut perferendis quam harum quaerat et. Animi aut sed deleniti et excepturi quae.', '6623-user.png', 'explicabo-id-aperiam-est', 'DRAFT', '2018-06-13 03:31:09', '2018-06-13 03:31:09'),
	(4, 12, 'Maxime fugiat pariatur eum neque ad.', 'Necessitatibus eum minus inventore ut quasi saepe labore. Vel molestias facilis est. Similique debitis temporibus voluptatem odit incidunt non. Et fuga dicta corporis at ut commodi.', '6623-user.png', 'maxime-fugiat-pariatur-eum-neque-ad', 'PUBLISHED', '2018-06-13 03:31:09', '2018-06-13 03:31:09'),
	(5, 6, 'Est esse et nesciunt officiis.', 'Omnis nobis ipsa fugiat eum. Placeat ea minus est in voluptas. Enim at quia tenetur modi nulla at.', '6623-user.png', 'est-esse-et-nesciunt-officiis', 'PUBLISHED', '2018-06-13 03:31:09', '2018-06-13 03:31:09'),
	(6, 21, 'Aliquid est quam est qui.', 'Labore exercitationem molestiae incidunt. Qui eius suscipit ipsam quisquam ut quasi et. Dolores non quisquam amet quis est facilis. Est et ullam consectetur ut quo explicabo.', '6623-user.png', 'aliquid-est-quam-est-qui', 'PUBLISHED', '2018-06-13 03:31:09', '2018-06-13 03:31:09'),
	(7, 7, 'Dicta magnam tempora ad unde.', 'Dolor doloribus aut laudantium et dignissimos vel quis. Explicabo porro dignissimos soluta totam.', '6623-user.png', 'dicta-magnam-tempora-ad-unde', 'DRAFT', '2018-06-13 03:31:09', '2018-06-13 03:31:09'),
	(8, 5, 'Quos consequatur autem.', 'Blanditiis sapiente corrupti quidem excepturi deserunt cum error fuga. Quia dolore in sit numquam sit. Aut sequi et vitae quae eligendi modi officiis.', '6623-user.png', 'quos-consequatur-autem', 'DRAFT', '2018-06-13 03:31:09', '2018-06-13 03:31:09'),
	(9, 12, 'Vero alias qui exercitationem.', 'Quaerat nulla id error exercitationem velit alias voluptate. Neque deserunt ea molestias. Magni beatae libero ullam tenetur vel eveniet necessitatibus facere. Excepturi ut aut expedita.', '6623-user.png', 'vero-alias-qui-exercitationem', 'PUBLISHED', '2018-06-13 03:31:09', '2018-06-13 03:31:09'),
	(10, 14, 'Est qui nobis deleniti.', 'Omnis natus ullam vitae. Quo fuga temporibus et est doloremque qui eum. Harum esse qui eos. Quidem odit beatae culpa minus labore quis.', '6623-user.png', 'est-qui-nobis-deleniti', 'PUBLISHED', '2018-06-13 03:31:09', '2018-06-13 03:31:09'),
	(11, 9, 'Odio voluptatem recusandae nisi.', 'Officiis molestiae ullam velit est. Iure deleniti nisi ipsum. Porro odio qui magni atque laudantium est. Magni sit neque qui velit. Harum quasi cumque ducimus labore dolore occaecati eos.', '6623-user.png', 'odio-voluptatem-recusandae-nisi', 'PUBLISHED', '2018-06-13 03:31:09', '2018-06-13 03:31:09'),
	(12, 11, 'Veritatis occaecati quis.', 'Totam minima dolores qui eveniet velit officia officiis animi. Labore at quia odio voluptatem beatae ut sit. Delectus dolores aliquid rerum iure.', '6623-user.png', 'veritatis-occaecati-quis', 'PUBLISHED', '2018-06-13 03:31:09', '2018-06-13 03:31:09'),
	(13, 17, 'Qui atque vero itaque dolorum.', 'Consequuntur numquam et omnis incidunt. Commodi eaque commodi ipsum explicabo voluptatem minima quod. Molestiae sit et dolor.', '6623-user.png', 'qui-atque-vero-itaque-dolorum', 'PUBLISHED', '2018-06-13 03:31:09', '2018-06-13 03:31:09'),
	(14, 15, 'Nisi occaecati ut sed voluptates.', 'Eligendi quas et ipsam amet itaque est eius. Minus beatae expedita qui quam tempore enim.', '6623-user.png', 'nisi-occaecati-ut-sed-voluptates', 'DRAFT', '2018-06-13 03:31:09', '2018-06-13 03:31:09'),
	(15, 19, 'Ex tempore ducimus voluptatem rem qui.', 'Corrupti nihil vel reiciendis sint voluptatem. Voluptatem nulla aut in ratione qui rerum ut. Beatae sit suscipit tenetur error laudantium autem. Voluptatem ut et iste sit qui.', '6623-user.png', 'ex-tempore-ducimus-voluptatem-rem-qui', 'PUBLISHED', '2018-06-13 03:31:09', '2018-06-13 03:31:09'),
	(16, 15, 'Sit aperiam aperiam magnam.', 'Rerum voluptas molestias ea impedit ut vel praesentium odio. Itaque omnis sit aut voluptatem.', '6623-user.png', 'sit-aperiam-aperiam-magnam', 'DRAFT', '2018-06-13 03:31:09', '2018-06-13 03:31:09'),
	(17, 20, 'Enim repellendus modi ullam.', 'Enim aut nesciunt consequatur aut dolorum est. Nam blanditiis consectetur dolore est eveniet. Asperiores vel quae est ipsa minus pariatur totam ea. Sequi et aspernatur totam sed ut expedita.', '6623-user.png', 'enim-repellendus-modi-ullam', 'PUBLISHED', '2018-06-13 03:31:09', '2018-06-13 03:31:09'),
	(18, 25, 'Nisi libero voluptate sit.', 'Ad sint omnis explicaScusamus. Nisi veniam tempore qui et nihil.', '6623-user.png', 'nisi-libero-voluptate-sit', 'PUBLISHED', '2018-06-13 03:31:09', '2018-06-14 01:39:50'),
	(19, 13, 'Quos qui quibusdam hic.', 'Qui et pariatur veritatis laudantium quam ullam sequi. Est perspiciatis voluptatem in dolor ut ut necessitatibus. Laudantium facere neque ut eius repudiandae cum vitae cum.', '6623-user.png', 'quos-qui-quibusdam-hic', 'DRAFT', '2018-06-13 03:31:09', '2018-06-13 03:31:09'),
	(20, 19, 'Voluptatem vero sint architecto aut.', 'Est enim nesciunt expedita repellat. Eum eius cupiditate sint id porro odit quas. Sit harum eligendi ipsa qui.', '6623-user.png', 'voluptatem-vero-sint-architecto-aut', 'DRAFT', '2018-06-13 03:31:09', '2018-06-13 03:31:09'),
	(27, 25, 'nueva noticia', 'asasas', '6623-user.png', 'nueva', 'PUBLISHED', '2018-06-14 00:27:46', '2018-06-14 01:44:26'),
	(28, 25, 'asas', 'asas', '6623-user.png', 'asa', 'PUBLISHED', '2018-06-14 00:28:56', '2018-06-14 01:35:21'),
	(29, 25, 'dsadas', 'asdasdas', '6623-user.png', 'asd', 'PUBLISHED', '2018-06-14 03:52:01', '2018-06-14 04:13:12');
/*!40000 ALTER TABLE `notices` ENABLE KEYS */;

-- Volcando estructura para tabla proyectonoticias.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla proyectonoticias.password_resets: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Volcando estructura para tabla proyectonoticias.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla proyectonoticias.users: ~25 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Donato Beer', 'gcummings@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'VTFL4xwbk7', '2018-06-13 03:31:07', '2018-06-13 03:31:07'),
	(2, 'Grant Feest III', 'robel.ignatius@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '39eUP6Dzql', '2018-06-13 03:31:08', '2018-06-13 03:31:08'),
	(3, 'Christopher Pollich', 'gibson.morris@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'vJYW4qRRCB', '2018-06-13 03:31:08', '2018-06-13 03:31:08'),
	(4, 'Prof. Michele Buckridge', 'uebert@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'zEW3KmB8GN', '2018-06-13 03:31:08', '2018-06-13 03:31:08'),
	(5, 'Mr. Tom Gleason IV', 'goyette.vivian@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'idsRoE92kV', '2018-06-13 03:31:08', '2018-06-13 03:31:08'),
	(6, 'Gloria Haag', 'lilly38@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'EwzeQzRwjg', '2018-06-13 03:31:08', '2018-06-13 03:31:08'),
	(7, 'Daniella Daugherty', 'cummings.vesta@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'tJQnqyDbFP', '2018-06-13 03:31:08', '2018-06-13 03:31:08'),
	(8, 'Tyra Cronin', 'miller.natalie@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'gzJg9lqeGC', '2018-06-13 03:31:08', '2018-06-13 03:31:08'),
	(9, 'Devon Hudson', 'alessandro.harber@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'w28ojjvj1P', '2018-06-13 03:31:08', '2018-06-13 03:31:08'),
	(10, 'Trey Buckridge', 'ronny85@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'OYb7SHFy9S', '2018-06-13 03:31:08', '2018-06-13 03:31:08'),
	(11, 'Otilia Trantow', 'romaguera.elijah@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '3OnPzrimPA', '2018-06-13 03:31:08', '2018-06-13 03:31:08'),
	(12, 'Amos Rath DVM', 'ymosciski@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '1maQAiSOax', '2018-06-13 03:31:08', '2018-06-13 03:31:08'),
	(13, 'Wallace Pfannerstill Sr.', 'ortiz.jeffry@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'S4tk3lur7R', '2018-06-13 03:31:08', '2018-06-13 03:31:08'),
	(14, 'Ms. Jackeline Harber DVM', 'carlo71@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'OapGFPMg9u', '2018-06-13 03:31:08', '2018-06-13 03:31:08'),
	(15, 'Ms. Cordia Robel DVM', 'garret12@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'IP7NHgysMt', '2018-06-13 03:31:08', '2018-06-13 03:31:08'),
	(16, 'Dr. London Kreiger Jr.', 'ida70@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'bHT0WnH1MP', '2018-06-13 03:31:08', '2018-06-13 03:31:08'),
	(17, 'Bill Halvorson', 'murray.liza@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ZxDITXOg8B', '2018-06-13 03:31:08', '2018-06-13 03:31:08'),
	(18, 'Ryleigh Balistreri', 'lzboncak@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'qIqikqv5Rm', '2018-06-13 03:31:08', '2018-06-13 03:31:08'),
	(19, 'Miss Corene Sawayn', 'ptorphy@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ffKCou4vUI', '2018-06-13 03:31:08', '2018-06-13 03:31:08'),
	(20, 'Ms. Dasia Auer', 'maryjane.funk@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'a7jkX7oKQ5', '2018-06-13 03:31:08', '2018-06-13 03:31:08'),
	(21, 'Justine Metz V', 'gsipes@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Ef0IfMwH0J', '2018-06-13 03:31:08', '2018-06-13 03:31:08'),
	(22, 'Raquel Collins PhD', 'shyanne80@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ffHSH3d6ur', '2018-06-13 03:31:08', '2018-06-13 03:31:08'),
	(23, 'Laurie Nienow', 'pkassulke@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Yf7eprji7v', '2018-06-13 03:31:08', '2018-06-13 03:31:08'),
	(24, 'Mia Smitham II', 'qoconnell@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'JwiDLMbbKY', '2018-06-13 03:31:08', '2018-06-13 03:31:08'),
	(25, 'Christian Martinez', 'christian@firewallsoluciones.com.mx', '$2y$10$VLgtafnDpYW4uE1tv95VGuo5jf8uOiFmA6QK37NXufawO/epLu8NO', 'sHJg36SRePoioSHIJIZchXPiDON8j7LyvFjxdk3Cb7VNyORlFy7uYsxFCev3', '2018-06-13 03:31:08', '2018-06-13 03:31:08');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
