-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-12-2020 a las 16:16:21
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ecommerce`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cancelacion`
--

CREATE TABLE `cancelacion` (
  `id` int(11) NOT NULL,
  `motivo` longtext NOT NULL,
  `idventa` int(11) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cancelacion`
--

INSERT INTO `cancelacion` (`id`, `motivo`, `idventa`, `estado`, `fecha`) VALUES
(5, 'No quiero el producto.', 34, 'Reembolsado', '2020-04-01'),
(6, 'No me gusta el producto.', 33, 'Pendiente', '2020-04-01'),
(7, 'No me gusta el producto.', 32, 'Reembolsado', '2020-04-01'),
(8, 'No me gusto el producto, ya no lo quiero.', 39, 'Pendiente', '2020-04-01'),
(9, 'No quiero el producto', 41, 'Reembolsado', '2020-04-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `id` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `createAt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carrito`
--

INSERT INTO `carrito` (`id`, `iduser`, `idproducto`, `cantidad`, `createAt`) VALUES
(54, 5, 16, 1, '2020-05-20'),
(57, 7, 13, 1, '2020-11-01'),
(66, 12, 13, 1, '2020-12-04'),
(72, 1, 14, 1, '2020-12-05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `titulo` varchar(250) NOT NULL,
  `icono` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `titulo`, `icono`) VALUES
(5, 'Tarjetas Madre', 'fas fa-stream'),
(6, 'Procesador', 'fas fa-microchip'),
(7, 'Memorias RAM', 'fas fa-memory'),
(8, 'Discos duros', 'fas fa-hdd'),
(9, 'Gabinete', 'fas fa-tablet'),
(10, 'Monitor', 'icon icon-desktop'),
(11, 'Teclados', 'fas fa-keyboard'),
(12, 'Mouse', 'fas fa-mouse'),
(13, 'Sistema operativo', 'fab fa-windows');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuraciones`
--

CREATE TABLE `configuraciones` (
  `id` int(11) NOT NULL,
  `logo` varchar(250) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `facebook` varchar(300) NOT NULL,
  `twitter` varchar(300) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `direccion` varchar(300) NOT NULL,
  `horario` varchar(250) NOT NULL,
  `msm_procesado` varchar(500) NOT NULL,
  `msm_cancelado` varchar(500) NOT NULL,
  `msm_entregado` varchar(500) NOT NULL,
  `banner_inicio_uno` varchar(250) NOT NULL,
  `banner_inicio_dos` varchar(250) NOT NULL,
  `banner_producto` varchar(250) NOT NULL,
  `paypal_mode` varchar(20) NOT NULL,
  `paypal_client_id` varchar(250) NOT NULL,
  `paypal_client_id_production` varchar(250) NOT NULL,
  `tipo_moneda` varchar(20) NOT NULL,
  `culqui_key_public` varchar(50) NOT NULL,
  `culqui_key_private` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `configuraciones`
--

INSERT INTO `configuraciones` (`id`, `logo`, `titulo`, `telefono`, `facebook`, `twitter`, `correo`, `direccion`, `horario`, `msm_procesado`, `msm_cancelado`, `msm_entregado`, `banner_inicio_uno`, `banner_inicio_dos`, `banner_producto`, `paypal_mode`, `paypal_client_id`, `paypal_client_id_production`, `tipo_moneda`, `culqui_key_public`, `culqui_key_private`) VALUES
(1, '5f8ba9d5ef143.png', 'DEALPC Computers', '4494951043', 'https://www.facebook.com/dealpc', 'https://www.twitter.com/dealpc', 'admin@dealpc.com', 'Calle Madero #343 Zona Centro. CP. 20000 Aguascalientes, Ags.', 'Lunes-Viernes de 8:00 am a 10:00 pm', 'La compra esta a la espera del que producto sea enviado a su destino, proximo estado sera ENVIADO.', 'La compra fue cancelada, el tiempo de espera por la emisión del reembolso es de 3 a 5 días hábiles.', 'El producto fue entregado con exito, si aun no escribe una reseña del producto que compró ya lo puede hacer.', '5fa94293866a7.jpeg', '5fa94293ad221.jpeg', '5fa94293aee9f.jpeg', 'sandbox', 'Ac-aMUMYfzTWFsnEYu_9b8nnpZLSzdVUfIX6YD3aoGsRzAjvH5osD4ZBXyLljZDYqeWNFqkxe9Xs2eeW', 'AQb9cXaaFNv6uBnMSbdSuP7BXwxH25hyexY4zTGfVEInOoo-h4n5VTQ1zjO7mt51O_gE3Xb6u0Kg3vKg', 'Dolares', 'pk_test_0b07aceaa3de8c43', 'sk_test_56683314fd8a5328');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

CREATE TABLE `direccion` (
  `id` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `pais` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  `ciudad` varchar(100) NOT NULL,
  `direccion` varchar(400) NOT NULL,
  `zip` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `direccion`
--

INSERT INTO `direccion` (`id`, `iduser`, `pais`, `region`, `ciudad`, `direccion`, `zip`) VALUES
(3, 5, 'Mexico', 'Jalisco', 'Guadalajara', 'Zaragoza #343 Haciendas', 80923),
(4, 5, 'Mexico', 'Nuevo Leon', 'Monterrey', 'Av. Insurgentes #454 Arboledas', 23710),
(5, 6, 'Mexico', 'Aguascalientes', 'Aguascalientes', 'Congreso de chilpancingo #343 Morelos 1', 24741),
(7, 7, 'Mexico', 'Aguascalientes', 'Aguascalientes', 'Hacienda de chapingo 104 Real de Haciendas', 20196),
(8, 1, 'Mexico', 'Aguascalientes', 'Aguascalientes', 'Congreso de chilpancingo #813 Morelos 1', 20298),
(9, 10, 'Mexico', 'Aguascalientes', 'Aguascalientes', 'Calle prueba', 20000),
(10, 1, 'México', 'Auascalientes', 'Aguascalientes', 'Congreso de chilpancingo 843', 20298);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `galeria`
--

CREATE TABLE `galeria` (
  `id` int(11) NOT NULL,
  `foto` varchar(200) NOT NULL,
  `idproducto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `galeria`
--

INSERT INTO `galeria` (`id`, `foto`, `idproducto`) VALUES
(23, '5e82df211f06e.jpg', 7),
(24, '5e82df211faad.jpg', 7),
(25, '5e82df212034a.jpg', 7),
(26, '5e82df21208d8.jpg', 7),
(27, '5e82dfe192878.jpg', 8),
(28, '5e82dfe192f39.jpg', 8),
(29, '5e82dfe193462.jpg', 8),
(30, '5e82dfe193bd8.jpg', 8),
(31, '5e8351439871b.jpg', 9),
(32, '5e83514398dfa.jpg', 9),
(33, '5e83514399318.jpg', 9),
(34, '5e83514399bac.jpg', 9),
(35, '5e835243dfd39.jpg', 10),
(36, '5e835243e03f7.jpg', 10),
(37, '5e835243e0a8c.jpg', 10),
(38, '5e835243e14ea.jpg', 10),
(39, '5e835310552aa.jpg', 11),
(40, '5e83531055e09.jpg', 11),
(41, '5e8353105645d.jpg', 11),
(42, '5e835310569fc.jpg', 11),
(43, '5e8353e10c7b9.jpg', 12),
(44, '5e8353e1170bd.jpg', 12),
(45, '5e8353e117d9a.jpg', 12),
(46, '5e8353e118760.jpg', 12),
(73, '5f8cbd0a64123.jpeg', 1),
(74, '5f8cbd12c1d7b.jpeg', 1),
(75, '5f8cbd1c42931.jpeg', 1),
(76, '5f8cbe690332c.jpeg', 2),
(77, '5f8cbe71ea6b7.jpeg', 2),
(78, '5f8cbe79d560b.jpeg', 2),
(79, '5f8cbe828ac4b.jpeg', 2),
(80, '5f8cc6b43ab37.jpeg', 3),
(81, '5f8cc6caee358.jpeg', 3),
(82, '5f8cccf76a7f7.jpeg', 18),
(83, '5f8cce334c1e2.jpeg', 14),
(84, '5f8cce3a759c7.jpeg', 14),
(85, '5f8cce42675cb.jpeg', 14),
(86, '5f8cce5b2cfa3.jpeg', 14),
(87, '5f8cd3f407ff9.jpeg', 13),
(88, '5f8cd4456cf04.jpeg', 16),
(89, '5f8cd44d1ab8d.jpeg', 16),
(90, '5f8cd45566cb6.jpeg', 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes`
--

CREATE TABLE `mensajes` (
  `id` int(11) NOT NULL,
  `nombres` varchar(150) NOT NULL,
  `correo` varchar(150) NOT NULL,
  `mensaje` longtext NOT NULL,
  `telefono` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `mensajes`
--

INSERT INTO `mensajes` (`id`, `nombres`, `correo`, `mensaje`, `telefono`) VALUES
(1, 'Irvin Navarro', 'irvinnavarro@gmail.com', 'Excelente página', '4491430727'),
(2, 'Litzy', 'litzy@outlook.com', 'vfgsdfgdsfg', '4455646454');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `titulo` varchar(300) NOT NULL,
  `resena` varchar(500) NOT NULL,
  `contenido` longtext NOT NULL,
  `idcategoria` int(11) DEFAULT NULL,
  `poster` varchar(200) DEFAULT NULL,
  `precio_ahora` decimal(7,2) NOT NULL,
  `precio_antes` decimal(7,2) DEFAULT NULL,
  `estado` varchar(10) NOT NULL,
  `stock` int(11) NOT NULL,
  `slug` longtext NOT NULL,
  `num_ventas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `titulo`, `resena`, `contenido`, `idcategoria`, `poster`, `precio_ahora`, `precio_antes`, `estado`, `stock`, `slug`, `num_ventas`) VALUES
(1, 'Unidad De Estado Solido Ssd Adata Su650, 120gb, Serial Ata Iii 6 Gb/s, Lectura 520 Mb/s, Escritura 450 Mb/s, 2.5\" (asu650ss-120gt-r)', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quasi omnis ratione corrupti nisi repellat molestiae dolores corporis veritatis illum provident, dolor, magnam, vitae voluptates sequi', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>&nbsp;</p>\r\n<table style=\"width: 1133px;\">\r\n<tbody>\r\n<tr>\r\n<td colspan=\"2\">Caracter&iacute;sticas</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 509px;\">Factor de forma de disco SSD</td>\r\n<td>2.5\"</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 509px;\">SDD, capacidad</td>\r\n<td>120 GB</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 509px;\">Interfaz</td>\r\n<td>Serial ATA III</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 509px;\">Tipo de memoria</td>\r\n<td>SLC</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 509px;\">Componente para</td>\r\n<td>PC/ordenador port&aacute;til</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 509px;\">Velocidad de lectura</td>\r\n<td>520 MB/s</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 509px;\">Velocidad de escritura</td>\r\n<td>450 MB/s</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 509px;\">Tipo de flash NAND</td>\r\n<td>SLC (Single Level Cell)</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 509px;\">Velocidad de transferencia de datos</td>\r\n<td>6 Gbit/s</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 509px;\">ECC</td>\r\n<td><img src=\"https://www.zegucom.com.mx/images/si.png\" alt=\"Si\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 509px;\">Tiempo medio entre fallos</td>\r\n<td>2000000 h</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 509px;\">Acorde RoHS</td>\r\n<td><img src=\"https://www.zegucom.com.mx/images/si.png\" alt=\"Si\" /></td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\">Caracter&iacute;sticas especiales</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 509px;\">Tecnolog&iacute;as espec&iacute;ficas</td>\r\n<td>SLC Caching</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\">Condiciones ambientales</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 509px;\">Intervalo de temperatura operativa</td>\r\n<td>0 - 70 &deg;C</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 509px;\">Intervalo de temperatura de almacenaje</td>\r\n<td>-40 - 85 &deg;C</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 509px;\">Intervalo de humedad relativa para funcionamiento</td>\r\n<td>5 - 95%</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 509px;\">Golpes en funcionamiento</td>\r\n<td>1500 G</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 509px;\">Resistencia a la vibraci&oacute;n</td>\r\n<td>20 G</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\">Peso y dimensiones</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 509px;\">Ancho</td>\r\n<td>69,8 mm</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 509px;\">Profundidad</td>\r\n<td>100,5 mm</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 509px;\">Altura</td>\r\n<td>7 mm</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 509px;\">Peso</td>\r\n<td>47,5 g</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\">Otras caracter&iacute;sticas</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 509px;\">Color del producto</td>\r\n<td>Negro, Verde</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</body>\r\n</html>', 8, '5f8cbcaef1fd1.jpeg', '130.00', '300.00', 'DISPONIBLE', 10, 'unidad_de_estado_solido_ssd_adata_su650_120gb_serial_ata_iii_6_gbs_lectura_520_mbs_escritura_450_mbs_25_asu650ss_120gt_r', 0),
(2, 'Disco Duro Externo Adata Hm800 8tb, 3.5 Pulgadas, Usb 3.2 Gen1, Tv Support, Color Negro', 'Marca: Adata\r\nNúm. de parte: AHM800-8TU32G1-CUSBK\r\nUPC: 4710273771847\r\nCategoría: Almacenamiento\r\nSubcategoría: Discos Duros Externos\r\nGarantía: 1 Año', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<table style=\"width: 498px;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 483.219px;\" colspan=\"2\">Disco duro</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 186.219px;\">Tama&ntilde;o del HDD</td>\r\n<td style=\"width: 283.219px;\">3.5\"</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 186.219px;\">Capacidad del HDD</td>\r\n<td style=\"width: 283.219px;\">8192 GB</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 186.219px;\">Velocidad de rotaci&oacute;n del HDD</td>\r\n<td style=\"width: 283.219px;\">7200 RPM</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 186.219px;\">Velocidad de lectura</td>\r\n<td style=\"width: 283.219px;\">250 MB/s</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 186.219px;\">Interfaz</td>\r\n<td style=\"width: 283.219px;\">Serial ATA III</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 186.219px;\">Tipo</td>\r\n<td style=\"width: 283.219px;\">Unidad de disco duro</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 483.219px;\" colspan=\"2\">Puertos e Interfaces</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 186.219px;\">Rango m&aacute;ximo de transferencia de datos</td>\r\n<td style=\"width: 283.219px;\">5000 Mbit/s</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 186.219px;\">Conector USB</td>\r\n<td style=\"width: 283.219px;\">USB Tipo C</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 186.219px;\">Versi&oacute;n USB</td>\r\n<td style=\"width: 283.219px;\">2.0/3.2 Gen 1 (3.1 Gen 1)</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 483.219px;\" colspan=\"2\">Caracter&iacute;sticas</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 186.219px;\">Color del producto</td>\r\n<td style=\"width: 283.219px;\">Negro</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 186.219px;\">Material de la carcasa</td>\r\n<td style=\"width: 283.219px;\">De pl&aacute;stico, Silicona</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 186.219px;\">Algoritmos de seguridad soportados</td>\r\n<td style=\"width: 283.219px;\">256-bit AES</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 186.219px;\">Protecci&oacute;n mediante contrase&ntilde;a</td>\r\n<td style=\"width: 283.219px;\"><img src=\"https://www.zegucom.com.mx/images/si.png\" alt=\"Si\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 186.219px;\">Conectar y usar (Plug and Play)</td>\r\n<td style=\"width: 283.219px;\"><img src=\"https://www.zegucom.com.mx/images/si.png\" alt=\"Si\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 186.219px;\">Sistema operativo Windows soportado</td>\r\n<td style=\"width: 283.219px;\">Windows 10,Windows 10 Education,Windows 10 Education x64,Windows 10 Enterprise,Windows 10 Enterprise x64,Windows 10 Home,Windows 10 Home x64,Windows 10 IOT Core,Windows 10 IoT Enterprise,Windows 10 Pro,Windows 10 Pro x64,Windows 10 x64,Windows 7,Windows 7 Enterprise,Windows 7 Enterprise x64,Windows 7 Home Basic,Windows 7 Home Basic x64,Windows 7 Home Premium,Windows 7 Home Premium x64,Windows 7 Starter,Windows 7 Starter x64,Windows 7 Ultimate,Windows 7 Ultimate x64,Windows 7 x64,Windows 8,Windows 8 Enterprise,Windows 8 Enterprise x64,Windows 8 Pro,Windows 8 Pro x64,Windows 8 x64,Windows 8.1 Enterprise,Windows 8.1 Enterprise x64,Windows 8.1 Pro,Windows 8.1 Pro x64,Windows 8.1 x64,Windows Vista,Windows Vista Business,Windows Vista Business x64,Windows Vista Enterprise,Windows Vista Enterprise x64,Windows Vista Home Basic,Windows Vista Home Basic x64,Windows Vista Home Premium,Windows Vista Home Premium x64,Windows Vista Ultimate,Windows Vista Ultimate x64,Windows Vista x64,Windows XP,Windows XP Home,Windows XP Home x64,Windows XP Professional,Windows XP Professional x64</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 186.219px;\">Sistema operativo MAC soportado</td>\r\n<td style=\"width: 283.219px;\">Mac OS X 10.10 Yosemite,Mac OS X 10.11 El Capitan,Mac OS X 10.12 Sierra,Mac OS X 10.13 High Sierra,Mac OS X 10.14 Mojave,Mac OS X 10.15 Catalina,Mac OS X 10.6 Snow Leopard,Mac OS X 10.7 Lion,Mac OS X 10.8 Mountain Lion,Mac OS X 10.9 Mavericks</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 186.219px;\">Sistema operativo Linux soportado</td>\r\n<td style=\"width: 283.219px;\">Kernel 2.6.31,Kernel 3.3</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 483.219px;\" colspan=\"2\">Control de energ&iacute;a</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 186.219px;\">Alimentaci&oacute;n bus</td>\r\n<td style=\"width: 283.219px;\">USB</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 186.219px;\">Consumo energ&eacute;tico</td>\r\n<td style=\"width: 283.219px;\">12 W</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 483.219px;\" colspan=\"2\">Condiciones ambientales</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 186.219px;\">Intervalo de temperatura operativa</td>\r\n<td style=\"width: 283.219px;\">5 - 50 &deg;C</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 483.219px;\" colspan=\"2\">Peso y dimensiones</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 186.219px;\">Peso</td>\r\n<td style=\"width: 283.219px;\">766 g</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 186.219px;\">Ancho</td>\r\n<td style=\"width: 283.219px;\">177,3 mm</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 186.219px;\">Profundidad</td>\r\n<td style=\"width: 283.219px;\">117 mm</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 186.219px;\">Altura</td>\r\n<td style=\"width: 283.219px;\">34 mm</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 483.219px;\" colspan=\"2\">Empaquetado</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 186.219px;\">Cables incluidos</td>\r\n<td style=\"width: 283.219px;\">USB Tipo C</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 186.219px;\">Manual de usuario</td>\r\n<td style=\"width: 283.219px;\"><img src=\"https://www.zegucom.com.mx/images/si.png\" alt=\"Si\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 186.219px;\">Tipo de embalaje</td>\r\n<td style=\"width: 283.219px;\">Caja</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 483.219px;\" colspan=\"2\">Otras caracter&iacute;sticas</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 186.219px;\">USB</td>\r\n<td style=\"width: 283.219px;\"><img src=\"https://www.zegucom.com.mx/images/si.png\" alt=\"Si\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 186.219px;\">Enchufe de entrada de CC</td>\r\n<td style=\"width: 283.219px;\"><img src=\"https://www.zegucom.com.mx/images/si.png\" alt=\"Si\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 186.219px;\">Compatible con Mac</td>\r\n<td style=\"width: 283.219px;\"><img src=\"https://www.zegucom.com.mx/images/si.png\" alt=\"Si\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 186.219px;\">Rango de temperatura de funcionamiento</td>\r\n<td style=\"width: 283.219px;\">41 - 121 &deg;F</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</body>\r\n</html>', 8, '5f8cbe49b127a.jpeg', '300.00', '400.00', 'DISPONIBLE', 20, 'disco_duro_externo_adata_hm800_8tb_35_pulgadas_usb_32_gen1_tv_support_color_negro', 0),
(3, 'Microsoft Office 2019 Hogar Y Estudiantes 2019, 1 Pc/mac, Sin Disco, 79g-05026', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quasi omnis ratione corrupti nisi repellat molestiae dolores corporis veritatis illum provident, dolor, magnam, vitae voluptates sequi', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<table style=\"width: 476px;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 461.219px;\" colspan=\"2\">Licencia</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 197.219px;\">Cantidad de licencia</td>\r\n<td style=\"width: 250.219px;\">1 licencia(s)</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 461.219px;\" colspan=\"2\">Caracter&iacute;sticas</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 197.219px;\">Versi&oacute;n de idioma</td>\r\n<td style=\"width: 250.219px;\">Espa&ntilde;ol</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 461.219px;\" colspan=\"2\">Requisitos del sistema</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 197.219px;\">Sistema operativo Windows soportado</td>\r\n<td style=\"width: 250.219px;\">Windows 10,Windows 7,Windows 8</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 197.219px;\">Sistema operativo MAC soportado</td>\r\n<td style=\"width: 250.219px;\"><img src=\"https://www.zegucom.com.mx/images/si.png\" alt=\"Si\" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</body>\r\n</html>', 13, '5f8cc4908a102.jpeg', '60.00', '80.00', 'DISPONIBLE', 47, 'microsoft_office_2019_hogar_y_estudiantes_2019_1_pcmac_sin_disco_79g_05026', 1),
(7, 'Blitzwolf® BW-HP0 Wireless', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Qui beatae in maiores sed molestias sapiente minima eaque magni possimus corrupti!', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<table border=\"1\" width=\"600\" cellspacing=\"1\" cellpadding=\"1\">\r\n<tbody>\r\n<tr>\r\n<td colspan=\"2\">General Specification</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 150px;\">&nbsp;&nbsp;Brand</td>\r\n<td>&nbsp;&nbsp;Blitzwolf&reg;&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;&nbsp;Model</td>\r\n<td>&nbsp;&nbsp;BW-HP0</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;&nbsp;Color</td>\r\n<td>&nbsp; Black</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;&nbsp;Wearing Type</td>\r\n<td>&nbsp; Over-ear</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;&nbsp;Net Weight</td>\r\n<td>&nbsp; 240g</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;&nbsp;Dimensions</td>\r\n<td>&nbsp; 191*172*80mm&nbsp;&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\">Technical Parameters</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp; Microphone</td>\r\n<td>&nbsp; Yes</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp; bluetooth Version</td>\r\n<td>&nbsp; V4.1 Actions chip ATS3003</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp; bluetooth Profile</td>\r\n<td>&nbsp; HSP, HFP, AVRCP, A2DP</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp; Transmission Distance</td>\r\n<td>&nbsp; 33inch(10m)</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp; Rated Power</td>\r\n<td>&nbsp; 20mW</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;&nbsp;Receive Sensitivity</td>\r\n<td>&nbsp; 117dB</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;&nbsp;Impedance</td>\r\n<td>&nbsp; 32&Omega;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp; Working Frequency</td>\r\n<td>&nbsp; 2.402GHz-2.480GHz</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp; Battery Capacity</td>\r\n<td>&nbsp; 400mAh, 3.7V</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp; Charging Time (h)</td>\r\n<td>&nbsp; 2.5h</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp; Call Time</td>\r\n<td>&nbsp; 20H (100% volume)</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp; Music Playback Time</td>\r\n<td>&nbsp; 18H (100% volume)</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp; Standby Time (h)</td>\r\n<td>&nbsp; 200H</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp; Certifications</td>\r\n<td>&nbsp; FCC/ CE/ ROHS</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Package&nbsp;&nbsp;Included:</p>\r\n<table style=\"width: 600px;\" border=\"1\" cellspacing=\"1\" cellpadding=\"1\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 100px;\" rowspan=\"4\"><img style=\"height: auto;\" title=\"Blitzwolf&reg; BW-HP0 Wireless bluetooth Headphone Portable Foldable Over-ear Stereo Music Sport Headset with Mic\" src=\"https://imgaz.staticbg.com/images/oaupload/banggood/images/6E/9B/ad329491-5e6d-48f3-9bab-9a2090cb7c77.jpg.webp\" alt=\"Blitzwolf&reg; BW-HP0 Wireless bluetooth Headphone Portable Foldable Over-ear Stereo Music Sport Headset with Mic\" width=\"108\" height=\"88\" data-original=\"https://imgaz.staticbg.com/images/oaupload/banggood/images/6E/9B/ad329491-5e6d-48f3-9bab-9a2090cb7c77.jpg\" /></td>\r\n<td>&nbsp;1*&nbsp;Blitzwolf&reg; BW-HP0 Wireless bluetooth Headphone</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;1* USB Charging Cable</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;1* 3.5mm Audio Cable</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;1* Manual</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n</body>\r\n</html>', 7, '5e82df211c4be.jpeg', '28.00', '45.00', 'DISPONIBLE', 197, 'blitzwolf_bw_hp0_wireless', 3),
(8, 'Xiaomi Redmi Airdots TWS bluetooth', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Fuga dicta reprehenderit laborum repellendus possimus aliquid repellat cum quidem obcaecati amet.', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Features:</p>\r\n<div>1. Automatic second connection.</div>\r\n<div>2. bluetooth 5.0, the connection is more stable.</div>\r\n<div>3. 12h long battery life, with charging box.</div>\r\n<div>4. Double-ear multifunction button, anti-missing.</div>\r\n<div>5. Summon voice assistant, voice control mobile phone.</div>\r\n<div>6. Comfortable to wear, self-adjusting, not easy to fall off.</div>\r\n<div>7. IPX4 waterproof, no fear of rain and sweat.</div>\r\n<p>Specifications:</p>\r\n<table border=\"1\" width=\"600\" cellspacing=\"1\" cellpadding=\"1\">\r\n<tbody>\r\n<tr>\r\n<td colspan=\"2\">Specification</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 150px;\">&nbsp;&nbsp;Brand</td>\r\n<td>&nbsp;&nbsp;Xiaomi Redmi&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 150px;\">&nbsp; Name</td>\r\n<td>&nbsp;&nbsp;Airdots</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;&nbsp;Model</td>\r\n<td>&nbsp; TWSEJ04LS</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;&nbsp;Color</td>\r\n<td>&nbsp; Black</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;&nbsp;Wearing Type</td>\r\n<td>&nbsp; In-ear</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;&nbsp;Material</td>\r\n<td>&nbsp; ABS</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;&nbsp;Net Weight (g)</td>\r\n<td>&nbsp; 35.4g</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;&nbsp;Dimensions</td>\r\n<td>&nbsp; Charging box: 62&times;40&times;27.2mm<br />&nbsp; Earphone: 26.65&times;16.4&times;21.6mm</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\">Technical Parameters</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp; Microphone</td>\r\n<td>&nbsp; Yes</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp; bluetooth Version</td>\r\n<td>&nbsp; V5.0</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp; Transmission Distance</td>\r\n<td>&nbsp; 10m</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp; bluetooth protocol</td>\r\n<td>&nbsp; HFP/A2DP/ HSP/AVRCP</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;&nbsp;Impedance</td>\r\n<td>&nbsp; 32&Omega;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;&nbsp;Frequency Response</td>\r\n<td>&nbsp; 20-20kHz</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp; Battery Capacity</td>\r\n<td>&nbsp; Charging box: 300mAh, 3.7V<br />&nbsp; Earphne: 40mAh, 3.7V</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp; Charging Time (h)</td>\r\n<td>&nbsp; 1.5-2h</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp; Working Time (h)</td>\r\n<td>&nbsp; 12h</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp; Standby Time (h)</td>\r\n<td>&nbsp; 150h</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Package&nbsp;&nbsp;Included:&nbsp;</p>\r\n<table style=\"width: 600px;\" border=\"1\" cellspacing=\"1\" cellpadding=\"1\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 100px;\" rowspan=\"4\"><img style=\"height: auto;\" title=\"Xiaomi Redmi Airdots TWS bluetooth 5.0 Earphone DSP Noise Cancelling Auto Pairing Bilateral Call Stereo Headphone\" src=\"https://img.staticbg.com/images/oaupload/banggood/images/6E/9B/ad329491-5e6d-48f3-9bab-9a2090cb7c77.jpg\" alt=\"Xiaomi Redmi Airdots TWS bluetooth 5.0 Earphone DSP Noise Cancelling Auto Pairing Bilateral Call Stereo Headphone\" width=\"108\" height=\"88\" data-original=\"https://img.staticbg.com/images/oaupload/banggood/images/6E/9B/ad329491-5e6d-48f3-9bab-9a2090cb7c77.jpg\" /></td>\r\n<td>&nbsp;1*&nbsp;Xiaomi Redmi Airdots TWS bluetooth 5.0 Earphone with Charging Box</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;2 pairs of eartips</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;1* Manual</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Note: without charging cable</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n</body>\r\n</html>', 7, '5e82dfe1835b0.jpeg', '35.00', '48.00', 'DISPONIBLE', 150, 'xiaomi_redmi_airdots_tws_bluetooth', 0),
(9, 'BlitzWolf® BW-ES4 Dual Dynamic', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nisi ea eaque neque dignissimos? Deserunt dolor rem reprehenderit excepturi ad qui?', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Features:</p>\r\n<div>1.&nbsp;Double Dynamic&nbsp;Drivers with&nbsp;Graphene&nbsp;Diaphragm&mdash;&mdash; High resolution, excellent low-frequency performance</div>\r\n<div>2.&nbsp;Magnetic Asorption&mdash;&mdash;Securely hang the earphones around your neck.</div>\r\n<div>3. Ergonomic Eesign&mdash;&mdash;&nbsp;Mini earbuds&nbsp;body design, more fit the auricle, wear more comfortable and safe.</div>\r\n<div>4.&nbsp;Durable Wire&mdash;&mdash;TPE material, wear-resistant and prevent knot. With&nbsp;wired control&nbsp;function.</div>\r\n<div>5.&nbsp;IPX5 Waterproof&nbsp;and Sweat-proof&mdash;&mdash;Rain or sweat can\'t keep you from your music.</div>\r\n<p>Specifications:</p>\r\n<table border=\"1\" width=\"600\" cellspacing=\"1\" cellpadding=\"1\">\r\n<tbody>\r\n<tr>\r\n<td colspan=\"2\">General Specification</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 150px;\">&nbsp;&nbsp;Brand</td>\r\n<td>&nbsp;&nbsp;BlitzWolf&reg;&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;&nbsp;Model</td>\r\n<td>&nbsp;&nbsp;BW-ES4&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;&nbsp;Color</td>\r\n<td>&nbsp; Black</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;&nbsp;Wearing Type</td>\r\n<td>&nbsp; In-ear</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Cable Length (m)</td>\r\n<td>&nbsp; 1.2m</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;&nbsp;Net Weight (g)</td>\r\n<td>&nbsp; 15g</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp; Size</td>\r\n<td>&nbsp; 190*170*85mm</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\">Technical Parameters</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp; Microphone</td>\r\n<td>&nbsp; Yes</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp; Wired Control</td>\r\n<td>&nbsp; Support</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp; Plug Type</td>\r\n<td>&nbsp; 3.5mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp; Speaker Size</td>\r\n<td>&nbsp; 10mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;&nbsp;Receive Sensitivity</td>\r\n<td>&nbsp; 103dB</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;&nbsp;Impedance</td>\r\n<td>&nbsp; 32&Omega;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;&nbsp;Frequency Response</td>\r\n<td>&nbsp; 20-18kHz</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp; Waterproof</td>\r\n<td>&nbsp; IPX5</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp; Certification</td>\r\n<td>&nbsp; FCC, RoHS, CE</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Package&nbsp;&nbsp;Included:</p>\r\n<p>1*&nbsp;BlitzWolf&reg; BW-ES4 Dual Dynamic Drivers Graphene Earphone with Mic<br />3 pairs of Eartips(S/ M/ L)</p>\r\n</body>\r\n</html>', 7, '5e83514385f83.jpeg', '35.00', '52.00', 'DISPONIBLE', 150, 'blitzwolf_bw_es4_dual_dynamic', 0),
(10, 'Xiaomi Gaming Laptop 15.6', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ea deserunt quis consectetur voluptatem minus repudiandae? Deserunt rem quasi repellat in!', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Xiaomi Gaming Laptop 15.6 inch Intel Core&nbsp;i7-9750H&nbsp;NVIDIA GeForce RTX2060 144Hz 16GB GDDR4 RAM 512GB PCle SSD Notebook<br /><br />-How do you feel about Xiaomi gaming laptop with the latest and powerful RTX2060?&nbsp;<br /><br />The powerful&nbsp;Windows 10&nbsp;operating system makes you easy to deal with daily work. Powered by&nbsp;Intel Core i7-9750H&nbsp;Hexa Core&nbsp;processor,&nbsp;equipped with the popular&nbsp;NVIDIA&nbsp;GeForce RTX2060&nbsp;the more awesome performance can run some large office softwares, design and games.&nbsp;Dual band 2.4GHz / 5.0GHz WiFi&nbsp;supported, ensures you high-speed surfing. Adopted in&nbsp;15.6 inch&nbsp;144Hz FHD screen&nbsp;with&nbsp;72%NTSC&nbsp;and&nbsp;16GB GDDR4 RAM 512GB PCle SSD,&nbsp;that\'s the brand new Xiaomi gaming laptop for gaming players and you !<br /><br />Main Features:<br /><br />1. Windows 10 OS<br />Windows 10 brings back the popular Start Menu from Windows 7 and introduces new features, like the Edge Web browser that lets you mark up Website on your screen<br />2.&nbsp;Intel Core i7-9750H&nbsp;Hexa Core Eight Thread 2.6GHz,up to 4.5GHz<br />Ultra-low-voltage platform and hexa-core processing provide maximum high-efficiency power to go<br />3. NVIDIA&nbsp;GeForce RTX2060<br />On-processor graphics with shared video memory provide high image quality for Internet use, especially for gaming.&nbsp;<br />4. 15.6 inch FHD Screen with 1920 x 1080 Resolution<br />Boasts impressive color and clarity and IPS technology provides wide viewing angles<br />5. 16GB GDDR4 RAM for Advanced Multitasking<br />Substantial high-bandwidth RAM to smoothly run your game, photos and video-editing applications, as well as multiple programs and browser tabs all at once<br />6. 512GB PCle SSD Storage Capacity<br />Provides room to store pictures, videos, music and faster to run softwares.<br />7. Front Camera for Photos and Face-to-face Chat<br />1.0MP front camera lets you capture memorable moments or chat&nbsp;<br />8. Dual Band 2.4GHz / 5.0GHz WiFi<br />Allows you to connect to the Web while within range of an available wireless network<br />9. 144Hz 72% NTSC screen<br />Offer you an amazing vision while playing games or working.<br /><br />Package Includes:<br /><br />1.Laptop*1<br />2.User manual*1 (&nbsp;Include warranty services&nbsp;)&nbsp;<br />3.Charger*1<br />4.Charger Adapter*1</p>\r\n</body>\r\n</html>', 6, '5e835243dd061.jpeg', '1200.00', '1500.00', 'DISPONIBLE', 18, 'xiaomi_gaming_laptop_156', 2),
(11, 'BlitzWolf® BW-PCM1 11.6 Inch FHD 1080P', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ea deserunt quis consectetur voluptatem minus repudiandae? Deserunt rem quasi repellat in!', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<div>Main Features:</div>\r\n<div>&nbsp;</div>\r\n<div>11.6-inch Portable Monitor with FHD 1080P Display</div>\r\n<div>Exquisite picture quality can show more real and accurate gorgeous colors, adapt to more scenes</div>\r\n<div>&nbsp;</div>\r\n<div>Ultra-thin Body</div>\r\n<div>Aircraft-grade Aluminum Alloy, improve the compressive strength</div>\r\n<div>&nbsp;</div>\r\n<div>Dual Stereo Sound and OSD Button</div>\r\n<div>&nbsp;</div>\r\n<div>Compatible with All Kinds of Game Consoles<br />\r\n<div><br />&nbsp;</div>\r\n</div>\r\n<table border=\"1\" cellspacing=\"0\" cellpadding=\"5\">\r\n<tbody>\r\n<tr>\r\n<td>Feature</td>\r\n<td>BW-PCM1</td>\r\n<td><a href=\"https://www.banggood.com/BlitzWolf-BW-PCM2-13_3-Inch-FHD-1080P-Type-C-Portable-Computer-Monitor-Gaming-Display-Screen-for-Smartphone-Tablet-Laptop-Game-Consoles-p-1595705.html?rmmds=category&amp;cur_warehouse=CN\">BW-PCM2</a></td>\r\n<td><a href=\"https://www.banggood.com/BlitzWolf-BW-PCM3-15_6-Inch-Touchable-FHD-1080P-Type-C-Portable-Computer-Monitor-Gaming-Display-Screen-for-Smartphone-Tablet-Laptop-Game-Consoles-p-1595706.html?rmmds=category&amp;cur_warehouse=CN\">BW-PCM3</a></td>\r\n<td><a href=\"https://www.banggood.com/BlitzWolf-BW-PCM4-15_6-Inch-UHD-4K-Type-C-Portable-Computer-Monitor-Gaming-Display-Screen-for-Smartphone-Tablet-Laptop-Game-Consoles-p-1595704.html?rmmds=category&amp;cur_warehouse=CN\">BW-PCM4</a></td>\r\n</tr>\r\n<tr>\r\n<td>Display Type</td>\r\n<td>11.6\'\'&nbsp;IPS</td>\r\n<td>13.3\'\'&nbsp;IPS</td>\r\n<td>15.6\'\'&nbsp;Touchable IPS</td>\r\n<td>15.6\'\'&nbsp;IPS</td>\r\n</tr>\r\n<tr>\r\n<td>Resolution</td>\r\n<td>1920*1080 FHD</td>\r\n<td>1920*1080 FHD</td>\r\n<td>1920*1080 FHD</td>\r\n<td>3840*2160 UHD</td>\r\n</tr>\r\n<tr>\r\n<td>Touch screen</td>\r\n<td>&times;</td>\r\n<td>&times;</td>\r\n<td>&radic;</td>\r\n<td>&times;</td>\r\n</tr>\r\n<tr>\r\n<td>Color gamut</td>\r\n<td>72% NTSC</td>\r\n<td>72% NTSC</td>\r\n<td>45% NTSC</td>\r\n<td>100% Adobe</td>\r\n</tr>\r\n<tr>\r\n<td>Refresh Frequency</td>\r\n<td>24-60Hz(Automatic)</td>\r\n<td>24-60Hz(Automatic)</td>\r\n<td>24-60Hz(Automatic)</td>\r\n<td>24-60Hz(Automatic)</td>\r\n</tr>\r\n<tr>\r\n<td>Brightness</td>\r\n<td>300cd/㎡</td>\r\n<td>300cd/㎡</td>\r\n<td>300cd/㎡</td>\r\n<td>300cd/㎡</td>\r\n</tr>\r\n<tr>\r\n<td>Reverse charging</td>\r\n<td>&times;</td>\r\n<td>&radic;</td>\r\n<td>&radic;</td>\r\n<td>&radic;</td>\r\n</tr>\r\n<tr>\r\n<td>USB-C Power Input</td>\r\n<td>DC 5V2A</td>\r\n<td>DC 5V3A</td>\r\n<td>DC 5V3A</td>\r\n<td>DC 5V3A</td>\r\n</tr>\r\n<tr>\r\n<td>Includes power adapter</td>\r\n<td>&radic;</td>\r\n<td>&radic;</td>\r\n<td>&radic;</td>\r\n<td>&radic;</td>\r\n</tr>\r\n<tr>\r\n<td>HD Multimedia Interface Signal Input</td>\r\n<td>Mini&nbsp;HD Multimedia Interface</td>\r\n<td>HD Multimedia Interface</td>\r\n<td>HD Multimedia Interface</td>\r\n<td>HD Multimedia Interface</td>\r\n</tr>\r\n<tr>\r\n<td>HDR</td>\r\n<td>&radic;</td>\r\n<td>&radic;</td>\r\n<td>&radic;</td>\r\n<td>&radic;</td>\r\n</tr>\r\n<tr>\r\n<td>Type-C full-feature<br />(power input and data transfer)</td>\r\n<td>&times;</td>\r\n<td>&radic;</td>\r\n<td>&radic;</td>\r\n<td>&radic;</td>\r\n</tr>\r\n<tr>\r\n<td>Type-C Version</td>\r\n<td>/</td>\r\n<td>3.1</td>\r\n<td>3.1</td>\r\n<td>3.1</td>\r\n</tr>\r\n<tr>\r\n<td>USB-A Port (connecting peripherals)</td>\r\n<td>&times;</td>\r\n<td>&radic;</td>\r\n<td>&radic;</td>\r\n<td>&radic;</td>\r\n</tr>\r\n<tr>\r\n<td>3.5mm audio output</td>\r\n<td>&radic;</td>\r\n<td>&radic;</td>\r\n<td>&radic;</td>\r\n<td>&radic;</td>\r\n</tr>\r\n<tr>\r\n<td>Infrared remote control</td>\r\n<td>&radic;(Not included CR2032 )</td>\r\n<td>&radic;(Not included CR2032 )</td>\r\n<td>&radic;(Not included CR2032)&nbsp;</td>\r\n<td>&radic;(Not included CR2032)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Holster bracket</td>\r\n<td>&radic;</td>\r\n<td>&radic;</td>\r\n<td>&radic;</td>\r\n<td>&radic;</td>\r\n</tr>\r\n<tr>\r\n<td>Product Size</td>\r\n<td>267*171*10mm</td>\r\n<td>195.7*304*9.7-4.1mm</td>\r\n<td>355*224*9.5-5mm</td>\r\n<td>352*226*9.5-4.7mm</td>\r\n</tr>\r\n<tr>\r\n<td>Net weight</td>\r\n<td>460g</td>\r\n<td>560g</td>\r\n<td>740g</td>\r\n<td>750g</td>\r\n</tr>\r\n<tr>\r\n<td>Gross weight</td>\r\n<td>1300g</td>\r\n<td>1700g</td>\r\n<td>2000g</td>\r\n<td>2000g</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<div>&nbsp;</div>\r\n</body>\r\n</html>', 6, '5e83531044682.jpeg', '320.00', '350.00', 'DISPONIBLE', 50, 'blitzwolf_bw_pcm1_116_inch_fhd_1080p', 0),
(12, 'ACER Gaming Predator Helios', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ea deserunt quis consectetur voluptatem minus repudiandae? Deserunt rem quasi repellat in!', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h2 data-toggle-accordion-panel=\"panel-features\"><span style=\"color: #236fa1;\">Caracter&iacute;sticas destacadas</span></h2>\r\n<div data-product-scroll=\"\">\r\n<div>\r\n<div>\r\n<div>\r\n<ul style=\"list-style-type: disc;\">\r\n<li>ACER Gaming Predator Helios 300 PH317-53-775M Core i7-9750H 16GB 1TB + 256SSD NVIDIA GeForce GTX 1660 Ti 6GB</li>\r\n<li>2.6 GHz Intel Core i7-9750H Six-Core</li>\r\n<li>16GB DDR4 - 256GB NVMe PCIe M.2 SSD</li>\r\n<li>17.3\" 1920 x 1080 144 Hz IPS Display</li>\r\n<li>NVIDIA GeForce GTX 1660 Ti (6GB GDDR6)</li>\r\n<li>Sistema Operativo: Endless OS</li>\r\n<li>Marca: Acer</li>\r\n<li>PN: NH.Q5PAL.003</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</body>\r\n</html>', 6, '5e8353e109b24.jpeg', '2100.00', '2300.00', 'DISPONIBLE', 36, 'acer_gaming_predator_helios', 4);
INSERT INTO `producto` (`id`, `titulo`, `resena`, `contenido`, `idcategoria`, `poster`, `precio_ahora`, `precio_antes`, `estado`, `stock`, `slug`, `num_ventas`) VALUES
(13, 'Procesador Intel Core I7-9700k, 3.6ghz, Lga 1151 (zócalo H4) 9th Gen,', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ea deserunt quis consectetur voluptatem minus repudiandae? Deserunt rem quasi repellat in!', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<table style=\"width: 464px;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 449.219px;\" colspan=\"2\">Procesador</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Familia de procesador</td>\r\n<td style=\"width: 255.219px;\">9na generaci&oacute;n de procesadores Intel&reg; Core&trade; i7</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Frecuencia del procesador</td>\r\n<td style=\"width: 255.219px;\">3,6 GHz</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">N&uacute;mero de n&uacute;cleos de procesador</td>\r\n<td style=\"width: 255.219px;\">8</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Socket de procesador</td>\r\n<td style=\"width: 255.219px;\">LGA 1151 (Z&oacute;calo H4)</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Componente para</td>\r\n<td style=\"width: 255.219px;\">PC</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Litograf&iacute;a del procesador</td>\r\n<td style=\"width: 255.219px;\">14 nm</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Caja</td>\r\n<td style=\"width: 255.219px;\"><img src=\"https://www.zegucom.com.mx/images/si.png\" alt=\"Si\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Refrigerador incluido</td>\r\n<td style=\"width: 255.219px;\"><img src=\"https://www.zegucom.com.mx/images/no.png\" alt=\"No\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Fabricante de procesador</td>\r\n<td style=\"width: 255.219px;\">Intel</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Modelo del procesador</td>\r\n<td style=\"width: 255.219px;\">i7-9700K</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">N&uacute;mero de filamentos de procesador</td>\r\n<td style=\"width: 255.219px;\">8</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">System bus data transfer rate</td>\r\n<td style=\"width: 255.219px;\">8 GT/s</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Modo de procesador operativo</td>\r\n<td style=\"width: 255.219px;\">64 bits</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Cach&eacute; del procesador</td>\r\n<td style=\"width: 255.219px;\">12 MB</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Tipo de cache en procesador</td>\r\n<td style=\"width: 255.219px;\">Smart Cache</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Escalonamiento</td>\r\n<td style=\"width: 255.219px;\">P0</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Frecuencia del procesador turbo</td>\r\n<td style=\"width: 255.219px;\">4,9 GHz</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Tipos de bus</td>\r\n<td style=\"width: 255.219px;\">DMI3</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Procesador nombre en clave</td>\r\n<td style=\"width: 255.219px;\">Coffee Lake</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Ancho de banda de memoria soportada por el procesador (max)</td>\r\n<td style=\"width: 255.219px;\">41,6 GB/s</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">c&oacute;digo de procesador</td>\r\n<td style=\"width: 255.219px;\">SRELT</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Procesador ARK ID</td>\r\n<td style=\"width: 255.219px;\">186604</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 449.219px;\" colspan=\"2\">Memoria</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Canales de memoria</td>\r\n<td style=\"width: 255.219px;\">Dual-channel</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Memoria interna m&aacute;xima que admite el procesador</td>\r\n<td style=\"width: 255.219px;\">64 GB</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Tipos de memoria que admite el procesador</td>\r\n<td style=\"width: 255.219px;\">DDR4-SDRAM</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Velocidad de reloj de memoria que admite el procesador</td>\r\n<td style=\"width: 255.219px;\">2666 MHz</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">ECC</td>\r\n<td style=\"width: 255.219px;\"><img src=\"https://www.zegucom.com.mx/images/no.png\" alt=\"No\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 449.219px;\" colspan=\"2\">Gr&aacute;ficos</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Adaptador gr&aacute;fico incorporado</td>\r\n<td style=\"width: 255.219px;\"><img src=\"https://www.zegucom.com.mx/images/si.png\" alt=\"Si\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Adaptador de gr&aacute;ficos discreto</td>\r\n<td style=\"width: 255.219px;\"><img src=\"https://www.zegucom.com.mx/images/no.png\" alt=\"No\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Modelo de adaptador gr&aacute;fico incorporado</td>\r\n<td style=\"width: 255.219px;\">Intel&reg; UHD Graphics 630</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Memoria m&aacute;xima de adaptador de gr&aacute;fico incorporado</td>\r\n<td style=\"width: 255.219px;\">64 GB</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Salidas compatibles de adaptador gr&aacute;fico incorporado</td>\r\n<td style=\"width: 255.219px;\">DisplayPort,Embedded DisplayPort (eDP),HDMI</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Frecuencia base de gr&aacute;ficos incorporada</td>\r\n<td style=\"width: 255.219px;\">350 MHz</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Frecuencia din&aacute;mica (m&aacute;x) de adaptador gr&aacute;fico incorporado</td>\r\n<td style=\"width: 255.219px;\">1200 MHz</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">N&uacute;mero de pantallas soportadas (gr&aacute;ficos incorporados)</td>\r\n<td style=\"width: 255.219px;\">3</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">4K soporte de adaptador gr&aacute;fico incorporado</td>\r\n<td style=\"width: 255.219px;\"><img src=\"https://www.zegucom.com.mx/images/si.png\" alt=\"Si\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Versi&oacute;n DirectX de adaptador gr&aacute;fico incorporado</td>\r\n<td style=\"width: 255.219px;\">12.0</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Versi&oacute;n OpenGL de adaptador gr&aacute;fico incorporado</td>\r\n<td style=\"width: 255.219px;\">4.5</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Resoluci&oacute;n m&aacute;xima de adaptador gr&aacute;fico incorporado (DisplayPort)</td>\r\n<td style=\"width: 255.219px;\">4096 x 2304 Pixeles</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Resoluci&oacute;n m&aacute;xima de adaptador gr&aacute;fico incorporado (eDP - Integrated Flat Panel)</td>\r\n<td style=\"width: 255.219px;\">4096 x 2304 Pixeles</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Resoluci&oacute;n m&aacute;xima de adaptador gr&aacute;fico incorporado (HDMI)</td>\r\n<td style=\"width: 255.219px;\">4096 x 2304 Pixeles</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Frecuencia de actualizaci&oacute;n de adaptador gr&aacute;fico incorporado a la resoluci&oacute;n m&aacute;xima (DisplayPort)</td>\r\n<td style=\"width: 255.219px;\">60 Hz</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Frecuencia de actualizaci&oacute;n de adaptador gr&aacute;fico incorporado a la resoluci&oacute;n m&aacute;xima (eDP - Integrated Flat Panel)</td>\r\n<td style=\"width: 255.219px;\">60 Hz</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Frecuencia de actualizaci&oacute;n de adaptador gr&aacute;fico incorporado a la resoluci&oacute;n m&aacute;xima (HDMI)</td>\r\n<td style=\"width: 255.219px;\">24 Hz</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">ID de adaptador gr&aacute;fico incorporado</td>\r\n<td style=\"width: 255.219px;\">0x3E98</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 449.219px;\" colspan=\"2\">Control de energ&iacute;a</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Potencia de dise&ntilde;o t&eacute;rmico (TDP)</td>\r\n<td style=\"width: 255.219px;\">95 W</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 449.219px;\" colspan=\"2\">Caracter&iacute;sticas</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Execute Disable Bit</td>\r\n<td style=\"width: 255.219px;\"><img src=\"https://www.zegucom.com.mx/images/si.png\" alt=\"Si\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Estados de inactividad</td>\r\n<td style=\"width: 255.219px;\"><img src=\"https://www.zegucom.com.mx/images/si.png\" alt=\"Si\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Tecnolog&iacute;a Thermal Monitoring de Intel</td>\r\n<td style=\"width: 255.219px;\"><img src=\"https://www.zegucom.com.mx/images/si.png\" alt=\"Si\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">N&uacute;mero m&aacute;ximo de buses PCI Express</td>\r\n<td style=\"width: 255.219px;\">16</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Versi&oacute;n de entradas de PCI Express</td>\r\n<td style=\"width: 255.219px;\">3.0</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Configuraciones PCI Express</td>\r\n<td style=\"width: 255.219px;\">1x16,1x8+2x4,2x8</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Set de instrucciones soportadas</td>\r\n<td style=\"width: 255.219px;\">AVX 2.0,SSE4.1,SSE4.2</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Escalabilidad</td>\r\n<td style=\"width: 255.219px;\">1S</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Configuraci&oacute;n de CPU (m&aacute;ximo)</td>\r\n<td style=\"width: 255.219px;\">1</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Opciones integradas disponibles</td>\r\n<td style=\"width: 255.219px;\"><img src=\"https://www.zegucom.com.mx/images/no.png\" alt=\"No\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Caracteristicas t&eacute;cnicas de la soluci&oacute;n t&eacute;rmica</td>\r\n<td style=\"width: 255.219px;\">PCG 2015D</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Revisi&oacute;n PCI Express CEM</td>\r\n<td style=\"width: 255.219px;\">3.0</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Segmento de mercado</td>\r\n<td style=\"width: 255.219px;\">DT</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">C&oacute;digo de Sistema de Armomizaci&oacute;n (SA)</td>\r\n<td style=\"width: 255.219px;\">8542310001</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 449.219px;\" colspan=\"2\">Caracter&iacute;sticas especiales del procesador</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Intel Hyper-Threading</td>\r\n<td style=\"width: 255.219px;\"><img src=\"https://www.zegucom.com.mx/images/no.png\" alt=\"No\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Tecnolog&iacute;a de protecci&oacute;n de identidad de Intel&reg; (Intel&reg; IPT)</td>\r\n<td style=\"width: 255.219px;\"><img src=\"https://www.zegucom.com.mx/images/si.png\" alt=\"Si\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Tecnolog&iacute;a Intel&reg; Turbo Boost</td>\r\n<td style=\"width: 255.219px;\">2.0</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Tecnolog&iacute;a Intel&reg; Quick Sync Video</td>\r\n<td style=\"width: 255.219px;\"><img src=\"https://www.zegucom.com.mx/images/si.png\" alt=\"Si\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Intel&reg; Tecnolog&iacute;a InTru&trade; 3D</td>\r\n<td style=\"width: 255.219px;\"><img src=\"https://www.zegucom.com.mx/images/si.png\" alt=\"Si\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Tecnolog&iacute;a Clear Video HD de Intel&reg; (Intel&reg; CVT HD)</td>\r\n<td style=\"width: 255.219px;\"><img src=\"https://www.zegucom.com.mx/images/si.png\" alt=\"Si\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Intel&reg; AES Nuevas instrucciones (Intel&reg; AES-NI)</td>\r\n<td style=\"width: 255.219px;\"><img src=\"https://www.zegucom.com.mx/images/si.png\" alt=\"Si\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Tecnolog&iacute;a SpeedStep mejorada de Intel</td>\r\n<td style=\"width: 255.219px;\"><img src=\"https://www.zegucom.com.mx/images/si.png\" alt=\"Si\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Tecnolog&iacute;a Trusted Execution de Intel&reg;</td>\r\n<td style=\"width: 255.219px;\"><img src=\"https://www.zegucom.com.mx/images/si.png\" alt=\"Si\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Intel&reg; Memory Protection Extensions (Intel&reg; MPX)</td>\r\n<td style=\"width: 255.219px;\"><img src=\"https://www.zegucom.com.mx/images/si.png\" alt=\"Si\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Intel&reg; Enhanced Halt State</td>\r\n<td style=\"width: 255.219px;\"><img src=\"https://www.zegucom.com.mx/images/si.png\" alt=\"Si\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Intel&reg; Clear Video Technology for MID (Intel&reg; CVT for MID)</td>\r\n<td style=\"width: 255.219px;\"><img src=\"https://www.zegucom.com.mx/images/si.png\" alt=\"Si\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">VT-x de Intel&reg; con Extended Page Tables (EPT)</td>\r\n<td style=\"width: 255.219px;\"><img src=\"https://www.zegucom.com.mx/images/si.png\" alt=\"Si\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Intel&reg; Secure Key</td>\r\n<td style=\"width: 255.219px;\"><img src=\"https://www.zegucom.com.mx/images/si.png\" alt=\"Si\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Intel&reg; TSX-NI</td>\r\n<td style=\"width: 255.219px;\"><img src=\"https://www.zegucom.com.mx/images/si.png\" alt=\"Si\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Programa de Plataforma de Imagen Estable de Intel&reg; (SIPP)</td>\r\n<td style=\"width: 255.219px;\"><img src=\"https://www.zegucom.com.mx/images/si.png\" alt=\"Si\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Intel&reg; OS Guard</td>\r\n<td style=\"width: 255.219px;\"><img src=\"https://www.zegucom.com.mx/images/si.png\" alt=\"Si\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Tecnolog&iacute;a Intel&reg; Clear Video</td>\r\n<td style=\"width: 255.219px;\"><img src=\"https://www.zegucom.com.mx/images/si.png\" alt=\"Si\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Extensiones de protecci&oacute;n de software Intel&reg; (Intel&reg; SGX)</td>\r\n<td style=\"width: 255.219px;\"><img src=\"https://www.zegucom.com.mx/images/si.png\" alt=\"Si\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Intel&reg; 64</td>\r\n<td style=\"width: 255.219px;\"><img src=\"https://www.zegucom.com.mx/images/si.png\" alt=\"Si\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Versi&oacute;n de Intel&reg; Identity Protection Technology</td>\r\n<td style=\"width: 255.219px;\">1,00</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Versi&oacute;n de Intel&reg; Secure Key Technology</td>\r\n<td style=\"width: 255.219px;\">1,00</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Versi&oacute;n del programa Intel&reg; de plataforma de imagen estable</td>\r\n<td style=\"width: 255.219px;\">1,00</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Tecnolog&iacute;a de virtualizaci&oacute;n Intel&reg; (VT-x)</td>\r\n<td style=\"width: 255.219px;\"><img src=\"https://www.zegucom.com.mx/images/si.png\" alt=\"Si\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Tecnolog&iacute;a de virtualizaci&oacute;n de Intel&reg; para E / S dirigida (VT-d)</td>\r\n<td style=\"width: 255.219px;\"><img src=\"https://www.zegucom.com.mx/images/si.png\" alt=\"Si\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Versi&oacute;n Intel&reg; TSX-NI</td>\r\n<td style=\"width: 255.219px;\">1,00</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Compatible con la tecnolog&iacute;a Intel Optane</td>\r\n<td style=\"width: 255.219px;\"><img src=\"https://www.zegucom.com.mx/images/si.png\" alt=\"Si\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Intel&reg; Boot Guard</td>\r\n<td style=\"width: 255.219px;\"><img src=\"https://www.zegucom.com.mx/images/si.png\" alt=\"Si\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Idoneidad para la plataforma Intel&reg; vPro&trade;</td>\r\n<td style=\"width: 255.219px;\"><img src=\"https://www.zegucom.com.mx/images/si.png\" alt=\"Si\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 449.219px;\" colspan=\"2\">Condiciones ambientales</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Intersecci&oacute;n T</td>\r\n<td style=\"width: 255.219px;\">100 &deg;C</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 449.219px;\" colspan=\"2\">Detalles t&eacute;cnicos</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">La cach&eacute; del procesador</td>\r\n<td style=\"width: 255.219px;\">12288 KB</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Tipo de producto</td>\r\n<td style=\"width: 255.219px;\">Processor</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Memoria m&aacute;xima de adaptador de gr&aacute;ficos</td>\r\n<td style=\"width: 255.219px;\">64 GB</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 449.219px;\" colspan=\"2\">Peso y dimensiones</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Ancho del paquete</td>\r\n<td style=\"width: 255.219px;\">44 mm</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Profundidad del paquete</td>\r\n<td style=\"width: 255.219px;\">116 mm</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Altura del paquete</td>\r\n<td style=\"width: 255.219px;\">101 mm</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Peso del paquete</td>\r\n<td style=\"width: 255.219px;\">87 g</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Tama&ntilde;o del CPU</td>\r\n<td style=\"width: 255.219px;\">37.5 x 37.5 mm</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 449.219px;\" colspan=\"2\">Otras caracter&iacute;sticas</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Memoria interna m&aacute;xima</td>\r\n<td style=\"width: 255.219px;\">65536 MB</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Generaci&oacute;n</td>\r\n<td style=\"width: 255.219px;\">9th Generation</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Ancho de banda de bus</td>\r\n<td style=\"width: 255.219px;\">8</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Unidades de tipo de bus</td>\r\n<td style=\"width: 255.219px;\">GT/s</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Fecha de lanzamiento</td>\r\n<td style=\"width: 255.219px;\">Q4\'18</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Frecuencia m&aacute;xima de resoluci&oacute;n y actualizaci&oacute;n (DisplayPort)</td>\r\n<td style=\"width: 255.219px;\">4096x2304@60Hz</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Frecuencia m&aacute;xima de resoluci&oacute;n y actualizaci&oacute;n (HDMI)</td>\r\n<td style=\"width: 255.219px;\">4096x2304@24Hz</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Frecuencia m&aacute;xima de resoluci&oacute;n y actualizaci&oacute;n (Sensor plano integrado)</td>\r\n<td style=\"width: 255.219px;\">4096x2304@60Hz</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Estado</td>\r\n<td style=\"width: 255.219px;\">Launched</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Memoria m&aacute;xima</td>\r\n<td style=\"width: 255.219px;\">128 GB</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Nombre de marca del procesador</td>\r\n<td style=\"width: 255.219px;\">9th Gen Intel Core i7\\n9th Gen Intel Core i7 Processor</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">&Uacute;ltimo cambio</td>\r\n<td style=\"width: 255.219px;\">63903513</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Familia de producto</td>\r\n<td style=\"width: 255.219px;\">Intel Core Processors</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">Velocidad del bus</td>\r\n<td style=\"width: 255.219px;\">8 GT/s</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 180.219px;\">ID de procesador</td>\r\n<td style=\"width: 255.219px;\">0x3E98</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</body>\r\n</html>', 6, '5f8cd2ad42dac.jpeg', '360.00', '380.00', 'DISPONIBLE', 47, 'procesador_intel_core_i7_9700k_36ghz_lga_1151_zocalo_h4_9th_gen', 5),
(14, 'Teclado Vorago Kb-102, Cable 1.50m Usb 2.0, Negro', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Aliquam nesciunt consectetur est rerum voluptas nihil ipsum quis a possimus quibusdam?', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<table style=\"width: 586px;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 571.219px;\" colspan=\"2\">Teclado</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 225.219px;\">Interfaz del dispositivo</td>\r\n<td style=\"width: 332.219px;\">USB</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 225.219px;\">Uso recomendado</td>\r\n<td style=\"width: 332.219px;\">Universal</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 225.219px;\">Idioma del teclado</td>\r\n<td style=\"width: 332.219px;\">Espa&ntilde;ol</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 225.219px;\">Tecnolog&iacute;a de conectividad</td>\r\n<td style=\"width: 332.219px;\">Al&aacute;mbrico</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 225.219px;\">Utilizar con</td>\r\n<td style=\"width: 332.219px;\">Universal</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 225.219px;\">Formato del teclado</td>\r\n<td style=\"width: 332.219px;\">Est&aacute;ndar</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 225.219px;\">Estilo de teclado</td>\r\n<td style=\"width: 332.219px;\">Curvo</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 225.219px;\">Dispositivos de teclado integrados</td>\r\n<td style=\"width: 332.219px;\"><img src=\"https://www.zegucom.com.mx/images/no.png\" alt=\"No\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 225.219px;\">Teclado, cantidad de teclas</td>\r\n<td style=\"width: 332.219px;\">104</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 225.219px;\">Teclas de acceso directo</td>\r\n<td style=\"width: 332.219px;\"><img src=\"https://www.zegucom.com.mx/images/si.png\" alt=\"Si\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 225.219px;\">Descansa mu&ntilde;ecas</td>\r\n<td style=\"width: 332.219px;\"><img src=\"https://www.zegucom.com.mx/images/no.png\" alt=\"No\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 225.219px;\">Teclado num&eacute;rico</td>\r\n<td style=\"width: 332.219px;\"><img src=\"https://www.zegucom.com.mx/images/si.png\" alt=\"Si\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 225.219px;\">Teclas de Windows</td>\r\n<td style=\"width: 332.219px;\"><img src=\"https://www.zegucom.com.mx/images/si.png\" alt=\"Si\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 225.219px;\">Teclado de tama&ntilde;o completo</td>\r\n<td style=\"width: 332.219px;\"><img src=\"https://www.zegucom.com.mx/images/si.png\" alt=\"Si\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 225.219px;\">Dividir teclado</td>\r\n<td style=\"width: 332.219px;\"><img src=\"https://www.zegucom.com.mx/images/no.png\" alt=\"No\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 225.219px;\">Tablero estilo islas</td>\r\n<td style=\"width: 332.219px;\"><img src=\"https://www.zegucom.com.mx/images/no.png\" alt=\"No\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 571.219px;\" colspan=\"2\">Dise&ntilde;o</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 225.219px;\">Color del producto</td>\r\n<td style=\"width: 332.219px;\">Negro</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 225.219px;\">Retroiluminaci&oacute;n</td>\r\n<td style=\"width: 332.219px;\"><img src=\"https://www.zegucom.com.mx/images/no.png\" alt=\"No\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 571.219px;\" colspan=\"2\">Ergonom&iacute;a</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 225.219px;\">Conectar y usar (Plug and Play)</td>\r\n<td style=\"width: 332.219px;\"><img src=\"https://www.zegucom.com.mx/images/si.png\" alt=\"Si\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 225.219px;\">Longitud de cable</td>\r\n<td style=\"width: 332.219px;\">1,5 m</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 571.219px;\" colspan=\"2\">Control de energ&iacute;a</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 225.219px;\">Alimentaci&oacute;n</td>\r\n<td style=\"width: 332.219px;\">USB</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 225.219px;\">Consumo de energ&iacute;a</td>\r\n<td style=\"width: 332.219px;\">35 mA</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 571.219px;\" colspan=\"2\">Rat&oacute;n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 225.219px;\">Rat&oacute;n incluido</td>\r\n<td style=\"width: 332.219px;\"><img src=\"https://www.zegucom.com.mx/images/no.png\" alt=\"No\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 571.219px;\" colspan=\"2\">Requisitos del sistema</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 225.219px;\">Sistema operativo Windows soportado</td>\r\n<td style=\"width: 332.219px;\">Windows 7 Enterprise, Windows 7 Enterprise x64, Windows 7 Home Basic, Windows 7 Home Basic x64, Windows 7 Home Premium, Windows 7 Home Premium x64, Windows 7 Professional, Windows 7 Professional x64, Windows 7 Starter, Windows 7 Starter x64, Windows 7 Ultimate, Windows 7 Ultimate x64, Windows 8, Windows 8 Enterprise, Windows 8 Enterprise x64, Windows 8 Pro, Windows 8 Pro x64, Windows 8 x64, Windows 8.1, Windows 8.1 Enterprise, Windows 8.1 Enterprise x64, Windows 8.1 Pro, Windows 8.1 Pro x64, Windows 8.1 x64, Windows XP Home, Windows XP Home x64, Windows XP Professional, Windows XP Professional x64</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 571.219px;\" colspan=\"2\">Peso y dimensiones</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 225.219px;\">Dimensiones de teclado (Ancho x Profundidad x Altura)</td>\r\n<td style=\"width: 332.219px;\">436 x 135 x 20 mm</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 225.219px;\">Peso del teclado</td>\r\n<td style=\"width: 332.219px;\">347 g</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</body>\r\n</html>', 11, '5f8ccb685e981.jpeg', '29.00', '50.00', 'DISPONIBLE', 118, 'teclado_vorago_kb_102_cable_150m_usb_20_negro', 3),
(16, 'Cable Adaptador Startech (sdcotg), Usb A Hembra Otg Para Samsung Galaxy Tab', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Aliquam nesciunt consectetur est rerum voluptas nihil ipsum quis a possimus quibusdam?', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<table style=\"width: 436px;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 421.219px;\" colspan=\"2\">Puertos e Interfaces</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 176.219px;\">Conector 1</td>\r\n<td style=\"width: 231.219px;\">Samsung 30p</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 176.219px;\">Conector 2</td>\r\n<td style=\"width: 231.219px;\">USB A</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 176.219px;\">G&eacute;nero del conector</td>\r\n<td style=\"width: 231.219px;\">Macho/Hembra</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 176.219px;\">Longitud de cable</td>\r\n<td style=\"width: 231.219px;\">0,1524 m</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 176.219px;\">Contactos del conector chapado</td>\r\n<td style=\"width: 231.219px;\">N&iacute;quel</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 421.219px;\" colspan=\"2\">Desempe&ntilde;o</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 176.219px;\">Color del producto</td>\r\n<td style=\"width: 231.219px;\">Negro</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 176.219px;\">Material de la carcasa</td>\r\n<td style=\"width: 231.219px;\">PVC</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 176.219px;\">Material del forro del cable</td>\r\n<td style=\"width: 231.219px;\">Cloruro de polivinilo (PVC)</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 176.219px;\">AWG calibre del cable</td>\r\n<td style=\"width: 231.219px;\">26/28</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 176.219px;\">Blindaje de cable</td>\r\n<td style=\"width: 231.219px;\">Papel de aluminio mylar</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 176.219px;\">Acorde RoHS</td>\r\n<td style=\"width: 231.219px;\"><img src=\"https://www.zegucom.com.mx/images/si.png\" alt=\"Si\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 176.219px;\">Certificaci&oacute;n</td>\r\n<td style=\"width: 231.219px;\">CE, REACH</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 176.219px;\">Productos compatibles</td>\r\n<td style=\"width: 231.219px;\">Samsung Galaxy Tab</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 421.219px;\" colspan=\"2\">Peso y dimensiones</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 176.219px;\">Peso</td>\r\n<td style=\"width: 231.219px;\">8 g</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 421.219px;\" colspan=\"2\">Empaquetado</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 176.219px;\">Ancho del paquete</td>\r\n<td style=\"width: 231.219px;\">125 mm</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 176.219px;\">Profundidad del paquete</td>\r\n<td style=\"width: 231.219px;\">225 mm</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 176.219px;\">Altura del paquete</td>\r\n<td style=\"width: 231.219px;\">5 mm</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 176.219px;\">Peso del paquete</td>\r\n<td style=\"width: 231.219px;\">14 g</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 421.219px;\" colspan=\"2\">Contenido del embalaje</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 176.219px;\">Cantidad por paquete</td>\r\n<td style=\"width: 231.219px;\">1 pieza(s)</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</body>\r\n</html>', 9, '5f8cd3739fa5e.jpeg', '12.00', '15.00', 'DISPONIBLE', 297, 'cable_adaptador_startech_sdcotg_usb_a_hembra_otg_para_samsung_galaxy_tab', 3),
(18, 'Procesador Amd Ryzen 5 3600xt, Soket Am4, 3.8 Ghz, Max 4.5ghz,', 'NUEVO EDITADO There are 2 version for Xiaomi MI TV 43 Inch Smart TV due to different dipatches. There are some appearance differences between them.', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<table style=\"width: 560px;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 545.219px;\" colspan=\"2\">Procesador</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 254.219px;\">Familia de procesador</td>\r\n<td style=\"width: 277.219px;\">3rd Generation AMD Ryzen 5</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 254.219px;\">Frecuencia del procesador</td>\r\n<td style=\"width: 277.219px;\">3,8 GHz</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 254.219px;\">N&uacute;mero de n&uacute;cleos de procesador</td>\r\n<td style=\"width: 277.219px;\">6</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 254.219px;\">Socket de procesador</td>\r\n<td style=\"width: 277.219px;\">Z&oacute;calo AM4</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 254.219px;\">Componente para</td>\r\n<td style=\"width: 277.219px;\">PC</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 254.219px;\">Litograf&iacute;a del procesador</td>\r\n<td style=\"width: 277.219px;\">7 nm</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 254.219px;\">Caja</td>\r\n<td style=\"width: 277.219px;\"><img src=\"https://www.zegucom.com.mx/images/si.png\" alt=\"Si\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 254.219px;\">Refrigerador incluido</td>\r\n<td style=\"width: 277.219px;\"><img src=\"https://www.zegucom.com.mx/images/si.png\" alt=\"Si\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 254.219px;\">Fabricante de procesador</td>\r\n<td style=\"width: 277.219px;\">AMD</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 254.219px;\">Modelo del procesador</td>\r\n<td style=\"width: 277.219px;\">3600XT</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 254.219px;\">N&uacute;mero de filamentos de procesador</td>\r\n<td style=\"width: 277.219px;\">12</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 254.219px;\">Modo de procesador operativo</td>\r\n<td style=\"width: 277.219px;\">64 bits</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 254.219px;\">Frecuencia del procesador turbo</td>\r\n<td style=\"width: 277.219px;\">4,5 GHz</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 545.219px;\" colspan=\"2\">Memoria</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 254.219px;\">Canales de memoria</td>\r\n<td style=\"width: 277.219px;\">Dual-channel</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 254.219px;\">Tipos de memoria que admite el procesador</td>\r\n<td style=\"width: 277.219px;\">DDR4-SDRAM</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 254.219px;\">Velocidad de reloj de memoria que admite el procesador</td>\r\n<td style=\"width: 277.219px;\">3200 MHz</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 545.219px;\" colspan=\"2\">Control de energ&iacute;a</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 254.219px;\">Potencia de dise&ntilde;o t&eacute;rmico (TDP)</td>\r\n<td style=\"width: 277.219px;\">95 W</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 545.219px;\" colspan=\"2\">Caracter&iacute;sticas</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 254.219px;\">Versi&oacute;n de entradas de PCI Express</td>\r\n<td style=\"width: 277.219px;\">4.0</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</body>\r\n</html>', 6, '5f8ccc7902b2a.jpeg', '299.00', '400.00', 'DISPONIBLE', 99, 'procesador_amd_ryzen_5_3600xt_soket_am4_38_ghz_max_45ghz', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resena`
--

CREATE TABLE `resena` (
  `id` int(11) NOT NULL,
  `resena` longtext NOT NULL,
  `iduser` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `createAt` date NOT NULL,
  `foto_uno` varchar(50) DEFAULT NULL,
  `foto_dos` varchar(50) DEFAULT NULL,
  `foto_tres` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `resena`
--

INSERT INTO `resena` (`id`, `resena`, `iduser`, `idproducto`, `createAt`, `foto_uno`, `foto_dos`, `foto_tres`) VALUES
(1, 'El producto esta totalmente perfecto, buen precio grandes caracteristicas, solo espero que el paquete llegue un poco mas temprano.', 5, 3, '2020-03-29', '10.jpg', '20.jpg', '30.jpg'),
(2, 'Muy buen producto, me encanto.', 5, 3, '2020-03-30', '5e82be730203c783769895.jpeg', '5e82be7318ed21071615534.jpeg', '5e82be73191e22108044832.jpeg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipo_doc` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num_doc` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credit` decimal(7,2) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `fullname`, `email`, `email_verified_at`, `password`, `role`, `telefono`, `tipo_doc`, `num_doc`, `credit`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Francisco', 'Zenteno', 'admin@dealpc.com', NULL, '$2y$10$pGoaLkcOLTwTScKhg6M/zOIKQyan7WO9nZTWM85Y6f0bVXx49aaSa', 'ADMIN', '4494951043', 'Pasaporte', '9770070', '101.20', NULL, '2020-10-17 23:55:36', '2020-10-17 23:55:36'),
(5, 'Irvin', 'Navarro', 'irvinnavarro@gmail.com', NULL, '$2y$10$s8P8VhNeTK.bb7ITzte/F.xUr3rt3gcBBprjmvjB0.uIP6U/tpk5u', 'USER', '4491430727', 'DNI', '70612413', '0.00', NULL, '2020-10-23 13:30:20', '2020-10-23 13:30:20'),
(6, 'Litzy', 'Andrade', 'litzyandrade@gmail.com', NULL, '$2y$10$E6rWqTq/wEB3yfG83ldFV.PbA9Q0fAtJVo8ghILc8OEFdtCe3nm2.', 'USER', '4494392589', 'DNI', '78489586', '0.00', NULL, '2020-11-01 15:23:29', '2020-11-01 15:23:29'),
(7, NULL, NULL, 'Andrade_SHXX99@hotmail.com', NULL, '$2y$10$T7NKZpxWfq8CJWf8iFcKIeN.Jycusttu7KHYZWwJlRgwk/reHm9ra', 'USER', NULL, NULL, NULL, '0.00', NULL, '2020-11-02 12:23:24', '2020-11-02 12:23:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) NOT NULL,
  `transaccion` varchar(100) NOT NULL,
  `iduser` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `metodo` varchar(50) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `createAt` date NOT NULL,
  `iddireccion` int(11) NOT NULL,
  `track` varchar(50) DEFAULT NULL,
  `tiempo` varchar(50) DEFAULT NULL,
  `medio_postal` varchar(50) DEFAULT NULL,
  `estado` varchar(20) NOT NULL,
  `total` decimal(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`id`, `codigo`, `transaccion`, `iduser`, `idproducto`, `metodo`, `cantidad`, `createAt`, `iddireccion`, `track`, `tiempo`, `medio_postal`, `estado`, `total`) VALUES
(32, '5e8425dd34e5f', 'PAYID-L2CCLTA4SG54315152995232', 5, 13, 'Paypal', 2, '2020-04-01', 4, NULL, NULL, NULL, 'Reembolsado', '720.00'),
(33, '5e8425dd48423', 'PAYID-L2CCLTA4SG54315152995232', 5, 12, 'Paypal', 1, '2020-04-01', 4, NULL, NULL, NULL, 'Cancelado', '2100.00'),
(34, '5e8425dd55faf', 'PAYID-L2CCLTA4SG54315152995232', 5, 14, 'Paypal', 1, '2020-04-01', 4, NULL, NULL, NULL, 'Reembolsado', '140.00'),
(35, '5e84f091ca93a', 'PAYID-L2CPA6Q42C716954U4597118', 5, 7, 'Paypal', 3, '2020-03-01', 4, NULL, NULL, NULL, 'Enviado', '84.00'),
(36, '5e84f42a894fb', 'PAYID-L2CPIEY9TN147347X427260J', 5, 3, 'Paypal', 1, '2020-04-01', 4, 'ER6546546545PE', '17 de Abril al 30 de Abril', 'Serpost', 'Enviado', '150.00'),
(38, '5e8548bb1e616', 'PAYID-L2CURHY67M37188MX454532H', 6, 13, 'Paypal', 3, '2020-04-01', 5, NULL, NULL, NULL, 'Enviado', '1080.00'),
(39, '5e8548bb6bf8c', 'PAYID-L2CURHY67M37188MX454532H', 6, 12, 'Paypal', 1, '2020-04-01', 5, NULL, NULL, NULL, 'Cancelado', '2100.00'),
(41, '5e855f6ddd3e0', 'PAYID-L2CV6VI1K154976N1252501J', 5, 18, 'Paypal', 2, '2020-04-01', 4, NULL, NULL, NULL, 'Reembolsado', '300.00'),
(44, '5eae060954167', 'tkn_test_OabqPk4g6vU4cXZC', 5, 18, 'Paypal', 1, '2020-05-02', 4, NULL, NULL, NULL, 'Procesando', '150.00'),
(45, '5eae1163753ab', 'tkn_test_zIAIqJJIgHAbn6pj', 5, 16, 'Tarjeta de Crédito', 1, '2020-05-02', 4, NULL, NULL, NULL, 'Procesando', '12.00'),
(46, '5eae11e3c8736', 'PAYID-L2XBDUQ2NP14529RB696542E', 5, 12, 'Paypal', 1, '2020-05-02', 4, NULL, NULL, NULL, 'Procesando', '2100.00'),
(47, '5fa9490c3406a', 'PAYID-L6UUR6Y0WU809925S933644L', 10, 16, 'Paypal', 1, '2020-11-09', 9, NULL, NULL, NULL, 'Procesando', '12.00'),
(48, '5fcb9d27e055a', 'PAYID-L7FZYOQ5G660210DD138332M', 1, 16, 'Paypal', 1, '2020-12-05', 10, NULL, NULL, NULL, 'Procesando', '12.00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cancelacion`
--
ALTER TABLE `cancelacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cancelacion_venta` (`idventa`);

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_carrito_compra` (`idproducto`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `configuraciones`
--
ALTER TABLE `configuraciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `galeria`
--
ALTER TABLE `galeria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_galeria_producto` (`idproducto`);

--
-- Indices de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_categoria_producto` (`idcategoria`);

--
-- Indices de la tabla `resena`
--
ALTER TABLE `resena`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_reseña_producto` (`idproducto`),
  ADD KEY `fk_reseña_user` (`iduser`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_venta_producto` (`idproducto`),
  ADD KEY `fk_venta_direccion` (`iddireccion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cancelacion`
--
ALTER TABLE `cancelacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `carrito`
--
ALTER TABLE `carrito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `configuraciones`
--
ALTER TABLE `configuraciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `direccion`
--
ALTER TABLE `direccion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `galeria`
--
ALTER TABLE `galeria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `resena`
--
ALTER TABLE `resena`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cancelacion`
--
ALTER TABLE `cancelacion`
  ADD CONSTRAINT `fk_cancelacion_venta` FOREIGN KEY (`idventa`) REFERENCES `venta` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD CONSTRAINT `fk_carrito_compra` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `galeria`
--
ALTER TABLE `galeria`
  ADD CONSTRAINT `fk_galeria_producto` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `fk_categoria_producto` FOREIGN KEY (`idcategoria`) REFERENCES `categoria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `resena`
--
ALTER TABLE `resena`
  ADD CONSTRAINT `fk_reseña_producto` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_reseña_user` FOREIGN KEY (`iduser`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `fk_venta_direccion` FOREIGN KEY (`iddireccion`) REFERENCES `direccion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_venta_producto` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
