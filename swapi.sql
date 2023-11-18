-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-11-2023 a las 23:21:46
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `swapi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `api_especies`
--

CREATE TABLE `api_especies` (
  `id` bigint(20) NOT NULL,
  `nombre` longtext COLLATE utf8_bin NOT NULL,
  `clasificacion` longtext COLLATE utf8_bin NOT NULL,
  `designacion` longtext COLLATE utf8_bin NOT NULL,
  `altura_promedio` decimal(5,2) NOT NULL,
  `esperanza_vida` int(11) NOT NULL,
  `idioma` longtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `api_especies`
--

INSERT INTO `api_especies` (`id`, `nombre`, `clasificacion`, `designacion`, `altura_promedio`, `esperanza_vida`, `idioma`) VALUES
(1, 'human', 'mammal', 'sentient', '180.00', 120, 'Galactic Basic'),
(2, 'Wookie', 'mammal', 'sentient', '2.10', 400, 'Shyriiwook'),
(3, 'Rodian', 'sentient', 'reptilian', '1.70', 0, 'Galatic Basic'),
(4, 'Hutt', 'gastropod', 'sentient', '3.00', 1000, 'Huttese'),
(5, 'Yoda\'s species', 'mammal', 'sentient', '6.60', 900, 'Galactic basic'),
(6, 'Trandoshan', 'reptile', 'sentient', '2.00', 0, 'Dosh'),
(7, 'Mon Calamari', 'amphibian', 'sentient', '1.60', 0, 'Mon Calamarian'),
(8, 'Ewok', 'mammal', 'sentient', '1.00', 0, 'Ewokese'),
(9, 'Sullustan', 'mammal', 'sentient', '1.80', 0, 'Sullutese');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `api_peliculas`
--

CREATE TABLE `api_peliculas` (
  `id` bigint(20) NOT NULL,
  `titulo` longtext COLLATE utf8_bin NOT NULL,
  `director` longtext COLLATE utf8_bin NOT NULL,
  `lanzamiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `api_peliculas`
--

