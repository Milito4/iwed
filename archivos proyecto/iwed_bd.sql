-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 17-01-2013 a las 15:46:39
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `iwed_bd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `boceto`
--

DROP TABLE IF EXISTS `boceto`;
CREATE TABLE IF NOT EXISTS `boceto` (
  `idboceto` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(200) COLLATE utf8_bin NOT NULL,
  `descripcion` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `titulo` varchar(30) COLLATE utf8_bin NOT NULL,
  `idalta` int(11) NOT NULL REFERENCES usuario (idusuario),
  `idmodi` int(11) DEFAULT NULL REFERENCES usuario (idusuario),
  `fcalta` datetime NOT NULL,
  `fcmodi` datetime DEFAULT NULL,
  PRIMARY KEY (`idboceto`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `boceto`
--

INSERT INTO `boceto` (`idboceto`, `path`, `descripcion`, `titulo`, `idalta`, `idmodi`, `fcalta`, `fcmodi`) VALUES
(1, 'C:\\boceto.jpg', 'Boceto de prueba', 'Boceto', 1, NULL, '2013-01-17 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_accion`
--

DROP TABLE IF EXISTS `c_accion`;
CREATE TABLE IF NOT EXISTS `c_accion` (
  `idaccion` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(30) COLLATE utf8_bin NOT NULL,
  `idalta` int(11) NOT NULL,
  `idmodi` int(11) DEFAULT NULL,
  `fcalta` datetime NOT NULL,
  `fcmodi` datetime DEFAULT NULL,
  PRIMARY KEY (`idaccion`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `c_accion`
--

INSERT INTO `c_accion` (`idaccion`, `descripcion`, `idalta`, `idmodi`, `fcalta`, `fcmodi`) VALUES
(1, 'Serrar', 1, NULL, '2013-01-17 00:00:00', NULL),
(2, 'Cortar', 1, NULL, '2013-01-17 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_angulo`
--

DROP TABLE IF EXISTS `c_angulo`;
CREATE TABLE IF NOT EXISTS `c_angulo` (
  `idangulo_trabajo` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(30) COLLATE utf8_bin NOT NULL,
  `idalta` int(11) NOT NULL  REFERENCES usuario (idusuario),
  `idmodi` int(11) DEFAULT NULL  REFERENCES usuario (idusuario),
  `fcalta` datetime NOT NULL,
  `fcmodi` datetime DEFAULT NULL,
  PRIMARY KEY (`idangulo_trabajo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `c_angulo`
--

INSERT INTO `c_angulo` (`idangulo_trabajo`, `descripcion`, `idalta`, `idmodi`, `fcalta`, `fcmodi`) VALUES
(1, 'Recto 90º', 1, NULL, '2013-01-17 00:00:00', NULL),
(2, 'Agudo 60º', 1, NULL, '2013-01-17 00:00:00', NULL),
(3, 'Agudo 30º', 1, NULL, '2013-01-17 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_borde`
--

DROP TABLE IF EXISTS `c_borde`;
CREATE TABLE IF NOT EXISTS `c_borde` (
  `idtipo_borde` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(30) COLLATE utf8_bin NOT NULL,
  `idalta` int(11) NOT NULL  REFERENCES usuario (idusuario),
  `idmodi` int(11) DEFAULT NULL  REFERENCES usuario (idusuario),
  `fcalta` datetime NOT NULL,
  `fcmodi` datetime DEFAULT NULL,
  PRIMARY KEY (`idtipo_borde`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `c_borde`
--

INSERT INTO `c_borde` (`idtipo_borde`, `descripcion`, `idalta`, `idmodi`, `fcalta`, `fcmodi`) VALUES
(1, 'Recto', 1, NULL, '2013-01-17 00:00:00', NULL),
(2, 'Curvo', 1, NULL, '2013-01-17 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_bulbo`
--

DROP TABLE IF EXISTS `c_bulbo`;
CREATE TABLE IF NOT EXISTS `c_bulbo` (
  `idbulbo` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(30) COLLATE utf8_bin NOT NULL,
  `idalta` int(11) NOT NULL  REFERENCES usuario (idusuario),
  `idmodi` int(11) DEFAULT NULL  REFERENCES usuario (idusuario),
  `fcalta` datetime NOT NULL,
  `fcmodi` datetime DEFAULT NULL,
  PRIMARY KEY (`idbulbo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `c_bulbo`
--

INSERT INTO `c_bulbo` (`idbulbo`, `descripcion`, `idalta`, `idmodi`, `fcalta`, `fcmodi`) VALUES
(1, 'Difuso', 1, NULL, '2013-01-17 00:00:00', NULL),
(2, 'Prominente', 1, NULL, '2013-01-17 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_caracter`
--

DROP TABLE IF EXISTS `c_caracter`;
CREATE TABLE IF NOT EXISTS `c_caracter` (
  `idcaracter_dent` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(30) COLLATE utf8_bin NOT NULL,
  `idalta` int(11) NOT NULL  REFERENCES usuario (idusuario),
  `idmodi` int(11) DEFAULT NULL  REFERENCES usuario (idusuario),
  `fcalta` datetime NOT NULL,
  `fcmodi` datetime DEFAULT NULL,
  PRIMARY KEY (`idcaracter_dent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `c_caracter`
--

INSERT INTO `c_caracter` (`idcaracter_dent`, `descripcion`, `idalta`, `idmodi`, `fcalta`, `fcmodi`) VALUES
(1, 'Bifacial', 1, NULL, '2013-01-17 00:00:00', NULL),
(2, 'Abrupto', 1, NULL, '2013-01-17 00:00:00', NULL),
(3, 'Plano', 1, NULL, '2013-01-17 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_dorso`
--

DROP TABLE IF EXISTS `c_dorso`;
CREATE TABLE IF NOT EXISTS `c_dorso` (
  `iddorso` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(30) COLLATE utf8_bin NOT NULL,
  `idalta` int(11) NOT NULL  REFERENCES usuario (idusuario),
  `idmodi` int(11) DEFAULT NULL  REFERENCES usuario (idusuario),
  `fcalta` datetime NOT NULL,
  `fcmodi` datetime DEFAULT NULL,
  PRIMARY KEY (`iddorso`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `c_dorso`
--

INSERT INTO `c_dorso` (`iddorso`, `descripcion`, `idalta`, `idmodi`, `fcalta`, `fcmodi`) VALUES
(1, 'Recto', 1, NULL, '2013-01-17 00:00:00', NULL),
(2, 'Concavo', 1, NULL, '2013-01-01 00:00:00', NULL),
(3, 'Convexo', 1, NULL, '2013-01-17 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_materia`
--

DROP TABLE IF EXISTS `c_materia`;
CREATE TABLE IF NOT EXISTS `c_materia` (
  `idmateria` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(30) COLLATE utf8_bin NOT NULL,
  `idalta` int(11) NOT NULL  REFERENCES usuario (idusuario),
  `idmodi` int(11) DEFAULT NULL  REFERENCES usuario (idusuario),
  `fcalta` datetime NOT NULL,
  `fcmodi` datetime DEFAULT NULL,
  PRIMARY KEY (`idmateria`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `c_materia`
--

INSERT INTO `c_materia` (`idmateria`, `descripcion`, `idalta`, `idmodi`, `fcalta`, `fcmodi`) VALUES
(1, 'Hueso seco', 1, NULL, '2013-01-17 00:00:00', NULL),
(2, 'Hueso fresco', 1, NULL, '2013-01-17 00:00:00', NULL),
(3, 'Madera seca', 1, NULL, '2013-01-17 00:00:00', NULL),
(4, 'Madera fresca', 1, NULL, '2013-01-17 00:00:00', NULL),
(5, 'Carne', 1, NULL, '2013-01-17 00:00:00', NULL),
(6, 'Vegetales', 1, NULL, '2013-01-17 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_n1_tipologia`
--

DROP TABLE IF EXISTS `c_n1_tipologia`;
CREATE TABLE IF NOT EXISTS `c_n1_tipologia` (
  `idn1_tipologia` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(30) COLLATE utf8_bin NOT NULL,
  `cdtipologia` varchar(1) COLLATE utf8_bin NOT NULL,
  `idalta` int(11) NOT NULL  REFERENCES usuario (idusuario),
  `idmodi` int(11) DEFAULT NULL  REFERENCES usuario (idusuario),
  `fcalta` datetime NOT NULL,
  `fcmodi` datetime DEFAULT NULL,
  PRIMARY KEY (`idn1_tipologia`),
  UNIQUE KEY `cdtipologia` (`cdtipologia`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `c_n1_tipologia`
--

INSERT INTO `c_n1_tipologia` (`idn1_tipologia`, `descripcion`, `cdtipologia`, `idalta`, `idmodi`, `fcalta`, `fcmodi`) VALUES
(1, '1 filo denticulado', 'A', 1, NULL, '2013-01-17 00:00:00', NULL),
(2, '2 filos denticulados', 'B', 1, NULL, '2013-01-17 00:00:00', NULL),
(3, 'Sin filo denticulado', 'C', 1, NULL, '2013-01-17 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_n2_tipologia`
--

DROP TABLE IF EXISTS `c_n2_tipologia`;
CREATE TABLE IF NOT EXISTS `c_n2_tipologia` (
  `idn2_tipologia` int(11) NOT NULL AUTO_INCREMENT,
  `cdtipologia` int(11) NOT NULL,
  `descripcion` varchar(50) COLLATE utf8_bin NOT NULL,
  `idn1_tipologia` int(11) NOT NULL  REFERENCES c_n2_tipologia (idn1_tipologia),
  `idalta` int(11) NOT NULL  REFERENCES usuario (idusuario),
  `idmodi` int(11) DEFAULT NULL  REFERENCES usuario (idusuario),
  `fcalta` datetime NOT NULL,
  `fcmodi` datetime DEFAULT NULL,
  PRIMARY KEY (`idn2_tipologia`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=58 ;

--
-- Volcado de datos para la tabla `c_n2_tipologia`
--

INSERT INTO `c_n2_tipologia` (`idn2_tipologia`, `cdtipologia`, `descripcion`, `idn1_tipologia`, `idalta`, `idmodi`, `fcalta`, `fcmodi`) VALUES
(1, 1, 'Dorso curvo', 1, 1, NULL, '2013-01-17 00:00:00', NULL),
(2, 2, 'Dorso recto', 1, 1, NULL, '2013-01-17 00:00:00', NULL),
(3, 3, 'Dorso triangular', 1, 1, NULL, '2013-01-17 00:00:00', NULL),
(4, 4, 'Dorso trapezoidal', 1, 1, NULL, '2013-01-17 00:00:00', NULL),
(5, 5, 'Dorso en diagonal', 1, 1, NULL, '2013-01-17 00:00:00', NULL),
(6, 6, 'Dorso irregular', 1, 1, NULL, '2013-01-17 00:00:00', NULL),
(7, 7, 'Dorso irreconstruible', 1, 1, NULL, '2013-01-17 00:00:00', NULL),
(8, 1, 'A dos aguas con los dos lados rectos', 2, 1, NULL, '2013-01-17 00:00:00', NULL),
(9, 2, 'A dos aguas con los dos lados curvos', 2, 1, NULL, '2013-01-17 00:00:00', NULL),
(10, 3, 'A dos aguas con un lado recto', 2, 1, NULL, '2013-01-17 00:00:00', NULL),
(11, 4, 'A dos aguas con un lado curvo', 2, 1, NULL, '2013-01-17 00:00:00', NULL),
(12, 5, 'Plano con los dos lados rectos', 2, 1, NULL, '2013-01-17 00:00:00', NULL),
(13, 6, 'Plano con los dos lados curvos', 2, 1, NULL, '2013-01-17 00:00:00', NULL),
(14, 7, 'Plano con un lado recto', 2, 1, NULL, '2013-01-17 00:00:00', NULL),
(15, 8, 'Plano con un lado curvo', 2, 1, NULL, '2013-01-17 00:00:00', NULL),
(16, 1, 'Dorso curvo', 3, 1, NULL, '2013-01-17 00:00:00', NULL),
(17, 2, 'Dorso recto', 3, 1, NULL, '2013-01-17 00:00:00', NULL),
(18, 3, 'Dorso triangular', 3, 1, NULL, '2013-01-17 00:00:00', NULL),
(19, 4, 'Dorso trapezoidal', 3, 1, NULL, '2013-01-17 00:00:00', NULL),
(20, 5, 'Dorso en diagonal', 3, 1, NULL, '2013-01-17 00:00:00', NULL),
(21, 6, 'Dorso irregular', 3, 1, NULL, '2013-01-17 00:00:00', NULL),
(22, 7, 'Dorso irreconstruible', 3, 1, NULL, '2013-01-17 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_soporte`
--

DROP TABLE IF EXISTS `c_soporte`;
CREATE TABLE IF NOT EXISTS `c_soporte` (
  `idsoporte` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(30) COLLATE utf8_bin NOT NULL,
  `idalta` int(11) NOT NULL  REFERENCES usuario (idusuario),
  `idmodi` int(11) DEFAULT NULL  REFERENCES usuario (idusuario),
  `fcalta` datetime NOT NULL,
  `fcbaja` datetime DEFAULT NULL,
  PRIMARY KEY (`idsoporte`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `c_soporte`
--

INSERT INTO `c_soporte` (`idsoporte`, `descripcion`, `idalta`, `idmodi`, `fcalta`, `fcbaja`) VALUES
(1, 'Lasca', 1, NULL, '2013-01-17 00:00:00', NULL),
(2, 'Lámina', 1, NULL, '2013-01-17 00:00:00', NULL),
(3, 'Laminita', 1, NULL, '2013-01-17 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_talon`
--

DROP TABLE IF EXISTS `c_talon`;
CREATE TABLE IF NOT EXISTS `c_talon` (
  `idtalon` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(30) COLLATE utf8_bin NOT NULL,
  `idalta` int(11) NOT NULL  REFERENCES usuario (idusuario),
  `idmodi` int(11) DEFAULT NULL  REFERENCES usuario (idusuario),
  `fcalta` datetime NOT NULL,
  `fcmodi` datetime DEFAULT NULL,
  PRIMARY KEY (`idtalon`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `c_talon`
--

INSERT INTO `c_talon` (`idtalon`, `descripcion`, `idalta`, `idmodi`, `fcalta`, `fcmodi`) VALUES
(1, 'Liso', 1, NULL, '2013-01-17 00:00:00', NULL),
(2, 'Puntiforme', 1, NULL, '2013-01-17 00:00:00', NULL),
(3, 'Diedro', 1, NULL, '2013-01-17 00:00:00', NULL),
(4, 'Facetado', 1, NULL, '2013-01-17 00:00:00', NULL),
(5, 'Cortical', 1, NULL, '2013-01-17 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `foto_denticulacion`
--

DROP TABLE IF EXISTS `foto_denticulacion`;
CREATE TABLE IF NOT EXISTS `foto_denticulacion` (
  `idfoto` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(200) COLLATE utf8_bin NOT NULL,
  `descripcion` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `titulo` varchar(30) COLLATE utf8_bin NOT NULL,
  `idpieza` int(11) NOT NULL  REFERENCES pieza (idpieza),
  `idalta` int(11) NOT NULL  REFERENCES usuario (idusuario),
  `idmodi` int(11) DEFAULT NULL  REFERENCES usuario (idusuario),
  `fcalta` datetime NOT NULL,
  `fcmodi` datetime DEFAULT NULL,
  PRIMARY KEY (`idfoto`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `foto_denticulacion`
--

INSERT INTO `foto_denticulacion` (`idfoto`, `path`, `descripcion`, `titulo`, `idpieza`, `idalta`, `idmodi`, `fcalta`, `fcmodi`) VALUES
(1, 'C:\\fotodenticulacion.jpg', 'Foto de denticulacion', 'Foto', 1, 1, NULL, '2013-01-17 00:00:00', NULL),
(2, 'C:\\fotodenticulacion2.jpg', 'Foto de denticulacion 2', 'Foto 2', 1, 1, NULL, '2013-01-17 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `foto_experimentacion`
--

DROP TABLE IF EXISTS `foto_experimentacion`;
CREATE TABLE IF NOT EXISTS `foto_experimentacion` (
  `idfoto` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(200) COLLATE utf8_bin NOT NULL,
  `descripcion` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `titulo` varchar(30) COLLATE utf8_bin NOT NULL,
  `idpieza` int(11) NOT NULL  REFERENCES pieza (idpieza),
  `idalta` int(11) NOT NULL  REFERENCES usuario (idusuario),
  `idmodi` int(11) DEFAULT NULL  REFERENCES usuario (idusuario),
  `fcalta` datetime NOT NULL,
  `fcmodi` datetime DEFAULT NULL,
  PRIMARY KEY (`idfoto`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `foto_experimentacion`
--

INSERT INTO `foto_experimentacion` (`idfoto`, `path`, `descripcion`, `titulo`, `idpieza`, `idalta`, `idmodi`, `fcalta`, `fcmodi`) VALUES
(1, 'C:\\experimentacion.jpg', 'Experimentacion Foto', 'Experi Foto', 1, 1, NULL, '2013-01-17 00:00:00', NULL),
(2, 'C:\\experimentacion2.jpg', 'Experimentacion Foto2', 'Experi Foto', 1, 1, NULL, '2013-01-17 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `foto_general`
--

DROP TABLE IF EXISTS `foto_general`;
CREATE TABLE IF NOT EXISTS `foto_general` (
  `idfoto` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(200) COLLATE utf8_bin NOT NULL,
  `descripcion` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `titulo` varchar(30) COLLATE utf8_bin NOT NULL,
  `idpieza` int(11) NOT NULL  REFERENCES idpieza (idpieza),
  `idalta` int(11) NOT NULL  REFERENCES usuario (idusuario),
  `idmodi` int(11) DEFAULT NULL  REFERENCES usuario (idusuario),
  `fcalta` datetime NOT NULL,
  `fcmodi` datetime DEFAULT NULL,
  PRIMARY KEY (`idfoto`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `foto_general`
--

INSERT INTO `foto_general` (`idfoto`, `path`, `descripcion`, `titulo`, `idpieza`, `idalta`, `idmodi`, `fcalta`, `fcmodi`) VALUES
(1, 'C:\\foto.jpg', 'Foto general de prueba', 'Foto general', 1, 1, NULL, '2013-01-17 00:00:00', NULL),
(2, 'C:\\foto2.jpg', 'Foto general de prueba', 'Foto general 2', 1, 1, NULL, '2013-01-17 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pieza`
--

DROP TABLE IF EXISTS `pieza`;
CREATE TABLE IF NOT EXISTS `pieza` (
  `idpieza` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `material` varchar(100) COLLATE utf8_bin NOT NULL,
  `idtipologia` int(11) NOT NULL  REFERENCES c_n2_tipologia (`idn2_tipologia`),
  `tecnica_fabr` varchar(200) COLLATE utf8_bin NOT NULL,
  `idsoporte` int(11) NOT NULL  REFERENCES c_soporte (`idsoporte`),
  `itfracturada` int(11) NOT NULL,
  `parte_fracturada` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `idtalon` int(11) NOT NULL  REFERENCES c_talon (`idtalon`),
  `idbulbo` int(11) NOT NULL  REFERENCES c_bulbo (`idbulbo`),
  `itondas_percusion` int(11) NOT NULL,
  `itcortex` int(11) NOT NULL,
  `locali_cortex` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `iddorso` int(11) NOT NULL  REFERENCES c_dorso (`iddorso`),
  `dim_ longitud` float NOT NULL,
  `dim_espesor` float NOT NULL,
  `dim_anchura` float NOT NULL,
  `retoque_local` varchar(20) COLLATE utf8_bin NOT NULL,
  `retoque_modo` varchar(20) COLLATE utf8_bin NOT NULL,
  `retoque_ampli` varchar(20) COLLATE utf8_bin NOT NULL,
  `retoque_deline` varchar(20) COLLATE utf8_bin NOT NULL,
  `retoque_direc` varchar(20) COLLATE utf8_bin NOT NULL,
  `idboceto` int(11) NOT NULL  REFERENCES boceto (`idboceto`),
  `observaciones` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `num_bordes_dent` int(11) NOT NULL,
  `num_muescas` int(11) NOT NULL,
  `idtipo_borde` int(11) NOT NULL  REFERENCES c_borde (`idtipo_borde`),
  `idcaracter_dent` int(11) NOT NULL  REFERENCES c_caracter (`idcaracter_dent`),
  `dimensiones_extension` varchar(200) COLLATE utf8_bin NOT NULL,
  `long_media` float NOT NULL,
  `anchura_media` float NOT NULL,
  `grosor_media` float NOT NULL,
  `dent_observaciones` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `idmateria` int(11) NOT NULL  REFERENCES c_materia (`idmateria`),
  `idaccion` int(11) NOT NULL  REFERENCES c_accion (`idaccion`),
  `tiempo_uso` int(11) NOT NULL,
  `itenmangue` int(11) NOT NULL,
  `idangulo_trabajo` int(11) NOT NULL REFERENCES c_angulo (`idangulo_trabajo`),
  `itsexo` int(11) NOT NULL,
  `edad` int(11) NOT NULL,
  `reavivado` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `transcurso` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `idalta` int(11) NOT NULL  REFERENCES usuario (`idusuario`),
  `idmodi` int(11) DEFAULT NULL  REFERENCES usuario (`idusuario`),
  `fcalta` datetime NOT NULL,
  `fcmodi` datetime DEFAULT NULL,
  PRIMARY KEY (`idpieza`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `pieza`
--

INSERT INTO `pieza` (`idpieza`, `fecha`, `material`, `idtipologia`, `tecnica_fabr`, `idsoporte`, `itfracturada`, `parte_fracturada`, `idtalon`, `idbulbo`, `itondas_percusion`, `itcortex`, `locali_cortex`, `iddorso`, `dim_ longitud`, `dim_espesor`, `dim_anchura`, `retoque_local`, `retoque_modo`, `retoque_ampli`, `retoque_deline`, `retoque_direc`, `idboceto`, `observaciones`, `num_bordes_dent`, `num_muescas`, `idtipo_borde`, `idcaracter_dent`, `dimensiones_extension`, `long_media`, `anchura_media`, `grosor_media`, `dent_observaciones`, `idmateria`, `idaccion`, `tiempo_uso`, `itenmangue`, `idangulo_trabajo`, `itsexo`, `edad`, `reavivado`, `transcurso`, `idalta`, `idmodi`, `fcalta`, `fcmodi`) VALUES
(1, '2013-01-17', 'Material', 1, 'Técnica de fabricación', 1, 1, 'Localización fractura', 1, 1, 0, 1, 'Localización cortex', 1, 22.1, 2, 12, 'Localización', 'Modo', 'Amplitud', 'Delineación', 'Dirección', 1, 'Observaciones', 8, 4, 1, 1, 'Dimensiones y extensión ?????', 5.2, 1, 6, 'Observaciones', 1, 1, 10, 1, 1, 1, 21, 'Reavivado', 'Transcurso', 1, NULL, '2013-01-17 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) COLLATE utf8_bin NOT NULL,
  `pass` varchar(100) COLLATE utf8_bin NOT NULL,
  `nombre` varchar(20) COLLATE utf8_bin NOT NULL,
  `itadministrador` int(11) NOT NULL DEFAULT '0',
  `itexperto` int(11) NOT NULL DEFAULT '0',
  `itcatalogo` int(11) NOT NULL DEFAULT '0',
  `idalta` int(11) NOT NULL  REFERENCES usuario (idusuario),
  `idmodi` int(11) DEFAULT NULL  REFERENCES usuario (`idusuario`),
  `idbaja` int(11) DEFAULT NULL  REFERENCES usuario (`idusuario`),
  `fcalta` datetime NOT NULL,
  `fcmodi` datetime DEFAULT NULL,
  `fcbaja` datetime DEFAULT NULL,
  PRIMARY KEY (`iduser`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`iduser`, `email`, `pass`, `nombre`, `itadministrador`, `itexperto`, `itcatalogo`, `idalta`, `idmodi`, `fcalta`, `fcmodi`) VALUES
(1, 'prueba@prueba.com', '711383a59fda05336fd2ccf70c8059d1523eb41a', 'prueba', 1, 1, 1, 1, NULL, '2013-01-17 00:00:00', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
