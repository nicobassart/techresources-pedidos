-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-02-2015 a las 03:31:53
-- Versión del servidor: 5.6.16
-- Versión de PHP: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `tragos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
  `idCliente` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(25) NOT NULL,
  `telefono` varchar(25) NOT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`idCliente`, `email`, `telefono`) VALUES
(1, '222', '222'),
(2, '222', '222'),
(3, 'arielbrizi@gmail.com', ''),
(4, 'arielbrizi@gmail.com', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parametria`
--

CREATE TABLE IF NOT EXISTS `parametria` (
  `idparametria` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `valor` varchar(45) DEFAULT NULL,
  `descripcion` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`idparametria`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `parametria`
--

INSERT INTO `parametria` (`idparametria`, `nombre`, `valor`, `descripcion`) VALUES
(1, 'monto_incremento', '5', 'Monto que se incrementa el precio por cada venta'),
(2, 'tiempo_actualizacion_pantalla', '3', 'Tiempo actualización de la pantalla(calcula decremento igual)'),
(3, 'tiempo_min_decremento', '10', 'Luego de la venta espera X segundos para decrementar el precio'),
(4, 'monto_decremento', '0.5', 'Monto en pesos que decrementa el valor de la bebida por cada venta'),
(5, 'tiempo_min_igual', '9', 'Tiempo que representa el estado en que pasa a estar estable el precio'),
(6, 'impresoras_activas', '1', 'Determina la cantidad de impresoras activas de 1 a 3'),
(7, 'impresora_1', 'COM2-1-60', 'Puerto - Mesa Inicio - Mesa Fin'),
(8, 'impresora_2', 'COM3-61-80', 'Puerto - Mesa Inicio - Mesa Fin'),
(9, 'impresora_3', 'COM4-81-90', 'Puerto - Mesa Inicio - Mesa Fin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tragos`
--

CREATE TABLE IF NOT EXISTS `tragos` (
  `idtragos` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(250) NOT NULL,
  `precioMin` decimal(8,2) DEFAULT NULL,
  `precioMax` decimal(8,2) DEFAULT NULL,
  `precio` decimal(8,2) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `dt_ultimaCompra` datetime DEFAULT NULL,
  PRIMARY KEY (`idtragos`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tragos`
--

INSERT INTO `tragos` (`idtragos`, `nombre`, `descripcion`, `precioMin`, `precioMax`, `precio`, `activo`, `estado`, `dt_ultimaCompra`) VALUES
(0, 'Mojito', 'Estamos probando las descipciones', '10.00', '30.00', '13.00', 0, 0, '2012-09-19 00:09:31'),
(1, 'Fernet Cola', 'Estamos probando las descipciones', '15.00', '30.00', '18.00', 0, 3, '2012-09-17 23:07:31'),
(2, 'Mojito 1 lt', 'Estamos probando las descipciones', '10.00', '30.00', '28.30', 0, 0, '2015-01-31 13:33:05'),
(3, 'Mojito Frozzen', 'Estamos probando las descipciones', '10.00', '30.00', '33.30', 1, 2, '2015-02-04 00:08:55'),
(4, 'Daiquiri', 'Estamos probando las descipciones', '10.00', '30.00', '18.40', 0, 0, '2015-01-31 13:33:06'),
(5, 'Mojito Japones', 'Estamos probando las descipciones', '10.00', '30.00', '27.90', 1, 2, '2015-02-04 00:08:56'),
(6, 'Vodka Mint', 'Estamos probando las descipciones', '10.00', '30.00', '12.90', 0, 0, '2015-01-31 13:33:07'),
(7, 'Caiperinha 1 lt', 'Estamos probando las descipciones', '10.00', '30.00', '9.80', 0, 3, '2015-01-04 00:28:14'),
(8, 'Fernet & Cola 1lt', 'Estamos probando las descipciones', '10.00', '30.00', '14.90', 1, 2, '2015-02-04 00:08:56'),
(9, 'Cocktail Night', 'Estamos probando las descipciones', '10.00', '30.00', '9.90', 0, 3, '2012-09-19 00:06:25'),
(10, 'Frederica', 'Estamos probando las descipciones', '10.00', '30.00', '10.00', 0, 3, '2012-09-19 00:09:31'),
(11, 'Cuba Libre', 'Estamos probando las descipciones', '10.00', '30.00', '9.90', 1, 3, '2012-09-19 00:06:25'),
(12, 'Caipiroshka', 'Estamos probando las descipciones', '10.00', '30.00', '10.00', 1, 3, '2012-09-19 00:09:31'),
(13, 'Vanesa Orgasmo', 'Estamos probando las descipciones', '10.00', '30.00', '9.90', 1, 3, '2012-09-19 00:06:25'),
(14, 'Gin Tonic', 'Estamos probando las descipciones', '10.00', '30.00', '9.80', 1, 3, '2012-10-01 23:34:35'),
(15, 'Caipirinha', 'Estamos probando las descipciones', '10.00', '30.00', '9.90', 0, 3, '2012-10-01 23:34:36'),
(16, 'Merengue de Limon', 'Estamos probando las descipciones', '10.00', '30.00', '9.90', 1, 3, '2012-10-01 23:34:36'),
(17, 'Pasion campari', 'Estamos probando las descipciones', '10.00', '30.00', '9.90', 1, 3, '2012-10-01 23:25:19'),
(18, 'Tragos Clasicos', 'Estamos probando las descipciones', '10.00', '30.00', '9.90', 0, 3, '2012-09-19 00:09:31'),
(19, 'Margarita de maracuya', 'Estamos probando las descipciones', '10.00', '30.00', '9.90', 1, 3, '2012-09-19 00:06:25'),
(20, 'Sensual Coco', 'Estamos probando las descipciones', '10.00', '30.00', '9.80', 1, 3, '2012-09-18 08:41:15'),
(21, 'Vodka Speed', 'Estamos probando las descipciones', '10.00', '30.00', '9.90', 1, 3, '2012-09-19 00:09:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE IF NOT EXISTS `ventas` (
  `idventas` int(11) NOT NULL AUTO_INCREMENT,
  `idmesa` int(11) DEFAULT NULL,
  `nombreTrago` varchar(42) DEFAULT NULL,
  `precio` decimal(8,2) DEFAULT NULL,
  `dt_venta` datetime DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `cobrado` tinyint(1) DEFAULT NULL,
  `idCliente` bigint(20) NOT NULL,
  PRIMARY KEY (`idventas`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=705 ;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`idventas`, `idmesa`, `nombreTrago`, `precio`, `dt_venta`, `cantidad`, `cobrado`, `idCliente`) VALUES
(424, 33, 'Caipirinha', '14.90', '2012-09-16 16:49:24', 4, 0, 0),
(423, 33, 'Gin Tonic', '9.80', '2012-09-16 16:49:24', 4, 0, 0),
(422, 33, 'Vanesa Orgasmo', '12.90', '2012-09-16 16:49:24', 4, 0, 0),
(421, 33, 'Fernet & Cola 1lt', '14.90', '2012-09-16 16:49:24', 4, 0, 0),
(420, 33, 'Caiperinha 1 lt', '16.80', '2012-09-16 16:49:24', 4, 0, 0),
(419, 33, 'Vodka Mint', '14.90', '2012-09-16 16:49:24', 5, 0, 0),
(418, 33, 'Daiquiri', '24.90', '2012-09-16 16:49:24', 5, 0, 0),
(417, 33, 'Fernet Cola', '29.90', '2012-09-16 16:49:24', 5, 0, 0),
(416, 33, 'Mojito', '30.00', '2012-09-16 16:49:24', 5, 0, 0),
(415, 27, 'Margarita de maracuya', '12.90', '2012-09-16 16:49:03', 5, 0, 0),
(414, 27, 'Tragos Clasicos', '12.90', '2012-09-16 16:49:03', 5, 0, 0),
(413, 27, 'Pasion campari', '9.90', '2012-09-16 16:49:03', 5, 0, 0),
(412, 27, 'Fernet & Cola 1lt', '9.90', '2012-09-16 16:49:03', 5, 0, 0),
(411, 27, 'Caiperinha 1 lt', '11.80', '2012-09-16 16:49:03', 5, 0, 0),
(410, 27, 'Daiquiri', '19.90', '2012-09-16 16:49:03', 5, 0, 0),
(409, 27, 'Mojito 1 lt', '27.80', '2012-09-16 16:49:03', 5, 0, 0),
(408, 27, 'Fernet Cola', '24.90', '2012-09-16 16:49:02', 5, 0, 0),
(407, 27, 'Mojito', '30.00', '2012-09-16 16:49:02', 5, 0, 0),
(406, 21, 'Vodka Mint', '9.90', '2012-09-16 16:48:51', 5, 0, 0),
(405, 26, 'Cocktail Night', '9.90', '2012-09-16 16:48:14', 2, 0, 0),
(404, 26, 'Caiperinha 1 lt', '9.80', '2012-09-16 16:48:14', 2, 0, 0),
(403, 26, 'Mojito Japones', '21.90', '2012-09-16 16:48:13', 2, 0, 0),
(402, 26, 'Mojito 1 lt', '24.80', '2012-09-16 16:48:13', 3, 0, 0),
(401, 21, 'Fernet Cola', '20.90', '2012-09-16 16:47:59', 4, 0, 0),
(400, 63, 'Mojito Frozzen', '17.80', '2012-09-16 16:46:53', 5, 0, 0),
(399, 69, 'Mojito Japones', '16.90', '2012-09-16 16:46:21', 5, 0, 0),
(398, 63, 'Mojito 1 lt', '19.80', '2012-09-16 16:46:09', 5, 0, 0),
(397, 60, 'Vanesa Orgasmo', '9.90', '2012-09-16 16:45:47', 3, 0, 0),
(396, 59, 'Mojito Japones', '14.90', '2012-09-16 16:44:52', 2, 0, 0),
(395, 60, 'Fernet Cola', '19.90', '2012-09-16 16:44:44', 1, 0, 0),
(394, 58, 'Mojito Frozzen', '15.80', '2012-09-16 16:43:22', 2, 0, 0),
(393, 61, 'Daiquiri', '14.90', '2012-09-16 16:42:33', 5, 0, 0),
(392, 61, 'Mojito Frozzen', '14.80', '2012-09-16 16:38:36', 1, 0, 0),
(391, 2, 'Mojito Frozzen', '9.80', '2012-09-16 16:32:45', 5, 0, 0),
(390, 57, 'Mojito', '25.00', '2012-09-16 16:31:15', 5, 0, 0),
(389, 31, 'Fernet Cola', '14.90', '2012-09-16 16:01:29', 5, 0, 0),
(388, 19, 'Mojito 1 lt', '14.80', '2012-09-16 16:00:40', 5, 0, 0),
(387, 20, 'Mojito', '20.00', '2012-09-16 15:58:13', 5, 0, 0),
(386, 20, 'Mojito', '15.00', '2012-09-16 15:57:49', 5, 0, 0),
(385, 19, 'Vodka Speed', '9.90', '2012-09-16 15:51:07', 3, 0, 0),
(384, 19, 'Sensual Coco', '9.80', '2012-09-16 15:51:06', 3, 0, 0),
(383, 19, 'Margarita de maracuya', '9.90', '2012-09-16 15:51:05', 3, 0, 0),
(382, 19, 'Tragos Clasicos', '9.90', '2012-09-16 15:51:04', 3, 0, 0),
(381, 19, 'Merengue de Limon', '9.90', '2012-09-16 15:51:02', 5, 0, 0),
(380, 19, 'Caipirinha', '9.90', '2012-09-16 15:51:01', 5, 0, 0),
(379, 19, 'Mojito Japones', '9.90', '2012-09-16 15:51:00', 5, 0, 0),
(378, 19, 'Daiquiri', '9.90', '2012-09-16 15:50:59', 5, 0, 0),
(377, 19, 'Mojito 1 lt', '9.80', '2012-09-16 15:50:58', 5, 0, 0),
(376, 19, 'Mojito', '10.00', '2012-09-16 15:50:57', 5, 0, 0),
(375, 56, 'Mojito', '10.00', '2012-09-14 19:35:36', 2, 0, 0),
(374, 60, 'Margarita de maracuya', '9.90', '2012-09-14 19:35:27', 3, 0, 0),
(373, 60, 'Tragos Clasicos', '9.90', '2012-09-14 19:35:27', 3, 0, 0),
(372, 60, 'Pasion campari', '9.90', '2012-09-14 19:35:27', 3, 0, 0),
(371, 60, 'Fernet & Cola 1lt', '9.90', '2012-09-14 19:35:27', 2, 0, 0),
(370, 60, 'Vodka Mint', '9.90', '2012-09-14 19:35:27', 3, 0, 0),
(369, 60, 'Daiquiri', '9.90', '2012-09-14 19:35:27', 3, 0, 0),
(368, 60, 'Mojito 1 lt', '9.80', '2012-09-14 19:35:27', 2, 0, 0),
(367, 18, 'Merengue de Limon', '9.90', '2012-09-13 19:05:00', 5, 0, 0),
(366, 18, 'Caipirinha', '9.90', '2012-09-13 19:05:00', 5, 0, 0),
(365, 18, 'Mojito Frozzen', '9.80', '2012-09-13 19:05:00', 3, 0, 0),
(364, 18, 'Mojito 1 lt', '9.80', '2012-09-13 19:05:00', 3, 0, 0),
(363, 32, 'Vodka Speed', '9.90', '2012-09-13 14:00:40', 2, 0, 0),
(362, 32, 'Sensual Coco', '9.80', '2012-09-13 14:00:40', 2, 0, 0),
(361, 32, 'Pasion campari', '9.90', '2012-09-13 14:00:40', 1, 0, 0),
(360, 32, 'Gin Tonic', '13.80', '2012-09-13 14:00:40', 2, 0, 0),
(359, 32, 'Fernet & Cola 1lt', '14.90', '2012-09-13 14:00:40', 2, 0, 0),
(358, 32, 'Caiperinha 1 lt', '14.80', '2012-09-13 14:00:40', 3, 0, 0),
(357, 32, 'Mojito 1 lt', '9.80', '2012-09-13 14:00:40', 1, 0, 0),
(356, 32, 'Fernet Cola', '14.90', '2012-09-13 14:00:40', 2, 0, 0),
(355, 32, 'Mojito', '9.00', '2012-09-13 14:00:40', 2, 0, 0),
(354, 32, 'Caipirinha', '9.90', '2012-09-13 14:00:16', 4, 0, 0),
(353, 32, 'Gin Tonic', '9.80', '2012-09-13 14:00:16', 4, 0, 0),
(352, 32, 'Caipiroshka', '10.00', '2012-09-13 14:00:16', 4, 0, 0),
(351, 32, 'Fernet & Cola 1lt', '9.90', '2012-09-13 14:00:16', 5, 0, 0),
(350, 32, 'Caiperinha 1 lt', '9.80', '2012-09-13 14:00:16', 5, 0, 0),
(349, 32, 'Mojito Japones', '9.90', '2012-09-13 14:00:16', 3, 0, 0),
(348, 32, 'Mojito Frozzen', '9.80', '2012-09-13 14:00:16', 3, 0, 0),
(347, 21, 'Caiperinha 1 lt', '9.80', '2012-09-13 13:58:29', 2, 0, 0),
(346, 21, 'Vodka Mint', '13.90', '2012-09-13 13:58:29', 3, 0, 0),
(345, 21, 'Mojito Frozzen', '13.80', '2012-09-13 13:58:29', 3, 0, 0),
(344, 21, 'Mojito 1 lt', '9.80', '2012-09-13 13:58:29', 4, 0, 0),
(343, 26, 'Pasion campari', '9.90', '2012-09-13 13:57:50', 5, 0, 0),
(342, 26, 'Merengue de Limon', '9.90', '2012-09-13 13:57:50', 2, 0, 0),
(341, 26, 'Vanesa Orgasmo', '9.90', '2012-09-13 13:57:50', 4, 0, 0),
(340, 26, 'Fernet & Cola 1lt', '9.90', '2012-09-13 13:57:50', 5, 0, 0),
(339, 26, 'Vodka Mint', '9.90', '2012-09-13 13:57:50', 5, 0, 0),
(338, 26, 'Mojito Frozzen', '9.80', '2012-09-13 13:57:50', 5, 0, 0),
(337, 26, 'Fernet Cola', '14.90', '2012-09-13 13:57:50', 5, 0, 0),
(336, 24, 'Vodka Speed', '13.90', '2012-09-13 13:20:37', 5, 0, 0),
(335, 24, 'Fernet & Cola 1lt', '12.90', '2012-09-13 13:20:37', 5, 0, 0),
(334, 24, 'Caiperinha 1 lt', '12.80', '2012-09-13 13:20:37', 5, 0, 0),
(333, 24, 'Vodka Mint', '8.90', '2012-09-13 13:20:37', 5, 0, 0),
(332, 26, 'Vodka Speed', '9.90', '2012-09-13 13:20:14', 4, 0, 0),
(331, 26, 'Fernet & Cola 1lt', '9.90', '2012-09-13 13:20:14', 3, 0, 0),
(330, 26, 'Caiperinha 1 lt', '9.80', '2012-09-13 13:20:14', 3, 0, 0),
(329, 26, 'Mojito Japones', '9.90', '2012-09-13 13:20:14', 3, 0, 0),
(328, 21, 'Mojito 1 lt', '9.80', '2012-09-13 13:14:34', 5, 0, 0),
(327, 21, 'Fernet Cola', '18.90', '2012-09-13 13:14:34', 5, 0, 0),
(326, 18, 'Tragos Clasicos', '8.90', '2012-09-13 13:14:07', 1, 0, 0),
(325, 18, 'Pasion campari', '9.90', '2012-09-13 13:14:07', 1, 0, 0),
(324, 18, 'Fernet & Cola 1lt', '9.90', '2012-09-13 13:14:07', 1, 0, 0),
(323, 18, 'Caiperinha 1 lt', '8.80', '2012-09-13 13:14:07', 1, 0, 0),
(322, 18, 'Mojito Japones', '9.90', '2012-09-13 13:14:07', 3, 0, 0),
(321, 18, 'Daiquiri', '9.90', '2012-09-13 13:14:07', 4, 0, 0),
(320, 18, 'Fernet Cola', '14.90', '2012-09-13 13:14:07', 4, 0, 0),
(319, 21, 'Vodka Speed', '9.90', '2012-09-13 13:11:01', 3, 0, 0),
(318, 21, 'Mojito Japones', '9.90', '2012-09-13 13:11:01', 4, 0, 0),
(317, 21, 'Daiquiri', '9.90', '2012-09-13 13:11:01', 4, 0, 0),
(316, 21, 'Mojito 1 lt', '9.80', '2012-09-13 13:11:01', 2, 0, 0),
(315, 56, 'Pasion campari', '9.90', '2012-09-13 12:55:10', 2, 0, 0),
(314, 56, 'Merengue de Limon', '9.90', '2012-09-13 12:55:10', 2, 0, 0),
(313, 56, 'Caipirinha', '8.90', '2012-09-13 12:55:10', 2, 0, 0),
(312, 56, 'Mojito Japones', '8.90', '2012-09-13 12:55:10', 2, 0, 0),
(311, 56, 'Mojito Frozzen', '8.80', '2012-09-13 12:55:10', 2, 0, 0),
(310, 56, 'Mojito 1 lt', '9.80', '2012-09-13 12:55:10', 1, 0, 0),
(309, 56, 'Fernet Cola', '14.90', '2012-09-13 12:55:10', 1, 0, 0),
(308, 16, 'Mojito 1 lt', '11.30', '2012-09-11 23:56:00', 5, 0, 0),
(307, 16, 'Mojito 1 lt', '9.80', '2012-09-11 23:54:32', 5, 0, 0),
(306, 29, 'Gin Tonic', '8.80', '2012-09-11 23:52:35', 5, 0, 0),
(305, 25, 'Caiperinha 1 lt', '8.80', '2012-09-11 23:52:13', 4, 0, 0),
(304, 16, 'Fernet Cola', '13.90', '2012-09-11 23:51:56', 3, 0, 0),
(303, 16, 'Mojito', '10.00', '2012-09-11 23:50:36', 1, 0, 0),
(302, 25, 'Tragos Clasicos', '9.90', '2012-09-11 23:43:10', 3, 0, 0),
(301, 25, 'Merengue de Limon', '9.90', '2012-09-11 23:43:10', 4, 0, 0),
(300, 25, 'Caipirinha', '9.90', '2012-09-11 23:43:10', 5, 0, 0),
(299, 25, 'Gin Tonic', '9.80', '2012-09-11 23:43:10', 5, 0, 0),
(298, 25, 'Vanesa Orgasmo', '8.90', '2012-09-11 23:43:10', 5, 0, 0),
(297, 19, 'Vanesa Orgasmo', '9.90', '2012-09-11 23:40:21', 3, 0, 0),
(296, 19, 'Cuba Libre', '9.90', '2012-09-11 23:40:21', 2, 0, 0),
(295, 19, 'Cocktail Night', '9.90', '2012-09-11 23:40:21', 4, 0, 0),
(294, 19, 'Caiperinha 1 lt', '9.80', '2012-09-11 23:40:21', 5, 0, 0),
(293, 19, 'Vodka Mint', '9.90', '2012-09-11 23:40:21', 3, 0, 0),
(292, 19, 'Daiquiri', '9.90', '2012-09-11 23:40:21', 4, 0, 0),
(291, 19, 'Mojito 1 lt', '9.80', '2012-09-11 23:40:21', 2, 0, 0),
(290, 19, 'Fernet Cola', '14.90', '2012-09-11 23:40:21', 3, 0, 0),
(289, 19, 'Mojito', '9.00', '2012-09-11 23:40:21', 5, 0, 0),
(288, 26, 'Mojito Frozzen', '9.80', '2012-09-11 22:45:01', 5, 1, 0),
(287, 35, 'Mojito', '10.00', '2012-09-11 22:44:40', 5, 0, 0),
(286, 32, 'Mojito Japones', '9.90', '2012-09-11 22:43:06', 5, 0, 0),
(285, 16, 'Mojito', '15.40', '2012-09-11 14:04:09', 5, 1, 0),
(284, 35, 'Mojito', '12.90', '2012-09-11 13:58:41', 5, 1, 0),
(283, 23, 'Mojito', '12.40', '2012-09-11 13:57:35', 1, 1, 0),
(282, 16, 'Gin Tonic', '9.90', '2012-09-11 13:52:09', 1, 1, 0),
(281, 16, 'Caiperinha 1 lt', '9.90', '2012-09-11 13:52:09', 4, 1, 0),
(280, 16, 'Mojito', '10.40', '2012-09-11 13:52:09', 4, 1, 0),
(279, 1, 'Caipiroshka', '9.90', '2012-09-10 14:12:20', 2, 1, 0),
(278, 1, 'Mojito 1 lt', '10.00', '2012-09-10 14:12:19', 2, 1, 0),
(277, 1, 'Fernet Cola', '15.00', '2012-09-10 14:12:19', 1, 1, 0),
(276, 1, 'Mojito', '9.90', '2012-09-10 14:12:19', 1, 1, 0),
(425, 27, 'Mojito 1 lt', '32.80', '2012-09-16 16:49:44', 4, 0, 0),
(426, 27, 'Mojito Japones', '23.90', '2012-09-16 16:49:44', 2, 0, 0),
(427, 27, 'Vodka Mint', '19.90', '2012-09-16 16:49:44', 1, 0, 0),
(428, 27, 'Caiperinha 1 lt', '20.80', '2012-09-16 16:49:44', 2, 0, 0),
(429, 27, 'Fernet & Cola 1lt', '18.90', '2012-09-16 16:49:44', 2, 0, 0),
(430, 27, 'Margarita de maracuya', '17.90', '2012-09-16 16:49:44', 3, 0, 0),
(431, 27, 'Sensual Coco', '12.80', '2012-09-16 16:49:44', 3, 0, 0),
(432, 40, 'Mojito 1 lt', '32.80', '2012-09-16 16:58:50', 5, 0, 0),
(433, 40, 'Mojito Frozzen', '22.80', '2012-09-16 16:58:51', 5, 0, 0),
(434, 40, 'Daiquiri', '29.90', '2012-09-16 16:58:51', 5, 0, 0),
(435, 40, 'Sensual Coco', '15.80', '2012-09-16 16:58:52', 5, 0, 0),
(436, 40, 'Vodka Speed', '12.90', '2012-09-16 16:58:52', 5, 0, 0),
(437, 40, 'Fernet Cola', '34.90', '2012-09-16 17:01:25', 5, 0, 0),
(438, 40, 'Mojito 1 lt', '32.80', '2012-09-16 17:01:25', 5, 0, 0),
(439, 40, 'Mojito Frozzen', '27.80', '2012-09-16 17:01:25', 5, 0, 0),
(440, 40, 'Mojito Japones', '25.90', '2012-09-16 17:01:25', 5, 0, 0),
(441, 53, 'Tragos Clasicos', '17.90', '2012-09-16 17:01:38', 5, 0, 0),
(442, 53, 'Margarita de maracuya', '20.90', '2012-09-16 17:01:38', 5, 0, 0),
(443, 53, 'Sensual Coco', '20.80', '2012-09-16 17:01:38', 5, 0, 0),
(444, 53, 'Vodka Speed', '17.90', '2012-09-16 17:01:38', 5, 0, 0),
(445, 47, 'Mojito Frozzen', '32.80', '2012-09-16 17:01:55', 5, 0, 0),
(446, 47, 'Daiquiri', '34.90', '2012-09-16 17:01:56', 5, 0, 0),
(447, 47, 'Mojito Japones', '30.90', '2012-09-16 17:01:56', 5, 0, 0),
(448, 47, 'Vodka Mint', '20.90', '2012-09-16 17:01:56', 5, 0, 0),
(449, 47, 'Caiperinha 1 lt', '22.80', '2012-09-16 17:01:56', 5, 0, 0),
(450, 60, 'Mojito 1 lt', '32.80', '2012-09-16 17:03:42', 5, 0, 0),
(451, 60, 'Mojito Frozzen', '32.80', '2012-09-16 17:03:42', 5, 0, 0),
(452, 60, 'Daiquiri', '34.90', '2012-09-16 17:03:42', 5, 0, 0),
(453, 60, 'Mojito Japones', '30.90', '2012-09-16 17:03:43', 5, 0, 0),
(454, 39, 'Mojito', '30.00', '2012-09-16 17:11:01', 5, 0, 0),
(455, 39, 'Fernet Cola', '34.90', '2012-09-16 17:11:01', 5, 0, 0),
(456, 39, 'Mojito 1 lt', '32.80', '2012-09-16 17:11:01', 5, 0, 0),
(457, 39, 'Mojito Frozzen', '32.80', '2012-09-16 17:11:01', 5, 0, 0),
(458, 39, 'Daiquiri', '34.90', '2012-09-16 17:11:01', 5, 0, 0),
(459, 40, 'Mojito Frozzen', '32.80', '2012-09-16 17:11:59', 5, 0, 0),
(460, 40, 'Daiquiri', '34.90', '2012-09-16 17:11:59', 5, 0, 0),
(461, 40, 'Mojito Japones', '30.90', '2012-09-16 17:11:59', 5, 0, 0),
(462, 40, 'Vodka Mint', '25.90', '2012-09-16 17:11:59', 5, 0, 0),
(463, 40, 'Sensual Coco', '25.80', '2012-09-16 17:11:59', 5, 0, 0),
(464, 40, 'Vodka Speed', '22.90', '2012-09-16 17:11:59', 5, 0, 0),
(465, 52, 'Mojito', '30.00', '2012-09-16 17:12:41', 5, 0, 0),
(466, 52, 'Fernet Cola', '34.90', '2012-09-16 17:12:41', 5, 0, 0),
(467, 52, 'Mojito 1 lt', '32.80', '2012-09-16 17:12:42', 5, 0, 0),
(468, 55, 'Frederica', '10.00', '2012-09-16 17:13:25', 5, 0, 0),
(469, 55, 'Cuba Libre', '9.90', '2012-09-16 17:13:25', 5, 0, 0),
(470, 21, 'Fernet Cola', '34.90', '2012-09-16 17:17:48', 5, 0, 0),
(471, 21, 'Mojito 1 lt', '32.80', '2012-09-16 17:17:48', 5, 0, 0),
(472, 21, 'Mojito Frozzen', '32.80', '2012-09-16 17:17:48', 5, 0, 0),
(473, 61, 'Tragos Clasicos', '22.90', '2012-09-16 17:20:06', 5, 0, 0),
(474, 61, 'Margarita de maracuya', '25.90', '2012-09-16 17:20:06', 5, 0, 0),
(475, 61, 'Sensual Coco', '30.80', '2012-09-16 17:20:06', 5, 0, 0),
(476, 61, 'Vodka Speed', '27.90', '2012-09-16 17:20:06', 5, 0, 0),
(477, 55, 'Tragos Clasicos', '27.90', '2012-09-16 17:21:25', 2, 0, 0),
(478, 55, 'Margarita de maracuya', '30.90', '2012-09-16 17:21:25', 2, 0, 0),
(479, 55, 'Sensual Coco', '30.80', '2012-09-16 17:21:25', 2, 0, 0),
(480, 55, 'Vodka Speed', '32.90', '2012-09-16 17:21:25', 2, 0, 0),
(481, 21, 'Tragos Clasicos', '29.90', '2012-09-16 17:22:31', 3, 0, 0),
(482, 21, 'Margarita de maracuya', '30.90', '2012-09-16 17:22:31', 3, 0, 0),
(483, 21, 'Sensual Coco', '30.80', '2012-09-16 17:22:31', 3, 0, 0),
(484, 21, 'Vodka Speed', '32.90', '2012-09-16 17:22:31', 3, 0, 0),
(485, 32, 'Merengue de Limon', '14.90', '2012-09-16 17:23:04', 1, 0, 0),
(486, 32, 'Pasion campari', '14.90', '2012-09-16 17:23:05', 1, 0, 0),
(487, 32, 'Tragos Clasicos', '32.90', '2012-09-16 17:23:05', 1, 0, 0),
(488, 32, 'Margarita de maracuya', '30.90', '2012-09-16 17:23:05', 1, 0, 0),
(489, 32, 'Sensual Coco', '30.80', '2012-09-16 17:23:05', 1, 0, 0),
(490, 32, 'Vodka Speed', '32.90', '2012-09-16 17:23:05', 1, 0, 0),
(491, 17, 'Fernet Cola', '14.90', '2012-09-16 18:50:55', 5, 0, 0),
(492, 1, 'Fernet Cola', '19.90', '2012-09-16 18:51:14', 5, 0, 0),
(493, 15, 'Margarita de maracuya', '9.90', '2012-09-16 18:51:30', 5, 0, 0),
(494, 15, 'Sensual Coco', '9.80', '2012-09-16 18:51:30', 5, 0, 0),
(495, 15, 'Vodka Speed', '9.90', '2012-09-16 18:51:31', 5, 0, 0),
(496, 10, 'Cocktail Night', '9.90', '2012-09-16 18:52:06', 3, 1, 0),
(497, 10, 'Frederica', '10.00', '2012-09-16 18:52:06', 3, 1, 0),
(498, 10, 'Cuba Libre', '9.90', '2012-09-16 18:52:06', 3, 1, 0),
(499, 10, 'Caipiroshka', '10.00', '2012-09-16 18:52:06', 3, 1, 0),
(500, 16, 'Daiquiri', '9.90', '2012-09-16 20:43:33', 3, 0, 0),
(501, 16, 'Caiperinha 1 lt', '9.80', '2012-09-16 20:43:33', 1, 0, 0),
(502, 16, 'Fernet & Cola 1lt', '9.90', '2012-09-16 20:43:33', 1, 0, 0),
(503, 23, 'Mojito Japones', '9.90', '2012-09-16 20:45:22', 3, 0, 0),
(504, 23, 'Fernet & Cola 1lt', '9.90', '2012-09-16 20:45:22', 3, 0, 0),
(505, 19, 'Mojito Japones', '12.40', '2012-09-16 20:46:29', 4, 0, 0),
(506, 19, 'Cocktail Night', '9.90', '2012-09-16 20:46:29', 4, 0, 0),
(507, 19, 'Mojito Frozzen', '9.80', '2012-09-16 20:48:13', 2, 0, 0),
(508, 19, 'Cocktail Night', '9.90', '2012-09-16 20:48:13', 3, 0, 0),
(509, 34, 'Vodka Speed', '9.90', '2012-09-16 20:48:51', 5, 0, 0),
(510, 20, 'Mojito 1 lt', '9.80', '2012-09-16 20:49:24', 1, 0, 0),
(511, 60, 'Mojito 1 lt', '9.80', '2012-09-16 20:55:26', 2, 0, 0),
(512, 34, 'Mojito 1 lt', '11.80', '2012-09-16 20:55:26', 2, 0, 0),
(513, 34, 'Mojito Frozzen', '9.80', '2012-09-16 20:55:26', 1, 0, 0),
(514, 22, 'Daiquiri', '9.90', '2012-09-16 21:01:06', 5, 0, 0),
(515, 22, 'Frederica', '10.00', '2012-09-16 21:04:35', 3, 0, 0),
(516, 22, 'Margarita de maracuya', '9.90', '2012-09-16 21:04:35', 1, 0, 0),
(517, 23, 'Sensual Coco', '9.80', '2012-09-16 21:05:12', 3, 0, 0),
(518, 23, 'Caiperinha 1 lt', '9.80', '2012-09-16 21:05:57', 4, 0, 0),
(519, 32, 'Fernet Cola', '14.90', '2012-09-16 21:06:40', 1, 0, 0),
(520, 18, 'Mojito', '10.00', '2012-09-16 21:21:07', 3, 0, 0),
(521, 19, 'Mojito', '10.00', '2012-09-16 21:23:48', 1, 0, 0),
(522, 29, 'Caiperinha 1 lt', '9.80', '2012-09-16 21:27:26', 2, 0, 0),
(523, 23, 'Cocktail Night', '9.90', '2012-09-16 21:29:01', 2, 0, 0),
(524, 18, 'Caipirinha', '9.90', '2012-09-16 21:36:01', 1, 0, 0),
(525, 17, 'Fernet Cola', '14.90', '2012-09-17 22:16:59', 1, 0, 0),
(526, 18, 'Fernet Cola', '14.90', '2012-09-17 22:17:39', 1, 0, 0),
(527, 16, 'Mojito Frozzen', '9.80', '2012-09-17 22:18:42', 2, 0, 0),
(528, 38, 'Fernet Cola', '14.90', '2012-09-17 22:24:33', 2, 0, 0),
(529, 38, 'Caiperinha 1 lt', '9.80', '2012-09-17 22:24:33', 2, 0, 0),
(530, 45, 'Fernet Cola', '14.90', '2012-09-17 22:25:46', 1, 0, 0),
(531, 41, 'Caiperinha 1 lt', '9.80', '2012-09-17 22:26:57', 1, 0, 0),
(532, 42, 'Caiperinha 1 lt', '9.80', '2012-09-17 22:30:15', 1, 0, 0),
(533, 36, 'Caiperinha 1 lt', '9.80', '2012-09-17 22:35:54', 1, 0, 0),
(534, 36, 'Caiperinha 1 lt', '10.80', '2012-09-17 22:35:57', 1, 0, 0),
(535, 18, 'Margarita de maracuya', '9.90', '2012-09-17 22:50:22', 5, 0, 0),
(536, 18, 'Caipiroshka', '10.00', '2012-09-17 22:51:39', 5, 0, 0),
(537, 17, 'Fernet Cola', '14.90', '2012-09-17 23:07:31', 5, 0, 0),
(538, 17, 'Mojito 1 lt', '9.80', '2012-09-17 23:13:53', 5, 0, 0),
(539, 17, 'Mojito Frozzen', '9.80', '2012-09-18 07:48:39', 1, 0, 0),
(540, 17, 'Fernet & Cola 1lt', '9.90', '2012-09-18 07:48:39', 1, 0, 0),
(541, 16, 'Caipirinha', '9.90', '2012-09-18 07:49:03', 1, 0, 0),
(542, 17, 'Gin Tonic', '9.80', '2012-09-18 07:49:14', 2, 0, 0),
(543, 16, 'Mojito Frozzen', '9.80', '2012-09-18 07:50:22', 2, 0, 0),
(544, 17, 'Merengue de Limon', '9.90', '2012-09-18 07:51:47', 2, 0, 0),
(545, 17, 'Mojito', '10.00', '2012-09-18 08:04:42', 1, 0, 0),
(546, 17, 'Frederica', '10.00', '2012-09-18 08:04:42', 1, 0, 0),
(547, 16, 'Mojito', '10.00', '2012-09-18 08:13:06', 1, 0, 0),
(548, 16, 'Mojito', '10.00', '2012-09-18 08:23:15', 1, 0, 0),
(549, 17, 'Mojito', '10.00', '2012-09-18 08:24:54', 5, 0, 0),
(550, 17, 'Mojito Frozzen', '9.80', '2012-09-18 08:24:54', 5, 0, 0),
(551, 17, 'Caipiroshka', '10.00', '2012-09-18 08:24:54', 5, 0, 0),
(552, 17, 'Vanesa Orgasmo', '9.90', '2012-09-18 08:24:54', 5, 0, 0),
(553, 18, 'Caiperinha 1 lt', '9.80', '2012-09-18 08:26:45', 4, 0, 0),
(554, 18, 'Cocktail Night', '9.90', '2012-09-18 08:26:45', 2, 0, 0),
(555, 18, 'Frederica', '10.00', '2012-09-18 08:26:45', 2, 0, 0),
(556, 18, 'Cocktail Night', '9.90', '2012-09-18 08:27:53', 5, 0, 0),
(557, 18, 'Frederica', '10.00', '2012-09-18 08:27:53', 3, 0, 0),
(558, 18, 'Cuba Libre', '9.90', '2012-09-18 08:27:53', 3, 0, 0),
(559, 18, 'Sensual Coco', '9.80', '2012-09-18 08:27:53', 3, 0, 0),
(560, 17, 'Mojito', '10.00', '2012-09-18 08:32:07', 5, 0, 0),
(561, 17, 'Caiperinha 1 lt', '9.80', '2012-09-18 08:32:07', 1, 0, 0),
(562, 16, 'Mojito', '10.00', '2012-09-18 08:37:41', 5, 0, 0),
(563, 17, 'Mojito', '15.00', '2012-09-18 08:38:22', 2, 0, 0),
(564, 17, 'Mojito', '10.00', '2012-09-18 08:40:30', 5, 0, 0),
(565, 19, 'Mojito Frozzen', '9.80', '2012-09-18 08:41:15', 2, 0, 0),
(566, 19, 'Daiquiri', '9.90', '2012-09-18 08:41:15', 2, 0, 0),
(567, 19, 'Vanesa Orgasmo', '9.90', '2012-09-18 08:41:15', 2, 0, 0),
(568, 19, 'Gin Tonic', '9.80', '2012-09-18 08:41:15', 2, 0, 0),
(569, 19, 'Margarita de maracuya', '9.90', '2012-09-18 08:41:15', 2, 0, 0),
(570, 19, 'Sensual Coco', '9.80', '2012-09-18 08:41:15', 2, 0, 0),
(571, 16, 'Mojito', '10.00', '2012-09-18 23:48:24', 1, 0, 0),
(572, 17, 'Mojito Frozzen', '9.80', '2012-09-18 23:57:44', 5, 0, 0),
(573, 17, 'Vodka Mint', '9.90', '2012-09-18 23:57:44', 5, 0, 0),
(574, 17, 'Cocktail Night', '9.90', '2012-09-18 23:57:44', 5, 0, 0),
(575, 17, 'Cuba Libre', '9.90', '2012-09-18 23:57:44', 3, 0, 0),
(576, 17, 'Caipiroshka', '10.00', '2012-09-18 23:57:44', 3, 0, 0),
(577, 17, 'Caipirinha', '9.90', '2012-09-18 23:57:44', 3, 0, 0),
(578, 17, 'Tragos Clasicos', '9.90', '2012-09-18 23:57:44', 4, 0, 0),
(579, 17, 'Vodka Speed', '9.90', '2012-09-18 23:57:44', 5, 0, 0),
(580, 17, 'Mojito', '10.00', '2012-09-19 00:06:24', 5, 0, 0),
(581, 17, 'Mojito Frozzen', '9.80', '2012-09-19 00:06:25', 5, 0, 0),
(582, 17, 'Daiquiri', '9.90', '2012-09-19 00:06:25', 5, 0, 0),
(583, 17, 'Vodka Mint', '9.90', '2012-09-19 00:06:25', 5, 0, 0),
(584, 17, 'Fernet & Cola 1lt', '9.90', '2012-09-19 00:06:25', 5, 0, 0),
(585, 17, 'Cocktail Night', '9.90', '2012-09-19 00:06:25', 5, 0, 0),
(586, 17, 'Cuba Libre', '9.90', '2012-09-19 00:06:25', 5, 0, 0),
(587, 17, 'Vanesa Orgasmo', '9.90', '2012-09-19 00:06:25', 3, 0, 0),
(588, 17, 'Caipirinha', '9.90', '2012-09-19 00:06:25', 4, 0, 0),
(589, 17, 'Pasion campari', '9.90', '2012-09-19 00:06:25', 4, 0, 0),
(590, 17, 'Margarita de maracuya', '9.90', '2012-09-19 00:06:25', 3, 0, 0),
(591, 17, 'Vodka Speed', '9.90', '2012-09-19 00:06:25', 5, 0, 0),
(592, 17, 'Mojito', '15.00', '2012-09-19 00:06:25', 5, 0, 0),
(593, 17, 'Mojito Frozzen', '14.80', '2012-09-19 00:06:25', 5, 0, 0),
(594, 17, 'Daiquiri', '14.90', '2012-09-19 00:06:25', 5, 0, 0),
(595, 17, 'Vodka Mint', '14.90', '2012-09-19 00:06:25', 5, 0, 0),
(596, 17, 'Fernet & Cola 1lt', '14.90', '2012-09-19 00:06:25', 5, 0, 0),
(597, 17, 'Cocktail Night', '14.90', '2012-09-19 00:06:25', 5, 0, 0),
(598, 17, 'Cuba Libre', '14.90', '2012-09-19 00:06:25', 5, 0, 0),
(599, 17, 'Vanesa Orgasmo', '12.90', '2012-09-19 00:06:25', 3, 0, 0),
(600, 17, 'Caipirinha', '13.90', '2012-09-19 00:06:25', 4, 0, 0),
(601, 17, 'Pasion campari', '13.90', '2012-09-19 00:06:25', 4, 0, 0),
(602, 17, 'Margarita de maracuya', '12.90', '2012-09-19 00:06:26', 3, 0, 0),
(603, 17, 'Vodka Speed', '14.90', '2012-09-19 00:06:26', 5, 0, 0),
(604, 18, 'Mojito', '10.00', '2012-09-19 00:09:31', 5, 0, 0),
(605, 18, 'Daiquiri', '9.90', '2012-09-19 00:09:31', 2, 0, 0),
(606, 18, 'Caiperinha 1 lt', '9.80', '2012-09-19 00:09:31', 5, 0, 0),
(607, 18, 'Frederica', '10.00', '2012-09-19 00:09:31', 5, 0, 0),
(608, 18, 'Caipiroshka', '10.00', '2012-09-19 00:09:31', 4, 0, 0),
(609, 18, 'Gin Tonic', '9.80', '2012-09-19 00:09:31', 3, 0, 0),
(610, 18, 'Merengue de Limon', '9.90', '2012-09-19 00:09:31', 3, 0, 0),
(611, 18, 'Tragos Clasicos', '9.90', '2012-09-19 00:09:31', 5, 0, 0),
(612, 18, 'Vodka Speed', '9.90', '2012-09-19 00:09:31', 5, 0, 0),
(613, 18, 'Mojito 1 lt', '9.80', '2012-09-19 22:09:33', 5, 0, 0),
(614, 18, 'Mojito Frozzen', '9.80', '2012-09-19 22:09:33', 4, 0, 0),
(615, 18, 'Mojito Japones', '9.90', '2012-09-19 22:09:33', 4, 0, 0),
(616, 18, 'Caiperinha 1 lt', '9.80', '2012-09-19 22:09:33', 4, 0, 0),
(617, 18, 'Fernet & Cola 1lt', '9.90', '2012-09-19 22:09:33', 4, 0, 0),
(618, 16, 'Mojito 1 lt', '9.80', '2012-09-22 21:41:53', 5, 0, 0),
(619, 16, 'Mojito Frozzen', '9.80', '2012-09-22 21:41:53', 5, 0, 0),
(620, 16, 'Daiquiri', '9.90', '2012-09-22 21:41:53', 5, 0, 0),
(621, 17, 'Mojito Frozzen', '11.30', '2012-09-28 21:02:52', 2, 0, 0),
(622, 17, 'Vodka Mint', '9.90', '2012-09-28 21:02:52', 2, 0, 0),
(623, 17, 'Mojito Frozzen', '21.30', '2012-09-28 21:02:53', 2, 0, 0),
(624, 17, 'Vodka Mint', '19.90', '2012-09-28 21:02:53', 2, 0, 0),
(625, 17, 'Mojito Frozzen', '31.30', '2012-09-28 21:03:02', 2, 0, 0),
(626, 17, 'Mojito Japones', '9.90', '2012-09-28 21:03:02', 2, 0, 0),
(627, 18, 'Daiquiri', '11.40', '2012-09-28 21:12:24', 1, 0, 0),
(628, 18, 'Mojito Japones', '19.90', '2012-09-28 21:12:24', 1, 0, 0),
(629, 18, 'Vodka Mint', '29.90', '2012-09-28 21:12:24', 1, 0, 0),
(630, 18, 'Caiperinha 1 lt', '9.80', '2012-09-28 21:12:24', 1, 0, 0),
(631, 17, 'Mojito Frozzen', '31.30', '2012-09-28 21:18:06', 1, 0, 0),
(632, 17, 'Daiquiri', '16.40', '2012-09-28 21:18:06', 1, 0, 0),
(633, 17, 'Vodka Mint', '34.90', '2012-09-28 21:18:06', 1, 0, 0),
(634, 17, 'Mojito 1 lt', '11.30', '2012-09-28 21:22:24', 2, 0, 0),
(635, 17, 'Mojito Frozzen', '31.30', '2012-09-28 21:22:24', 2, 0, 0),
(636, 17, 'Daiquiri', '21.40', '2012-09-28 21:22:24', 2, 0, 0),
(637, 17, 'Mojito 1 lt', '21.30', '2012-09-28 21:25:11', 2, 0, 0),
(638, 17, 'Mojito Frozzen', '31.30', '2012-09-28 21:25:11', 2, 0, 0),
(639, 17, 'Vodka Mint', '34.90', '2012-09-28 21:25:12', 2, 0, 0),
(640, 16, 'Mojito 1 lt', '31.30', '2012-09-28 21:32:10', 1, 0, 0),
(641, 16, 'Mojito Frozzen', '31.30', '2012-09-28 21:32:10', 1, 0, 0),
(642, 16, 'Mojito Japones', '24.90', '2012-09-28 21:32:10', 1, 0, 0),
(643, 16, 'Vodka Mint', '34.90', '2012-09-28 21:32:10', 1, 0, 0),
(644, 16, 'Mojito 1 lt', '31.30', '2012-10-01 22:54:33', 3, 0, 0),
(645, 16, 'Mojito Frozzen', '31.30', '2012-10-01 23:14:05', 1, 0, 0),
(646, 16, 'Mojito Japones', '29.90', '2012-10-01 23:14:05', 1, 0, 0),
(647, 16, 'Mojito Frozzen', '31.30', '2012-10-01 23:17:16', 1, 0, 0),
(648, 16, 'Mojito 1 lt', '31.30', '2012-10-01 23:20:06', 1, 0, 0),
(649, 16, 'Mojito Frozzen', '31.30', '2012-10-01 23:20:06', 1, 0, 0),
(650, 16, 'Daiquiri', '31.40', '2012-10-01 23:20:06', 1, 0, 0),
(651, 16, 'Mojito 1 lt', '31.30', '2012-10-01 23:21:15', 1, 0, 0),
(652, 16, 'Mojito Frozzen', '31.30', '2012-10-01 23:21:16', 1, 0, 0),
(653, 16, 'Daiquiri', '31.40', '2012-10-01 23:21:17', 1, 0, 0),
(654, 16, 'Mojito 1 lt', '31.30', '2012-10-01 23:25:15', 1, 0, 0),
(655, 16, 'Mojito Frozzen', '31.30', '2012-10-01 23:25:17', 1, 0, 0),
(656, 16, 'Daiquiri', '31.40', '2012-10-01 23:25:18', 1, 0, 0),
(657, 16, 'Gin Tonic', '9.80', '2012-10-01 23:25:18', 2, 0, 0),
(658, 16, 'Merengue de Limon', '9.90', '2012-10-01 23:25:19', 2, 0, 0),
(659, 16, 'Pasion campari', '9.90', '2012-10-01 23:25:19', 2, 0, 0),
(660, 16, 'Mojito 1 lt', '31.30', '2012-10-01 23:29:21', 1, 0, 0),
(661, 16, 'Mojito Frozzen', '31.30', '2012-10-01 23:29:21', 1, 0, 0),
(662, 16, 'Daiquiri', '31.40', '2012-10-01 23:29:21', 1, 0, 0),
(663, 16, 'Gin Tonic', '19.80', '2012-10-01 23:34:35', 2, 0, 0),
(664, 16, 'Caipirinha', '9.90', '2012-10-01 23:34:36', 2, 0, 0),
(665, 16, 'Merengue de Limon', '19.90', '2012-10-01 23:34:36', 2, 0, 0),
(666, 16, 'Mojito 1 lt', '31.30', '2012-10-02 07:54:53', 1, 0, 0),
(667, 16, 'Mojito Frozzen', '31.30', '2012-10-02 07:54:55', 1, 0, 0),
(668, 16, 'Daiquiri', '31.40', '2012-10-02 07:54:56', 1, 0, 0),
(669, 16, 'Daiquiri', '31.40', '2012-10-02 07:56:18', 1, 0, 0),
(670, 16, 'Mojito 1 lt', '31.30', '2012-10-02 08:12:28', 1, 0, 0),
(671, 16, 'Mojito Frozzen', '31.30', '2012-10-02 08:12:28', 1, 0, 0),
(672, 16, 'Mojito Frozzen', '31.30', '2013-07-06 09:40:48', 2, 0, 0),
(673, 16, 'Daiquiri', '31.40', '2013-07-06 09:40:48', 2, 0, 0),
(674, 16, 'Mojito 1 lt', '9.80', '2015-01-04 00:27:53', 2, 0, 0),
(675, 16, 'Daiquiri', '9.90', '2015-01-04 00:27:53', 1, 0, 0),
(676, 16, 'Mojito 1 lt', '19.80', '2015-01-04 00:28:14', 2, 0, 0),
(677, 16, 'Daiquiri', '14.90', '2015-01-04 00:28:14', 1, 0, 0),
(678, 16, 'Vodka Mint', '9.90', '2015-01-04 00:28:14', 4, 0, 0),
(679, 16, 'Caiperinha 1 lt', '9.80', '2015-01-04 00:28:14', 3, 0, 0),
(680, 16, 'Fernet & Cola 1lt', '9.90', '2015-01-04 00:28:14', 3, 0, 0),
(681, 16, 'Mojito 1 lt', '9.80', '2015-01-13 00:16:53', 1, 0, 0),
(682, 16, 'Mojito Frozzen', '9.80', '2015-01-13 00:16:53', 1, 0, 0),
(683, 16, 'Daiquiri', '9.90', '2015-01-13 00:16:53', 1, 0, 0),
(684, 16, 'Mojito 1 lt', '10.30', '2015-01-31 13:23:34', 2, 0, 0),
(685, 16, 'Mojito Frozzen', '10.30', '2015-01-31 13:23:34', 2, 0, 0),
(686, 16, 'Mojito 1 lt', '20.30', '2015-01-31 13:26:09', 1, 0, 0),
(687, 16, 'Mojito Frozzen', '20.30', '2015-01-31 13:26:09', 1, 0, 0),
(688, 16, 'Daiquiri', '10.40', '2015-01-31 13:26:09', 1, 0, 0),
(689, 16, 'Mojito Japones', '9.90', '2015-01-31 13:26:09', 1, 0, 0),
(690, 16, 'Mojito 1 lt', '25.30', '2015-01-31 13:33:05', 2, 0, 0),
(691, 16, 'Mojito Frozzen', '25.30', '2015-01-31 13:33:06', 2, 0, 0),
(692, 16, 'Daiquiri', '15.40', '2015-01-31 13:33:06', 2, 0, 0),
(693, 16, 'Mojito Japones', '14.90', '2015-01-31 13:33:06', 2, 0, 0),
(694, 16, 'Vodka Mint', '9.90', '2015-01-31 13:33:07', 2, 0, 0),
(695, 0, 'Mojito Frozzen', '28.30', '2015-02-04 00:08:55', 1, 0, 0),
(696, 0, 'Mojito Japones', '17.90', '2015-02-04 00:08:56', 2, 0, 0),
(697, 0, 'Fernet & Cola 1lt', '9.90', '2015-02-04 00:08:56', 1, 0, 0),
(698, 0, 'Mojito Japones', '27.90', '2015-02-04 00:59:49', 1, 0, 1),
(699, 0, 'Fernet & Cola 1lt', '14.90', '2015-02-04 00:59:54', 2, 0, 2),
(700, 0, 'Mojito Frozzen', '33.30', '2015-02-05 00:19:01', 1, 0, 3),
(701, 0, 'Mojito Japones', '27.90', '2015-02-05 00:19:01', 1, 0, 3),
(702, 0, 'Mojito Frozzen', '33.30', '2015-02-05 00:19:56', 1, 0, 4),
(703, 0, 'Mojito Japones', '27.90', '2015-02-05 00:19:56', 2, 0, 4),
(704, 0, 'Fernet & Cola 1lt', '14.90', '2015-02-05 00:19:57', 1, 0, 4);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
