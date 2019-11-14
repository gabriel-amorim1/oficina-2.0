-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 14-Nov-2019 às 11:54
-- Versão do servidor: 10.1.36-MariaDB
-- versão do PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oficina`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_11_12_192807_create_orcamento_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `orcamento`
--

CREATE TABLE `orcamento` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Cliente` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DataHora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Vendedor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Descricao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Valor` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `orcamento`
--

INSERT INTO `orcamento` (`id`, `Cliente`, `DataHora`, `Vendedor`, `Descricao`, `Valor`, `created_at`, `updated_at`) VALUES
(1, 'Felton Pfannerstill', '2010-07-03 08:26:04', 'Sigrid Upton', 'Qui rerum ab provident qui sit nam dignissimos. Quaerat dolores delectus aliquid consequatur error ea.', 1042769.46, '2019-11-12 23:06:02', '2019-11-12 23:06:02'),
(2, 'Sydnee Hauck', '1999-07-14 20:15:54', 'Marian Gutkowski', 'Iure tempore temporibus quibusdam quia veritatis delectus. Consequatur provident facilis soluta numquam ipsum. Dolores consequuntur et reprehenderit.', 0, '2019-11-12 23:06:02', '2019-11-12 23:06:02'),
(3, 'Bobby Barton Jr.', '2013-10-28 03:23:18', 'Yvonne Haag', 'Voluptatem maxime possimus aut tempore. Maxime fugit qui nam voluptatem cumque odit consequatur.', 527969.335, '2019-11-12 23:06:02', '2019-11-12 23:06:02'),
(4, 'Sydni Thiel', '1980-09-25 21:34:44', 'Courtney Walker', 'Excepturi ab saepe ut vitae sint tempora. Tenetur ut sit aut qui.', 53823698.83196, '2019-11-12 23:06:02', '2019-11-12 23:06:02'),
(5, 'Jarrett Lang', '1971-10-17 02:59:01', 'Orin Spinka', 'Et quis dolor cumque. Sapiente aut rerum quas qui sunt. Eum ratione saepe provident architecto. Tenetur nesciunt aut unde expedita aut voluptatem fuga.', 13902.018165905, '2019-11-12 23:06:02', '2019-11-12 23:06:02'),
(6, 'Mr. Bennie Botsford', '1992-08-27 00:02:06', 'Brigitte Huel', 'Et cupiditate voluptates quia. Eaque nesciunt explicabo qui doloremque ea qui dolor. Magnam voluptatem eos nesciunt pariatur.', 22170.215, '2019-11-12 23:06:02', '2019-11-12 23:06:02'),
(7, 'Filomena Heidenreich', '1995-06-26 16:13:00', 'Kelsi Johnston PhD', 'Esse vitae quasi laboriosam est voluptatem. Rerum et omnis laudantium illo enim est iusto dolore. Iure vel nostrum dolorem debitis. Quibusdam quasi aut expedita non rerum omnis maiores.', 70.3, '2019-11-12 23:06:02', '2019-11-12 23:06:02'),
(8, 'Prof. Fatima Walter', '1978-11-16 19:48:30', 'Roel Pfannerstill', 'Veritatis nobis veritatis qui quibusdam et quam reiciendis. Velit id voluptate enim dolor ut consequatur.', 139947068, '2019-11-12 23:06:02', '2019-11-12 23:06:02'),
(9, 'Prof. Henderson Raynor', '1995-04-09 19:24:43', 'Carmine Pacocha', 'Ad aut minus vel. Explicabo et eveniet commodi dolorem ad quas earum. Cum eveniet neque eaque amet. Necessitatibus nisi consequatur repellendus reiciendis deserunt.', 298956, '2019-11-12 23:06:02', '2019-11-12 23:06:02'),
(10, 'Mrs. Breanna Schuster', '1988-02-12 17:24:33', 'Mr. Troy Franecki', 'Excepturi aut quo ab asperiores dolor cumque ut. Quos rerum et sint eum ratione. Doloremque ea debitis et.', 671233999.936, '2019-11-12 23:06:02', '2019-11-12 23:06:02'),
(11, 'Lora Ferry', '2016-11-04 02:58:57', 'Dandre Nader', 'Aliquam esse voluptatem et in sit saepe voluptate autem. Alias id inventore consequatur autem. Est voluptate ut quia optio quia.', 16.938959, '2019-11-12 23:06:02', '2019-11-12 23:06:02'),
(12, 'Catalina Simonis', '2012-09-10 00:33:42', 'Dr. Ansley Kessler', 'Fugit est et sapiente. Sed illum dolor ullam expedita. Nisi dignissimos recusandae vel ut quia.', 8.673, '2019-11-12 23:06:02', '2019-11-12 23:06:02'),
(13, 'Aniya Kunde', '1977-08-21 19:06:22', 'Dr. Norris Hane', 'Voluptatibus laborum quis consequatur nam. Et soluta possimus et vel iste amet accusantium.', 278.227027, '2019-11-12 23:06:02', '2019-11-12 23:06:02'),
(14, 'Percival Stamm', '2003-12-28 11:08:38', 'Lesley Friesen', 'Sit eius debitis eius praesentium porro. Aut excepturi deserunt voluptatum facere et. Voluptas dicta aut qui.', 14.181208, '2019-11-12 23:06:02', '2019-11-12 23:06:02'),
(15, 'Desiree Kuhic', '2005-06-10 20:40:09', 'Harold Turcotte', 'Et vel fugiat tempore aliquid. Hic ut facere sint blanditiis cumque soluta repellat.', 138656830.983, '2019-11-12 23:06:02', '2019-11-12 23:06:02'),
(16, 'Hector Ebert', '2001-07-21 06:37:42', 'Olin Jast', 'Quod praesentium repellat nihil ut praesentium maxime nostrum. Quis vel repudiandae ullam sunt reiciendis nihil ullam. Et omnis totam sint ex animi. Sint quo atque sit.', 339.315, '2019-11-12 23:06:02', '2019-11-12 23:06:02'),
(17, 'Ms. Bulah Kunze', '2000-01-26 23:10:44', 'Stewart Bailey', 'Blanditiis ratione ea quis sunt voluptatum quae facilis unde. Possimus quas ab aut non numquam pariatur enim.', 86632.9, '2019-11-12 23:06:02', '2019-11-12 23:06:02'),
(18, 'Savannah Hirthe', '1999-09-18 01:00:18', 'Mrs. Kailey Heidenreich Jr.', 'Cumque voluptatem omnis necessitatibus. Maxime unde perspiciatis nostrum. Et commodi eveniet distinctio dolore ea.', 2600690.5861, '2019-11-12 23:06:02', '2019-11-12 23:06:02'),
(19, 'Rachael Ferry', '1970-06-07 07:06:06', 'Dr. Buster Gutkowski V', 'Magnam voluptates consequatur deserunt ipsum aut sed velit. Et sint eius vel in perspiciatis architecto. Omnis rem ut est et quaerat placeat libero.', 34441836.02, '2019-11-12 23:06:02', '2019-11-12 23:06:02'),
(20, 'Don Nienow Jr.', '1987-01-22 01:56:29', 'Corbin Runolfsdottir', 'Quia provident molestiae officiis ipsa tempora. Eos iusto dolor quibusdam qui quibusdam. Sequi eveniet officiis similique.', 1.4954, '2019-11-12 23:06:02', '2019-11-12 23:06:02'),
(21, 'Mr. Gaston Kunze', '1995-10-11 04:59:56', 'Maryjane Jacobs III', 'Enim dolores qui quo iste vitae ad consequatur. Quas dolorum molestiae dolorem quia deserunt. Nulla et veniam eum.', 1150.509521055, '2019-11-12 23:06:02', '2019-11-12 23:06:02'),
(22, 'Lucie Osinski', '2002-02-01 00:17:57', 'Dr. Charity Altenwerth', 'Nesciunt similique id minima tempora maiores labore placeat. Aut dignissimos beatae ut iste saepe quis pariatur. Enim in et ut sit laborum blanditiis.', 3238.81649641, '2019-11-12 23:06:02', '2019-11-12 23:06:02'),
(23, 'Dillon Borer DDS', '2007-11-03 13:51:43', 'Raina Waelchi DVM', 'Quia impedit fugit maxime quod excepturi. Sit qui quibusdam reprehenderit incidunt est qui quia. Repellendus doloremque deserunt ut.', 24.3, '2019-11-12 23:06:02', '2019-11-12 23:06:02'),
(24, 'Martin Brekke PhD', '2016-06-08 08:19:39', 'Linda Kessler', 'Est tenetur nemo nulla cum eum officia facilis. Iusto sapiente voluptate doloremque consequuntur. Fugit ut accusantium nisi ut beatae labore.', 17369.5806947, '2019-11-12 23:06:02', '2019-11-12 23:06:02'),
(25, 'Leonel Wisozk III', '2011-02-23 16:08:57', 'Lori O\'Reilly III', 'Velit quam non voluptatem ea quidem nulla. Aliquid dolor est voluptatem. Ea iusto quos debitis vero ut enim harum. Quia neque aliquid ipsum dolorum quae dicta officia.', 1.01, '2019-11-12 23:07:26', '2019-11-12 23:07:26'),
(26, 'Fannie Simonis', '1993-05-02 21:20:56', 'Madalyn Deckow', 'Sed debitis veritatis eius et et repellendus. Praesentium consequatur ipsam ut similique. Est voluptatibus aut ad temporibus itaque minima labore nihil. Enim eius eaque aliquid voluptatem dolorum.', 3430349.6, '2019-11-12 23:07:26', '2019-11-12 23:07:26'),
(27, 'Rudolph Schneider', '1990-06-27 01:14:58', 'Colin Willms', 'Quod consequuntur iusto excepturi molestias et dolorem. Mollitia aut porro velit laboriosam quod sunt neque. Et aliquam dolores quibusdam nesciunt reiciendis aut voluptatem.', 1005068.6, '2019-11-12 23:07:26', '2019-11-12 23:07:26'),
(28, 'Jackie Tromp', '1991-04-10 11:13:29', 'Prof. Kenyatta Weber DVM', 'Vel et consequatur impedit illo tenetur porro quo. Qui eveniet omnis velit et id et soluta. Quo est quis ipsum ipsa rerum.', 6230211.49, '2019-11-12 23:07:26', '2019-11-12 23:07:26'),
(29, 'Javon Homenick', '2015-07-30 14:34:49', 'Iliana Hills', 'Et velit voluptatem id ut atque earum placeat. Et neque fuga nihil rerum aut facere dolor fugiat. Et occaecati itaque quis qui perferendis ipsa qui.', 2607.69, '2019-11-12 23:07:26', '2019-11-12 23:07:26'),
(30, 'Augusta Runolfsson Sr.', '2010-01-21 23:55:04', 'Adolphus Morissette', 'Nobis vitae optio ut eaque non et. Nihil eaque fugit recusandae. Neque sed sit aliquid aut harum voluptatem. Ut et recusandae et dolores vel impedit. Veritatis dolore ut autem aut ut.', 14099498.41, '2019-11-12 23:07:26', '2019-11-12 23:07:26'),
(31, 'Floyd Buckridge', '2010-05-20 12:53:27', 'Lorine Baumbach', 'Asperiores cum ut sit nostrum ducimus. Nobis consectetur magnam aliquid et. Temporibus consequuntur illum ut accusantium et voluptatem dolorum non.', 4717482.34, '2019-11-12 23:07:26', '2019-11-12 23:07:26'),
(33, 'Jerry Lemke', '1990-03-20 17:42:28', 'Audreanne Osinski', 'Numquam aut fugit nemo. Non exercitationem porro reprehenderit minus voluptatem odit. Sed asperiores enim soluta. Explicabo deleniti totam iste id. Omnis tempore maiores accusamus molestiae quia.', 472403735.02, '2019-11-12 23:07:26', '2019-11-12 23:07:26'),
(34, 'Mrs. Brenda Boyle', '2017-06-25 10:03:41', 'Ms. Myrtle Romaguera DDS', 'Enim et et harum blanditiis ut. Distinctio illo non libero ut quibusdam vitae. Illum quidem iusto totam voluptas. Non quo soluta quia exercitationem qui quidem similique.', 153651536.85, '2019-11-12 23:07:26', '2019-11-12 23:07:26'),
(35, 'Ms. Dakota Bechtelar Jr.', '1993-01-17 12:06:24', 'Georgette Kohler', 'Amet sunt ullam aliquid sunt sit minus. Sunt qui voluptas aut. Sit voluptas facere cum vitae.', 603.87, '2019-11-12 23:07:26', '2019-11-12 23:07:26'),
(36, 'Brennan Parker', '2014-12-09 11:19:29', 'Dimitri Kuhn V', 'Illo veritatis ab excepturi illo dolore optio. Placeat doloremque asperiores odio molestiae dolores dolor ut. Cum aut reiciendis numquam velit quia vel enim. Maxime distinctio eligendi eligendi quos.', 1018.06, '2019-11-12 23:07:26', '2019-11-12 23:07:26'),
(37, 'Lila Upton', '1974-05-10 04:02:19', 'Alena Considine', 'Tenetur enim reprehenderit et neque repellendus. Nobis rerum sit suscipit consequatur quasi aspernatur sit. Aut alias vitae magni qui rerum. Voluptatum sequi autem et et veniam excepturi veniam.', 34483.17, '2019-11-12 23:07:26', '2019-11-12 23:07:26'),
(38, 'Armani Flatley', '1984-10-12 18:04:56', 'Amari McKenzie DVM', 'Cupiditate consectetur deleniti delectus nobis dolores. Ut illum eius vitae ea. Hic quia perferendis quam ex. Commodi ducimus corporis fuga. Ducimus fugiat molestiae et nostrum sit modi.', 25.24, '2019-11-12 23:07:26', '2019-11-12 23:07:26'),
(39, 'Miss Eldora Rohan', '2002-12-25 05:14:11', 'Jarrell Friesen', 'Vero officia earum illo mollitia molestiae id. Esse excepturi nihil nihil fuga aliquam et ut. Consectetur in iure suscipit voluptatum minima reprehenderit repellat.', 2770.48, '2019-11-12 23:07:26', '2019-11-12 23:07:26'),
(40, 'Mr. Orval Dooley', '1970-04-20 19:16:00', 'Petra Wunsch', 'In mollitia voluptatem et aliquid ducimus. Quod et fugit aliquid incidunt nulla. Provident voluptates sequi ut totam.', 318142099.94, '2019-11-12 23:07:26', '2019-11-12 23:07:26'),
(41, 'Ms. Coralie Armstrong Sr.', '1979-02-14 03:45:04', 'Brian Runolfsdottir', 'Non molestiae mollitia non at. Incidunt eos occaecati voluptas tempore. Voluptatem sed enim possimus dolore quis.', 34.22, '2019-11-12 23:07:26', '2019-11-12 23:07:26'),
(42, 'Mr. Garret Greenholt IV', '2004-05-19 10:58:57', 'Dr. Jarrell Bogan Jr.', 'In est omnis aut fugiat. Sed culpa assumenda id fuga repudiandae voluptatem quidem et. Vitae voluptatem aut veniam quia facere est ut quod.', 2192.29, '2019-11-12 23:07:26', '2019-11-12 23:07:26'),
(43, 'Jane Von', '2010-02-20 07:55:01', 'Wilton Hackett', 'Modi et fugit reiciendis harum ipsum. Fuga consequatur accusamus molestiae repellendus libero dicta dolorem. Enim et commodi quasi et et nihil. Minima quia veritatis doloribus sed rerum voluptatum.', 3713.28, '2019-11-12 23:07:26', '2019-11-12 23:07:26'),
(44, 'Ms. Keara Hickle', '2010-04-03 16:52:05', 'Mrs. Juliet O\'Keefe DVM', 'Nesciunt dicta consequuntur odit odit. Quibusdam praesentium quia ad aperiam explicabo iste.', 213072.45, '2019-11-12 23:07:26', '2019-11-12 23:07:26'),
(45, 'Ottis Hahn PhD', '2010-04-02 06:16:05', 'Wilhelmine Torphy', 'Pariatur molestias id est tempore quia quis. Voluptas rerum vel quo dolore ut. Sapiente quos est laudantium qui praesentium. Iusto vel neque corporis sed iure.', 113.21, '2019-11-12 23:07:26', '2019-11-12 23:07:26'),
(46, 'Houston Wolf I', '2011-01-18 00:34:59', 'Rachel Graham MD', 'Ipsa qui et similique odio voluptatem soluta. Sapiente labore odio itaque incidunt. Eos accusantium vel non facere et aliquam beatae. Est repellendus qui et ut.', 23.54, '2019-11-12 23:07:26', '2019-11-12 23:07:26'),
(47, 'Ms. Sophia King Jr.', '2006-01-01 10:20:12', 'Morris Block', 'Possimus voluptate atque qui rerum hic omnis. Facere enim in expedita. Distinctio accusantium et quidem molestias autem eveniet.', 3679338.46, '2019-11-12 23:07:26', '2019-11-12 23:07:26'),
(48, 'Herminio Windler', '1999-09-12 22:24:16', 'Linnie O\'Hara', 'Et odio temporibus aut alias minima officia. Mollitia ut dignissimos repellendus et. Fugiat sed illo sint aut id qui.', 1.53, '2019-11-12 23:07:26', '2019-11-12 23:07:26'),
(49, 'Gregoria Reilly', '1987-08-25 04:30:40', 'Dr. Shayna Dietrich', 'Laboriosam aut cum odit rerum. Fugiat aut quos quas error a at. Explicabo dolorum commodi molestiae omnis expedita eaque.', 368.1, '2019-11-12 23:07:53', '2019-11-12 23:07:53'),
(50, 'Cordell Cruickshank', '2009-11-16 13:13:11', 'Lulu Casper', 'Aspernatur quibusdam fuga quos. Natus optio error ut neque eligendi. Assumenda expedita fugiat quisquam ea pariatur dolor dignissimos. Earum et sed ad facere similique.', 485980.26, '2019-11-12 23:07:53', '2019-11-12 23:07:53'),
(51, 'Maximo Roob', '1976-02-25 16:52:22', 'Jasen Nader', 'Similique architecto illum minima ex. Doloremque maiores praesentium dolorum commodi quia neque ut odio.', 1213.13, '2019-11-12 23:07:53', '2019-11-12 23:07:53'),
(52, 'Ms. Joanne Kohler V', '2011-07-07 23:06:40', 'Lorine Schmeler II', 'Ea perferendis nihil quasi nihil voluptas veniam omnis. Repudiandae omnis blanditiis et odit nihil consequatur rerum id.', 1269.19, '2019-11-12 23:07:53', '2019-11-12 23:07:53'),
(53, 'Miss Reina Russel Jr.', '1977-06-01 21:14:56', 'Diana Rippin', 'Vero sequi porro voluptatem doloremque maxime illo. Sed rerum veritatis sequi libero odio ducimus consequatur fugit. Exercitationem deserunt fugiat officiis architecto omnis.', 2.26, '2019-11-12 23:07:53', '2019-11-12 23:07:53'),
(54, 'Alanis Ebert', '1978-05-04 00:00:38', 'Dayna Kling', 'Qui deleniti consequatur illo voluptatibus enim cum consequatur dolor. Facilis eaque molestiae vitae blanditiis autem.', 396.37, '2019-11-12 23:07:53', '2019-11-12 23:07:53'),
(55, 'Solon Dach MD', '1998-05-15 08:30:13', 'Derick Maggio', 'Et nulla eos officiis et voluptatem impedit totam. Et distinctio iste ea. Non quae dolores est voluptatem ut nihil eum suscipit. Aut tempore nihil qui et. Ea sapiente veniam maiores unde veniam.', 58.26, '2019-11-12 23:07:53', '2019-11-12 23:07:53'),
(56, 'Roxanne Labadie Sr.', '2005-08-12 19:30:07', 'Lilliana Gorczany', 'Magni ut inventore animi aut et. Quia natus voluptatem quis. Ab qui velit nobis. Numquam rerum voluptatum minima nostrum repellendus.', 2.41, '2019-11-12 23:07:53', '2019-11-12 23:07:53'),
(57, 'Prof. Trey Carter II', '1973-09-11 22:31:58', 'Chloe Gleichner', 'Vel autem quia laboriosam dignissimos ut. Nostrum autem iste quia voluptatum sit et nisi. Voluptatem sint facere ratione quia quis.', 6.19, '2019-11-12 23:07:53', '2019-11-12 23:07:53'),
(58, 'Nola Towne', '1997-04-04 21:37:40', 'Ms. Iva Fahey', 'Quia architecto quaerat itaque aut quis est. Est necessitatibus fugit delectus quasi. Explicabo quo qui dolores pariatur. In aut nisi deleniti qui et quo.', 31915.88, '2019-11-12 23:07:53', '2019-11-12 23:07:53'),
(59, 'Sydni Goyette', '1981-11-02 18:10:32', 'Marcella Lindgren', 'Molestias ea in rerum deleniti alias eligendi. Quas consequatur aut quas voluptatibus. Est maxime nam et molestias aperiam vitae.', 9631.02, '2019-11-12 23:07:53', '2019-11-12 23:07:53'),
(60, 'Reese Hane', '1982-12-14 03:47:53', 'Jerrell Cronin', 'Atque ipsum aliquid perferendis quia aut et praesentium hic. Atque et eaque similique. Vel exercitationem voluptatibus non similique.', 0, '2019-11-12 23:07:53', '2019-11-12 23:07:53'),
(61, 'Prof. Omari Schmidt', '1986-12-22 08:48:03', 'Kadin Weimann', 'Itaque molestiae enim nesciunt nihil et. Id iusto similique sit enim ut ipsa. Et nihil officia delectus eveniet. Dolores numquam aut aperiam dicta est nemo rerum.', 16.13, '2019-11-12 23:07:53', '2019-11-12 23:07:53'),
(62, 'Vivien Weber', '1978-03-31 16:26:27', 'Clotilde Bergnaum V', 'Numquam eum fuga autem consequatur et laudantium ipsa. Officiis est in ea consectetur. Perspiciatis quia deleniti ut nobis est. Sit excepturi quam quia voluptas.', 2.33, '2019-11-12 23:07:53', '2019-11-12 23:07:53'),
(63, 'Anita O\'Hara', '1994-02-21 15:55:12', 'Estel Towne', 'Dolor sint doloremque aut ut optio alias ratione. Ut consequatur vel consequatur. Beatae ut velit amet repellat tempore. Voluptatum saepe veniam repellendus molestiae.', 2.61, '2019-11-12 23:07:53', '2019-11-12 23:07:53'),
(64, 'Jamey Dicki', '1979-07-26 15:57:53', 'Ms. Aisha Goldner PhD', 'Rerum voluptatem repellat autem non. Vitae ut illum vel nobis in dicta id veniam. Optio at est neque qui. Natus consequuntur nemo sapiente consequuntur voluptatem quibusdam deleniti.', 8146.11, '2019-11-12 23:07:53', '2019-11-12 23:07:53'),
(65, 'Justina Kozey', '1972-07-27 08:32:06', 'Dr. Otho Walsh', 'Sint quisquam labore quia est. Nobis est alias quae. Aut dolorem magni aut cum.', 1025106.92, '2019-11-12 23:07:53', '2019-11-12 23:07:53'),
(66, 'Serenity Block', '2002-01-06 15:18:19', 'Prof. Nigel Dare DDS', 'In sed et quo sint quod quo illum. Assumenda qui fugiat nostrum voluptas quia unde doloribus. Earum dolorum corporis adipisci id consequatur. Odio sint dignissimos molestiae.', 7420325.02, '2019-11-12 23:07:53', '2019-11-12 23:07:53'),
(67, 'Clemens Rempel', '1970-03-25 19:07:09', 'Prof. Ronny Corkery', 'Aperiam culpa dolorem quas dolorum repudiandae quo omnis. Expedita in aspernatur et modi repellat itaque enim. Doloribus est minus ut et labore cum.', 1777266.62, '2019-11-12 23:07:53', '2019-11-12 23:07:53'),
(68, 'Marta Pfannerstill', '2000-12-06 18:44:44', 'Robyn Lang', 'Aut repellat iusto aut ratione enim qui. Et id enim et aut voluptatem hic. Voluptatum consequatur iure dicta dolor.', 143865677.27, '2019-11-12 23:07:53', '2019-11-12 23:07:53'),
(69, 'Karley Bednar', '1979-01-21 15:28:35', 'Birdie Casper IV', 'Quia earum in aut molestias et. Molestias reiciendis reprehenderit aliquam unde. Laudantium voluptatem qui repellat tempora. Quae nostrum necessitatibus quasi nostrum sit.', 66814784.31, '2019-11-12 23:07:53', '2019-11-12 23:07:53'),
(70, 'Curtis Krajcik', '1983-07-01 05:29:45', 'Loren Leuschke', 'Officiis vel unde placeat enim dolorem molestiae. Aliquid voluptates tempora et reiciendis qui placeat. Officia ut modi culpa est. Earum voluptatum voluptates quia ut. Porro quia in possimus dolor.', 21962671.07, '2019-11-12 23:07:53', '2019-11-12 23:07:53'),
(71, 'Shad Lynch', '2011-08-23 23:15:43', 'Mr. Miguel Stamm MD', 'Nam ut doloremque vitae qui consequatur sunt et et. Natus est eos ut asperiores beatae. Mollitia in laborum voluptas atque impedit aliquam qui temporibus. Illo officia voluptas sit.', 0.97, '2019-11-12 23:07:53', '2019-11-12 23:07:53'),
(72, 'Garret Blanda Jr.', '1980-04-18 05:29:28', 'Emerson Hahn PhD', 'Dolor esse minus molestiae cumque dicta maxime ea. Eos similique fugit facere. Illo tempore id assumenda ex dolores.', 46.24, '2019-11-12 23:07:53', '2019-11-12 23:07:53'),
(73, 'Gladys Rutherford Jr.', '1992-02-21 12:52:49', 'Prof. Matt Konopelski Jr.', 'Nulla quod vero voluptas modi repellendus qui assumenda. Explicabo voluptas nulla qui nesciunt enim excepturi id. Sint nobis cumque accusamus.', 82.62, '2019-11-12 23:11:32', '2019-11-12 23:11:32'),
(74, 'Shania Feest', '1999-04-19 00:37:42', 'Keenan Effertz', 'Accusamus maiores sed sit tempore quidem modi. Laudantium inventore vero quos est perspiciatis. Reiciendis quod voluptatum voluptate ea quam.', 3459.57, '2019-11-12 23:11:32', '2019-11-12 23:11:32'),
(75, 'Glenda Roberts', '1973-08-04 15:19:45', 'Miss Estella Welch', 'Sed inventore ex consequuntur aut. Voluptas consequatur excepturi aut atque modi accusamus. Et alias facere itaque adipisci.', 35323164.27, '2019-11-12 23:11:32', '2019-11-12 23:11:32'),
(76, 'Theo Morar', '1991-05-30 12:30:51', 'Blanca Runte PhD', 'Voluptatibus repudiandae exercitationem sit debitis non. Vel non sunt dignissimos fugiat consectetur.', 1.8, '2019-11-12 23:11:32', '2019-11-12 23:11:32'),
(77, 'Velva Cummings', '1991-08-04 01:45:22', 'Miss Antonetta Mante Jr.', 'Ut fugit in exercitationem qui aut quia numquam. Distinctio nostrum sit quis porro iure facere. Facere veniam ipsum rerum placeat nam. Praesentium iste ut consectetur veritatis numquam.', 37770056.6, '2019-11-12 23:11:32', '2019-11-12 23:11:32'),
(78, 'Santa Anderson', '2007-10-07 21:49:27', 'Reinhold Kshlerin', 'Unde ex dolorum et inventore adipisci. Quia voluptatem animi et blanditiis perferendis officiis. Consectetur odio veniam eligendi rem harum expedita. Ipsum voluptates ea adipisci.', 1570432.23, '2019-11-12 23:11:32', '2019-11-12 23:11:32'),
(79, 'Dr. Berta Armstrong', '2008-07-07 03:44:59', 'Lonnie Bruen PhD', 'Repellendus harum dolores sed quisquam voluptas ea. Expedita et cum perspiciatis cupiditate facilis. Sit error rem voluptatibus neque enim illum. Dignissimos in non impedit hic.', 63222941, '2019-11-12 23:11:32', '2019-11-12 23:11:32'),
(80, 'Dr. Vida Durgan Sr.', '2012-09-08 12:13:13', 'Dr. Margaretta Schamberger', 'Rerum perferendis ad illo quis ullam non architecto. Veritatis aut velit voluptatem fuga voluptatem est. Et non nisi et. Non iusto nihil unde dolore et nihil dignissimos ut.', 12.68, '2019-11-12 23:11:32', '2019-11-12 23:11:32'),
(81, 'Mr. Marcus Shields DDS', '1975-07-29 09:37:58', 'Marcelle Mertz', 'Eligendi minima repellat et aut quis. Dolor exercitationem autem assumenda maiores. Dolore commodi omnis sint sint magni vel.', 2015014, '2019-11-12 23:11:32', '2019-11-12 23:11:32'),
(82, 'Osborne Davis', '1976-10-28 12:07:50', 'Ashleigh Brakus', 'Et consequatur alias est magnam molestiae. Aut sunt numquam quidem quia magnam nihil enim. Ratione debitis veniam at necessitatibus eum excepturi.', 1.05, '2019-11-12 23:11:32', '2019-11-12 23:11:32'),
(83, 'Dario Erdman', '1970-01-26 01:02:28', 'Terrence Stark', 'Est laudantium porro libero sit. Dolorem dignissimos maxime explicabo. Quae quisquam nihil aut ipsam. Distinctio sit et aperiam temporibus expedita officiis dolores.', 30.56, '2019-11-12 23:11:32', '2019-11-12 23:11:32'),
(84, 'Burdette Sanford', '1978-11-20 16:56:17', 'Lia Waelchi', 'Unde corporis dolorem occaecati dolore cum. Sed veritatis cumque voluptatum minus voluptas beatae possimus. Debitis numquam est ut odio.', 182929.55, '2019-11-12 23:11:32', '2019-11-12 23:11:32'),
(85, 'Roosevelt Rempel', '2017-03-08 19:07:31', 'Amos Cummings', 'Sed tenetur eligendi qui quisquam recusandae esse neque nulla. Ipsa quis eveniet enim dolorem. Impedit nihil natus voluptates ab. Aliquid amet quaerat beatae quis iusto.', 4181.16, '2019-11-12 23:11:32', '2019-11-12 23:11:32'),
(86, 'Danny Pollich', '1973-01-23 17:16:14', 'Broderick Prosacco', 'Qui sed natus est fuga et inventore quam. Aspernatur voluptatem dolorem aut quis molestias molestias enim fugit. Enim at omnis ut ut. Enim in magnam et delectus unde aut maiores.', 73954.09, '2019-11-12 23:11:32', '2019-11-12 23:11:32'),
(87, 'Marco Price', '2010-05-21 09:32:40', 'Miss Misty Marks', 'Earum incidunt est consectetur et veritatis. Odit et quos consequuntur in ipsam in veniam. Modi soluta minus harum voluptatibus vel. Eum quam ea dolor nobis.', 335805.48, '2019-11-12 23:11:32', '2019-11-12 23:11:32'),
(88, 'Pierce Cormier III', '1974-09-27 19:56:20', 'Marion Kilback', 'Dolorum aspernatur sit ea explicabo. Eos blanditiis vero ea ex voluptatibus voluptatum qui. Quo qui voluptas ratione ut.', 56789.94, '2019-11-12 23:11:32', '2019-11-12 23:11:32'),
(89, 'Camila Kling V', '2004-06-20 23:54:40', 'Sage Blanda', 'Minima porro praesentium illo assumenda id ut labore. Ea ex delectus sed aut modi. Aut consequatur reiciendis voluptate ut aut.', 548820.71, '2019-11-12 23:11:32', '2019-11-12 23:11:32'),
(90, 'Mr. Cristobal Willms III', '2010-03-13 05:40:12', 'Fidel Miller', 'Aliquid eius harum natus autem cum. Sapiente assumenda ullam nobis et. Doloremque sed quisquam ratione aut.', 85431.81, '2019-11-12 23:11:32', '2019-11-12 23:11:32'),
(91, 'Aisha Schowalter', '1982-10-02 08:56:35', 'Ahmed Ullrich II', 'Ipsum minima reprehenderit iste cum corrupti officiis. Qui non exercitationem quia quibusdam totam. Dolorem ea nam quidem aperiam.', 37583070.49, '2019-11-12 23:11:32', '2019-11-12 23:11:32'),
(92, 'Alf Grimes', '2001-09-22 08:00:46', 'Myrtice Mitchell', 'Possimus totam repudiandae sed vitae. Laudantium non praesentium dolorem eveniet tempore sit accusantium. Libero deserunt placeat maiores non qui. Mollitia dolores quis facere aut.', 2137.4, '2019-11-12 23:11:32', '2019-11-12 23:11:32'),
(93, 'Marie Pfeffer', '2015-02-20 15:05:48', 'Mr. Zachery Kilback PhD', 'Ab voluptates provident pariatur libero. Ut ipsum et doloribus iste exercitationem.', 36.01, '2019-11-12 23:11:32', '2019-11-12 23:11:32'),
(94, 'Winston Kerluke DDS', '1995-03-23 09:59:35', 'Mr. Zachery Harvey', 'Enim facilis dolor distinctio a et sunt ratione. Voluptas qui doloribus ipsum eius velit saepe consequatur ut. Eum ex commodi nam ullam.', 5.28, '2019-11-12 23:11:32', '2019-11-12 23:11:32'),
(95, 'Miss Ruth Runolfsdottir MD', '2001-11-16 09:28:02', 'Lessie Gutmann', 'Architecto veritatis quia nemo accusamus. Odit facere saepe expedita rerum commodi praesentium consequatur. Tempore ab quo optio qui modi expedita et. Qui illum mollitia impedit dolor rem.', 39.63, '2019-11-12 23:11:32', '2019-11-12 23:11:32'),
(96, 'Stephan Schuster', '1994-11-27 08:08:57', 'Mr. Tod Dickens', 'Placeat voluptatem deserunt voluptatum nostrum. Quos iusto soluta facere repudiandae ut dolores. Cumque qui labore illo magnam.', 263.88, '2019-11-12 23:11:32', '2019-11-12 23:11:32'),
(97, 'Ms. Joanne Kohler V', '2019-11-14 10:25:34', 'ghjdshgjksd', 'Ea perferendis nihil quasi nihil voluptas veniam omnis. Repudiandae omnis blanditiis et odit nihil consequatur rerum id.', 1269.19, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orcamento`
--
ALTER TABLE `orcamento`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orcamento`
--
ALTER TABLE `orcamento`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
