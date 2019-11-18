-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 18-Nov-2019 às 15:13
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
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cpf` bigint(20) NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id`, `cpf`, `nome`, `telefone`, `created_at`, `updated_at`) VALUES
(1, 88888888888, 'Brando Roob', '590-974-0763', '2019-11-18 15:50:44', '2019-11-18 15:50:44'),
(2, 128938112, 'Prof. Darryl Dicki PhD', '749.532.3223 x0576', '2019-11-18 15:50:44', '2019-11-18 15:50:44'),
(3, 233067253, 'Kyleigh Walter', '245-253-8243', '2019-11-18 15:50:44', '2019-11-18 15:50:44'),
(4, 706438594, 'Mrs. Lurline Zemlak V', '1-554-878-9653 x293', '2019-11-18 15:50:44', '2019-11-18 15:50:44'),
(5, 263793808, 'Ruth Lynch IV', '816-737-2646', '2019-11-18 15:50:44', '2019-11-18 15:50:44'),
(6, 255428136, 'Mr. Eliezer Schuppe I', '+1 (313) 453-3733', '2019-11-18 15:50:44', '2019-11-18 15:50:44'),
(7, 447798223, 'Mrs. Celia Effertz DVM', '+1-917-906-6712', '2019-11-18 15:50:44', '2019-11-18 15:50:44'),
(8, 598291525, 'Esteban Murray III', '1-265-895-4589', '2019-11-18 15:50:44', '2019-11-18 15:50:44'),
(9, 668496650, 'Dr. Jadyn Abernathy Jr.', '+15436303182', '2019-11-18 15:50:44', '2019-11-18 15:50:44'),
(10, 474772140, 'Mozelle Bogan V', '+1-969-465-9816', '2019-11-18 15:50:44', '2019-11-18 15:50:44'),
(11, 760386211, 'Mr. Walter Littel Sr.', '+1 (375) 813-6758', '2019-11-18 15:50:44', '2019-11-18 15:50:44'),
(12, 614106840, 'Samson Brown', '593-847-2909 x55285', '2019-11-18 15:50:44', '2019-11-18 15:50:44'),
(13, 170870110, 'Ms. Amanda Krajcik V', '571-481-9535 x8770', '2019-11-18 15:50:44', '2019-11-18 15:50:44'),
(14, 660216789, 'Laura Kassulke', '251.764.9346 x981', '2019-11-18 15:50:45', '2019-11-18 15:50:45'),
(15, 317423870, 'Modesta Mayer', '(305) 226-2071 x94859', '2019-11-18 15:50:45', '2019-11-18 15:50:45'),
(16, 608410951, 'Dr. Marvin McDermott IV', '524.723.3260', '2019-11-18 15:50:45', '2019-11-18 15:50:45'),
(17, 374467441, 'Stefan Douglas', '(484) 806-5790', '2019-11-18 15:50:45', '2019-11-18 15:50:45'),
(18, 958157221, 'Sherman Kub', '363-650-8314', '2019-11-18 15:50:45', '2019-11-18 15:50:45'),
(19, 926755688, 'Prof. Alisha Mills', '641-380-9402 x7826', '2019-11-18 15:50:45', '2019-11-18 15:50:45'),
(20, 386270806, 'Ari Collier', '(848) 234-9162 x756', '2019-11-18 15:50:45', '2019-11-18 15:50:45'),
(21, 859487653, 'Gretchen Kerluke', '(895) 700-1531 x78824', '2019-11-18 15:50:45', '2019-11-18 15:50:45'),
(22, 279220515, 'Dr. Pat Anderson MD', '318.294.0354', '2019-11-18 15:50:45', '2019-11-18 15:50:45'),
(23, 869854297, 'Enoch Simonis', '+1 (372) 343-5055', '2019-11-18 15:50:45', '2019-11-18 15:50:45'),
(24, 641575596, 'Elenora Huels', '583.605.0302', '2019-11-18 15:50:45', '2019-11-18 15:50:45'),
(25, 853179926, 'Marguerite Heidenreich', '320-467-7922 x34776', '2019-11-18 15:50:45', '2019-11-18 15:50:45'),
(26, 695147134, 'Miss Retta Rau PhD', '+1-743-529-5687', '2019-11-18 15:50:45', '2019-11-18 15:50:45'),
(27, 975770133, 'Jazmyn Miller', '926-349-3822 x7630', '2019-11-18 15:50:45', '2019-11-18 15:50:45'),
(28, 156680432, 'Christa Koepp II', '667.623.9582 x6691', '2019-11-18 15:50:45', '2019-11-18 15:50:45'),
(29, 604615791, 'Mr. Miller Volkman', '1-787-755-9913 x53538', '2019-11-18 15:50:45', '2019-11-18 15:50:45'),
(30, 572806758, 'Dr. Lukas Medhurst Sr.', '869-992-3060 x41784', '2019-11-18 15:50:46', '2019-11-18 15:50:46'),
(31, 589420800, 'Katrina Cruickshank', '+1.602.300.7717', '2019-11-18 15:50:46', '2019-11-18 15:50:46'),
(32, 751722904, 'Mr. Kristian Pouros PhD', '747-213-7233', '2019-11-18 15:50:46', '2019-11-18 15:50:46'),
(33, 346766532, 'Miss Mathilde Dibbert II', '663-997-7982 x50032', '2019-11-18 15:50:46', '2019-11-18 15:50:46'),
(34, 533912044, 'Alanna Heaney', '+1.692.832.4830', '2019-11-18 15:50:46', '2019-11-18 15:50:46'),
(35, 500415768, 'Leora Senger', '778-403-4278', '2019-11-18 15:50:46', '2019-11-18 15:50:46'),
(36, 976022530, 'Ibrahim Huel', '1-819-797-7209 x1152', '2019-11-18 15:50:46', '2019-11-18 15:50:46'),
(37, 669519805, 'Maye Kilback', '1-489-443-2616 x4830', '2019-11-18 15:50:46', '2019-11-18 15:50:46'),
(38, 903137393, 'Allie Swift Jr.', '1-391-854-5477 x231', '2019-11-18 15:50:46', '2019-11-18 15:50:46'),
(39, 247674118, 'Kurt Stark', '535.792.2627', '2019-11-18 15:50:46', '2019-11-18 15:50:46'),
(40, 319165911, 'Viola Heller', '668-942-7333', '2019-11-18 15:50:46', '2019-11-18 15:50:46'),
(41, 892195341, 'Lucius Collins', '1-624-485-2056 x88655', '2019-11-18 15:50:46', '2019-11-18 15:50:46'),
(42, 937403025, 'Mikayla Daugherty', '968-899-3364 x035', '2019-11-18 15:50:46', '2019-11-18 15:50:46'),
(43, 630370286, 'Mr. Mathias Runolfsdottir PhD', '826-444-3985', '2019-11-18 15:50:46', '2019-11-18 15:50:46'),
(44, 462698747, 'Trudie McGlynn', '+1 (217) 581-7370', '2019-11-18 15:50:46', '2019-11-18 15:50:46'),
(45, 153898406, 'Mr. Jose Haley PhD', '939.357.8688 x03562', '2019-11-18 15:50:46', '2019-11-18 15:50:46'),
(46, 343538093, 'Jannie Kuhn', '+1-264-744-8781', '2019-11-18 15:50:47', '2019-11-18 15:50:47'),
(47, 253058892, 'Miss Assunta Mraz', '1-687-506-8945 x8504', '2019-11-18 15:50:47', '2019-11-18 15:50:47'),
(48, 771916246, 'Mr. Tod Goodwin', '1-554-357-5563 x469', '2019-11-18 15:50:47', '2019-11-18 15:50:47'),
(49, 121534497, 'Zelda Mitchell', '912-894-3511 x821', '2019-11-18 15:50:47', '2019-11-18 15:50:47'),
(50, 532963355, 'Valentine Koepp', '876-267-3001 x66081', '2019-11-18 15:50:47', '2019-11-18 15:50:47'),
(51, 260521695, 'Luigi Kunze', '316.946.6836', '2019-11-18 15:50:47', '2019-11-18 15:50:47'),
(52, 870272177, 'Loren Howe', '437.619.3154 x188', '2019-11-18 15:50:47', '2019-11-18 15:50:47'),
(53, 258847555, 'Kenton Beier', '(482) 399-4879 x3611', '2019-11-18 15:50:47', '2019-11-18 15:50:47'),
(54, 244265292, 'Dr. Yazmin Rutherford', '+14879738116', '2019-11-18 15:50:47', '2019-11-18 15:50:47'),
(55, 392371266, 'Prof. Katrina Kilback I', '405-981-9187 x3509', '2019-11-18 15:50:47', '2019-11-18 15:50:47'),
(56, 100822913, 'Stacey Gleichner', '408.824.2922 x1627', '2019-11-18 15:50:47', '2019-11-18 15:50:47'),
(57, 928556573, 'Natalie Lindgren', '+1 (924) 707-4016', '2019-11-18 15:50:47', '2019-11-18 15:50:47'),
(58, 273576662, 'Kayden Pfannerstill', '1-698-553-3758 x60155', '2019-11-18 15:50:47', '2019-11-18 15:50:47'),
(59, 448104980, 'Felicita Hettinger', '(294) 578-8627 x085', '2019-11-18 15:50:47', '2019-11-18 15:50:47'),
(60, 413722857, 'Dock Windler', '927.627.3700', '2019-11-18 15:50:47', '2019-11-18 15:50:47'),
(61, 993685149, 'Kelsie Prohaska', '716-419-9733', '2019-11-18 15:50:47', '2019-11-18 15:50:47'),
(62, 377614500, 'Prof. Violet Mayert', '1-993-396-9200 x98599', '2019-11-18 15:50:47', '2019-11-18 15:50:47'),
(63, 545071252, 'Prof. Santa Schultz', '358-988-8004', '2019-11-18 15:50:47', '2019-11-18 15:50:47'),
(64, 542169757, 'Oscar Kunde', '+1-975-621-6402', '2019-11-18 15:50:47', '2019-11-18 15:50:47'),
(65, 659775037, 'Miss Yadira Connelly', '467-433-6125', '2019-11-18 15:50:47', '2019-11-18 15:50:47'),
(66, 168184153, 'Alejandra Trantow', '1-239-360-9335', '2019-11-18 15:50:48', '2019-11-18 15:50:48'),
(67, 865884901, 'Marlene Tremblay', '1-484-308-4843 x660', '2019-11-18 15:50:48', '2019-11-18 15:50:48'),
(68, 188667746, 'Mr. Chadrick Harris', '475-543-4438 x87239', '2019-11-18 15:50:48', '2019-11-18 15:50:48'),
(69, 439815462, 'Rhett Gibson', '1-323-667-6817 x5369', '2019-11-18 15:50:48', '2019-11-18 15:50:48'),
(70, 330933086, 'Sienna Herzog', '257.801.9300 x98087', '2019-11-18 15:50:48', '2019-11-18 15:50:48'),
(71, 396500249, 'Trinity Hamill PhD', '432.249.1176 x9935', '2019-11-18 15:50:48', '2019-11-18 15:50:48'),
(72, 689227822, 'Maya Dach', '467-743-9994', '2019-11-18 15:50:48', '2019-11-18 15:50:48'),
(73, 734856388, 'Ora Welch Jr.', '927.826.5127', '2019-11-18 15:50:48', '2019-11-18 15:50:48'),
(74, 651279223, 'Lois Grimes', '1-250-834-8705', '2019-11-18 15:50:48', '2019-11-18 15:50:48'),
(75, 792723097, 'Kirsten Flatley', '(637) 268-5258', '2019-11-18 15:50:48', '2019-11-18 15:50:48'),
(76, 802784112, 'Jerry Corkery', '+1 (369) 870-5361', '2019-11-18 15:50:48', '2019-11-18 15:50:48'),
(77, 198646718, 'Miss Eleanora Marks DVM', '(660) 948-0231', '2019-11-18 15:50:48', '2019-11-18 15:50:48'),
(78, 548971849, 'Elias Greenfelder', '917-468-7936 x20191', '2019-11-18 15:50:48', '2019-11-18 15:50:48'),
(79, 452998893, 'Furman Hansen', '(561) 250-3633 x7504', '2019-11-18 15:50:48', '2019-11-18 15:50:48'),
(80, 342563551, 'Delphine Cartwright', '+1-203-478-2852', '2019-11-18 15:50:48', '2019-11-18 15:50:48'),
(81, 281880532, 'Mr. Edd Halvorson DVM', '471-662-1875', '2019-11-18 15:50:48', '2019-11-18 15:50:48'),
(82, 955349385, 'Dale Schumm', '+15922605145', '2019-11-18 15:50:48', '2019-11-18 15:50:48'),
(83, 758439769, 'Shayne Labadie', '835.950.5932 x911', '2019-11-18 15:50:49', '2019-11-18 15:50:49'),
(84, 709424331, 'Caterina Harris V', '572-865-1395 x0751', '2019-11-18 15:50:49', '2019-11-18 15:50:49'),
(85, 190554121, 'Ms. Jennie Pagac II', '+16372422299', '2019-11-18 15:50:49', '2019-11-18 15:50:49'),
(86, 733358706, 'Dylan Mueller', '+1-996-447-3037', '2019-11-18 15:50:49', '2019-11-18 15:50:49'),
(87, 666743465, 'Betsy Wisozk DVM', '1-652-943-8265 x033', '2019-11-18 15:50:49', '2019-11-18 15:50:49'),
(88, 655513319, 'Anastasia Grant II', '(371) 219-8816', '2019-11-18 15:50:49', '2019-11-18 15:50:49'),
(89, 768472512, 'Dr. Ulises Leuschke DDS', '432-875-9093 x473', '2019-11-18 15:50:49', '2019-11-18 15:50:49'),
(90, 692048862, 'Rose Wisoky', '1-449-882-5765', '2019-11-18 15:50:49', '2019-11-18 15:50:49'),
(91, 424336877, 'Prof. Precious Dicki', '485.275.1478', '2019-11-18 15:50:49', '2019-11-18 15:50:49'),
(92, 827377002, 'Mikel Kunde', '1-305-881-6458', '2019-11-18 15:50:49', '2019-11-18 15:50:49'),
(93, 791181868, 'Josh Schoen', '1-396-524-8413', '2019-11-18 15:50:49', '2019-11-18 15:50:49'),
(94, 364807666, 'Issac Stanton', '1-565-427-6820', '2019-11-18 15:50:49', '2019-11-18 15:50:49'),
(95, 555388186, 'Isom Renner', '+16904563808', '2019-11-18 15:50:49', '2019-11-18 15:50:49'),
(96, 308771874, 'Theron Beatty', '597.272.9164', '2019-11-18 15:50:49', '2019-11-18 15:50:49'),
(97, 446287748, 'Mr. Kyle Mills Sr.', '808-968-6685 x4027', '2019-11-18 15:50:49', '2019-11-18 15:50:49'),
(98, 195762537, 'Jessyca Rodriguez', '287.619.4445 x3561', '2019-11-18 15:50:50', '2019-11-18 15:50:50'),
(99, 884611229, 'Abdiel Cronin', '783.354.2946 x952', '2019-11-18 15:50:50', '2019-11-18 15:50:50'),
(100, 158028195, 'Peyton Hoeger', '+1-865-281-2195', '2019-11-18 15:50:50', '2019-11-18 15:50:50');

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
(1, '2019_11_16_094250_create_cliente_table', 1),
(2, '2019_11_16_095109_create_vendedor_table', 1),
(3, '2019_11_16_192807_create_orcamento_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `orcamento`
--

CREATE TABLE `orcamento` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_cliente` bigint(20) UNSIGNED NOT NULL,
  `DataHora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_vendedor` bigint(20) UNSIGNED NOT NULL,
  `Descricao` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Valor` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `orcamento`
--

INSERT INTO `orcamento` (`id`, `id_cliente`, `DataHora`, `id_vendedor`, `Descricao`, `Valor`, `created_at`, `updated_at`) VALUES
(1, 98, '2019-09-14 13:49:01', 10, 'Impedit occaecati possimus magni quia voluptas. Voluptas harum fugiat omnis atque. Quia quo aperiam quam harum atque. Et enim esse quidem necessitatibus nulla dicta ipsa. Cum quia facilis pariatur et. Deserunt ea ut earum et sed consequatur. Sint quia accusamus voluptatum facere doloremque possimus debitis.', 4427803.99, '2019-11-18 15:50:51', '2019-11-18 15:50:51'),
(2, 40, '1985-06-29 04:46:29', 9, 'Fugiat perferendis cumque rerum recusandae cumque autem. Beatae molestias eos reprehenderit quis maiores est quidem. Quia consequatur neque consequatur modi expedita sed. Voluptas illum ut ut aut ut magni facere. Maiores soluta voluptate iusto cum repudiandae soluta possimus. Nobis sit vitae dolorem. Officiis natus aut eos voluptatem autem possimus. Aspernatur et nulla ut a deserunt rerum.', 1948.34, '2019-11-18 15:50:51', '2019-11-18 15:50:51'),
(3, 34, '1984-11-14 18:56:17', 1, 'Similique deserunt aliquid quidem reiciendis. Sit hic occaecati qui in. Et minus odit tempora quis eum nostrum. Dolores quidem tempora veniam accusamus. Beatae quidem voluptatem voluptas quia. Earum ut possimus ullam fugit. Voluptas aliquam voluptate voluptatibus eum aut. Natus quos et recusandae iste itaque asperiores.', 6012861.05, '2019-11-18 15:50:51', '2019-11-18 15:50:51'),
(4, 37, '1971-09-21 19:27:17', 10, 'Hic qui ut sapiente accusamus laudantium et id. Non ut iste veritatis. Sequi unde qui nesciunt assumenda et nostrum. Temporibus molestiae reiciendis maiores et beatae voluptatem porro. Voluptatibus qui maxime cum molestiae velit. Facere enim nisi cumque quis eveniet.', 343.19, '2019-11-18 15:50:51', '2019-11-18 15:50:51'),
(5, 5, '1984-02-27 00:33:42', 3, 'Nihil alias et non corrupti non non exercitationem. Aliquam a ipsam natus pariatur illum aperiam enim. Eligendi aut non quia dolorem explicabo nulla suscipit architecto. Voluptatibus odit eos soluta veritatis. Fugit voluptates optio velit quia atque. Consequatur nobis quibusdam rerum consequatur aliquam omnis.', 124780.42, '2019-11-18 15:50:51', '2019-11-18 15:50:51'),
(6, 3, '2018-03-06 11:20:38', 3, 'Praesentium ut qui qui quas. Aut cupiditate nesciunt fuga nihil molestiae omnis. Voluptates doloribus quo explicabo nam. Omnis totam ipsam omnis quam. Libero consequatur minus doloribus est. At est veniam quos temporibus dolorem.', 375.04, '2019-11-18 15:50:51', '2019-11-18 15:50:51'),
(7, 29, '1985-05-29 01:38:57', 2, 'Iste quas similique esse illo est reiciendis eius occaecati. Voluptatum ea voluptas rerum quibusdam molestias nulla. Blanditiis occaecati et rerum sed eos veritatis ut. Sed eos animi ullam hic. Nihil in aut dolorem consequatur dicta. Sint eveniet molestias dolores et. Quia in laborum doloribus fugit neque doloribus.', 6538679.46, '2019-11-18 15:50:51', '2019-11-18 15:50:51'),
(8, 4, '1977-01-11 03:22:06', 5, 'Repellendus iure ut praesentium fugiat illo quis. Et earum in commodi qui aut. Ea cupiditate quo aut. Dolor velit voluptatem architecto corporis. Sapiente est numquam animi voluptate modi voluptas ut sed. Tempore debitis delectus non mollitia.', 444678603.98, '2019-11-18 15:50:51', '2019-11-18 15:50:51'),
(9, 56, '1970-10-09 06:52:25', 5, 'Esse pariatur ipsa quaerat. Dolorem reprehenderit ea sit ut praesentium. Fugiat deserunt neque corrupti quaerat nesciunt est. Labore possimus iusto ut qui adipisci porro. Aut quidem reiciendis id ex a. Saepe enim quae rem et rerum.', 495894, '2019-11-18 15:50:51', '2019-11-18 15:50:51'),
(10, 12, '2005-04-28 19:22:46', 8, 'Dignissimos ullam at dolorem labore eius alias porro. Minus libero sint necessitatibus doloribus. Quod qui ut consectetur et autem. Nam omnis laborum odit quaerat aliquam delectus. Quia magnam sint soluta. Similique dolore autem quod optio. Cumque perspiciatis doloremque et blanditiis laudantium. Est quo necessitatibus ut nostrum ullam eum. Quisquam reiciendis ut commodi autem.', 589067677.91, '2019-11-18 15:50:51', '2019-11-18 15:50:51'),
(11, 63, '2012-09-07 21:31:14', 4, 'Consequuntur repellat dolore et. At quas enim sapiente laborum dolore. Aperiam nihil sed sit ut ut nihil. Dignissimos et sed reiciendis ut ut aperiam. Optio culpa ut nihil ipsa. Quo dolores qui dolorum sint quia. Alias dolores laboriosam quas reprehenderit. Hic beatae esse nam quae et nulla. Porro voluptas eaque quo et cum voluptates harum quod.', 52378026.83, '2019-11-18 15:50:51', '2019-11-18 15:50:51'),
(12, 83, '1977-11-19 19:34:56', 3, 'Sunt illo veritatis ab saepe. Nisi doloremque et nesciunt facere magnam voluptatum soluta. Velit et sunt occaecati laudantium dicta unde et. Voluptas et ut rerum sunt rerum. Maiores nesciunt laudantium quo sapiente. A nihil repellat autem accusantium labore. Explicabo vel pariatur ut. Officia sit accusantium suscipit ex cupiditate aperiam est.', 1.04, '2019-11-18 15:50:51', '2019-11-18 15:50:51'),
(13, 38, '2008-11-10 06:33:57', 6, 'Itaque suscipit est et fugiat. Cupiditate architecto magni incidunt ut ut et voluptatibus. Placeat cumque debitis rerum similique eaque eveniet officiis incidunt. Odit laborum et perferendis quasi.', 34196.51, '2019-11-18 15:50:51', '2019-11-18 15:50:51'),
(14, 98, '2003-01-23 21:50:48', 9, 'Enim sunt sed et aperiam velit assumenda voluptates id. Sunt et quasi aliquam tenetur. Natus architecto aspernatur aut sint expedita. Quasi quo exercitationem facere assumenda assumenda aliquid consequuntur.', 26048501.66, '2019-11-18 15:50:51', '2019-11-18 15:50:51'),
(15, 36, '2014-04-05 05:13:24', 3, 'Ad quam nulla earum nulla vel quia deserunt. Tenetur eum temporibus molestiae quisquam. Blanditiis suscipit animi velit quibusdam. Sed et facilis consequatur repudiandae qui quis. Deleniti alias sunt commodi blanditiis laudantium dolor. Omnis voluptas quo sunt. Sit delectus nostrum vel tempore. In fuga non vero sunt iure. Vel odio et blanditiis cumque placeat.', 68.49, '2019-11-18 15:50:52', '2019-11-18 15:50:52'),
(16, 79, '2004-10-09 09:48:57', 10, 'Omnis veniam consequatur voluptas voluptatem. Architecto placeat est rerum. Qui voluptas reprehenderit autem voluptas quasi sunt. Sit harum voluptas quo magnam optio est. In et porro natus illo omnis est voluptatibus. Qui expedita corporis unde sed placeat.', 398145.63, '2019-11-18 15:50:52', '2019-11-18 15:50:52'),
(17, 86, '2014-12-05 15:48:21', 6, 'Dolor possimus corporis placeat impedit beatae est modi pariatur. Quis neque dolores voluptate doloremque et dolor. Repellendus eveniet quas ut qui unde facere nostrum. Ipsa corporis reprehenderit suscipit quia repellat voluptas. Aut voluptatem voluptatibus cumque illum. Deleniti sunt illo quia quos voluptates.', 10219.47, '2019-11-18 15:50:52', '2019-11-18 15:50:52'),
(18, 18, '1970-10-01 04:25:58', 7, 'Ut quasi repellendus qui temporibus. Et quibusdam nostrum odit sunt enim maiores. Id sed est cupiditate minus blanditiis. Eos et et reprehenderit porro. Quisquam eum natus vel ut praesentium laborum nihil. Est aut sint sint quam. Id repellat aut ratione modi quis autem dicta.', 791.7, '2019-11-18 15:50:52', '2019-11-18 15:50:52'),
(19, 75, '2013-12-08 23:26:57', 7, 'Rerum neque harum odio et odit iure natus expedita. Et aspernatur omnis et beatae. Qui et fuga dolorum voluptatibus velit rem hic dolores. Impedit eius soluta omnis iste. Quo possimus deleniti ea voluptates vel architecto nihil ab. Nemo ullam numquam exercitationem cumque minus molestias.', 11554577.19, '2019-11-18 15:50:52', '2019-11-18 15:50:52'),
(20, 74, '1985-11-27 21:33:22', 1, 'Qui eos quasi quia optio deleniti sint aut. Ullam iure eius fuga aut eum sequi. Et necessitatibus iste laudantium aut. Laboriosam expedita nesciunt maiores vero. Consequuntur fugit nostrum eum sed placeat. Molestias eveniet minima quia aut earum libero. Adipisci quis accusamus aut et nesciunt. Earum totam pariatur quod nemo doloribus id beatae.', 3619274.77, '2019-11-18 15:50:52', '2019-11-18 15:50:52'),
(21, 1, '1980-02-04 07:16:24', 8, 'Ut enim rerum dolorem alias facilis omnis nam. Voluptates voluptatem soluta cum facilis. Possimus non provident qui doloribus in et cumque. Tempora qui quidem dolorem velit. Sit fuga praesentium quas dolorem illum. Aspernatur tempore magni et quia eum quisquam dolorum. Modi enim sit repellendus. Animi velit vel non accusantium nemo sed qui.', 320229.53, '2019-11-18 15:50:52', '2019-11-18 15:50:52'),
(22, 40, '1972-08-21 10:07:22', 2, 'Autem eos dolor consequatur voluptatem qui aut sunt. Sint et mollitia ea. Veniam sit rerum et est quia. Nostrum ratione et velit. Qui quis molestiae non ut sit quos. Quidem blanditiis at sed sed sint sequi sunt. Non quod ut autem quam dolor quas tenetur consequatur.', 8541.15, '2019-11-18 15:50:52', '2019-11-18 15:50:52'),
(23, 90, '2007-04-02 16:44:00', 2, 'Autem eveniet et velit ipsam. Rerum fuga quos voluptas molestias cumque rerum eum. Temporibus quam et hic nulla quae aut eos. Sunt necessitatibus quia quisquam exercitationem sit molestias. Cupiditate est voluptas molestiae omnis. Alias dignissimos non voluptas a. Et blanditiis voluptates magni alias ipsum. Earum officia atque qui cupiditate itaque laboriosam eaque.', 328630.09, '2019-11-18 15:50:52', '2019-11-18 15:50:52'),
(24, 5, '1983-07-30 22:41:40', 9, 'Vel atque assumenda ducimus aut dicta et quidem officia. Eveniet repudiandae sed delectus nihil sit. Commodi amet eos eos consectetur eum ducimus rem nemo. Quo excepturi sed error molestias. Quia maiores nobis nemo maiores quos. Unde eum impedit qui et qui. Minima odio ducimus voluptas exercitationem. Et rerum sequi omnis similique.', 4119087.81, '2019-11-18 15:50:52', '2019-11-18 15:50:52'),
(25, 92, '1981-10-04 20:37:00', 5, 'Voluptatem incidunt officia autem et nulla pariatur. Nesciunt doloribus reprehenderit soluta unde eligendi itaque error. Rem odit excepturi nemo. Non distinctio similique quaerat tempore unde tempora. Minima inventore dolorem est voluptas. Occaecati iure numquam commodi omnis in sit et eveniet. Magnam et iure recusandae non.', 3105600.02, '2019-11-18 15:50:52', '2019-11-18 15:50:52'),
(26, 92, '1990-02-13 01:56:54', 10, 'Accusantium perferendis harum eos quaerat exercitationem dicta. Quisquam mollitia et et nobis temporibus voluptates ipsum. Qui sit excepturi odit provident sed. Maiores eius dicta consequatur voluptatem. Aspernatur dolorum voluptate vel et consequatur cum. Corporis possimus magnam illum ut et explicabo molestias. Ut autem dolor facere est occaecati est labore. Aliquam aut maxime nobis omnis.', 621.69, '2019-11-18 15:50:52', '2019-11-18 15:50:52'),
(27, 68, '1996-02-18 05:01:52', 4, 'Nam facilis sint dolores sunt est. Facilis est mollitia et blanditiis inventore possimus. Quam in corrupti et et. Qui distinctio aut molestias deserunt aperiam voluptas. Alias aut est omnis aliquid error iusto. Maxime voluptates vero et facere nobis minus alias. Voluptatum possimus quia consequatur laboriosam.', 482504.65, '2019-11-18 15:50:52', '2019-11-18 15:50:52'),
(28, 41, '1977-06-23 19:47:55', 3, 'Eius et accusantium nisi cum at. Vel illum et maxime dolore eveniet voluptas neque. Sunt vel voluptas enim tenetur quas qui molestias velit. Nihil omnis magnam esse sunt. Doloribus ab numquam dicta vero velit. Eos vel voluptas ut dolorem eos non excepturi necessitatibus. Magni beatae quo explicabo corporis veniam voluptas aliquid officia.', 31686742.65, '2019-11-18 15:50:52', '2019-11-18 15:50:52'),
(29, 31, '2017-03-16 23:59:38', 8, 'Minus ut soluta voluptatem. Minus dolores tenetur quo vitae. Nostrum deleniti et molestias. Officia quasi quas non qui omnis et. Molestiae et vitae minus eos. Quae tenetur illum repellendus exercitationem autem rerum. Quia nam aut corporis.', 59.24, '2019-11-18 15:50:52', '2019-11-18 15:50:52'),
(30, 63, '2008-01-20 18:00:09', 4, 'Excepturi laboriosam rerum atque. Maiores exercitationem architecto animi aperiam non ut. Velit est laboriosam consectetur ad est voluptatem. Natus sed aut architecto eveniet incidunt sed. Itaque deserunt accusantium vel non non nulla voluptate quis. Cupiditate omnis accusantium minima aut nobis dicta consequatur nam.', 66751.1, '2019-11-18 15:50:52', '2019-11-18 15:50:52'),
(31, 86, '2011-10-02 11:25:07', 4, 'Temporibus ut dolores natus quia officia sit. Dicta eum nostrum quidem. Commodi beatae voluptas omnis aperiam expedita sunt. Ea eum amet officia nisi illum rerum. Ab ut molestiae est pariatur. Praesentium eos minima maxime rem amet voluptates nulla. Beatae explicabo autem sit libero. Animi doloribus animi quia mollitia.', 0, '2019-11-18 15:50:52', '2019-11-18 15:50:52'),
(32, 72, '1981-03-22 11:10:22', 6, 'Harum corporis suscipit quia nihil quibusdam praesentium reprehenderit. Odio a ratione quia facere dignissimos. Non natus iusto tenetur commodi voluptas velit. Eveniet sit ea corrupti non consequatur.', 14589762.95, '2019-11-18 15:50:53', '2019-11-18 15:50:53'),
(33, 4, '2008-03-13 05:28:26', 2, 'Sunt minus non aut. Dolorum sunt optio ut architecto quisquam consequatur. Aut nam et perspiciatis qui cum voluptatem. Dolorum non corrupti officiis soluta laboriosam.', 305866029.85, '2019-11-18 15:50:53', '2019-11-18 15:50:53'),
(34, 3, '1999-02-03 19:48:26', 3, 'Asperiores laboriosam sapiente voluptas quidem nobis. Error numquam magni provident qui magni corrupti. Unde dolor error doloremque suscipit illo est. Blanditiis omnis ut voluptatem ipsam. Deleniti voluptas aliquid in aut veniam velit temporibus laudantium. Quo nostrum dolor fugiat id. Sit et deleniti vel. Et non accusamus exercitationem quis deleniti eaque.', 1067.66, '2019-11-18 15:50:53', '2019-11-18 15:50:53'),
(35, 11, '1991-05-19 01:29:59', 3, 'Nulla expedita quisquam totam et saepe possimus. Dolore in laudantium asperiores quaerat necessitatibus qui id. Eos sint accusantium sunt ab magnam. Dolorum nihil dolores error omnis.', 140.15, '2019-11-18 15:50:53', '2019-11-18 15:50:53'),
(36, 22, '1972-09-28 10:36:28', 2, 'Iste itaque et libero repudiandae nesciunt iste hic. Voluptatum mollitia quasi quia aut et similique. Provident in nihil cumque. Consequatur velit esse sunt impedit nemo accusantium quis neque. Quaerat voluptatem praesentium consequatur sit eum unde reiciendis natus. Enim quia et vitae unde numquam. Autem voluptatem soluta exercitationem occaecati voluptas aut.', 37.92, '2019-11-18 15:50:53', '2019-11-18 15:50:53'),
(37, 53, '2007-04-25 04:12:17', 7, 'Repellat dignissimos culpa aspernatur voluptatum eos et labore. Est ratione quaerat et deserunt praesentium dicta ea. Aut asperiores necessitatibus laudantium perspiciatis inventore incidunt in. Nam esse vel non architecto voluptatem. Aut harum veritatis magnam est deleniti minus.', 86155597.02, '2019-11-18 15:50:53', '2019-11-18 15:50:53'),
(38, 34, '2007-05-25 07:05:09', 5, 'Nihil illo blanditiis sit necessitatibus nisi deleniti facilis. Amet dolor rerum id. Occaecati voluptas laudantium odit fuga quo quia quo. Ab quibusdam vero ut temporibus id. Velit nesciunt voluptatem adipisci aperiam quos itaque corrupti.', 162039.57, '2019-11-18 15:50:53', '2019-11-18 15:50:53'),
(39, 88, '1975-11-19 07:57:05', 2, 'Eaque vitae ex corrupti eius commodi dolore. Saepe consequatur in fuga qui perferendis voluptate possimus. Sit earum nisi vel. Temporibus id laudantium beatae quos. Repellat dolore impedit et nihil a vel. Et pariatur ut quidem sunt quaerat. Illum aspernatur tempore fugiat odio. Odit enim sapiente nesciunt rerum suscipit occaecati culpa. Esse cumque sunt occaecati voluptatem in ut aspernatur.', 37.67, '2019-11-18 15:50:53', '2019-11-18 15:50:53'),
(40, 96, '2018-10-18 17:05:37', 1, 'Illo rerum aut saepe at minima. Omnis quisquam labore adipisci minus nesciunt aut assumenda. Consequuntur voluptas blanditiis qui occaecati quia. Quasi officiis iusto ut voluptatem. Dolor in rerum incidunt quia officia quam. Natus omnis et amet rerum est non aliquid. Voluptatum enim odio enim ut deserunt. Rem aut quis id voluptatem. Modi quis similique fuga et eum quos labore.', 5605426.96, '2019-11-18 15:50:53', '2019-11-18 15:50:53'),
(41, 32, '2007-06-30 05:17:01', 7, 'Ipsum nostrum est esse et. Facere repellat accusantium ab. Laboriosam debitis eum omnis iure inventore. Eius est nisi modi perspiciatis sit. Nostrum aut nesciunt incidunt quae modi. Ducimus excepturi consequatur a reprehenderit id omnis culpa. Dolorem praesentium asperiores error impedit quas possimus quia officiis. Omnis non et laborum porro et excepturi incidunt.', 75738.95, '2019-11-18 15:50:53', '2019-11-18 15:50:53'),
(42, 59, '1981-12-10 22:23:55', 1, 'Ea officia enim ut et. Esse rerum magnam dolorem nobis ullam. Et optio voluptatem eius nisi quas et in delectus. Et beatae et soluta expedita sunt delectus corrupti quasi. Laudantium aut velit sunt et est fuga. Expedita in eum omnis rerum assumenda tempora. Voluptas maxime sed blanditiis minima qui occaecati. Enim accusamus odit quos accusantium non corporis. Aperiam in aut et aut laborum id.', 11259.12, '2019-11-18 15:50:53', '2019-11-18 15:50:53'),
(43, 90, '1973-11-03 01:22:36', 7, 'Maxime qui rem distinctio numquam. Est quis nobis aliquam beatae commodi quia eaque. Mollitia quidem fuga iusto consequatur libero recusandae. Vel doloribus pariatur est quas ex omnis voluptates in. Dolorem dicta sapiente sequi corrupti unde ea. Nihil dolores hic culpa dolores deserunt rerum. Odio maiores at nemo nihil sit.', 450066.57, '2019-11-18 15:50:53', '2019-11-18 15:50:53'),
(44, 86, '1986-05-03 18:43:59', 9, 'Voluptatem ut aliquam quisquam. Sed molestiae nam et impedit nesciunt est. Natus blanditiis doloribus aut molestias autem eius aut. Est et illo sunt rerum enim voluptatum exercitationem. Et iusto ab eius aspernatur quis vel aperiam. Accusantium veniam placeat placeat quibusdam error.', 16064794.61, '2019-11-18 15:50:53', '2019-11-18 15:50:53'),
(45, 27, '2010-02-01 02:32:50', 7, 'Qui voluptas qui excepturi ipsa voluptatem vitae vero. Et delectus ducimus explicabo ducimus. Qui quasi placeat dolorum in et temporibus. Omnis consequatur iste vel ad natus maxime. Vel nam exercitationem quia dolorum. Odit non delectus unde consequatur facilis dolorem vel quasi. Voluptates ratione aliquid nulla amet quibusdam. Veniam voluptatibus libero distinctio rerum mollitia eius qui.', 384954.43, '2019-11-18 15:50:53', '2019-11-18 15:50:53'),
(46, 84, '1973-02-18 04:06:17', 5, 'In quia vel esse dolore. Modi ratione reprehenderit sed nesciunt libero quisquam. Debitis quia qui voluptas quia. Et possimus cupiditate soluta dolores illo cum quisquam fuga. Est rerum qui ullam rem est. Laboriosam non totam placeat nobis. Libero et et unde nulla. Qui est dignissimos molestiae animi animi. Harum ipsa aut odio reiciendis.', 114768366.2, '2019-11-18 15:50:53', '2019-11-18 15:50:53'),
(47, 67, '1985-03-10 09:23:37', 7, 'In ipsum temporibus est itaque neque necessitatibus. Asperiores nam sit itaque. Doloremque voluptas suscipit sit et. Facilis qui amet consequatur autem. Est consequatur sit dolorem mollitia. Non consequatur minus quisquam ab sint rerum. Inventore et et odio id atque asperiores incidunt.', 830.34, '2019-11-18 15:50:53', '2019-11-18 15:50:53'),
(48, 41, '2001-05-19 07:24:27', 2, 'Voluptatibus quam et et molestias ut ipsum ut. Beatae impedit delectus ut ea ullam magni. Nobis voluptas neque iusto dignissimos sit dicta accusantium. Adipisci et voluptatem et tempora reiciendis quidem. Voluptatem dolorem perferendis est velit. A cum consequuntur incidunt est neque aut.', 946360.18, '2019-11-18 15:50:53', '2019-11-18 15:50:53'),
(49, 71, '1980-01-06 09:12:59', 6, 'Excepturi qui ullam fugit eligendi voluptatem minima quasi. Facere consequatur dicta a quasi. Excepturi sit at omnis sit aut. Voluptatibus harum consequuntur odit quia qui quisquam. Aut facere reiciendis qui vero. Voluptatem nisi minima non omnis suscipit aperiam. Sunt voluptatibus tenetur eum qui et. Mollitia sint velit consequuntur voluptatem inventore. Deserunt est eligendi ad eos quos.', 348697.43, '2019-11-18 15:50:54', '2019-11-18 15:50:54'),
(50, 92, '1993-02-09 18:17:02', 3, 'Maxime cupiditate minus qui ipsa similique a consectetur. Et error maxime modi voluptatem sint qui. Minus voluptatem quibusdam et deleniti cupiditate incidunt dolor molestias. Fugiat esse laudantium odio quos. Reprehenderit molestiae et aut cupiditate maxime officia. Veniam accusamus alias quia provident aut ratione omnis.', 2399335.6, '2019-11-18 15:50:54', '2019-11-18 15:50:54'),
(51, 84, '2015-01-28 04:43:57', 7, 'Libero sit odio et molestias et sapiente eius reiciendis. Nemo architecto quis quia ab. Et officiis quibusdam et tempora. Consequatur alias rerum dignissimos adipisci aut at. Illum quod autem dicta eveniet accusantium et. Ad ipsa quia quisquam rerum accusamus.', 0.05, '2019-11-18 15:50:54', '2019-11-18 15:50:54'),
(52, 6, '1973-04-21 13:15:24', 1, 'Earum quas repudiandae ea aut porro et numquam. Blanditiis iusto facere ut illo et. Asperiores itaque qui voluptas modi omnis placeat incidunt. Atque quos temporibus repellat mollitia odio. Non id magni dolorum sit iusto quibusdam ut. Et labore itaque quia omnis.', 165280.11, '2019-11-18 15:50:54', '2019-11-18 15:50:54'),
(53, 23, '2018-12-03 15:22:23', 3, 'Magnam voluptas reiciendis officia. Aut neque quis molestias non eligendi eligendi quidem reiciendis. Natus et consequatur a qui quaerat. Porro et adipisci iste consequuntur. Provident itaque qui qui. Voluptatem repellat hic deleniti rerum et consequatur aliquam culpa. Deserunt error aut eveniet maxime nihil. Qui rem qui vel facilis quidem recusandae id.', 477833359.03, '2019-11-18 15:50:54', '2019-11-18 15:50:54'),
(54, 19, '1998-09-02 13:12:51', 6, 'Odit debitis quae voluptatibus tenetur qui eveniet omnis. Officiis ab ut repellat. Reprehenderit accusamus qui facere voluptatem non quis ea accusamus. Quidem debitis aspernatur dolorem qui. Ut corporis corrupti quibusdam optio est.', 2.06, '2019-11-18 15:50:54', '2019-11-18 15:50:54'),
(55, 7, '1997-01-30 17:42:25', 3, 'Voluptatem officiis eos sed quaerat dolores error. Voluptatem non non consequuntur praesentium distinctio perspiciatis. Recusandae cupiditate autem deserunt architecto quisquam vitae. Dolorem suscipit corrupti et mollitia ut. Est dolore quo dicta. Id accusamus similique enim. Possimus hic eum facere voluptas. Mollitia incidunt et sapiente inventore unde. Ut est eos molestias et.', 762571.42, '2019-11-18 15:50:54', '2019-11-18 15:50:54'),
(56, 97, '1972-02-23 05:36:33', 6, 'Qui temporibus et nulla fugiat eos omnis fuga. Sit nobis cumque rerum ex repellat magnam doloribus. Dolores itaque et et. Dignissimos sunt et nobis et delectus soluta voluptas. Fugit fugiat impedit commodi necessitatibus sit sunt. Ipsam ex repudiandae possimus placeat qui possimus. Provident sint cupiditate voluptas.', 2012.88, '2019-11-18 15:50:54', '2019-11-18 15:50:54'),
(57, 14, '2013-02-02 12:07:00', 8, 'Et magni aliquam itaque in reprehenderit laboriosam. Autem fugiat rerum debitis sit numquam. Corporis quod fugit optio aut facere. Odio excepturi id laborum dolor et. Hic provident eligendi nihil temporibus. Laudantium veniam ut dolorem voluptas sunt eum nostrum. Ut amet vel dolores ut aut est omnis.', 0.15, '2019-11-18 15:50:54', '2019-11-18 15:50:54'),
(58, 33, '2016-10-10 22:17:42', 3, 'Necessitatibus quisquam nisi unde quisquam iusto facilis ullam consectetur. Ut voluptatibus aut qui et quas dolor. Corporis reiciendis aut culpa qui. Cupiditate eius ipsa et rerum sint hic.', 186.02, '2019-11-18 15:50:54', '2019-11-18 15:50:54'),
(59, 92, '1978-07-14 03:01:39', 8, 'Facere ex esse ex sunt quasi error. Suscipit tempore reiciendis debitis delectus. Vel enim unde nobis sed itaque ab. Ipsa quis deleniti nulla cum nam voluptate ipsum autem. Fuga ea ratione voluptatem quasi eveniet sit aperiam. Similique quia adipisci omnis illum. Delectus quia officia consequatur aut quia sed. Cupiditate et occaecati nihil sapiente doloremque.', 734.4, '2019-11-18 15:50:54', '2019-11-18 15:50:54'),
(60, 34, '2009-08-04 14:41:54', 8, 'Sed sint dolores et et deleniti consequatur eveniet. Et aspernatur quo est cumque numquam eos. Aliquid corporis consequatur et ipsum molestiae. Laboriosam odio perspiciatis sint iusto repellat distinctio. Delectus et quasi qui rerum aut modi in. Dolores tenetur aspernatur eos quibusdam. Temporibus commodi qui eos laboriosam voluptatum rem modi.', 163584794.99, '2019-11-18 15:50:54', '2019-11-18 15:50:54'),
(61, 46, '1972-05-10 22:53:49', 6, 'Porro tempore doloribus possimus ut. Consequuntur quo qui voluptatem impedit earum quos. Quidem ipsa modi numquam consectetur quisquam delectus. Iure sed ipsa nobis et esse veniam aliquam. Illum consequatur eaque doloribus dignissimos et. Et voluptas nulla est rerum. Quibusdam dolorem odit sed numquam. Iure qui temporibus incidunt autem repellendus.', 35.01, '2019-11-18 15:50:54', '2019-11-18 15:50:54'),
(62, 34, '2019-01-15 00:32:44', 1, 'Dolor qui distinctio ipsa delectus. Eaque omnis et reiciendis velit dignissimos impedit. Libero ut sint veniam voluptatum molestiae sint. Ducimus quia hic dolores et quam minus ex. Quasi rem omnis eveniet recusandae quod sit. Debitis nam repellendus modi at libero est.', 25.36, '2019-11-18 15:50:54', '2019-11-18 15:50:54'),
(63, 63, '2012-01-03 23:56:48', 10, 'Eos aspernatur rem exercitationem sed est vero ipsum. Maiores saepe aut repellat. Quasi iste ad tempore molestiae accusamus dolor. Perferendis est aut nobis impedit animi sint consequatur sint. Consequuntur voluptates debitis sint a. Quam et suscipit at qui. Eaque nobis molestiae deserunt rem.', 27470.08, '2019-11-18 15:50:54', '2019-11-18 15:50:54'),
(64, 38, '1985-07-09 15:41:32', 5, 'Nobis dolor molestiae repellat. Ut dignissimos dolor blanditiis ipsam ullam officiis quasi. Nobis ut dolorem molestias rerum dolores. Modi ut vero et et ut dolores magni. Voluptatibus consequatur asperiores atque deserunt. Autem iste consectetur ipsam at eaque vel. Libero excepturi perspiciatis consequatur quibusdam aliquid qui aliquam.', 667471.99, '2019-11-18 15:50:54', '2019-11-18 15:50:54'),
(65, 78, '1996-07-12 22:17:37', 10, 'Velit nihil amet voluptate veniam quasi vel. Sequi modi mollitia autem a dolorem sit nisi sapiente. Dignissimos ad qui qui et delectus veniam voluptatibus. Doloremque illo distinctio repellendus sed autem sit et.', 16260.09, '2019-11-18 15:50:54', '2019-11-18 15:50:54'),
(66, 97, '2000-03-11 13:26:28', 7, 'Enim enim quas ab ex sint omnis dolor. Non expedita est ut ab. Cum sapiente non sapiente dolores officia. Doloremque repellendus doloremque quis dolor. Minima et quasi dolores dolorum. Iusto cumque voluptate corporis officia. Quasi neque voluptatem ut pariatur. Dolorem voluptas sint commodi ut. Perspiciatis eligendi consequatur eius nulla praesentium ipsam sequi.', 4451.37, '2019-11-18 15:50:55', '2019-11-18 15:50:55'),
(67, 66, '1998-11-07 02:15:24', 7, 'Adipisci impedit et nobis nemo corrupti. Aut magni voluptatem quia et in soluta. Quo iure quibusdam in et. Repellendus delectus similique quisquam sed.', 27.19, '2019-11-18 15:50:55', '2019-11-18 15:50:55'),
(68, 94, '1985-10-18 22:46:47', 2, 'Est expedita assumenda adipisci maiores molestias totam rerum. Sunt tempora tenetur atque quis voluptatem tempora eveniet. Impedit perferendis et nostrum in quidem. Ea tenetur expedita nulla nulla voluptatem. Et odio et in. Voluptatem minus sequi occaecati velit unde. Repudiandae enim possimus delectus occaecati. Ut quo modi excepturi iste et. Molestias ratione quia ut.', 2236287.78, '2019-11-18 15:50:55', '2019-11-18 15:50:55'),
(69, 56, '2007-02-05 19:10:50', 4, 'Distinctio explicabo qui odio voluptatem et tempora earum. Maxime amet at qui sed. Sit provident perferendis ut sint. At quos voluptatum dolore ducimus. Dolorem consequatur quam cum velit repellat quia id. Suscipit sequi veniam nobis natus. Incidunt officia molestiae modi cupiditate.', 7.44, '2019-11-18 15:50:55', '2019-11-18 15:50:55'),
(70, 17, '1980-06-12 20:28:26', 3, 'In quod voluptatem enim et fuga quo commodi cumque. Eum at odio provident nihil repellat veritatis. Eos voluptatibus tempore a in iste. In quam enim voluptatem ipsa. Doloremque voluptatem aut perferendis assumenda. Quidem repellendus ut sit inventore.', 19755.48, '2019-11-18 15:50:55', '2019-11-18 15:50:55'),
(71, 60, '1985-08-27 10:55:13', 5, 'Veniam quia sit veniam quia sed debitis. Et sequi non ea in eum soluta est quibusdam. Dolor omnis quasi consequatur cumque dicta illum et fuga. Et porro cupiditate quibusdam fuga eaque voluptates. Hic aspernatur enim in. Expedita quam modi error inventore est.', 2815624.77, '2019-11-18 15:50:55', '2019-11-18 15:50:55'),
(72, 96, '1970-06-15 12:07:37', 8, 'Modi et et id ullam. Dolorem dicta sed nostrum modi doloribus similique est. Quia aliquid optio saepe et occaecati sint. Pariatur incidunt qui itaque quibusdam. Tempore eos soluta error voluptates sint et. Adipisci necessitatibus natus dolores facilis voluptatem qui hic. Voluptatem officia ad aut iure illum ut. Asperiores inventore consequatur sint optio et impedit repellat.', 0, '2019-11-18 15:50:55', '2019-11-18 15:50:55'),
(73, 40, '1998-01-25 08:47:47', 4, 'Similique recusandae voluptates laborum rerum. Incidunt sit quo iste non dolores doloremque quia necessitatibus. Quae ratione deserunt iusto voluptatibus eligendi dolorem. Maxime corrupti vel pariatur amet. Ratione excepturi id ex velit nam totam.', 4.35, '2019-11-18 15:50:55', '2019-11-18 15:50:55'),
(74, 60, '2016-06-29 10:56:41', 5, 'Deleniti eum ipsam nam fugit et libero. Molestias laborum tenetur vero rerum et nemo accusantium ut. Aut inventore aut nostrum temporibus. Possimus reprehenderit aut sint sit et fugit architecto. Vero est praesentium quam voluptatum nihil hic. Molestiae nemo sed hic possimus hic. Qui vitae qui dolores dicta doloribus minima. Asperiores neque laborum et. Cupiditate ea est est alias qui.', 529.09, '2019-11-18 15:50:55', '2019-11-18 15:50:55'),
(75, 8, '1994-10-05 21:56:43', 5, 'Voluptates esse quaerat sapiente sint. Voluptatem tempora qui ducimus molestiae. Sed aut quis odio laboriosam corrupti maiores. Adipisci dolores maiores et aperiam. Quae praesentium quasi est ea minima. Qui tenetur delectus veniam et quam nulla deleniti. Quia molestias aut voluptatibus quis maxime placeat.', 9196.32, '2019-11-18 15:50:55', '2019-11-18 15:50:55'),
(76, 4, '1991-02-18 16:57:16', 1, 'Rerum totam magni et qui. Commodi et non corrupti nulla voluptatem. Et totam sit pariatur ea mollitia reprehenderit. Vel dolor excepturi omnis non assumenda est rerum sapiente. Et non ut beatae quisquam accusamus cum quo qui. Consequatur eum omnis dolore in quod sapiente. Et aut quibusdam iure iure repudiandae. Blanditiis natus consequatur est at provident consequatur.', 24.15, '2019-11-18 15:50:55', '2019-11-18 15:50:55'),
(77, 67, '1984-10-16 14:04:10', 9, 'Et qui veritatis optio aut est ipsam et. Et sit dolore repellendus facere. Sed cupiditate dolor porro optio et rerum. Repudiandae et similique voluptatibus voluptatum deleniti. Distinctio officiis eum quod est maxime voluptas. Modi sit in deserunt tempora autem. Odit repellendus autem eius aspernatur.', 102078.51, '2019-11-18 15:50:55', '2019-11-18 15:50:55'),
(78, 59, '2018-06-03 21:23:45', 9, 'Reprehenderit possimus veniam autem dignissimos error reprehenderit. Blanditiis quibusdam et beatae neque ut. Voluptatem quia assumenda omnis quae rerum. Eveniet fuga ad qui harum aut. Laborum consequatur dolorum deserunt libero voluptatem quasi id aut. Nisi at tempora impedit sapiente velit ducimus. Nobis numquam beatae hic et iste nulla magni.', 20182.69, '2019-11-18 15:50:55', '2019-11-18 15:50:55'),
(79, 81, '2007-09-07 04:12:09', 7, 'Adipisci corrupti occaecati occaecati sunt et sit. Libero veniam ipsam officiis natus incidunt non accusamus. Magni et laboriosam voluptatem et rem. Quos sed architecto veniam error. Temporibus reprehenderit ad est laudantium. Provident maxime aperiam reiciendis dolor et nesciunt est vel. Est explicabo quo sit officiis voluptas velit et.', 2.94, '2019-11-18 15:50:55', '2019-11-18 15:50:55'),
(80, 34, '2001-09-20 18:15:29', 10, 'Harum rerum blanditiis ut. Reiciendis eaque dolorem saepe. Eius ab praesentium quos rerum impedit illum. Aut ipsam voluptate occaecati fugit eos aliquam numquam. Ut voluptas id provident est. Perspiciatis quis qui sint et velit sint quia inventore. Ad inventore non iste dolorum aut qui. Sunt aut exercitationem aut eligendi.', 3.71, '2019-11-18 15:50:55', '2019-11-18 15:50:55'),
(81, 37, '2009-11-27 09:54:55', 8, 'Veritatis sit cumque odit consequatur. Deserunt voluptatibus rem quod est enim quia. Quo expedita nostrum animi quas. Atque adipisci consequatur rerum tempore adipisci. Nulla nesciunt ducimus possimus et fuga in deserunt ut. Dolorem animi ut voluptates qui. Et et quia officia velit. Non cumque velit asperiores voluptatem eligendi et.', 32.86, '2019-11-18 15:50:55', '2019-11-18 15:50:55'),
(82, 97, '1973-12-16 23:05:15', 5, 'Quo corporis explicabo non consequatur excepturi et. Iusto consequatur minus minus. Corrupti et enim ullam tenetur aut et. Autem maiores labore quae aliquam praesentium aut illo. Voluptatibus voluptas odit aut fuga corrupti amet. Cum incidunt et sapiente ullam voluptatem. Et culpa omnis id commodi accusantium quia praesentium. Veritatis minus nostrum aut sapiente distinctio enim.', 42.62, '2019-11-18 15:50:55', '2019-11-18 15:50:55'),
(83, 19, '1990-12-31 11:19:24', 7, 'Saepe sit modi quam placeat dolor. Voluptatem non commodi qui tempore. Ut deleniti molestiae ipsum vero quidem. Veritatis quos vero voluptatem. Alias non saepe excepturi alias sequi est. Non sit velit et illo. Eveniet tempora nulla quia iure nostrum repellat. Ratione velit voluptate reiciendis qui numquam quis. Aliquid voluptatum illo omnis et eos.', 1374.29, '2019-11-18 15:50:56', '2019-11-18 15:50:56'),
(84, 11, '2019-07-09 18:14:10', 7, 'Repellendus rerum hic et et. Consequuntur odio itaque praesentium illum molestiae ad. Officia assumenda magni aliquid debitis. Quas aut officia sed qui sapiente sed iure. Eveniet ipsum est eos dolorem impedit. Debitis est eum hic alias eum. Ex et optio dolor quis enim. Voluptatem aliquam consequatur provident similique labore ea hic.', 100292354.73, '2019-11-18 15:50:56', '2019-11-18 15:50:56'),
(85, 93, '1987-01-24 08:19:40', 1, 'Maxime sed consequatur aut ab. Quasi hic dignissimos consequuntur voluptatum. In sit ea nihil qui aut. Quo laudantium sit explicabo fuga delectus voluptatem a. Dicta et est possimus ratione. Omnis nihil quas ut ut. Quia officiis alias aut porro qui delectus sapiente.', 0, '2019-11-18 15:50:56', '2019-11-18 15:50:56'),
(86, 66, '2018-03-21 11:46:21', 4, 'Quo sequi iste omnis optio. Est quo nisi expedita qui placeat occaecati. Atque voluptas nihil laboriosam. Exercitationem rem eos fuga est. Animi maiores natus cupiditate odit.', 1402091.38, '2019-11-18 15:50:56', '2019-11-18 15:50:56'),
(87, 10, '1978-10-06 17:50:46', 5, 'Recusandae qui alias doloribus animi nulla vero. Cum occaecati aut velit qui iure. Deleniti dolore placeat ut. Est optio non provident placeat nostrum laudantium quidem laborum. Velit ut voluptate et esse est. Ullam eveniet optio est quia. Quis fuga ipsam consequatur nihil architecto doloribus optio.', 7814.49, '2019-11-18 15:50:56', '2019-11-18 15:50:56'),
(88, 19, '1982-05-20 01:07:46', 9, 'Architecto eos ratione asperiores ratione qui. Voluptatibus quo alias delectus autem nemo eum illo ducimus. Laudantium praesentium sunt voluptas beatae. Ut eos nobis laborum nihil eos et. Velit reprehenderit sequi ipsa enim inventore qui doloribus. Ut qui quis ea et suscipit perferendis. Quia molestias est ut veniam quis.', 26741360.88, '2019-11-18 15:50:56', '2019-11-18 15:50:56'),
(89, 52, '2015-06-25 02:05:48', 1, 'Dolorem in totam earum necessitatibus nihil rerum ratione. Et quia sunt illo reprehenderit animi sit. Voluptatem dolorem soluta vero ut itaque voluptatem. Illum velit inventore eum. Omnis amet voluptas repudiandae quia tempora. Numquam dicta non omnis nulla commodi et.', 119250.55, '2019-11-18 15:50:56', '2019-11-18 15:50:56'),
(90, 56, '1989-01-29 12:31:29', 2, 'Eos in sint blanditiis illum praesentium eius. Ad ab rerum ipsum quis tempora reiciendis modi. Debitis accusamus autem saepe vel tenetur et magni mollitia. Perferendis dolore deleniti necessitatibus officiis. Autem quia nisi adipisci incidunt ut beatae animi.', 264.85, '2019-11-18 15:50:56', '2019-11-18 15:50:56'),
(91, 38, '2016-01-07 11:16:49', 8, 'At libero quaerat et quam quia. Tenetur eum similique sit sunt minus. Consequuntur magni consequatur enim molestiae distinctio. Delectus dolor expedita voluptates magni nam fuga accusamus et. Aut aut ut non dolor. Numquam et ratione aut eos.', 520.19, '2019-11-18 15:50:56', '2019-11-18 15:50:56'),
(92, 68, '2004-01-07 00:10:38', 8, 'Dolore quaerat dolore sed est quisquam sed in. Voluptas ab necessitatibus error ut assumenda. Qui eos veniam enim quidem. Sed fugiat dicta repudiandae. Qui accusantium perferendis cupiditate non. Voluptatem quas voluptas at recusandae sit aut. Ut qui velit quia dolorum inventore harum odit. Et quidem doloremque velit ea.', 15120.7, '2019-11-18 15:50:56', '2019-11-18 15:50:56'),
(93, 77, '2018-01-23 00:08:00', 7, 'Consequatur quisquam sed nihil saepe fugiat unde voluptate non. Hic ab et perferendis qui nobis. Molestias consequatur laborum animi dolores voluptates tenetur harum molestias. Laboriosam earum aliquid tempora minus voluptatum doloribus maiores. Fuga reprehenderit aliquam dolorem hic. Et modi eligendi facere consequatur.', 9.01, '2019-11-18 15:50:56', '2019-11-18 15:50:56'),
(94, 71, '1971-09-14 22:05:32', 5, 'Enim autem suscipit dolorum eos aliquid id consequuntur. Aliquid magni sunt qui. Non vel suscipit illum voluptatem. Delectus illo non enim accusamus amet nostrum. Rem quidem adipisci odit sequi est culpa. Aut saepe vel vel. Officiis hic totam pariatur eaque ut. Consequatur deserunt in perspiciatis ducimus error eius quia sint. Et aut blanditiis dolorum fugiat.', 832.69, '2019-11-18 15:50:56', '2019-11-18 15:50:56'),
(95, 70, '1990-12-13 08:53:30', 9, 'Dicta veniam beatae quam eius quisquam aut et. Officiis non est eos natus sapiente suscipit. Incidunt sint non et repudiandae saepe sit. Illum blanditiis nisi porro labore inventore. Aut minima enim expedita nobis asperiores molestias in. Sint animi veritatis fuga sint.', 4.35, '2019-11-18 15:50:56', '2019-11-18 15:50:56'),
(96, 83, '1983-09-23 18:34:44', 2, 'Omnis ut est aut consequatur sapiente. Et non ut id incidunt. Voluptatem tempore provident a numquam eos nihil quia at. Et similique quisquam tempora vel sint eos. In doloribus facere facere voluptatibus corrupti ipsa voluptatem. Enim quia magnam eaque voluptatibus commodi. Laudantium id excepturi quaerat omnis voluptatem nobis.', 1.79, '2019-11-18 15:50:56', '2019-11-18 15:50:56'),
(97, 23, '2014-07-21 15:54:12', 3, 'Quis quia cumque mollitia dolor soluta. Tempora quibusdam itaque maiores magni consectetur sequi. Veritatis minus laudantium sit non. Ea aut est rerum eum facilis. Similique consequatur et ea repellendus officiis sunt. Totam fuga molestias mollitia labore et laborum sint. Commodi corporis molestiae dolorem rerum dolorem. Reprehenderit quod unde asperiores qui quis error.', 104.98, '2019-11-18 15:50:56', '2019-11-18 15:50:56'),
(98, 45, '1999-03-04 09:07:01', 10, 'Possimus odit omnis dolore dolorum voluptate et. Est et totam nihil maiores quam doloribus saepe. Aperiam consequuntur debitis rem inventore. Autem tempora amet at tenetur minima provident aut porro. Excepturi numquam vitae ut possimus. Amet ab eos aut qui. Aliquid ipsum sit rerum qui ratione fuga ratione. Voluptatem minus repellendus cupiditate alias et consequatur voluptas.', 22770.95, '2019-11-18 15:50:56', '2019-11-18 15:50:56'),
(99, 93, '1971-09-15 12:46:50', 3, 'Deleniti voluptatem id quo quas adipisci temporibus enim fugit. Saepe modi molestiae sit. Officia quae dolorum rerum qui magni minus ex. Debitis sit fuga et. Nesciunt illum est ad sit qui. Quam delectus delectus maiores amet illum laboriosam animi. Quam fuga tempora est atque accusamus. Similique nostrum saepe tempora quia dicta. Dignissimos quae earum necessitatibus vitae vel odio.', 5481414.33, '2019-11-18 15:50:57', '2019-11-18 15:50:57'),
(100, 68, '1997-07-16 16:59:41', 10, 'Nesciunt corrupti voluptatem qui eum. Non officia rerum harum nihil et non. Amet numquam qui repudiandae. Nam ipsum et eaque et iure suscipit omnis. Accusantium et est aut ea dicta sed officiis. Impedit animi nesciunt rerum et. Eius sed qui voluptatem tempore illum commodi.', 339.03, '2019-11-18 15:50:57', '2019-11-18 15:50:57');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendedor`
--

CREATE TABLE `vendedor` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cpf` bigint(20) NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `vendedor`
--

INSERT INTO `vendedor` (`id`, `cpf`, `nome`, `telefone`, `created_at`, `updated_at`) VALUES
(1, 33333333333, 'Yvette Keeling', '1-540-632-6943 x29329', '2019-11-18 15:50:50', '2019-11-18 15:50:50'),
(2, 49668752, 'Prof. Jennings Mraz DVM', '1-339-300-6991 x0431', '2019-11-18 15:50:50', '2019-11-18 15:50:50'),
(3, 84800128, 'Elwin Cremin', '905.349.6056', '2019-11-18 15:50:50', '2019-11-18 15:50:50'),
(4, 86348067, 'Mr. Kelvin Nader MD', '951.834.2948', '2019-11-18 15:50:50', '2019-11-18 15:50:50'),
(5, 63990528, 'Alexane Hand', '+1-296-764-7582', '2019-11-18 15:50:50', '2019-11-18 15:50:50'),
(6, 31516038, 'Ms. Marisol Marks IV', '1-229-666-9035', '2019-11-18 15:50:50', '2019-11-18 15:50:50'),
(7, 50524455, 'Callie Crist', '1-237-960-6942', '2019-11-18 15:50:50', '2019-11-18 15:50:50'),
(8, 77578854, 'Dr. Frederik Franecki IV', '356.767.1115 x99880', '2019-11-18 15:50:50', '2019-11-18 15:50:50'),
(9, 52901210, 'Dr. Emie Emmerich', '1-682-587-7790', '2019-11-18 15:50:50', '2019-11-18 15:50:50'),
(10, 95975175, 'Alia Bahringer', '607.883.6404 x31894', '2019-11-18 15:50:50', '2019-11-18 15:50:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orcamento`
--
ALTER TABLE `orcamento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orcamento_id_cliente_foreign` (`id_cliente`),
  ADD KEY `orcamento_id_vendedor_foreign` (`id_vendedor`);

--
-- Indexes for table `vendedor`
--
ALTER TABLE `vendedor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orcamento`
--
ALTER TABLE `orcamento`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `vendedor`
--
ALTER TABLE `vendedor`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `orcamento`
--
ALTER TABLE `orcamento`
  ADD CONSTRAINT `orcamento_id_cliente_foreign` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`),
  ADD CONSTRAINT `orcamento_id_vendedor_foreign` FOREIGN KEY (`id_vendedor`) REFERENCES `vendedor` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