INSERT INTO `api_peliculas` (`id`, `titulo`, `director`, `lanzamiento`) VALUES
(1, 'A New Hope', 'George Lucas', '1977-05-25'),
(2, 'The Empire Strikes Back', 'Irvin Kershner', '1980-05-17'),
(3, 'Return of the Jedi', 'Richard Marquand', '1983-05-25'),
(4, 'The Phantom Menace', 'George Lucas', '1999-05-19'),
(5, 'Attack of the Clones', 'George Lucas', '2005-05-16'),
(6, 'Revenge of the Sith', 'George Lucas', '2005-05-19'),
(7, 'Revenge of the Sith', 'George Lucas', '2005-05-19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `api_personajes`
--

CREATE TABLE `api_personajes` (
  `id` bigint(20) NOT NULL,
  `nombre` longtext COLLATE utf8_bin NOT NULL,
  `especie` longtext COLLATE utf8_bin NOT NULL,
  `altura` decimal(5,2) NOT NULL,
  `peso` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `api_personajes`
--

INSERT INTO `api_personajes` (`id`, `nombre`, `especie`, `altura`, `peso`) VALUES
(1, 'Luke Skywalker', '', '172.00', '77.00'),
(2, 'Luke Skywalker', '', '172.00', '77.00'),
(3, 'C-3PO', 'Droid', '167.00', '75.00'),
(4, 'R2-D2', 'Droid', '96.00', '32.00'),
(5, 'Darth Vader', '', '202.00', '136.00'),
(6, 'Leia Organa', '', '150.00', '49.00'),
(7, 'Owen Lars', '', '1.78', '120.00'),
(8, 'Beru Whitesun lars', '', '1.65', '75.00'),
(9, 'R5-D4', 'Droid', '97.00', '32.00'),
(10, 'Biggs Darklighter', '', '1.83', '84.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `api_planetas`
--

CREATE TABLE `api_planetas` (
  `id` bigint(20) NOT NULL,
  `nombre` longtext COLLATE utf8_bin NOT NULL,
  `clima` longtext COLLATE utf8_bin NOT NULL,
  `terreno` longtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `api_planetas`
--

INSERT INTO `api_planetas` (`id`, `nombre`, `clima`, `terreno`) VALUES
(1, 'Tatooine', 'arid', 'desert'),
(2, 'Alderaan', 'temperate', 'grasslands, mountains'),
(3, 'Yavin IV', 'temperate, tropical', 'jungle, rainforests'),
(4, 'Hoth', 'frozen', 'tundra, ice caves, mountain ranges'),
(5, 'Dagobah', 'murky', 'swamp, jungles'),
(6, 'Bespin', 'temperate', 'gas giant'),
(7, 'Endor', 'temperate', 'forests, mountains, lakes'),
(8, 'Naboo', 'temperate', 'grassy hills, swamps, forests, mountains'),
(9, 'Coruscant', 'temperate', 'cityscape, mountains');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add peliculas', 7, 'add_peliculas'),
(26, 'Can change peliculas', 7, 'change_peliculas'),
(27, 'Can delete peliculas', 7, 'delete_peliculas'),
(28, 'Can view peliculas', 7, 'view_peliculas'),
(29, 'Can add planetas', 8, 'add_planetas'),
(30, 'Can change planetas', 8, 'change_planetas'),
(31, 'Can delete planetas', 8, 'delete_planetas'),
(32, 'Can view planetas', 8, 'view_planetas'),
(33, 'Can add personajes', 9, 'add_personajes'),
(34, 'Can change personajes', 9, 'change_personajes'),
(35, 'Can delete personajes', 9, 'delete_personajes'),
(36, 'Can view personajes', 9, 'view_personajes'),
(37, 'Can add especies', 10, 'add_especies'),
(38, 'Can change especies', 10, 'change_especies'),
(39, 'Can delete especies', 10, 'delete_especies'),
(40, 'Can view especies', 10, 'view_especies');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8_bin NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_bin NOT NULL,
  `first_name` varchar(150) COLLATE utf8_bin NOT NULL,
  `last_name` varchar(150) COLLATE utf8_bin NOT NULL,
  `email` varchar(254) COLLATE utf8_bin NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_bin DEFAULT NULL,
  `object_repr` varchar(200) COLLATE utf8_bin NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8_bin NOT NULL,
  `model` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(10, 'api', 'especies'),
(7, 'api', 'peliculas'),
(9, 'api', 'personajes'),
(8, 'api', 'planetas'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-11-14 15:42:10.091877'),
(2, 'auth', '0001_initial', '2023-11-14 15:42:11.117700'),
(3, 'admin', '0001_initial', '2023-11-14 15:42:11.298232'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-11-14 15:42:11.314821'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-11-14 15:42:11.327532'),
(6, 'api', '0001_initial', '2023-11-14 15:42:11.683309'),
(7, 'contenttypes', '0002_remove_content_type_name', '2023-11-14 15:42:11.781595'),
(8, 'auth', '0002_alter_permission_name_max_length', '2023-11-14 15:42:11.868782'),
(9, 'auth', '0003_alter_user_email_max_length', '2023-11-14 15:42:11.945044'),
(10, 'auth', '0004_alter_user_username_opts', '2023-11-14 15:42:11.948607'),
(11, 'auth', '0005_alter_user_last_login_null', '2023-11-14 15:42:12.018889'),
(12, 'auth', '0006_require_contenttypes_0002', '2023-11-14 15:42:12.023844'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2023-11-14 15:42:12.027344'),
(14, 'auth', '0008_alter_user_username_max_length', '2023-11-14 15:42:12.065209'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2023-11-14 15:42:12.098241'),
(16, 'auth', '0010_alter_group_name_max_length', '2023-11-14 15:42:12.182213'),
(17, 'auth', '0011_update_proxy_permissions', '2023-11-14 15:42:12.189973'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2023-11-14 15:42:12.225245'),
(19, 'sessions', '0001_initial', '2023-11-14 15:42:12.292802'),
(20, 'api', '0002_remove_personajes_pelicula_personajes_peliculas', '2023-11-14 16:05:55.486403'),
(21, 'api', '0003_remove_personajes_peliculas_alter_personajes_especie', '2023-11-14 16:09:28.302516'),
(22, 'api', '0004_remove_especies_personajes', '2023-11-14 16:46:56.372976');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_bin NOT NULL,
  `session_data` longtext COLLATE utf8_bin NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `api_especies`
--
ALTER TABLE `api_especies`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `api_peliculas`
--
ALTER TABLE `api_peliculas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `api_personajes`
--
ALTER TABLE `api_personajes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `api_planetas`
--
ALTER TABLE `api_planetas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `api_especies`
--
ALTER TABLE `api_especies`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `api_peliculas`
--
ALTER TABLE `api_peliculas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `api_personajes`
--
ALTER TABLE `api_personajes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `api_planetas`
--
ALTER TABLE `api_planetas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
