-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-01-2015 a las 00:54:03
-- Versión del servidor: 5.6.16
-- Versión de PHP: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `cdcol`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cds`
--

CREATE TABLE IF NOT EXISTS `cds` (
  `titel` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `interpret` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `jahr` int(11) DEFAULT NULL,
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `cds`
--

INSERT INTO `cds` (`titel`, `interpret`, `jahr`, `id`) VALUES
('Beauty', 'Ryuichi Sakamoto', 1990, 1),
('Goodbye Country (Hello Nightclub)', 'Groove Armada', 2001, 4),
('Glee', 'Bran Van 3000', 1997, 5);
--
-- Base de datos: `phpmyadmin`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma_bookmark`
--

CREATE TABLE IF NOT EXISTS `pma_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma_column_info`
--

CREATE TABLE IF NOT EXISTS `pma_column_info` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin' AUTO_INCREMENT=23 ;

--
-- Volcado de datos para la tabla `pma_column_info`
--

INSERT INTO `pma_column_info` (`id`, `db_name`, `table_name`, `column_name`, `comment`, `mimetype`, `transformation`, `transformation_options`) VALUES
(1, 'techreso_gmed', 'ficha_medica', 'fechaSolicitudAptoMedico', '', '', '_', ''),
(2, 'techreso_gmed', 'ficha_medica', 'paso3_55_alergicoAclare', '', '', '_', ''),
(3, 'techreso_gmed', 'ficha_medica', 'paso3_59_suplementoNutricionalAclare', '', '', '_', ''),
(4, 'techreso_gmed', 'ficha_medica', 'paso5_118_rxtoraxObservacion', '', '', '_', ''),
(5, 'techreso_gmed', 'ficha_medica', 'paso4_84_otrosSignosClinicosComentarios', '', '', '_', ''),
(6, 'techreso_gmed', 'ficha_medica', 'paso5_99_otrosEstudios', '', '', '_', ''),
(7, 'techreso_gmed', 'ficha_medica', 'paso4_74_indiceCinturaCadera', '', '', '_', ''),
(8, 'techreso_gmed', 'ficha_medica', 'paso4_71_imc', '', '', '_', ''),
(9, 'techreso_gmed', 'ficha_medica', 'paso4_70_talla', '', '', '_', ''),
(10, 'techreso_gmed', 'ficha_medica', 'paso4_fechaPrimerGrabadoMedico', '', '', '_', ''),
(11, 'techreso_gmed', 'ficha_medica', 'paso4_fechaGrabadoMedico', '', '', '_', ''),
(12, 'test', 'ticket', '222', '', '', '_', ''),
(13, 'test', 'ticket', '22', '', '', '_', ''),
(14, 'test', 'ticket', 'id', '', '', '_', ''),
(15, 'test', 'ticket', 'valor', '', '', '_', ''),
(16, 'techreso_gmed', 'ficha_medica', 'paso3_61_antecedentesClinicosAclare', '', '', '_', ''),
(17, 'techreso_gmed', 'clubes', 'id', '', '', '_', ''),
(18, 'techreso_gmed', 'ficha_medica', 'paso5_116_recomendacionPosicion', '', '', '_', ''),
(19, 'techreso_gmed', 'ficha_medica', 'paso5_117_rx_colCervical', '', '', '_', ''),
(20, 'techreso_gmed', 'ficha_medica', 'paso5_117_rx_colCervicalObservacion', '', '', '_', ''),
(22, 'tragos', 'tragos', 'descripcion', '', '', '_', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma_designer_coords`
--

CREATE TABLE IF NOT EXISTS `pma_designer_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `v` tinyint(4) DEFAULT NULL,
  `h` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for Designer';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma_history`
--

CREATE TABLE IF NOT EXISTS `pma_history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`,`db`,`table`,`timevalue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma_pdf_pages`
--

CREATE TABLE IF NOT EXISTS `pma_pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`page_nr`),
  KEY `db_name` (`db_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma_recent`
--

CREATE TABLE IF NOT EXISTS `pma_recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma_recent`
--

INSERT INTO `pma_recent` (`username`, `tables`) VALUES
('root', '[{"db":"tragos","table":"tragos"},{"db":"tragos","table":"ventas"},{"db":"techreso_gmed","table":"clave"},{"db":"techreso_gmed","table":"ficha_medica"},{"db":"techreso_gmed","table":"persona"},{"db":"techreso_gmed","table":"usuario"},{"db":"techreso_gmed","table":"clubes"},{"db":"test","table":"ticket"},{"db":"phpmyadmin","table":"pma_column_info"},{"db":"phpmyadmin","table":"pma_designer_coords"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma_relation`
--

CREATE TABLE IF NOT EXISTS `pma_relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  KEY `foreign_field` (`foreign_db`,`foreign_table`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma_table_coords`
--

CREATE TABLE IF NOT EXISTS `pma_table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma_table_info`
--

CREATE TABLE IF NOT EXISTS `pma_table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma_table_uiprefs`
--

CREATE TABLE IF NOT EXISTS `pma_table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`,`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Volcado de datos para la tabla `pma_table_uiprefs`
--

INSERT INTO `pma_table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'techreso_gmed', 'ficha_medica', '{"sorted_col":"`ficha_medica`.`id` DESC"}', '2014-11-01 16:53:39'),
('root', 'techreso_gmed', 'persona', '{"sorted_col":"`id` ASC"}', '2014-10-17 02:58:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma_tracking`
--

CREATE TABLE IF NOT EXISTS `pma_tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`db_name`,`table_name`,`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma_userconfig`
--

CREATE TABLE IF NOT EXISTS `pma_userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma_userconfig`
--

INSERT INTO `pma_userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2014-05-31 12:40:15', '{"lang":"es","collation_connection":"utf8mb4_general_ci"}');
--
-- Base de datos: `techreso_gmed`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clave`
--

CREATE TABLE IF NOT EXISTS `clave` (
  `clave` varchar(10) NOT NULL,
  `estado` varchar(10) NOT NULL,
  `tipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clave`
--

INSERT INTO `clave` (`clave`, `estado`, `tipo`) VALUES
('zaq12wsx', 'LIBRE', 'PERSONAL'),
('Qq123456', 'LIBRE', 'PERSONAL'),
('12', 'LIBRE', 'PERSONAL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clubes`
--

CREATE TABLE IF NOT EXISTS `clubes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `clubes`
--

INSERT INTO `clubes` (`id`, `nombre`) VALUES
(1, 'Agregar Nueva Entidad'),
(2, 'Apto Médico'),
(3, 'nueva1'),
(4, 'Life'),
(5, 'Nueva5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ficha_medica`
--

CREATE TABLE IF NOT EXISTS `ficha_medica` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paso2_15_nombreClub` varchar(45) DEFAULT NULL,
  `paso2_15_presentarEn` int(10) unsigned DEFAULT NULL,
  `paso2_17_actividad` varchar(45) NOT NULL,
  `paso2_18_tiempoActividad` varchar(45) NOT NULL,
  `paso2_19_Intensidad` varchar(45) NOT NULL,
  `paso2_23_antecedenteNuncaRealizo` tinyint(1) NOT NULL,
  `paso2_24_algunaEpocaRegularFrecuente` tinyint(1) NOT NULL,
  `paso2_25_antecedenteRelizaRegularFrecuente6meses` tinyint(1) NOT NULL,
  `paso2_26_regular2vecesx12meses` tinyint(1) NOT NULL,
  `paso2_27_regular2vecesx18meses` tinyint(1) NOT NULL,
  `paso2_28_entrenoAl75` tinyint(1) NOT NULL,
  `paso2_29_entrenoAl85` tinyint(1) NOT NULL,
  `paso2_30_entrenoAl100` tinyint(1) NOT NULL,
  `paso3_31_dolorPecho` tinyint(1) NOT NULL,
  `paso3_32_arritmias` tinyint(1) NOT NULL,
  `paso3_32_marcapasos` tinyint(1) NOT NULL,
  `paso3_32_soplosCardiacos` tinyint(1) NOT NULL,
  `paso3_32_infartoMiocardio` tinyint(1) NOT NULL,
  `paso3_33_perdidasConciendia` tinyint(1) NOT NULL,
  `paso3_34_hipertencionArterial` tinyint(1) NOT NULL,
  `paso3_35_colesterol` tinyint(1) NOT NULL,
  `paso3_36_broncoespasmos` tinyint(1) NOT NULL,
  `paso3_36_faltaAire` tinyint(1) NOT NULL,
  `paso3_37_diabetes` tinyint(1) NOT NULL,
  `paso3_38_hipotiroidismo` tinyint(1) NOT NULL,
  `paso3_38_hipertiroidismo` tinyint(1) NOT NULL,
  `paso3_39_convulsiones` tinyint(1) NOT NULL,
  `paso3_40_hernia` tinyint(1) NOT NULL,
  `paso3_41_sometidoCirugia` tinyint(1) NOT NULL,
  `paso3_42_laparoscopica` tinyint(1) NOT NULL,
  `paso3_43_cirugiaGranIncision` tinyint(1) NOT NULL,
  `paso3_44_dolorMuscular` tinyint(1) NOT NULL,
  `paso3_45_desgarroMuscular` tinyint(1) NOT NULL,
  `paso3_46_operacionesMeniscos` tinyint(1) NOT NULL,
  `paso3_47_ligamentoCruzado` tinyint(1) NOT NULL,
  `paso3_48_fracturaBrazo` tinyint(1) NOT NULL,
  `paso3_49_fracturaMenosUnAno` tinyint(1) NOT NULL,
  `paso3_49_fracturaMenosUnAnoCara` tinyint(1) NOT NULL,
  `paso3_49_fracturaMenosUnAnoCraneo` tinyint(1) NOT NULL,
  `paso3_50_traumatismoCraneo` tinyint(1) NOT NULL,
  `paso3_51_enfermedadChagas` tinyint(1) NOT NULL,
  `paso3_52_padeseTuberculosis` tinyint(1) NOT NULL,
  `paso3_53_enfermedadCeliaca` tinyint(1) NOT NULL,
  `paso3_54_alergico` tinyint(1) NOT NULL,
  `paso3_55_alergicoAclare` varchar(200) DEFAULT NULL,
  `paso3_56_fuma` tinyint(1) NOT NULL,
  `paso3_57_fumaUltimos10Anos` tinyint(1) NOT NULL,
  `paso3_58_suplementoNutricional` tinyint(1) NOT NULL,
  `paso3_59_suplementoNutricionalAclare` varchar(200) DEFAULT NULL,
  `paso3_59_anticuagulado` tinyint(1) NOT NULL,
  `paso5_100_patologico` tinyint(1) DEFAULT NULL,
  `paso3_60_antecedentesClinicos` tinyint(1) NOT NULL,
  `paso3_61_antecedentesClinicosAclare` varchar(200) DEFAULT NULL,
  `paso3_62_familiarDirecto` tinyint(1) NOT NULL,
  `paso3_63_comentarioAntecedenteSalud` varchar(200) NOT NULL,
  `paso4_64_historiaClinica` int(11) DEFAULT NULL,
  `paso4_64_ecgNormal` varchar(25) DEFAULT 'PENDIENTE',
  `paso4_66_sistolica` int(11) DEFAULT NULL,
  `paso4_67_diastolica` int(11) DEFAULT NULL,
  `paso4_68_frecuencuaCardiaca` int(11) DEFAULT NULL,
  `paso4_69_peso` int(11) DEFAULT NULL,
  `paso4_70_talla` double DEFAULT NULL,
  `paso4_71_imc` double DEFAULT NULL,
  `paso4_72_cintura` int(11) DEFAULT NULL,
  `paso4_73_cadera` int(11) DEFAULT NULL,
  `paso4_74_indiceCinturaCadera` double DEFAULT NULL,
  `paso4_75_pulsoIrregular` tinyint(1) DEFAULT NULL,
  `paso4_77_murmulloVesicular` tinyint(1) DEFAULT NULL,
  `paso4_78_sibilancias` tinyint(1) DEFAULT NULL,
  `paso4_79_dolorMuscularLimitante` tinyint(1) DEFAULT NULL,
  `paso4_82_herniaEventracion` tinyint(1) DEFAULT NULL,
  `paso4_1_soploCardiaco` tinyint(1) DEFAULT NULL,
  `paso4_78_disnea` tinyint(1) DEFAULT NULL,
  `paso4_80_paresia` tinyint(1) DEFAULT NULL,
  `paso4_83_infeccionPiel` tinyint(1) DEFAULT NULL,
  `paso4_76_otrosSignosClinicos` tinyint(1) DEFAULT NULL,
  `paso4_84_otrosSignosClinicosComentarios` varchar(200) DEFAULT NULL,
  `paso4_85_examenesFisicoFecha` varchar(45) DEFAULT NULL,
  `paso4_86_electrocardiograma` varchar(45) DEFAULT NULL,
  `paso4_86_ritmoSinusal` tinyint(1) DEFAULT NULL,
  `paso4_87_docDraRealizoEvaluacion` varchar(45) DEFAULT NULL,
  `paso4_88_matruculaNacional` varchar(45) DEFAULT NULL,
  `paso4_88_matruculaProvincial` varchar(45) DEFAULT NULL,
  `paso5_89_electrocardiograma` tinyint(1) DEFAULT NULL,
  `paso5_90_laboratorio` tinyint(1) DEFAULT NULL,
  `paso5_91_ergometrica` tinyint(1) DEFAULT NULL,
  `paso5_92_ecocardiograma` tinyint(1) DEFAULT NULL,
  `paso5_93_ecodopler` tinyint(1) DEFAULT NULL,
  `paso5_95_rxtorax` tinyint(1) DEFAULT NULL,
  `paso5_96_rxcolumna` tinyint(1) DEFAULT NULL,
  `paso5_94_ecotres` tinyint(1) DEFAULT NULL,
  `paso5_97_tac` tinyint(1) DEFAULT NULL,
  `paso5_98_rnm` tinyint(1) DEFAULT NULL,
  `paso5_99_otrosEstudios` varchar(200) DEFAULT NULL,
  `paso5_100_ecocardiograma` tinyint(1) DEFAULT NULL,
  `paso5_100_informe` varchar(45) DEFAULT NULL,
  `paso5_101_glucemia` varchar(45) DEFAULT NULL,
  `paso5_102_insulinemia` varchar(45) DEFAULT NULL,
  `paso5_102_indiceHomair` varchar(45) DEFAULT NULL,
  `paso5_103_colesterol` varchar(45) DEFAULT NULL,
  `paso5_104_colesterolHDL` varchar(45) DEFAULT NULL,
  `paso5_105_colesterolLDL` varchar(45) DEFAULT NULL,
  `paso5_106_trigliceridos` varchar(45) DEFAULT NULL,
  `paso5_104_riesgoCoronario` varchar(45) DEFAULT NULL,
  `paso5_112_perfilTiroide` varchar(45) DEFAULT NULL,
  `paso5_107_hemograma` varchar(45) DEFAULT NULL,
  `paso5_108_ionograma` varchar(45) DEFAULT NULL,
  `paso5_109_hepatograma` varchar(45) DEFAULT NULL,
  `paso5_110_funcionRenal` varchar(45) DEFAULT NULL,
  `paso5_111_coagulograma` varchar(45) DEFAULT NULL,
  `paso5_113_uricemia` varchar(45) DEFAULT NULL,
  `paso5_114_orina` varchar(45) DEFAULT NULL,
  `paso5_117_rx_colCervical` tinyint(1) DEFAULT NULL,
  `paso5_117_rx_colCervicalObservacion` varchar(45) DEFAULT NULL,
  `paso5_117_rxtorax` tinyint(1) DEFAULT NULL,
  `paso5_118_rxtoraxObservacion` varchar(200) DEFAULT NULL,
  `paso5_115_indiceTorgPavlov` varchar(45) DEFAULT NULL,
  `paso5_116_recomendacionPosicion` varchar(300) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `id_persona` int(11) DEFAULT NULL,
  `paso4_1_edema` tinyint(1) DEFAULT NULL,
  `paso3_32_anticoagulacion` tinyint(1) DEFAULT NULL,
  `fechaSolicitudAptoMedico` datetime NOT NULL,
  `paso4_fechaGrabadoMedico` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- Volcado de datos para la tabla `ficha_medica`
--

INSERT INTO `ficha_medica` (`id`, `paso2_15_nombreClub`, `paso2_15_presentarEn`, `paso2_17_actividad`, `paso2_18_tiempoActividad`, `paso2_19_Intensidad`, `paso2_23_antecedenteNuncaRealizo`, `paso2_24_algunaEpocaRegularFrecuente`, `paso2_25_antecedenteRelizaRegularFrecuente6meses`, `paso2_26_regular2vecesx12meses`, `paso2_27_regular2vecesx18meses`, `paso2_28_entrenoAl75`, `paso2_29_entrenoAl85`, `paso2_30_entrenoAl100`, `paso3_31_dolorPecho`, `paso3_32_arritmias`, `paso3_32_marcapasos`, `paso3_32_soplosCardiacos`, `paso3_32_infartoMiocardio`, `paso3_33_perdidasConciendia`, `paso3_34_hipertencionArterial`, `paso3_35_colesterol`, `paso3_36_broncoespasmos`, `paso3_36_faltaAire`, `paso3_37_diabetes`, `paso3_38_hipotiroidismo`, `paso3_38_hipertiroidismo`, `paso3_39_convulsiones`, `paso3_40_hernia`, `paso3_41_sometidoCirugia`, `paso3_42_laparoscopica`, `paso3_43_cirugiaGranIncision`, `paso3_44_dolorMuscular`, `paso3_45_desgarroMuscular`, `paso3_46_operacionesMeniscos`, `paso3_47_ligamentoCruzado`, `paso3_48_fracturaBrazo`, `paso3_49_fracturaMenosUnAno`, `paso3_49_fracturaMenosUnAnoCara`, `paso3_49_fracturaMenosUnAnoCraneo`, `paso3_50_traumatismoCraneo`, `paso3_51_enfermedadChagas`, `paso3_52_padeseTuberculosis`, `paso3_53_enfermedadCeliaca`, `paso3_54_alergico`, `paso3_55_alergicoAclare`, `paso3_56_fuma`, `paso3_57_fumaUltimos10Anos`, `paso3_58_suplementoNutricional`, `paso3_59_suplementoNutricionalAclare`, `paso3_59_anticuagulado`, `paso5_100_patologico`, `paso3_60_antecedentesClinicos`, `paso3_61_antecedentesClinicosAclare`, `paso3_62_familiarDirecto`, `paso3_63_comentarioAntecedenteSalud`, `paso4_64_historiaClinica`, `paso4_64_ecgNormal`, `paso4_66_sistolica`, `paso4_67_diastolica`, `paso4_68_frecuencuaCardiaca`, `paso4_69_peso`, `paso4_70_talla`, `paso4_71_imc`, `paso4_72_cintura`, `paso4_73_cadera`, `paso4_74_indiceCinturaCadera`, `paso4_75_pulsoIrregular`, `paso4_77_murmulloVesicular`, `paso4_78_sibilancias`, `paso4_79_dolorMuscularLimitante`, `paso4_82_herniaEventracion`, `paso4_1_soploCardiaco`, `paso4_78_disnea`, `paso4_80_paresia`, `paso4_83_infeccionPiel`, `paso4_76_otrosSignosClinicos`, `paso4_84_otrosSignosClinicosComentarios`, `paso4_85_examenesFisicoFecha`, `paso4_86_electrocardiograma`, `paso4_86_ritmoSinusal`, `paso4_87_docDraRealizoEvaluacion`, `paso4_88_matruculaNacional`, `paso4_88_matruculaProvincial`, `paso5_89_electrocardiograma`, `paso5_90_laboratorio`, `paso5_91_ergometrica`, `paso5_92_ecocardiograma`, `paso5_93_ecodopler`, `paso5_95_rxtorax`, `paso5_96_rxcolumna`, `paso5_94_ecotres`, `paso5_97_tac`, `paso5_98_rnm`, `paso5_99_otrosEstudios`, `paso5_100_ecocardiograma`, `paso5_100_informe`, `paso5_101_glucemia`, `paso5_102_insulinemia`, `paso5_102_indiceHomair`, `paso5_103_colesterol`, `paso5_104_colesterolHDL`, `paso5_105_colesterolLDL`, `paso5_106_trigliceridos`, `paso5_104_riesgoCoronario`, `paso5_112_perfilTiroide`, `paso5_107_hemograma`, `paso5_108_ionograma`, `paso5_109_hepatograma`, `paso5_110_funcionRenal`, `paso5_111_coagulograma`, `paso5_113_uricemia`, `paso5_114_orina`, `paso5_117_rx_colCervical`, `paso5_117_rx_colCervicalObservacion`, `paso5_117_rxtorax`, `paso5_118_rxtoraxObservacion`, `paso5_115_indiceTorgPavlov`, `paso5_116_recomendacionPosicion`, `estado`, `id_persona`, `paso4_1_edema`, `paso3_32_anticoagulacion`, `fechaSolicitudAptoMedico`, `paso4_fechaGrabadoMedico`) VALUES
(28, '', 8, '1', '1', '1', 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 'No tengo ningún comentario gracias por preguntar.', NULL, '', 123, 123, 123123123, 123, 123, 0.008130081300813009, 123, 123, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, '', 0, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, '', 0, 'false', '123', '123.0', '0.0', '123', '123', '123', '', '1.0', '1', '', '', '', '', '', '', '', NULL, NULL, 0, '', '0.0', '', 'PARCIAL_MEDICO', 64, NULL, NULL, '2014-07-19 17:15:46', '2014-07-23'),
(29, '1', 3, '5', '2', '2', 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, '', NULL, '', 0, 0, 0, 12, 12, 0.08333333333333333, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', NULL, '', 0, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, '', 0, 'false', '0', '0.0', '0.0', '', '', '', '', '0.0', '', '', '', '', '', '', '', '', NULL, NULL, 0, '', '0.0', '', 'PARCIAL_MEDICO', 66, NULL, NULL, '2014-07-22 21:28:46', '2014-07-31'),
(30, '1', 3, '5', '2', '2', 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, '', NULL, '', 0, 0, 0, 1231231, 11, 10175.462809917355, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', NULL, '', 0, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, '', 0, 'false', '0', '0.0', '0.0', '', '', '', '', '0.0', '', '', '', '', '', '', '', '', NULL, NULL, 0, '', '0.0', '', 'PARCIAL_MEDICO', 67, NULL, NULL, '2014-07-23 00:26:03', '2014-07-23'),
(31, '', 6, '1', '3', '4', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, '', NULL, '', 0, 0, 0, 123, 12, 0.8541666666666666, 123, 12, 10.25, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, '', NULL, '', 0, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, '', 0, 'false', '0', '0.0', '0.0', '', '', '', '', '0.0', '', '', '', '', '', '', '', '', NULL, NULL, 0, '', '0.0', '', 'PARCIAL_MEDICO', 68, NULL, NULL, '2014-07-23 01:33:03', '2014-07-31'),
(32, '1', 10, '12', '4', '4', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, '', NULL, '21/07/2014', 34, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', NULL, '21/07/2014', 1, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, '', 1, 'true', '0', '0.0', '0.0', '', '', '', '', '0.0', '', '', '', '', '', '', '', '', NULL, NULL, 0, '', '0.0', '', 'PARCIAL_MEDICO', 69, NULL, NULL, '2014-07-31 19:19:47', '2014-07-31'),
(33, '1', 4, '5', '1', '4', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, '', 0, 0, 0, '', 0, '', 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'COMPLETO_PACIENTE', 70, NULL, 0, '2014-09-28 18:59:09', NULL),
(34, '1', 2, '1', '2', '2', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Es alérgico a alguna medicación o algún ', 0, 0, 1, 'Toma alguna Medicación o Suplemento Nutricio', 0, 0, 1, 'Presenta algún otro antecedente clínico', 1, '', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', NULL, '', 0, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, '', 0, 'false', '0', '0.0', '0.0', '', '', '', '', '0.0', '', '', '', '', '', '', '', '', NULL, NULL, 0, '', '0.0', '', 'PARCIAL_MEDICO', 74, NULL, 0, '2014-10-16 19:26:59', '2014-10-16'),
(35, 'prueba4', 3, '3', '2', '2', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL, 0, 0, 0, NULL, 1, '222222222222222222', 777666, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'COMPLETO_PACIENTE', 75, NULL, 0, '2014-10-16 21:45:46', NULL),
(36, 'prueb5', 3, '2', '1', '1', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL, 0, 0, 0, NULL, 0, '', 234, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'COMPLETO_PACIENTE', 76, NULL, 0, '2014-10-16 21:51:53', NULL),
(37, 'Apto Médico', 4, '3', '1', '2', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL, 0, 0, 0, NULL, 0, '', 999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'COMPLETO_PACIENTE', 77, NULL, 0, '2014-10-16 22:10:38', NULL),
(38, '1', 4, '3', '1', '4', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL, 0, 0, 0, NULL, 0, '', 11111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'COMPLETO_PACIENTE', 78, NULL, 0, '2014-10-16 22:12:50', NULL),
(39, '4', 3, '2', '2', '4', 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL, 0, 0, 0, NULL, 0, '', NULL, '', 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', NULL, '', 0, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, '', 0, 'false', '0', '0.0', '0.0', '', '', '', '', '0.0', '', '', '', '', '', '', '', '', NULL, NULL, 0, '', '0.0', '', 'PARCIAL_MEDICO', 81, NULL, 0, '2014-10-16 22:42:03', '2014-10-16'),
(40, '5', 2, '2', '1', '2', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL, 0, 0, 0, NULL, 0, '', NULL, '', 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', NULL, '', 0, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, '', 0, 'false', '0', '0.0', '0.0', '', '', '', '', '0.0', '', '', '', '', '', '', '', '', NULL, NULL, 0, '', '0.0', '', 'PARCIAL_MEDICO', 82, NULL, 0, '2014-10-16 22:59:31', '2014-10-16'),
(41, '2', 2, '3', '2', '4', 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL, 0, 0, 0, NULL, 0, '', NULL, '', 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', NULL, '', 0, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, '', 0, 'false', '0', '0.0', '0.0', '', '', '', '', '0.0', '', '', '', '', '', '', '', '', NULL, NULL, 0, '', '0.0', '', 'PARCIAL_MEDICO', 83, NULL, 1, '2014-10-16 23:32:07', '2014-10-16'),
(42, '2', 2, '3', '2', '2', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL, 0, 0, 0, NULL, 0, '', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', NULL, '', 0, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, '', 0, 'false', '0', '0.0', '0.0', '', '', '', '', '0.0', '', '', '', '', '', '', '', '', NULL, NULL, 0, '', '0.0', '', 'PARCIAL_MEDICO', 84, NULL, 0, '2014-10-17 00:00:59', '2014-10-17'),
(43, '4', 4, '2', '3', '2', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 1, 'fwefwefwefwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwrrrrrrrrrrrrrrrrrrrrrr', 0, 0, 0, NULL, 0, '', NULL, '01/10/2014', 12, 12, 11, 11, 11, 0.09090909090909091, 11, 11, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', NULL, '01/10/2014', 1, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, '', 1, 'true', '0', '0.0', '0.0', '', '', '', '', '0.0', '', '', '', '', '', '', '', '', NULL, NULL, 0, '', '0.0', '', 'PARCIAL_MEDICO', 85, 0, 0, '2014-10-30 18:49:58', '2014-10-30'),
(44, '4', 2, '5', '2', '1', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL, 0, 0, 0, NULL, 0, '', 234234234, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'COMPLETO_PACIENTE', 86, 0, 0, '2014-10-30 20:21:05', NULL),
(45, '3', 2, '5', '1', '2', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL, 0, 0, 0, NULL, 0, '', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', NULL, '', 0, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, '', 0, 'false', '0', '0.0', '0.0', '', '', '', '', '0.0', '', '', '', '', '', '', '', '', 0, NULL, 0, '', '0.0', '', 'PARCIAL_MEDICO', 88, 0, 0, '2014-11-01 13:52:52', '2015-01-05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE IF NOT EXISTS `persona` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `tipoDoc` varchar(1) DEFAULT NULL,
  `numeroDoc` int(10) unsigned NOT NULL,
  `fechaNacimiento` datetime DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `embarazada` varchar(2) DEFAULT NULL,
  `grupoSanguineo` varchar(4) DEFAULT NULL,
  `factorSanguineo` varchar(4) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `telEmergencia` varchar(45) DEFAULT NULL,
  `obraSocial` varchar(45) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `nroAfiliado` varchar(45) DEFAULT NULL,
  `qre` blob,
  `mnNro` varchar(45) DEFAULT NULL,
  `mpNro` varchar(45) DEFAULT NULL,
  `id_club` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=91 ;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id`, `nombre`, `apellido`, `tipoDoc`, `numeroDoc`, `fechaNacimiento`, `sexo`, `embarazada`, `grupoSanguineo`, `factorSanguineo`, `telefono`, `telEmergencia`, `obraSocial`, `celular`, `email`, `nroAfiliado`, `qre`, `mnNro`, `mpNro`, `id_club`) VALUES
