-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 03 oct. 2020 à 22:12
-- Version du serveur :  10.4.13-MariaDB
-- Version de PHP : 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tweety`
--

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `follows`
--

CREATE TABLE `follows` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `following_user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `follows`
--

INSERT INTO `follows` (`user_id`, `following_user_id`, `created_at`, `updated_at`) VALUES
(30, 12, NULL, NULL),
(30, 23, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `tweet_id` bigint(20) UNSIGNED NOT NULL,
  `liked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `tweet_id`, `liked`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, '2020-10-02 18:46:43', '2020-10-02 19:03:29'),
(2, 2, 102, 1, '2020-10-02 19:33:29', '2020-10-02 19:38:33'),
(3, 2, 42, 1, '2020-10-03 14:13:33', '2020-10-03 14:13:33'),
(4, 28, 107, 1, '2020-10-03 15:15:30', '2020-10-03 15:15:30'),
(5, 30, 108, 1, '2020-10-03 18:05:47', '2020-10-03 18:05:47');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_09_29_155452_create_tweets_table', 1),
(5, '2020_09_29_171152_create_follows_table', 1),
(6, '2020_10_02_171133_create_likes_table', 2),
(7, '2020_10_02_204520_create_likes_table', 3);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tweets`
--

CREATE TABLE `tweets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tweets`
--

INSERT INTO `tweets` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 'wa maryouma cv?', '2020-09-30 22:55:57', '2020-09-30 22:55:57'),
(2, 3, 'Quos inventore autem vitae doloremque quia.', '2020-10-01 09:51:09', '2020-10-01 09:51:09'),
(3, 3, 'Voluptate sint fugiat et quod.', '2020-10-01 09:51:10', '2020-10-01 09:51:10'),
(4, 3, 'Et itaque ut voluptatem voluptate ea id.', '2020-10-01 09:51:10', '2020-10-01 09:51:10'),
(5, 3, 'Aut fuga delectus repellat omnis dolore.', '2020-10-01 09:51:10', '2020-10-01 09:51:10'),
(6, 3, 'Impedit velit nulla voluptatem nostrum.', '2020-10-01 09:51:11', '2020-10-01 09:51:11'),
(7, 3, 'Alias eius qui illum error rerum enim.', '2020-10-01 09:51:11', '2020-10-01 09:51:11'),
(8, 3, 'Quos quis exercitationem autem porro voluptatem omnis est.', '2020-10-01 09:51:11', '2020-10-01 09:51:11'),
(9, 3, 'Deserunt voluptatem qui dolores expedita consectetur temporibus et.', '2020-10-01 09:51:11', '2020-10-01 09:51:11'),
(10, 3, 'Eum sunt quas aut deleniti inventore suscipit.', '2020-10-01 09:51:11', '2020-10-01 09:51:11'),
(11, 3, 'Reiciendis dolorem voluptate qui dolor ut rerum.', '2020-10-01 09:51:11', '2020-10-01 09:51:11'),
(12, 4, 'Distinctio libero est unde ea id.', '2020-10-01 09:51:11', '2020-10-01 09:51:11'),
(13, 4, 'Ea mollitia sit eum voluptatem incidunt aut.', '2020-10-01 09:51:11', '2020-10-01 09:51:11'),
(14, 4, 'Doloremque adipisci qui quo inventore.', '2020-10-01 09:51:11', '2020-10-01 09:51:11'),
(15, 4, 'Id harum distinctio id fugiat repellendus.', '2020-10-01 09:51:11', '2020-10-01 09:51:11'),
(16, 4, 'Quasi et esse asperiores ut omnis itaque.', '2020-10-01 09:51:11', '2020-10-01 09:51:11'),
(17, 4, 'Laudantium sed et necessitatibus vero beatae dolore adipisci.', '2020-10-01 09:51:11', '2020-10-01 09:51:11'),
(18, 4, 'Eum illo et ducimus in qui.', '2020-10-01 09:51:11', '2020-10-01 09:51:11'),
(19, 4, 'Et harum dolor et excepturi.', '2020-10-01 09:51:11', '2020-10-01 09:51:11'),
(20, 4, 'Quo nihil quo consequatur quia.', '2020-10-01 09:51:11', '2020-10-01 09:51:11'),
(21, 4, 'Corporis culpa excepturi dolorem illum tempora.', '2020-10-01 09:51:11', '2020-10-01 09:51:11'),
(22, 5, 'Accusamus sit repudiandae quis.', '2020-10-01 09:51:11', '2020-10-01 09:51:11'),
(23, 5, 'Quae similique deleniti aspernatur qui maxime error.', '2020-10-01 09:51:11', '2020-10-01 09:51:11'),
(24, 5, 'Possimus sequi voluptate et voluptates vel voluptatum nihil.', '2020-10-01 09:51:11', '2020-10-01 09:51:11'),
(25, 5, 'Maxime doloribus aspernatur occaecati vel accusamus sunt dolorum.', '2020-10-01 09:51:11', '2020-10-01 09:51:11'),
(26, 5, 'In laborum aut laudantium sit nesciunt ab.', '2020-10-01 09:51:11', '2020-10-01 09:51:11'),
(27, 5, 'Fugit voluptas ipsum qui quidem possimus.', '2020-10-01 09:51:11', '2020-10-01 09:51:11'),
(28, 5, 'Rerum neque sapiente sunt dolores voluptatem.', '2020-10-01 09:51:11', '2020-10-01 09:51:11'),
(29, 5, 'Voluptas ut dolor necessitatibus quia est.', '2020-10-01 09:51:12', '2020-10-01 09:51:12'),
(30, 5, 'Et velit dolorem nobis velit tempore dolores.', '2020-10-01 09:51:12', '2020-10-01 09:51:12'),
(31, 5, 'Sed voluptatem porro ut officia tempora animi.', '2020-10-01 09:51:12', '2020-10-01 09:51:12'),
(32, 6, 'Et eaque labore vel consequatur.', '2020-10-01 09:51:12', '2020-10-01 09:51:12'),
(33, 6, 'Et voluptates ut quod nesciunt autem non porro iste.', '2020-10-01 09:51:12', '2020-10-01 09:51:12'),
(34, 6, 'Aut hic voluptas officia illo iure dignissimos provident.', '2020-10-01 09:51:12', '2020-10-01 09:51:12'),
(35, 6, 'Omnis excepturi perferendis minus adipisci amet error.', '2020-10-01 09:51:12', '2020-10-01 09:51:12'),
(36, 6, 'Accusantium consequatur rem facere.', '2020-10-01 09:51:12', '2020-10-01 09:51:12'),
(37, 6, 'Magni porro voluptas perferendis voluptatum maiores eos.', '2020-10-01 09:51:12', '2020-10-01 09:51:12'),
(38, 6, 'Aut ducimus aliquid quia consequatur amet vel.', '2020-10-01 09:51:12', '2020-10-01 09:51:12'),
(39, 6, 'Dolorem doloremque impedit accusantium velit.', '2020-10-01 09:51:12', '2020-10-01 09:51:12'),
(40, 6, 'Quos nesciunt ut est distinctio.', '2020-10-01 09:51:12', '2020-10-01 09:51:12'),
(41, 6, 'Veritatis consequatur odio quo eos molestiae.', '2020-10-01 09:51:12', '2020-10-01 09:51:12'),
(42, 7, 'Magnam sit vel ipsa neque.', '2020-10-01 09:51:12', '2020-10-01 09:51:12'),
(43, 7, 'Ipsam quia consequatur nisi aut.', '2020-10-01 09:51:12', '2020-10-01 09:51:12'),
(44, 7, 'In cum itaque maiores qui quis iste.', '2020-10-01 09:51:12', '2020-10-01 09:51:12'),
(45, 7, 'Veritatis omnis molestiae voluptas et natus pariatur sint.', '2020-10-01 09:51:12', '2020-10-01 09:51:12'),
(46, 7, 'Quasi occaecati quo rerum ut dolorum.', '2020-10-01 09:51:12', '2020-10-01 09:51:12'),
(47, 7, 'Soluta velit sint tenetur placeat nam.', '2020-10-01 09:51:12', '2020-10-01 09:51:12'),
(48, 7, 'Quas illo porro fugiat nostrum aut quae.', '2020-10-01 09:51:12', '2020-10-01 09:51:12'),
(49, 7, 'Consequatur quo illum in numquam id maiores sequi autem.', '2020-10-01 09:51:12', '2020-10-01 09:51:12'),
(50, 7, 'Nemo praesentium voluptas inventore.', '2020-10-01 09:51:12', '2020-10-01 09:51:12'),
(51, 7, 'Et fugit voluptates sed voluptatem tempore dolorem qui.', '2020-10-01 09:51:12', '2020-10-01 09:51:12'),
(52, 8, 'Vel incidunt sit aut nemo aliquam nostrum.', '2020-10-01 09:51:12', '2020-10-01 09:51:12'),
(53, 8, 'Qui aspernatur aut perspiciatis.', '2020-10-01 09:51:12', '2020-10-01 09:51:12'),
(54, 8, 'Necessitatibus reiciendis laudantium quidem mollitia veritatis itaque.', '2020-10-01 09:51:12', '2020-10-01 09:51:12'),
(55, 8, 'Nihil debitis sed molestiae illum.', '2020-10-01 09:51:12', '2020-10-01 09:51:12'),
(56, 8, 'Iusto quibusdam eius et.', '2020-10-01 09:51:12', '2020-10-01 09:51:12'),
(57, 8, 'Fugit nesciunt consequatur nisi commodi adipisci beatae alias.', '2020-10-01 09:51:12', '2020-10-01 09:51:12'),
(58, 8, 'Quibusdam et et earum minima porro.', '2020-10-01 09:51:12', '2020-10-01 09:51:12'),
(59, 8, 'Dolorem ad ipsum voluptatem iure esse quia eius.', '2020-10-01 09:51:13', '2020-10-01 09:51:13'),
(60, 8, 'Nesciunt aut autem quo ipsa impedit voluptates.', '2020-10-01 09:51:13', '2020-10-01 09:51:13'),
(61, 8, 'Excepturi debitis ex unde quis asperiores.', '2020-10-01 09:51:13', '2020-10-01 09:51:13'),
(62, 9, 'Quis reiciendis rerum quos asperiores quo velit id.', '2020-10-01 09:51:13', '2020-10-01 09:51:13'),
(63, 9, 'Et nostrum atque eligendi itaque autem error.', '2020-10-01 09:51:13', '2020-10-01 09:51:13'),
(64, 9, 'Qui eaque reprehenderit nesciunt nostrum minima pariatur quis.', '2020-10-01 09:51:13', '2020-10-01 09:51:13'),
(65, 9, 'Magnam atque harum iusto omnis ut.', '2020-10-01 09:51:13', '2020-10-01 09:51:13'),
(66, 9, 'Distinctio deleniti magnam quis beatae consequatur at.', '2020-10-01 09:51:13', '2020-10-01 09:51:13'),
(67, 9, 'Soluta ut cumque eveniet placeat et et.', '2020-10-01 09:51:13', '2020-10-01 09:51:13'),
(68, 9, 'Qui atque quod aut quis accusantium.', '2020-10-01 09:51:13', '2020-10-01 09:51:13'),
(69, 9, 'Enim et maxime quis quia.', '2020-10-01 09:51:13', '2020-10-01 09:51:13'),
(70, 9, 'Pariatur qui optio maiores vel aut dolorum.', '2020-10-01 09:51:13', '2020-10-01 09:51:13'),
(71, 9, 'Vero possimus nulla ut explicabo.', '2020-10-01 09:51:13', '2020-10-01 09:51:13'),
(72, 10, 'Rerum quae incidunt quasi ducimus.', '2020-10-01 09:51:13', '2020-10-01 09:51:13'),
(73, 10, 'Qui minus quia omnis quia aspernatur eos est.', '2020-10-01 09:51:13', '2020-10-01 09:51:13'),
(74, 10, 'Accusantium laborum est nesciunt nihil.', '2020-10-01 09:51:13', '2020-10-01 09:51:13'),
(75, 10, 'At quis expedita tenetur error reiciendis.', '2020-10-01 09:51:13', '2020-10-01 09:51:13'),
(76, 10, 'Qui non quis quibusdam veniam facilis dignissimos in.', '2020-10-01 09:51:13', '2020-10-01 09:51:13'),
(77, 10, 'Doloremque vel et totam dolor sed ipsum dolorum et.', '2020-10-01 09:51:13', '2020-10-01 09:51:13'),
(78, 10, 'Nihil voluptatum est tempore hic.', '2020-10-01 09:51:13', '2020-10-01 09:51:13'),
(79, 10, 'Ut itaque blanditiis vel quia aspernatur minus perspiciatis.', '2020-10-01 09:51:13', '2020-10-01 09:51:13'),
(80, 10, 'Doloremque veritatis ut quidem qui ducimus.', '2020-10-01 09:51:13', '2020-10-01 09:51:13'),
(81, 10, 'Rem et laudantium nemo laboriosam iure veritatis in.', '2020-10-01 09:51:13', '2020-10-01 09:51:13'),
(82, 11, 'In amet earum voluptate dicta.', '2020-10-01 09:51:13', '2020-10-01 09:51:13'),
(83, 11, 'Voluptatibus minus modi in ex.', '2020-10-01 09:51:13', '2020-10-01 09:51:13'),
(84, 11, 'Non iure dolorum cupiditate tenetur eum.', '2020-10-01 09:51:13', '2020-10-01 09:51:13'),
(85, 11, 'Aut nobis perspiciatis excepturi excepturi.', '2020-10-01 09:51:13', '2020-10-01 09:51:13'),
(86, 11, 'Repellat minima excepturi in est et tenetur.', '2020-10-01 09:51:13', '2020-10-01 09:51:13'),
(87, 11, 'Perspiciatis sunt unde et a dolorum in praesentium pariatur.', '2020-10-01 09:51:13', '2020-10-01 09:51:13'),
(88, 11, 'Aliquam quibusdam in iste corporis.', '2020-10-01 09:51:13', '2020-10-01 09:51:13'),
(89, 11, 'Accusantium deserunt magni ut a est hic.', '2020-10-01 09:51:13', '2020-10-01 09:51:13'),
(90, 11, 'Repellat iste ut omnis dolore.', '2020-10-01 09:51:13', '2020-10-01 09:51:13'),
(91, 11, 'Ab eveniet omnis magni et dolores unde.', '2020-10-01 09:51:13', '2020-10-01 09:51:13'),
(92, 12, 'Error ipsum dicta accusantium inventore.', '2020-10-01 09:51:14', '2020-10-01 09:51:14'),
(93, 12, 'Ut qui nostrum quibusdam consectetur est.', '2020-10-01 09:51:14', '2020-10-01 09:51:14'),
(94, 12, 'Repudiandae quibusdam et exercitationem porro.', '2020-10-01 09:51:14', '2020-10-01 09:51:14'),
(95, 12, 'Id dolorum ipsum soluta reprehenderit non voluptatem nulla.', '2020-10-01 09:51:14', '2020-10-01 09:51:14'),
(96, 12, 'Qui ratione nihil rem veritatis corporis quae.', '2020-10-01 09:51:14', '2020-10-01 09:51:14'),
(97, 12, 'Assumenda maxime et dolore impedit.', '2020-10-01 09:51:14', '2020-10-01 09:51:14'),
(98, 12, 'Veniam excepturi amet ut velit vero nihil aspernatur amet.', '2020-10-01 09:51:14', '2020-10-01 09:51:14'),
(99, 12, 'Ea eligendi et et commodi voluptatem at.', '2020-10-01 09:51:14', '2020-10-01 09:51:14'),
(100, 12, 'Perferendis et ipsa aperiam id ea nobis dolor.', '2020-10-01 09:51:14', '2020-10-01 09:51:14'),
(101, 12, 'Veritatis possimus harum error.', '2020-10-01 09:51:14', '2020-10-01 09:51:14'),
(102, 2, 'Hi how are you?', '2020-10-02 13:43:28', '2020-10-02 13:43:28'),
(103, 13, 'Hi how are you', '2020-10-02 19:09:17', '2020-10-02 19:09:17'),
(104, 13, 'Hi how are you', '2020-10-02 19:09:21', '2020-10-02 19:09:21'),
(105, 22, 'wa fathi jib wal3a', '2020-10-03 14:18:23', '2020-10-03 14:18:23'),
(106, 24, 'chneya lhal ya debbiiii', '2020-10-03 15:03:27', '2020-10-03 15:03:27'),
(107, 28, 'wa maryouma cv?', '2020-10-03 15:15:28', '2020-10-03 15:15:28'),
(108, 23, 'sayeb debii ya khraaa', '2020-10-03 16:59:11', '2020-10-03 16:59:11'),
(109, 30, 'well finally we are done with this project ^^', '2020-10-03 18:06:04', '2020-10-03 18:06:04');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `avatar`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Amy Sipes', 'Mr. Kamron Maggio DVM', NULL, 'ima.davis@example.org', '2020-10-01 09:20:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'C4LMAdSaOf', '2020-10-01 09:20:23', '2020-10-01 09:20:23'),
(4, 'Kaylin Runte', 'Lamont Robel', NULL, 'alphonso.luettgen@example.net', '2020-10-01 09:20:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eFLM6BU8gG', '2020-10-01 09:20:24', '2020-10-01 09:20:24'),
(5, 'Kayla Konopelski', 'Prof. Evelyn Moore', NULL, 'dpaucek@example.org', '2020-10-01 09:20:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zVqmNjqzgT', '2020-10-01 09:20:24', '2020-10-01 09:20:24'),
(6, 'Thurman Braun', 'Mr. Shad Reynolds III', NULL, 'vkihn@example.org', '2020-10-01 09:20:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KtuqJZ9imd', '2020-10-01 09:20:24', '2020-10-01 09:20:24'),
(7, 'Dr. Easton Hermann', 'Jean Rippin', NULL, 'pabernathy@example.org', '2020-10-01 09:20:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dMSrKNTP3C', '2020-10-01 09:20:24', '2020-10-01 09:20:24'),
(8, 'Marge Mraz IV', 'Destin Kuhlman', NULL, 'howe.lelah@example.com', '2020-10-01 09:20:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8XKrnacLsJ', '2020-10-01 09:20:24', '2020-10-01 09:20:24'),
(9, 'Jonatan Mohr III', 'Misty Crona', NULL, 'retha.cummerata@example.net', '2020-10-01 09:20:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iRXpBXkPXh', '2020-10-01 09:20:24', '2020-10-01 09:20:24'),
(10, 'Orval Turner', 'Joshua Tremblay', NULL, 'kemmer.estrella@example.org', '2020-10-01 09:20:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QE8GncLqbf', '2020-10-01 09:20:24', '2020-10-01 09:20:24'),
(11, 'Hortense Kihn', 'Miss Asia Ferry', NULL, 'stephanie.crona@example.net', '2020-10-01 09:20:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0bFi0gUoNr', '2020-10-01 09:20:24', '2020-10-01 09:20:24'),
(12, 'Miss Breanne Lemke', 'Kiarra Quigley', NULL, 'wfarrell@example.org', '2020-10-01 09:20:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rzdqHjjuaP', '2020-10-01 09:20:24', '2020-10-01 09:20:24'),
(23, 'MariemGuesmi', 'Mariem Guesmi', 'avatars/oMvTyw289pHLN0ZEoUmpP1xLAw7uiDos5tvQdTLu.jpeg', 'Ayari.hicham99@gmail.com', NULL, '$2y$10$/EwUTg5a/3nHZFKH5/PBnOB/zIjwHkd8DTeGXy6vPXMWbxSe52B3G', NULL, '2020-10-03 15:00:48', '2020-10-03 15:00:48'),
(29, 'IHEB', 'AA', 'avatars/XkWyxnpYVLH4Q03fyAfxUIvpar93sGs6rmnkJssL.jpeg', 'AA@AA.com', NULL, '$2y$10$X888lLlEjb/qVwILEJ6HUu/NKNLkOqnp2u/77Y0YWdCPNgNM/2DQC', NULL, '2020-10-03 17:46:38', '2020-10-03 18:02:54'),
(30, 'Hichemayari', 'Hichem Ayari', 'avatars/JBqzwSNotcaVzZ5tSSZ3Kdy6GT9FMNGc4nAUUO2A.jpeg', 'Ayari.hicham01@gmail.com', NULL, '$2y$10$2MjYBfATKt/t2awWlFXWkuEIJ1t0uAQz10ngsFMVp9/mYjMT1BeJK', 'bNvqZdjAZfZCOBC5DFU9NdTltJOMvV6eNfO3s7sm2VjL370K5Q12kcb59ZGA', '2020-10-03 18:04:02', '2020-10-03 18:04:34');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `follows`
--
ALTER TABLE `follows`
  ADD PRIMARY KEY (`user_id`,`following_user_id`),
  ADD KEY `follows_following_user_id_foreign` (`following_user_id`);

--
-- Index pour la table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `likes_user_id_tweet_id_unique` (`user_id`,`tweet_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `tweets`
--
ALTER TABLE `tweets`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `tweets`
--
ALTER TABLE `tweets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `follows`
--
ALTER TABLE `follows`
  ADD CONSTRAINT `follows_following_user_id_foreign` FOREIGN KEY (`following_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `follows_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
