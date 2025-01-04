-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Янв 04 2025 г., 13:15
-- Версия сервера: 10.4.28-MariaDB
-- Версия PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `laravel_mimino`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'plateau-for-companies', '2024-12-18 21:56:18', NULL, NULL),
(2, 'appetizers', '2024-12-18 21:56:22', NULL, NULL),
(3, 'plateaus', '2024-12-18 21:56:23', NULL, NULL),
(4, 'soups', '2024-12-18 21:56:25', NULL, NULL),
(5, 'pastry', '2024-12-18 21:56:26', NULL, NULL),
(6, 'fish', '2024-12-18 21:56:27', NULL, NULL),
(7, 'gratins', '2024-12-18 21:56:27', NULL, NULL),
(8, 'second-courses', '2024-12-18 21:56:27', NULL, NULL),
(9, 'side-dishes', '2024-12-18 21:56:28', NULL, NULL),
(10, 'desserts', '2024-12-18 21:56:28', NULL, NULL),
(11, 'hot-drinks', '2024-12-18 21:56:28', NULL, NULL),
(12, 'authors-tea', '2024-12-18 21:56:28', NULL, NULL),
(13, 'brewed-tea', '2024-12-18 21:56:29', NULL, NULL),
(14, 'lemonades', '2024-12-18 21:56:29', NULL, NULL),
(15, 'alcoholic-cocktails', '2024-12-18 21:56:29', NULL, NULL),
(16, 'juices', '2024-12-18 21:56:30', NULL, NULL),
(17, 'fresh-juices', '2024-12-18 21:56:30', NULL, NULL),
(18, 'water', '2024-12-18 21:56:30', NULL, NULL),
(19, 'beer', '2024-12-18 21:56:30', NULL, NULL),
(20, 'nalewkas-handmade', '2024-12-18 21:56:31', NULL, NULL),
(21, 'sets', '2024-12-18 21:56:31', NULL, NULL),
(22, 'strong-alcohol', '2024-12-18 21:56:31', NULL, NULL),
(23, 'draught-wines', '2024-12-18 21:56:32', NULL, NULL),
(24, 'bottled-wines', '2024-12-18 21:56:32', NULL, NULL),
(25, 'sparkling-wines', '2024-12-18 21:56:32', NULL, NULL),
(26, 'vermouth', '2024-12-18 21:56:33', NULL, NULL),
(27, 'divin-cognac', '2024-12-18 21:56:33', NULL, NULL),
(28, 'sauces', '2024-12-18 21:56:33', NULL, NULL),
(29, 'supplements', '2024-12-18 21:56:34', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `category_translations`
--

CREATE TABLE `category_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(2) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `category_translations`
--

INSERT INTO `category_translations` (`id`, `category_id`, `locale`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'ru', 'Плато для компаний', '2024-12-18 22:16:22', NULL, NULL),
(2, 1, 'ro', 'Plato pentru companii', '2024-12-18 22:16:22', NULL, NULL),
(3, 1, 'en', 'Plateau for Companies', '2024-12-18 22:16:22', NULL, NULL),
(4, 2, 'ru', 'Закуски', '2024-12-18 22:16:22', NULL, NULL),
(5, 2, 'ro', 'Gustări', '2024-12-18 22:16:22', NULL, NULL),
(6, 2, 'en', 'Appetizers', '2024-12-18 22:16:22', NULL, NULL),
(7, 3, 'ru', 'Плато', '2024-12-18 22:16:22', NULL, NULL),
(8, 3, 'ro', 'Plato', '2024-12-18 22:16:22', NULL, NULL),
(9, 3, 'en', 'Plateaus', '2024-12-18 22:16:22', NULL, NULL),
(10, 4, 'ru', 'Супы', '2024-12-18 22:16:22', NULL, NULL),
(11, 4, 'ro', 'Supe', '2024-12-18 22:16:22', NULL, NULL),
(12, 4, 'en', 'Soups', '2024-12-18 22:16:22', NULL, NULL),
(13, 5, 'ru', 'Блюда из теста', '2024-12-18 22:16:22', NULL, NULL),
(14, 5, 'ro', 'Bucate din aluat', '2024-12-18 22:16:22', NULL, NULL),
(15, 5, 'en', 'Pastry', '2024-12-18 22:16:22', NULL, NULL),
(16, 6, 'ru', 'Рыба', '2024-12-18 22:16:22', NULL, NULL),
(17, 6, 'ro', 'Pește', '2024-12-18 22:16:22', NULL, NULL),
(18, 6, 'en', 'Fish', '2024-12-18 22:16:22', NULL, NULL),
(19, 7, 'ru', 'Блюда на гратаре', '2024-12-18 22:16:22', NULL, NULL),
(20, 7, 'ro', 'Meniu la gratar', '2024-12-18 22:16:22', NULL, NULL),
(21, 7, 'en', 'Gratins', '2024-12-18 22:16:22', NULL, NULL),
(22, 8, 'ru', 'Вторые блюда', '2024-12-18 22:16:22', NULL, NULL),
(23, 8, 'ro', 'Felul II', '2024-12-18 22:16:22', NULL, NULL),
(24, 8, 'en', 'Second Courses', '2024-12-18 22:16:22', NULL, NULL),
(25, 9, 'ru', 'Гарниры', '2024-12-18 22:16:22', NULL, NULL),
(26, 9, 'ro', 'Garnituri', '2024-12-18 22:16:22', NULL, NULL),
(27, 9, 'en', 'Side Dishes', '2024-12-18 22:16:22', NULL, NULL),
(28, 10, 'ru', 'Десерты', '2024-12-18 22:16:22', NULL, NULL),
(29, 10, 'ro', 'Deserturi', '2024-12-18 22:16:22', NULL, NULL),
(30, 10, 'en', 'Desserts', '2024-12-18 22:16:22', NULL, NULL),
(31, 11, 'ru', 'Горячие напитки', '2024-12-18 22:16:22', NULL, NULL),
(32, 11, 'ro', 'Băuturi fierbinți', '2024-12-18 22:16:22', NULL, NULL),
(33, 11, 'en', 'Hot Drinks', '2024-12-18 22:16:22', NULL, NULL),
(34, 12, 'ru', 'Чай авторский', '2024-12-18 22:16:22', NULL, NULL),
(35, 12, 'ro', 'Ceai de autor', '2024-12-18 22:16:22', NULL, NULL),
(36, 12, 'en', 'Author\'s Tea', '2024-12-18 22:16:22', NULL, NULL),
(37, 13, 'ru', 'Чай заварной', '2024-12-18 22:16:22', NULL, NULL),
(38, 13, 'ro', 'Ceai infuzie', '2024-12-18 22:16:22', NULL, NULL),
(39, 13, 'en', 'Brewed Tea', '2024-12-18 22:16:22', NULL, NULL),
(40, 14, 'ru', 'Лимонады', '2024-12-18 22:16:22', NULL, NULL),
(41, 14, 'ro', 'Limonade', '2024-12-18 22:16:22', NULL, NULL),
(42, 14, 'en', 'Lemonades', '2024-12-18 22:16:22', NULL, NULL),
(43, 15, 'ru', 'Алкогольные коктейли', '2024-12-18 22:16:22', NULL, NULL),
(44, 15, 'ro', 'Alcoholic coctails', '2024-12-18 22:16:22', NULL, NULL),
(45, 15, 'en', 'Alcoholic Cocktails', '2024-12-18 22:16:22', NULL, NULL),
(46, 16, 'ru', 'Соки', '2024-12-18 22:16:22', NULL, NULL),
(47, 16, 'ro', 'Sucuri', '2024-12-18 22:16:22', NULL, NULL),
(48, 16, 'en', 'Juices', '2024-12-18 22:16:22', NULL, NULL),
(49, 17, 'ru', 'Соки свежевыжатые', '2024-12-18 22:16:22', NULL, NULL),
(50, 17, 'ro', 'Sucuri fresh', '2024-12-18 22:16:22', NULL, NULL),
(51, 17, 'en', 'Fresh Juices', '2024-12-18 22:16:22', NULL, NULL),
(52, 18, 'ru', 'Вода', '2024-12-18 22:16:22', NULL, NULL),
(53, 18, 'ro', 'Apă', '2024-12-18 22:16:22', NULL, NULL),
(54, 18, 'en', 'Water', '2024-12-18 22:16:22', NULL, NULL),
(55, 19, 'ru', 'Пиво', '2024-12-18 22:16:22', NULL, NULL),
(56, 19, 'ro', 'Bere', '2024-12-18 22:16:22', NULL, NULL),
(57, 19, 'en', 'Beer', '2024-12-18 22:16:22', NULL, NULL),
(58, 20, 'ru', 'Наливки handmade', '2024-12-18 22:16:22', NULL, NULL),
(59, 20, 'ro', 'Nalivki handmade', '2024-12-18 22:16:22', NULL, NULL),
(60, 20, 'en', 'Nalewkas Handmade', '2024-12-18 22:16:22', NULL, NULL),
(61, 21, 'ru', 'Сеты', '2024-12-18 22:16:22', NULL, NULL),
(62, 21, 'ro', 'Seturi', '2024-12-18 22:16:22', NULL, NULL),
(63, 21, 'en', 'Sets', '2024-12-18 22:16:22', NULL, NULL),
(64, 22, 'ru', 'Крепкий алкоголь', '2024-12-18 22:16:22', NULL, NULL),
(65, 22, 'ro', 'Băuturi tari', '2024-12-18 22:16:22', NULL, NULL),
(66, 22, 'en', 'Strong Alcohol', '2024-12-18 22:16:22', NULL, NULL),
(67, 23, 'ru', 'Вино на розлив', '2024-12-18 22:16:22', NULL, NULL),
(68, 23, 'ro', 'Vin la pahar', '2024-12-18 22:16:22', NULL, NULL),
(69, 23, 'en', 'Draught Wines', '2024-12-18 22:16:22', NULL, NULL),
(70, 24, 'ru', 'Бутылочные вина', '2024-12-18 22:16:22', NULL, NULL),
(71, 24, 'ro', 'Vin la sticlă', '2024-12-18 22:16:22', NULL, NULL),
(72, 24, 'en', 'Bottled Wines', '2024-12-18 22:16:22', NULL, NULL),
(73, 25, 'ru', 'Игристые вина', '2024-12-18 22:16:22', NULL, NULL),
(74, 25, 'ro', 'Vinuri spumante', '2024-12-18 22:16:22', NULL, NULL),
(75, 25, 'en', 'Sparkling Wines', '2024-12-18 22:16:22', NULL, NULL),
(76, 26, 'ru', 'Вермут', '2024-12-18 22:16:22', NULL, NULL),
(77, 26, 'ro', 'Vermut', '2024-12-18 22:16:22', NULL, NULL),
(78, 26, 'en', 'Vermouth', '2024-12-18 22:16:22', NULL, NULL),
(79, 27, 'ru', 'Дивин/Коньяк', '2024-12-18 22:16:22', NULL, NULL),
(80, 27, 'ro', 'Divin/Cognac', '2024-12-18 22:16:22', NULL, NULL),
(81, 27, 'en', 'Divin/Cognac', '2024-12-18 22:16:22', NULL, NULL),
(82, 28, 'ru', 'Соусы', '2024-12-18 22:16:22', NULL, NULL),
(83, 28, 'ro', 'Sosuri', '2024-12-18 22:16:22', NULL, NULL),
(84, 28, 'en', 'Sauces', '2024-12-18 22:16:22', NULL, NULL),
(85, 29, 'ru', 'Добавки', '2024-12-18 22:16:22', NULL, NULL),
(86, 29, 'ro', 'Adaosuri', '2024-12-18 22:16:22', NULL, NULL),
(87, 29, 'en', 'Supplements', '2024-12-18 22:16:22', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `dishes`
--

CREATE TABLE `dishes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `is_new` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `dishes`
--

INSERT INTO `dishes` (`id`, `category_id`, `slug`, `image`, `weight`, `price`, `is_new`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'valiko-plateau', 'valiko-plateau.jpg', '750/1300', 850, 1, '2024-12-19 22:25:33', NULL, NULL),
(2, 1, 'mimino-plateau', 'mimino-plateau.jpg', '1300/1300', 1250, 1, '2024-12-19 22:25:33', NULL, NULL),
(3, 2, 'vegetable-appetizer', 'vegetable-appetizer.jpg', '230/80', 65, 1, '2024-12-19 22:25:33', NULL, NULL),
(4, 2, 'georgian-shakshuka', 'georgian-shakshuka.jpg', '200/80', 75, 0, '2024-12-19 22:25:33', NULL, NULL),
(5, 2, 'panko-chkmeruli', 'panko-chkmeruli.jpg', '200', 75, 0, '2024-12-19 22:25:33', NULL, NULL),
(6, 2, 'pepper-kakliani-with-cheese', 'pepper-kakliani-with-cheese.jpg', '200', 75, 0, '2024-12-19 22:25:33', NULL, NULL),
(7, 2, 'eggplant-kakliani-with-walnut', 'eggplant-kakliani-with-walnut.jpg', '200', 75, 0, '2024-12-19 22:25:33', NULL, NULL),
(8, 2, 'pkhali', 'pkhali.jpg', '40/40/40', 75, 0, '2024-12-19 22:25:33', NULL, NULL),
(9, 2, 'atsetsili-warm-salad', 'atsetsili-warm-salad.jpg', '300', 90, 0, '2024-12-19 22:25:33', NULL, NULL),
(10, 2, 'nateli-salad', 'nateli-salad.jpg', '200', 55, 0, '2024-12-19 22:25:33', NULL, NULL),
(11, 2, 'georgia-salad', 'georgia-salad.jpg', '220', 75, 0, '2024-12-19 22:25:33', NULL, NULL),
(12, 2, 'tbilisi-salad', 'tbilisi-salad.jpg', '220', 75, 0, '2024-12-19 22:25:33', NULL, NULL),
(13, 3, 'vegetable-plateau', 'vegetable-plateau.jpg', '490', 155, 0, '2024-12-19 22:25:33', NULL, NULL),
(14, 3, 'assorted-marinades', 'assorted-marinades.jpg', '550', 165, 0, '2024-12-19 22:25:33', NULL, NULL),
(15, 3, 'meat-plateau', 'meat-plateau.jpg', '370', 185, 0, '2024-12-19 22:25:33', NULL, NULL),
(16, 3, 'plateau-for-beer', 'plateau-for-beer.jpg', '280', 205, 0, '2024-12-19 22:25:33', NULL, NULL),
(17, 3, 'cheese-plateau', 'cheese-plateau.jpg', '325', 295, 0, '2024-12-19 22:25:33', NULL, NULL),
(18, 3, 'plateau-of-georgian-delicacies', 'plateau-of-georgian-delicacies.jpg', '270', 165, 0, '2024-12-19 22:25:33', NULL, NULL),
(19, 4, 'cheese-soup-with-mini-khinkali', 'cheese-soup-with-mini-khinkali.jpg', '450', 80, 1, '2024-12-19 22:25:33', NULL, NULL),
(20, 4, 'lamb-shurpa', 'lamb-shurpa.jpg', '450', 125, 0, '2024-12-19 22:25:33', NULL, NULL),
(21, 4, 'beef-kharcho', 'beef-kharcho.jpg', '450', 115, 0, '2024-12-19 22:25:33', NULL, NULL),
(22, 4, 'moldovan-zeama', 'moldovan-zeama.jpg', '450', 65, 0, '2024-12-19 22:25:33', NULL, NULL),
(23, 4, 'chicken-broth', 'chicken-broth.jpg', '450', 45, 0, '2024-12-19 22:25:33', NULL, NULL),
(24, 5, 'khachapuri-with-mushrooms', 'khachapuri-with-mushrooms.jpg', '540', 150, 1, '2024-12-19 22:25:33', NULL, NULL),
(25, 5, 'adjarian-khachapuri', 'adjarian-khachapuri.jpg', '460', 140, 0, '2024-12-19 22:25:33', NULL, NULL),
(26, 5, 'meat-and-cheese-kubdari', 'meat-and-cheese-kubdari.jpg', '450', 140, 0, '2024-12-19 22:25:33', NULL, NULL),
(27, 5, 'megrelian-khachapuri', 'megrelian-khachapuri.jpg', '420', 135, 0, '2024-12-19 22:25:33', NULL, NULL),
(28, 5, 'imeretian-khachapuri', 'imeretian-khachapuri.jpg', '380', 125, 0, '2024-12-19 22:25:33', NULL, NULL),
(29, 5, 'khinkali-with-spinach-and-nuts', 'khinkali-with-spinach-and-nuts.jpg', '1', 28, 0, '2024-12-19 22:25:33', NULL, NULL),
(30, 5, 'pork-and-beef-khinkali', 'pork-and-beef-khinkali.jpg', '1', 28, 0, '2024-12-19 22:25:33', NULL, NULL),
(31, 5, 'lamb-khinkali', 'lamb-khinkali.jpg', '1', 28, 0, '2024-12-19 22:25:33', NULL, NULL),
(32, 5, 'khinkali-with-cheese', 'khinkali-with-cheese.jpg', '1', 28, 0, '2024-12-19 22:25:33', NULL, NULL),
(33, 5, 'pork-and-beef-cheburek', 'pork-and-beef-cheburek.jpg', '115', 40, 0, '2024-12-19 22:25:33', NULL, NULL),
(34, 5, 'chicken-cheburek', 'chicken-cheburek.jpg', '115', 40, 0, '2024-12-19 22:25:33', NULL, NULL),
(35, 6, 'seabass-baked-with-vegetables', 'seabass-baked-with-vegetables.jpg', '225/50', 245, 0, '2024-12-19 22:25:33', NULL, NULL),
(36, 7, 'pork-neck-kebab', 'pork-neck-kebab.jpg', '250/50', 155, 0, '2024-12-19 22:25:33', NULL, NULL),
(37, 7, 'chicken-kebab', 'chicken-kebab.jpg', '250/50', 115, 0, '2024-12-19 22:25:33', NULL, NULL),
(38, 7, 'chicken-lula-kebab', 'chicken-lula-kebab.jpg', '200/50', 80, 0, '2024-12-19 22:25:33', NULL, NULL),
(39, 7, 'pork-and-beef-lula-kebab', 'pork-and-beef-lula-kebab.jpg', '200/50', 95, 0, '2024-12-19 22:25:33', NULL, NULL),
(40, 7, 'tapaka-chicken', 'tapaka-chicken.jpg', '500/50', 185, 0, '2024-12-19 22:25:33', NULL, NULL),
(41, 7, 'pork-neck-steak', 'pork-neck-stake.jpg', '200/100/50', 195, 0, '2024-12-19 22:25:33', NULL, NULL),
(42, 7, 'lamb-back', 'lamb-back.jpg', '350/50', 245, 1, '2024-12-19 22:25:33', NULL, NULL),
(43, 7, 'grilled-lamb-shoulder', 'grilled-lamb-shoulder.jpg', '600/50/50', 475, 0, '2024-12-19 22:25:33', NULL, NULL),
(44, 7, 'grilled-lamb-shank', 'grilled-lamb-shank.jpg', '850/50/50', 595, 0, '2024-12-19 22:25:33', NULL, NULL),
(45, 8, 'mimino-badrijani', 'mimino-badrijani.jpg', '400', 145, 1, '2024-12-19 22:25:33', NULL, NULL),
(46, 8, 'vegetable-adjapsandal', 'vegetable-adjapsandal.jpg', '400', 80, 0, '2024-12-19 22:25:33', NULL, NULL),
(47, 8, 'traditional-lobio', 'traditional-lobio.jpg', '400', 70, 0, '2024-12-19 22:25:33', NULL, NULL),
(48, 8, 'chicken-chahohbili', 'chicken-chahohbili.jpg', '400', 115, 0, '2024-12-19 22:25:33', NULL, NULL),
(49, 8, 'chicken-satsivi', 'chicken-satsivi.jpg', '400', 115, 0, '2024-12-19 22:25:33', NULL, NULL),
(50, 9, 'grilled-vegetables', 'grilled-vegetables.jpg', '350', 90, 0, '2024-12-19 22:25:33', NULL, NULL),
(51, 9, 'mushrooms-with-suluguni-on-ketsi', 'mushrooms-with-suluguni-on-ketsi.jpg', '120', 45, 0, '2024-12-19 22:25:33', NULL, NULL),
(52, 9, 'potatoes-from-comrade-mimino', 'potatoes-from-comrade-mimino.jpg', '300', 65, 0, '2024-12-19 22:25:33', NULL, NULL),
(53, 9, 'rustic-potatoes', 'rustic-potatoes.jpg', '250', 50, 0, '2024-12-19 22:25:33', NULL, NULL),
(54, 9, 'french-fries', 'french-fries.jpg', '150', 40, 0, '2024-12-19 22:25:33', NULL, NULL),
(55, 10, 'wine-jelly-alcoholic', 'wine-jelly-alcoholic.jpg', '150', 65, 1, '2024-12-19 22:25:33', NULL, NULL),
(56, 10, 'fruit-salad', 'fruit-salad.jpg', '170', 55, 0, '2024-12-19 22:25:33', NULL, NULL),
(57, 10, 'fruit-salad-with-ice-cream', 'fruit-salad-with-ice-cream.jpg', '170', 70, 0, '2024-12-19 22:25:33', NULL, NULL),
(58, 10, 'honey-nut-ice-cream', 'honey-nut-ice-cream.jpg', '170', 80, 0, '2024-12-19 22:25:33', NULL, NULL),
(59, 10, 'belgian-chocolate-ice-cream', 'belgian-chocolate-ice-cream.jpg', '160', 80, 0, '2024-12-19 22:25:33', NULL, NULL),
(60, 10, 'pear-strudel', 'pear-strudel.jpg', '170', 80, 0, '2024-12-19 22:25:33', NULL, NULL),
(61, 10, 'napoleon', 'napoleon.jpg', '160', 80, 0, '2024-12-19 22:25:33', NULL, NULL),
(62, 10, 'fruit-platter', 'fruit-platter.jpg', '600', 135, 0, '2024-12-19 22:25:33', NULL, NULL),
(63, 11, 'espresso', 'espresso.jpg', '30', 25, 0, '2024-12-19 22:25:33', NULL, NULL),
(64, 11, 'americano', 'americano.jpg', '90', 25, 0, '2024-12-19 22:25:33', NULL, NULL),
(65, 11, 'cappuccino', 'cappuccino.jpg', '130', 30, 0, '2024-12-19 22:25:33', NULL, NULL),
(66, 11, 'vegetal-cappuccino', 'vegetal-cappuccino.jpg', '130', 35, 0, '2024-12-19 22:25:33', NULL, NULL),
(67, 11, 'latte', 'latte.jpg', '230', 35, 0, '2024-12-19 22:25:33', NULL, NULL),
(68, 11, 'vegetal-latte', 'vegetal-latte.jpg', '230', 40, 0, '2024-12-19 22:25:33', NULL, NULL),
(69, 11, 'pumpkin-spice-latte', 'pumpkin-spice-latte.jpg', '230', 50, 0, '2024-12-19 22:25:33', NULL, NULL),
(70, 11, 'classic-izvar-alcoholic', 'classic-izvar-alcoholic.jpg', '230', 55, 1, '2024-12-19 22:25:33', NULL, NULL),
(71, 11, 'mulled-wine-rose-alcoholic', 'mulled-wine-rose-alcoholic.jpg', '240', 65, 1, '2024-12-19 22:25:33', NULL, NULL),
(72, 11, 'citrus-cocoa', 'citrus-cocoa.jpg', '280', 55, 1, '2024-12-19 22:25:33', NULL, NULL),
(73, 11, 'caramel-cappuccino', 'caramel-cappuccino.jpg', '300', 45, 0, '2024-12-19 22:25:33', NULL, NULL),
(74, 12, 'ginger-citrus', 'ginger-citrus.jpg', '600', 87, 1, '2024-12-19 22:25:33', NULL, NULL),
(75, 12, 'sea-buckthorn-citrus', 'sea-buckthorn-citrus.jpg', '600', 87, 0, '2024-12-19 22:25:33', NULL, NULL),
(76, 12, 'kiwi-tarragon', 'kiwi-tarragon.jpg', '600', 87, 0, '2024-12-19 22:25:33', NULL, NULL),
(77, 12, 'pomegranate-grapefruit', 'pomegranate-grapefruit.jpg', '600', 87, 0, '2024-12-19 22:25:33', NULL, NULL),
(78, 13, 'black-tea', 'black-tea.jpg', '500', 45, 0, '2024-12-19 22:25:33', NULL, NULL),
(79, 13, 'bergamot-black-tea', 'bergamot-black-tea.jpg', '500', 45, 0, '2024-12-19 22:25:33', NULL, NULL),
(80, 13, 'herbal-tea', 'herbal-tea.jpg', '500', 45, 0, '2024-12-19 22:25:33', NULL, NULL),
(81, 13, 'green-tea', 'green-tea.jpg', '500', 45, 0, '2024-12-19 22:25:33', NULL, NULL),
(82, 13, 'chamomile-tea', 'chamomile-tea.jpg', '500', 45, 0, '2024-12-19 22:25:33', NULL, NULL),
(83, 14, 'classic-lemonade', 'classic-lemonade.jpg', '400', 65, 1, '2024-12-19 22:25:33', NULL, NULL),
(84, 14, 'mojito', 'mojito.jpg', '400', 65, 1, '2024-12-19 22:25:33', NULL, NULL),
(85, 14, 'barberry-lemonade', 'barberry-lemonade.jpg', '400', 65, 1, '2024-12-19 22:25:33', NULL, NULL),
(86, 14, 'tarragon-lemonade', 'tarragon-lemonade.jpg', '400', 65, 0, '2024-12-19 22:25:33', NULL, NULL),
(87, 14, 'pomegranate-lemonade', 'pomegranate-lemonade.jpg', '400', 65, 0, '2024-12-19 22:25:33', NULL, NULL),
(88, 14, 'cucumber-basil', 'cucumber-basil.jpg', '400', 65, 0, '2024-12-19 22:25:33', NULL, NULL),
(89, 14, 'tangerine-sea-buckthorn', 'tangerine-sea-buckthorn.jpg', '400', 65, 0, '2024-12-19 22:25:33', NULL, NULL),
(90, 14, 'pear-lemonade', 'pear-lemonade.jpg', '400', 65, 0, '2024-12-19 22:25:33', NULL, NULL),
(91, 15, 'barberry-spritz', 'barberry-spritz.jpg', '450', 75, 0, '2024-12-19 22:25:33', NULL, NULL),
(92, 15, 'tarragon-spritz', 'tarragon-spritz.jpg', '450', 75, 0, '2024-12-19 22:25:33', NULL, NULL),
(93, 15, 'aperol-spritz', 'aperol-spritz.jpg', '450', 75, 0, '2024-12-19 22:25:33', NULL, NULL),
(94, 15, 'white-sangria', 'white-sangria.jpg', '450', 75, 0, '2024-12-19 22:25:33', NULL, NULL),
(95, 15, 'sangria-rose', 'sangria-rose.jpg', '450', 75, 0, '2024-12-19 22:25:33', NULL, NULL),
(96, 15, 'red-sangria', 'red-sangria.jpg', '450', 75, 0, '2024-12-19 22:25:33', NULL, NULL),
(97, 15, 'ice-saperavi', 'ice-saperavi.jpg', '450', 75, 0, '2024-12-19 22:25:33', NULL, NULL),
(98, 15, 'mimino-royal', 'mimino-royal.jpg', '450', 75, 0, '2024-12-19 22:25:33', NULL, NULL),
(99, 16, 'tomato-juice', 'tomato-juice.jpg', '300', 35, 0, '2024-12-19 22:25:33', NULL, NULL),
(100, 16, 'apple-juice', 'apple-juice.jpg', '300', 35, 0, '2024-12-19 22:25:33', NULL, NULL),
(101, 16, 'multifruit-juice', 'multifruit-juice.jpg', '300', 35, 0, '2024-12-19 22:25:33', NULL, NULL),
(102, 17, 'orange-fresh', 'orange-fresh.jpg', '300', 67, 0, '2024-12-19 22:25:33', NULL, NULL),
(103, 17, 'grapefruit-fresh', 'grapefruit-fresh.jpg', '300', 77, 0, '2024-12-19 22:25:33', NULL, NULL),
(104, 18, 'nabeghlavi', 'nabeghlavi.jpg', '500', 57, 0, '2024-12-19 22:25:33', NULL, NULL),
(105, 18, 'bakhmaro', 'bakhmaro.jpg', '500', 57, 0, '2024-12-19 22:25:33', NULL, NULL),
(106, 18, 'borjomi', 'borjomi.jpg', '500', 57, 0, '2024-12-19 22:25:33', NULL, NULL),
(107, 19, 'filtered-hopfenbrau', 'filtered-hopfenbrau.jpg', '400', 55, 0, '2024-12-19 22:25:33', NULL, NULL),
(108, 19, 'unfiltered-hopfenbrau', 'unfiltered-hopfenbrau.jpg', '400', 55, 0, '2024-12-19 22:25:33', NULL, NULL),
(109, 19, 'corona-extra', 'corona-extra.jpg', '330', 75, 0, '2024-12-19 22:25:33', NULL, NULL),
(110, 19, 'corona-extra-non-alcoholic', 'corona-extra-non-alcoholic.jpg', '330', 75, 0, '2024-12-19 22:25:33', NULL, NULL),
(111, 19, 'dark-franziskaner', 'dark-franziskaner.jpg', '500', 85, 0, '2024-12-19 22:25:33', NULL, NULL),
(112, 19, 'unfiltered-franziskaner-naturtrub', 'unfiltered-franziskaner-naturtrub.jpg', '500', 85, 0, '2024-12-19 22:25:33', NULL, NULL),
(113, 20, 'tarragon-nalewka', 'tarragon-nalewka.jpg', '50', 35, 0, '2024-12-19 22:25:33', NULL, NULL),
(114, 20, 'sea-buckthorn-nalewka', 'sea-buckthorn-nalewka.jpg', '50', 35, 0, '2024-12-19 22:25:33', NULL, NULL),
(115, 20, 'cherry-nalewka', 'cherry-nalewka.jpg', '50', 35, 0, '2024-12-19 22:25:33', NULL, NULL),
(116, 20, 'pear-nalewka', 'pear-nalewka.jpg', '50', 35, 0, '2024-12-19 22:25:33', NULL, NULL),
(117, 21, 'mini-nalewka-set', 'mini-nalewka-set.jpg', '100', 80, 0, '2024-12-19 22:25:33', NULL, NULL),
(118, 21, 'maxi-nalewka-set', 'maxi-nalewka-set.jpg', '200', 120, 0, '2024-12-19 22:25:33', NULL, NULL),
(119, 21, 'mini-grappa-and-relatives-set', 'mini-grappa-and-relatives-set.jpg', '100', 90, 0, '2024-12-19 22:25:33', NULL, NULL),
(120, 21, 'maxi-grappa-and-relatives-set', 'maxi-grappa-and-relatives-set.jpg', '200', 170, 0, '2024-12-19 22:25:33', NULL, NULL),
(121, 21, 'saperavi-set', 'saperavi-set.jpg', '50/50/50/50', 180, 0, '2024-12-19 22:25:33', NULL, NULL),
(122, 22, 'silver-chacha', 'silver-chacha.jpg', '50', 55, 0, '2024-12-19 22:25:33', NULL, NULL),
(123, 22, 'golden-chacha', 'golden-chacha.jpg', '50', 55, 0, '2024-12-19 22:25:33', NULL, NULL),
(124, 22, 'grappa', 'grappa.jpg', '50', 55, 0, '2024-12-19 22:25:33', NULL, NULL),
(125, 22, 'pear-rachiu', 'pear-rachiu.jpg', '50', 55, 0, '2024-12-19 22:25:33', NULL, NULL),
(126, 22, 'quince-rachiu', 'quince-rachiu.jpg', '50', 55, 0, '2024-12-19 22:25:33', NULL, NULL),
(127, 22, 'plum-tsuika', 'plum-tsuika.jpg', '50', 55, 0, '2024-12-19 22:25:33', NULL, NULL),
(128, 23, 'frizzante-small', 'frizzante-small.jpg', '130', 30, 0, '2024-12-19 22:25:33', NULL, NULL),
(129, 23, 'saperavi-wine-small', 'saperavi-wine-small.jpg', '150', 30, 0, '2024-12-19 22:25:33', NULL, NULL),
(130, 23, 'white-wine-small', 'white-wine-small.jpg', '150', 30, 0, '2024-12-19 22:25:33', NULL, NULL),
(131, 23, 'rose-wine-small', 'rose-wine-small.jpg', '150', 30, 0, '2024-12-19 22:25:33', NULL, NULL),
(132, 23, 'saperavi-timbrus', 'saperavi-timbrus.jpg', '150', 90, 0, '2024-12-19 22:25:33', NULL, NULL),
(133, 23, 'saperavi-mukuzani-georgia', 'saperavi-mukuzani-georgia.jpg', '150', 75, 0, '2024-12-19 22:25:33', NULL, NULL),
(134, 23, 'saperavi-gitana', 'saperavi-gitana.jpg', '150', 145, 0, '2024-12-19 22:25:33', NULL, NULL),
(135, 23, 'frizzante-big', 'frizzante-big.jpg', '750', 125, 0, '2024-12-19 22:25:33', NULL, NULL),
(136, 23, 'saperavi-wine-big', 'saperavi-wine-big.jpg', '750', 125, 0, '2024-12-19 22:25:33', NULL, NULL),
(137, 23, 'rose-wine-big', 'rose-wine-big.jpg', '750', 125, 0, '2024-12-19 22:25:33', NULL, NULL),
(138, 23, 'white-wine-big', 'white-wine-big.jpg', '750', 125, 0, '2024-12-19 22:25:33', NULL, NULL),
(139, 24, 'mtevino-kindzmarauli', 'mtevino-kindzmarauli.jpg', '750', 280, 0, '2024-12-19 22:25:33', NULL, NULL),
(140, 24, 'saperavi-timbrus-bottle', 'saperavi-timbrus-bottle.jpg', '750', 370, 0, '2024-12-19 22:25:33', NULL, NULL),
(141, 24, 'novac-black-saperavi-rosu', 'novac-black-saperavi-rosu.jpg', '750', 480, 0, '2024-12-19 22:25:33', NULL, NULL),
(142, 24, 'saperavi-terra-dacia', 'saperavi-terra-dacia.jpg', '750', 650, 0, '2024-12-19 22:25:33', NULL, NULL),
(143, 24, 'domeniile-pripa-saperavi-rosu', 'domeniile-pripa-saperavi-rosu.jpg', '750', 520, 0, '2024-12-19 22:25:33', NULL, NULL),
(144, 24, 'saperavi-asconi', 'saperavi-asconi.jpg', '750', 615, 0, '2024-12-19 22:25:33', NULL, NULL),
(145, 24, 'saperavi-purcari', 'saperavi-purcari.jpg', '750', 430, 0, '2024-12-19 22:25:33', NULL, NULL),
(146, 24, 'saperavi-gitana-bottle', 'saperavi-gitana-bottle.jpg', '750', 750, 0, '2024-12-19 22:25:33', NULL, NULL),
(147, 24, 'saperavi-impresario', 'saperavi-impresario.jpg', '750', 260, 0, '2024-12-19 22:25:33', NULL, NULL),
(148, 24, 'saperavi-divus', 'saperavi-divus.jpg', '750', 380, 0, '2024-12-19 22:25:33', NULL, NULL),
(149, 24, 'saperavi-novak-larga-valley', 'saperavi-novak-larga-valley.jpg', '750', 260, 0, '2024-12-19 22:25:33', NULL, NULL),
(150, 24, 'novak-orange-wine', 'novak-orange-wine.jpg', '750', 290, 0, '2024-12-19 22:25:33', NULL, NULL),
(151, 24, 'novak-rcatiteli', 'novak-rcatiteli.jpg', '750', 290, 0, '2024-12-19 22:25:33', NULL, NULL),
(152, 24, 'cricova-wild-feteasca-regala', 'cricova-wild-feteasca-regala.jpg', '750', 285, 0, '2024-12-19 22:25:33', NULL, NULL),
(153, 24, 'crama-merciesti-cherry-flower-roz', 'crama-merciesti-cherry-flower-roz.jpg', '750', 325, 0, '2024-12-19 22:25:33', NULL, NULL),
(154, 25, 'frizzante-sparkling-wine', 'frizzante-sparkling-wine.jpg', '750', 125, 0, '2024-12-19 22:25:33', NULL, NULL),
(155, 25, 'cricova-lacrima-dulce', 'cricova-lacrima-dulce.jpg', '750', 185, 0, '2024-12-19 22:25:33', NULL, NULL),
(156, 25, 'cricova-alb-brut', 'cricova-alb-brut.jpg', '750', 285, 0, '2024-12-19 22:25:33', NULL, NULL),
(157, 25, 'cricova-cuvee-prestige', 'cricova-cuvee-prestige.jpg', '750', 380, 0, '2024-12-19 22:25:33', NULL, NULL),
(158, 26, 'martini-bianco', 'martini-bianco.jpg', '70', 65, 0, '2024-12-19 22:25:33', NULL, NULL),
(159, 26, 'martini-rosso', 'martini-rosso.jpg', '70', 65, 0, '2024-12-19 22:25:33', NULL, NULL),
(160, 27, 'bardar-5-years', 'bardar-5-years.jpg', '50', 45, 0, '2024-12-19 22:25:33', NULL, NULL),
(161, 27, 'bardar-7-years', 'bardar-7-years.jpg', '50', 55, 0, '2024-12-19 22:25:33', NULL, NULL),
(162, 27, 'hennessy', 'hennessy.jpg', '50', 125, 0, '2024-12-19 22:25:33', NULL, NULL),
(163, 28, 'georgian-sauce', NULL, '50', 15, 0, '2024-12-19 22:25:33', NULL, NULL),
(164, 28, 'satsebeli-sauce', NULL, '50', 15, 0, '2024-12-19 22:25:33', NULL, NULL),
(165, 28, 'tkemali-sauce', NULL, '50', 15, 0, '2024-12-19 22:25:33', NULL, NULL),
(166, 28, 'adjika', NULL, '50', 15, 0, '2024-12-19 22:25:33', NULL, NULL),
(167, 28, 'ketchup', NULL, '50', 15, 0, '2024-12-19 22:25:33', NULL, NULL),
(168, 28, 'sour-cream', NULL, '50', 15, 0, '2024-12-19 22:25:33', NULL, NULL),
(169, 29, 'shoti', NULL, '150', 15, 0, '2024-12-19 22:25:33', NULL, NULL),
(170, 29, 'lavash', NULL, NULL, 15, 0, '2024-12-19 22:25:33', NULL, NULL),
(171, 29, 'pepper-jalapeno', NULL, '30', 15, 0, '2024-12-19 22:25:33', NULL, NULL),
(172, 29, 'pickled-onions', NULL, '30', 5, 0, '2024-12-19 22:25:33', NULL, NULL),
(173, 29, 'horse-meat', NULL, '50', 65, 0, '2024-12-19 22:25:33', NULL, NULL),
(174, 29, 'pork-rinds', NULL, '50', 65, 0, '2024-12-19 22:25:33', NULL, NULL),
(175, 29, 'beer-sausages', NULL, '50', 65, 0, '2024-12-19 22:25:33', NULL, NULL),
(176, 29, 'olives', NULL, '100', 15, 0, '2024-12-19 22:25:33', NULL, NULL),
(177, 29, 'diablo-sausages', NULL, '50', 65, 0, '2024-12-19 22:25:33', NULL, NULL),
(178, 29, 'breadcrumbs', NULL, '30', 5, 0, '2024-12-19 22:25:33', NULL, NULL),
(179, 29, 'lemon', NULL, '2', 5, 0, '2024-12-19 22:25:33', NULL, NULL),
(180, 29, 'honey', NULL, '50', 15, 0, '2024-12-19 22:25:33', NULL, NULL),
(181, 29, 'green-walnut-jam', NULL, '50', 15, 0, '2024-12-19 22:25:33', NULL, NULL),
(182, 29, 'calabria-jam', NULL, '50', 15, 0, '2024-12-19 22:25:33', NULL, NULL),
(183, 29, 'belgian-chocolate', NULL, '10', 15, 0, '2024-12-19 22:25:33', NULL, NULL),
(184, 29, 'nuts', NULL, '50', 20, 0, '2024-12-19 22:25:33', NULL, NULL),
(185, 29, 'churchkhela', NULL, '100', 40, 0, '2024-12-19 22:25:33', NULL, NULL),
(186, 29, 'dried-apricots', NULL, '50', 25, 0, '2024-12-19 22:25:33', NULL, NULL),
(187, 29, 'dried-figs', NULL, '50', 25, 0, '2024-12-19 22:25:33', NULL, NULL),
(188, 29, 'milk', NULL, '50', 5, 0, '2024-12-19 22:25:33', NULL, NULL),
(189, 29, 'vegetal-milk', NULL, '50', 7, 0, '2024-12-19 22:25:33', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `dish_translations`
--

CREATE TABLE `dish_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dish_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(2) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `unit` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `dish_translations`
--

INSERT INTO `dish_translations` (`id`, `dish_id`, `locale`, `name`, `description`, `unit`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'ru', 'Плато \"Валико\" (4-6 перс.)', 'Это настоящее кулинарное шоу, которое подается на специальном плато с эффектным горящим огнем. В его состав входят разнообразные деликатесы: куриный шашлык, люля-кебаб из курицы, люля-кебаб из свинины и говядины, а также стейк из свиной шеи. Все это сопровождается сочным запеченным картофелем и ароматными овощами на гриле. Завершается это гастрономическое произведение искусства запеканием под хрустящей корочкой хлеба. И в качестве приятного бонуса от ресторана — небольшой подарок для каждого гостя!', 'г', '2024-12-22 00:49:28', NULL, NULL),
(2, 1, 'ro', 'Platou \"Valiko\" (4-6 pers.)', 'Este un adevărat spectacol culinar, servit pe un platou special cu un efect impresionant de flacără. Acesta include diverse delicatese din carne: frigărui de pui, lula kebab de pui, lula kebab din porc și vită, precum și steak din ceafă de porc. Toate acestea sunt însoțite de cartofi copți suculenți și legume la grătar aromate. Această capodoperă gastronomică este încununată de o crustă crocantă de pâine. Și ca un bonus plăcut din partea restaurantului — un mic cadou pentru fiecare oaspete!', 'g', '2024-12-22 00:49:28', NULL, NULL),
(3, 1, 'en', 'Valiko Plateau (4-6 pers.)', 'This is a real culinary show served on a special plateau with a spectacular burning fire. It includes various delicacies: chicken kebab, chicken lulia kebab, pork and beef lulia kebab, and pork neck steak. All this is accompanied by juicy baked potatoes and flavorful grilled vegetables. This gastronomic work of art is finished with baking under crispy bread crust. And as a pleasant bonus from the restaurant - a small gift for each guest!', 'g', '2024-12-22 00:49:28', NULL, NULL),
(4, 2, 'ru', 'Плато \"Мимино\" (4-6 перс.)', 'Это настоящее кулинарное шоу, которое подается на специальном плато с эффектным горящим огнем. В его состав входят разнообразные деликатесы: ножка ягнёнка, куриный шашлык, люля-кебаб из курицы, спинка ягнёнка. Все это сопровождается сочным запеченным картофелем и ароматными овощами на гриле. Завершается это гастрономическое произведение искусства запеканием под хрустящей корочкой хлеба. И в качестве приятного бонуса от ресторана — небольшой ПОДАРОК для каждого гостя!', 'г', '2024-12-22 00:49:28', NULL, NULL),
(5, 2, 'ro', 'Platou \"Mimino\" (4-6 pers.)', 'Este un adevărat spectacol culinar, servit pe un platou special cu un efect impresionant de flacără. Acesta include diverse delicatese din carne: pulpă de miel, frigărui de pui, lula kebab de pui, spatele de miel. Toate acestea sunt însoțite de cartofi copți suculenți și legume la grătar aromate. Această capodoperă gastronomică este încununată de o crustă crocantă de pâine. Și ca un bonus plăcut din partea restaurantului — un mic CADOU pentru fiecare oaspete!', 'g', '2024-12-22 00:49:28', NULL, NULL),
(6, 2, 'en', 'Mimino Plateau (4-6 pers.)', 'This is a real culinary show served on a special plateau with a spectacular burning fire. It includes a variety of delicacies: leg of lamb, chicken kebab, chicken lula kebab, back of lamb. All this is accompanied by juicy baked potatoes and flavorful grilled vegetables. This gastronomic work of art is finished with baking under crispy bread crust. And as a pleasant bonus from the restaurant - a small GIFT for each guest!', 'g', '2024-12-22 00:49:28', NULL, NULL),
(7, 3, 'ru', 'Овощная закуска', 'Лёгкое и освежающее блюдо, идеально подходящее для начала трапезы. В её состав входят сочные томаты, лук и грузинские специи, все нарезается крупными\nкусками для сохранения их естественного вкуса и текстуры. Закуска подаётся с традиционным грузинским хлебом шоти. Это идеальное сочетание свежести и аромата, которое порадует как любителей овощей, так и ценителей грузинской кухни.', 'г', '2024-12-22 00:49:28', NULL, NULL),
(8, 3, 'ro', 'Zacusca de legume', 'Un preparat ușor și delicios, ideal pentru a începe masa. Conține roșii suculente, ceapă și condimente georgiene, toate tăiate în bucăți mari pentru a păstra gustul și textura lor naturală. Gustarea este servită cu pâinea tradițională georgiană șoti. Este combinația perfectă de prospețime și aromă, care va încânta atât iubitorii de legume, cât și pe cei care apreciază bucătăria georgiană.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(9, 3, 'en', 'Vegetable Appetizer', 'A light and refreshing dish, perfect for the start of a meal. It consists of juicy tomatoes, onions and Georgian spices, all cut in large chunks to preserve their natural flavor and texture.\nchunks to preserve their natural flavor and texture. The appetizer is served with traditional Georgian shoti bread. It is a perfect combination of freshness and flavor that will please both vegetable lovers and connoisseurs of Georgian cuisine.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(10, 4, 'ru', 'Шакшука по-грузински', 'Вкусное блюдо, приготовленное из яиц, тушенных в ароматном соусе из помидоров и специй. Это блюдо отличается насыщенным вкусом и яркими ароматами, которые делают его идеальным для завтрака или легкого обеда. Шакшука подается с шоти, традиционным грузинским хлебом, который прекрасно дополняет блюдо и позволяет насладиться каждым его ингредиентом.', 'г', '2024-12-22 00:49:28', NULL, NULL),
(11, 4, 'ro', 'Șakșuka georgiană', 'Un fel de mâncare delicios, preparat din ouă gătite într-un sos aromat de roșii și condimente. Acest fel de mâncare se remarcă prin gustul său bogat și aromele, care îl fac ideal pentru micul dejun sau un prânz ușor. Șakșuka se servește cu șoti, pâinea tradițională georgiană, care completează perfect preparatul și permite savurarea fiecărui ingredient.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(12, 4, 'en', 'Georgian Shakshuka', 'A delicious dish made with eggs braised in a flavorful sauce of tomatoes and spices. This dish has a rich taste and bright flavors that make it perfect for breakfast or a light lunch. Shakshuka is served with shoti, a traditional Georgian bread, which perfectly complements the dish and allows you to savor every ingredient.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(13, 5, 'ru', 'Чкмерули \"Панко\"', 'Грузинское блюдо, представляющее собой шарики из куриного мяса, обжаренные в хрустящей панировке. Они подаются на нежном сливочном соусе, который придаёт блюду насыщенный и кремовый вкус. Это блюдо сочетает в себе сочность курицы и ароматные специи, делая его идеальным выбором для любителей грузинской кухни.', 'г', '2024-12-22 00:49:28', NULL, NULL),
(14, 5, 'ro', 'Chkmeruli \"Panko\"', 'Chifteluțe de carne de pui prăjite într-o crustă crocantă de pesmet. Acestea sunt servite pe un sos cremos, care combină suculența puiului cu mirodenii aromate, fiind o alegere ideală pentru iubitorii bucătăriei georgiene.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(15, 5, 'en', 'Panko Chkmeruli', 'A Georgian dish, which is chicken meat balls fried in crispy breading. They are served on a delicate cream sauce, which gives the dish a rich and creamy flavor. This dish combines the juiciness of chicken and aromatic spices, making it an ideal choice for lovers of Georgian cuisine.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(16, 6, 'ru', 'Каклиани из перца c сыром', 'Перцы, фаршированные с сыром, вкусная и ароматная грузинская закуска.', 'г', '2024-12-22 00:49:28', NULL, NULL),
(17, 6, 'ro', 'Kakliani din ardei cu cașcaval', 'Ardei umpluți cu cașcaval, un preparat georgian copt, delicios și aromat.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(18, 6, 'en', 'Pepper Kakliani with Cheese', 'Peppers stuffed with cheese, a delicious and flavorful Georgian appetizer.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(19, 7, 'ru', 'Каклиани из баклажана с орехом', 'Тонкие ломтики баклажана, изысканная начинка из ароматных орехов и грузинских специй. Это пикантное и элегантное угощение, насыщенное традициями и вкусом!', 'г', '2024-12-22 00:49:28', NULL, NULL),
(20, 7, 'ro', 'Kakliani din vânată cu nuci', 'Felii subțiri de vinete coapte, rulate cu o umplutură bogată de nuci aromate și condimente georgiene. Un deliciu savuros și elegant, plin de tradiție!', 'g', '2024-12-22 00:49:28', NULL, NULL),
(21, 7, 'en', 'Eggplant Kakliani with Walnut', 'Thin slices of eggplant, exquisite filling of fragrant nuts and Georgian spices. This is a spicy and elegant treat, full of tradition and flavor!', 'g', '2024-12-22 00:49:28', NULL, NULL),
(22, 8, 'ru', 'Пхали', 'Грузинская закуска из овощей (свекла, морковь, шпинат), смешанные с молотыми орехами, чесноком и специями.', 'г', '2024-12-22 00:49:28', NULL, NULL),
(23, 8, 'ro', 'Pkhali', 'Gustare georgiană din legume(sfeclă, morcov, spanac) amestecate cu nuci măcinate, usturoi și condimente. Gugugu', 'g', '2024-12-22 00:49:28', NULL, NULL),
(24, 8, 'en', 'Pkhali', 'Georgian appetizer of vegetables (beets, carrots, spinach) mixed with ground nuts, garlic and spices.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(25, 9, 'ru', 'Салат тёплый \"Ацецили\"', 'Это изысканное блюдо грузинской кухни, которое сочетает в себе свежие овощи и нежное мясо, обжаренное до золотистой корочки. Основные ингредиенты включают сочные кусочки курицы, золотистый баклажан, свежие томаты и ароматные специи. Всё это подаётся с лёгким соусом, который придаёт салату насыщенный вкус и аромат.', 'г', '2024-12-22 00:49:28', NULL, NULL),
(26, 9, 'ro', 'Salată caldă \"Atsetsili\"', 'Salată cașdă din bucătăria georgiană, care combină legume proaspete și carne fragedă, prăjită până devine aurie. Ingredientele principale includ bucăți suculente de pui, vinete aurii, roșii proaspete și condimente aromate. Toate acestea sunt servite cu un sos ușor, care conferă salatei un gust și o aromă bogată.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(27, 9, 'en', 'Atsetsili Warm Salad', 'This is an exquisite Georgian dish that combines fresh vegetables and tender meat fried to a golden crust. The main ingredients include juicy pieces of chicken, golden eggplant, fresh tomatoes and aromatic spices. All this is served with a light sauce, which gives the salad a rich taste and flavor.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(28, 10, 'ru', 'Салат \"Nateli\"', 'Освежающая смесь хрустящей капусты и свежей моркови, вдохновленная простотой грузинской кухни. Взрыв свежести с аутентичным вкусом!', 'г', '2024-12-22 00:49:28', NULL, NULL),
(29, 10, 'ro', 'Salată \"Nateli\"', 'Un amestec revigorant de varză crocantă și morcov proaspăt, inspirat din simplitatea bucătăriei georgiene. O explozie de prospețime cu un gust autentic!', 'g', '2024-12-22 00:49:28', NULL, NULL),
(30, 10, 'en', 'Nateli Salad', 'A refreshing blend of crunchy cabbage and fresh carrots inspired by the simplicity of Georgian cuisine. An explosion of freshness with authentic flavor!', 'g', '2024-12-22 00:49:28', NULL, NULL),
(31, 11, 'ru', 'Салат \"Georgia\"', 'Свежее сочетание помидоров, огурца, лука и зелени, приправленное молотыми грецкими орехами и ароматным соусом.', 'г', '2024-12-22 00:49:28', NULL, NULL),
(32, 11, 'ro', 'Salată \"Georgia\"', 'O combinație proaspătă de roșii, castraveți, ceapă, și verdeață, asezonată cu nuci măcinate și un sos aromatic.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(33, 11, 'en', 'Georgia Salad', 'A fresh combination of tomatoes, cucumber, onions and herbs seasoned with ground walnuts and a flavorful sauce.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(34, 12, 'ru', 'Салат \"Tbilisi\"', 'Традиционный салат, включающий красную фасоль, куриное мясо, болгарский перец, красный лук, кинзу и грецкие орехи, заправленный подсолнечным маслом и уксусом, что придает ему гармоничный и насыщенный вкус.', 'г', '2024-12-22 00:49:28', NULL, NULL),
(35, 12, 'ro', 'Salată \"Tbilisi\"', 'Salată tradițională cu un amestec bogat de fasole roșie, carne de pui, ardei grași, ceapă roșie, coriandru și nuci, asezonat cu ulei de floarea-soarelui și oțet, oferind un gust echilibrat și intens.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(36, 12, 'en', 'Tbilisi Salad', 'A traditional salad including red beans, chicken meat, bell peppers, red onions, cilantro and walnuts dressed with sunflower oil and vinegar, which gives it a harmonious and rich flavor.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(37, 13, 'ru', 'Плато овощное', 'Яркий набор сезонных овощей: помидоры, хрустящие огурцы и сладкий перец. Свежий и красочный трио!', 'г', '2024-12-22 00:49:28', NULL, NULL),
(38, 13, 'ro', 'Platou de legume', 'O selecție vibrantă de legume de sezon, roșii, castraveți crocanți și ardei dulci. Un trio proasăt și plin de culoare!', 'g', '2024-12-22 00:49:28', NULL, NULL),
(39, 13, 'en', 'Vegetable Plateau', 'A vibrant array of seasonal vegetables: tomatoes, crisp cucumbers and sweet peppers. A fresh and colorful trio!', 'g', '2024-12-22 00:49:28', NULL, NULL),
(40, 14, 'ru', 'Ассорти маринадов', 'Идеальный микс, который сочетается с любым блюдом, состоящий из маринованных арбузов, патиссонов, помидоров и перцев.', 'г', '2024-12-22 00:49:28', NULL, NULL),
(41, 14, 'ro', 'Asorti de marinade', 'Mix perfect care se combină la orice mâncare, compus din pepene roșu, patisoni, roșii și ardei mărinați.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(42, 14, 'en', 'Assorted Marinades', 'A perfect mix that goes with any dish consisting of pickled watermelons, patissons, tomatoes and peppers.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(43, 15, 'ru', 'Плато мясное', 'Микс из мяса, идеально подходящий для подачи с грузинским вином и крепкими напитками. Подается с грузинским соусом.', 'г', '2024-12-22 00:49:28', NULL, NULL),
(44, 15, 'ro', 'Platou de carne', 'Un mix de carne perfect pentru a putea fi servi cu vin georgian și băuturi tari. Se servește cu sos georgian.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(45, 15, 'en', 'Meat Plateau', 'Mixed meat, ideal for serving with Georgian wine and spirits. Served with Georgian sauce.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(46, 16, 'ru', 'Плато к пиву', 'Мясо конины, свинина, аппетитные колбаски «К пиву» и острые колбаски «Диабло»- создано специально для дополнения вкуса холодного пива.', 'г', '2024-12-22 00:49:28', NULL, NULL),
(47, 16, 'ro', 'Platou la bere', 'Jerky de cal și porc bine condimentat, cârnăciori „La bere” savuroși și cârnăciori „Diablo” picanți, toate într-un platou creat special pentru a completa savoarea unei beri reci.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(48, 16, 'en', 'Plateau for Beer', 'Meat of horse meat, pork, appetizing sausages “To beer” and spicy sausages “Diablo” - created especially to complement the taste of cold beer.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(49, 17, 'ru', 'Плато сырное', 'Комбинация отборных сыров(сулугуни, имеретинский и овечий сыр), хрустящих орехов, сушеных абрикосов и сладких инжиров.', 'г', '2024-12-22 00:49:28', NULL, NULL),
(50, 17, 'ro', 'Platou cu cașcavaluri', 'O combinație de cașcavaluri selecte(suluguni, imeretinsky și brânză de oi), nuci crocante, caise uscate și smochine dulci, oferind o experiență de neuitat, inspirată din tradițiile georgiene.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(51, 17, 'en', 'Cheese Plateau', 'Combination of selected cheeses (suluguni, Imereti and sheep cheese), crunchy nuts, dried apricots and sweet figs.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(52, 18, 'ru', 'Плато грузинских деликатесов', 'Изысканный выбор грузинских деликатесов - чурчхела, орехи, сушеный инжир, сушеные абрикосы. Подается с ореховым вареньем.', 'г', '2024-12-22 00:49:28', NULL, NULL),
(53, 18, 'ro', 'Platou cu delicii georgiene', 'O selecței rafinată de delicii georgiene - churchkhela, nuci, smochine uscate, caise uscate. Se servește cu dulceață de nuci.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(54, 18, 'en', 'Plateau of Georgian Delicacies', 'Combination of selected cheeses (suluguni, Imereti and sheep cheese), crunchy nuts, dried apricots and sweet figs.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(55, 19, 'ru', 'Сырный суп с мини хинкалями', 'Это изысканное блюдо, которое сочетает в себе нежный сливочный вкус и оригинальные грузинские акценты. Основой супа является насыщенный сырный бульон. В супе подаются мини-хинкали из шпината, которые не только придают блюду яркий цвет, но и обогащают его вкусом. Начинка хинкалей состоит из нежного сыра и измельчённых орехов, создавая гармоничное сочетание текстур и ароматов. Это блюдо идеально подходит для тех, кто ценит оригинальные и насыщенные вкусы, и станет настоящим украшением вашего стола.', 'г', '2024-12-22 00:49:28', NULL, NULL),
(56, 19, 'ro', 'Supă de cașcaval cu mini khinkali', 'Acest preparat rafinat combină gustul cremos delicat cu accente georgiene originale. În supă sunt servite mini khinkali din spanac, care nu doar că adaugă bicatei o culoare vibrantă, dar îl și îmbogățesc cu savoare. Umplutura khinkali-urilor constă din cașcaval și nuci măcinate, creând o combinație armonioasă de texturi și arome. Acest preparat este ideal pentru cei care apreciază gusturile originale și bogate.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(57, 19, 'en', 'Cheese Soup with Mini Khinkali', 'This is an exquisite dish that combines delicate creamy flavor and original Georgian accents. The basis of the soup is a rich cheese broth. Mini spinach khinkali are served in the soup, which not only give the dish a bright color, but also enrich its taste. The filling of the khinkali consists of tender cheese and chopped nuts, creating a harmonious combination of textures and flavors. This dish is ideal for those who appreciate original and rich flavors, and will become a real decoration of your table.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(58, 20, 'ru', 'Шурпа из ягнёнка', 'Традиционный грузинский суп, насыщенный и ароматный, из баранины, свежих овощей и ароматных специй, предназначенный для передачи аутентичного вкуса Грузии.', 'г', '2024-12-22 00:49:28', NULL, NULL),
(59, 20, 'ro', 'Shurpa cu miel', 'Supă tradițională georgiană, consistentă și aromată din carne de miel, legume proaspete și condimente aromatice, predestinată pentru a transmite gustul autentic al Georgiei.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(60, 20, 'en', 'Lamb Shurpa', 'A traditional Georgian soup, rich and aromatic, made from lamb, fresh vegetables and fragrant spices, designed to convey the authentic taste of Georgia.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(61, 21, 'ru', 'Харчо из говядины', 'Богатый и пряный грузинский суп, приготовленный из говядины, риса и овощей с сильным ароматом и аутентичным вкусом.', 'г', '2024-12-22 00:49:28', NULL, NULL),
(62, 21, 'ro', 'Kharcho din vită', 'Supă georgiană bogată și condimentată, preparată din carne de vită, orez și legume cu aromă puternică și gust autentic.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(63, 21, 'en', 'Beef Kharcho', 'A rich and spicy Georgian soup made with beef, rice and vegetables with a strong aroma and authentic flavor.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(64, 22, 'ru', 'Зама молдавская', 'Традиционный молдавский суп с курицей и домашней лапшой. Подается с кислым квасом.', 'г', '2024-12-22 00:49:28', NULL, NULL),
(65, 22, 'ro', 'Zeamă moldovenească', 'Supă tradițională moldovenească cu carne de pui și tăiței de casă. Se servește cu borș acru.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(66, 22, 'en', 'Moldovan Zeama', 'Traditional Moldavian soup with chicken and homemade noodles. Served with sour kvass.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(67, 23, 'ru', 'Бульон куриный', 'Куриный бульон с нежным вкусом и питательными свойствами. Подаётся с крутонами.', 'г', '2024-12-22 00:49:28', NULL, NULL),
(68, 23, 'ro', 'Bulion de pui', 'Bulion de pui, cu gust delicat și propietăți nutritive. Se servește cu crutoane.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(69, 23, 'en', 'Chicken Broth', 'Chicken broth with delicate flavor and nutritional benefits. Served with croutons.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(70, 24, 'ru', 'Хачапури с грибами', 'Вкусное и сытное блюдо, которое сочетает в себе традиции грузинской кухни с оригинальными ингредиентами. Пышное тесто формируется в виде лодочки и наполняется ароматной смесью из обжаренных грибов и расплавленного сыра. Это блюдо идеально подходит для тех, кто хочет насладиться классическим вкусом с необычным акцентом.', 'г', '2024-12-22 00:49:28', NULL, NULL),
(71, 24, 'ro', 'Khachapuri cu ciuperci', 'Delicios și sățios, acest preparat combină tradițiile bucătăriei georgiene cu ingrediente originale. Aluatul pufos este modelat sub forma unei bărcuțe și umplut cu un amestec aromat de ciuperci sotate și cașcaval. Acesta bucată este ideală pentru cei care doresc să se bucure de un gust clasic cu un accent inedit.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(72, 24, 'en', 'Khachapuri with Mushrooms', 'A tasty and hearty dish that combines the traditions of Georgian cuisine with original ingredients. Puffy dough is formed in the form of a boat and filled with a flavorful mixture of fried mushrooms and melted cheese. This dish is ideal for those who want to enjoy a classic flavor with an unusual accent.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(73, 25, 'ru', 'Хачапури по-Аджарски', 'Это выпечка в форме лодочки, наполненная расплавленным сыром сулугуни и сырым яйцом в центре, которое смешивается с растопленным маслом, создавая богатую и кремовую сердцевину. Настоящий праздник вкусов, идеально подходящий для того, чтобы наслаждаться горячим и делиться с близкими.', 'г', '2024-12-22 00:49:28', NULL, NULL),
(74, 25, 'ro', 'Khachapuri Adjarian', 'Este un aluat copt în formă de barcă, umplut cu brânză suluguni topită și un ou crud în mijloc, care se amestecă cu untul topit pentru a crea un centru bogat și cremos. Un adevărat festin al gusturilor, ideal pentru a fi savurat cald și împărțit cu cei dragi.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(75, 25, 'en', 'Adjarian Khachapuri', 'This is a boat-shaped pastry filled with melted suluguni cheese and raw egg in the center, which is mixed with melted butter to create a rich and creamy core. A true feast of flavors, perfect for enjoying hot and sharing with loved ones.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(76, 26, 'ru', 'Кубдари с мясом и сыром', 'Сочетание особого вкуса и несомненной аутентичности, подлинный вкус кремового сыра, сочного мяса и кинзы, запеченного до хрустящей корочки.', 'г', '2024-12-22 00:49:28', NULL, NULL),
(77, 26, 'ro', 'Kubdari cu carne și cașcaval', 'Combinația dintre gustul deosebit și autenticitatea incontestabilă, un gust autentic de cașcaval cremos, carne suculentă și coriandru, coaptă până la o crustă crocantă.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(78, 26, 'en', 'Meat and Cheese Kubdari', 'A combination of distinctive flavor and undeniable authenticity, the authentic taste of cream cheese, succulent meat and cilantro baked to crispy perfection.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(79, 27, 'ru', 'Хачапури по-Мегрельски', 'Грузинский деликатес, покрытый щедрым слоем начинки из сыра с насыщенным вкусом, в хрустящей и золотистой корочке.', 'г', '2024-12-22 00:49:28', NULL, NULL),
(80, 27, 'ro', 'Khachapuri Megrelian', 'O delicatesă georgiană, acoperită cu un strat generos de umplutură de cașcaval cu gust intens, într-o crustă crocantă și aurie.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(81, 27, 'en', 'Megrelian Khachapuri', 'A Georgian delicacy covered with a generous layer of richly flavored cheese filling in a crispy and golden crust.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(82, 28, 'ru', 'Хачапури по-Имеритински', 'Сочетание особенного вкуса - кремовый сыр, запеченный до хрустящей корочки.', 'г', '2024-12-22 00:49:28', NULL, NULL),
(83, 28, 'ro', 'Khinkali de spanac și nuci', 'Acest preparat rafinat combină gustul cremos delicat cu accente georgiene originale. În supă sunt servite mini khinkali din spanac, care nu doar că adaugă bucatei o culoare vibrantă, dar îl și îmbogățesc cu savoare. Umplutura de khinkali constă din cașcaval și nuci măcinate, creând o combinație armonioasă de texturi și arome. Acest preparat este ideal pentru cei care apreciază gusturile originale și bogate.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(84, 28, 'en', 'Khinkali with Spinach and Nuts', 'This is an original dish that attracts attention with its bright green color. The dough cooked with spinach not only gives the khinkali a rich color, but also enriches its flavor. Inside the khinkali hides a delicate cheese filling with chopped nuts, creating a harmonious combination of creamy texture and nutty flavor. These khinkali will be an excellent choice for those who are looking for new flavor experiences and appreciate culinary experiments.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(85, 29, 'ru', 'Хинкали со шпинатом и орехами', 'Это оригинальное блюдо, которое привлекает внимание своим ярким зелёным цветом. Тесто, приготовленное со шпинатом, не только придаёт хинкалям насыщенный оттенок, но и обогащает их вкус. Внутри хинкали скрывается нежная сырная начинка с добавлением измельчённых орехов, создающая гармоничное сочетание кремовой текстуры и орехового аромата. Эти хинкали станут отличным выбором для тех, кто ищет новые вкусовые впечатления и ценит кулинарные эксперименты.', 'шт', '2024-12-22 00:49:28', NULL, NULL),
(86, 29, 'ro', 'Khachapuri Imeretian', 'Combinația dintre gustul deosebit și autenticitatea incontestabilă, un gust autentic de cașcaval cremos și coaptă până la o crustă crocantă.', 'buc', '2024-12-22 00:49:28', NULL, NULL),
(87, 29, 'en', 'Imeretian Khachapuri', 'A combination of special flavor - cream cheese baked to a crisp.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(88, 30, 'ru', 'Хинкали свинина с говядиной', 'Хинкали, фаршированные сочной смесью свинины и говядины, приправленные ароматными специями. Содержит кинзу.', 'шт', '2024-12-22 00:49:28', NULL, NULL),
(89, 30, 'ro', 'Khinkali porc-vită', 'Khinkali umplute cu o combinație suculentă din carne de porc și vită, amestecată cu condimente aromate. Conține kinza.', 'buc', '2024-12-22 00:49:28', NULL, NULL),
(90, 30, 'en', 'Pork and Beef Khinkali', 'Khinkali stuffed with a juicy mixture of pork and beef, seasoned with aromatic spices. Contains cilantro.', 'piece', '2024-12-22 00:49:28', NULL, NULL),
(91, 31, 'ru', 'Хинкали с бараниной', 'Хинкали, фаршированные бараниной с кинзой. ВНИМАНИЕ - очень сочно! Содержит кинзу.', 'шт', '2024-12-22 00:49:28', NULL, NULL),
(92, 31, 'ro', 'Khinkali cu miel', 'Khinkali umplute cu carne de miel condimentată. Conține kinza.', 'buc', '2024-12-22 00:49:28', NULL, NULL),
(93, 31, 'en', 'Lamb Khinkali', 'Khinkali stuffed with lamb and cilantro. ATTENTION - very juicy! Contains cilantro.', 'piece', '2024-12-22 00:49:28', NULL, NULL),
(94, 32, 'ru', 'Хинкали с сыром', 'Хинкали, фаршированные вкусной смесью расплавленного сыра и ароматных специй.', 'шт', '2024-12-22 00:49:28', NULL, NULL),
(95, 32, 'ro', 'Khinkali cu cașcaval', 'Khinkali umplute cu un amestec delicios de cașcaval topit și condimente aromatice.', 'buc', '2024-12-22 00:49:28', NULL, NULL),
(96, 32, 'en', 'Cheese Khinkali', 'Hinkali stuffed with a delicious blend of melted cheese and flavorful spices.', 'piece', '2024-12-22 00:49:28', NULL, NULL),
(97, 33, 'ru', 'Чебурек свинина с говядиной', 'Хрустящий чебурек, фаршированный сочной смесью свиного и говяжьего фарша, приправленный ароматными специями. Внимание, очень сочный! Содержит кинзу.', 'г', '2024-12-22 00:49:28', NULL, NULL),
(98, 33, 'ro', 'Cheburek porc-vită', 'Cheburek crocant umplut cu un amestec suculent de carne tocată de porc și vită, asezonat cu condimente aromate. Atenție, este foarte suculent! Conține kinza.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(99, 33, 'en', 'Pork and Beef Cheburek', 'Crispy cheburek stuffed with a juicy mixture of pork and beef minced meat, seasoned with aromatic spices. Attention, very juicy! Contains cilantro.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(100, 34, 'ru', 'Чебурек с курицей', 'Хрустящий чебурек, фаршированный куриным фаршем, смешанным с приправами и зеленью. Внимание, очень сочный!', 'г', '2024-12-22 00:49:28', NULL, NULL),
(101, 34, 'ro', 'Cheburek cu pui', 'Chebureck crocant, umplut cu carne tocată de pui, amestecată cu condimente și verdeață. Atenție, este foarte suculent!', 'g', '2024-12-22 00:49:28', NULL, NULL),
(102, 34, 'en', 'Chicken Cheburek', 'Crispy cheburek stuffed with minced chicken mixed with seasonings and herbs. Attention, very juicy!', 'g', '2024-12-22 00:49:28', NULL, NULL),
(103, 35, 'ru', 'Сибас печеный с овощами', 'Запеченное в духовке нежное филе сибаса, подается с печеными овощами: помидорами, оливками, сладким перцем, создавая идеальный баланс вкусов и текстур.', 'г', '2024-12-22 00:49:28', NULL, NULL),
(104, 35, 'ro', 'Sibas copt cu legume', 'Fileu de sebas fraged la cuptor, servit cu legume coapte: roșii, olive, ardei dulce, care creează un echilibru perfect de gusturi și texturi.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(105, 35, 'en', 'Sea Bass Baked with Vegetables', 'Oven-baked tender sea bass fillet served with roasted vegetables: tomatoes, olives, sweet peppers, creating a perfect balance of flavors and textures.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(106, 36, 'ru', 'Шашлык из свиной шейки', 'Нежные кусочки подкопченной свиной шеи, маринованные в ароматных специях, подаются на лаваше с красным луком и гранатом для насыщенного и аутентичного вкуса. Подается с грузинским соусом.', 'г', '2024-12-22 00:49:28', NULL, NULL),
(107, 36, 'ro', 'Frigărui din ceafă de porc', 'Bucăți fragede de carne de ceafă de porc mărinată în condimente aromate, care se servește pe lăvaș, ceapă roșie și rodie pentru un gust intens și autentic. Se servește cu sos georgian.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(108, 36, 'en', 'Pork Neck Kebab', 'Tender slices of smoked pork neck marinated in aromatic spices, served on pita bread with red onions and pomegranate for a rich and authentic taste. Served with Georgian sauce.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(109, 37, 'ru', 'Шашлык из куриного мяса', 'Маринованное куриное мясо, богатое ароматами, красный лук, гранат и лаваш добавляют деликатною и хрустящую нотку, создавая вкусный контраст с сочным мясом. Подается с грузинским соусом.', 'г', '2024-12-22 00:49:28', NULL, NULL),
(110, 37, 'ro', 'Frigărui de pui', 'Carne de pui mărinat, bogat în arome, ceapă roșie, rodie și lavașul adaugă o notă rustică și crocantă, oferind un contrast delicios cu carnea suculentă. Se servește cu sos georgian.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(111, 37, 'en', 'Chicken Kebab', 'Marinated chicken meat rich in flavors, red onions, pomegranate and pita bread add a delicate and crunchy touch, creating a delicious contrast to the succulent meat. Served with Georgian sauce.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(112, 38, 'ru', 'Люля кебаб куриный', 'Люля из куриного фарша подается на лаваше вместе с красным луком и гранатом для вкусного контраста ароматов. Подается с грузинским соусо', 'г', '2024-12-22 00:49:28', NULL, NULL),
(113, 38, 'ro', 'Lula kebab din pui', 'Tocătura de pui este servită pe lavaș împreună cu ceapă roșie și rodie, pentru un contrast delicios de arome. Se servește cu sos georgian.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(114, 38, 'en', 'Chicken Lula Kebab', 'Ground chicken lulia served on pita bread along with red onions and pomegranate for a delicious contrast of flavors. Served with Georgian sauce', 'g', '2024-12-22 00:49:28', NULL, NULL),
(115, 39, 'ru', 'Люля кебаб свинина с говядиной', 'Сочная смесь из свинины и говядины, приправленная специями, подается на лаваше с красным луком и гранатом для вкусного контраста. Подается с грузинским соусом.', 'г', '2024-12-22 00:49:28', NULL, NULL),
(116, 39, 'ro', 'Lula kebab din porc-vită', 'Carne suculentă din porc-vită tocată, aromatizate cu condimente, servite pe lavaș cu ceapă roșie și rodie pentru uncontrast savuros. Se servește cu sos georgian.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(117, 39, 'en', 'Pork and Beef Lula Kebab', 'A juicy mixture of pork and beef, seasoned with spices, served on pita bread with red onions and pomegranate for a delicious contrast. Served with Georgian sauce.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(118, 40, 'ru', 'Цыпленок \"Тапака\"', 'Мясо с хрустящей корочкой снаружи и сочное внутри, маринованное в аджике и приготовленное по грузинскому рецепту. Подается с грузинским соусом.', 'г', '2024-12-22 00:49:28', NULL, NULL),
(119, 40, 'ro', 'Pui \"Tapaka\"', 'Carne crocantă pe exterior și suculentă pe interior, mărinat în adjikă și gătit după recetă georgiană. Se servește cu sos georgian.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(120, 40, 'en', 'Tapaka Chicken', 'Meat with crispy outside and juicy inside, marinated in adzhika and cooked according to Georgian recipe. Served with Georgian sauce.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(121, 41, 'ru', 'Стейк из свиной шейки', 'Сочный стейк из подкопченной свиной шеи, маринованный в ароматных специях. Подается с грузинским соусом. Не упустите возможность насладиться каждым кусочком!', 'г', '2024-12-22 00:49:28', NULL, NULL),
(122, 41, 'ro', 'Steak din ceafă de porc', 'Steak suculent din ceafă de porc, mărinat cu condimente aromate, Se servește cu sos georgian. Nu ratați ocazia de a savura fiecare mușcătură!', 'g', '2024-12-22 00:49:28', NULL, NULL),
(123, 41, 'en', 'Pork Neck Steak', 'Juicy steak from smoked pork neck marinated in fragrant spices. Served with Georgian sauce. Don\'t miss the opportunity to savor every bite!', 'g', '2024-12-22 00:49:28', NULL, NULL),
(124, 42, 'ru', 'Спинка ягнёнка', 'Восхитительно сочные и нежные косточки спинки ягнёнка с особым вкусом, идеально подходящие для аутентичного грузинского кулинарного опыта. Подается с грузинским соусом.', 'г', '2024-12-22 00:49:28', NULL, NULL),
(125, 42, 'ro', 'Spate de miel', 'Spate cu costițe de miel delicios de suculent și fraged cu un gust deosebit și perfect pentru o experiență culinară georgiană autentică. Se servește cu sos georgian.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(126, 42, 'en', 'Lamb Back', 'Deliciously juicy and tender lamb back bones with a distinctive flavor, perfect for an authentic Georgian culinary experience. Served with Georgian sauce.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(127, 43, 'ru', 'Лопатка ягненка запеченная на гриле', 'Грузинский деликатес, лопатка ягненка (передняя часть), приправленная традиционными травами, запеченная на гриле и отражающая кулинарные традиции Грузии. Подается с грузинским соусом.', 'г', '2024-12-22 00:49:28', NULL, NULL),
(128, 43, 'ro', 'Spată de miel la cuptor', 'Delicatesă georgiană, spată de miel este condimentată cu ierburi tradiționale, coaptă la grătar și reflectă tradițiile culinare ale Georgiei. Se servește cu sos georgian.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(129, 43, 'en', 'Grilled Lamb Shoulder', 'Georgian delicacy, lamb shoulder (front part) seasoned with traditional herbs, grilled and reflecting the culinary traditions of Georgia. Served with Georgian sauce.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(130, 44, 'ru', 'Ножка ягненка запеченная на гриле', 'Грузинский деликатес, ножка ягненка (задняя часть), приправленная традиционными травами, запеченная на гриле и отражающая кулинарные традиции Грузии. Подается с грузинским соусом.', 'г', '2024-12-22 00:49:28', NULL, NULL),
(131, 44, 'ro', 'Pulpa de miel la cuptor', 'Delicatesă georgiană, pulpa de miel este condimentată cu ierburi tradiționale, coaptă la grătar și reflectă tradițiile culinare ale Georgiei. Se servește cu sos georgian.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(132, 44, 'en', 'Grilled Lamb Shank', 'Georgian delicacy, lamb shank (back part) seasoned with traditional herbs, grilled and reflecting the culinary traditions of Georgia. Served with Georgian sauce.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(133, 45, 'ru', 'Бадрижани \"Мимино\"', 'Это аппетитное блюдо из баклажанов, дополненное сочным куриным мясом. Баклажан без кожуры служит основой, на которую выкладываются кусочки нежного куриного мяса, подается на овощной подушке. Сверху блюдо украшается растопленным сыром, который выкладывается в виде колечка и плавно растекается, обволакивая все ингредиенты и придавая им насыщенный вкус.', 'г', '2024-12-22 00:49:28', NULL, NULL),
(134, 45, 'ro', 'Badrijani \"Mimino\"', 'Acest preparat apetisant din vinete este completat cu carne de pui suculentă. Vinetele fără coajă servesc drept bază, pe care sunt așezate bucăți de carne de pui fragedă, fiind servite pe legume. Deasupra, preparatul este decorat cu cașcaval topit, care este așezată sub formă de inel și se topește încet, învăluind toate ingredientele și oferindu-le un gust intens.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(135, 45, 'en', 'Mimino Badrijani', 'This is an appetizing dish of eggplant, supplemented with juicy chicken meat. Eggplant without peel serves as a base, on which pieces of tender chicken meat are laid out, served on a vegetable pillow. On top of the dish is decorated with melted cheese, which is laid out in the form of a ring and smoothly spread, enveloping all the ingredients and giving them a rich flavor.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(136, 46, 'ru', 'Аджапсандал овощной', 'Традиционное грузинское блюдо, представляющее собой овощное рагу, приготовленное из баклажанов, помидоров, перца, лука и картофеля, приправленное традиционными травами и обладающее безупречным вкусом.', 'г', '2024-12-22 00:49:28', NULL, NULL),
(137, 46, 'ro', 'Adjapsandal din legume', 'Preparat tradițional georgian, constituie o tocăniță de legume, preparată cu vinete, roșii, ardei, ceapă, cartofi, condimentată cu ierburi tradiționale și oferă un gust impecabil.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(138, 46, 'en', 'Vegetable Adjapsandal', 'A traditional Georgian dish, which is a vegetable stew made of eggplants, tomatoes, peppers, onions and potatoes, seasoned with traditional herbs and possessing impeccable flavor.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(139, 47, 'ru', 'Лобио традиционный', 'Блюдо из красной фасоли, луком и ароматными травами, обладает глубоким ароматом. Отражает грузинскую традицию превращать простые ингредиенты в блюда, полные вкуса.', 'г', '2024-12-22 00:49:28', NULL, NULL),
(140, 47, 'ro', 'Lobio tradițional', 'Un preparat din fasole roșie gătit lent cu condimente, ceapă și ierburi aromate, cu o consistență bogată și o aromă profundă. Reflectă tradiția georgiană de a transforma ingrediente simple în feluri de mâncare pline de gust.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(141, 47, 'en', 'Traditional Lobio', 'A dish of red beans, onions and aromatic herbs, deeply flavored. Reflects the Georgian tradition of turning simple ingredients into dishes full of flavor.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(142, 48, 'ru', 'Чахохбили из цыпленка', 'Курица, тушенная в томатном соусе с свежими травами - традиционное грузинское блюдо, идеально отражающее суть и аутентичность грузинской кухни.', 'г', '2024-12-22 00:49:28', NULL, NULL),
(143, 48, 'ro', 'Chahohbili din pui', 'Pui înăbușit în sos de roșii și ierburi proaspete - fel de mâncare tradițional georgiană, reflectă ideal esența și autencitatea culinară a Georgiei.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(144, 48, 'en', 'Chicken Chahohbili', 'Chicken stewed in tomato sauce with fresh herbs is a traditional Georgian dish that perfectly reflects the essence and authenticity of Georgian cuisine.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(145, 49, 'ru', 'Сациви куриный', 'Сациви состоит из куриного мяса, подаваемого в ореховом соусе, идеально отражающем сложность и утонченность грузинской кухни. Для сациви рекомендуется заказать шоти.', 'г', '2024-12-22 00:49:28', NULL, NULL),
(146, 49, 'ro', 'Satsivi din pui', 'Satsivi constă în carne de pui servită întru-un sos bogat pe bază de nuci, ideal pentru a reflecta complexitatea și rafinamentul bucătăriei georgiene. Pentru satsivi se recomandă de comandat șoti.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(147, 49, 'en', 'Chicken Satsivi', 'Satsivi consists of chicken meat served in a nut sauce, perfectly reflecting the complexity and sophistication of Georgian cuisine. It is recommended to order shoti for satsivi.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(148, 50, 'ru', 'Овощи на гриле', 'Микс из овощей на гриле, таких как перец, кабачки, помидоры и грибы, с хрустящей текстурой и насыщенным вкусом.', 'г', '2024-12-22 00:49:28', NULL, NULL),
(149, 50, 'ro', 'Legume la grătar', 'Mix de legume la grătar, precum ardei, dovleci, roșii și ciuperci cu o textură crocantă și un gust intens.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(150, 50, 'en', 'Grilled Vegetables', 'Mixed grilled vegetables such as peppers, zucchini, tomatoes and mushrooms, with a crunchy texture and rich flavor.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(151, 51, 'ru', 'Грибы с сулугуни на кеци', 'Грибы, фаршированные сыром сулугуни и приготовленные на гриле, сулугуни плавится и добавляет кремовую и насыщенную нотку, в то время как грибы обеспечивают хрустящую и ароматную основу.', 'г', '2024-12-22 00:49:28', NULL, NULL),
(152, 51, 'ro', 'Ciuperci cu suluguni pe cheți', 'Ciuperci umplute cu cașcaval suluguni și gătite pe cheți, suluguni se topește și adaugă o notă cremoasă și savuroasă, pe când cheții oferă o bază crocantă și aromată.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(153, 51, 'en', 'Mushrooms with Suluguni on Ketsi', 'Mushrooms stuffed with suluguni cheese and grilled, the suluguni melts and adds a creamy and rich note while the mushrooms provide a crispy and flavorful base.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(154, 52, 'ru', 'Картошка от товарища \"Мимино\"', 'Хрустящий жареный картофель с сыром сулугуни, идеально подходит как гарнир или основное блюдо, Отражает гостеприимство и традиции грузинской кухни.', 'г', '2024-12-22 00:49:28', NULL, NULL),
(155, 52, 'ro', 'Cartofi de la tovarăș \"Mimino\"', 'Cartofi prăjiți crocanți cu cașcaval suluguni, fiind ideal pentru a fi servit ca garnitură sau fel principal. Reflectă ospitalitatea și tradițiile bucătăriei georgiene.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(156, 52, 'en', 'Potatoes from Comrade Mimino', 'Crispy fried potatoes with suluguni cheese, perfect as a side dish or main course, Reflects the hospitality and traditions of Georgian cuisine.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(157, 53, 'ru', 'Картофель по-деревенски', 'Сочный картофель, приправленный грузинскими травами и жареным луком. Точно как у друга в гостях в Грузии.', 'г', '2024-12-22 00:49:28', NULL, NULL),
(158, 53, 'ro', 'Cartofi țărănești', 'Cartofi suculenți condimentați cu ierburi georgiene. Fix ca la un prieten în ospeție din Georgia.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(159, 53, 'en', 'Rustic Potatoes', 'Juicy potatoes flavored with Georgian herbs and fried onions. Just like a friend\'s visit to Georgia.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(160, 54, 'ru', 'Картофель фри', 'Картофель фри - один из самых любимых гарниров во всем мире: хрустящие ломтики картофеля, золотистые и вкусные.', 'г', '2024-12-22 00:49:28', NULL, NULL),
(161, 54, 'ro', 'Catofi pai', 'Cartofii pai sunt unele dintre cele mai iubite garnituri din întreaga lume: felii crocante de cartofi, aurii și delicioși.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(162, 54, 'en', 'French Fries', 'French fries are one of the most favorite side dishes around the world: crispy slices of potatoes, golden and delicious.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(163, 55, 'ru', 'Wine Jelly (алк.)', 'Освежающее и легкое блюдо, которое включает в себя Белое вино и Красное вино. Внимание! Содержит Алкоголь!', 'г', '2024-12-22 00:49:28', NULL, NULL),
(164, 55, 'ro', 'Wine Jelly (alc.)', 'O combinație ușoră, care include Vin alb și Vin roșu. Atenție! Conține alcool.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(165, 55, 'en', 'Wine Jelly (alc.)', 'A refreshing and light dish that includes White Wine and Red Wine. Warning! Contains Alcohol!', 'g', '2024-12-22 00:49:28', NULL, NULL),
(166, 56, 'ru', 'Салат фруктовый', 'Освежающее и легкое блюдо, которое включает в себя сочные кусочки груши, киви и апельсина. Эти фрукты создают гармоничное сочетание сладости и кислинки, а также обеспечивают богатство витаминов и питательных веществ. Такой салат идеально подходит для десерта или легкого перекуса.', 'г', '2024-12-22 00:49:28', NULL, NULL),
(167, 56, 'ro', 'Salată de fructe', 'O combinație ușoră, care include bucăți suculente de pere, kiwi și portocale. Aceste fructe creează o combinație armonioasă de dulceață și aciditate, oferind în același timp o bogăție de vitamine și substanțe nutritive. Această salată este ideală ca desert sau gustare ușoară.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(168, 56, 'en', 'Fruit Salad', 'A refreshing and light dish that includes juicy slices of pear, kiwi and orange. These fruits create a harmonious combination of sweetness and sourness, and provide a wealth of vitamins and nutrients. This salad is perfect for dessert or a light snack.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(169, 57, 'ru', 'Салат фруктовый с мороженым', 'Освежающее и легкое блюдо, которое включает в себя сочные кусочки груши, киви, апельсина и шарик мороженого. Эти фрукты создают гармоничное сочетание сладости и кислинки, а также обеспечивают богатство витаминов и питательных веществ. Такой салат идеально подходит для десерта или легкого перекуса.', 'г', '2024-12-22 00:49:28', NULL, NULL),
(170, 57, 'ro', 'Salată de fructe cu înghețată', 'O combinație ușoră, care include bucăți suculente de pere, kiwi, portocale și o bilă de înghețată. Aceste fructe creează o combinație armonioasă de dulceață și aciditate, oferind în același timp o bogăție de vitamine și substanțe nutritive. Această salată este ideală ca desert sau gustare ușoară.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(171, 57, 'en', 'Fruit Salad with Ice Cream', 'A refreshing and light dish that includes juicy slices of pear, kiwi, orange and a ball of ice cream. These fruits create a harmonious combination of sweetness and sourness, and provide a wealth of vitamins and nutrients. This salad is perfect for dessert or a light snack.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(172, 58, 'ru', 'Мороженое с мёдом и орехами', 'Кремовое мороженое с медом и посыпанное хрустящими орехами, идеально для завершения трапезы с вкусной ноткой!', 'г', '2024-12-22 00:49:28', NULL, NULL),
(173, 58, 'ro', 'Înghețată cu miere și nuci', 'Înghețată cremoasă cu miere și presărată cu nuci crocante, ideal pentru a încheia masa cu un strop de dulce autentic.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(174, 58, 'en', 'Honey Nut Ice Cream', 'Creamy ice cream topped with honey and sprinkled with crunchy nuts, perfect for finishing off a meal with a delicious twist!', 'g', '2024-12-22 00:49:28', NULL, NULL),
(175, 59, 'ru', 'Мороженое с бельгийским шоколадом', 'Кремовое мороженое с бельгийским шоколадом, предлагающее насыщенный вкус шоколада и бархатистую текстуру.', 'г', '2024-12-22 00:49:28', NULL, NULL),
(176, 59, 'ro', 'Înghețată cu ciocolată belgiană', 'Înghețată cremoasă cu ciocolată belgiană, oferă un gust intens de ciocolată și o textură catifeată.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(177, 59, 'en', 'Belgian Chocolate Ice Cream', 'A creamy Belgian chocolate ice cream offering rich chocolate flavor and velvety texture.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(178, 60, 'ru', 'Штрудель с грушей', 'Тонкое тесто, карамелизированная груша, свежие орехи, гранатовый соус, специи - всё это придаёт десерту нежную структуру. Подается штрудель тёплым, на подушке из ванильного мороженого, с гранатовым соусом.', 'г', '2024-12-22 00:49:28', NULL, NULL),
(179, 60, 'ro', 'Ștrudel cu pere', 'Aluat subțire, pere caramelizate, nuci proaspete, sos de rodie, condimente - toate acestea conferă desertului un gust cald și aromat. Ștrudelul se servește fierbinte, decorat sos de rodie și cu înghețată de vanilie, care se topește, transformând astfel bila rece într-o structură cremoasă.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(180, 60, 'en', 'Pear Strudel', 'Thin dough, caramelized pear, fresh nuts, pomegranate sauce, spices - all this gives the dessert a delicate texture. Served warm, on a bed of vanilla ice cream, with pomegranate sauce.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(181, 61, 'ru', 'Наполеон', 'Насладитесь изысканным десертом с нежными слоями слоеного теста и вкусным ванильным кремом.', 'г', '2024-12-22 00:49:28', NULL, NULL),
(182, 61, 'ro', 'Napoleone', 'Savurați un desert rafinat cu straturi delicate de aluat fraged și cremă delicioasă de vanilie.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(183, 61, 'en', 'Napoleon', 'Enjoy a gourmet dessert with delicate layers of puff pastry and delicious vanilla cream.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(184, 62, 'ru', 'Фруктовое ассорти', 'Приглашаем вас побаловать себя тарелкой свежих, ароматных и красочных фруктов: грейпфрут, апельсины, виноград и киви. Комбинация, представленная в стиле грузинской кухни.', 'г', '2024-12-22 00:49:28', NULL, NULL),
(185, 62, 'ro', 'Asorti de fructe', 'Vă invităm să vă răsfățați cu un platou de fructe proaspete, aromate și colorate: grapefruit, portocae, struguri și kiwi. Combinația prezentată într-un stil care reflectă rafinamentul bucătăriei georgiene.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(186, 62, 'en', 'Fruit Platter', 'We invite you to treat yourself to a plate of fresh, fragrant and colorful fruits: grapefruit, oranges, grapes and kiwi. A combination presented in the style of Georgian cuisine.', 'g', '2024-12-22 00:49:28', NULL, NULL),
(187, 63, 'ru', 'Эспрессо', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(188, 63, 'ro', 'Espresso', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(189, 63, 'en', 'Espresso', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(190, 64, 'ru', 'Американо', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(191, 64, 'ro', 'Americano', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(192, 64, 'en', 'Americano', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(193, 65, 'ru', 'Капучино', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(194, 65, 'ro', 'Cappuccino', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(195, 65, 'en', 'Cappuccino', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(196, 66, 'ru', 'Капучино растительный', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL);
INSERT INTO `dish_translations` (`id`, `dish_id`, `locale`, `name`, `description`, `unit`, `created_at`, `updated_at`, `deleted_at`) VALUES
(197, 66, 'ro', 'Cappuccino vegetal', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(198, 66, 'en', 'Vegetal Cappuccino', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(199, 67, 'ru', 'Латте', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(200, 67, 'ro', 'Latte', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(201, 67, 'en', 'Latte', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(202, 68, 'ru', 'Латте растительный', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(203, 68, 'ro', 'Latte vegetal', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(204, 68, 'en', 'Vegetal Latte', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(205, 69, 'ru', 'Латте тыквенный', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(206, 69, 'ro', 'Latte de dovleac', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(207, 69, 'en', 'Pumpkin Spice Latte', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(208, 70, 'ru', 'Извар классический (алк.)', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(209, 70, 'ro', 'Izvar classic (alc.)', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(210, 70, 'en', 'Classic Izvar (alc.)', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(211, 71, 'ru', 'Глинтвейн розе (алк.)', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(212, 71, 'ro', 'Glintwein rose (alc.)', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(213, 71, 'en', 'Mulled Wine Rosé (alc.)', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(214, 72, 'ru', 'Цитрус какао', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(215, 72, 'ro', 'Cacao citrus', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(216, 72, 'en', 'Citrus Cocoa', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(217, 73, 'ru', 'Капучино с карамелью', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(218, 73, 'ro', 'Cappuccino cu caramelă', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(219, 73, 'en', 'Caramel Cappuccino', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(220, 74, 'ru', 'Имбирь - цитрус', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(221, 74, 'ro', 'Ghimbir-Citrus', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(222, 74, 'en', 'Ginger & Citrus', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(223, 75, 'ru', 'Облепиха - цитрус', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(224, 75, 'ro', 'Cătină-Citrus', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(225, 75, 'en', 'Sea Buckthorn & Citrus ', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(226, 76, 'ru', 'Киви - тархун', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(227, 76, 'ro', 'Kiwi-Tarhun', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(228, 76, 'en', 'Kiwi & Tarragon', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(229, 77, 'ru', 'Гранат - грейпфрут', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(230, 77, 'ro', 'Rodie-Grapefruit', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(231, 77, 'en', 'Pomegranate & Grapefruit', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(232, 78, 'ru', 'Чёрный чай', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(233, 78, 'ro', 'Ceai negru', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(234, 78, 'en', 'Black Tea', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(235, 79, 'ru', 'Черный чай с бергамотом', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(236, 79, 'ro', 'Ceai negru cu bergamot', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(237, 79, 'en', 'Bergamot Black Tea', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(238, 80, 'ru', 'Травяной чай', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(239, 80, 'ro', 'Ceai de ierburi', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(240, 80, 'en', 'Herbal Tea', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(241, 81, 'ru', 'Зелёный чай', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(242, 81, 'ro', 'Ceai verde', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(243, 81, 'en', 'Green Tea', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(244, 82, 'ru', 'Чай с ромашкой', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(245, 82, 'ro', 'Ceai de romanița', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(246, 82, 'en', 'Chamomile Tea', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(247, 83, 'ru', 'Лимонад классический', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(248, 83, 'ro', 'Limonadă classică', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(249, 83, 'en', 'Classic Lemonade', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(250, 84, 'ru', 'Мохито', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(251, 84, 'ro', 'Mojito', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(252, 84, 'en', 'Mojito', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(253, 85, 'ru', 'Барбарис', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(254, 85, 'ro', 'Barbaris', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(255, 85, 'en', 'Barberry', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(256, 86, 'ru', 'Тархун', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(257, 86, 'ro', 'Tarhun', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(258, 86, 'en', 'Tarragon', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(259, 87, 'ru', 'Гранат', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(260, 87, 'ro', 'Rodie', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(261, 87, 'en', 'Pomegranate', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(262, 88, 'ru', 'Огурец - базилик', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(263, 88, 'ro', 'Castravete-Busuioc', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(264, 88, 'en', 'Cucumber & Basil', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(265, 89, 'ru', 'Мандарин - облепиха', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(266, 89, 'ro', 'Mandarină-cătină', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(267, 89, 'en', 'Tangerine & Sea Buckthorn', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(268, 90, 'ru', 'Грушевый', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(269, 90, 'ro', 'Pere', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(270, 90, 'en', 'Pear', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(271, 91, 'ru', 'Барбарис Шприц', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(272, 91, 'ro', 'Barbaris Spritz', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(273, 91, 'en', 'Barberry Spritz', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(274, 92, 'ru', 'Тархун Шприц', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(275, 92, 'ro', 'Tarhun Spritz', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(276, 92, 'en', 'Tarragon Spritz', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(277, 93, 'ru', 'Апероль Шприц', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(278, 93, 'ro', 'Aperol Spritz', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(279, 93, 'en', 'Aperol Spritz', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(280, 94, 'ru', 'Сангрия белая', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(281, 94, 'ro', 'Sangria albă', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(282, 94, 'en', 'White Sangria', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(283, 95, 'ru', 'Сангрия розе', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(284, 95, 'ro', 'Sangria rose', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(285, 95, 'en', 'Sangria Rosé', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(286, 96, 'ru', 'Сангрия красная', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(287, 96, 'ro', 'Sangria roșie', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(288, 96, 'en', 'Red Sangria', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(289, 97, 'ru', 'Саперави лёд', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(290, 97, 'ro', 'Ice Saperavi', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(291, 97, 'en', 'Ice Saperavi', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(292, 98, 'ru', 'Мимино Ройал', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(293, 98, 'ro', 'Mimino Royal', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(294, 98, 'en', 'Mimino Royal', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(295, 99, 'ru', 'Томат', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(296, 99, 'ro', 'Tomate', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(297, 99, 'en', 'Tomato', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(298, 100, 'ru', 'Яблоко', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(299, 100, 'ro', 'Măr', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(300, 100, 'en', 'Apple', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(301, 101, 'ru', 'Мультифрукт', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(302, 101, 'ro', 'Multifruct', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(303, 101, 'en', 'Multifruit', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(304, 102, 'ru', 'Фреш Апельсин', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(305, 102, 'ro', 'Fresh Portocală', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(306, 102, 'en', 'Orange Fresh', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(307, 103, 'ru', 'Фреш Грейпфрут', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(308, 103, 'ro', 'Fresh Grapefruit', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(309, 103, 'en', 'Grapefruit Fresh', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(310, 104, 'ru', 'Набеглави', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(311, 104, 'ro', 'Nabeghlavi', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(312, 104, 'en', 'Nabeghlavi', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(313, 105, 'ru', 'Бахмаро', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(314, 105, 'ro', 'Bakhmaro', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(315, 105, 'en', 'Bakhmaro', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(316, 106, 'ru', 'Боржоми', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(317, 106, 'ro', 'Borjomi', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(318, 106, 'en', 'Borjomi', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(319, 107, 'ru', 'Hopfenbrau фильтрованное', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(320, 107, 'ro', 'Hopfenbrau filtrată', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(321, 107, 'en', 'Filtered Hopfenbrau', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(322, 108, 'ru', 'Hopfenbrau нефильтрованное', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(323, 108, 'ro', 'Hopfenbrau nefiltrată', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(324, 108, 'en', 'Unfiltered Hopfenbrau', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(325, 109, 'ru', 'Corona Extra', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(326, 109, 'ro', 'Corona Extra', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(327, 109, 'en', 'Corona Extra', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(328, 110, 'ru', 'Corona Extra Б/А', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(329, 110, 'ro', 'Corona Extra F/A', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(330, 110, 'en', 'Corona Extra N/A', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(331, 111, 'ru', 'Franziskaner тёмное', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(332, 111, 'ro', 'Franziskaner brună', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(333, 111, 'en', 'Dark Franziskaner', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(334, 112, 'ru', 'Franziskaner Naturtrub нефильтрованное', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(335, 112, 'ro', 'Franziskaner Naturtrub nefiltrată', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(336, 112, 'en', 'Unfiltered Franziskaner Naturtrub', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(337, 113, 'ru', 'Тархун', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(338, 113, 'ro', 'Tarhun', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(339, 113, 'en', 'Tarragon', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(340, 114, 'ru', 'Облепиха', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(341, 114, 'ro', 'Cătină', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(342, 114, 'en', 'Sea Buckthorn', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(343, 115, 'ru', 'Вишня', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(344, 115, 'ro', 'Vișină', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(345, 115, 'en', 'Cherry', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(346, 116, 'ru', 'Груша', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(347, 116, 'ro', 'Pere', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(348, 116, 'en', 'Pear', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(349, 117, 'ru', 'Сет наливки МИНИ', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(350, 117, 'ro', 'Set nalivki MINI', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(351, 117, 'en', 'MINI Nalewka Set', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(352, 118, 'ru', 'Сет наливки МАКСИ', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(353, 118, 'ro', 'Set nalivki MAXI', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(354, 118, 'en', 'MAXI Nalewka Set', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(355, 119, 'ru', 'Сет граппа и родственники МИНИ', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(356, 119, 'ro', 'Set grappa și neamurile MINI', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(357, 119, 'en', 'MINI Grappa & Relatives Set', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(358, 120, 'ru', 'Сет граппа и родственники МАКСИ', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(359, 120, 'ro', 'Set grappa și neamurile MAXI', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(360, 120, 'en', 'MINI Grappa & Relatives Set', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(361, 121, 'ru', 'Сет Саперави (Corten/Mukuzani/Timbrus/Gitana Winery)', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(362, 121, 'ro', 'Set Saperavi (Corten/Mukuzani/Timbrus/Gitana Winery)', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(363, 121, 'en', 'Saperavi Set (Corten/Mukuzani/Timbrus/Gitana Winery)', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(364, 122, 'ru', 'Чача силвер', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(365, 122, 'ro', 'Chacha silver', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(366, 122, 'en', 'Silver Chacha', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(367, 123, 'ru', 'Чача голд', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(368, 123, 'ro', 'Chacha gold', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(369, 123, 'en', 'Gold Chacha', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(370, 124, 'ru', 'Граппа', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(371, 124, 'ro', 'Grappa', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(372, 124, 'en', 'Grappa', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(373, 125, 'ru', 'Ракиу груша', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(374, 125, 'ro', 'Rachiu pere', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(375, 125, 'en', 'Pear Rachiu', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(376, 126, 'ru', 'Ракиу айва', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(377, 126, 'ro', 'Rachiu de gutuie', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(378, 126, 'en', 'Quince Rachiu', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(379, 127, 'ru', 'Цуйка сливовая', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(380, 127, 'ro', 'Țuica de prune', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(381, 127, 'en', 'Plum Tsuika', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(382, 128, 'ru', 'Фризанте', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(383, 128, 'ro', 'Frizzante', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(384, 128, 'en', 'Frizzante', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(385, 129, 'ru', 'Саперави', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(386, 129, 'ro', 'Saperavi', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(387, 129, 'en', 'Saperavi', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(388, 130, 'ru', 'Белое', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(389, 130, 'ro', 'Alb', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(390, 130, 'en', 'White', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(391, 131, 'ru', 'Розе', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(392, 131, 'ro', 'Rose', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(393, 131, 'en', 'Rosé', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(394, 132, 'ru', 'Саперави Timbrus', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(395, 132, 'ro', 'Saperavi Timbrus', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(396, 132, 'en', 'Saperavi Timbrus', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(397, 133, 'ru', 'Саперави Mukuzani Georgia', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(398, 133, 'ro', 'Saperavi Mukuzani Georgia', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(399, 133, 'en', 'Saperavi Mukuzani Georgia', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(400, 134, 'ru', 'Саперави Gitana', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(401, 134, 'ro', 'Saperavi Gitana', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(402, 134, 'en', 'Saperavi Gitana', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(403, 135, 'ru', 'Фризанте', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(404, 135, 'ro', 'Frizzante', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(405, 135, 'en', 'Frizzante', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(406, 136, 'ru', 'Вино Саперави', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(407, 136, 'ro', 'Vin Saperavi', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(408, 136, 'en', 'Saperavi Wine', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(409, 137, 'ru', 'Вино розе', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(410, 137, 'ro', 'Vin rose', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(411, 137, 'en', 'Rosé Wine', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(412, 138, 'ru', 'Вино белое', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(413, 138, 'ro', 'Vin alb', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(414, 138, 'en', 'White Wine', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(415, 139, 'ru', 'Mtevino, Kindzmarauli, 2020', 'Местное вино, произведённое в регионе Кахети из винограда Саперави, выращенного в микрозоне Киндзамараули. Отличается тёмно-рубиновым цветом. Характеризуется отчётливыми разновидностями вкуса и бархатистым букетом.', 'мл', '2024-12-22 00:49:28', NULL, NULL),
(416, 139, 'ro', 'Mtevino, Kindzmarauli, 2020', 'Un vin local produs în regiunea Kakheti din struguri Saperavi crescuți în microzona Kindzmarauli. Se distinge prin culoarea sa rubin închis. Se caracterizează prin varietăți de arome distincte și buchet catifelat.', 'ml', '2024-12-22 00:49:28', NULL, NULL),
(417, 139, 'en', 'Mtevino, Kindzmarauli, 2020', 'A local wine produced in the Kakheti region from Saperavi grapes grown in the Kindzamarauli microzone. It is characterized by dark ruby color. It is characterized by distinct varieties of taste and velvety bouquet.', 'ml', '2024-12-22 00:49:28', NULL, NULL),
(418, 140, 'ru', 'Timbrus Saperavi', 'Отличается интенсивным красным цветом с рубиновыми оттенками, приятным ароматом зрелых фруктов, сбалансированным вкусом, гармоничной умеренной терпкостью и долгим послевкусием. Прекрасно сочетается с мясными блюдами.', 'мл', '2024-12-22 00:49:28', NULL, NULL),
(419, 140, 'ro', 'Timbrus Saperavi', 'Se evidenţiază printr-o culoare roşie intensă cu nuanţe rubenii, aromă plăcută de fructe roşii, gust echilibrat, armonios cu o astringenţă fină, care provoacă un postgust lung. Se asociază perfect cu bucatele din carne.', 'ml', '2024-12-22 00:49:28', NULL, NULL),
(420, 140, 'en', 'Saperavi Timbrus', 'It is distinguished by an intense red color with ruby shades, pleasant aroma of ripe fruit, balanced taste, harmonious moderate tartness and long aftertaste. Perfectly combined with meat dishes.', 'ml', '2024-12-22 00:49:28', NULL, NULL),
(421, 141, 'ru', 'Novac Black, Saperavi Rosu', 'Производится по технологии красного вина из винограда сорта Саперави, собранного вручную с собственных виноградников на юге Молдовы. Это благородное вино выдерживается в течение 12 месяцев в барриках и обладает глубоким пурпурным цветом, с преобладающим ароматом красных ягод, тонкими нюансами белого и черного перца. Вкус сбалансированный и продолжительный.', 'мл', '2024-12-22 00:49:28', NULL, NULL),
(422, 141, 'ro', 'Novac Black, Saperavi Rosu', 'Produs după tehnologia vinurilor roșii din struguri aleși de soiul Saperavi , selectați manual de pe podgoriile proprii din sudul Moldovei . Acest vin nobil a fost maturat 12 luni în barrique și posedă o culoare magentă intensă . În aromă predomină fructe roșii de pădure , nuanțe fine de piper alb și negru. Gust echilibrat și de lungă durată .', 'ml', '2024-12-22 00:49:28', NULL, NULL),
(423, 141, 'en', 'Novac Black, Saperavi Rosu', 'Produced according to the red wine technology from Saperavi grapes, hand-picked from our own vineyards in the south of Moldova. This noble wine is aged for 12 months in barriques and has a deep purple color, with a predominant aroma of red berries, subtle nuances of white and black pepper. The flavor is balanced and lingering.', 'ml', '2024-12-22 00:49:28', NULL, NULL),
(424, 142, 'ru', 'Terra dacia Saperavi', 'Изысканное вино, обогащенное историей, доблестью и упорным трудом свободных даков. Аромат этого глубокого ликера пронизан тайнами и наследием древней Дакии.', 'мл', '2024-12-22 00:49:28', NULL, NULL),
(425, 142, 'ro', 'Terra dacia Saperavi', 'Un vin rafinat, îmbogățit de istoria, vitejia și hărnicia Dacilor Liberi. Savoarea acestei licori profunde, străbate din tainele și moștenirea străbunei Dacia.', 'ml', '2024-12-22 00:49:28', NULL, NULL),
(426, 142, 'en', 'Saperavi Terra Dacia', 'An exquisite wine enriched by the history, valor and hard work of the free Dacians. The flavor of this deep liqueur is imbued with the mysteries and heritage of ancient Dacia.', 'ml', '2024-12-22 00:49:28', NULL, NULL),
(427, 143, 'ru', 'Domeniile Pripa, Saperavi Rosu', 'Букет сложный, богатый, чернослив и шоколад придают вину мощную интенсивность, а нотки черного перца и специй оставляют приятный отпечаток. Вкус интенсивный и сбалансированный, с живыми и приятными танинами. Сочетание с блюдами: хорошо сочетается с бараниной или дичью, свежими овощами и зрелыми сырами.', 'мл', '2024-12-22 00:49:28', NULL, NULL),
(428, 143, 'ro', 'Domeniile Pripa, Saperavi Rosu', 'Buchetul este unul complex, bogat, fructele negre, prune uscate și ciocolata oferă o intensitate puternică vinului, iar notele de piper negru și condimente lasă o amprentă plăcută. Gustul este intens și echilibrat, cu tanini vii și plăcuți. Asocieri culinare: se potrivește de minune cu carnea de miel sau vânat, cu legume proaspete și brânzeturi maturate.', 'ml', '2024-12-22 00:49:28', NULL, NULL),
(429, 143, 'en', 'Domeniile Pripa, Saperavi Rosu', 'The bouquet is complex and rich, prunes and chocolate give the wine a powerful intensity, while notes of black pepper and spices leave a pleasant imprint. The flavor is intense and balanced, with lively and pleasant tannins. Food pairing: goes well with lamb or game, fresh vegetables and mature cheeses.', 'ml', '2024-12-22 00:49:28', NULL, NULL),
(430, 144, 'ru', 'Asconi Saperavi', 'Аромат вина глубокий и богатый - сладкий ягодный запах ежевики, тонкая свежесть кедра и дубовой коры, гранатовая кислотность и неуловимые фруктовые нотки.Такой вкус считается сложным и максимально насыщенным.', 'мл', '2024-12-22 00:49:28', NULL, NULL),
(431, 144, 'ro', 'Asconi Saperavi', 'Aroma vinului este profundă și bogată - mirosul dulce de fructe de pădure al murelor, prospețimea subtilă a cojii de cedru și stejar, acidul de rodie și note fructate evazive. Astfel de arome sunt considerate complexe și cât se poate de bogate.', 'ml', '2024-12-22 00:49:28', NULL, NULL),
(432, 144, 'en', 'Saperavi Asconi', 'The aroma of the wine is deep and rich - sweet berry smell of blackberries, subtle freshness of cedar and oak bark, pomegranate acidity and elusive fruit notes. This flavor is considered complex and maximally intense.', 'ml', '2024-12-22 00:49:28', NULL, NULL),
(433, 145, 'ru', 'Purcari Saperavi', 'Это вино с сильным характером, удивляющее всплеском изящества, идеально подходящее для смелых сочетаний и удивительных обоятельных ощущений. 100% Саперави. Саперави, знаменитый, безошибочно ароматный сорт грузинского происхождения, выделяется своим сильным характером и подлинностью вкуса. Вино глубокого рубинового цвета с пурпурными отблесками раскрывает взрывные ароматы сливы и спелых черных фруктов в страстном танце. Винифицированное с заботой и самоотдачейвпечатляет бархатистыми танинами и богатым ароматом, переходящим в долгое и приятное послевкусие со сложными вкусовыми оттенками.', 'мл', '2024-12-22 00:49:28', NULL, NULL),
(434, 145, 'ro', 'Purcari Saperavi', 'Saperavi de Purcari Ediție Limitată este un vin cu personalitate puternică, ce surprinde printr-o explozie de grație, fiind perfect pentru asocieri îndrăznețe și senzații olfactive surprinzătoare. 100% Saperavi. Saperavi, celebrul soi de origine georgiană, inconfundabil de aromat, se face remarcat prin caracterul său puternic și autenticitatea gustului. De un rubiniu intens, cu reflexii purpurii, vinul dezvăluie, într-un dans pasional, arome explozive de prune și fructe negre bine coapte. Vinificat cu atenție și dedicare, Saperavi de Purcari impresionează prin taninurile catifelate și gustul bogat, ce evoluează într-un post-gust lung și plăcut, cu arome complexe.', 'ml', '2024-12-22 00:49:28', NULL, NULL),
(435, 145, 'en', 'Saperavi Purcari', 'It is a wine with a strong character, surprising with a burst of finesse, perfect for bold combinations and surprising seductive sensations. 100% Saperavi. Saperavi, the famous, unmistakably aromatic variety of Georgian origin, stands out for its strong character and authenticity of flavor. A wine of deep ruby color with purple reflections reveals explosive aromas of plum and ripe black fruits in a passionate dance. Vinified with care and dedication, it impresses with velvety tannins and a rich aroma that develops into a long and pleasant aftertaste with complex flavors.', 'ml', '2024-12-22 00:49:28', NULL, NULL),
(436, 146, 'ru', 'Gitana Saperavi', 'Отборное качественное сухое красное вино с ароматом красных ягод, специй, шоколада, с фруктовым послевкусием и сбалансированными танинами.', 'мл', '2024-12-22 00:49:28', NULL, NULL),
(437, 146, 'ro', 'Gitana Saperavi', 'Vin de calitate selectat roșu sec,cu o aromă de fructe roșii de pădure,condimente,ciocolată,cu un post gust fructat și taninuri echilibrate.', 'ml', '2024-12-22 00:49:28', NULL, NULL),
(438, 146, 'en', 'Saperavi Gitana', 'Selected quality dry red wine with aromas of red berries, spices, chocolate, with a fruity aftertaste and balanced tannins.', 'ml', '2024-12-22 00:49:28', NULL, NULL),
(439, 147, 'ru', 'Impresario Saperavi', 'Сухое красное вино\nВиноград: Саперави - 100%.\nЦвет: глубокий рубиновый\nВыдержка: Французский баррикс.\nВкус: Полный, бархатистый, с нотами ягод, сушеных слив, с долгим послевкусием\nАромат: Сложный, с нотками вишни, сливы, сухофруктов\nПодача: +18...+20 °СС\nСочетание с блюдами из говядины, холодными закусками, твердыми сырами.', 'мл', '2024-12-22 00:49:28', NULL, NULL),
(440, 147, 'ro', 'Impresario Saperavi', 'Vin roșu sec\nStruguri: Saperavi – 100%.\nCuloare: Rubinie intensă\nMaturare: Barrique francez.\nGust: Plin, catifelat, cu note de fructe de pădure, prune uscate, cu un postgust lung\nAroma: Complexă, cu accente de vișine, prune, fructe uscate\nServire: +18…+20 °С\nRecomandări gastronomice: Preparate de carne de vită, gustări reci, cașcavaluri tari', 'ml', '2024-12-22 00:49:28', NULL, NULL),
(441, 147, 'en', 'Saperavi Impresario', 'Dry red wine\nGrapes: Saperavi - 100%.\nColor: deep ruby\nAgeing: French Barrix.\nTaste: Full, velvety, with notes of berries, dried plums, with a long aftertaste.\nAroma: Complex, with notes of cherries, plums, dried fruits.\nServing: +18...+20 °С\nCombination with beef dishes, cold appetizers, hard cheeses.', 'ml', '2024-12-22 00:49:28', NULL, NULL),
(442, 148, 'ru', 'Divus Saperavi', 'Глубокого красного цвета, с ароматами черной смородины, ванили, табака, ежевики, фиалки, перца и дуба на носу. Вино сбалансировано по структуре, богато танинами, с потенциалом выдержки. Длинный и приятный аромат сливы, ежевики, шоколада, который легко сочетается с изысканными сырами и острыми блюдами. Это вино - эксперимент, основанный на использовании 3 типов дубовых бочек, в которых оно выдерживалось в течение 12 месяцев.', 'мл', '2024-12-22 00:49:28', NULL, NULL),
(443, 148, 'ro', 'Divus Saperavi', 'Un vin de culoare roșu intens, cu arome în nas de coacăze, vanilie, tutun, mure, violete, piper și stejar. Structura vinului este una echilibrată, fiind bogat în taninuri, având și potențial de învechire. Gust lung și plăcut de prune, mure, ciocolată, care poate fi ușor asociat cu brânzeturi fine și bucate condimentate. Acest vin reprezint un experiment la baza căruia au stat 3 tipuri de butoaie de stejar în care a fost maturat timp de 12 luni.', 'ml', '2024-12-22 00:49:28', NULL, NULL),
(444, 148, 'en', 'Saperavi Divus', 'Deep red color, with aromas of black currant, vanilla, tobacco, blackberry, violet, pepper and oak on the nose. The wine is balanced in structure, rich in tannins, with aging potential. Long and pleasing aromas of plum, blackberry, chocolate, which pairs easily with fine cheeses and savory dishes. This wine is an experiment based on the use of 3 types of oak barrels in which it was aged for 12 months.', 'ml', '2024-12-22 00:49:28', NULL, NULL),
(445, 149, 'ru', 'Novak Larga Valley Saperavi', 'Насыщенный вишневый цвет с фиолетовыми оттенками. Глубокий аромат ягод и терпкость граната. Вкус с присутствием оттенков черной смородины, граната и мотивами вишни, ежевики и ароматной сливы. Идеально сочетается с говядиной на гриле или ягненком с травами, а также отлично подходит к выдержанному сыру.', 'мл', '2024-12-22 00:49:28', NULL, NULL),
(446, 149, 'ro', 'Novak Larga Valley Saperavi', 'Culoare intensă vișinie, cu nuanțe violete.\nAroma profundă de fructe de pădure și astringența rodiei .\nGust cu prezența nuanțelor de coacăze negre, rodii și motive de cireșe, mure și prunele parfumate.\nSe potrivește perfect cu carne de vită la grătar sau miel cu ierburi sau o asociere excelentă cu brânză îmbătrânită.', 'ml', '2024-12-22 00:49:28', NULL, NULL),
(447, 149, 'en', 'Saperavi Novak Larga Valley', 'Intense cherry color with violet hues. Deep aroma of berries and tartness of pomegranate. Taste with hints of black currant, pomegranate and motifs of cherry, blackberry and aromatic plum. Ideal with grilled beef or lamb with herbs, it also goes well with aged cheese.', 'ml', '2024-12-22 00:49:28', NULL, NULL),
(448, 150, 'ru', 'Novak Orange Wine', 'Произведено путем ферментации, включая кожицу, мякоть и семена винограда, выбранного из сорта Белый Мускат Оттонел, отобранного вручную с наших собственных виноградников на юге Молдовы. Имеет янтарный цвет, выраженный аромат, гармоничный и сложный вкус, сопровождающийся мягкими танинами и длительным послевкусием.', 'мл', '2024-12-22 00:49:28', NULL, NULL),
(449, 150, 'ro', 'Novak Orange Wine', 'Produs prin fermentarea alcoolică a mustului în contact îndelungat cu boștină, inclusiv pieliță, pulpă și semințe din struguri aleși de soiul alb de Muscat Ottonel, selectați manual de pe podgoriile vinicole proprii din sudul Moldovei. Posedă o culoare chihlimbarie, aroma pronunțată, cu gust armonios și complex , însoțit de tanine moi și de un postgust cu persistență de lungă durată.', 'ml', '2024-12-22 00:49:28', NULL, NULL),
(450, 150, 'en', 'Novak Orange Wine', 'Produced by fermentation, including skin, pulp and seeds of grapes selected from the White Muscat Ottonel variety, hand-picked from our own vineyards in the south of Moldova. It has an amber color, pronounced aroma, harmonious and complex taste, accompanied by soft tannins and a long aftertaste.', 'ml', '2024-12-22 00:49:28', NULL, NULL),
(451, 151, 'ru', 'Novak Rcațiteli', 'Белое сухое вино, бледно-желтого цвета с зелеными отражениями, ароматом абрикосов и зеленых яблок, медом, длительным фруктовым послевкусием, сбалансированной кислотностью.', 'мл', '2024-12-22 00:49:28', NULL, NULL),
(452, 151, 'ro', 'Novak Rcațiteli', 'Vin sec alb, cu o culoare galben pai cu reflexii verzui, aroma de caise si mere verzi, miere, postgust fructat de lunga durata, aciditate bine echilibrata.', 'ml', '2024-12-22 00:49:28', NULL, NULL),
(453, 151, 'en', 'Novak Rcațiteli', 'White dry wine, pale yellow color with green reflections, aroma of apricots and green apples, honey, long fruity aftertaste, balanced acidity.', 'ml', '2024-12-22 00:49:28', NULL, NULL),
(454, 152, 'ru', 'Cricova Wild Fetească Regală', 'Вино, произведенное из винограда, переведенного в разряд органических. Изготовлено из местного сорта винограда «Fetească Regală», с твердой структурой и стойким окончанием. При выращивании и уходе за лозами, с которых был собран виноград, были полностью соблюдены природные циклы, поддерживающие здоровье почвы, растений и воды, а также баланс между ними. Вино очаровывает взрывом цветочных и фруктовых ароматов.', 'мл', '2024-12-22 00:49:28', NULL, NULL),
(455, 152, 'ro', 'Cricova Wild Fetească Regală', 'Vin produs din struguri în conversie la organic. Obţinut din soiul autohton de struguri „Fetească Regală”, cu o structură fermă şi un final persistent. La creşterea şi îngrijirea viţei de vie de unde au fost recoltaţi strugurii s-au respectat cu desăvîrşire ciclurile naturii, care menţin sănătatea solului, a plantelor şi apei, dar şi echilibrul dintre acestea. Vinul cucereşte prin explozia de arome florale şi fructate.', 'ml', '2024-12-22 00:49:28', NULL, NULL),
(456, 152, 'en', 'Cricova Wild Fetească Regală', 'Wine produced from grapes converted to the organic category. Made from the local grape variety “Fetească Regală”, with a firm structure and a persistent finish. During the cultivation and care of the vines from which the grapes were harvested, the natural cycles that maintain the health of the soil, plants and water, as well as the balance between them, were fully respected. The wine captivates with an explosion of floral and fruity aromas.', 'ml', '2024-12-22 00:49:28', NULL, NULL),
(457, 153, 'ru', 'Crama Merciesti Cherry Flower Roz', 'Тонкие ноты лакрицы, кислой вишни и грейпфрута, сопровождаемые ароматом цветущей вишни, тонкий, фруктовый и свежий вкус. Сочетание: аперитивы, салаты, морепродукты.', 'мл', '2024-12-22 00:49:28', NULL, NULL),
(458, 153, 'ro', 'Crama Merciesti Cherry Flower Roz', 'Note fine de lemn dulce, agrise si grapefruit, însoțite de mireasma florilor de cireș, gust fin, fructat si proaspăt. Asociere: aperitive, salate, fructe de mare.', 'ml', '2024-12-22 00:49:28', NULL, NULL),
(459, 153, 'en', 'Crama Merciesti Cherry Flower Roz', 'Subtle notes of licorice, sour cherry and grapefruit accompanied by the aroma of cherry blossom, fine, fruity and fresh taste. Combination: aperitifs, salads, seafood.', 'ml', '2024-12-22 00:49:28', NULL, NULL),
(460, 154, 'ru', 'Фризанте', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(461, 154, 'ro', 'Frizzante', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(462, 154, 'en', 'Frizzante', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(463, 155, 'ru', '“Cricova” Lacrima Dulce', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(464, 155, 'ro', '“Cricova” Lacrima Dulce', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(465, 155, 'en', '“Cricova” Lacrima Dulce', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(466, 156, 'ru', '“Cricova” Alb Brut', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(467, 156, 'ro', '“Cricova” Alb Brut', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(468, 156, 'en', '“Cricova” Alb Brut', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(469, 157, 'ru', '“Cricova” Cuvee Prestige', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(470, 157, 'ro', '“Cricova” Cuvee Prestige', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(471, 157, 'en', '“Cricova” Cuvee Prestige', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(472, 158, 'ru', 'Мартини Бьянко', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(473, 158, 'ro', 'Martini Bianco', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(474, 158, 'en', 'Martini Bianco', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(475, 159, 'ru', 'Мартини Россо', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(476, 159, 'ro', 'Martini Rosso', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(477, 159, 'en', 'Martini Rosso', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(478, 160, 'ru', 'Bardar 5 лет', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(479, 160, 'ro', 'Bardar 5 ani', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(480, 160, 'en', 'Bardar 5 years', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(481, 161, 'ru', 'Bardar 7 лет', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(482, 161, 'ro', 'Bardar 7 ani', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(483, 161, 'en', 'Bardar 7 years', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(484, 162, 'ru', 'Hennessy', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(485, 162, 'ro', 'Hennessy', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(486, 162, 'en', 'Hennessy', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(487, 163, 'ru', 'Соус Грузинский', NULL, 'г', '2024-12-22 00:49:28', NULL, NULL),
(488, 163, 'ro', 'Sos Georgian', NULL, 'g', '2024-12-22 00:49:28', NULL, NULL),
(489, 163, 'en', 'Georgian Sauce', NULL, 'g', '2024-12-22 00:49:28', NULL, NULL),
(490, 164, 'ru', 'Соус Сацебели', NULL, 'г', '2024-12-22 00:49:28', NULL, NULL),
(491, 164, 'ro', 'Sos Satsebeli', NULL, 'g', '2024-12-22 00:49:28', NULL, NULL),
(492, 164, 'en', 'Satsebeli Sauce', NULL, 'g', '2024-12-22 00:49:28', NULL, NULL),
(493, 165, 'ru', 'Соус Ткемали', NULL, 'г', '2024-12-22 00:49:28', NULL, NULL),
(494, 165, 'ro', 'Sos Tkemali', NULL, 'g', '2024-12-22 00:49:28', NULL, NULL),
(495, 165, 'en', 'Tkemali Sauce', NULL, 'g', '2024-12-22 00:49:28', NULL, NULL),
(496, 166, 'ru', 'Аджика', NULL, 'г', '2024-12-22 00:49:28', NULL, NULL),
(497, 166, 'ro', 'Adjika', NULL, 'g', '2024-12-22 00:49:28', NULL, NULL),
(498, 166, 'en', 'Adjika', NULL, 'g', '2024-12-22 00:49:28', NULL, NULL),
(499, 167, 'ru', 'Кетчуп', NULL, 'г', '2024-12-22 00:49:28', NULL, NULL),
(500, 167, 'ro', 'Ketchup', NULL, 'g', '2024-12-22 00:49:28', NULL, NULL),
(501, 167, 'en', 'Ketchup', NULL, 'g', '2024-12-22 00:49:28', NULL, NULL),
(502, 168, 'ru', 'Сметана', NULL, 'г', '2024-12-22 00:49:28', NULL, NULL),
(503, 168, 'ro', 'Smântână', NULL, 'g', '2024-12-22 00:49:28', NULL, NULL),
(504, 168, 'en', 'Sour Cream', NULL, 'g', '2024-12-22 00:49:28', NULL, NULL),
(505, 169, 'ru', 'Шоти', NULL, 'г', '2024-12-22 00:49:28', NULL, NULL),
(506, 169, 'ro', 'Șoti', NULL, 'g', '2024-12-22 00:49:28', NULL, NULL),
(507, 169, 'en', 'Shoti', NULL, 'g', '2024-12-22 00:49:28', NULL, NULL),
(508, 170, 'ru', 'Лаваш', NULL, NULL, '2024-12-22 00:49:28', NULL, NULL),
(509, 170, 'ro', 'Lavaș', NULL, NULL, '2024-12-22 00:49:28', NULL, NULL),
(510, 170, 'en', 'Lavash', NULL, NULL, '2024-12-22 00:49:28', NULL, NULL),
(511, 171, 'ru', 'Перец халапеньо', NULL, 'г', '2024-12-22 00:49:28', NULL, NULL),
(512, 171, 'ro', 'Ardei jalapeño', NULL, 'g', '2024-12-22 00:49:28', NULL, NULL),
(513, 171, 'en', 'Pepper Jalapeño', NULL, 'g', '2024-12-22 00:49:28', NULL, NULL),
(514, 172, 'ru', 'Лук маринованный', NULL, 'г', '2024-12-22 00:49:28', NULL, NULL),
(515, 172, 'ro', 'Ceapă mărinată', NULL, 'g', '2024-12-22 00:49:28', NULL, NULL),
(516, 172, 'en', 'Pickled Onions', NULL, 'g', '2024-12-22 00:49:28', NULL, NULL),
(517, 173, 'ru', 'Жерки из конины', NULL, 'г', '2024-12-22 00:49:28', NULL, NULL),
(518, 173, 'ro', 'Jerky de cal', NULL, 'g', '2024-12-22 00:49:28', NULL, NULL),
(519, 173, 'en', 'Horse Meat', NULL, 'g', '2024-12-22 00:49:28', NULL, NULL),
(520, 174, 'ru', 'Жерки из свинины', NULL, 'г', '2024-12-22 00:49:28', NULL, NULL),
(521, 174, 'ro', 'Jerky de porc', NULL, 'g', '2024-12-22 00:49:28', NULL, NULL),
(522, 174, 'en', 'Pork Meat', NULL, 'g', '2024-12-22 00:49:28', NULL, NULL),
(523, 175, 'ru', 'Колбаски \"К пиву\"', NULL, 'г', '2024-12-22 00:49:28', NULL, NULL),
(524, 175, 'ro', 'Cârnăciori \"La bere\"', NULL, 'g', '2024-12-22 00:49:28', NULL, NULL),
(525, 175, 'en', 'Beer Sausages', NULL, 'g', '2024-12-22 00:49:28', NULL, NULL),
(526, 176, 'ru', 'Оливки', NULL, 'г', '2024-12-22 00:49:28', NULL, NULL),
(527, 176, 'ro', 'Olive', NULL, 'g', '2024-12-22 00:49:28', NULL, NULL),
(528, 176, 'en', 'Olives', NULL, 'g', '2024-12-22 00:49:28', NULL, NULL),
(529, 177, 'ru', 'Колбаски \"Diablo\"', NULL, 'г', '2024-12-22 00:49:28', NULL, NULL),
(530, 177, 'ro', 'Cârnăciori \"Diablo\"', NULL, 'g', '2024-12-22 00:49:28', NULL, NULL),
(531, 177, 'en', 'Diablo Sausages', NULL, 'g', '2024-12-22 00:49:28', NULL, NULL),
(532, 178, 'ru', 'Сухарики', NULL, 'г', '2024-12-22 00:49:28', NULL, NULL),
(533, 178, 'ro', 'Pesmeți', NULL, 'g', '2024-12-22 00:49:28', NULL, NULL),
(534, 178, 'en', 'Breadcrumbs', NULL, 'g', '2024-12-22 00:49:28', NULL, NULL),
(535, 179, 'ru', 'Лимон', NULL, 'шт', '2024-12-22 00:49:28', NULL, NULL),
(536, 179, 'ro', 'Lămâie', NULL, 'buc', '2024-12-22 00:49:28', NULL, NULL),
(537, 179, 'en', 'Lemon', NULL, 'pieces', '2024-12-22 00:49:28', NULL, NULL),
(538, 180, 'ru', 'Мёд', NULL, 'г', '2024-12-22 00:49:28', NULL, NULL),
(539, 180, 'ro', 'Miere', NULL, 'g', '2024-12-22 00:49:28', NULL, NULL),
(540, 180, 'en', 'Honey', NULL, 'g', '2024-12-22 00:49:28', NULL, NULL),
(541, 181, 'ru', 'Варенье из зелёного ореха', NULL, 'г', '2024-12-22 00:49:28', NULL, NULL),
(542, 181, 'ro', 'Dulceață din nuci verzi', NULL, 'g', '2024-12-22 00:49:28', NULL, NULL),
(543, 181, 'en', 'Green Walnut Jam', NULL, 'g', '2024-12-22 00:49:28', NULL, NULL),
(544, 182, 'ru', 'Варенье \"Калабрия\"', NULL, 'г', '2024-12-22 00:49:28', NULL, NULL),
(545, 182, 'ro', 'Dulceață \"Calabria\"', NULL, 'g', '2024-12-22 00:49:28', NULL, NULL),
(546, 182, 'en', 'Calabria Jam', NULL, 'g', '2024-12-22 00:49:28', NULL, NULL),
(547, 183, 'ru', 'Шоколад бельгийский', NULL, 'г', '2024-12-22 00:49:28', NULL, NULL),
(548, 183, 'ro', 'Ciocolată belgiană', NULL, 'g', '2024-12-22 00:49:28', NULL, NULL),
(549, 183, 'en', 'Belgian Chocolate', NULL, 'g', '2024-12-22 00:49:28', NULL, NULL),
(550, 184, 'ru', 'Орехи', NULL, 'г', '2024-12-22 00:49:28', NULL, NULL),
(551, 184, 'ro', 'Nuci', NULL, 'g', '2024-12-22 00:49:28', NULL, NULL),
(552, 184, 'en', 'Nuts', NULL, 'g', '2024-12-22 00:49:28', NULL, NULL),
(553, 185, 'ru', 'Чурчхела', NULL, 'г', '2024-12-22 00:49:28', NULL, NULL),
(554, 185, 'ro', 'Ciurchella', NULL, 'g', '2024-12-22 00:49:28', NULL, NULL),
(555, 185, 'en', 'Churchkhela', NULL, 'g', '2024-12-22 00:49:28', NULL, NULL),
(556, 186, 'ru', 'Курага', NULL, 'г', '2024-12-22 00:49:28', NULL, NULL),
(557, 186, 'ro', 'Caise uscate', NULL, 'g', '2024-12-22 00:49:28', NULL, NULL),
(558, 186, 'en', 'Dried Apricots', NULL, 'g', '2024-12-22 00:49:28', NULL, NULL),
(559, 187, 'ru', 'Инжир сушенный', NULL, 'г', '2024-12-22 00:49:28', NULL, NULL),
(560, 187, 'ro', 'Smochine uscate', NULL, 'g', '2024-12-22 00:49:28', NULL, NULL),
(561, 187, 'en', 'Dried Figs', NULL, 'g', '2024-12-22 00:49:28', NULL, NULL),
(562, 188, 'ru', 'Молоко', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(563, 188, 'ro', 'Lapte', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(564, 188, 'en', 'Milk', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(565, 189, 'ru', 'Молоко растительное', NULL, 'мл', '2024-12-22 00:49:28', NULL, NULL),
(566, 189, 'ro', 'Lapte vegetal', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL),
(567, 189, 'en', 'Vegetal Milk', NULL, 'ml', '2024-12-22 00:49:28', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
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
-- Структура таблицы `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_12_18_152337_create_categories_table', 1),
(5, '2024_12_18_152424_create_category_translations_table', 1),
(6, '2024_12_18_152653_create_dishes_table', 1),
(7, '2024_12_18_152704_create_dish_translations_table', 1),
(8, '2024_12_18_155206_create_tables_table', 1),
(9, '2024_12_18_155227_create_reservations_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `reservation_date` datetime NOT NULL,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `reservations`
--

INSERT INTO `reservations` (`id`, `name`, `email`, `phone_number`, `reservation_date`, `comment`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Serghei', 'sergey.bordeniuc1@gmail.com', '068913750', '2024-12-29 20:54:00', 'adasdsadsad', '2024-12-26 16:55:23', '2024-12-26 16:55:23', NULL),
(2, 'Daniil', 'bomboclat@gmail.com', '060123456', '2024-12-29 15:00:00', NULL, '2024-12-26 16:56:01', '2024-12-26 16:56:01', NULL),
(3, 'Stas', 'xopex80543@myweblaw.com', '079010203', '2024-12-31 21:36:00', NULL, '2024-12-26 17:36:40', '2024-12-26 17:36:40', NULL),
(4, 'Пётр', 'xopex80543@myweblaw.com', '069345712', '2024-12-27 20:10:00', NULL, '2024-12-26 17:41:11', '2024-12-26 17:41:11', NULL),
(5, 'Serghei', 'bordeniuc.front.dev@gmail.com', '068913750', '2025-01-03 17:00:00', NULL, '2024-12-26 17:44:09', '2024-12-26 17:44:09', NULL),
(6, 'Bomboclat', 'xopex80543@myweblaw.com', '079546378', '2025-01-10 18:00:00', NULL, '2024-12-26 17:48:49', '2024-12-26 17:48:49', NULL),
(7, 'Arsenii', 'xopex80543@myweblaw.com', '068714671', '2025-01-09 16:30:00', NULL, '2024-12-26 17:50:27', '2024-12-26 17:50:27', NULL),
(8, 'Serghei', 'bordeniuc.front.dev@gmail.com', '068913750', '2025-01-15 19:00:00', NULL, '2024-12-26 17:52:57', '2024-12-26 17:52:57', NULL),
(9, 'Рустам', 'rustemcimendur123@gmail.com', '068654712', '2024-12-26 22:02:00', NULL, '2024-12-26 18:02:28', '2024-12-26 18:02:28', NULL),
(10, 'Tudor', 'xopex80543@myweblaw.com', '061053172', '2024-12-27 15:00:00', 'Свечи поставьте, пожалуйста', '2024-12-27 06:41:23', '2024-12-27 06:41:23', NULL),
(11, 'Levon', 'xopex80543@myweblaw.com', '069777222', '2024-12-28 16:00:00', NULL, '2024-12-27 06:43:14', '2024-12-27 06:43:14', NULL),
(12, 'Tudor', 'feodortcaciuc2004@gmail.com', '061808901', '2024-12-29 15:00:00', NULL, '2024-12-27 06:44:30', '2024-12-27 06:44:30', NULL),
(13, 'Ion', 'xopex80543@myweblaw.com', '067812365', '2024-12-30 17:00:00', NULL, '2024-12-27 06:52:51', '2024-12-27 06:52:51', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('73roAn3rOzCzfEkCKsRKZXybZ0hGATcwcz8eyGhV', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Safari/605.1.15', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibzE5MjB2TFFJRmpBbkRIWVVwVnp3MDNPckRtdzFhN3FPT1ZoaEVJSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NjoibG9jYWxlIjtzOjI6InJ1Ijt9', 1735950905);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
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
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Индексы таблицы `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Индексы таблицы `category_translations`
--
ALTER TABLE `category_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_translations_category_id_foreign` (`category_id`),
  ADD KEY `category_translations_locale_index` (`locale`);

--
-- Индексы таблицы `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dishes_slug_unique` (`slug`),
  ADD KEY `dishes_category_id_foreign` (`category_id`);

--
-- Индексы таблицы `dish_translations`
--
ALTER TABLE `dish_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dish_translations_dish_id_foreign` (`dish_id`),
  ADD KEY `dish_translations_locale_index` (`locale`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Индексы таблицы `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT для таблицы `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT для таблицы `dishes`
--
ALTER TABLE `dishes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT для таблицы `dish_translations`
--
ALTER TABLE `dish_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=568;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `category_translations`
--
ALTER TABLE `category_translations`
  ADD CONSTRAINT `category_translations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `dishes`
--
ALTER TABLE `dishes`
  ADD CONSTRAINT `dishes_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `dish_translations`
--
ALTER TABLE `dish_translations`
  ADD CONSTRAINT `dish_translations_dish_id_foreign` FOREIGN KEY (`dish_id`) REFERENCES `dishes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