(1, 'Gustavo ', 'Matthesius', '1', 23123123, '2014-07-01 00:00:00', 'M', '', '2', '2', '1111111111111111', '1111111111111', '11111111111111111111111', '11111111111111', 'asd@dsa.cm', '11111111111111111111', NULL, '1111', '222', NULL),
(64, 'Gustavo ', 'Matthesius', '1', 23123123, '1982-10-12 00:00:00', 'M', '', '2', '1', '11111111111', 'no tengo', '123456789 123456789', '02396 5896', 'nicobassart@gmail.com', 'No informado', 0x89504e470d0a1a0a0000000d494844520000019000000190080600000080bf36cc00000c084944415478daeddc41b222310c4441dfffd2700156048da5aa7c116c9969b7a5fc2bce4b92a42f3a8e40920410491240244900912401449224804892002249028824092092248048920410491240244900912401449204104992002249028824092092248048920022491240244900912401449204104912402449028824092092248048920022490288244900912401449204104912402449009124092092248048920022490288244900912401449204104912402449009124092092248048920022490288240920922401449204104912402449009124014492a44640ce393e1f3e6def2de55e9937f3061017da850688f766de00e242bbd000f1decc1b4000e242030420e60d200071a12d22809837f3061017da22020840cc1b405c68171a20de9b790308405c6880786fe60d200071a1010210f3061080b8d0161140cc9b7903c83f2fb4e7b5f09ff8fff93ef306102fd8f302c4c2376f0001880b0d108000c47e0188170c108000c47e0188170c1080f83ef306102f182000018879038817ec790162e103c4f302c4850608400062bf00c40b0608400062bf00c40b0608407c9f790348c30b9efe530806d8393782e91e0004202e34409c8b790308405c688b1220e60d200071a1010210f366de00e24203042000316f0071a15d688000c4bc0104202e34409c8b790308405c688b1220e60d200071a101021080983780b8d000010840cc1b400032f17953de6fdb2207084000e242030420000108400002108000042000010840000210f306108000042000316f0001880b0d10800004200071a1010210800004200001084000021080000420000188790308400002108098378000c485deb38852eed5ad7349f9770102108000042000316f00010840000210f3061080b8d0000188790308405c68800004200001880b0d108000042000010840000210f306108000042000316f0001880b0d10800004200071a1010210800004203b00f1bc1634a8cd1b4000e242030420ee9fe70588170c108000c4f302c40bf6bc00018879038817ec79010210f306102fd8f3020420e60d200071a1010210f7cff302c40b06084000e27901e2057b5e8000c4bc01c40bf6bc000188790348cb0b6efb4c5f94be2ffbfbcc1b40000210dfe7fbcc1b4000e2425b80be0f200001880b6d61f93e80000420000188ef03084000021080f83edf67de00021080f83edf67de00021017da02f47d000108405c6880f83e80000420000188ef03084000223db76052fee0b8b5f025800820000188002280000420028804108008201240002201440001880410010420001140041080004400910002100144020840a44e40527e92c04f9e642fcae9609a5f01042000010840041080000420000108405c40800004200001084000021080985f80000420000108400410800004200001084000021080000420007101010210800004200001084000627e01a28645d9f61c6de7dcf69331400208400002108000042000010840000210800820000108400002108b172000010840000210cf01108000042000010840000210800004200001084000228b1720000108400062f102042000010840ee0e70cae2f03e762edee9efcd4fda00042000010840002280000420000188000210800004200001888505108000042000010840000210800004200001084000228000042000018800021080000420000188850510800004200071f10d661e0c2960fac34e00b160000210800820000108402c4ae702108000042016a57311400002108000440001084000021001c482010840cc25400002108000c4a2742e000108400062513a17010420000108400490cd20b52d72e79cbd78db7e0a068400010840000210800004200071ce00010840000210e70c1080000420161b400002108000c46203084000021080000420000108400002108038678000042000b1d89c334000021080586c000108400002861d0bc6c5cfbe2f6d3fcde39c01622100c47d010840006221004400010840000210800004200001084000021080000420000188fb02108000c4420088fb02108000c4420088000210800004200001084000021080000420000108400cba9fec78ee9cfdc1316bdedaee33400002108000042002084000021080000420000108400002108000c4c00104200001084000021080b8cf0001084000021080082000010840000210800004200001084000021003071080000420e9808070278429f76afa3d68831a48000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000e97c5e80cc3a17f3e17901e2c200042000b10f00e2c200042000b10f000210cf0b1080980f8000c480000420e6032000716100021080785e80b83000010840ec0380b83000010840ec038000c480000420e60320003120000188f9f0bc009938e86d177afaa26c03ce39fbc91d8000042000010840000210800004203e0001084000021080000420000108400002108000042000010840000210800004200001084000021080f800042000010840000210800004200001084000d2b0002dfcec739efe7d166af61f80000108400002108000c442f5bc0001084000021080000420000108400002108000042000010840000210800004200001084000021080785e80000420000108400002108000042000010840000210804c7bc11660f64f7b38e7597f700820000108409c33400002108000c439030420000188c5e69c01228000c462030840041080586c000108400002108000c439030420000108409c334000021080586cce19200208402c3680004400c902a4edd3b6a0537e3226e55ef9e916800004200071ff00021080187480000420000108400002108000042000010840000210800004200071af00021080000420ee1f4000021080000420000108400c304000021080000420000108400002106d86b0ed79dbe09f0eb000228000c4fb00084004108000042000114000021080004400b1b00002108048000108400410010420de074000228000042000018800021080000420028885051080e8e5a74c2c841f9c5f1b487e42c57d114000622100c47d01084000622100042000010840000210800004200001084000021080000420160240dc17010420160240dc1780000420160240000210800004200001084000021080000420ee0b401a00f1bcd98b280586b6f968fb430220000108400002108058a89e1720000188fd02108000042000b15f00e205030420000108400002108000042000010840000210800004209e1720000188fd02108000042000010840bc6080000420000188856af16e5e44d3dfafcfce3f9c00021080000420ce1920000108400002108000042000b1d80002108000042000f10108400002108000042000010840000210e70c1080000420000108400002108000c407200001084000e203108000a413100b75e74f71f8c9939d7f3801042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004209d80b441633efc340f4000021080000420000108400062510204200001084000021080000420000188f90008400c0840000210800004200001084000021080000420162540000210800004200001084000021080980f8000c445d8b3102cac9da0b79db39f32010840000210e70c1080000420161b400002108000c462030840000210cf0b108000c47e010840000210e70c10800004200071ce000108400062b101042000010840000210800004209e1720000188fd0290bb173fe52731a60f8885ef9cfd4109108000c46273ce000108400062b101c43903042000b1d82c36e72c80f800c46273ce000108400062b139678000042000b1d89cb3730608400062b101c43903042000b1d82c36e72c80f800c46273ce000188240920922480489200224912402449009124014492041049124024490288240920922480489200224912402449009124014492041049124024490288240920922480489200224902882449009124014492041049124024490091240920922480489200224902882409209224014492041049124024490091240144922480489200224902882409209224804892041049124024490091240144920410499200224902882409209224804892041049124024490091246de80d2fa7ee0acfa892040000000049454e44ae426082, NULL, NULL, NULL),
(65, 'Eduardo', 'Bassart', '2', 27854036, '1982-10-12 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'edubas@gmail.com', NULL, 0x89504e470d0a1a0a0000000d494844520000019000000190080600000080bf36cc00000c434944415478daeddc417202310c4451dfffd2c30560431558ea7ebf2a5b92f1c87a59711e4992bee83802491240244900912401449204104992002249028824092092248048920022491240244900912401449204104912402449028824092092248048920022490288244900912401449204104912402449009124092092248048920022490288240920922401449204104912402449009124014492248048920022490288240920922401449204104912402449009124014492248048920022490288240920922480489204104912402449009124014492041049921a0139e7f879f373eb9ca7bfdfb67371df76de378000042000f13edc378000c440030420ee1b400062a0010210f70d200031d01696730108400062a02d4a8000c47d030840000210efc37d0308400c344000e2be01042006dac20288fb06108018680bcbb900042000d97a913cefac0593b200a7c3eabe0104209e1720000188e70588810608400062bf00c40b06084000e2be01c40b06084000e2be01c40bf6bc000188fb061080785e80000420f60b400c3440000210fb05205e3040000210f70d205e3040000210f70d209d2f38657158f8d90b35e5f77abf00010840000210ef1720000108400062fe000210030d1080b86f00018881f6bc160c40000210030d10ef0320de2f400002108000c4fb05084000021080983f8000c440030420000108400cb4e7b5600002108000a461618166270cee1b400062a0010210f70d200031d000010840000210030d108000c47d03084000021080b86f00018881060840dc378000c440030420ee1b400062a001021080000420061a20000188fb0610800004200071df00021003bde77db4fd7db7e6d47d0308400cb4050d108000042006da82060840dc3780000420fe3e80b86f00018881f6f701c47d0308400c34400002108000c4405bd0000108400002100b1a200071df00021080f8fb00e2be01042006dadf0710f70d2000f1bc603007ced9f302c4405b1ce6c01c982b8078c11687393007ce19205eb0c5610ecc8173068817ec7901620e9c334000e27901620e9cb3e7058881b638cc8139305700f1822d0e73600e9c3340bc608bc31c9803e70c102fd8f302c41c38678000a4efe7d605f1793ecf7d03084000e2f37c9efb06108018680bd0e70104200031d01696cf03084000021080f83c80000420000188cff379ee1b400002109fe7f3dc378000c4405b803e0f20000188810688cf03084000021080f83c8000042002f00ce052febe5b30480011400002100144000108400410010420001140041080004400910002100920020840002280082000018800228000042002880002108008201660c3026c5ba829ef23e51e4d7f0e0104200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021001246b61791f3bff3e80ec840148000188f70110800004201696f70110ef0d200031f8000108400002100b0b20de07400002108000c4fb00084000021080781f00010840006261010420de1b400062f001021080000420161640bc0f80000420e9a57c6587afe270d193ce25e57e00c445020840ccbd7b091080000420000108400002108000042000010840000210e70210800004200001084000e222010420e6debd04084000021080000420000108400002108000042000018873010840b65e105f8560b1dd9cabe98bcd57cbb89700010840000210f71220000108400002108000c4a0020420000108400002108000042000010840000210f71220000108400002108000042000010840000210830a1080000420000108400002108068f340b77d0543db73a4ccdff439f05526000108400002108000042000010840000210800004200001084000021080000420001140000210800004200001084000021080000420000108400002108000042000010840000210800004208faf32a91cacb685e5a2effcc729e51f3b80000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108018fc1d8bbced79fdc3b173f1b69d0b40000210805894ce0520000108402c4a80000420162a4000021080000420000108400002108000042000712e000108400062513a178000042000b1280102108058a89e1720000108400002108000042000990648ca020470f657b2dc9afbb6e70503400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000a1473a206d039832f86de7e71f899df3071a80000420de9b850a10800004207eaf85ea79010210800004209e172000b1882c728000042000b18800021080000420000188f766a17a5e800004207eaf85ea7901021080000420000108402c228b1c2000010840b2be72623aac0001bf7f14010210170e20000108400002108000c43c030420000108400002108000042000010840000210170e200001084000e2c2010420e619200001084000629e01021080000420000108400002108000042000b1002da2eec5e67ecc5ae4beca042000b1289d0b4000021017c4a2742eee877b0e1017042000713f00021017042000712e0001880b02108bd2b900042000018845e95c00021080b82016a573713fdc7380b820000188fb011080b820000188730188b97a7c95c94f0626e52b1340685e6e9ecb744004100bc1ef352f000108402c0480981780000420160240000210800004200001887901084000622100c4bc00042000b110fc5ef302108000c44200887901084000622158e4000108400002108000c4bc000420e9304cffbce90babeda29babec3915405c748000042002888b0e10800004200001084000021080000420000188b902084000e2a25bbce60a2002888b0e108000440071d10102108000042000010840cc15400002108000c45c01448faf32d11f17d1f405e8fdeefcca1873051001c445070840002280b8e800010840041080000420e60a200208400062ae002280b8e80031570011405c748000042002888b0e108000440288f70b1073051001042000315700b9bb00dbbefac1f3ce3abf94dfebfc0002100b152016a0f30308400002100bd0f901042000018805e8fc0002108000c40204084000021080000420ce0f2000b1500162013a3f8000042000b1009d1f40000210805880000108400002100b10200001c80e403cefce8be49f81ecafe248992b8058a800010840000210800004207e000210800004207e000210800004200001084000021080000420000188850a10800004200001084000e207200001084000021080000420000108400002108058a8be8a63f362332f80f30f2a402c04809817800004201602400002108000042000010840000210800004200001084000021080981780000420160240cc0b400002100b0120000108400002108000042000010840000210800004200001c8bfcf1920d9f377eb39dace0f20000108400002108000042000317f00010840000210800004200001084000021080000420000108409c1f4000021080000420000108400062fe00021080000420000108400002108000042000010840b21656ca1cf8fb76ce55ca3f6c0031f800b1a00102108000042016b4bf0f200001084000e2ef03084000021080000420000108400062410304200031f800b1a00102108000042000f1f701042000010840fc7d00010840000210800004200049bf9829171d48166ad2fd0503400002108000c4de008841000840000210800004200001084000021080000420000108403c2f400002108000042000010840ec0d801804800004200001084000021080000420000108400002107a00a4f3a70da494b902e1cebd0110800004200001084000e20720000108400002108000042000010840000210800004200001084000021080000420000108400002103f00010840000210800004200001084000021080000420009124f50410491240244900912401449204104992002249028824092092248048920022491240244900912401449204104912402449028824092092248048920022490288244900912401449204104912402449009124092092248048920022490288240920922401449204104912402449009124014492248048920022490288240920922401449204104912402449009124014492248048920022490288240920922480489204104912402449009124014492041049923ef5024e366c00618de2f20000000049454e44ae426082, NULL, NULL, NULL),
(66, 'Gustavo ', 'Matthesius', '1', 23123123, '2013-11-06 00:00:00', 'M', '', '2', '2', '22222222222', '2222', '22222', '222222222', 'asd@asd.com', '2222', 0x89504e470d0a1a0a0000000d494844520000019000000190080600000080bf36cc00000c1c4944415478daeddc416eec080c4341dfffd2c9057a15206d8aac07fc6d0f6c4baa59e5f99124e90f3d5e81240920922480489200224902882449009124014492041049124024490091240920922480489200224902882409209224014492041049124024490091240144922480489200224902882409209224804892041049124024490091240144920410499200224902882409209224804892002249124024490091240144920410499200224902882409209224804892002249124024490091240144920410491240244902882409209224804892002249028824498b803ccfe3df877fe9dfa3e5fbb6ccbd7dbb390700010840000210fb06108018688000c4be010420061a2000b16f000188810608400002108018688078cf00310700010840000210fb06108018688000c4be010420061a2000b16f00018881060840000210807ceb60ad3d6ffaefad41e3fbba2f00f18101021080d83780f8c000010840ec1b4000e27901021080b82f0031d00e0c4000e2be00c4070608407c5ff705203e3040000210fb06101f18200001887d0308400c3440000210f7052006da81010840dc17805c3ea82d07a6e5fbaebde735e0cc01400062a001e2bdd8378000c4403b9400b16f00018881060840ec9b7d0388810608400062df0062a00d34400062df000210030d10efc5be01042006daa104887d0308400c3440000210fb0610030d108000c4be0104209ef7cef3a63f877d0308400cb4e7050840000210030d1080000420000188830a1080983f8000c441f5bc00317f00018881f6bc000108400062a03d2f40000210800004200001084000021007d5f302c4fc0104200eaae70588f90308400cf49dc3d132576bdfc3be010420061a2000b16fe61e20061a20000108400062a001021080d837800004200001887d0308400c34400062df000210030d1080d8378000c440030420000108400c3440000210fb06108000042000b16f00d9040498598bd9f27d5b9ed7be0104209e172000b16f9e1720061a2000b16f9e17203e3040000210f705203e3040000210fb06101f18200001887d0308403c2f400062df3c2f400c34400062df3c2f407c6080000420ee0b407c6080000420f60d205d1f78ed5f3a487eaffbf7ec1b40000210bfe7f7ec1b400062a01d40bf07108000c4403b587e0f200001084000e2f7000210800004207ecfefd937800004207ecfefd9378000c4403b807e0f20000188810688df03084000021080f83d800004205aa86531d70ebe041001042000114004108000440011400002100144020840248008200091002280000420028800021080082002084000228048000188b409883f3de24fa834cd69fa7e801a20000108400002108000042000010840cc1f4000021080000420000108402c30400002108000042000010840000210800004200001084000021080983f800004200001084000021080586080000420163371311d8e9b60b67cb796f70c1a8000042000f19e0102108000c46103084000021087c8610308400002108000c4770308400002108000c47b0608400002108078cf0001084000e2b001042000018843041080000420000108407c378000a41d1007df9f2879f3fdd90f7f52a4fe767a05000108400022800004200001880002108000042000018805010840ec07400002108000042000114000021080004400010840000210010420000188fd0008402c084000623f0002101d80666d315be06f79cf2def055c000188c30610800004200e9605010840ec0740006241000210fb01108000c4f7f09e01021001042000010840000210870d2000f1dd00e26059108000c47e00042016042000010840000210dfc37b0688830890770f51fa9f2859fbd328debdff91000340000210df0320000108401c2c800004200031800e16400002108000c4c10288ef0110795b000188ef01108000042000f13d0002108000c4c102084000021080385800010840000210070b20be87fdd502202d0bd7722875f37bf81f8eeffc1e402c26400002108000c462020420e614200001084000624e01021080000420e614200001084000228000042016132000010840006231010210730a10800004200031a700010840000210730a108000a47dd15b6000ba43b408a100021080000420000108400002108078cf0001084000021080000420000188c306108008200001084000021080000420000108400002108000c47b06084000021080000420000108401c36800820ef0efeda2281a1fb00aecda9000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000d2f5a73dd6c06cf96e0ea5e70588c102084000021080182c80000420f61c200001084000021080000420000188830a108000c43f8000c4f302c460010420000108400002108000c49ebb9d5e014000021080000420000108401c54cf0b90c44557d67b06d74d90fc492080386c0288790608401c36830010800004200001084000021080000420de334000021080583880000420000188c32680986780000420000108400002108000042000010840000210ef1920000108406e1cb6f4df5b3b806b87cd1e65ed910002108000c41e010420061f2000b147000188c1070840000210800004200001084000021080000420f608200001084000628f000210830f1080d8238000c4e0030420000108400002108000042002c8bb074b5930b4fc7741637f010210010420f61720003180000108400002100308108000c4fe02c40002042000b1bf00318000010840ec2f4000228000c4fe0204200610200001084000620001021080d85f80184080000420f617208903bd76605afebb6bd0b4fc6bd95f800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080a80b608b94f59e5bbedb1a700091c3061080000420924572280162ee01228000042000018800e23d03042000114004108000440e1b4000021080480071280162ee01228000042000018800e23d0304200031805d7ffa21fd7bbc35572defd9bc0820fe390800312f000108401c0480000420000108400002108000042000010840cc0b40000210070120e64500f1cf4100887901084000e22000042000010840000210800004200001084000625e00b20988e7f51c8b076bed4f99a4ff7701e210795e800004200071503d2f40000210800004200001084000021080000420000108401c54cf0b10800004200e91e705084000021080785e80000420000108400002108000042000010840000210805c5d107f7ae4e69f64599bab96ef0b06800004200001084000021080000420000108400002108000042000010840cc154000021080000420000108400002108000042000010840000210800004200001084000021080000420e60a20000108402e0392fe7d1dac9bdfd7ffe8000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000d93d302d80782f7b0104200001084000021080000420f6032000b120000108400002108000042000010840000210803894000108400002108000042000b120000188fd0008402c084000021080000420000108400002108000b3ff4f99782fdd70b91b00018845020840000210800004200001084000021080000420000188e77528bd1780000420007128010210800004201609200031f70001084000021080000420000188f702108000c4f33a94de0b40000290ff59a4b53f89d17228d39fd77bf69e01021080386c00f19e01021080386c0e9bf72c80f8071087cd7b06084000021087cd7b06084000021087cd7bf69e01021080386c00f19e01021080386c0e9bf72c800004200e9bf70c10800004200e9bf70c1080489200224902882449009124014492041049124024490288240920922480489200224902882449009124014492041049124024490091240920922480489200224902882409209224014492041049124024490091240144922480489200224902882409209224804892041049124024490091240144920410499200224902882409209224804892002249124024490091240144920410499200224902882409209224804892002249124024490091240144920410495277bf3eb6eca988e77be70000000049454e44ae426082, NULL, NULL, NULL),
(67, 'Gustavo ', 'Matthesius', '1', 23123123, '2013-11-06 00:00:00', 'M', '', '2', '2', '33333333', '2222', '22222', '222222222', 'asd@asd.com', '2222', 0x89504e470d0a1a0a0000000d494844520000019000000190080600000080bf36cc00000c344944415478daeddcb16dc350104441f6dfb4dc809c1830b8b73b0f704a8be4fd1b457a3e9224fda1c72390240144920410491240244900912409209224804892002249028824092092240144920410491240244900912401449224804892002249028824092092248048920410491240244900912401449204104992002249028824092092248048920022491240244900912401449204104912402449028824092092248048920022491240244900912401449204104912402449028824092092248048920022490288244900912401449204104912402449009124691190e779fc7df97beb39a7bfdfb5e7e2bcdd3c6f0001084000e27d386f000188810608409c378000c440030420ce1b400062a02d2ccf052000018881b628010210e70d2000010840bc0fe70d200031d0000188f306108018680b0b20ce1b400062a02d2ccf05200001c8d583e47eb3164ccb024c87d579030840dc2f40000210f70b10030d108000c47e0188170c108000c4790388170c108000c479038817ec7e010210e70d200071bf00010840ec1780186880000420f60b40bc6080000420ce1b40bc6080000420ce1b40365f70cbe2b0f0bb176acbfff57e01021080000420de2f400002108000c4fc010420061a200071de00021003ed7e2d1880000420061a20de0740bc5f80000420000188f70b108000042000317f00018881060840000210801868f76bc10004200001c8c2c202cd4d189c378000c440030420ce1b400062a001021080000420061a20000188f30610800004200071de000210030d1080386f000188810608409c378000c440030420000108400c3440000210e70d200001084000e2bc01042006facefb58fb7c6fcda9f306108018680b1a20000108400cb4050d1080386f000108407c3e80386f00018881f6f900e2bc010420061a20000108400062a02d6880000420000188050d1080386f000108407c3e80386f00018881f6f900e2bc010420ee170ce6c07376bf0031d01687393007e60a205eb0c5610ecc81e70c102fd8e23007e6c073068817ec7e01620e3c678000c4fd02c41c78ceee172006dae23007e6c05c01c40bb638cc8139f09c01e2055b1ce6c01c78ce00f182dd2f40cc81e70c1080ecfdbd75405ccff59c3780000420aee77ace1b400062a02d40d70308400062a02d2cd703084000021080b81e400002108000c4f55ccf7903084000e27aaee7bc01042006da02743d80000420061a20ae07108000042000713d80000420027006702d9fef2d18248008200001880022800004200288000210800820020840002280480001880410010420001140041080004400114000021001440001084004100b706101ae2dd496f7d1728ed2ef43000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000441f3f657262b05a067f0d90b5f94b7f6fce254000021080786f000108400002108000042000010840000210800004201611400002108000042000f1de00021080000420de1b4000021080000420000108407c3e80000420000108402c228000042000f99f17bc763d00fbe2d4f4ded67e820620000108400002108000042016254000021080000420ce0740cc154000621101042000010840000210ef0d200001084000021080000420000108400002108000c422723e0002108000c422020840000290f603b736a87eba256bb1f969195f38000210cf19200071de00021080000420000188c566a0010210800004200071bf00010840041080000420000108403c6780000420000108400002108000c46203084000021080000420ee17200001882c98be056d0eb27e02247d0efc9409400002108000042000010840000210800044000108400002100104200001084004108000042000010840000210800004200001084000021080082000010840002280000420000108406e2c36d7036613702d9fcf5c01042000010840000210800004200001084000e27a0001084000e2c059f80001084000220b1f20e619200001084000021080000420000108400002108000c4f50002108000c481b3f00102108000c401b9f153082d0764edf979ce9e0b400002108058949e0b400002108058940001084000021080000420000108400002108000042000f1fc00e2b900042000018845e9b9000420000188450910800004200001084000021080000420000108402e03b2f6131be9f7bbf6f9c0dffdc509200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420690b700da416b8fcdf9b5f24d6be5002042000f1de0002108000042000f17f2d54f70b108000c4ffb550dd2f4000021080000420000108402c7280000420000188f7061080000420000188ff6ba1ba5f8000042000b150dd2f4000021080000420006987c660753f3f8080d04f9e0004209e1f400002108058809e1f40000210805880000108400002108000042000010840000210cf0f200001084000e2f901042000018805e8f9010420000188050810800004200001084000021080006401108bc84f9438e8790b357d91fba2081080000420000108402c2c80000420000188850510cf052000010840fc5fcfc5f90008401c10ffd7fb00084000021080000420000108402c2c800004200001888565517a2e0001084000e2ff7a2ece0740ccd5c74f999c1898b503d20261cb4205882f1c00b1500102108000042000010840000210800004200001084000021080000420000108400002108000042000b15001021080000420000108400002108000042000010840000210800004200001c8260c2d9fcff5ba414f072e1d56010420ae07108000042000b1f0010210800004200001084000021080000420000188000210d7030840041080b81e400002108000c4c207084000021080584400010840000210800004200011407419608bc817ac265801228000c4fb0588b9028800021080982b8008200e3a40cc154064c138e80001084064c100c4fb05084004108078bf00315700114000021073051001c44107084000220bc6410708400072f580f8e987eee7d7b2b05afeafe707108058a800b1003d3f8000042000b1003d3f8000042000b1003d3f8000042000b10001021080000420000188e707108058a800b1003d3f8000042000b1003d3f8000042000b100010210800004201620400002901b80b8df9b07c99781ee9fe268992b8058a80001084000021080000420fe00021080000420fe000210800004200001084000021080000420000188850a10800004200001084000e20f200001084000021080000420000108400002108058a87e8ae3f262332f80f3051520160240cc0b400002100b01200001084000021080000420000108400002108000042000010840cc0b400002100b0120e60520000188850010800004200001084000021080000420000108400002108000e4fa735ebb8f35a83d3f80000420eec3020408400002108000042000010840000210800004200eb0c50b108000042000b178dd07400002108000c47d58800001084000021080000420000108400002108000c401b678010210800004209717d61a0c3e5fd6395a9b6780187c80000420ce074000021080f87c000108400002108000042000018803071080000420000188050d10f30c10830f108000c4f90008400002109f0f2000010840000210800004200071e00002108000a4fd6002f3e64f4458a8dde7170c000108400002107b0320060120000108400002108000042000010840000210800004200071bf000108400002108000042000b1370062100002108000042000b1d8000210800004200001084000420f806cfea52fca9605930e660b84e9ef1720000108400002108000c41f4000021080000420000108400002108000042000010840000210800004200001084000021080000420fe00021080000420000108400002108000042000010840002249da092092248048920022490288240920922401449204104912402449009124014492248048920022490288240920922480489204104912402449009124014492041049920022490288240920922480489200224912402449009124014492041049124024490288240920922480489200224902882449009124014492041049124024490288240920922480489200224902882449009124014492041049124024490091240920922480489200224902882409209224fdd60f70a318fc40f456580000000049454e44ae426082, NULL, NULL, NULL),
(68, 'prueb3', 'prueb3', '1', 11223344, '1982-12-04 00:00:00', 'M', '', '2', '2', '88888888', '888888', '8888', '8888888888', 'asd@dsa.cm', '88888', 0x89504e470d0a1a0a0000000d494844520000019000000190080600000080bf36cc00000c1d4944415478daeddcc171c330100441e49fb494805e2a89b8dbeda9f2973640e0da2f9e9724495f746c81240920922480489200224902882449009124014492041049124024490091240920922480489200224902882409209224014492041049124024490091240144922480489200224902882409209224804892041049124024490091240144920410499200224902882409209224804892002249124024490091240144920410499200224902882409209224804892002249124024490091240144920410491240244902882409209224804892002249028824498d809c73fc7cf8f9f5fe4d7fdef47d9e7eeeddb79de700200001084000021080000420000188fb0610800004200071df000210071a200001084000e24003c4e0008873001080000420000108400002108000c47d03084000021080b86f000188030d108000042000796a60596ff6e04819e4ee9bf502c40b0608400062bd00f18201021080b86f00f182ad17200071df000210071a200071dfac17205e304000e2be592f40bc6080000420ee1b40bc6080000420ee1b40bc60eb050840dc378000c481060840dc37eb05c8932fd8a7477cfa61c3f96b7b5eca7d03880b0c108018f8ee1b405c60071a200071fe000210071a2000010840000210eb75fe3c0f200001880b0c1080b86f00718101021003df7d0308401c688000c4f90308401c688000042000010840acd7f9f33c800004200069586fca2077fe00021007da7a0102108000c481b65e8000042000010840000210e70f20003150ad1720ce1f4000e2405b2f40dc378000c481b65e800004200071a0ad1720000108400002108000c4f90308400c54eb0588f307108038d07b0611809d3f8000042000010840000210800004200071df00021080000420000108401c688000c4fe01042000018801e8fc0104200001084000e2be01042000010840dc378000c4810608400002108038d0000188fd030840ee0362bd6030d8dc378000c481060840dc37eb0588170c108000c47d0388170c108000c47d0388176cbd000188fb06102fd87a010210f70d200071a001021080582f40bc6080000420ee1b40bc6080000420ee1b40bc60eb050840dc3780b4bce0b69fe983d7f3b29fe7be01042000f13ccf73df00021007da00f43c800004200eb481e57900010840000210cf03084000021080789ee7b96f000108403ccff3dc378000c48136003d0f20000188030d10cf03084000021080781e4000021069cf009c3e28a7bf0f15de695b208000042002880002108008200208400022804800018800220104201240041080004400114000021001440001084004100920001140a207968130eb79299f78f1c98e6ca8010c1080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400092def48b94b25e2065bfb7947d06084000021080d867800004200031d80002108018a80031d8000210800004200001084000021080000420f619200001084000629f0102108000c4600308400062a05a2f40000210800004200001084000f2f22993ca4f584c1f6c0611d093000608400c4afb021080000420000108400002108000042000010840000210800004200001084000625f0002108000c4a0b42f00010840000210800004200001084000021080000420000108400002108000e4eef3526070fe0ce8a47f9c00e20203042000010840000210800004200001084000e2fc010420000108400002108000042000010840000210171820000108400002108000042000010840000210e70f2000010840000210800004205b2fb04f8aec1c6c6d9ff600fa4e5801021080000420001140000210800004200001084000021080000420000108400002108000042000010840000210800004200208400002108000042000010840000210800004200001084000920e8d039dbd7f29ef2d057420010420000108400002108038800001084000021080d83f8000c4fd05880168ffbc378000042006204000021080000420000108400002108000042000010840000210fb071080b8bf003100ed9ff706108000c4413010ee8334fdbdf9644cf63e03042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800064dae0b50e17336950a69cd3947300108000042000010840000210800004200001084000021080981b00010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080a40fdee99f9230b07cb2230956800004200001084000021080000420000108400002108000042000010840000210800004200e3e400002108000042000010840000210800004200001084000021080781e4000021080000420000108407640e34067af23e5932c6d50a7dc7380000420000108400002108000042000010840000210800004200001884104108000042000010840000210800004200001084000021080000420000108400002108000042000018841041080000420e9036bfaa71fda06a57dc906040c0001084000021080000420000108400002108000042000018800021080d81780000420000108400002108000042000010840000210800004200001084000021080004400010840ec0b400002901d17c9819e75d1db7e2f5867fd430910010420000188000210800004200001084000e2f702042000010840000210800004200031c801021080082000010840041080000420000108400062ff000210800004200001084000021083edee45322877c29ff27b7d72072000010840bc378008200001084000021080000420000108400002108308200001084000621001c47b03084000021080786f7e8c44800004200001084000021080000420000108400c22800004200011585d38ffc074ef8bfb01100104200001084004108000c4fe014400b1cf0001084004100104200091c1061080d8178000440001084000021001042000b17f001140ecb301081080082002084000e262fa5443034806ea339f46b9b55eff3801042000f1f701042000010840fc7d0001084000021080000420000108400c6880000420008185010d1080000420000188bf0f200001084000e2ef0308400002108000042000010840006240030420000148e741b8b55e0003c4fd050840ac17200001880002108000042002880308108000042000710001021080b8bf003150ad172000717f010210eb05084000228000042000018800e200020420000108401c4080000420ee2f407a076adba7240cb69de7aa0dfee9fb0c108000042000010840000210800004200001084000e25c0104200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000240b90b675b4ed8b7b346b5f00021080000420000108400002108000042000010840ec8b7b04108038f806a57d01084000021083122000010840000210800004200001084000021080000420003128ed8b7b04108038f806a57d0108400002904e40daa099becfde1b400062a05a2f40000210800004200611400002108000c4200288f706108018a8d60b10ef0d20003150ad1720de1b400062a05a2f40000210800004200611400002108000c4200288f706108018a8d60b10ef0d20006978c12917f3d6e0b52fd99f46313700021017092000010840000210800004200001084000021080000420d66b50da1780000420003128010210800004202e124000e2dc0304200001084000021080000420f60520000188f51a94f605200001c87f2e924f4ef84444d2bed867800004200031d800021080000420061b409c3f800004200001887d06084000e20203c43e0304207e0062b0d967800004200031d800021080000420061b409c3f800004200001887d06084000e20203c43e03a41310491240244900912401449204104992002249028824092092248048920022491240244900912401449204104992002249028824092092248048920022491240244900912401449204104912402449028824092092248048920022490288244900912401449204104912402449009124092092248048920022490288240920922401449204104912402449009124014492248048920022490288240920922401449204104912402449009124014492248048920022497abe37ee31bda3c84913b50000000049454e44ae426082, NULL, NULL, NULL),
(69, 'nic', 'nico', '1', 123456789, '1982-07-22 00:00:00', 'M', '', '4', '2', '3333333333333333333', '3333333333333333', '333333333', '3333333333333333', 'ansdioa@nskal.com', '3333333333', 0x89504e470d0a1a0a0000000d494844520000019000000190080600000080bf36cc00000c2d4944415478daeddcb17103410c04c1cb3f693201c9a10360b7a74a2ea5bfc7a165f17d2449faa1e708244900912401449204104912402449028824092092248048920022490288244900912401449204104912402449009124092092248048920022490288240920922401449204104912402449009124014492248048920022490288240920922480489204104912402449009124014492041049920022490288240920922480489204104912402449009124014492041049920022490288240920922480489200224912402449009124014492041049124024496a04e4bde7e78f9fa973defe7edbcec57dbb79df0002108000c4fb70df000210030d1080b86f00018881060840dc378000c4405b58ce052000018881b628010210f70d2000010840bc0ff70d200031d0000188fb06108018680b0b20ee1b400062a02d2ce702108000e4ea45f2bcbb164cca02dc0eabfb061080785e800004209e1720061a20000188fd02102f1820000188fb06102f1820000188fb06102fd8f3020420ee1b4000e27901021080d82f0031d000010840ec178078c100010840dc378078c100010840dc378074bee094c561e1672fd494dfebfd02042000010840bc5f80000420000188f90308400c344000e2be01042006daf35a30000108400c3440bc0f8078bf00010840000210ef1720000108400062fe000210030d10800004200031d09ed7820108400002908685059a9b30b86f00018881060840dc378000c440030420000108400c3440000210f70d200001084000e2be010420061a200071df000210030d1080b86f0001888106084000021080186880000420ee1b400002108000c47d0308400cf49df7d1f6f74dcda9fb06108018680b1a20000108400cb4050d1080b86f00010840fc7d0071df00021003edef0388fb06108018688000042000018881b6a00102108000042016344000e2be01042000f1f701c47d0308400cb4bf0f20ee1b4000e279c1600e9cb3e7058881b638cc8139305700f1822d0e73600e9c3340bc608bc31c9803e70c102fd8f302c41c38678000c4f302c41c3867cf0b10036d7198037360ae00e2055b1ce6c01c38678078c11687393007ce19205eb0e705883970ce000148dfcfd405f1793ecf7d03084000e2f37c9efb06108018680bd0e70104200031d01696cf03084000021080f83c80000420000188cff379ee1b400002109fe7f3dc378000c4405b803e0f20000188810688cf03084000021080f83c8000042002f00ee052febe2918248008200001880022800004200288000210800820020840002280480001880410010420001140041080004400114000021001440001084004100bb06101b62dd494f791728fb63f87000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001880092b5f0db404ff9fb00721306200104201611400002108000042000f1de000210800004200001084000021080000420000108402c22800004200001884504108000042000010840bc3780000420000108400002108000042000010840d20169bbc016a0afb0687c6ffeb103084000021080000420000188450910800004200001084000021080000420000108400002108000c47b03084000021080000420000108402c4a800004200001084000021080000420000108400002902c68fc5e8badf11f04ff100104201639400002108000c4220708400002108000c4ef05084000021080f8bd000108400002108b1c20000108400062910304200001084000021080000420000188df0b108000042000f17b0102108000e4c6456fbb70bea204208dff60f92a1380000420000108400062c1000420000108402c188078bf0001084000021080000420000108400002108000042000010840000210805830000108400002100b0620de2f4000021080000420000108403ebeca6474b11954e7d7f83e52fe3e7305100bd0f901042000018805e8fc9c1f40000210170e20ce0f200001880b67013a3fef0320009105e8fccc33400002100bd0f9010420000188050810e707108000c485b3009d1f4000021017ce02747ede074000e282dcf88a085f25b16b2158bcce0520000108402c4ae70210800004200001084000e222010420e61e20000108400002108000042000018845e95c0002108000c4a20408400002108000042000010840000210730f10800004200001887301c8651880099aa44509245f510210800004200001084000e25c0002108000c4a2742e000108400002108000042000b13700621000021080000420000108400002108000c4b900042000018845e95c000210800004200001084000626f00c405be7391dabe92256561b57db587af320108400002100bd5f3020420000108403c2f400002108000c4de00084000021080000420000108400062a1020420000108402c54cf0b108000042000f1bc00010840000210800004200001084000029074400c6a363400b939cf297f1f400002108000042000010840000210800004200001084000021080082000010840002280000420000108400002108000042000010840000210800004200001084000021001042000010840d21774dbe74dfd586cee47d23f44e60a200001084000021080000420000108400002108000042000010840000210f70320007141000210f7032000010840000210800004200001084000021080000420000108400002108000c4fd0008405ca4acc59b0257dbbc6c07d357f314ee4e4700108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840a261f07b2dca0be79cf20f91af0a0108402c3680000420000188df0b108000440001084000021001c42207887306084000021080000420000108402c36800004200208400002108008200001084000228058e40071ce00010840d400b0af46f10fd685bfcf5c01440071d10162ae002280b8e8000108400410171d200001880410ef1720e60a2002888b0e1073051001c4450788b9028800e2a20304200091050310800004201240bc5f80982b80cc0e4cca573ff86a945dcf9bf27b9d1f40000210805880ce0f20000108402c40e707108000042016a0f30308400062a17a5e800004200001084000e2fc0002108000c402747e000108400062013a3f8000042000b1000102108000c442f5bc000108406e00e2796f5e24ff0c647f1547ca5c01c4420508400002108000042000f103108000042000f10310800004200001084000021080000420000108402c5480000420000108400002103f0001084000021080000420000108400002108000c442f5551c97179b79019c7f5001622100c4bc00042000b110000210800004200001084000021080000420000108400002108000c4bc00042000b11000625e0002108058080001084000021080000420000108400002108000042000010840ae9f73db73b441edfc00021080780e0b102000010840000210800004200001084000021080b8c0162f400002108000c4e2f51c00010840000210cf610102042000010840000210800004200001084000021017d8e2050840000210805c5e586d30f8fb76dda3b6790688c107084000e27e000420000188bf0f2000010840000210800004200071e10002108000042000b1a001629e0162f001021080b81f0001084000e2ef03084000021080000420000108405c38800004200049bf98c0bcf91511166af6fd0503400002108000c4de008841000840000210800004200001084000021080000420000108403c2f400002108000042000010840ec0d80180480000420000108402c36800004200001084000021080d003209d3fdbcf2f65c16c073305c2edef1720000108400002108000c40f40000210800004200001084000021080000420000108400002108000042000010840000210800004207e00021080000420000108400002108000042000010840002249ea092092248048920022490288240920922401449204104912402449009124014492248048920022490288240920922480489204104912402449009124014492041049920022490288240920922480489200224912402449009124014492041049124024490288240920922480489200224902882449009124014492041049124024490288240920922480489200224902882449009124014492041049124024490091240920922480489200224902882409209224fdd717eab36c00606bcbfe0000000049454e44ae426082, NULL, NULL, NULL),
(70, '111', '111', '1', 11, '2014-09-09 00:00:00', 'M', '', '1', '1', '2222222222222222', '222222222222222222222222', '', '22222222222', '11@sss.com', '', 0x89504e470d0a1a0a0000000d494844520000019000000190080600000080bf36cc00000c254944415478daeddc4152c5301043c1dcffd270015614fc68a47e556c0376c66e5679be2449fa458f2d90240144920410491240244900912409209224804892002249028824092092240144920410491240244900912401449224804892002249028824092092248048920410491240244900912401449204104992002249028824092092248048920022491240244900912401449204104912402449028824092092248048920022491240244900912401449204104912402449028824092092248048920022490288244900912401449204104912402449009124691190e779fcfcf0f3d7fb97febcf47d4e9f7be7ede61c00042000010840000210800004200071de00021080000420ce1b400062a001021080000420061a202e0e809803800004200001084000021080000420ce1b400002108000c4790308400c34400002108000e4531796f5765f1c2d17b9f366bd00f18201021080582f40bc6080000420ce1b40bc60eb0508409c378000c440030420ce9bf502c40b0608409c37eb0588170c108000c4790388170c108000c4790388176cbd000188f306108018688000c479b35e807cf205fbf4884f3f5c98bfb5e7b59c378038c00001880bdf790388036ca0010210f307108018688000042000010840acd7fc791e400002100718200071de00e2000304202e7ce70d200031d0000188f90308400c344000021080000420d66bfe3c0f200001084016d6db72919b3f8000c4405b2f40000210801868eb0508400002108000042000317f0001880bd57a0162fe000210036dbd0071de000210036dbd000108400062a0ad1720000108400002108000c4fc0104202e54eb0588f90308400cf49d8b08c0e60f200001084000021080000420000108409c378000042000010840000210030d1080d83f800004200071019a3f80000420000108409c3780000420000188f306108018688000042000018881060840ec1f4000f23e20d60b06179bf306108018688000c479b35e8078c1000108409c378078c1000108409c378078c1d60b1080386f00f182ad17200071de000210030d108000c47a01e2050304200071de00e2050304200071de00e2055b2f4000e2bc0164e505affda45fbc9ed7fd3ce70d20000188e7799ef3061080186817a0e70104200031d02e2ccf03084000021080781e400002108000c4f33ccf7903084000e2799ee7bc01042006da05e879000108400c34403c0f200001084000e27900010840a43b1760fa4599fe3e3478a66d810002108008200208400022800820000188002201042002880410804800114000021001440001084004100104200011402480004400a9beb05c0859cf6bf9c48b4f7674430d6080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002907640d207dffbf00fc29b73b5b6cf00010840000210fb0c108000c4fb70b1010420000108405c6c000108400002108000042000010840000210fb0c108000042000b1cf0001084000e26203084000021080000420000108400002108000042000b9f189039ff670112dcea97fec0002108000c49c02042000010840cc294000021080000420000108401c4c800004200001888309108098538000042000018839050840000210809853800004200e26400002108000c4c104084000021080dc38980e7af745fed6fcb9a0bb3f2d0310800004200031570001084000021080000420000108400002108000042000010840000210800004200001084000021080982b8000042000010840000210800004200001084000021080000420006907a4e58249bf10c00af4a6730e10800004200071ce05108000042000010840000210800004200001880b1520000108400c1640000210e71c200001084000e29c0b20000108400002108000042000010840000210172a4000021080d46f56c945d902e1daa742cc29900002108000c49c3ae7000188830910800004207230010210800004200e264000624e010210830510809853800004200001883905084000e260020420000108161c4c800004200001888309108098538000e4f260a50f74cb3ad6005efb644cfafe010420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000a4fdc26f1968177ed63f08203407f5ff54030420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000c4a72e5cf8a380a4ff8305108000042000b1cf00010840000210800004200001888b0d2000010840000210cf0308400002108000042000010840000210fb0c10800004200001084000021080b8d80002108000042000f13c8000042037406a1954ebbdf9091a73d0fd0f2540000210800004200001880b152000010840e442b55e80000420007190ac1720e60020007190ac1720e61e2000010840000210800004202e548000042000910bd57a0102108000c441b25e8098038000e4eae0b71c90b50bd0fedd04040c0001084000e21c010420061f2000018873091080000420f60f200208405c800001084000625001021080000420000108409c238000c4e003042000712e0102108000c4fe01440001880b1020000108405c44970f9cdfeb1f8e0beb154000e24205084000021080b850fd5e80000420000188df0b108000042000f17b0102108008207e2f400002108000c4850a10800004200071a1fabd00010840000210bf17200001084000e2f702042002c8ff0c56fa85d5f2bcf48b720db8961f01042000010840000210800004200001084000021080000420000108400002108000c42600042000f10310800004200001084000021080000420000108400002108000042000010840000210014489179b7d76a136010710b9d81c2480d817730f10010420000108400410fb0c10fb071001c43ebb00010210b9d80002108000442e36070920f6c5dc03440001084000021001c43e030420001140ecb30b102000713037077aedc25a9be7b7f6af651d00010840000210800004207e0002108000042000010840000210800004200001084000021080000420000108400002108000042000f1031080000420000108400002108000042000010840000290ab80582ff87dda03e802084000021080082006102000010840006200ad172000717e01e242b55e8000c43c0b2000010840002280184080b8500122801840800004200001880bd57a010210e717202e54eb050840ccb30092f16985b54f30b8d8b2f665edd33c2df30710071d2000010840000210800004200001084000021080000420000108400002108000042000010840000210071d20000108400002108000042000010840000210800004200001084000021080000420ef02b2b68eb57d718eb2f605200001084000021080000420000108400002108000c4be3847000188c17751da1780000420007151020420000108400002108000042000010840000210800004202e4afbe21c01042006df45695f0002108000042097dfef5beb58fba4c81aac00010840000210ef0d2000010840000210800004200001084000021080000420000108400002108000042000010840000210ef0d200001084000021080000420000188390508400002108000042000b90a0830b3f66fed9322e037f700010840000210800004200001887d0108400062bd2e4afb0210800004202e4a8000042000010840000210730f10800004200001084000021080d81780000420007151da1780000420007151020420000148e241f2c90917f49b7f9f7df68912800004202e36800004200001084000629f01021080000420f61920000108405c6cf61920000108405c6c00010840000210171b400002108000042000b1cf00010840000210fb0c10800004202e36fb0c108048920022490288244900912401449204104912402449009124092092248048920022490288240920922401449204104912402449009124014492248048920022490288240920922480489204104912402449009124014492041049920022490288240920922480489200224912402449009124014492041049920022490288240920922480489200224912402449009124014492041049124024490288240920922480489200224902882449009124014492041049d2cdbe011de367dd74846d300000000049454e44ae426082, NULL, NULL, NULL);
INSERT INTO `persona` (`id`, `nombre`, `apellido`, `tipoDoc`, `numeroDoc`, `fechaNacimiento`, `sexo`, `embarazada`, `grupoSanguineo`, `factorSanguineo`, `telefono`, `telEmergencia`, `obraSocial`, `celular`, `email`, `nroAfiliado`, `qre`, `mnNro`, `mpNro`, `id_club`) VALUES
(71, '321', '321', '1', 321, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '312', NULL, 0x89504e470d0a1a0a0000000d494844520000019000000190080600000080bf36cc00000c324944415478daeddcb1b123310c4441e69f349580e4c82130d3af4aaeeeef12449fa5732549faa3e31548920022490288240920922480489204104912402449009124014492041049920022490288240920922480489200224912402449009124014492041049124024490288240920922480489200224902882449009124014492041049124024490091240920922480489200224902882409209224014492041049124024490091240920922480489200224902882409209224014492041049124024490091240144922480489200224902882409209224804892d408c839c7e7cbe7d57b9e7ebe6defc57ddb79df0002108000c479b86f00018881060840dc378000c440030420ee1b400062a02d2cef052000018881b628010210f70d20000108409c87fb06108018688000c47d0308400cb4850510f70d200031d01696f70210800064eb45f2bcb3164cca029c0eabfb061080785e800004209e1720061a20000188fd0210070c108000c47d03880306084000e2be01c4017b5e8000c47d0308403c2f40000210fb0520061a20000188fd0210070c108000c47d03880306084000e2be01a4f380531687859fbd5053fe5de70b10800004200071be00010840000210f307108018688000c47d0308400cb4e7b56000021080186880380f80385f80000420000188f305084000021080983f8000c440030420000108400cb4e7b5600002108000a461618166270cee1b400062a0010210f70d200031d000010840000210030d108000c47d03084000021080b86f00018881060840dc378000c440030420ee1b400062a001021080000420061a20000188fb0610800004200071df00021003bde73cdafebe5773eabe01042006da82060840000210036d41030420ee1b400002107f1f40dc378000c440fbfb00e2be010420061a20000108400062a02d6880000420000188050d1080b86f00010840fc7d0071df00021003edef0388fb061080785e309803efd9f302c4405b1ce6c01c982b8038608bc31c9803ef19200ed8e23007e6c07b068803f6bc003107de334000e27901620ebc67cf0b10036d7198037360ae00e2802d0e73600ebc678038608bc31c9803ef19200ed8f302c41c78cf000148dfe7d505f17dbecf7d03084000e2fb7c9ffb06108018680bd0f70104200031d01696ef03084000021080f83e80000420000188eff37dee1b40000210dfe7fbdc378000c4405b80be0f20000188810688ef03084000021080f83e8000042002f00ce052febe5730480011400002100144000108400410010420001140041080004400910002100920020840002280082000018800228000042002880002108008201660c3026c5ba829e791728fa63f8700021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000188ae9f325931586d3fb1910248dbfc4d3f3720010420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000e4ede27d75315d2417ddb9e5df3780000420162540dc378000c44003c4fd0008405c10036d1101042000010840000210e7061080000420000188fb06108000c4a20488fb061080186880b81f0001880b62a02d22800004200001084000e2dc000290ad17ce4f76586c498bcd4fcbf80f0740000210800004200001084000021080000420000108400002108000042000010840041080000420000108400002108000042000010840000210800004200001084000021080000420000148e7c2f77dced77f4cfc8763cbf302042000010840000210800004200001084000e2fb0002108000042000010840000210800004200001084000021080000420000108400002108000042000f17dce172000010840000210800004200071819d87f3c83b8f94bfcf5c01c4c2721ece032000018885e53c9c07400002100bcb79380f80000420169685e53c9c074000e2825858cec37900042000b1b09c87f3000840006261390fe701108000c4c292f30008400062615958cec379000420e983dfb628db3ed3e7c5e2051240000210800004200001084000021080000420000108400002108000c4072000010840000210800004200001084000021080000420000108400002108000c407200001084000e20310800004209b1774db05693bdf943900929f2801084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000188c1ca03d34f8a98abc6ff780204200001084000021080b8e8000108400002108000042016aae70508400002100bd5f3020420000188b9020840000210800004200001888b0e1080000420000108400062a17a5e8000042000b1503d2f40d2a169bb206d3fc561feb221b4370002108000c43d0208400c3e400002108000c4e003c4220708400002108000c4fc01042000010840000210800004200001887b041080187c80000420000188c10708400002108000042000317f0001c8f55326513f1191f293221674f6429dbec8fd94094000021080000420000108400002108000c4e20088390008400002108000c4fd0008405c10800004200001084000021080000420000108400002108000c4e20088390008400002108000c4fd0088b9ba7ecac4225ffc5edae6653a986d800820000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000241d86e917a4edef4b59942973ea3f12020840000210800820000108400002108000042000010840000210800004200001084000021080004400010840000210010420000108400002108000042000010840000210800004200091f62c688b68e7f9b6c10a10010420ce1720e60a200208400062ae002280b8e8003157009105e3a20304200091050310e70b108008200071be00315700114000021073051001c44507084000220bc64507084000b2f582f8e987ecf797b2b052fe5def0f2000b1500162017a7f000108400062017a7f000108400062017a7f0001084000620102042000010840000210ef0f2000b1500162017a7f000108400062017a7f00010840006201020420000108402c40800004203b00f1bcd9dfe7b37301a6fc940e402c5480000420000108400002101f800004200001880f4000021080000420000108400002108000042000b15001021080000420000108407c00021080000420000108400002108000042000018885daf9531c2917d3bc00ce7f5001622100c4bc00042000b110000210800004200001084000021080000420000108400002108000c4bc00042000b11000625e0002108058080001084000021080000420000108400002108000042000010840b6bfe7b6e74859d06d6002042000010840000210800004200001084000e2025bbc000108400002108bd773000420000108403c07400002108000042000010840000210800004200001880b6cf1020420000108402c5ecf0110800004207ecaa4610efc7d3b7fd2c6fd0008405c100bda3d723f0062f05d100b1a20ee074000021080f8fb00021080000420fe3e80000420007141000210f703200071412c68f7c8fd0088c177412c6880b81f0001084000e2ef03084000021080f8fb00021080741e700a98166af64fdf4cfffbc000108000042000b13700621000021080000420000108400002108000042000010840000210cf0b1080000420000108400002107b0320060120000108400002108b0d200001084000021080000420f40048e767faa24c5930d3c14c8170faf90204200001084000021080f80004200001084000021080000420000108400002108000042000010840000210800004200001084000e203108000042000010840000210800004200001084000021049524f0091240144920410491240244900912409209224804892002249028824092092240144920410491240244900912401449224804892002249028824092092248048920410491240244900912401449204104992002249028824092092248048920022491240244900912401449204104912402449028824092092248048920022491240244900912401449204104912402449028824092092248048920022490288244900912401449204104912402449009124e9571f11cdc1c61bdce35a0000000049454e44ae426082, NULL, NULL, NULL),
(72, '444', '444', '1', 444, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '44@33.com', NULL, 0x89504e470d0a1a0a0000000d494844520000019000000190080600000080bf36cc00000c244944415478daeddcb17103410c04c1cb3f693101caa10360b7a74a2ec5bfc7a165e9fd4992f443cf1148920022490288240920922480489204104912402449009124014492041049920022490288240920922480489200224912402449009124014492041049124024490288240920922480489200224902882449009124014492041049124024490091240920922480489200224902882409209224014492041049124024490091240920922480489200224902882409209224014492041049124024490091240144922480489200224902882409209224804892d408c87bcfcf979fa973defe7edbcec57dbb79df0002108000c4fb70df000210030d1080b86f00018881060840dc378000c4405b58ce052000018881b628010210f70d2000010840bc0ff70d200031d0000188fb06108018680b0b20ee1b400062a02d2ce702108000e4ea45f2bcbb164cca02dc0eabfb061080785e800004209e1720061a20000188fd02102f1820000188fb06102f1820000188fb06102fd8f3020420ee1b4000e27901021080d82f0031d000010840ec178078c100010840dc378078c100010840dc378074bee094c561e1672fd494dfebfd02042000010840bc5f80000420000188f90308400c344000e2be01042006daf35a30000108400c3440bc0f8078bf00010840000210ef1720000108400062fe000210030d10800004200031d09ed7820108400002908685059a9b30b86f00018881060840dc378000c440030420000108400c3440000210f70d200001084000e2be010420061a200071df000210030d1080b86f0001888106084000021080186880000420ee1b400002108000c47d0308400cf49df7d1f6fda6e6d47d0308400cb4050d108000042006da82060840dc3780000420be1f40dc378000c440fb7e0071df000210030d10800004200031d01634400002108000c482060840dc3780000420be1f40dc378000c440fb7e0071df000210cf0b0673e09c3d2f400cb4c5610ecc81b90288176c71980373e09c01e2055b1ce6c01c38678078c19e1720e6c0390304209e1720e6c0397b5e8018688bc31c98037305102fd8e23007e6c03903c40bb638cc813970ce00f1823d2f40cc8173060840fa7ea62e88cff379ee1b400002109fe7f3dc378000c4405b803e0f2000018881b6b07c1e400002108000c4e7010420000108407c9ecf73df00021080f83c9fe7be01042006da02f479000108400c34407c1e400002108000c4e7010420001180770097f2fda660900022800004200288000210800820020840002280082000018800220104201240041080004400114000021001440001084004100104200011402cc08605d8b65053de47ca3ddafe1c0208400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042002c88d7f2591f2af2eda0049596c29ef0d4800010840000210800004200001084000021080000420000108400002108000042000010840000210ef0d20000108400002108000042000010840000210800004200001084000021080000420000148e7226ffbd723168cef77e15f070104203e0f201634400002100b1f20000108400062e1030420be1f400002108000042000010840006251020420000188cf0388050d108000c4c20708400002108058f8000188ef0710800004200001084000a2ce8bd4b6d8a69eb7ed5fadf8d7320011400002108000440001084000021080000420000188f90308400002108000042002084000021080082000010840002280000420000108400002108000c4fc010420000108400002901b17330506b002c41f1c779f172000010840000210800004200001084000021080000420ee11400062f001021080000420000108400002108000042000010840000210800004200001084000021080b847000188c107084000021080a45f4c8bd77bf387d8ddef67ae000210800004200001884504108000042000b18800e2bd01042000010840bc37f7082000010840bc3780000420000108400002108000c42202084000021080584400f1de00021080000420de9b7b041080b82037062b65a1b62d048b1748000108400002108000042000010840000210800004200001084000021080000420ee11400062f001021080000420000108400002108000042000010840000210800004200001084000021080b84700b188f22e48ca39a7cc0190fc8b12800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080340c0290fc4b91c67f2de37901021080000420ee1b400062a001021080000420061a2000b1503d2f400002108058a89e17200001084000e2be01042000010840dc378000c440030420000108400c34400062a17a5e8000042000317f9e17209d2019548bbcf10f9db6fb0b10010420000108400002108bc8ef05084000021080f8bd0001084000021080000420000108402c72800004200208400002108000042000f17b0102108000042000f1de00021080000420000108402cfc1b9fd776915c74f3e70f3b800004200001084000021017182000718f00e282000420ee074000e282000420000108400002108000c4fc010420000108400002108000c405060840dc2380b820061f20ee074000e28200042000317f000148de456abb702920b581de36cf0208400002108000042000f1bc0001084000021080000420000108400002108000042000b1600002108000042000010840000210800004200001084000021080000420000108400002108000042060b8b160fceb965defb70df4b63f24041080000420001140000210800044000108400002108000042000010840000210800004200001880002108000042002084000021080082000010840000210800004200001084000a2d2e12803d8fbbdf92f63cc154064c1b8e80001084064c100c4fb05084004108078bf00315700114000021073051001c44507084000220bc64507084000220b0620de2f40002201c4fb0588b9028800021080982b80dc58446dffcaa4edf73a3fe707108000c405b6009d1f40000210805880ce0f20000108402c40e707108000042016a0f3737e00010840fc5ee7e7fc00021080b8c016a0f30308400002100bd0f901042000018805e8fc0002108000c402747ece0f200d8078de5d00fb03e1e61f1c29f7172000010840fc000420000108400002108000042000010840000210800004200001084000e27901e207200001084000e207200001084000021080000420000108400002108000042000010840000290ce85bafd226d5f1c00065ce31fa800b11000625e00021080580800312f000108400002108000042000010840000210800004200001887901084000622100c4bc00042000b1100002108000042000010840000210800004200001084000021080ccbe8f364052e62fe50f13ffca04200001084000021080000420000188f30308400002108000042000010840cc1f4000021080000420000108400002108000042000010840000210e70710800004201620400002108000c4fc0104200001c8e5cf6b83d53d32cf0031f800010840dc0f8000042000f1fd0002108000042000010840000210170e20000108400002100b1a20e61920061f2000f1fd00021080000420be1f40000210800004200001084000e2c259d0000108401a2ea68b6ea13a677f7000042000b1d89c3340000210cf6bb139678000042000b1d89cb373b6370062102c3680386780000420169bc5e69c0102108000c46273ce000108403cafc5e69c0102108000c46273ceced9de008841b0d800e29c010290ad03d8f6b3fdfc5216ccd4b9b441b8fdfd0204200001084000021080f80108400002108000042000010840000210800004200001084000021080000420000108400002108000c40f400002108000042000010840000210800004200001084024493d0144920410491240244900912401449224804892002249028824092092248048920410491240244900912401449204104992002249028824092092248048920022491240244900912401449204104912402449028824092092248048920022490288244900912401449204104912402449009124092092248048920022490288244900912401449204104912402449009124092092248048920022490288240920922401449204104912402449009124014492a4fffa00f3ae179b3a30538c0000000049454e44ae426082, NULL, NULL, NULL),
(73, '777', '666', '', 666, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '111@22.com', NULL, 0x89504e470d0a1a0a0000000d494844520000019000000190080600000080bf36cc00000c024944415478daeddc418e22010c04c1feffa7990f7062247055454a7345db8dedd813cf4b92a40f7abc02491240244900912401449204104992002249028824092092248048920022491240244900912401449204104912402449028824092092248048920022490288244900912401449204104912402449009124092092248048920022490288240920922401449204104912402449009124014492248048920022490288240920922401449204104912402449009124014492248048920022490288240920922480489204104912402449009124014492041049921601799ec7df9bbfebdf47cbf7db32f7f62d730e00021080000420f60d200031d00001887d0308400c34400062df000210030d10800004200031d000f19e01620e00021080000420f60d200031d00001887d0308400c34400062df000210030d108000042000f9d6c15a7bdeeb9fb7068defd77d01882f18200001887d03882f18200001887d0308403c2f40000210f7052006da81010840dc1780f882010210dfaffb02105f3040000210fb06105f3040000210fb061080186880000420ee0b400cb403031080b82f00493ea82d07a6e5fb5d7bcf6bc099038000c44003c47bb16f0001888176280162df000210030d1080d837fb0610030d108000c4be01c4401b688000c4be010420061a20de8b7d0308400cb4430910fb061080186880000420f60d20061a200001887d0308403c6fcef35e7f0efb0610801868cf0b1080000420061a200001084000021007152000317f00018883ea790162fe00021003ed790102108000c4407b5e8000042000010840000210800004200eaae70588f90308401c54cf0b10f307108018e89cc3d132576bdf877d0308400c34400062dfcc3d400c34400002108000c44003042000b16f00010840000210fb06108018688000c4be010420061a2000b16f0001888106084000021080186880000420f60d20000108400062df00b20908306f2d66cbf7dbf2bcf60d2000f1bc0001887df3bc0031d00001887df3bc00f10503042000715f00e20b0608400062df00e20b0608400062df000210cf0b1080d837cf0b10030d1080d837cf0b105f3040000210f70520be6080000420f60d205d5ff0dadf75907c5ef7e7d937800004203ecfe7d9378000c4403b803e0f200001888176b07c1e400002108000c4e7010420000108407c9ecfb36f000108407c9ecfb36f0001888176007d1e40000210030d109f07108000042000f17900010840b450cb62ae1d7c0920020840002280082000018800228000042002880410804800114000220144000108400410010420001140041080004400910002106913103f3de227549ae6f4fa7e801a20000108400002108000042000010840cc1f4000021080000420000108402c30400002108000042000010840000210800004200001084000021080983f8000042000010840000210805860800004204a3e1c6b8bbef6532bdeb3fd05084000e2b0010420001140000210800044000108400002108000042000f19e0102108000042000b1bf000108401c36800004200208400002108008200001084000021080000420de33400092bc98d717b865e11cc06eb8041080000420f603200001084000021080000420000108400022800004200001880002108000042000010840000210fb011080000420000108400002108000042000114000021080004400e902c97374c36f9ebbe74a0031800071100002108038bc00010840ec2f402c9ce7000840cc3d402c1c4000629e010210010420e61920e605200610200e0240000210871720000188fd058885f31c000108400062e1000210f30c1080187c9f77f1a73d5a9ed74fadf88f044000021080000420000188cf03883f8008200e3e4000021080000420000108400002108000c4f302042000010840000210800004203e0f20fe00228038f8000108400002108000042000010840265eaa9f00d10fbf8f35585bfec3061001440001084004100b02108000042000010840000210800004200001084000021080082000018800228000042002084000021080000420000108400002108000042000010840c090f1ef5bfb6994b5e700a1ff10010420000108400002108000042000010840000210800004200011400002108008200001084000021080000420000108400002108000042000010840000210800004200208400002106d02b2f6d30fbe0f00fb0f4cff7f140102108000042000018883051080000420000108400002108000042000f17d0004200001084000021080000420000108400002108000042000010840000210800004200001084000e2fb000840000210839f01e1da02affd248b3d1740000210800004200001084000e2a07a5e8000042000f19e0102108305108000042000010840000210800820000108401c548000042000018883ea7901021080000420000188c10208400002108080c181e9fb7e5bde730b48d7ff8004108000042000010840006250bd6780000420000188f70c10800004200e1b400002108000c46103084000021080000420000108400002108078cf0001084000021080000420000188c306108000c45e0224e327222c52f7615bdba3969ffa114000021080000420000108400002108000042000010840000210800004200001084000021080000420020840000210800004200001084000021080000420000108400002108000042000010840323eafe5f05e3f1ca0eede0fd00004200001887d030840000210800004200031d00001084000021080380800010840000210800004200001084000021080d8378000042000010840000210030d10809817800004200e02400002107a00a4eb2718d616ce4f6cdc9aabb5ff708006200001084000021080383000010840000210070620be5f80d8378000042000010840000210030d1080000420000108400002108000c48101084000021080383000f1fd020420000108400002108000449b59a4ccf7dcf2bdad010710396c0001084000225924871220e61e20020840000210800820de3340000210014400010840e4b00104200001880410871220e61e20020840000210800820de334000021003d8f5d30f6b70f90995cce770f00102108000042000010840000210800004200001084000021080000420000108400410580004200001084000021080000420000108400002108000042000010840000210800004200001081500f2db03e879bb6158fba990b57901124000e22000c4bc00042000711000625e0002100be22000042000018883ea79010210800004209e172000312f000108401c04809817800004200e0240cc0b400062413c2f400002108038a89e17200001084000d2f5d30a7e12c35c25cc33180002108000042000010840000210800004200001084000021080000420000108400002108b0e108000042000010840000210800004200001084000021080000420e60a200001084000021080000420000148df016c39582d87b20538800004200001084000021080000420000108401c2c071a200001084000e2790102108000042000f1ef0308400002108000042000010840000210800004200071b03c2f400002108000c4f302042000010840ba007160320fd1da7eaccd3d402c08400002108000042000010840000210800004200e25400410800004200001084000021080d80f8000c48200042000010840000210800004200001084000021080000420000108400002108018840c405a7e2ae4fa5c81cb7f9c0002108b091080000420000108400002108000042000018839050840000210800004200031080001084000021080584c80000420000108400002108000c44105084000624e0102108000042000713700f2cd455afb490c87c84f6778cf02883f80386cde334000021080386c00010840000210870d20de33400002108000c47b06084000021087cd7b164060011087cd7b060840000210870d200001084000e2b001c47b0608400002108078cf00912409209224804892002249028824092092240144920410491240244900912409209224804892002249028824092092240144920410491240244900912401449224804892002249028824092092248048920410491240244900912401449204104992002249028824092092248048920022491240244900912401449204104912402449028824092092248048920022490288572049028824092092248048920022491240244900912401449204104912402449028824e9fffd01658d43df7691fbcb0000000049454e44ae426082, NULL, NULL, NULL),
(74, 'Bassart', 'Nicolas', '1', 29826204, '2008-10-01 00:00:00', 'M', '', '1', '1', '11111111111111111', '1111111111111111111', '', '11111111111111111', 'asd@sdaf.com', '', 0x89504e470d0a1a0a0000000d494844520000019000000190080600000080bf36cc00000c2d4944415478daeddc4192eb380c4441deffd2f605bcb2c32250952fa2b79ea10422ff4ae72549d2171d8f40920410491240244900912401449224804892002249028824092092248048920410491240244900912401449204104992002249028824092092248048920022491240244900912401449204104912402449028824092092248048920022490288244900912401449204104912402449009124092092248048920022490288244900912401449204104912402449009124092092248048920022490288240920922401449204104912402449009124014492a44640ce39fe3efc4d7f1f29ef3765eeddb79d730010800004200071df000210030d1080b86f00018881060840dc378000c440030420000108400c34403c6780980380000420000188fb06108018688000c47d0308400c344000e2be010420061a200001084000f2d4c26a3beff4df6b83c6fbb55f00e2050304200071df00e2050304200071df000210e70508400062bf00c4405b30000188fd02102f182000f17eed178078c100010840dc378078c100010840dc378000c44003042000b15f0062a02d188000c47e01c8e6859ab26052de6fdb736e03ce1c000420061a209e8bfb06108018688b1220ee1b400062a0010210f7cd7d03888106084000e2be01c4401b688000c47d0308400c34403c17f70d200031d0162540dc378000c4400304200071df0062a001021080b86f000188f3ee39eff473b86f00018881765e800004200031d0000108400002108058a8000188f90308402c54e70588f90308400cb4f302042000018881765e80000420000108400002108000042016aaf302c4fc01042016aaf302c4fc010420067acfe24899abb6f7e1be010420061a200071dfcc3d400c34400002108000c4400304200071df00021080000420ee1b400062a0010210f70d200031d0000188fb0610801868800004200001888106084000e2be01042000010840dc3780740202cc591733e5fda69cd77d0308409c17200071df9c1720061a200071df9c17205e3040000210fb05205e3040000210f70d205e3040000210f70d2000715e8000c47d735e8018688000c47d735e8078c100010840ec178078c100010840dc378064bde0b6bfe920f9bdecdf73df00021080f83dbfe7be01042006da02f47b000108400cb485e5f7000210800004207e0f200001084000e2f7fc9efb06108000c4eff93df70d200031d016a0df0308400062a001e2f7000210800004207e0f200001881a4ab9986d0b5f028800021080082002084000228008200001880022010420124004108048001140000210014400010840041001042000114024800044ea04c4a7477c4225694ea7df0f500304200001084000021080000420000188f9030840000210800004200001880b0c108000042000010840000210800004200001084000021080000420e60f2000010840000210800004202e30400002904e6852febb29cf3905cc94859ff29cdd5f8000042000f19c0102108078ce161b400002108000c462030840000210030810800004200001084000e239bbbf0001084000e239030420000188c5061080000420061020000108400062000102108000e4e55326510398b200a72f5ef0fba48d00021080000420020840000210800820000108400002108000042000010840000210800004200011400002108000440001084000021001042000010840000210800004200001084000b20786146852165bca026c83015c00010840000210800004201620400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420f40048e72727da16f9ad73a4fca5cc3d18000210800004200001084000021080000420162a4000021080000420ce0b107f001140000210800004200001084000021080000420000108400002100bd57901021080000420ce0b107f00a102403a1702a8cde9864fb7b4fd8303202e26405c248000c4dc0304200031a700010840000210730a10800004200001084000021080000420000108405c4c80b848000188b907084000624e01021080000420e6142000010840000210800004202e3a68263ee7b6850f420b1f202e884504108000042000010840bc3780000420000188f70610010420000108400002108058440001084000e282584400f1de00021080000420de1b400022800004200011400002108000042000d9bcf06f0dbe8b3eeb39a72c407300108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210d0f874c69e45e47d5894600008400002100bd57901021080000420e60a20000108400002108000042000010840041080000420162a4000021080000420ce0b108000042000315700010840000210800004200001084000021080fc6f605206b0ed1c6db0b6fd43a7ed933b0001084000021080000420000108400002108058bc0001084000021080380740000210800004200001084000021080000420000108400002108000042000b1780102108000042000710e8000042000d90a48ca056e9b83369052fe2166ee0102108000c43d0208400c3e40000210f71220000108400002100104200001084000021083ea22010420e61e2000010840dc238000c4e003042000712f010210800004200011400002108000042000b93bf8290bdfa73d763ebf94f731fdbca001084000021080000420000188e707108000042000f1fc0002108000c402f4fc0002108000c402040840000210800004200001084000021080787e000108400062017a7e000108400062017a7e0001083d0092b53852fe52169679d9392f3e8d02100bc14200887901084000622100c4bc00042000b11000625e00021080580800312f000108402c04809817f30210805808160240cc0b400002100b0120e60520000188850010f302108000c442008879010840d201d13300bb703b9f73dba76acc33400410cf19200001882c36800004200091c5e6c2010420009100625102c43c034400f19c0102108008209e3340000210596c0001084000228bcd85030840002201c4a20488790648d600b67d2a64fa05f60915f3228000c44200887901084000622100042000010840000210800004200001084000021080000420160240cc8b0002100b0120e605200001888500108000042000010840000210800004200001887901480320ceeb1c8d0babed5326d3ffbb00b1889c1720000108402c54e705084000021080000420000108400002108000042000018885eabc00010840006211392f400002108000c4790102108000042000010840000210800004200001084000b2f582f8f4c8ce73b4cdd5f47906034000021080000420000108400002108000042000010840000210800004200001084000e2a203042000010840000210800004200001084000021080000420000188b902084000021080000420000108400092b700531656dba76fda3e5503108000c4ff1f400002108000c4ff1f4000021080000420000108400002100b1a20000108402c54e70508400002108000c4ff1f40000210800004200001084000021080000420000108402c688000042000b150ef9ed782d9b988daee47dbdc03c40501084000021080000420000108400002108000c4a204880002108000042000010840000210f703200071410002108000042000010840000210800004200001084000021080000420000108400cc20e40523e15327daec0e51f4e0001888b091080000420000108400002108000042000018839050840000210800004200031080001084000021080b8980001084000021080000420000188850a108000c49c0204200001084000626f00e4c98bd4f6490c8bc8a7333c6701c41f402c36cf1920000108402c3680000420000188c50610cf19200001084000e239030420000188c5e6390b20b00088c5e639030420000188c506108000042000b1d800e239030420000108403c67804892041049124024490091240144920410499200224902882409209224804892041049124024490091240144920410499200224902882409209224804892002249124024490091240144920410491240244902882409209224804892002249028824490091240144920410491240244900912409209224804892002249028824092092240144920410491240244900912401c4239024014492041049124024490091240920922480489200224902882409209224014492f47b6f674ceca9408e27570000000049454e44ae426082, NULL, NULL, NULL),
(75, 'prb', 'prb', '1', 777666, '2014-10-01 00:00:00', 'F', '0', '2', '2', '111111111111', '1111111111111111111', '', '11111111111111', 'asd@asd.com', '', 0x89504e470d0a1a0a0000000d494844520000019000000190080600000080bf36cc00000c0f4944415478daeddc416ec3300c4451ddffd2c905b20a608b9c791fe8d6ad2352afab9c8f24497f747c0492248048920022490288240920922401449204104912402449009124014492248048920022490288240920922480489204104912402449009124014492041049920022490288240920922480489200224912402449009124014492041049124024490288240920922480489200224902882449009124014492041049124024490288240920922480489200224902882449009124014492041049124024490091240920922480489200224902882409209224350272cef1f3e3e7d6e79c322fd37feff4f7b06f00018881060840ec1b400062a0010210fb061080186880000420000188810608400062df00021080000420f60d200031d00001887d0308400c34400062df000210030d10800004200031d000010840ec1b403a2f8494f7bdb54829bf370506fbe67d0162a0010210fbe67d01e28001021080b85f00e28001021080d83780386080f8bd00b16f0071c0de172000b16fde1720061a2000b16fde17200e1820000188fb05200e18200001887d0388030688df0b10fb061080b8609efb9cdbbe920520f60d200031d00001887d0308400c34400062df000210030d10800004200031d000010840ec1b400002108000c4be010420061a2000b16f00018881060840ec1b400062a001021080000420061a200001887d030840f206da62ce9a8336e000021080000420e6c5be0104202e048b0910fb0610801868800004200001888106084000624e0102108000042000010840000210f362df00021080584c80d8378000c440030420000108400c3440000210730a1080b878f700d736f7f60d200031d000010840000210030d108000c4be01042000010840ec1b400062a0010210fb06108b64a00162eeed1b400062a001021080000420061a200001887d03880b0b200001887d0308400c34400062df000210efbbe779d32f22ff20d83780386080000420f60d200031d00001887df3be0071c000010840dc2f0071c000010840dc2f0071c000010840ec1b401c3040000210fbe67d0162a0010210fbe67d01e28001021080b85f00e28001021080d837806c3ee0b61f2079decde7d937800004209ee779f60d200031d02e40cf0308400062a05d589e07108000042000f13c80000420000188e7799e7d03084000e2799e67df00021003ed02f43c80000420061a209e07108000042000f13c80000420d29e7f10527eaf04100920001140248000440091000210092002084024800820000188002201042002880410800820124000220144000188049037173de5ab477cd5caace739b7ece701042000711101c4b901042016d3450410e7061080b850bd2f409c1b400002101716409c1b4000021080b888000210800004202e228038378000c462ba8800e2dc00021017aaf705887303084000e2c2028873030840407377312d9cf93357f3ce0d20161820160920e6cadc03042000317fe60a2000018845377fe60a2000018845377fe60a2000b1c0161d20000108402c30402c1240cc95b90708400062fecc15400002108b6efecc15400002108b6efecc15400062d1b31678fac5e1a2b447fe310188c1070840000210800004200001084000228000042000114000021080d82301c4e0030420f608200031f800f139030420000108400002108000442e36800004200208400002107b248068fba2a7c000b877deb7ed1f31800820000108400022010420000108400410800004200011400002108000440001084000021001042000010840248000042000018800021080000420020840000210804cbb002db08b63c3f9a640d8f6d53700010840000210800820000108400002108000042000010840000210800004200001084000021080000420000108400002100104200001084000021080000420000108400002108000042000490724e5ab3dc0ea734e3adf94e7010420000108400002108000c479f89c010210800004203e67800004200071b101c4f90204200071b10104209e0710800004200001084000021080f89c0102108000c405e373060840000210171b409c2f4000b21510d0645fa8407ae7f36bbb0f00021017960b10200011405c5800711e000108405c5800711e00010840000210e70110800004202e2ce70110800004202e2c172040002280b8b000e23c00021080b8b000e23c00021080000420ce0320000188760c7eca22b55de429f3021a80c885001080f8fc00228000c40568fe000210800004200001084004108000042000114000625e000210b9100002109f9fab13200001880bd0fc010420000108400002108008200001084000e2e2dd7ca1ba28677d55480ac06000084000021080000420000108400002108000042000010840000210170c400002108000c4050310e70b10800004200001084000228000042000010840000210800004200001880b06200001084000b263604033ebc73f303b619dfe7b7d2510400002108000042000010840000210800004200001084000021080000420000108400062b00002108000042000010840000210800004200001084000021080000420000108400002108000042000b9bb482910b6c1df06b0fdf0552600b120000108400002108058108000c47e00042016042000b11f00018805010840ec87006241000210fb011080581080000420000108402c084000623f0002100b021080d80f8000c482000420f64300d9fc95226dbfb7ed2b409c9bfd0008400002108000042000010840000210800004200001084000021080000420000108400002108000c47e000420000108400002108000042000010840000210171140000210800004200001084000e2827e6e91a62fbaaf64f1952ce61420000188c504084000021080584c80000420000188c5040840cc29400002108000c49c02042000010840cc29400002108b09108000042000b198000188390508402c264000624e01021080000420e614206a01b8ed024c390fef0b108008202e54ef0b108008202e54ef0b1080082000f1be000188000210800004200011405ca8de17200011405ca8de17200011405ca8de17200011400002108000440001880b152000e904246500a77ff5c3ade7a5cc410afcbe7aa4f09f4c800004200001084000021080000420000108400002108000042000010840000210800004200001084004108000042000010840000210800004200001084000021080000420000108400002906840bcefcebf2fe522372ff617202e54ef0b1017b4fd05880bd5fb02c479f8fb041080000420fe3e01c400ba1000e2ef0308400ca00b01202e68fb0b1017aaf70588f3b0bf000188f70588f3f0f7092000010840fc7d028801742100c4df071080b8b07cf5c8f6f3bdf51e29f3dcf6d532000108400002108008200001084000021080000420000108400002108000042000010840000210800004200001084000021001042000010840000210800004200001084000021080000420000108403683341d8694af8249f9c704480001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000148c3577bb441ed3dfca30310800004200001084000021080b878010210800004202e5eef01108000042000f11e000108400002108000042000010840000210800004200071f1020420000108405cbcde03200001084000e23d0002105f9db107cc14b85cd0fe4100880b1520000108400002108000042000716f00c4200004200001084000021080000420000108400002108000c4850a10800004200001084000021080b8370062100002108000042000010840000210806cbe50db7eda2eac14a8fd23963d57000108400002108000042000010840002280f80108400002108000042000010840000210800004200001084000021080000420000108400002100104160001084000021080000420000108402449009124014492248048920022490288240920922480489204104912402449009124014492248048920022490288240920922480489204104912402449009124014492041049920022490288240920922480489200224912402449009124014492041049124024490288240920922480489200224902882449009124014492041049124024490091240920922480489200224902882409203e024912402449009124014492041049920022490288240920922480489272fb021b4799a562276fca0000000049454e44ae426082, NULL, NULL, NULL),
(76, '234', '234', '2', 234, '2014-10-01 00:00:00', 'F', '1', '1', '1', '22222222', '2222222222222222222', '', '2222222222222', '234@234.com', '', 0x89504e470d0a1a0a0000000d494844520000019000000190080600000080bf36cc00000c304944415478daeddc3b9202410c44c1beffa5870b8083312d55e58bc065e7a356aec5792449faa3e31148920022490288240920922480489204104912402449009124014492041049920022490288240920922480489200224912402449009124014492041049124024490288240920922480489200224902882449009124014492041049124024490091240920922480489200224902882409209224014492041049124024490091240920922480489200224902882409209224014492041049124024490091240144922480489200224902882409209224804892d408c839c7e7cbe7d6739efe7edb9e8bf3b6f3bc010420000188f7e1bc010420061a200071de000210030d1080386f00018881b6b03c178000042006daa20408409c378000042000f13e9c378000c440030420ce1b400062a02d2c80386f00018881b6b03c17800004205b0f92fb9db5605216e074589d378000c4fd0204200071bf0031d000010840ec178078c1000108409c378078c1000108409c378078c1ee17200071de000210f70b108000c47e0188810608400062bf00c40b06084000e2bc01c40b06084000e2bc01a4f305a72c0e0b3f7ba1a6fc5def17200001084000e2fd02042000010840cc1f400062a0010210e70d200031d0eed7820108400062a001e27d00c4fb0508400002108078bf00010840000210f30710801868800004200001888176bf160c4000021080342c2cd0ec84c1790308400c344000e2bc010420061a20000108400062a001021080386f00010840000210e70d200031d0000188f306108018688000c4790308400c34400002108000c4400304200071de00021080000420ce1b400062a0f7bc8fb6ebbb35a7ce1b400062a02d68800004200031d016344000e2bc01042000717d0071de00021003edfa00e2bc010420061a20000108400062a02d6880000420000188050d1080386f000108405c1f409c378000c440bb3e80386f000188fb058339f09cdd2f400cb4c5610ecc81b90288176c71980373e03903c40bb638cc8139f09c01e205bb5f809803cf19200071bf0031079eb3fb058881b638cc8139305700f1822d0e73600e3c678078c116873930079e3340bc60f70b1073e0390304207d9f5b07c4f7f93ee70d20000188eff37dce1b400062a02d40df07108000c4405b58be0f200001084000e2fb00021080000420becff7396f000108407c9fef73de000210036d01fa3e80000420061a20be0f200001084000e2fb0002108008c033804bb9be5b30480011400002100144000108400410010420001140041080004400910002100920020840002280082000018800228000042002880002108008201660c3026c5ba829ef23e51c4dbf0f010420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002103d7eca240ac2e907a90d9094c596f2de8004108000042000010840041080000420001140000210800044000108400002108000042000f1de00021080000420000108400410800004200011400002108000440001084000021080740e8283e4b9b8bef720040840006211792e000108400062517a2eae0f200071902c4acf0520000108402c4a80782e00010840dc8745e4b900042000018845e4b900042000018845e9b9b83e8000c441b2283d17730f108000c4a20488e702108080e1ee00fa89886cd0a7cf8b9f96e9830120000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108008204983d0769040336ba1a6fcc3e1a74c000210800004200001880503108000042000b16000e2fd0204200001084000021080000420ee172000010840000210800004200001880503108000042000b16000e2fd02042000010840000210800004203b7e8221e5275952aeafad1440fce4094000021080000420000188050d108000042000b1a00102108000042000717d020840000210d7071080000420000108400002108000c4820608400002108058d00001084000021080b83e01042000d90188836421981720010420160240cc0b400002100b0120e605200001888500108000042000010840000210800004200001887901084000622100c4bc00042000b11000625e000210805808000108400002108000042000010840a602e2a733663d3fd7970d61ca3f300208402c6880000420000108400002108000042000717d0001084000021080000420000108400002108000042000b1a0010210800004200001084000021080787e00010840000210800004200001483a20fe2e801be7653a0cee17200001084000021080000420000108400002108b082000b150dd2f402c0480786f16aafb05888500108000042000010840000210800004200001084000021080584400312f16aafb0588850010efcd4275bf00c91a98b685daf6531c6d80b441d8f6de0002108000042000010840000210800004200001084000021080000420000108400002108000c4df05084000021080000420000108400002108000042000010840000210800004200001084000d207c8f481f1d323165be3f9683b47007140000210e7032000010840000210800004200001084000021080000420000108400002108000c4f90008401c108000c4f9000840000210800004200001084000021080000420000108400002108038483b0630e5faa6cf8b9f82c90644000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042060f07d7ea224efbda57c0410800004200001084000e2fb00021080000420be0f200001880062e103c45c014400b1a001021080000420000108400002108000c4f7010420000108407c1f4000021001c4c20788b9028800a206802da26c80dbe60f20020840bc5ff367ae002280000420e60a2072801d748000042002084000021080c882010840cc1f4004108078bfe6cf5c014400010840cc1540e4003be80001084004108000042000d97a40fcf4c33bcf2fe5ef7a7e9e1f4000021007d802f4fc0002108000c402f4fc0002108000c402f4fc0002108000c402f4fc3c3f80000420feaee7e7f90104200071802d40cf0f20000108402c40cf0f20000108402c40cf0f20000108402c40cfcff303480320ee77e7f3f3cf40f64f71dcba3e8000042000f1010840000210800004200001084000021080000420000108400002108000c4fd02c407200001084000e2031080000420000108400002108000042000010840000210800004200001c8dd9f3848f929899483695e00e71f5480580800312f000108402c04800004200001084000021080000420000108400002108000042000312f000108402c048098178000042016024000021080000420000108400002108000042000010840000290edcfb9ed3e5216741b980001084000021080000420000108400002108038c0162f400002108000c4e2751f00010840000210f701108000042000010840000210800004200001084000e2005bbc000108400002108bd77d0004200001889f32699803d7b7f3276d9c0f8000c401b1a09d23e7032006df01b1a001e27c000420000188eb03084000021080b83e80000420007140000210e703200071402c68e7c8f90088c177402c6880381f0001084000e2fa00021080000420ae0f20000148e70b4e01d342cdfee99be9d7070680000420000188bd01108300108000042000010840000210800004200001084000021080b85f800004200001084000021080d81b0031080001084000021080586c000108400002108000042000a107403a3fd31765ca82990e660a84d3df2f40000210800004200001880f40000210800004200001084000021080000420000108400002108000042000010840000210800004203e00010840000210800004200001084000021080000420009124f50410491240244900912401449204104992002249028824092092248048920022491240244900912401449204104912402449028824092092248048920022490288244900912401449204104912402449009124092092248048920022490288240920922401449204104912402449009124014492248048920022490288240920922401449204104912402449009124014492248048920022490288240920922480489204104912402449009124014492041049927ef501266e179b859a6cc70000000049454e44ae426082, NULL, NULL, NULL),
(77, '999', '999', '1', 999, '2014-10-01 00:00:00', 'M', '', '2', '2', '1111111111111', '111111111111111111111', '', '11111111111111111111', '99@99.com', '', 0x89504e470d0a1a0a0000000d494844520000019000000190080600000080bf36cc00000c3e4944415478daeddc41b222310c4441dfffd270013610415baaca17315b06774bcebfe2bc2449faa1e31148920022490288240920922480489204104912402449009124014492041049920022490288240920922480489200224912402449009124014492041049124024490288240920922480489200224902882449009124014492041049124024490091240920922480489200224902882409209224014492041049124024490091240920922480489200224902882409209224014492041049124024490091240144922480489200224902882409209224804892d408c839c7bf0fffa6bf8f94f79b32f7f66de71c00042000010840ec1b400062a0010210fb06108018688000c4be010420061a20000108400062a001e23903c41c00042000010840ec1b400062a0010210fb06108018688000c4be010420061a200001084000f2d485d576dee99fd7068df7eb7e0188170c108000c4be01c40b0608400062df000210e705084000e27e01888176c1000420ee178078c1000188f7eb7e0188170c108000c4be01c40b0608400062df000210030d108000c4fd021003ed82010840dc2f00d97ca1a65c3029efb7ed39b701670e000210030d10cfc5be01042006da450910fb06108018688000c4bed93780186880000420f60d2006da40030420f60d200031d000f15cec1b400062a05d9400b16f000188810608400062df0062a001021080d8378000c479f79c77fa39ec1b400062a09d1720000108400c3440000210800004202e548000c4fc0104202e54e70588f90308400cb4f302042000018881765e8000042000010840000210800004202e54e70588f90308405ca8ce0b10f307108018e83d1747ca5cb5bd0ffb06108018688000c4be997b80186880000420000188810608400062df00021080000420f60d200031d00001887d0308400c34400062df000210030d10800004200031d000010840ec1b400002108000c4be01a4131060ce5acc94f79b725efb061080382f400062df9c1720061a2000b16fce0b102f1820000188fb05205e3040000210fb06102f18200001887d0308409c172000b16fce0b10030d1080d837e70588170c108000c4fd02102f18200001887d0348d60b6efb371d249f97fd79f60d20000188cff379f60d200031d02e409f07108000c440bbb07c1e400002108000c4e7010420000108407c9ecfb36f000108407c9ecfb36f000188817601fa3c80000420061a203e0f200001084000e2f300021080a8a194c56cbbf0258008200001880022800004200288000210800820124000220144000188041001042000114004108000440011400002100144020840a44e40fcf4889f50499ad3e9fb016a80000420000108400002108000042000317f000108400002108000042000b1c000010840000210800004200001084000021080000420000108400062fe000210800004200001084000628101021080740232fdff9d7eb101d33c6f78cea0010840000210cf192000b1700071b1010420000108405c6c00b11f0001084000021080000420000108403c6780000420000188e70c1080583880b8d80002108000c48200c43c03042000010840000210800064c700fa8992ece7ec0f31173440000210800004200001084000021080082000010840002280000420000108400002108000042000010840000210800004200001084000021001042000010840041080000420000108403603e242cd06b8ed0f98b6b907174000021080d8238000c4e0030420000108400c3e40000210800004200001888b0820000108400002108000042000010840ec11400062f001021080000420061f20000108400002108000c44504108000e43f178cc19f7591dffabcb67f6d7b2e800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000a27440522e403fc962fe6ec290029cb90708402c92f90388b90708402c920062ee016281010210800004201618201609200031f700018845020840cc3d40006291cc1f40cc3d4000021001c4dc03c40203c42201042000b1c000b148000188b907c88ec5bc75de948b23e5a75bfca4c84e4004108000c45c01042000b1e80001887d0308402c3a400002108000c44003042000010840000210800004200208400062ae0002108058748000c4be010420161d20000108400062a00102108000042000f1130c13df470ac0291760db9c0a2000010840000210800004200001084000021080000420000108405c440001084000021080000420e6142000010840000210800004200001084000021080584c800004200001888b082000010840e21f42d94f4938c7ce3f4ccc8bf302c4603907400062ae0062b09c032000b1e70001888bd7390002108000c4c5eb1c0071a102042006cb39000210e70588c1720e8000c45c010420ce011080d87377a747e0e2750e800004200071f13a07405ca8ce0b90898beefb657fbf36b852de47ca4f0c010420be1f40cc334000021017b40b0b20000108405cd0be1f40000210805838df0f20de07400062e17c3f80781f000108407c3f809867800004202e6817164000021080b8a07d3f8000042000b170be1f40bc0f800064dac24dff7fdb16b3ed626bdba3e9fb218000c4450910800004200001084000021080000420000108400002108000042000010840000210800004200001888b1220000108400002108000042000010840000210800004200001084000228018fc86f79bf2de52a06efb0310200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400062df00021080000420000108400c3440000210800004200001084000920e880b26fbbc6dd0b4fd448e9faa0108409c1720000108400002108000042000010840000210800004202e54800004200001880bd57901021080000420ce0b1080000420000108400002108000042000010840000210172a400002108000441361b0703b2f7ccfc53c034400f19c01629e01228078ce00010840e46203880b102000918bcdc2010420009100e2a2048879068800e2390304200011403c678000042072b10104200001885c6c160e20000188c5f4d30fdf3fbfe9efedd6f79bfe796de770e10304200001084000021080000420000108400002108000042000010840000210800820b00008400002108000042000010840000210800004200001084000021080000420000108400002102a00e4ee05d8765e7065ff5448ca1f80297fc000c482000420000108405ca8ce0b108000042000715e80000420000108400002108000042000010840000210805810800004200001880bd57901021080000420ce0b108000042000010840000210800064ebc5d6f653126d8bd9f6d3236d3fcd0306800004200001084000021080000420e60f20161d2000010840000210800004200001084000021080000420000108400002108000042000010840cc1f402c3a40000210800004200001084000420f8000e4c9cfbbf57e5d583bdf6f0a84000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840265e586d3fd9613fc00a100b02108000042000010840000210800004200001888b1220000108400002108000042016042000b11f0001880501084000021080000420000108400002108000042000010840000210800004200031087917fead0bcb73c986cbbd0110805824800004200001084000021080000420000108400002108038af8bd2730108400002101725400002108000c422010420e61e20000108400002108000042000f15c0002108038af8bd27301084000f29f456afb498c948b72fa793d67cf19200001888b0d209e3340000210179b8bcd731640fc03888bcd73060840000210179be70c10800004202e36cfd97306084000e2620388e70c108000c4c5e662f39c05108000c4c5e6390304200001888bcd730608402449009124014492248048920022490288240920922401449204104912402449009124014492248048920022490288240920922480489204104912402449009124014492041049920022490288240920922480489200224912402449009124014492041049124024490288240920922480489200224902882449009124014492041049124024490091240920922480489200224902882449009124014492041049124024490091240920922480489200224902882429bb371b1c96e35f11c1370000000049454e44ae426082, NULL, NULL, NULL);
INSERT INTO `persona` (`id`, `nombre`, `apellido`, `tipoDoc`, `numeroDoc`, `fechaNacimiento`, `sexo`, `embarazada`, `grupoSanguineo`, `factorSanguineo`, `telefono`, `telEmergencia`, `obraSocial`, `celular`, `email`, `nroAfiliado`, `qre`, `mnNro`, `mpNro`, `id_club`) VALUES
(78, '11111111111111111', '1111111111', '2', 11111, '2014-10-02 00:00:00', 'F', '1', '1', '1', '111111', '1111111111111111111', '', '1111111111111111', '1111111@dasd.com', '', 0x89504e470d0a1a0a0000000d494844520000019000000190080600000080bf36cc00000c1b4944415478daeddc3172c3400c04c1fbffa7a50f2852493c60b7a7ca296d9238b4239e9724495f743c02491240244900912401449204104992002249028824092092248048920022491240244900912401449204104912402449028824092092248048920022490288244900912401449204104912402449009124092092248048920022490288240920922401449204104912402449009124014492248048920022490288240920922401449204104912402449009124014492248048920022490288240920922480489204104912402449009124014492041049921a0139e7f8f9f0f3ebe737fd7ad39ff3f4b977de76ce01400002108000042000010840000210e70d200001084000e2bc010420061a20000108400062a001627100c41c00042000010840000210800004200071de00021080000420ce1b400062a0010210800004204f2d2cf79bbd385216b9f3e67e01e2050304200071bf00f18201021080386f00f182dd2f4000e2bc010420061a200071dedc2f40bc608000c47973bf00f18201021080386f00f18201021080386f00f182dd2f4000e2bc010420061a200071dedc2f409e7cc13e3de2d30f1be6afed7a29e70d200e30400062e13b6f0071800d34400062fe000210030d1080000420000188fb357fae07108000c4010608409c378038c000018885efbc010420061a2000317f000188810608400002108000c4fd9a3fd703084000029086fb4d59e4e60f200031d0ee1720000108400cb4fb0508400002108000042000317f00018885ea7e0162fe00021003ed7e01e2bc01042006dafd0204200001888176bf0001084000021080000420e60f2000b150dd2f40cc1f400062a0f72c22009b3f8000042000010840000210800004200071de00021080000420000108400c344000e2f90104200001880568fe000210800004200071de00021080000420ce1b400062a001021080000420061a2000f1fc000290fb80b85f30586cce1b400062a0010210e7cdfd02c40b06084000e2bc01c40b06084000e2bc01c40b76bf000188f306102fd8fd020420ce1b400062a001021080b85f8078c1000108409c378078c1000108409c378078c1ee17200071de00d2f282db7ea62f5ed7cbbe9ef306108000c4f55ccf790308400cb405e87a000108400cb485e57a00010840000210d703084000021080b89eeb396f000108405ccff59c378000c4405b80ae07108000c44003c4f500021080000420ae0710800044dab300a72fcae9ef438567da23104000021001440001084004100104200011402480004400910002100920020840002280082000018800228000042002880410800820d10bcb429875bd944fbcf8644736d4000608400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000d18e814e797efe4178e67e3de759f30c10800004200001084004108000042000010840000210cf1920000108400002108000042000b1d80002108000042000010840002280000420000108400002108078ce0001084000021080000420e90b2b05b89405e3bded043de5390304200001084000021080000420de1b4000021080000420000108400002108000042000018845041080000420000108400002108000042000f1de0002108000042000010840000210800004200001c856400c968399f40f4cca824eb95f80586c00010840000210800004200001084000021080000420000108403c6780000420000108403c3f80000420161b4000021080000420000108400002108000042000010840000210cf1920000108402ccaac4f304c3fe86d9ff6f00f917f6000021080000420000108400002108000042002084000021080000420000108400002108000042000010840000210800004200001084000021080d8891e01400002108000042000010840000210804c1cac944f26b42ddeb64594023a90000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000b263600cf4cef7d1f67efdc3e153300001084000021080000420000108400002108000042000010840000210800004200001084000e2fd0204200001084000021080000420000108400002108000042000010840000210800004200001c8e6c50b069f8c698470fafd82012000f13e0002108000c4c2020840000210805858000108400002108000042000010840000210ef03200001084000e27d0004200001888505108000042000b1b000021080000420000108400002107abc7ccaa472f0a77f4ac2c2cf5ea86dff48000420000108400002108038e800713d80000420000188eb010420000108402c7c80000420000108400002108000042000010840000210071d20ae071080000420000108400002108000c4c207084000a2ff1c90b603ecbdf907cba78300021080786f00010840041080000420000108401c248000c4dc03c4220208400062ee01021080786f00010840000210ef0d200001880002108000042000b1881c248000c4dc03c42202084000021080f40e7ecaf5a61fb85b3000c49c020420ae071080985301c4c20708400002108058f80e26409c238000c4e03b9800718e000210830f108000c49c020420ae071080985301c4c20708400002108000c4c1048873041080187c071320ce91390548c5c31afee99194c5e1f7eefcb447cafd0a2000010840000210800004207e2f4000021080000420000108400002108b1c2000018800021080000420000108400002108000042000f17b01021080000420000108400002108058e400018800727751026e27fc80cbfe11400002108000042000010840000210800004200001084000021080000420000108403c04800004207e00021080000420000108400002108000042000010840000210800004200001084000228068f3e2f59cb3df079000228bcd8103084000228bcd810388e7629e012280000420e619200288e70c10cf0f20b2d8006201020420b2d81c38800004200288030710cfc53c034400f19c01629e01228078ce00f1fc0062002d047fdf76d0db3ef1228000c4820608400002108058d0fe3e80000420000188bf0f200001084000021080000420000188050d108000042000b1a00102108000042000f1f701042000010840fc7d0001084000021080000420004907c4fd82daa73d802e8000042000018800620001021080000420061020000188f30b100bd5fd020420ceaf000210800004200288010488850a1001c400020420000108400002108000c4f9058885ea7e010210e7570099f16985944f30b47d4aa2ed931d29a0a7c00a10071d2000010840000210800004200001084000021080000420000108400002108000042000010840000210071d2000010840000210800004200001084000021080000420000108400002108000042077172f90762e7ce768e7730108400002108000042000010840000210800004201616409c238000c4e00304200001084000021080781f000108400002108000042000010840000210800004201616409c238000c4e0030420000108400002900668a6cf95390508400002108000042000018883091080000420007130010210ef0d200001084000624e01021080000420e6142000010840000210800004200e26400002108000c4c1040840bc3780000420000188390508401a5e3030b33f2932fdb9a40002068000042000010840000210800004200001084000021080000420000108400002108000c4fd0204200001084000021080000420000108400002108000042000010840000210800004200001083d00d2f96341effcc7c473f6891280000420161b400002108000042000f19c010210800004209e334000021080586c9e334000021080586c000108400002108b0d20000108400002108078ce00010840000210cf1920000108402c36cf19200091240144920410499200224902882409209224804892002249124024490091240144920410491240244902882409209224804892002249028824490091240144920410491240244900912409209224804892002249028824092092240144920410491240244900912401449224804892002249028824092092240144920410491240244900912401449224804892002249028824092092248048920410491240244900912401449204104992002249028824092092a49dbd0148f514d94e0f07340000000049454e44ae426082, NULL, NULL, NULL),
(79, '333', '333', '1', 3333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '333@33.com', NULL, 0x89504e470d0a1a0a0000000d494844520000019000000190080600000080bf36cc00000bfe4944415478daeddc4152c3400c0041ffffd3f0014e5026d2a8a78a6ba8b557ea9cf27c4992f48b1e8f40920410491240244900912401449224804892002249028824092092248048920410491240244900912401449204104992002249028824092092248048920022491240244900912401449204104912402449028824092092248048920022490288244900912401449204104912402449009124092092248048920022490288244900912401449204104912402449009124092092248048920022490288240920922401449204104912402449009124014492a48b803ccfe3ef87bfe9efa3f27e2bf7debcedbc0700010840000210f3061080b8d0000188790308405c688000c4bc0104202e34400002108000c4850688e70c10f70020000108400062de000210171a2000316f0001880b0d108098378000c48506084000021080fcd7c2ba76dee99f770d1aefd77e0188170c108000c4bc01c40b0608400062de000210e70508400062bf00c485b660000210fb05205e304000e2fdda2f00f1820102108098378078c100010840cc1b4000e24203042000b15f00e2425b30000188fd0290cd0bb5b2602aeff7da73be069c7b001080b8d000f15ccc1b4000e2425b9400316f0001880b0d10809837f30610171a200001887903880bed42030420e60d200071a101e2b998378000c485b6280162de000210171a200001887903880b0d108000c4bc010420cebbe7bcd3cf61de00021017da790102108000c4850608400002108000c442050840dc3f8000c442755e80b87f0001880bedbc0001084000e2423b2f4000021080000420000108400002100bd57901e2fe01042016aaf302c4fd0308405ce83d8ba372afaebd0ff3061080b8d00001887973ef01e242030420000108405c6880000420e60d20000108400062de000210171a2000316f0001880b0d108098378000c48506084000021080b8d000010840cc1b400002108000c4bc01e42620c09c359895f75b39af790308409c172000316fce0b10171a2000316fce0b102f1820000188fd02102f1820000188790388170c108000c4bc010420ce0b10809837e705880b0d10809837e70588170c108000c47e0188170c108000c4bc01a4f582affd4d07c9e7b53fcfbc01042000f1793ecfbc0104202eb405e8f300021080b8d01696cf03084000021080f83c80000420000188cff379e60d20000188cff379e60d200071a12d409f07108000c4850688cf03084000021080f83c80000420ba506530af2d7c092002084000228008200001880022800004200288041080480011400022014400010840041001042000114004108000440091000210e926207e7ac44fa894eee9f4f9003540000210800004200001084000021080b87f00010840000210800004200031c0000108400002108000042000010840000210800004200001084000e2fe010420000108400002108000c4000304200039fab02cb695837eeda7563c67fb0020000188c506108000c442755e8000042000010840000210800004202e0c4000e239db0700716100021080d807000108402c368000042000715e80000420001140000210800004202e0c4000e239db07009978f12dfc59036701b6e11240000210800004200001084000021080000420000108400022800004200001880002108000042000010840000210800004200001084000021080000420000108400410800004200011405a804c5fa8169bc556fa22e1fd0204200604200001084000021080000420000108400002108000042000018805031080000420000108400002108018108000042000010840000210800004200001084000021080000420160c400002901dd05480ab2cf2caf3f3532bedf30204200001084000021080000420000108400002108000042002084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000c4057c67b1c917981284952f1c0031c0001140000210030c10010420e6122000114000021080000420ee1f4000021080b8a8020840006280012280000420061820020840cc254000228000042000010840dc3f800004207518a60fb045e91c20f4450c2000010840000210800004200001084000021080000420000108400062f102042002084000e21c00010840000210800004200001084000021080000420000108400002108000c4e2050840741710c0ed5c08959f8cb9b6002be7050d40000210800004200001084000021080004400010840000210010420000108400410800004200001084000021080000420000108400002108008200001084000228000042000b1c000d202a4f253127e92c5a2dc009c00021080000420000108400002100bd57901021080000420ce0b100104200001084004108000042002084000021080000420000108402c54e70508400002108000042002084000021080b83016e00590aebd375f88da3f2d03108000042000010840000210800004200001884504108000042000010840000210800004200001084000021080000420000108400002108000042000018845041080000420000108400002108000641a2016e0ac81ab2c2c73d4fe620710171f2000010840000210800004200011400002108098238000c4c5070840cc114000e2e2030420000108405c7c80000420000108400002108000440001084000628e000210171f20003147000148fde25f5b1c959f32a9fc5fd0ecfca203108000c4220708400002108000042000010840000210800004200001084000021080000420000108400002108000c42207084000021080000420000108400002108000042000010840000210800064eb8576def68201dccebfca17228058a8ce0b108000042016aaf302042000010840000210800004200001084000021080000420000108400002100bd57901021080000420ce0b1080000420000108400002108000042000010840000210dd04c9c0ed5cf89e0b40002280000420000188000210800004200208402c40800044000108400002100920162540000210010420000108400410800004200011400002108000440001084000021083e9a71fde7b7ed3ff6f05d6e9ef6dfafc0a2000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800820ad0b63a1eefcc2613e7c810188850a108000042000b1509d172000010840000210800004200001084000021080000420060420000108400062a10204200001084000e2bc0001084000021080000420000108400002108000042000d93c20959f1ea93c3ff76ae77d0603400002108000042000010840000210800004200001084000021080000420000188fb0710830e108000042000010840000210800004200001084000021080000420ee1540000210800004200071ff000210807cfefd5a583bdf6f05428000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004201317d6b59fec301f6005880101084000021080000420000108400002108000c4a20408400002108000042000018801010840cc07400062400002108000042000010840000210800004200001084000021080000420000108405c84dec2ffd4c2f25cda70d91b00018841020840000210800004200001084000021080000420000188f35a949e0b400002108058940001084000021083041080b8f70001084000021080000420000188e702108000c4792d4acf05200001c83b8374ed27312c223f9de1390b20fe0062b179ce000108400062b1010420000108402c368078ce00010840000210cf1920000108402c36cf59008105402c36cf1920000108402c3680000420000188c50610cf19200001084000e239034492248048920022490288240920922480489204104912402449009124014492248048920022490288240920922480489204104912402449009124014492041049920022490288240920922480489200224912402449009124014492041049124024490288240920922480489200224902882449009124014492041049124024490091240920922480489200224902882409201e8124092092248048920022490288244900912401449204104912402449009124092092a4bff70de7f9427e7cd88c610000000049454e44ae426082, NULL, NULL, NULL),
(80, '333', '333', '1', 3333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '333@33.com', NULL, 0x89504e470d0a1a0a0000000d494844520000019000000190080600000080bf36cc00000c244944415478daeddc31722331100441fcffd3ab0f488e1ca0bbb322e8f2b4d8c1e4593c9f2449ffe8380249124024490091240144920410499200224902882409209224804892002249124024490091240144920410491240244902882409209224804892002249028824490091240144920410491240244900912409209224804892002249028824092092240144920410491240244900912401449224804892002249028824092092240144920410491240244900912401449224804892002249028824092092248048920410491240244900912401449204104992160139e7f8fcf2b975ceafbfdfb57371df32ef1b4000021080781fee1b400062a0010210f70d200031d0000188fb06108018680bcbb90004200031d016254000e2be010420000188f7e1be010420061a200071df000210036d6101c47d0308400cb485e55c00021080a45e24cffbd682695980afc3eabe0104209e1720000188e70588810608400062bf00c40b06084000e2be01c40b06084000e2be01c40bf6bc000188fb061080785e80000420f60b400c3440000210fb05205e3040000210f70d205e3040000210f70d209b2fb8657158f8dd0bb5e5dff57e01021080000420de2f400002108000c4fc010420061a200071df00021003ed792d1880000420061a20de0740bc5f80000420000188f70b108000042000317f00018881060840000210801868cf6bc10004200001c8c2c2024d260cee1b400062a0010210f70d200031d000010840000210030d108000c47d03084000021080b86f00018881060840dc378000c440030420ee1b400062a001021080000420061a20000188fb0610800004200071df000210039df33ed6febe5b73eabe01042006da82060840000210036d41030420ee1b400002107f1f40dc378000c440fbfb00e2be010420061a20000108400062a02d6880000420000188050d1080b86f00010840fc7d0071df00021003edef0388fb061080785e309803e7ec790162a02d0e73600ecc1540bc608bc31c9803e70c102fd8e23007e6c03903c40bf6bc003107ce192000f1bc003107ced9f302c4405b1ce6c01c982b8078c11687393007ce19205eb0c5610ecc8173068817ec7901620e9c334000b2f7b975417c9fef73df00021080f83edfe7be01042006da02f47d000108400cb485e5fb00021080000420be0f200001084000e2fb7c9ffb06108000c4f7f93ef70d200031d016a0ef0308400062a001e2fb00021080000420be0f2000018800fc06702d7fdf2d18248008200001880022800004200288000210800820020840002280480001880410010420001140041080004400114000021001440001084004100b706101ae2dd496f7d1728f5e7f0e0104200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021001c44f532c9c9ff7db0dc8dabf0b1080000420000108400002108000042000018805031080000420000188f30308400002108000042000010840000210800004200001084000021080000420160c4000021080000420ce0f2000010840dae1024de67f249c8bff0026fc740b40000210800004200001084000e25c00021001c4a2742e0001084000621139178000042000b1289d8bbf0f2000010840000210800004200001887301084004108bc8b900042000018845e45c000210801840efcd5cedfec764eda76500e2a2030420000108400002108000042000b188000210730510f7122000f1decc1540000210171d200001084000e2a2030420000108400002108000042000b18800021073051080000420de9bb9020840006221dc1d7c3fc5f1d673bc3e572d3f19e33f800001084000021080000420000108400002108000042000717f01021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000f9fc9449d5670d06173df37db4fc7de60a2000010840000210800004200001887b0410800004200001084000021080b8470001084000021080000420000108400002108000042000010840dc238000c4e003042000010840000210f708200051c6a0fa698fcc9f82b1789d0b40000210805894ce052072e19cb34509108000c485030840cc33400062b1010420e6192000010840000210e702108000042016a57301885c38e76c510204200001084000629e0102108b0d200031cf000188856551befaefaebd0ff0bf757e00010840000210e707108000042016204000021080000420000108400002108000042000010840000210e707108000042000717e000108400062010204200001084000021080000420000108400002905418fcf4830598b0005bcec5f30204200001084000021080000420000108400002108000c442f5bc000108400062a17a5e8000042000010840000210800004200001084000021080000420000108400062a17a5e8000042000b1503d2f4036a1016b37842d80ac41b8f6de0002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840f60079fd2745d616b905ed7e24cc959f32010840000210800004200001084000021080b820000188fb011080b8203e00713f00021017042000010840000210800004200001084000021080000420007141000210f703200071417c00e27e00c45c7d7ecae42a0c6b8ba365e1831a208bffe1000840000210800004200001887901084000021080000420e60f2000010840000210800004202e30400002108000042000010840000210800004200001084000021080983f800004200001084000b207838b69512e02bcf6533a020840000210800004200001084000021080000420000108400002108000042000114000021080004400010840000210800004200001084000021080000420000108400002108000042002889217a54594f97ecddfde5c014400010840cc1540e402bbe8000108400410171d200001882c18800004200091050310efd7fc992b800820000188b902885c60171d2000018800e2a2030420009105031080000420dd17c44f3fb8c009cfdbf2ef3a3f8000042000b1009d1f40000210805880ce0f20000108402c40e707108000c442f5bc000108400002108000c4f901042000018805e8fc0002108000c402747e0001084000620102042000018885ea79010210806400e279bbbfcf277301defafb0002108000c407200001084000021080000420000108400002108000042000010840000210cf0b101f800004200001880f4000021080000420000108400002108000042000010840000210800004207e8a23f9fccc0b80178103084000021080000420000108400002108000042000312f000108402c04809817800004201602400002108000042000010840000210800004200001084000021080981780000420160240cc0b400002100be1eec2bff53ed6006999bfd7e7600d3880000420000188f30308400002100b1020000108400062fe0002108000042000010840000210800004200001084000021080383f8000042000b1000102108000042000010840000210800004200001880b6c612dc0ea1e75ffd40f4000021080f8fb000210800004200001084000021080000420000108403caf05ed1e010420000108400002108000042000f1f701042000010840000210800004200001084000021080785e0bda3d0208405c4c6026ff448485da7d7fc100108000042000b13700621000021080000420000108400002108000042000010840000210cf0b1080000420000108400002107b0320060120000108400002108b0d200001084000021080000420f400c8e6c782c99c2b1066ee0d80000420000108400002101f80000420000108400002108000042000010840000210800004200001084000021080000420000108407c00021080000420000108400002108000042000010840002249da092092248048920022490288240920922401449204104912402449009124014492248048920022490288240920922480489204104912402449009124014492041049920022490288240920922480489200224912402449009124014492041049124024490288240920922480489200224902882449009124014492041049124024490288240920922480489200224902882449009124014492041049124024490091240920922480489200224902882409209224fdd50f021714d9c86f4cf70000000049454e44ae426082, NULL, NULL, NULL),
(81, '333', '333', '1', 33333, '2014-10-01 00:00:00', 'F', '1', '2', '2', '1111111111', '111111111111111111111111', '', '1111111111111111', '333@33.com', '', 0x89504e470d0a1a0a0000000d494844520000019000000190080600000080bf36cc00000c174944415478daeddcc171c330100441e49fb494805e2a89b8dbeda9f2973640e0da2f9e9724495f746c81240920922480489200224902882449009124014492041049124024490091240920922480489200224902882409209224014492041049124024490091240144922480489200224902882409209224804892041049124024490091240144920410499200224902882409209224804892002249124024490091240144920410499200224902882409209224804892002249124024490091240144920410491240244902882409209224804892002249028824498d809c73fc7cf8f9f5fe4d7fdef47d9e7eeeddb79de700200001084000021080000420000188fb0610800004200071df000210071a200001084000e24003c4e0008873001080000420000108400002108000c47d03084000021080b86f000188030d108000042000796a60596ff6e04819e4ee9bf502c40b0608400062bd00f18201021080b86f00f182ad17200071df000210071a200071dfac17205e304000e2be592f40bc6080000420ee1b40bc6080000420ee1b40bc60eb050840dc378000c481060840dc37eb05c8932fd8a7477cfa61c3f96b7b5eca7d03880b0c108018f8ee1b405c60071a200071fe000210071a2000010840000210eb75fe3c0f200001880b0c1080b86f00718101021003df7d0308401c688000c4f90308401c688000042000010840acd7f9f33c800004200069586fca2077fe00021007da7a0102108000c481b65e8000042000010840000210e70f20003150ad1720ce1f4000e2405b2f40dc378000c481b65e800004200071a0ad1720000108400002108000c4f90308400c54eb0588f307108038d07b0611809d3f8000042000010840000210800004200071df00021080000420000108401c688000c4fe01042000018801e8fc0104200001084000e2be01042000010840dc378000c4810608400002108038d0000188fd030840ee0362bd6030d8dc378000c481060840dc37eb0588170c108000c47d0388170c108000c47d0388176cbd000188fb06102fd87a010210f70d200071a001021080582f40bc6080000420ee1b40bc6080000420ee1b40bc60eb050840dc3780b4bce0b69fe983d7f3b29fe7be01042000f13ccf73df00021007da00f43c800004200eb481e57900010840000210cf03084000021080789ee7b96f000108403ccff3dc378000c48136003d0f20000188030d10cf03084000021080781e4000021069cf009c3e28a7bf0f15de695b208000042002880002108008200208400022804800018800220104201240041080004400114000021001440001084004100920001140a207968130eb79299f78f1c98e6ca8010c10800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000925edb016c03ce40b5cf37e706400002108000042000010840000210fb0c10800004200001084000021080186c0001084000021080000420000108400002108000042000010840ec334000021080000420000108400062b00104200001c88e03edd31e3ec5b10174f71c2000010840000210800004200001084000021080000420000108401c2c80000420000108400002108000042000010840000210800004200001084000021080000420000108401c2c800004200001481620299f3c71319fd917033afb1f0480000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108080a6131a9fe2c8fe69bb970208400002108000042000010840000210800004200001084000021080000420000188000210800004200001084000021080000420000108400002108000042000010840000210800004204a072465c0a4ec4b0a483e2d33eb1f1820010420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000e4eea09c0e4ddb20770ebc8fa47d060840000210800004200031380c2ce70020000188c10110e7002000010840000210ef032000010840000210800004200001084000021080181c00710e00021080181c00710e0002108000042000f13e000290add0b47dfaa1ed53216d9fa049392f6dfb0c10801808000108400002108000c460030840000210800004200001084000021080000420000108409c17fb0c10801808000108400002108000c4600308400002108000042000010840000210800004205b0f82df9bfd898db67f38fc2301108018e400010840000210831c20000108400002108000042000010840fc5e80000420000188df0b10800004200031c801021080000420063940000210800004200001084000021080f8bd0001084000a2cd03d5459af5de52f6af0d4280000420000108400002108308200001887b091080000420000108400410800004200091830a1080000420000108400002108000c42002084000e25e0204200001084000021001042000018841f7f2291303d0a738aeff0024fbd3280001084000021080082000010840000210800004200001084000021080000420000108400002108000042000010840000210010420000108400002108000042000010840000210800004200089df2c07357a60b50db63658dd4b8000c43e03042000010840041080000420061b400002108000440001084000228000042000010840000210fb0c10800004200071500102108000c460030840000210800820000108405c4080ec38582917d8a0045cd28f00021080000420000108400c40800004200001084000021080000420000108400002109b00108000c40f4000021080000420000108400002108000042000010840000210800004200001084004106d1ebcf639fb7d00092032d85c388000042032d85c3880d817e7192002084000e23c034400b1cf00b17f0091c106100310200091c1e6c20104200011405c3880d817e7192002887d0688f30c1001c43e03c4fe01c4013410fc7ddb416ffbc48b000210031a2000010840006240fbfb00021080000420fe3e8000042000010840000210800004200634400002108000c4800608400002108000c4df07108000042000f1f7010420000108400002108000241d10eb05bf4f7b005d0001084000021001c401040840000210803880d60b1080b8bf003150ad172000719e0510800004200011401c408018a80011401c4080000420000188816abd000188fb0b1003d57a010210e7590099f16985b64f30186cb3f6a5edd33c29e70f202e3a40000210800004200001084000021080000420000108400002108000042000010840000210800004202e3a40000210800004200001084000021080000420000108400002108000042000010840ee02d23628dbd6e11ecdda1780000420000108400002108018bc0001084000021083d73adc238000c4c10788750004200001084000021080000420000108400002108000c4e00508400002108018bcd6e11e0104200e3e40ac03200001084000d2f0bce9e7ca390508400062e0030420000108400c68830820000108405c4c8000c47b03084000e27900f1de00021080781e409c5380000420063e400002108000c48036880002108000c4c5f43c80786f000108403c0f20de1b4000d2f082532ee6adc16b5fb23f8d626e0004202e124000021080000420000108400002108000042000010840acd7a0b42f00010840006250020420000108405c248000c4b90708400002108000042000010840ec0b40000210eb3528ed0b40000290ff5c249f9cd8b98e947f4c40e81325000108400002108000042000010840ec33400002108000c43e030420000188c10610800004200031d8000210800004200001084000021080000420f619200001084000629f0102108000c4600308400022490288240920922401449204104912402449009124014492248048920022490288240920922480489204104912402449009124014492041049920022490288240920922480489200224912402449009124014492041049124024490288240920922480489200224902882449009124014492041049124024490288240920922480489200224902882449009124014492041049124024490091240920922480489200224902882409209224014492041049124024493b7b032045693e698c47a00000000049454e44ae426082, NULL, NULL, NULL),
(82, 'prueb2', 'prueb3', '1', 123456, '1982-10-02 00:00:00', 'M', '', '1', '2', '11111111111111', '111111111111', '1111111111', '1111111111111', 'asd@asd.com', '', 0x89504e470d0a1a0a0000000d494844520000019000000190080600000080bf36cc00000c234944415478daeddc3176c3300c4441deffd2cc05ecc64540ecce7fcfad6349202695ce9524e9878e5b20490288240920922480489200224912402449009124014492041049124024490288240920922480489200224902882449009124014492041049124024490091240920922480489200224902882409209224014492041049124024490091240144922480489200224902882409209224804892041049124024490091240144922480489200224902882409209224804892041049124024490091240144920410499200224902882409209224804892002249522320e71c9f0f9fa9fbfcfaf36dbb2fcedbcef30610800004209e87f306108018688000c4790308400c344000e2bc01042006dac2725f0002108018688b12200071de0002108000c4f370de000210030d1080386f00018881b6b000e2bc01042006dac2725f000210806c3d48aef7ad0593b2005f87d5790308405c2f40000210d70b10030d108000c47e0188070c108000c4790388070c108000c479038807ec7a010210e70d200071bd00010840ec1780186880000420f60b403c6080000420ce1b403c6080000420ce1b403a1f70cae2b0f0b3176acadff57c010210800004209e2f400002108000c4fc010420061a200071de00021003ed7a2d1880000420061a209e07403c5f80000420000188e70b108000042000317f00018881060840000210801868d76bc1000420000148c3c202cd4e189c378000c440030420ce1b400062a001021080000420061a20000188f30610800004200071de000210030d1080386f000188810608409c378000c440030420000108400c3440000210e70d200001084000e2bc010420067acff368fb7d5373eabc01042006da82060840000210036d41030420ce1b40000210bf0f20ce1b400062a0fd3e80386f000188810608400002108018680b1a2000010840006241030420ce1b40000210bf0f20ce1b400062a0fd3e80386f000188eb058339709f5d2f400cb4c5610ecc81b90288076c71980373e03e03c403b638cc8139709f01e201bb5e809803f719200071bd003107eeb3eb058881b638cc8139305700f1802d0e73600edc678078c01687393007ee33403c60d70b1073e03e0304207d9fa903e2fb7c9ff306108000c4f7f93ee70d200031d016a0ef0308400062a02d2cdf07108000042000f17d00010840000210dfe7fb9c3780000420becff7396f00018881b6007d1f40000210030d10df07108000042000f17d0001084004e037804bf97d5330480011400002100144000108400410010420001140041080004400910002100920020840002280082000018800228000042002880002108008201660c3026c5ba829cf23e51cbd7e1d02084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420ba5e6562c1fce3816b032465b1b5cd299000021080000420000108400002108000042000010840000210800004200001084000228000042000010840000210800004200001084000021080000420000108400002108000042000010840ae5799ac78b507e02c98a4fbd2763e0002108000c4820608400002108000042000010840000210bf0f20000108400002108000042000b1280102108000042000b1a001021080000420000108400002108000c4ef0308400002108000042000498726e5fbda9e877f7476ce9f57cb000420061a2000010840000210800004200001084000021080983f80000420000188f30610801868d70b1080000420061a2000010840000210800004200001084000021080983f80000420000188f30690ac030c42d0340292f2ca18af3201084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000148e700b6fd3e07ddbc78e5094000622100042000010840000210800004200071e000e27c0004200e08400022f30c108000c4ef03887901084000622100042000010840000210800004200071e000e27c0004200e084000e22098178000641e869483fe3aacaf3f5f8bd77d0108400002108bd27d010840000210800004200001084000021080000420000108400002108000042016a5fb02108000042016254000021080000420000108400002108000042000010840000210f7052000d9739052609d02c9f330cf5e7d0310805858000108400002100b0b200001084000e2c001c4f300084000e2c001c4f370ff0002108000c4f330cf000108402c2c80000420000188850510800004200071e000e2790004200071e000e279b87f00d1fcc272802dc0a457e4b49d73800820000108400002108000042016aaeb0508400002100bd5f5020420000108400002108000042000010840041080000420000108400002100bd5f502042000018885ea7a0102108000042000010818b21665dbc16cfbbb6dd7e1952700010840000210800004201625400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000148d6a27cfd630e9c8fa47fc4bcca04200001084000021080000420000108400002108000042000010840000210e7032000714000021080000420000108400002108000042000010840000210800004200001084000021080381f003157d7ab4c0ccce24594322f6dafc84901440001084000021080000420000108400002108000042000317f000188fb0710800004200031580e304000021080000420000108400002108000042000010840000210800004200071ff0002108000c4620361c3e24859585ea52380000420000108400002108000042000010840000210800044000108400002100104200001084004108000042000010840000210800004200001084000021080082000010840002280680f4816917fb036406dae00228038e8000108400410071d2000018800021080000420b2600002108000440208400062ae00228038e8000108400410071d2000018800021080000420b2600002108098abeb5526951f0778e7f5a6fc5df70f20000108402c40f70f20000108402c40f70f20000108402c40f70f2000018885ea7a01021080000420000188fb07108000042016a0fb07108000042016a0fb0710800004201620400002108058a8ae17200001c80e405c6ff6f7f9ec5c8053bf0f20000108407c00021080000420000108400002108000042000010840000210800004200071bd00f101084000021080f8000420000108400002108000042000010840000210800004200001084000e2551c9bef9f790170237000010840000210800004200001084000021080000420e60520000188850010f302108000c44200084000021080000420000108400002108000042000010840000210f302108000c442008879010840006221cc2efcb683e9d52dd9af0a69030e200001084000e2fe0104200001880508108000042000317f0001084000021080000420000108400002108000042000010840dc3f8000042000b10001021080000420000108400002108000042000018803bc6301b681e4f7ed04a4ed7c0004200e88050d10e703200071402c6880381f000188030210bf0f200001084000e2f701042000010840000210e703200071402c6880381f00018803624103c4f90008401c1080f87d00010840000210bf0f20000148fa036e7b1587859abd00535e6903100b1520000108400002108000042000b13700621000021080d81b0001084000021080000420000108400002100b1520000108400002108000042000b1370062100002108000042000010840000210806c5da86d1f0b66e75c8170e7de0008400002108000042000f10108400002108000042000010840000210800004200001084000021080000420000108400002108000c407200001084000021080000420000108400002108000042092a49e0022490288240920922480489200224912402449009124014492041049124024490288240920922480489200224902882449009124014492041049124024490091240920922480489200224902882409209224014492041049124024490091240144922480489200224902882409209224804892041049124024490091240144922480489200224902882409209224804892041049124024490091240144920410499200224902882409209224804892002249d2b7fe004cda179b9894496b0000000049454e44ae426082, NULL, NULL, NULL),
(83, '12345', '12345', '1', 12345, '1982-10-02 00:00:00', 'F', '', '3', '1', '1111111111111111', '11111111111111111111111', '11111111111111', '11111111111111111111111', 'ad@asd.com', '', 0x89504e470d0a1a0a0000000d494844520000019000000190080600000080bf36cc00000c3c4944415478daeddc315204410c04c1f9ffa7970f60103892bab322700f7656a3c4baf74992f48f9e2390240144920410491240244900912409209224804892002249028824092092240144920410491240244900912401449224804892002249028824092092248048920410491240244900912401449204104992002249028824092092248048920022491240244900912401449204104912402449028824092092248048920022491240244900912401449204104912402449028824092092248048920022490288244900912401449204104912402449009124a91190f79e9f5f7ea6ce79fbfb6d3b17f7ede67d030840000210efc37d0308400c344000e2be010420061a200071df000210036d6139178000042006daa2040840dc378000042000f13edc378000c440030420ee1b400062a02d2c80b86f00018881b6b09c0b40000290ab17c9f3ee5a30290b703bacee1b4000e27901021080785e80186880000420f60b40bc6080000420ee1b40bc6080000420ee1b40bc60cf0b1080b86f000188e70508400062bf00c44003042000b15f00e2050304200071df00e2050304200071df00d2f982531687859fbd50537eaff70b108000042000f17e01021080000420e60f200031d0000188fb0610801868cf6bc10004200031d000f13e00e2fd02042000010840bc5f80000420000188f90308400c34400002108000c4407b5e0b0620000108401a1616686ec2e0be010420061a200071df000210030d10800004200031d000010840dc3780000420000188fb06108018688000c47d0308400c344000e2be010420061a20000108400062a001021080b86f00010840000210f70d200031d077de47dbdf3735a7ee1b400062a02d68800004200031d016344000e2be01042000f1f701c47d0308400cb4bf0f20ee1b400062a00102108000042006da820608400002108058d0000188fb06108000c4df0710f70d200031d0fe3e80b86f000188e705833970ce9e172006dae23007e6c05c01c40bb638cc813970ce00f1822d0e73600e9c3340bc60cf0b1073e09c010210cf0b1073e09c3d2f400cb4c5610ecc81b90288176c71980373e09c01e2055b1ce6c01c38678078c19e1720e6c0390304207d3f5317c4e7f93cf70d20000188cff379ee1b400062a02d409f07108000c4405b583e0f200001084000e2f3000210800004203ecfe7b96f000108407c9ecf73df000210036d01fa3c80000420061a203e0f200001084000e2f30002108008c03b804bf9fba660900022800004200288000210800820020840002280082000018800220104201240041080004400114000021001440001084004100104200011402cc08605d8b65053de47ca3ddafe1c02084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420fa7c95c989014c19fc364052de6fca7b732f0102108000c47b732f01021080000420ee254000625001021080004406d522020840000210830a1080786fee254000021080786fee25400002108000c4bd0408400c2a4000021080c8a05a44000108400092b5287df5888bde782e295f1d041001042000010840000210800004200001084000021080000420000108409c0b40000210800004200001880002108000042000010840000210800004200001084000021080000420ce05200071413c87e7bdf30fc7f6f7e1ab65006211790ecf0b108000c422f21c9e17200001084000e279010210f3071080000420000108402c2203ed790102108058449ec3f302042000b1883c87e705084000021080786f000188f9030840000210800004202efac6c1f71525e66a72916f9f7bd0000420003157000108405c74800004200001888b0e10800004200001084000021080000420000188b902084000021080982b800004202e3a400002108000c4450708400002108000042000010840000286ce8b69a12a09105f79021080000420000108405c100b1020ee074000e282000420ee074000e282000420020840000210ef03200001084000021080000420007141000210f70320007141000210f7032000714100021001042000b9b188523e6ffb4fcaf9f9c729fb5c0002108000c4a2742e0001084000625102042000b1b0000210800004200001084000021080000420de07409c0b40000210805894ce0520000108402c4a8000042016164000021080000420000108400002907468fcdeec7f10dafe914899e7ede707108000042000717e0001084000620102042000b1c8010210800004200001084000021080000420000188f303084000021080383f8000042000b1000102108058e4000108400002108000042000010840c0e0023bbf3b0babedab3d7c950940000210f362a17a5e80580800717e00f1bc00018805e8fc00626f0004201620400002108000c4020408402c548000042000312f16aae70588850010e70710cf0b10805880ce0f20000108402c408000042000f97c95c989017431770192f27bdb9ec3579e0004200001084000021080000420000108400410800004200011400002108000042000010840000210800004200001084000021080000420000188000210800004200208400002108000e4c642981ae894dfeba2df5ca8295fa563ae0002108000042000010840000210800004200001084000021080000420000108400002108b1c20ee074000021080000420000108400002108000042000010840000210800004200001084000021017a9f32b0e5216c2f6734939bf364004100308108098178000042016024000e2fe02042000010840dc5f800004200001084000021080000420000108400c204000625e0002108000042000717f01021080000420000108400002108000042060c882cb575864ffc33105dc76580510800004200001084000021080000420000108400002108000042000010840002280000420000188000210800004200001084000021080000420000108400002108000042000010840041035006711f907ebc2fc0144000188f76bfecc154004108000c45c01442eb08b0e10800044000108400002105930000188f90388000210efd7fc992b800820000188b902885c60171d2000018800021080000420572f88af7ed8b560529ed757cb383f8000042000b1009d1f4000e2072016a0f30308400002100bd0f901042000018805081080000420000108409c1f40000210805880ce0f2000f103100bd0f901042000018805e8fc0002108000c4020488f303c865403cef2e80fd83e02b5e1aff810108400002108000042016aae705881f800004200001881f8000042000010840000210800004200001084000021080000420000108403c2f40fc00042000010840fc000420000108400002108000c442f555129717078001d7f80f2a402c0480981780000420160240cc0b400002108000042000010840000210800004200001084000625e00021080580800312f000108402c04800004200001084000021080000420000108400002108000042037ceb9ed395216741b9800010840000210800004200001084000021080b8c0162f400002108000c4e2f51c00010840000210cf01108000042000010840000210800004200001084000e2025bbc000108400002108bd773000420000188af32f19513febeeb80a4bc3780000420163440000210830f100bdadf07108000042000f1f701042000010840fc7d000108400002100b1a2000010840006241030420000108402c687f1f400002108000c4df07108000042000f1f701042000f1825d74e7ec9ced0d8018048b0d20ce1920000188c566b139678000c4420588c5e69c0102108000c46273ce00b1370062102c36e7ec9ced0d8000c4620388730608400062b1596cce192000b1500162b139678000042000b1d89c3340ec0d80cc5ccc949fed8b2d65c1b49d5fdb57df8006200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080004492248048920022490288240920922480489204104912402449009124014492041049920022490288240920922480489200224912402449009124014492041049124024490288240920922480489200224902882449009124014492041049124024490288240920922480489200224902882449009124014492041049124024490091240920922480489200224902882409209224014492041049124024490091240144922480489200224902882409209224804892f4d77e001d2a6d616c7036e60000000049454e44ae426082, NULL, NULL, NULL),
(84, '88888888888888888', '8888888888', '2', 8888, '1982-10-02 00:00:00', 'M', '', '1', '1', '2222222222222222', '2222222222222222', '', '22222222222222222222222222', '8888@888.com', '', 0x89504e470d0a1a0a0000000d494844520000019000000190080600000080bf36cc00000c384944415478daeddc319223310c0441feffd3dc0fc850c85802dd5911ebea341c027996ce9524e9878e2390240144920410491240244900912409209224804892002249028824092092240144920410491240244900912401449224804892002249028824092092248048920410491240244900912401449204104992002249028824092092248048920022491240244900912401449204104912402449028824092092248048920022491240244900912401449204104912402449028824092092248048920022490288244900912401449204104912402449009124a91190738ebf0f7fafce79fafb6d3b17f3b673de0002108000c4fb306f0001880b0d108098378000c485060840cc1b4000e2425b58ce05200001880b6d51020420e60d2000010840bc0ff3061080b8d0000188790308405c680b0b20e60d200071a12d2ce70210800064eb2079de590b2665014e87d5bc0104209e1720000188e705880b0d108000c47e0188170c108000c4bc01c40b0608400062de00e2057b5e8000c4bc0104209e1720000188fd0210171a20000188fd02102f1820000188790388170c108000c4bc01a4f305a72c0e0b3f7ba1a6fcbbde2f400002108000c4fb05084000021080b87f0001880b0d108098378000c485f6bc160c40000210171a20de0740bc5f80000420000188f70b10800004200071ff000210171a200001084000e2427b5e0b0620000108401a16166876c260de000210171a2000316f0001880b0d10800004200071a101021080983780000420000188790308405c688000c4bc0104202e34400062de000210171a200001084000e24203042000316f00010840000210f3061080b8d07bde47dbf77b754fcd1b4000e2425bd00001084000e2425bd00001887903084000e2fb01c4bc0104202eb4ef0710f3061080b8d00001084000021017da820608400002108058d00001887903084000e2fb01c4bc0104202eb4ef0710f3061080785e30b807ced9f302c485b638dc03f7c0bd0288176c71b807ee81730688176c71b807ee8173068817ec7901e21e38678000c4f302c43d70ce9e17202eb4c5e11eb807ee1540bc608bc33d700f9c3340bc608bc33d700f9c3340bc60cf0b10f7c0390304207d7faf06c4e7f93cf306108000c4e7f93cf3061080b8d016a0cf03084000e2425b583e0f200001084000e2f3000210800004203ecfe79937800004203ecfe799378000c485b6007d1e40000210171a203e0f200001084000e2f30002108008c033804bf97eaf60900022800004200288000210800820020840002280082000018800220104201240041080004400114000021001440001084004100104200011402cc08605d8b65053de47ca1c4d7f0e010420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002105d3f6512b5d8a6ffbb6d80a42c36f301248018108000c47c00042006042000311f0001084000021080980f8000c480000420e60320003120000188f90008400c084000623e00021003021080980f8000042000010840cc0740006240000210f30110306cfe698ab6856fc1f87e1b7e3a0820000108402c6880000420000108400002108000042000f1fd00021080000420000108400002108b1220000108400002100b1a200001084000021080000420000108407c3f800004200001084000021065c1eafbedfc8f49ca4fadf8691980082000010840002280f87e000108400002108000042000018800021080000420b2a00102108000440001084000021001c4f70308400002100104200001084004108000042000b1a01b16afe79d05d2f445feea1ef8291380000420000108400062b101042000010840000210cf0b108000440001084000021001c4390304200001084000021080000420161b40000210800004200001084000021001042000010840d201f1822d2c833eefbea47c3ff70a20000108400002108078c100010840000210800004200001084000021080b82f000108402c0480000420f60b400002108000042000f18201021080000420000108400002108000042000715f00021017df4f49fce720a52c048bd7b900042000018845e95c0002108000042000010840000210800004200001084000021080000420060e2016a573010840000210efcd7d060840000210800004200001084000021080000420000108409c0b401aa0f1fdb217511b5c6df72065de00021080000420ce0f2000f1fd006201020420000108402c4080000420000108400002108058d0000108400002108000042000717e000188ef07100b1020000108400002108000042000010840000210804cbbd06dd0a42c04cfbbf35c3c2f4000021080000420000108400002108000042000b1500162a17a5e8000042000b1503d2f4000021080000420000108400002108000042000010840000210800004209ed742f5bc000108400062a17a5e806481e439760e66dbbfdbf61c7ef204200604200071af00021080000420ee1540000210830e10f70a200091410708400002108018748000c47c0004200604200071af00021080000420ee1540000210830e10f70a2000914107084000021080bcbd30297f16b4ff1035fef48d9f3201084000021080000420000108400002108018108000c47c00042006042000311f00018801010840000210800004200001084000021080000420000108400c084000623e00021003021080980f80b857d74f993c85c1a0ef1cccb6fb0210ffe10088850010f705200001888500108000042000010840000210800004200001084000021080000420ee0b400002100b0120ee0b400002100b0120000108400002108000042000010840000210800004209d30f877772efcb6739e0e5cca4fee08200001084000228058300071ce00010840000210e70c1080000420161b400002108000c4bf0b108000440001084000021001c4820188730608400002108038678000042000b1d800021080e8fa29132d5ed016d1cef7db062b4004108078bf0071af002280000420ee15400410830e10f70a20b2600c3a40000210593000f17e010210010420de2f40dc2b8008200001887b051001c4a003042000910563d0010210806c1d103ffd6080373c6fcabfebfc0002108000c402747e000108400062013a3f8000042000b1009d1f400002100bd5f302042000010840000210e707108000042016a0f30308400002100bd0f90104200001880508108000042016aae705084000b20310cfbb7390fc6720fba73852ee15402c5480000420000108400002107f000108400002107f0001084000021080000420000108400002108000c4420508400002108000042000f10710800004200001084000021080000420000108402c543fc531f139dc976c80fd07152000010840000210800004200001084000021080000420000108402c0480b82f000108402c04800004200001084000021080000420000108400002108000042000715f00021080580800715f000210805808166fef73a42ce836300102108000042000010840000210800004200031c0162f400002108000c4e2f51c00010840000210cf0110800004200001084000021080000420000108400062802d5e80000420000188c5eb390002108000c44f99f8c909df6f3b2029ef0d20000188050d108000c4c5078805edfb010420000108407c3f80000420000188ef07108000042000b1a0010210800004201634400002108000c482f6fd00021080000420be1f400002108000c4f703084000e2051b74e7ec9ced0d80b808161b409c33400002108bcd6273ce000188850a108bcd39030420000188c5e69c01626f00c445b0d89cb373b6370002108b0d20ce1920000188c566b139678000c4420588c5e69c0102108000c46273ce00b13700f2663053fea62fb69405d3767e6d3f7d031a800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021049920022490288240920922480489200224912402449009124014492041049124024490288240920922480489200224902882449009124014492041049124024490091240920922480489200224902882409209224014492041049124024490091240920922480489200224902882409209224014492041049124024490091240144922480489200224902882409209224804892041049124024490091240144920410499200224902882409209224804892002249d2b7fd0156786d613627f45c0000000049454e44ae426082, NULL, NULL, NULL);
INSERT INTO `persona` (`id`, `nombre`, `apellido`, `tipoDoc`, `numeroDoc`, `fechaNacimiento`, `sexo`, `embarazada`, `grupoSanguineo`, `factorSanguineo`, `telefono`, `telEmergencia`, `obraSocial`, `celular`, `email`, `nroAfiliado`, `qre`, `mnNro`, `mpNro`, `id_club`) VALUES
(85, 'ert', 'ert', '', 789456123, '1982-10-01 00:00:00', 'M', '', '2', '2', '11111111111', '1111111111111111', '11111111111111111111111', '1111111111111111111', 'sdf@111111111111.com.ar', '1111111111111111111111', 0x89504e470d0a1a0a0000000d494844520000019000000190080600000080bf36cc00000c2a4944415478daeddc4b8e02410c44c1baffa59b0b341b245476663c892dd31f9763569c4792a41f3a1e81240920922480489200224902882449009124014492041049124024490091240920922480489200224902882409209224014492041049124024490091240144922480489200224902882409209224804892041049124024490091240144920410499200224902882409209224804892002249124024490091240144920410499200224902882409209224804892002249124024490091240144920410491240244902882409209224804892002249028824498d809c737c5e3eb79ef3f4f7dbf65c9cb79de70d2000010840bc0fe70d200031d0000188f306108018688000c4790308400cb485e5b90004200031d016254000e2bc010420000188f7e1bc010420061a200071de000210036d6101c4790308400cb485e5b900042000d97a90dcefac0593b200a7c3eabc010420ee1720000188fb0588810608400062bf00c40b06084000e2bc01c40b06084000e2bc01c40b76bf000188f3061080b85f80000420f60b400c3440000210fb05205e3040000210e70d205e3040000210e70d209d2f38657158f8d90b35e5ef7abf00010840000210ef1720000108400062fe000210030d1080386f0001888176bf160c40000210030d10ef0320de2f400002108000c4fb05084000021080983f8000c440030420000108400cb4fbb5600002108000a461618166270cce1b400062a0010210e70d200031d000010840000210030d108000c47903084000021080386f000188810608409c378000c440030420ce1b400062a001021080000420061a20000188f30610800004200071de00021003bde77db45ddfad3975de000210036d4103042000018881b6a0010210e70d20000188eb0388f30610801868d70710e70d200031d000010840000210036d41030420000108402c688000c47903084000e2fa00e2bc01042006daf501c479030840dc2f18cc81e7ec7e0162a02d0e73600ecc1540bc608bc31c9803cf19205eb0c5610ecc81e70c102fd8fd02c41c78ce000188fb058839f09cdd2f400cb4c5610ecc81b90288176c71980373e03903c40bb638cc8139f09c01e205bb5f809803cf192000e9fbdc3a20becff7396f000108407c9fef73de000210036d01fa3e8000042006dac2f27d00010840000210df07108000042000f17dbecf7903084000e2fb7c9ff306108018680bd0f70104200031d000f17d00010840000210df0710800044009e015ccaf5dd8241028800021080082002084000228008200001880022800004200288041080480011400002100144000108400410010420001140041080004400b1001b1660db424d791f29e768fa7d08200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080e8f15326958bdc229a757d00d90903900002108b08200001084000021080786f000108400002108000042000010840000210800004201611400002108000c42202084000021080000420de1b40000210800004200001084000021080000420029c9fb0e89dab94ebf38f1d40000210800004200011402c4a8000042002084000021080082000315700010840000210800004200001084000021080004400b1280102108008200001084000228000c45c01042000f9cfc03898aeaf11743f2de31f0e801840d707108000042006d0820608400002108058d0000188f30b108058d0ae0f20ce2f40000210d707108000042006d0f501042000018801b4a00102108000042016344000e2fc02042016b4eb0388f30b90d28730fc8018fcecfb4d01a4ed1c81062000f1de000210800004200001084000021080000420000108402c22800004200001084000e2bd01042000010840bc37800004200001084000021080000420000108400002108b0820000108400062c1dc1dacb69f1e99be50fd83b51310ffb0010420000108409c4b80586c00010840000210800004200001084000625001228000042000f19c01021080000420000108409c4b80586c000108400002108018548000042000018841058800021080642db6b6859ab2102c5ecf0520000108402c4acf052000010840000210800004200001084000021080000420000108400002108058949e0b4000021080589400010840000210800004200001084000021080000420000108403c17803400d2761f6d0bba0d2ef067ef0d8000042000010840000210800004209e1f40000210805880001140000210800004200001084000021080000420000108400002108000042000f1fc0002108000c40204084000021080000420000108e0762c680b70e7c26afb690f3f6502108000042016aafb05084000021080b85f800820000108400022800004200001880062a102c4420508400002108058a8ee17200001084000e27e0122800004200001880002108000042000c95ae40ee6ac39f07e7742d8f6de00021080000420ce25400c96050310800004200031a800f17e010210800004200001084000021080000420ce25400002108000c4b90408402c1880000420000188410508400002108000042000010840fa0099fed31e29d7d7b6389c8f59ff20a4dc07401c108000c4f90008401c108000042000010840000210800004200001084000021080000420000188f30110803820000188f3011080382000010840000210800004200001084000021080000420000148fa414a39e8b7ee23e57da42c5480f8870320000108400002108000c4820188f70b108000042000f17e010210800004200001084000021080000420000108400002108000042000b16000e2fd0204200001084000021080000420000108400002060769cfc24ff9bb6d3f69e3a74200021080000420000108400002108000440001084000021001042000010840000210800004200001084000021080000420020840000210800820000108400022800004200001084000a206805316a0f7eb277ccc15400410071d20e60a200288830e1073051001c44107084000220b0620000188b9028800021080982b8008200e3a40cc15400410071d20e60a200288830e10800044160c4000021073d50048db4f3a4cff898d14b8da00f6fc0002101f8058809e1f400002108058809e1f4000021080588000f1fc000210800004209e1f400002108058809e1f4000e203100bd0f30308400002100bd0f30308400002100b10209e1f400002108058809e1f403a0171bf3b9f9f7f06b27f8aa3ed1f1880000420000108400062a1ba5f80f8000420000108407c00021080000420000108400002108000042000010840000210800004200071bf00f101084000021080f8000420000108400002108000247da1b6fd9444cac1342f80f30f2a402c04809817800004201602400002108000042000010840000210800004200001084000021080981780000420160240cc0b400002100b012000010840000210800004200001084000021080000420000148cb7b03f04ea83d3f8000042000b100010210800004200001084000021080000420000188030c10800004200001084000021080000420000188050810800004200001084000021080000420000108401c6080000420000108401a7ecaa40d24d7b71390b6f301108038201634409c0f8000c401b1a001e27c0004200e08405c1f400002108000c4f501042000010840000210e703200071402c6880381f00018803624103c4f90008401c1080b83e80000420000188eb0308400092fe82db7e8ac342cd5e80293f6903100b1520000108400002108000042000b13700621000021080d81b0001084000021080000420000108400002100b1520000108400002108000042000b1370062100002108000042000010840000210806c5da86d1f0b66e75c8170e7de0008400002108000042000f10108400002108000042000010840000210800004200001084000021080000420000108400002108000c407200001084000021080000420000108400002108000042092a49e0022490288240920922480489200224912402449009124014492041049124024490288240920922480489200224902882449009124014492041049124024490091240920922480489200224902882409209224014492041049124024490091240144922480489200224902882409209224804892041049124024490091240144922480489200224902882409209224804892041049124024490091240144920410499200224902882409209224804892002249d2b73e3fbe18fc4afb104c0000000049454e44ae426082, NULL, NULL, NULL),
(86, 'jenny', 'jenny', '3', 234234234, '1982-10-01 00:00:00', 'F', '0', '3', '1', '111111111111111111111', '1111111111111111111111', '1111111111111111111111111', '11111111111111111111111', 'jenny@der.com.ar', '11111111111111111', 0x89504e470d0a1a0a0000000d494844520000019000000190080600000080bf36cc00000c0e4944415478daeddc3172ec080c4341ddffd2f2051c39b008a05fd54f67572392ed689e5792a43ff4f80a244900912401449204104912402449028824092092248048920022490288244900912401449204104912402449009124092092248048920022490288240920922401449204104912402449009124014492248048920022490288240920922480489204104912402449009124014492041049920022490288240920922480489204104912402449009124014492041049920022490288240920922480489200224912402449009124014492041049124024495a04e4791eff7ef9f7d5f77cfdfdae7d2ff62d73df0002108000c4fbb06f00018881060840ec1b400062a0010210fb061080186807cbf702108000c4403b940001887d030840000210efc3be010420061a2000b16f0001888176b00062df00021003ed60f95e00021080a42e52cbf33a44ff73385aa0b16f000188e705084000e2790162a001021080b82f00f182010210f3e2be00c40b0608400062df00e20503042000b16f000188e705084000e2be00c44003042000715f00e20503042000715f00e20503042000b16f007150170e919f9cb80561cb7fd7be01042000010840ec1b400062a0010210f307108018688000c4fc010420000108400002108000c402030420f60d20000108400062df000210030d1080983f8000c44003042000010840000210800004200001889fc4c8f95e5a40b26f000188810608400062df0062a001021080d8378000c440030420f60d200031d00001887d0308400c34400002108000c44003042000b16f00010840000210fb06108018688000c4be010420061a2000b16f00018881fefe795be660edfbf35326f60320061a20000188f70b1080000420000108400002108000c4be01042000010840ec1b400062a001e2c000c47e00c440030420000108400002108000042000010840000210fb06108000042000b16f0001c8c20bbebec06bcfe1bdd9378078c100010840ec1b400062a001021080b82f00f1821d228000c47d018817ec1001c47b735f00e205030420de9b7d0388170c10800004209e1720061a20000188fb02102fd821020840dc178078c10e1140bc37fb0690e417bcf6effa61f379dd9f67df00021080f83c9f67df00021003ed00fa3c8000042006dac1f279000108400002109f07108000042000f1793ecfbe01042000f1793ecfbe01042006da01f479000108400c34407c1e400002108000c4e7010420001180fb7e02e4fa734800114000021001440001084004100104200091002280004402880002100920020840002280082000018800228000042012400410804800b97800af1f2287b2fb7bbe0ef0f5bd043a400002108000042000010840cc154000021080000420000108400002108000042000010840000210800004200001084000021080000420e60a200001084000021080000420000108400002107a00c440271f187f700033e10f36800004209e1720000108400002108000042000010840000210800004200001084000021080584c80000420000108403c2f400002108000042000010840000210800004200001084000021080000420edd0b41ce8b503639e3321fcea0f40730a108000c43c0304200001084004108000042000b198000108400002108000042000f1250004200001883905084000629e0102108000042002084000021080584c800004200001084000021083f6fa29133fc1609162406f39a8d79f0320000108400002108000042000010840000210800004200001084000021080000420000108402c12400002108000042000010840000210800004200001084000021080000420000108400002107abc7eca64f2c0781fdd7fe85c3ff82d7b091a8000c4fb0008400002108000042000010840000210800004200001084000021080000420000108400002108000c4fb000840000210800004200001084000021080000420000108400002108000040c9b8b79fd00b67c2f6b7fe8f88303200001084000021080082000010840000210800004200001084000021080000420000108400002108000042000010840002280000420000108400002108000042000010840000210800004205d80ac1de81680cd150813f608200001084000021080000420000108400002108000c45c0104200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108058e04de05a60bd0e61cbfb58fbfe00e2f002042000f1fd0104209e03200e204000021080000420000108400002108000042000010840000210df1f401c5e80000420be3f8000c47300c401040840000210800004200001084000021080000420a907da62761f6820f90306200001084000021080000420000108403c2f40000210cf011080000420000108400022df0240000210800004200001084000021080000420000188e7050840000210800004200001084000021080002407a49603633133e7d41c800620007138640e0002108000440001084000021080000420001140000210800044007138cca93900084000e270c81c00042000018800021080584c80000420000188000210800004201624191087dca22f020242800004200001084000e27000c41c00042000b120003107f60320f6082000010840000210800004200001084000021080000420000188c301107300108000c4820004200001883d02084000021080000420166e61415a0e0ce0329f1720000108400002108000042000010840000210830f10071f200001084000021080000420020840000210800004200001084000021080000420000108400c3e400002108000042000010840000290d74f99441cc0af067f0db896c3d1f2533aa006084000021080000420000108400002100104200001084000021080000420000108400002108000042000010840000210800004200001084000228000042000010840000210800004200001889201be7ec81d8ecc836aae002280587480000420726000021080982b800820000188b902880062d10162ae00228058748000042002884507084000228000042000315700114000021073051001c4a203c45c0124e300fae9073fc9b2f8d3372d9fd7022b4000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400c8243940cab9fe230577ecac441f5bc161d20000108400002108000042000010840000210df1f40000210803880000188830a108000c45c01c441f5bc161d20000108400002108000042000010840000210df1f40000210803880e60a200b07d54f8fdcfa9ecd4be6ff1fe00002108000042000010840000210f302108000c44100887901084000e22038bc0001084000021080780e80000420000108400002108000042000312f000108401c04809817800004200e82c30b1080000420004906c473f8698f4590c00010800004200001084000021080000420000188c30b1080000420000188e700084000021080000420000108400002108000042000010840000210800004200e2f40000210800004209e032000a107400072f17d00a4fb7daccd33400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840da0101a6c391f08789efd9dd0088410008400062fe000210800004200001084000021080000420000188050608400002108300108000c4dd0088410008400062fe00021080000420000188830a100b0c108000042000b1c0000188bb0190ff5ccc967fd7bfbfb5c3bbf6d32d6bef0320000108400002108000c43f8000042000010840000210800004200001084000021080000420000108400002108000042000010840fc03084000021080000420000108400002108000042000018824092092240144920410491240244900912401449224804892002249028824092092248048920410491240244900912401449204104992002249028824092092248048920410491240244900912401449204104992002249028824092092248048920022491240244900912401449204104912402449028824092092248048920022490288244900912401449204104912402449009124092092248048920022490288240920922401449204104912402449009124e907060918fc84c5cb170000000049454e44ae426082, NULL, NULL, NULL),
(87, 'Prueba2', 'Prueba2', '1', 88776655, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Nicolas@prueba.com.ar', NULL, 0x89504e470d0a1a0a0000000d494844520000019000000190080600000080bf36cc00000c294944415478daeddc3192c3300c0441feffd3f407ecc40981dd9e2aa73e4b02d117e95c4992fee8b80592248048920022490288240920922401449204104912402449009124014492248048920022490288240920922480489204104912402449009124014492041049920022490288240920922480489200224912402449009124014492041049124024490288240920922480489200224902882449009124014492041049124024490288240920922480489200224902882449009124014492041049124024490091240920922480489200224902882409209224350272cef1f9f279759fa73fdfb6fbe2bced3c6f0001084000e279386f000188810608409c378000c440030420ce1b400062a02d2cf7052000018881b628010210e70d20000108403c0fe70d200031d0000188f306108018680b0b20ce1b400062a02d2cf705200001c8d683e47a672d989405381d56e70d200071bd000108405c2f400c3440000210fb05201e3040000210e70d201e3040000210e70d201eb0eb0508409c378000c4f502042000b15f0062a001021080d82f00f18001021080386f00f18001021080386f00e97cc0298bc3c2cf5ea8297fd7f30508400002108078be00010840000210f307108018688000c4790308400cb4ebb56000021080186880781e00f17c010210800004209e2f400002108000c4fc010420061a20000108400062a05daf050310800004200d0b0b343b6170de000210030d1080386f0001888106084000021080186880000420ce1b400002108000c4790308400c344000e2bc010420061a200071de000210030d10800004200031d0000108409c3780000420000188f306108018e83dcfa3edf7bd9a53e70d200031d01634400002108018680b1a200071de00021080f87d0071de00021003edf701c4790308400c34400002108000c4405bd0000108400002100b1a200071de00021080f87d0071de00021003edf701c4790308405c2f18cc81fbec7a0162a02d0e73600ecc15403c608bc31c9803f719201eb0c5610ecc81fb0c100fd8f502c41cb8cf000188eb058839709f5d2f400cb4c5610ecc81b90288076c71980373e03e03c403b638cc8139709f01e201bb5e809803f7192000e9fbbc3a20becff7396f000108407c9fef73de000210036d01fa3e8000042006dac2f27d00010840000210df07108000042000f17dbecf7903084000e2fb7c9ff306108018680bd0f70104200031d000f17d00010840000210df0710800044009e015ccaef7b05830410010420001140041080004400114000021001440001084004100920009100228000042002880002108008200208400022800820000188006201362cc0b6859af23c52ced1f4eb104000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420001140b2166fdbf348f97d00d90903900002108b08200001084000021080786e0001084000021080000420000108400002108000c482b188000210800004201611400002108000042000f1dc0002108000042000010840000210800004200001885780342cc0b6da9e5bdb2b6800021080000420000108400062510204200001084000021080982b8000c422020840000210800004209e1b400002108000042000010840000210800004200001884504108000042000b188000210800004489dafce302fd9f3e27c000420160240cc0b4000220b0120e60520000188850010f302108000c442008879010840006221382000312f000108402c04809817800044160240cc0b400002100b0120e60520000188850010f302108000a4f3a05bbcae77c3fcb5cdbd5799000420000108400002100718200001084000e20003c4f50204200001084000021080000420000188f903084000021080000420000188030c108000042000718001021080000420000108400002108000c4629b78905240f70f96579e00440001887906084000021080000420000108400002108000042000b13800620e0002100104200001084004108008200001084000021080000420000108400002108000c4e20088390008401ca4f70398f27d290bc1e2755f00220b1f2016a5fb0210800004200001084000021080000420000108407c1f400002108000042000b128dd1780c8c207884509108000042000010840000210800004200001084000e2fb000210f7052060c8fb7d29f7055c40f28a12800004200001084000021080000420ee1f40000210805880000108400002100b102000010840dc1780000420000108400002108000042000010840dc3f8000042000b10001021080000420162040000290f703ddb6282dc0ec85d5f66a0faf32010840000210e7c8f502c4200004200071bd00310800010840ec0d800004200001084000021080000420162a400002108000c43972bd003108000108405c2f400c02400002108000042000010840000290eb5526950b2b05aeb639708e66fd3e8000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210808061070c6daf3c71d0772ed4e98bdcab4c000210800004200001084000021080000420000108400002108000042000713e000210070420000108400002108000042000010840000210800004200001084000021080000420000188f301107375bdcae4e900b62dc09483391d56ff38396f00010840000210e70d200031d000010840000210030d10800004200001084000021080000420000108409c3780000420000188f3061080186880000420000188810608400002108000042000010840003271b0da5e29d2f68a92b65771b4bdfa46007130010210732a800004200031a700010840000210730a108000c4c10408400002108038980001084004100713200031a7020840000210730a10800004200031a7000108401c4c80000420ba5e65a2c50bda22daf97cdb600588000210cf1720e60a200208400062ae00228038e8003157009105e3a00304200091050310cf172000114000e2f902c45c014400010840cc15400410071d200001882c18071d200001c8d603e2d50fd980a42c2cf72ffbfe01042000010840dc3f8000042000b100dd3f8000c4072016a0fb07108000042016a0fb071080000420162040dc3f80000420000188fb07108000042016a0fb071080c0022016a0fb07108000042016a0fb0710804c03c4f5eebc7ffe19c87e1547db3f30000108400002108000c44275bd00f101084000021080f8000420000108400002108000042000010840000210800004200001084000e27a01e203108000042000f101084000021080000420000148fa426d7b9544cac1342f80f30f2a402c04809817800004201602400002108000042000010840000210800004200001084000021080981780000420160240cc0b400002100b0120000108400002108000042000010840000210800004200001c8d4e7d10648cafc4d9f8336e000021080000420ee1f4000021080588000010840000210f30710800004200001084000021080000420000108400002108000c4fd0308400002100b10200001084000021080000420000108400002108038c0165603acce51f6ab7e0002108000c4ef0308400002108000042000010840000210800004200071bd16b473041080000420000108400002108000c4ef0308400002108000042000010840000210800004200071bd16b4730410803898c0dcfc8a080b35fbfc8201200001084000626f00c42000042000010840000210800004200001084000021080000420ae17200001084000021080000420f606400c024000021080000420161b400002108000042000010840e80190ce8f05b373ae40b8736f0004200001084000021080f80004200001084000021080000420000108400002108000042000010840000210800004200001084000e203108000042000010840000210800004200001084000021049524f0091240144920410491240244900912409209224804892002249028824092092240144920410491240244900912401449224804892002249028824092092248048920410491240244900912401449204104992002249028824092092248048920022491240244900912401449204104912402449028824092092248048920022491240244900912401449204104912402449028824092092248048920022490288244900912401449204104912402449009124e9571f0ba4c1c6ef715cb50000000049454e44ae426082, NULL, NULL, NULL),
(88, '54321', '54321', '1', 54321, '1982-09-01 00:00:00', 'M', '', '2', '1', '555555555555555555', '5555555555555555555', '', '555555555555555555', '54321@asd.com', '', 0x89504e470d0a1a0a0000000d494844520000019000000190080600000080bf36cc00000c264944415478daeddc3172c340100341feffd3d207ec440917404f9552d93cee6d3bf2f39124e9871e4720490288240920922480489200224912402449009124014492041049124024490288240920922480489200224902882449009124014492041049124024490091240920922480489200224902882409209224014492041049124024490091240144922480489200224902882409209224804892041049124024490091240144922480489200224902882409209224804892041049124024490091240144920410499200224902882409209224804892002249d22220cff3f8fcf179eb9cafbfdfb57371df32ef1b4000021080781fee1b400062a0010210f70d200031d0000188fb06108018680bcbb90004200031d016254000e2be010420000188f7e1be010420061a200071df000210036d6101c47d0308400cb485e55c00021080a45e24cf7b6bc1b42cc0ebb0ba6f000188e705084000e2790162a001021080d82f00f18201021080b86f00f18201021080b86f00f1823d2f4000e2be0104209e1720000188fd0210030d108000c47e0188170c108000c47d0388170c108000c47d03c8e60b6e591c167ef7426df9b9de2f400002108000c4fb05084000021080983f8000c440030420ee1b400062a03daf0503108000c44003c4fb0088f70b108000042000f17e01021080000420e60f200031d00001084000021003ed792d188000042000595858a0c984c17d0308400c344000e2be010420061a20000108400062a001021080b86f00010840000210f70d200031d0000188fb06108018688000c47d0308400c34400002108000c4400304200071df00021080000420ee1b400062a073dec7daeff7d69cba6f00018881b6a00102108000c4405bd0000188fb06108000c4ef0710f70d200031d07e3f80b86f000188810608400002108018680b1a2000010840006241030420ee1b40000210bf1f40dc378000c440fbfd00e2be0104209e170ce6c0397b5e8018688bc31c98037305102fd8e23007e6c03903c40bb638cc813970ce00f1823d2f40cc81730608403c2f40cc8173f6bc0031d01687393007e60a205eb0c5610ecc81730688176c71980373e09c01e2057b5e809803e70c1080ec7ddeba20becff7b96f000108407c9fef73df000210036d01fa3e8000042006dac2f27d00010840000210df07108000042000f17dbecf7d03084000e2fb7c9ffb06108018680bd0f70104200031d000f17d00010840000210df071080004400be015ccbeff7160c1240041080004400114000021001440001084004100104200011402480004402880002108008200208400022800820000188002280000420028805b8b000d7166acbfb68b947d79f43000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000441fffca246250af2f548074ffeb9196f706248000042000010840000210800004200001880002108000042002084000021080000420000108400002108000042000010840000210800004200011400002108000440001084000021080742d0e17d882693a97963f60000210805844ce0520000108402c4a80f8fd000210800004200071df0002108000c4b90004200031d01691730108400002108bc8b90004200001084000e2f7030840000210800004200001084000e25c00029076185a06fafacfb5d832179b7f2db3070340000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200011402c7c8b1c20fee0487a5e800004200001887b0e10800004200001084000021080000420000108400002108000042000010840000210800004200001887b0e10800004200001084000021080000420000108400002108000042040da1cd4eb0bd5dc6702e25f9e000420000108400002108058800001084000e222010420000108400410800820000108402c2c800004200001084000021080000420000108400002101709200031f700018800021001042000c980616da1b6fccb0e8bd7b9f8c3042000010840000210800004200001084000021080000420000108400002108bd2b900042000018845e95c000210800004200001084000021080000420000108400002108000042000018845e95c0002909ccfda05597b1f6f7d5f0b48d7cf0f20000188f70610e707108000042016204000021080000420000108400002108000042000010840000210e707108000c47b0388f30308400002100b102000010840000210800004200001084000021080b40372fd395a16b905e87e785e80181880000420f60140000210800004200001084000021080000420000108402c54cf0b1003031080b81f9e17200606200001887d001080000420000108400002108000042000010840000210f7c3f302a46ff1aec1d0f2bc6bf3e71e75bf3780187c8000c43d0208400c3e4000021080000420000108400002108000042000718f0002108000c4cf758f000210830f1080b847000188c1070840000210800004200001084000021080000420ee1140f600595b6c6f3d6fcbbf28f187d3ad79597b0e80b820000188fb011080b8200001084000021080000420000108400002108000042000010840000210800004202e084000e27e0004202e08400002108000042000010840000210800004200001084000927a915a162aa833e7c51f3ae60f2000010840000210800004200001084000021080000420000108400002108000042000010840000210f3071080000420000108400002108000042076a723000840000210800004200001084000029085c506ae5befd75c657e041080b898000108400002108000c45c995380000420003157e6540071d10162ae002280b8e82e26400002108000c4c504084000021080000420e6ca9c0204202e3a40cc15400410171d20e60a2002882c688b28fdfdaec10a10010420de2f40cc154004108000c45c01440071d10162ae00220bc64507084000220b0620de2f4000228000c4fb0588b9028800021080982b8008202e3a4000021059302e3a40000290d40be25f3f749f5fcbc26af9b9ce0f2000b1500162013a3f8000042000b1009d1f40000210805880ce0f20000108402c40800004200001084000e2fc0002100b152016a0f30308400002100bd0f90104200001880508108000042000b100010210806400e279332f923f06baff1547cb5c01c4420508400002108000042000f101084000021080f80004200001084000021080000420000108400002100b1520000108400002108000c407200001084000021080000420000108400002108058a8fe15c7c5e7302fdd00fb03152000010840000210800004200001084000021080000420000108402c04809817800004201602400002108000042000010840000210800004200001084000021080981780000420160240cc0b400002100b2179f1b6fc6b14f3776b5ed6ce0f20000108400002108000042000317f00010840000210800004200001084000021080000420000108409c1f4000021080000420000108400062fe000210800004200001084000021080000420000108403216560b702d73ba768fd6e61920061f20000188fb0110800004207e3f80000420000108400002108000c4850308400002108000c4820688790688c107084000e27e000420000188df0f2000010840000210800004200071e10002108000a4fd62b65c740bd5426dbabf60000840000210e76c6f00c42000042000317f000108402c3680983f8000042000010840000210cfeb0203042000010840000210e76c6f00c42000042000317f00010840000210800004200001084000420f806c7e2c98ccb90261e6de0008400002108000042000f10108400002108000042000010840000210800004200001084000021080000420000108400002108000c407200001084000021080000420000108400002108000042092a49d0022490288240920922480489200224912402449009124014492041049124024490288240920922480489200224902882449009124014492041049124024490091240920922480489200224902882409209224014492041049124024490091240144922480489200224902882409209224804892041049124024490091240144922480489200224902882409209224804892041049124024490091240144920410499200224902882409209224804892002249d27f7d0172446c0026acaefa0000000049454e44ae426082, NULL, NULL, NULL),
(89, '999', '99', '1', 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ss@asd.com', NULL, 0x89504e470d0a1a0a0000000d494844520000019000000190080600000080bf36cc00000c384944415478daeddc315204410c04c1f9ffa7970f60103892bab322700f7656a3c4baf74992f48f9e2390240144920410491240244900912409209224804892002249028824092092240144920410491240244900912401449224804892002249028824092092248048920410491240244900912401449204104992002249028824092092248048920022491240244900912401449204104912402449028824092092248048920022491240244900912401449204104912402449028824092092248048920022490288244900912401449204104912402449009124a91190f79e9f5f7ea6ce79fbfb6d3b17f7ede67d030840000210efc37d0308400c344000e2be010420061a200071df000210036d6139178000042006daa2040840dc378000042000f13edc378000c440030420ee1b400062a02d2c80b86f00018881b6b09c0b40000290ab17c9f3ee5a30290b703bacee1b4000e27901021080785e80186880000420f60b40bc6080000420ee1b40bc6080000420ee1b40bc60cf0b1080b86f000188e70508400062bf00c44003042000b15f00e2050304200071df00e2050304200071df00d2f982531687859fbd50537eaff70b108000042000f17e01021080000420e60f200031d0000188fb0610801868cf6bc10004200031d000f13e00e2fd02042000010840bc5f80000420000188f90308400c34400002108000c4407b5e0b0620000108401a1616686ec2e0be010420061a200071df000210030d10800004200031d000010840dc3780000420000188fb06108018688000c47d0308400c344000e2be010420061a20000108400062a001021080b86f00010840000210f70d200031d077de47dbdf3735a7ee1b400062a02d68800004200031d016344000e2be01042000f1f701c47d0308400cb4bf0f20ee1b400062a00102108000042006da820608400002108058d0000188fb06108000c4df0710f70d200031d0fe3e80b86f000188e705833970ce9e172006dae23007e6c05c01c40bb638cc813970ce00f1822d0e73600e9c3340bc60cf0b1073e09c010210cf0b1073e09c3d2f400cb4c5610ecc81b90288176c71980373e09c01e2055b1ce6c01c38678078c19e1720e6c0390304207d3f5317c4e7f93cf70d20000188cff379ee1b400062a02d409f07108000c4405b583e0f200001084000e2f3000210800004203ecfe7b96f000108407c9ecf73df000210036d01fa3c80000420061a203e0f200001084000e2f30002108008c03b804bf9fba660900022800004200288000210800820020840002280082000018800220104201240041080004400114000021001440001084004100104200011402cc08605d8b65053de47ca3ddafe1c02084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420fa7c954914709ef7e6df07909b3000092016aae705084000021080785e80786f00010840000210800004200208400002108008201611400002108058a89e17200001084000021080786f000108400002108000042002084000021080a42fe8b6456401fa0a8bc6f7d6f61534000108400002108000042000b128dd0f8000c405010840dc0f80982b800004200001084000021080000420000108400002108000042000010840dc0f8000c405018845e47e00042000010840000210800064dbc2df3ea8be9ac262bbf00f827f88000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000920583c571739103c43f1c179e1720000108400002108000c4e20088390008400002108000042000010840000210800004200001084000021080000420000108400002108b0320e6002000010840000210800004200001084000021080802beb2b225216aa7936cf17fec102880b07108098678000c48573e100629e010210b9700031cf0031570071e1000210f3021080b870fe3e8098678000c485030840cc334000e2c2b9700031cf0001885c38809867f30c1080b87000018879010840d22f9c857f732158bcce05200208402c4ae7021080000420000108400002108000042000010840000210800004200208402c4ae7021001042016254000021080000420000108400002108000042000010840000210e70290cb8bdca2bcf9950ede47f6fb683b3f8000c4c20288f7e1fc0002100b0b20de0740000210805858de074000021080b870de074000021080b87000f13e9c1f4000626101c4fb707e000188850510ef0320000108402c2cef0320000108405c38ef03200001c8554052804b59e416e0ae394d59bcbeca0420000108402c54cf0b108000042000f1bc0001084000021080000420000108400002108000042000b1500102108000042016aae705084000021080785e8000042000010840000210800004200001483a2006ebe6c2df0e48db3f3afe61cb7e6f00010840000210800004200001084000021080000420000108400410800004200001084000e2f7020420000108400002108000042000010840000210800004200001084004108000042000e903c4574ef40db473d97f3fb6df4b5f650210805894ce0520000108402c4ae702108000042016a57301084000e282000420ce05200071410062513a178000042000b1289d0b40000210805894ce0520000108402c4a80b81f0001880b02108038178098abcf57998c2e98b6af3c712ebe0a26091001042000018879010840006221000420000108400002108000042000b12801021080000420000108400002108000042000312f0001084000021080000420000108400002108000c4a204084000021030645dcc940b9202fff6afe2d8fe23800004200001084000021080000420e614200001084000021001042000010840041080b8980001084000021080000420000108400002108098538000042000010840041080000420001140b47141a72c40eff7e657c6982b8008202e3a4000021001c44507084000228000042000315700114000021073051001c4450788b9028800e2a20304200011405c74800004201240bc5f80982b800820000188b902c8ec026cfbea07bfd7f9393f8000c48f0b6c013a3f80000420169105e8fc0002108000c402747ece0f2000018805e8fc9c1f400002100bd0f9393f800004162eb005e8fc00021080584416a0f30308400002100bd0f9393f8000042016a0f3737e00e905c4f3de3c3fff0c647f15c7d4df0710800004207e000210800004200001084000021080000420000108400002108000042000f1bc00f103108000042000f1031080000420000108400002108000042000010840000210800004200001c8ec571ca47c9544cac5342f80f30f2a402c04809817800004201602400002108000042000010840000210800004200001084000021080981780000420160240cc0b400002100b0120000108400002108000042000010840000210800004200001c8d6f7d10648cafc6d9f8336e000021080000420ce0f20000108402c4080000420000188f90308400002108000042000010840000210800004200001084000e2fc0002108000c4020408400002108000042000010840000210800004202eb085d500ab7b94fd553f0001084000e2ef03084000021080000420000108400002108000042000f1bc16b47b041080000420000108400002108000c4df07108000042000010840000210800004200001084000e2792d68f708200071318179f92b222cd4ecfb0b0680000420000188bd01108300108000042000010840000210800004200001084000021080785e800004200001084000021080d81b0031080001084000021080586c000108400002108000042000a107403a7fb62fb69405d3767e6dff208006200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080004492248048920022490288240920922480489204104912402449009124014492041049920022490288240920922480489200224912402449009124014492041049124024490288240920922480489200224902882449009124014492041049124024490288240920922480489200224902882449009124014492041049124024490091240920922480489200224902882409209224014492041049124024490091240144922480489200224902882409209224804892f4d77e0087f8c1c64e0de2e80000000049454e44ae426082, NULL, NULL, NULL),
(90, 'Garcia', 'Carlos', '1', 27272727, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'car@carl.com', NULL, 0x89504e470d0a1a0a0000000d494844520000019000000190080600000080bf36cc00000c224944415478daeddc414e24411004c1faffa7e1037342022223cc25aea3edeaacb43df5fb9224e9073d4720490288240920922480489200224912402449009124014492041049124024490288240920922480489200224902882449009124014492041049124024490091240920922480489200224902882409209224014492041049124024490091240144922480489200224902882409209224804892041049124024490091240144922480489200224902882409209224804892041049124024490091240144920410499200224902882409209224804892002249d22220ef3d7f1ffed2df47cbfb6d997bf7ede61c00042000010840dc378000c440030420ee1b400062a0010210f70d200031d000010840000210030d10e70c10730010800004200071df000210030d1080b86f00018881060840dc378000c44003042000010840fe6a61ad3d6ffaefad41e3fdda2f00f18201021080b86f00f18201021080b86f000188e70508400062bf00c4405b30000188fd02102f182000f17eed178078c100010840dc378078c100010840dc378000c44003042000b15f0062a02d188000c47e01c8e585dab2605adeefda39af01670e000210030d10e7e2be01042006daa20488fb06108018688000c47d73df0062a001021080b86f0031d0061a200071df000210030d10e7e2be01042006daa20488fb061080186880000420ee1b400c3440000210f70d2000f1bc779e37fd39dc378000c4407b5e800004200031d0000108400002108058a8000188f90308402c54cf0b10f30710801868cf0b108000042006daf3020420000108400002108000042000b1503d2f40cc1f400062a17a5e80983f8000c440df591c2d73b5f63edc378000c440030420ee9bb907888106084000021080186880000420ee1b400002108000c47d0308400c344000e2be010420061a200071df000210030d10800004200031d000010840dc3780000420000188fb06904d40809975315bde6fcbf3ba6f000188e7050840dc37cf0b10030d1080b86f9e17205e3040000210fb05205e3040000210f70d205e3040000210f70d2000f1bc000188fbe6790162a0010210f7cdf302c40b0608400062bf00c40b06084000e2be01a4eb05affda583e4f7ba7fcf7d03084000e2f7fc9efb06108018680bd0ef0104200031d01696df03084000021080f83d80000420000188dff37bee1b40000210bfe7f7dc378000c4405b807e0f20000188810688df03084000021080f83d800004205aa8e562ae2d7c0920020840002280082000018800228000042002880410804800114000220144000108400410010420001140041080004400910002106913109f1ef10995a6394dbf1fa00608400002108000042000010840000210f3071080000420000108400002101718200001084000021080000420000108400002108000042000010840cc1f4000021080000420000108405c6080000420a38765504f9edfdaa7569c7337fc00b1000162b1010420000108400002108000440001084000e2fe020420ce0f20ce1920000188f3b3d800021080588000b1d80002108000042000010840002280000420ce1920000188f3038873060840ae2ec0b5bff40bb7b6d8d6e0124000021080000420000108400002108000440001084000228000042000018800021080000420000108400002108000042000010840000210800820000108400410800004200011405ca4c44f53781f00693a3f7001c4c2020840000210800004200001084000021080781f00010840000210800004200011400002108000042016164000021080000420000108400002108000c4fb0008400002108000042000b110db016959bc3e8d72f3fdaebd8fb5ff4808200001084000021080000420ce1920000108400002108000042000b1d80002108000042000010840002280000420000108400002108038678000042000b1d800021080000420161b400002108000641342dd5c806bb0ba47000188c107084000021080004400010840000210010420ee11400062f0010210f708200031f800010840000210830f10800004200001880002108000042000010840dc238000c4e0030420ee1140ba0069f934c5daa7387c52a41b42010420000188790608400062a17a5e80000420000188e70508400002108b08200001084000e2c2010420000108400002108098678000042016aae705084000021080000420000108402c228000042002c8e645ffaf0bb70683ff10dd5cf8a0010840000210800004200001084000e29c01021080000420000108400002108b0d20000108400002108000042000010840000210800004200001887306084000021080000420000108402c3680d0a31d90b50bd2f289089ff6b0282fdc5f010420000108400002108000042016aae705084000021080785e800004200001084000e2b000021080b8bf02084000021080000420000108402c54cf0b1080000420000108400002108000042000691f98b54f67ac7d72a2e553356bf39cfe7e81041080000420000108405c38800004200001880b0710800004200001084000629e0102108000042000010840000210800004200001880b0710800004200071e1000210f30c10800004200031cf0001483b202d0bcb27316e2e36f7e8e6277c04108000042000010840000210800004200001084000021080000420000108400002108000042000018800021080000420000108400002108000042000010840dc23800004200001084000021080dc00247df1b6fcfb7c3ae326342de70c10800004200001084000021080000420000108400002108000042000010840000210800004200001084000021080000420000108400002108000042000010840000210800004200001084000029076405a1679cb82312f37fffc07102000010840000210800004200001084000021080000420000108402c04809817800004201602400002108000042000010840000210800004200001084000021080981780000420160240cc0b40000210252e7c1729eb9c7d4ac7f901440071ce0001084064b10104200001882c36170920cec5dc03440001084000021001c43903c4f901440071ce16204000228b0d200001084064b1b94800712ee61e20020840000210802c0ce0da2754d22fb04fa8dc7c0e0b1f2000010840000210800004200001084000021080000420000108400002108000440081054000021080000420000108400002108000042000010840000210800004200001084000021080500120bf33d09e370bf496ff709817ff81018885ea790102108000c442f5bc0001084000021080000420e60520000188850010f3021080b8201602400002108058a89e17200001084000e2790102108000042000b11000625e00021080580800312f0001c8e50bd2f2e991f4e75d5bbc2d8bd2a779f602084000021080000420000188b90208400002108000042000010840000210800004200001084000021080000420000108400002108000c45c0104200001084000021080000420000108400002108000a47f21ac2dac9645e93f3a00010840fcfb000210800004200001084000021080000420000108402c2c0b1a20000108402c54cf0b10800004200001887f1f40000210800004200001084000021080000420000188856541030420000108403c6fdf826901c4b9ec051080580800312f000108402c0480b81f0001880b021080000420000108400002108000042000018845695e00021080580800312f0001880b622100c4fd0008405c10800004200001084000021080000420000166def9b540dd722e2d730a108000c4a204084000021080b848000188b907084000021080000420000108409c0b40000210cf6b513a178000042000b1280102108000042000010840cc3d40000210800004200001084000e25c00420f806cfeb9e8598ba30524e70c1080000420169b7316406061e15b6c000108400002108b0d2000010840000210803867800004207e0f20ce1920000108402c36e70c108000c4c2b7d800021080000420161b40000210800004200071ce0091240144922480489200224902882409209224014492041049124024490091240144922480489200224902882409209224804892041049124024490091240144920410499200224902882409209224804892002249124024490091240144920410491240244902882409209224804892002249028824490091240144920410491240244902882409209224804892002249028824490091240144920410491240244900912409209224804892002249028824092092247dee1b7d56411dfb7bde740000000049454e44ae426082, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE IF NOT EXISTS `rol` (
  `id` varchar(20) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id`, `descripcion`) VALUES
('INSTITUCION', 'Institucion'),
('MEDICO', 'Medico'),
('PACIENTE', 'Paciente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `tipoUsuario` varchar(30) NOT NULL,
  `id_persona` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_usuario_persona` (`id_persona`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=70 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `username`, `password`, `mail`, `tipoUsuario`, `id_persona`) VALUES
(2, 'm', 'm', 'arielbrizi@gmail.com', 'MEDICO', 1),
(13, 'i', 'i', 'arielbrizi@gmail.com', 'INSTITUCION', 34),
(43, '298262504', '12', 'nicobassart@gmail.com', 'PACIENTE', 64),
(44, '27854036', '12', 'edubas@gmail.com', 'PACIENTE', 65),
(45, '17402861', '12', 'asd@asd.com', 'PACIENTE', 66),
(46, '17402862', '12', 'asd@dsa.cm', 'PACIENTE', 67),
(47, '11223344', '12', 'asd@dsa.cm', 'PACIENTE', 68),
(48, '123456789', '12', 'ansdioa@nskal.com', 'PACIENTE', 69),
(49, '11', '12', '11@sss.com', 'PACIENTE', 70),
(50, '321', '12', '312', 'PACIENTE', 71),
(51, '444', '12', '44@33.com', 'PACIENTE', 72),
(52, '666', '12', '111@22.com', 'PACIENTE', 73),
(53, '29826204', '12', 'asd@sdaf.com', 'PACIENTE', 74),
(54, '777666', '12', 'asd@asd.com', 'PACIENTE', 75),
(55, '234', '12', '234@234.com', 'PACIENTE', 76),
(56, '999', '12', '99@99.com', 'PACIENTE', 77),
(57, '11111', '12', '1111111@dasd.com', 'PACIENTE', 78),
(58, '3333', '12', '333@33.com', 'PACIENTE', 79),
(59, '3333', '12', '333@33.com', 'PACIENTE', 80),
(60, '33333', '12', '333@33.com', 'PACIENTE', 81),
(61, '123456', '12', 'asd@asd.com', 'PACIENTE', 82),
(62, '12345', '12', 'ad@asd.com', 'PACIENTE', 83),
(63, '8888', '12', '8888@888.com', 'PACIENTE', 84),
(64, '789456123', '12', 'sdf@.com.ar', 'PACIENTE', 85),
(65, '234234234', '12', 'jenny@der.com.ar', 'PACIENTE', 86),
(66, '88776655', '12', 'Nicolas@prueba.com.ar', 'PACIENTE', 87),
(67, '54321', '12', '54321@asd.com', 'PACIENTE', 88),
(68, '12', '12', 'ss@asd.com', 'PACIENTE', 89),
(69, '27272727', '12', 'car@carl.com', 'PACIENTE', 90);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_rol`
--

CREATE TABLE IF NOT EXISTS `usuario_rol` (
  `id_usuario` int(11) NOT NULL,
  `id_rol` varchar(20) NOT NULL,
  PRIMARY KEY (`id_usuario`,`id_rol`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_rol` (`id_rol`),
  KEY `id_usuario_2` (`id_usuario`),
  KEY `id_usuario_3` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario_rol`
--

INSERT INTO `usuario_rol` (`id_usuario`, `id_rol`) VALUES
(2, 'MEDICO'),
(13, 'PACIENTE'),
(43, 'PACIENTE'),
(44, 'PACIENTE'),
(45, 'PACIENTE'),
(46, 'PACIENTE'),
(47, 'PACIENTE'),
(48, 'PACIENTE'),
(49, 'PACIENTE'),
(50, 'PACIENTE'),
(51, 'PACIENTE'),
(52, 'PACIENTE'),
(53, 'PACIENTE'),
(54, 'PACIENTE'),
(55, 'PACIENTE'),
(56, 'PACIENTE'),
(57, 'PACIENTE'),
(58, 'PACIENTE'),
(59, 'PACIENTE'),
(60, 'PACIENTE'),
(61, 'PACIENTE'),
(62, 'PACIENTE'),
(63, 'PACIENTE'),
(64, 'PACIENTE'),
(65, 'PACIENTE'),
(66, 'PACIENTE'),
(67, 'PACIENTE'),
(68, 'PACIENTE'),
(69, 'PACIENTE');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD CONSTRAINT `FK_rol` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`) ON DELETE CASCADE;
--
-- Base de datos: `test`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket`
--

CREATE TABLE IF NOT EXISTS `ticket` (
  `id` int(11) NOT NULL,
  `valor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ticket`
--

INSERT INTO `ticket` (`id`, `valor`) VALUES
(1, 333),
(1, 123),
(2, 234);
--
-- Base de datos: `tragos`
--

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
(0, 'Mojito', 'Estamos probando las descipciones', '10.00', '30.00', '20.00', 0, 3, '2012-09-19 00:09:31'),
(1, 'Fernet Cola', 'Estamos probando las descipciones', '15.00', '30.00', '18.00', 0, 3, '2012-09-17 23:07:31'),
(2, 'Mojito 1 lt', 'Estamos probando las descipciones', '10.00', '30.00', '10.30', 1, 0, '2015-01-13 00:16:53'),
(3, 'Mojito Frozzen', 'Estamos probando las descipciones', '10.00', '30.00', '10.30', 1, 0, '2015-01-13 00:16:53'),
(4, 'Daiquiri', 'Estamos probando las descipciones', '10.00', '30.00', '10.40', 1, 0, '2015-01-13 00:16:53'),
(5, 'Mojito Japones', 'Estamos probando las descipciones', '10.00', '30.00', '9.90', 1, 3, '2012-10-01 23:14:05'),
(6, 'Vodka Mint', 'Estamos probando las descipciones', '10.00', '30.00', '9.90', 1, 3, '2015-01-04 00:28:14'),
(7, 'Caiperinha 1 lt', 'Estamos probando las descipciones', '10.00', '30.00', '9.80', 1, 3, '2015-01-04 00:28:14'),
(8, 'Fernet & Cola 1lt', 'Estamos probando las descipciones', '10.00', '30.00', '9.90', 1, 3, '2015-01-04 00:28:14'),
(9, 'Cocktail Night', 'Estamos probando las descipciones', '10.00', '30.00', '9.90', 1, 3, '2012-09-19 00:06:25'),
(10, 'Frederica', 'Estamos probando las descipciones', '10.00', '30.00', '10.00', 1, 3, '2012-09-19 00:09:31'),
(11, 'Cuba Libre', 'Estamos probando las descipciones', '10.00', '30.00', '9.90', 1, 3, '2012-09-19 00:06:25'),
(12, 'Caipiroshka', 'Estamos probando las descipciones', '10.00', '30.00', '10.00', 1, 3, '2012-09-19 00:09:31'),
(13, 'Vanesa Orgasmo', 'Estamos probando las descipciones', '10.00', '30.00', '9.90', 1, 3, '2012-09-19 00:06:25'),
(14, 'Gin Tonic', 'Estamos probando las descipciones', '10.00', '30.00', '9.80', 1, 3, '2012-10-01 23:34:35'),
(15, 'Caipirinha', 'Estamos probando las descipciones', '10.00', '30.00', '9.90', 1, 3, '2012-10-01 23:34:36'),
(16, 'Merengue de Limon', 'Estamos probando las descipciones', '10.00', '30.00', '9.90', 1, 3, '2012-10-01 23:34:36'),
(17, 'Pasion campari', 'Estamos probando las descipciones', '10.00', '30.00', '9.90', 1, 3, '2012-10-01 23:25:19'),
(18, 'Tragos Clasicos', 'Estamos probando las descipciones', '10.00', '30.00', '9.90', 1, 3, '2012-09-19 00:09:31'),
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
  PRIMARY KEY (`idventas`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=684 ;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`idventas`, `idmesa`, `nombreTrago`, `precio`, `dt_venta`, `cantidad`, `cobrado`) VALUES
(424, 33, 'Caipirinha', '14.90', '2012-09-16 16:49:24', 4, 0),
(423, 33, 'Gin Tonic', '9.80', '2012-09-16 16:49:24', 4, 0),
(422, 33, 'Vanesa Orgasmo', '12.90', '2012-09-16 16:49:24', 4, 0),
(421, 33, 'Fernet & Cola 1lt', '14.90', '2012-09-16 16:49:24', 4, 0),
(420, 33, 'Caiperinha 1 lt', '16.80', '2012-09-16 16:49:24', 4, 0),
(419, 33, 'Vodka Mint', '14.90', '2012-09-16 16:49:24', 5, 0),
(418, 33, 'Daiquiri', '24.90', '2012-09-16 16:49:24', 5, 0),
(417, 33, 'Fernet Cola', '29.90', '2012-09-16 16:49:24', 5, 0),
(416, 33, 'Mojito', '30.00', '2012-09-16 16:49:24', 5, 0),
(415, 27, 'Margarita de maracuya', '12.90', '2012-09-16 16:49:03', 5, 0),
(414, 27, 'Tragos Clasicos', '12.90', '2012-09-16 16:49:03', 5, 0),
(413, 27, 'Pasion campari', '9.90', '2012-09-16 16:49:03', 5, 0),
(412, 27, 'Fernet & Cola 1lt', '9.90', '2012-09-16 16:49:03', 5, 0),
(411, 27, 'Caiperinha 1 lt', '11.80', '2012-09-16 16:49:03', 5, 0),
(410, 27, 'Daiquiri', '19.90', '2012-09-16 16:49:03', 5, 0),
(409, 27, 'Mojito 1 lt', '27.80', '2012-09-16 16:49:03', 5, 0),
(408, 27, 'Fernet Cola', '24.90', '2012-09-16 16:49:02', 5, 0),
(407, 27, 'Mojito', '30.00', '2012-09-16 16:49:02', 5, 0),
(406, 21, 'Vodka Mint', '9.90', '2012-09-16 16:48:51', 5, 0),
(405, 26, 'Cocktail Night', '9.90', '2012-09-16 16:48:14', 2, 0),
(404, 26, 'Caiperinha 1 lt', '9.80', '2012-09-16 16:48:14', 2, 0),
(403, 26, 'Mojito Japones', '21.90', '2012-09-16 16:48:13', 2, 0),
(402, 26, 'Mojito 1 lt', '24.80', '2012-09-16 16:48:13', 3, 0),
(401, 21, 'Fernet Cola', '20.90', '2012-09-16 16:47:59', 4, 0),
(400, 63, 'Mojito Frozzen', '17.80', '2012-09-16 16:46:53', 5, 0),
(399, 69, 'Mojito Japones', '16.90', '2012-09-16 16:46:21', 5, 0),
(398, 63, 'Mojito 1 lt', '19.80', '2012-09-16 16:46:09', 5, 0),
(397, 60, 'Vanesa Orgasmo', '9.90', '2012-09-16 16:45:47', 3, 0),
(396, 59, 'Mojito Japones', '14.90', '2012-09-16 16:44:52', 2, 0),
(395, 60, 'Fernet Cola', '19.90', '2012-09-16 16:44:44', 1, 0),
(394, 58, 'Mojito Frozzen', '15.80', '2012-09-16 16:43:22', 2, 0),
(393, 61, 'Daiquiri', '14.90', '2012-09-16 16:42:33', 5, 0),
(392, 61, 'Mojito Frozzen', '14.80', '2012-09-16 16:38:36', 1, 0),
(391, 2, 'Mojito Frozzen', '9.80', '2012-09-16 16:32:45', 5, 0),
(390, 57, 'Mojito', '25.00', '2012-09-16 16:31:15', 5, 0),
(389, 31, 'Fernet Cola', '14.90', '2012-09-16 16:01:29', 5, 0),
(388, 19, 'Mojito 1 lt', '14.80', '2012-09-16 16:00:40', 5, 0),
(387, 20, 'Mojito', '20.00', '2012-09-16 15:58:13', 5, 0),
(386, 20, 'Mojito', '15.00', '2012-09-16 15:57:49', 5, 0),
(385, 19, 'Vodka Speed', '9.90', '2012-09-16 15:51:07', 3, 0),
(384, 19, 'Sensual Coco', '9.80', '2012-09-16 15:51:06', 3, 0),
(383, 19, 'Margarita de maracuya', '9.90', '2012-09-16 15:51:05', 3, 0),
(382, 19, 'Tragos Clasicos', '9.90', '2012-09-16 15:51:04', 3, 0),
(381, 19, 'Merengue de Limon', '9.90', '2012-09-16 15:51:02', 5, 0),
(380, 19, 'Caipirinha', '9.90', '2012-09-16 15:51:01', 5, 0),
(379, 19, 'Mojito Japones', '9.90', '2012-09-16 15:51:00', 5, 0),
(378, 19, 'Daiquiri', '9.90', '2012-09-16 15:50:59', 5, 0),
(377, 19, 'Mojito 1 lt', '9.80', '2012-09-16 15:50:58', 5, 0),
(376, 19, 'Mojito', '10.00', '2012-09-16 15:50:57', 5, 0),
(375, 56, 'Mojito', '10.00', '2012-09-14 19:35:36', 2, 0),
(374, 60, 'Margarita de maracuya', '9.90', '2012-09-14 19:35:27', 3, 0),
(373, 60, 'Tragos Clasicos', '9.90', '2012-09-14 19:35:27', 3, 0),
(372, 60, 'Pasion campari', '9.90', '2012-09-14 19:35:27', 3, 0),
(371, 60, 'Fernet & Cola 1lt', '9.90', '2012-09-14 19:35:27', 2, 0),
(370, 60, 'Vodka Mint', '9.90', '2012-09-14 19:35:27', 3, 0),
(369, 60, 'Daiquiri', '9.90', '2012-09-14 19:35:27', 3, 0),
(368, 60, 'Mojito 1 lt', '9.80', '2012-09-14 19:35:27', 2, 0),
(367, 18, 'Merengue de Limon', '9.90', '2012-09-13 19:05:00', 5, 0),
(366, 18, 'Caipirinha', '9.90', '2012-09-13 19:05:00', 5, 0),
(365, 18, 'Mojito Frozzen', '9.80', '2012-09-13 19:05:00', 3, 0),
(364, 18, 'Mojito 1 lt', '9.80', '2012-09-13 19:05:00', 3, 0),
(363, 32, 'Vodka Speed', '9.90', '2012-09-13 14:00:40', 2, 0),
(362, 32, 'Sensual Coco', '9.80', '2012-09-13 14:00:40', 2, 0),
(361, 32, 'Pasion campari', '9.90', '2012-09-13 14:00:40', 1, 0),
(360, 32, 'Gin Tonic', '13.80', '2012-09-13 14:00:40', 2, 0),
(359, 32, 'Fernet & Cola 1lt', '14.90', '2012-09-13 14:00:40', 2, 0),
(358, 32, 'Caiperinha 1 lt', '14.80', '2012-09-13 14:00:40', 3, 0),
(357, 32, 'Mojito 1 lt', '9.80', '2012-09-13 14:00:40', 1, 0),
(356, 32, 'Fernet Cola', '14.90', '2012-09-13 14:00:40', 2, 0),
(355, 32, 'Mojito', '9.00', '2012-09-13 14:00:40', 2, 0),
(354, 32, 'Caipirinha', '9.90', '2012-09-13 14:00:16', 4, 0),
(353, 32, 'Gin Tonic', '9.80', '2012-09-13 14:00:16', 4, 0),
(352, 32, 'Caipiroshka', '10.00', '2012-09-13 14:00:16', 4, 0),
(351, 32, 'Fernet & Cola 1lt', '9.90', '2012-09-13 14:00:16', 5, 0),
(350, 32, 'Caiperinha 1 lt', '9.80', '2012-09-13 14:00:16', 5, 0),
(349, 32, 'Mojito Japones', '9.90', '2012-09-13 14:00:16', 3, 0),
(348, 32, 'Mojito Frozzen', '9.80', '2012-09-13 14:00:16', 3, 0),
(347, 21, 'Caiperinha 1 lt', '9.80', '2012-09-13 13:58:29', 2, 0),
(346, 21, 'Vodka Mint', '13.90', '2012-09-13 13:58:29', 3, 0),
(345, 21, 'Mojito Frozzen', '13.80', '2012-09-13 13:58:29', 3, 0),
(344, 21, 'Mojito 1 lt', '9.80', '2012-09-13 13:58:29', 4, 0),
(343, 26, 'Pasion campari', '9.90', '2012-09-13 13:57:50', 5, 0),
(342, 26, 'Merengue de Limon', '9.90', '2012-09-13 13:57:50', 2, 0),
(341, 26, 'Vanesa Orgasmo', '9.90', '2012-09-13 13:57:50', 4, 0),
(340, 26, 'Fernet & Cola 1lt', '9.90', '2012-09-13 13:57:50', 5, 0),
(339, 26, 'Vodka Mint', '9.90', '2012-09-13 13:57:50', 5, 0),
(338, 26, 'Mojito Frozzen', '9.80', '2012-09-13 13:57:50', 5, 0),
(337, 26, 'Fernet Cola', '14.90', '2012-09-13 13:57:50', 5, 0),
(336, 24, 'Vodka Speed', '13.90', '2012-09-13 13:20:37', 5, 0),
(335, 24, 'Fernet & Cola 1lt', '12.90', '2012-09-13 13:20:37', 5, 0),
(334, 24, 'Caiperinha 1 lt', '12.80', '2012-09-13 13:20:37', 5, 0),
(333, 24, 'Vodka Mint', '8.90', '2012-09-13 13:20:37', 5, 0),
(332, 26, 'Vodka Speed', '9.90', '2012-09-13 13:20:14', 4, 0),
(331, 26, 'Fernet & Cola 1lt', '9.90', '2012-09-13 13:20:14', 3, 0),
(330, 26, 'Caiperinha 1 lt', '9.80', '2012-09-13 13:20:14', 3, 0),
(329, 26, 'Mojito Japones', '9.90', '2012-09-13 13:20:14', 3, 0),
(328, 21, 'Mojito 1 lt', '9.80', '2012-09-13 13:14:34', 5, 0),
(327, 21, 'Fernet Cola', '18.90', '2012-09-13 13:14:34', 5, 0),
(326, 18, 'Tragos Clasicos', '8.90', '2012-09-13 13:14:07', 1, 0),
(325, 18, 'Pasion campari', '9.90', '2012-09-13 13:14:07', 1, 0),
(324, 18, 'Fernet & Cola 1lt', '9.90', '2012-09-13 13:14:07', 1, 0),
(323, 18, 'Caiperinha 1 lt', '8.80', '2012-09-13 13:14:07', 1, 0),
(322, 18, 'Mojito Japones', '9.90', '2012-09-13 13:14:07', 3, 0),
(321, 18, 'Daiquiri', '9.90', '2012-09-13 13:14:07', 4, 0),
(320, 18, 'Fernet Cola', '14.90', '2012-09-13 13:14:07', 4, 0),
(319, 21, 'Vodka Speed', '9.90', '2012-09-13 13:11:01', 3, 0),
(318, 21, 'Mojito Japones', '9.90', '2012-09-13 13:11:01', 4, 0),
(317, 21, 'Daiquiri', '9.90', '2012-09-13 13:11:01', 4, 0),
(316, 21, 'Mojito 1 lt', '9.80', '2012-09-13 13:11:01', 2, 0),
(315, 56, 'Pasion campari', '9.90', '2012-09-13 12:55:10', 2, 0),
(314, 56, 'Merengue de Limon', '9.90', '2012-09-13 12:55:10', 2, 0),
(313, 56, 'Caipirinha', '8.90', '2012-09-13 12:55:10', 2, 0),
(312, 56, 'Mojito Japones', '8.90', '2012-09-13 12:55:10', 2, 0),
(311, 56, 'Mojito Frozzen', '8.80', '2012-09-13 12:55:10', 2, 0),
(310, 56, 'Mojito 1 lt', '9.80', '2012-09-13 12:55:10', 1, 0),
(309, 56, 'Fernet Cola', '14.90', '2012-09-13 12:55:10', 1, 0),
(308, 16, 'Mojito 1 lt', '11.30', '2012-09-11 23:56:00', 5, 0),
(307, 16, 'Mojito 1 lt', '9.80', '2012-09-11 23:54:32', 5, 0),
(306, 29, 'Gin Tonic', '8.80', '2012-09-11 23:52:35', 5, 0),
(305, 25, 'Caiperinha 1 lt', '8.80', '2012-09-11 23:52:13', 4, 0),
(304, 16, 'Fernet Cola', '13.90', '2012-09-11 23:51:56', 3, 0),
(303, 16, 'Mojito', '10.00', '2012-09-11 23:50:36', 1, 0),
(302, 25, 'Tragos Clasicos', '9.90', '2012-09-11 23:43:10', 3, 0),
(301, 25, 'Merengue de Limon', '9.90', '2012-09-11 23:43:10', 4, 0),
(300, 25, 'Caipirinha', '9.90', '2012-09-11 23:43:10', 5, 0),
(299, 25, 'Gin Tonic', '9.80', '2012-09-11 23:43:10', 5, 0),
(298, 25, 'Vanesa Orgasmo', '8.90', '2012-09-11 23:43:10', 5, 0),
(297, 19, 'Vanesa Orgasmo', '9.90', '2012-09-11 23:40:21', 3, 0),
(296, 19, 'Cuba Libre', '9.90', '2012-09-11 23:40:21', 2, 0),
(295, 19, 'Cocktail Night', '9.90', '2012-09-11 23:40:21', 4, 0),
(294, 19, 'Caiperinha 1 lt', '9.80', '2012-09-11 23:40:21', 5, 0),
(293, 19, 'Vodka Mint', '9.90', '2012-09-11 23:40:21', 3, 0),
(292, 19, 'Daiquiri', '9.90', '2012-09-11 23:40:21', 4, 0),
(291, 19, 'Mojito 1 lt', '9.80', '2012-09-11 23:40:21', 2, 0),
(290, 19, 'Fernet Cola', '14.90', '2012-09-11 23:40:21', 3, 0),
(289, 19, 'Mojito', '9.00', '2012-09-11 23:40:21', 5, 0),
(288, 26, 'Mojito Frozzen', '9.80', '2012-09-11 22:45:01', 5, 1),
(287, 35, 'Mojito', '10.00', '2012-09-11 22:44:40', 5, 0),
(286, 32, 'Mojito Japones', '9.90', '2012-09-11 22:43:06', 5, 0),
(285, 16, 'Mojito', '15.40', '2012-09-11 14:04:09', 5, 1),
(284, 35, 'Mojito', '12.90', '2012-09-11 13:58:41', 5, 1),
(283, 23, 'Mojito', '12.40', '2012-09-11 13:57:35', 1, 1),
(282, 16, 'Gin Tonic', '9.90', '2012-09-11 13:52:09', 1, 1),
(281, 16, 'Caiperinha 1 lt', '9.90', '2012-09-11 13:52:09', 4, 1),
(280, 16, 'Mojito', '10.40', '2012-09-11 13:52:09', 4, 1),
(279, 1, 'Caipiroshka', '9.90', '2012-09-10 14:12:20', 2, 1),
(278, 1, 'Mojito 1 lt', '10.00', '2012-09-10 14:12:19', 2, 1),
(277, 1, 'Fernet Cola', '15.00', '2012-09-10 14:12:19', 1, 1),
(276, 1, 'Mojito', '9.90', '2012-09-10 14:12:19', 1, 1),
(425, 27, 'Mojito 1 lt', '32.80', '2012-09-16 16:49:44', 4, 0),
(426, 27, 'Mojito Japones', '23.90', '2012-09-16 16:49:44', 2, 0),
(427, 27, 'Vodka Mint', '19.90', '2012-09-16 16:49:44', 1, 0),
(428, 27, 'Caiperinha 1 lt', '20.80', '2012-09-16 16:49:44', 2, 0),
(429, 27, 'Fernet & Cola 1lt', '18.90', '2012-09-16 16:49:44', 2, 0),
(430, 27, 'Margarita de maracuya', '17.90', '2012-09-16 16:49:44', 3, 0),
(431, 27, 'Sensual Coco', '12.80', '2012-09-16 16:49:44', 3, 0),
(432, 40, 'Mojito 1 lt', '32.80', '2012-09-16 16:58:50', 5, 0),
(433, 40, 'Mojito Frozzen', '22.80', '2012-09-16 16:58:51', 5, 0),
(434, 40, 'Daiquiri', '29.90', '2012-09-16 16:58:51', 5, 0),
(435, 40, 'Sensual Coco', '15.80', '2012-09-16 16:58:52', 5, 0),
(436, 40, 'Vodka Speed', '12.90', '2012-09-16 16:58:52', 5, 0),
(437, 40, 'Fernet Cola', '34.90', '2012-09-16 17:01:25', 5, 0),
(438, 40, 'Mojito 1 lt', '32.80', '2012-09-16 17:01:25', 5, 0),
(439, 40, 'Mojito Frozzen', '27.80', '2012-09-16 17:01:25', 5, 0),
(440, 40, 'Mojito Japones', '25.90', '2012-09-16 17:01:25', 5, 0),
(441, 53, 'Tragos Clasicos', '17.90', '2012-09-16 17:01:38', 5, 0),
(442, 53, 'Margarita de maracuya', '20.90', '2012-09-16 17:01:38', 5, 0),
(443, 53, 'Sensual Coco', '20.80', '2012-09-16 17:01:38', 5, 0),
(444, 53, 'Vodka Speed', '17.90', '2012-09-16 17:01:38', 5, 0),
(445, 47, 'Mojito Frozzen', '32.80', '2012-09-16 17:01:55', 5, 0),
(446, 47, 'Daiquiri', '34.90', '2012-09-16 17:01:56', 5, 0),
(447, 47, 'Mojito Japones', '30.90', '2012-09-16 17:01:56', 5, 0),
(448, 47, 'Vodka Mint', '20.90', '2012-09-16 17:01:56', 5, 0),
(449, 47, 'Caiperinha 1 lt', '22.80', '2012-09-16 17:01:56', 5, 0),
(450, 60, 'Mojito 1 lt', '32.80', '2012-09-16 17:03:42', 5, 0),
(451, 60, 'Mojito Frozzen', '32.80', '2012-09-16 17:03:42', 5, 0),
(452, 60, 'Daiquiri', '34.90', '2012-09-16 17:03:42', 5, 0),
(453, 60, 'Mojito Japones', '30.90', '2012-09-16 17:03:43', 5, 0),
(454, 39, 'Mojito', '30.00', '2012-09-16 17:11:01', 5, 0),
(455, 39, 'Fernet Cola', '34.90', '2012-09-16 17:11:01', 5, 0),
(456, 39, 'Mojito 1 lt', '32.80', '2012-09-16 17:11:01', 5, 0),
(457, 39, 'Mojito Frozzen', '32.80', '2012-09-16 17:11:01', 5, 0),
(458, 39, 'Daiquiri', '34.90', '2012-09-16 17:11:01', 5, 0),
(459, 40, 'Mojito Frozzen', '32.80', '2012-09-16 17:11:59', 5, 0),
(460, 40, 'Daiquiri', '34.90', '2012-09-16 17:11:59', 5, 0),
(461, 40, 'Mojito Japones', '30.90', '2012-09-16 17:11:59', 5, 0),
(462, 40, 'Vodka Mint', '25.90', '2012-09-16 17:11:59', 5, 0),
(463, 40, 'Sensual Coco', '25.80', '2012-09-16 17:11:59', 5, 0),
(464, 40, 'Vodka Speed', '22.90', '2012-09-16 17:11:59', 5, 0),
(465, 52, 'Mojito', '30.00', '2012-09-16 17:12:41', 5, 0),
(466, 52, 'Fernet Cola', '34.90', '2012-09-16 17:12:41', 5, 0),
(467, 52, 'Mojito 1 lt', '32.80', '2012-09-16 17:12:42', 5, 0),
(468, 55, 'Frederica', '10.00', '2012-09-16 17:13:25', 5, 0),
(469, 55, 'Cuba Libre', '9.90', '2012-09-16 17:13:25', 5, 0),
(470, 21, 'Fernet Cola', '34.90', '2012-09-16 17:17:48', 5, 0),
(471, 21, 'Mojito 1 lt', '32.80', '2012-09-16 17:17:48', 5, 0),
(472, 21, 'Mojito Frozzen', '32.80', '2012-09-16 17:17:48', 5, 0),
(473, 61, 'Tragos Clasicos', '22.90', '2012-09-16 17:20:06', 5, 0),
(474, 61, 'Margarita de maracuya', '25.90', '2012-09-16 17:20:06', 5, 0),
(475, 61, 'Sensual Coco', '30.80', '2012-09-16 17:20:06', 5, 0),
(476, 61, 'Vodka Speed', '27.90', '2012-09-16 17:20:06', 5, 0),
(477, 55, 'Tragos Clasicos', '27.90', '2012-09-16 17:21:25', 2, 0),
(478, 55, 'Margarita de maracuya', '30.90', '2012-09-16 17:21:25', 2, 0),
(479, 55, 'Sensual Coco', '30.80', '2012-09-16 17:21:25', 2, 0),
(480, 55, 'Vodka Speed', '32.90', '2012-09-16 17:21:25', 2, 0),
(481, 21, 'Tragos Clasicos', '29.90', '2012-09-16 17:22:31', 3, 0),
(482, 21, 'Margarita de maracuya', '30.90', '2012-09-16 17:22:31', 3, 0),
(483, 21, 'Sensual Coco', '30.80', '2012-09-16 17:22:31', 3, 0),
(484, 21, 'Vodka Speed', '32.90', '2012-09-16 17:22:31', 3, 0),
(485, 32, 'Merengue de Limon', '14.90', '2012-09-16 17:23:04', 1, 0),
(486, 32, 'Pasion campari', '14.90', '2012-09-16 17:23:05', 1, 0),
(487, 32, 'Tragos Clasicos', '32.90', '2012-09-16 17:23:05', 1, 0),
(488, 32, 'Margarita de maracuya', '30.90', '2012-09-16 17:23:05', 1, 0),
(489, 32, 'Sensual Coco', '30.80', '2012-09-16 17:23:05', 1, 0),
(490, 32, 'Vodka Speed', '32.90', '2012-09-16 17:23:05', 1, 0),
(491, 17, 'Fernet Cola', '14.90', '2012-09-16 18:50:55', 5, 0),
(492, 1, 'Fernet Cola', '19.90', '2012-09-16 18:51:14', 5, 0),
(493, 15, 'Margarita de maracuya', '9.90', '2012-09-16 18:51:30', 5, 0),
(494, 15, 'Sensual Coco', '9.80', '2012-09-16 18:51:30', 5, 0),
(495, 15, 'Vodka Speed', '9.90', '2012-09-16 18:51:31', 5, 0),
(496, 10, 'Cocktail Night', '9.90', '2012-09-16 18:52:06', 3, 1),
(497, 10, 'Frederica', '10.00', '2012-09-16 18:52:06', 3, 1),
(498, 10, 'Cuba Libre', '9.90', '2012-09-16 18:52:06', 3, 1),
(499, 10, 'Caipiroshka', '10.00', '2012-09-16 18:52:06', 3, 1),
(500, 16, 'Daiquiri', '9.90', '2012-09-16 20:43:33', 3, 0),
(501, 16, 'Caiperinha 1 lt', '9.80', '2012-09-16 20:43:33', 1, 0),
(502, 16, 'Fernet & Cola 1lt', '9.90', '2012-09-16 20:43:33', 1, 0),
(503, 23, 'Mojito Japones', '9.90', '2012-09-16 20:45:22', 3, 0),
(504, 23, 'Fernet & Cola 1lt', '9.90', '2012-09-16 20:45:22', 3, 0),
(505, 19, 'Mojito Japones', '12.40', '2012-09-16 20:46:29', 4, 0),
(506, 19, 'Cocktail Night', '9.90', '2012-09-16 20:46:29', 4, 0),
(507, 19, 'Mojito Frozzen', '9.80', '2012-09-16 20:48:13', 2, 0),
(508, 19, 'Cocktail Night', '9.90', '2012-09-16 20:48:13', 3, 0),
(509, 34, 'Vodka Speed', '9.90', '2012-09-16 20:48:51', 5, 0),
(510, 20, 'Mojito 1 lt', '9.80', '2012-09-16 20:49:24', 1, 0),
(511, 60, 'Mojito 1 lt', '9.80', '2012-09-16 20:55:26', 2, 0),
(512, 34, 'Mojito 1 lt', '11.80', '2012-09-16 20:55:26', 2, 0),
(513, 34, 'Mojito Frozzen', '9.80', '2012-09-16 20:55:26', 1, 0),
(514, 22, 'Daiquiri', '9.90', '2012-09-16 21:01:06', 5, 0),
(515, 22, 'Frederica', '10.00', '2012-09-16 21:04:35', 3, 0),
(516, 22, 'Margarita de maracuya', '9.90', '2012-09-16 21:04:35', 1, 0),
(517, 23, 'Sensual Coco', '9.80', '2012-09-16 21:05:12', 3, 0),
(518, 23, 'Caiperinha 1 lt', '9.80', '2012-09-16 21:05:57', 4, 0),
(519, 32, 'Fernet Cola', '14.90', '2012-09-16 21:06:40', 1, 0),
(520, 18, 'Mojito', '10.00', '2012-09-16 21:21:07', 3, 0),
(521, 19, 'Mojito', '10.00', '2012-09-16 21:23:48', 1, 0),
(522, 29, 'Caiperinha 1 lt', '9.80', '2012-09-16 21:27:26', 2, 0),
(523, 23, 'Cocktail Night', '9.90', '2012-09-16 21:29:01', 2, 0),
(524, 18, 'Caipirinha', '9.90', '2012-09-16 21:36:01', 1, 0),
(525, 17, 'Fernet Cola', '14.90', '2012-09-17 22:16:59', 1, 0),
(526, 18, 'Fernet Cola', '14.90', '2012-09-17 22:17:39', 1, 0),
(527, 16, 'Mojito Frozzen', '9.80', '2012-09-17 22:18:42', 2, 0),
(528, 38, 'Fernet Cola', '14.90', '2012-09-17 22:24:33', 2, 0),
(529, 38, 'Caiperinha 1 lt', '9.80', '2012-09-17 22:24:33', 2, 0),
(530, 45, 'Fernet Cola', '14.90', '2012-09-17 22:25:46', 1, 0),
(531, 41, 'Caiperinha 1 lt', '9.80', '2012-09-17 22:26:57', 1, 0),
(532, 42, 'Caiperinha 1 lt', '9.80', '2012-09-17 22:30:15', 1, 0),
(533, 36, 'Caiperinha 1 lt', '9.80', '2012-09-17 22:35:54', 1, 0),
(534, 36, 'Caiperinha 1 lt', '10.80', '2012-09-17 22:35:57', 1, 0),
(535, 18, 'Margarita de maracuya', '9.90', '2012-09-17 22:50:22', 5, 0),
(536, 18, 'Caipiroshka', '10.00', '2012-09-17 22:51:39', 5, 0),
(537, 17, 'Fernet Cola', '14.90', '2012-09-17 23:07:31', 5, 0),
(538, 17, 'Mojito 1 lt', '9.80', '2012-09-17 23:13:53', 5, 0),
(539, 17, 'Mojito Frozzen', '9.80', '2012-09-18 07:48:39', 1, 0),
(540, 17, 'Fernet & Cola 1lt', '9.90', '2012-09-18 07:48:39', 1, 0),
(541, 16, 'Caipirinha', '9.90', '2012-09-18 07:49:03', 1, 0),
(542, 17, 'Gin Tonic', '9.80', '2012-09-18 07:49:14', 2, 0),
(543, 16, 'Mojito Frozzen', '9.80', '2012-09-18 07:50:22', 2, 0),
(544, 17, 'Merengue de Limon', '9.90', '2012-09-18 07:51:47', 2, 0),
(545, 17, 'Mojito', '10.00', '2012-09-18 08:04:42', 1, 0),
(546, 17, 'Frederica', '10.00', '2012-09-18 08:04:42', 1, 0),
(547, 16, 'Mojito', '10.00', '2012-09-18 08:13:06', 1, 0),
(548, 16, 'Mojito', '10.00', '2012-09-18 08:23:15', 1, 0),
(549, 17, 'Mojito', '10.00', '2012-09-18 08:24:54', 5, 0),
(550, 17, 'Mojito Frozzen', '9.80', '2012-09-18 08:24:54', 5, 0),
(551, 17, 'Caipiroshka', '10.00', '2012-09-18 08:24:54', 5, 0),
(552, 17, 'Vanesa Orgasmo', '9.90', '2012-09-18 08:24:54', 5, 0),
(553, 18, 'Caiperinha 1 lt', '9.80', '2012-09-18 08:26:45', 4, 0),
(554, 18, 'Cocktail Night', '9.90', '2012-09-18 08:26:45', 2, 0),
(555, 18, 'Frederica', '10.00', '2012-09-18 08:26:45', 2, 0),
(556, 18, 'Cocktail Night', '9.90', '2012-09-18 08:27:53', 5, 0),
(557, 18, 'Frederica', '10.00', '2012-09-18 08:27:53', 3, 0),
(558, 18, 'Cuba Libre', '9.90', '2012-09-18 08:27:53', 3, 0),
(559, 18, 'Sensual Coco', '9.80', '2012-09-18 08:27:53', 3, 0),
(560, 17, 'Mojito', '10.00', '2012-09-18 08:32:07', 5, 0),
(561, 17, 'Caiperinha 1 lt', '9.80', '2012-09-18 08:32:07', 1, 0),
(562, 16, 'Mojito', '10.00', '2012-09-18 08:37:41', 5, 0),
(563, 17, 'Mojito', '15.00', '2012-09-18 08:38:22', 2, 0),
(564, 17, 'Mojito', '10.00', '2012-09-18 08:40:30', 5, 0),
(565, 19, 'Mojito Frozzen', '9.80', '2012-09-18 08:41:15', 2, 0),
(566, 19, 'Daiquiri', '9.90', '2012-09-18 08:41:15', 2, 0),
(567, 19, 'Vanesa Orgasmo', '9.90', '2012-09-18 08:41:15', 2, 0),
(568, 19, 'Gin Tonic', '9.80', '2012-09-18 08:41:15', 2, 0),
(569, 19, 'Margarita de maracuya', '9.90', '2012-09-18 08:41:15', 2, 0),
(570, 19, 'Sensual Coco', '9.80', '2012-09-18 08:41:15', 2, 0),
(571, 16, 'Mojito', '10.00', '2012-09-18 23:48:24', 1, 0),
(572, 17, 'Mojito Frozzen', '9.80', '2012-09-18 23:57:44', 5, 0),
(573, 17, 'Vodka Mint', '9.90', '2012-09-18 23:57:44', 5, 0),
(574, 17, 'Cocktail Night', '9.90', '2012-09-18 23:57:44', 5, 0),
(575, 17, 'Cuba Libre', '9.90', '2012-09-18 23:57:44', 3, 0),
(576, 17, 'Caipiroshka', '10.00', '2012-09-18 23:57:44', 3, 0),
(577, 17, 'Caipirinha', '9.90', '2012-09-18 23:57:44', 3, 0),
(578, 17, 'Tragos Clasicos', '9.90', '2012-09-18 23:57:44', 4, 0),
(579, 17, 'Vodka Speed', '9.90', '2012-09-18 23:57:44', 5, 0),
(580, 17, 'Mojito', '10.00', '2012-09-19 00:06:24', 5, 0),
(581, 17, 'Mojito Frozzen', '9.80', '2012-09-19 00:06:25', 5, 0),
(582, 17, 'Daiquiri', '9.90', '2012-09-19 00:06:25', 5, 0),
(583, 17, 'Vodka Mint', '9.90', '2012-09-19 00:06:25', 5, 0),
(584, 17, 'Fernet & Cola 1lt', '9.90', '2012-09-19 00:06:25', 5, 0),
(585, 17, 'Cocktail Night', '9.90', '2012-09-19 00:06:25', 5, 0),
(586, 17, 'Cuba Libre', '9.90', '2012-09-19 00:06:25', 5, 0),
(587, 17, 'Vanesa Orgasmo', '9.90', '2012-09-19 00:06:25', 3, 0),
(588, 17, 'Caipirinha', '9.90', '2012-09-19 00:06:25', 4, 0),
(589, 17, 'Pasion campari', '9.90', '2012-09-19 00:06:25', 4, 0),
(590, 17, 'Margarita de maracuya', '9.90', '2012-09-19 00:06:25', 3, 0),
(591, 17, 'Vodka Speed', '9.90', '2012-09-19 00:06:25', 5, 0),
(592, 17, 'Mojito', '15.00', '2012-09-19 00:06:25', 5, 0),
(593, 17, 'Mojito Frozzen', '14.80', '2012-09-19 00:06:25', 5, 0),
(594, 17, 'Daiquiri', '14.90', '2012-09-19 00:06:25', 5, 0),
(595, 17, 'Vodka Mint', '14.90', '2012-09-19 00:06:25', 5, 0),
(596, 17, 'Fernet & Cola 1lt', '14.90', '2012-09-19 00:06:25', 5, 0),
(597, 17, 'Cocktail Night', '14.90', '2012-09-19 00:06:25', 5, 0),
(598, 17, 'Cuba Libre', '14.90', '2012-09-19 00:06:25', 5, 0),
(599, 17, 'Vanesa Orgasmo', '12.90', '2012-09-19 00:06:25', 3, 0),
(600, 17, 'Caipirinha', '13.90', '2012-09-19 00:06:25', 4, 0),
(601, 17, 'Pasion campari', '13.90', '2012-09-19 00:06:25', 4, 0),
(602, 17, 'Margarita de maracuya', '12.90', '2012-09-19 00:06:26', 3, 0),
(603, 17, 'Vodka Speed', '14.90', '2012-09-19 00:06:26', 5, 0),
(604, 18, 'Mojito', '10.00', '2012-09-19 00:09:31', 5, 0),
(605, 18, 'Daiquiri', '9.90', '2012-09-19 00:09:31', 2, 0),
(606, 18, 'Caiperinha 1 lt', '9.80', '2012-09-19 00:09:31', 5, 0),
(607, 18, 'Frederica', '10.00', '2012-09-19 00:09:31', 5, 0),
(608, 18, 'Caipiroshka', '10.00', '2012-09-19 00:09:31', 4, 0),
(609, 18, 'Gin Tonic', '9.80', '2012-09-19 00:09:31', 3, 0),
(610, 18, 'Merengue de Limon', '9.90', '2012-09-19 00:09:31', 3, 0),
(611, 18, 'Tragos Clasicos', '9.90', '2012-09-19 00:09:31', 5, 0),
(612, 18, 'Vodka Speed', '9.90', '2012-09-19 00:09:31', 5, 0),
(613, 18, 'Mojito 1 lt', '9.80', '2012-09-19 22:09:33', 5, 0),
(614, 18, 'Mojito Frozzen', '9.80', '2012-09-19 22:09:33', 4, 0),
(615, 18, 'Mojito Japones', '9.90', '2012-09-19 22:09:33', 4, 0),
(616, 18, 'Caiperinha 1 lt', '9.80', '2012-09-19 22:09:33', 4, 0),
(617, 18, 'Fernet & Cola 1lt', '9.90', '2012-09-19 22:09:33', 4, 0),
(618, 16, 'Mojito 1 lt', '9.80', '2012-09-22 21:41:53', 5, 0),
(619, 16, 'Mojito Frozzen', '9.80', '2012-09-22 21:41:53', 5, 0),
(620, 16, 'Daiquiri', '9.90', '2012-09-22 21:41:53', 5, 0),
(621, 17, 'Mojito Frozzen', '11.30', '2012-09-28 21:02:52', 2, 0),
(622, 17, 'Vodka Mint', '9.90', '2012-09-28 21:02:52', 2, 0),
(623, 17, 'Mojito Frozzen', '21.30', '2012-09-28 21:02:53', 2, 0),
(624, 17, 'Vodka Mint', '19.90', '2012-09-28 21:02:53', 2, 0),
(625, 17, 'Mojito Frozzen', '31.30', '2012-09-28 21:03:02', 2, 0),
(626, 17, 'Mojito Japones', '9.90', '2012-09-28 21:03:02', 2, 0),
(627, 18, 'Daiquiri', '11.40', '2012-09-28 21:12:24', 1, 0),
(628, 18, 'Mojito Japones', '19.90', '2012-09-28 21:12:24', 1, 0),
(629, 18, 'Vodka Mint', '29.90', '2012-09-28 21:12:24', 1, 0),
(630, 18, 'Caiperinha 1 lt', '9.80', '2012-09-28 21:12:24', 1, 0),
(631, 17, 'Mojito Frozzen', '31.30', '2012-09-28 21:18:06', 1, 0),
(632, 17, 'Daiquiri', '16.40', '2012-09-28 21:18:06', 1, 0),
(633, 17, 'Vodka Mint', '34.90', '2012-09-28 21:18:06', 1, 0),
(634, 17, 'Mojito 1 lt', '11.30', '2012-09-28 21:22:24', 2, 0),
(635, 17, 'Mojito Frozzen', '31.30', '2012-09-28 21:22:24', 2, 0),
(636, 17, 'Daiquiri', '21.40', '2012-09-28 21:22:24', 2, 0),
(637, 17, 'Mojito 1 lt', '21.30', '2012-09-28 21:25:11', 2, 0),
(638, 17, 'Mojito Frozzen', '31.30', '2012-09-28 21:25:11', 2, 0),
(639, 17, 'Vodka Mint', '34.90', '2012-09-28 21:25:12', 2, 0),
(640, 16, 'Mojito 1 lt', '31.30', '2012-09-28 21:32:10', 1, 0),
(641, 16, 'Mojito Frozzen', '31.30', '2012-09-28 21:32:10', 1, 0),
(642, 16, 'Mojito Japones', '24.90', '2012-09-28 21:32:10', 1, 0),
(643, 16, 'Vodka Mint', '34.90', '2012-09-28 21:32:10', 1, 0),
(644, 16, 'Mojito 1 lt', '31.30', '2012-10-01 22:54:33', 3, 0),
(645, 16, 'Mojito Frozzen', '31.30', '2012-10-01 23:14:05', 1, 0),
(646, 16, 'Mojito Japones', '29.90', '2012-10-01 23:14:05', 1, 0),
(647, 16, 'Mojito Frozzen', '31.30', '2012-10-01 23:17:16', 1, 0),
(648, 16, 'Mojito 1 lt', '31.30', '2012-10-01 23:20:06', 1, 0),
(649, 16, 'Mojito Frozzen', '31.30', '2012-10-01 23:20:06', 1, 0),
(650, 16, 'Daiquiri', '31.40', '2012-10-01 23:20:06', 1, 0),
(651, 16, 'Mojito 1 lt', '31.30', '2012-10-01 23:21:15', 1, 0),
(652, 16, 'Mojito Frozzen', '31.30', '2012-10-01 23:21:16', 1, 0),
(653, 16, 'Daiquiri', '31.40', '2012-10-01 23:21:17', 1, 0),
(654, 16, 'Mojito 1 lt', '31.30', '2012-10-01 23:25:15', 1, 0),
(655, 16, 'Mojito Frozzen', '31.30', '2012-10-01 23:25:17', 1, 0),
(656, 16, 'Daiquiri', '31.40', '2012-10-01 23:25:18', 1, 0),
(657, 16, 'Gin Tonic', '9.80', '2012-10-01 23:25:18', 2, 0),
(658, 16, 'Merengue de Limon', '9.90', '2012-10-01 23:25:19', 2, 0),
(659, 16, 'Pasion campari', '9.90', '2012-10-01 23:25:19', 2, 0),
(660, 16, 'Mojito 1 lt', '31.30', '2012-10-01 23:29:21', 1, 0),
(661, 16, 'Mojito Frozzen', '31.30', '2012-10-01 23:29:21', 1, 0),
(662, 16, 'Daiquiri', '31.40', '2012-10-01 23:29:21', 1, 0),
(663, 16, 'Gin Tonic', '19.80', '2012-10-01 23:34:35', 2, 0),
(664, 16, 'Caipirinha', '9.90', '2012-10-01 23:34:36', 2, 0),
(665, 16, 'Merengue de Limon', '19.90', '2012-10-01 23:34:36', 2, 0),
(666, 16, 'Mojito 1 lt', '31.30', '2012-10-02 07:54:53', 1, 0),
(667, 16, 'Mojito Frozzen', '31.30', '2012-10-02 07:54:55', 1, 0),
(668, 16, 'Daiquiri', '31.40', '2012-10-02 07:54:56', 1, 0),
(669, 16, 'Daiquiri', '31.40', '2012-10-02 07:56:18', 1, 0),
(670, 16, 'Mojito 1 lt', '31.30', '2012-10-02 08:12:28', 1, 0),
(671, 16, 'Mojito Frozzen', '31.30', '2012-10-02 08:12:28', 1, 0),
(672, 16, 'Mojito Frozzen', '31.30', '2013-07-06 09:40:48', 2, 0),
(673, 16, 'Daiquiri', '31.40', '2013-07-06 09:40:48', 2, 0),
(674, 16, 'Mojito 1 lt', '9.80', '2015-01-04 00:27:53', 2, 0),
(675, 16, 'Daiquiri', '9.90', '2015-01-04 00:27:53', 1, 0),
(676, 16, 'Mojito 1 lt', '19.80', '2015-01-04 00:28:14', 2, 0),
(677, 16, 'Daiquiri', '14.90', '2015-01-04 00:28:14', 1, 0),
(678, 16, 'Vodka Mint', '9.90', '2015-01-04 00:28:14', 4, 0),
(679, 16, 'Caiperinha 1 lt', '9.80', '2015-01-04 00:28:14', 3, 0),
(680, 16, 'Fernet & Cola 1lt', '9.90', '2015-01-04 00:28:14', 3, 0),
(681, 16, 'Mojito 1 lt', '9.80', '2015-01-13 00:16:53', 1, 0),
(682, 16, 'Mojito Frozzen', '9.80', '2015-01-13 00:16:53', 1, 0),
(683, 16, 'Daiquiri', '9.90', '2015-01-13 00:16:53', 1, 0);
--
-- Base de datos: `webauth`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_pwd`
--

CREATE TABLE IF NOT EXISTS `user_pwd` (
  `name` char(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `pass` char(32) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Volcado de datos para la tabla `user_pwd`
--

INSERT INTO `user_pwd` (`name`, `pass`) VALUES
('xampp', 'wampp');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
