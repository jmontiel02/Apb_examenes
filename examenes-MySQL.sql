-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-05-2021 a las 03:38:50
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `examenes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acceso`
--

CREATE TABLE `acceso` (
  `codigo` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `rol` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `acceso`
--

INSERT INTO `acceso` (`codigo`, `nombre`, `password`, `rol`) VALUES
('100070012', 'ADRIANA CAROLINA HERNANDEZ MONTERROZA', '12345', 'alumno'),
('100070013', 'ADRIANA MARCELA REY SANCHEZ', '12346', 'alumno'),
('100070014', 'ALEJANDRO ABONDANO ACEVEDO', '12347', 'alumno'),
('100070015', 'ALEJANDRO ABONDANO ACEVEDO', '12348', 'alumno'),
('100070016', 'ANDREA CATALINA ACERO CARO', '12349', 'alumno'),
('100070017', 'ANDREA LILIANA CRUZ GARCIA', '12350', 'alumno'),
('100070018', 'ANDRES FELIPE VILLA MONROY', '12351', 'alumno'),
('100070019', 'ANGELA PATRICIA MAHECHA PI?EROS', '12352', 'alumno'),
('100070020', 'ANGELICA LISSETH BLANCO CONCHA', '12353', 'alumno'),
('100070021', 'ANGELICA MARIA ROCHA GARCIA', '12354', 'alumno'),
('100070022', 'ANGIE TATIANA FERN?NDEZ MART?NEZ', '12355', 'alumno'),
('100070023', 'TATIANA ANGIE MART?NEZ FERN?NDEZ ', '12356', 'alumno'),
('100070024', 'CAMILO VILLAMIZAR ARISTIZABAL', '12357', 'alumno'),
('100070025', 'CAMILO RODR?GUEZ BOTERO ', '12358', 'alumno'),
('100070026', 'CAMILO ALBERTO CORT?S MONTEJO', '12359', 'alumno'),
('100070027', 'CAMILO ENRIQUE GOMEZ RODRIGUEZ', '12360', 'alumno'),
('100070028', 'CARLOS ANDR?S POLO CASTELLANOS ', '12361', 'alumno'),
('100070029', 'CARLOS DIDIER CASTA?O CONTRERAS', '12362', 'alumno'),
('100070030', 'CAROL RUCHINA GOMEZ GIANINE', '12363', 'alumno'),
('100070031', 'CAROLINA PINTOR PINZON', '12364', 'alumno'),
('100070032', 'CATHERINE OSPINA ALFONSO', '12365', 'alumno'),
('100070033', 'CINTHYA FERNANDA DUSS?N GUZM?N ', '12366', 'alumno'),
('100070034', 'CLAUDIA LILIANA TORRES FRIAS ', '12367', 'alumno'),
('100070035', 'CRISTINA ELIZABETH BARTHEL GUARDIOLA', '12368', 'alumno'),
('UNI-1020', 'M?NICA ALEXANDRA  CAMACHO AMAYA', '12369', 'profesor'),
('UNI-1021', 'JOSE GUILLERMO MARIN ZUBIETA', '12370', 'profesor'),
('UNI-1022', 'HUGO ANDR?S  CAMARGO VARGAS', '12371', 'profesor'),
('UNI-1023', 'INGRID ROCIO GUERRERO PENAGOS', '12372', 'profesor'),
('UNI-1024', 'IV?N DAVID CORAL BURBANO ', '12373', 'profesor'),
('UNI-1025', 'IVONNE JOULIETTE BARRERA LOPEZ', '12374', 'profesor'),
('UNI-1026', 'JENNY FERNANDA S?NCHEZ ARENAS', '12375', 'profesor'),
('UNI-1027', 'JENNY VIVIANA MONCALEANO PRECIADO', '12376', 'profesor'),
('UNI-1028', 'JORGE ESTEBAN REY BOTERO', '12377', 'profesor'),
('UNI-1029', 'JORGE MARIO  OROZCO DUSS?N', '12378', 'profesor'),
('UNI-1030', 'M?NICA NATALIA CAMARGO MENDOZA', '12379', 'profesor'),
('UNI-1031', 'NATALIA ANDREA  GUTI?RREZ VELASCO', '12380', 'profesor'),
('UNI-1032', 'NATALIA MELISSA BARRERO FORERO', '12381', 'profesor'),
('UNI-1033', 'NATALIA VIVY CASAS P?EZ ', '12382', 'profesor'),
('UNI-1034', 'OLGA VIVIANA OVALLE SOLANO', '12383', 'profesor'),
('UNI-1035', 'OSCAR DAVID COLMENARES BARBUDO', '12384', 'profesor'),
('UNI-1036', 'OSCAR JULIAN ULLOA ORJUELA', '12385', 'profesor'),
('UNI-1037', 'PABLO URIBE ANTIA', '12386', 'profesor'),
('UNI-1038', 'SANDRA XIMENA ALVAREZ CASTILLO', '12387', 'profesor'),
('UNI-1040', 'SEBASTIAN BORDA MELGUIZO', '12388', 'profesor'),
('UNI-1041', 'YIRIAM LILIAM  OCHOA SABOGAL', '12389', 'profesor'),
('UNI-1042', 'YURANY CATALINA CIFUENTES MENDEZ', '12390', 'profesor'),
('UNI-1043', 'YURI CATALINA  SALAZAR ARISTIZABAL', '12391', 'profesor'),
('123456789', 'Juancho', '123456789', 'alumno'),
('123211', 'Juan Carlos', '123211', 'alumno');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `no_matricula` int(30) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `grupo_clase` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`no_matricula`, `nombre`, `grupo_clase`) VALUES
(123211, 'Juan Carlos', 'ING_SIST 128CSIS-1'),
(100070012, 'ADRIANA CAROLINA HERNANDEZ MON', 'ING_SIST 128CSIS-1'),
(100070013, 'ADRIANA MARCELA REY SANCHEZ', 'ING_IND 128CSIS-2'),
(100070014, 'ALEJANDRO ABONDANO ACEVEDO', 'ING_CVL 128CSIS-3'),
(100070015, 'ALEJANDRO ABONDANO ACEVEDO', 'ING_SIST 128CSIS-1'),
(100070016, 'ANDREA CATALINA ACERO CARO', 'ING_SIST 128CSIS-1'),
(100070017, 'ANDREA LILIANA CRUZ GARCIA', 'ING_SIST 128CSIS-1'),
(100070018, 'ANDRES FELIPE VILLA MONROY', 'ING_SIST 128CSIS-1'),
(100070019, 'ANGELA PATRICIA MAHECHA PI?ERO', 'ING_SIST 128CSIS-1'),
(100070020, 'ANGELICA LISSETH BLANCO CONCHA', 'ING_SIST 128CSIS-1'),
(100070021, 'ANGELICA MARIA ROCHA GARCIA', 'ING_SIST 128CSIS-1'),
(100070022, 'ANGIE TATIANA FERN?NDEZ MART?N', 'ING_SIST 128CSIS-1'),
(100070023, 'TATIANA ANGIE MART?NEZ FERN?ND', 'ING_SIST 128CSIS-1'),
(100070024, 'CAMILO VILLAMIZAR ARISTIZABAL', 'ING_IND 128CSIS-2'),
(100070025, 'CAMILO RODR?GUEZ BOTERO ', 'ING_IND 128CSIS-2'),
(100070026, 'CAMILO ALBERTO CORT?S MONTEJO', 'ING_IND 128CSIS-2'),
(100070027, 'CAMILO ENRIQUE GOMEZ RODRIGUEZ', 'ING_IND 128CSIS-2'),
(100070028, 'CARLOS ANDR?S POLO CASTELLANOS', 'ING_IND 128CSIS-2'),
(100070029, 'CARLOS DIDIER CASTA?O CONTRERA', 'ING_CVL 128CSIS-3'),
(100070030, 'CAROL RUCHINA GOMEZ GIANINE', 'ING_CVL 128CSIS-3'),
(100070031, 'CAROLINA PINTOR PINZON', 'ING_CVL 128CSIS-3'),
(100070032, 'CATHERINE OSPINA ALFONSO', 'ING_CVL 128CSIS-3'),
(100070033, 'CINTHYA FERNANDA DUSS?N GUZM?N', 'ING_CVL 128CSIS-3'),
(100070034, 'CLAUDIA LILIANA TORRES FRIAS ', 'ING_CVL 128CSIS-3'),
(100070035, 'CRISTINA ELIZABETH BARTHEL GUA', 'ING_CVL 128CSIS-3'),
(123456789, 'Juancho', 'ING_SIST 128CSIS-1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos_controles_escritos`
--

CREATE TABLE `alumnos_controles_escritos` (
  `fecha` date NOT NULL,
  `calificacion` float DEFAULT NULL,
  `alumnos_no_matricula` int(30) DEFAULT NULL,
  `controles_escritos_no_control` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `alumnos_controles_escritos`
--

INSERT INTO `alumnos_controles_escritos` (`fecha`, `calificacion`, `alumnos_no_matricula`, `controles_escritos_no_control`) VALUES
('2021-05-15', 1.2, 100070012, 7000),
('2021-05-15', 3.4, 100070013, 15037),
('2021-05-17', 2, 100070014, 15039),
('2021-05-18', 4, 100070015, 15040),
('2021-05-15', 4.3, 100070016, 15041),
('2021-05-15', 1.7, 100070017, 15042),
('2021-05-15', 4, 100070018, 15043),
('2021-05-22', 5, 100070019, 15044),
('2021-05-18', 4, 100070020, 15045),
('2021-05-18', 4.6, 100070021, 15046),
('2021-05-13', 3.2, 100070012, 15039),
('2021-05-12', 3.2, 100070012, 15041),
('2021-05-13', 2.4, 123456789, 7000),
('2021-05-14', 1.3, 123211, 15037);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos_controles_practicos`
--

CREATE TABLE `alumnos_controles_practicos` (
  `fecha` date NOT NULL,
  `calificacion` float DEFAULT NULL,
  `alumnos_no_matricula` int(30) DEFAULT NULL,
  `controles_practicos_cod_practica` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `alumnos_controles_practicos`
--

INSERT INTO `alumnos_controles_practicos` (`fecha`, `calificacion`, `alumnos_no_matricula`, `controles_practicos_cod_practica`) VALUES
('2021-05-31', 3.9, 100070028, 9741),
('2021-06-01', 2, 100070029, 14790),
('2021-06-02', 3, 100070030, 3456789),
('2021-06-03', 3, 100070031, 12345678),
('2021-06-04', 3, 100070032, 87654321),
('2021-05-08', 4.2, 100070012, 9741),
('2021-05-13', 3.4, 123456789, 9741),
('2021-05-14', 4.5, 123211, 3456789);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `controles_escritos`
--

CREATE TABLE `controles_escritos` (
  `no_control` int(15) NOT NULL,
  `cant_preguntas` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `controles_escritos`
--

INSERT INTO `controles_escritos` (`no_control`, `cant_preguntas`) VALUES
(7000, 10),
(15037, 10),
(15039, 3),
(15040, 2),
(15041, 1),
(15042, 2),
(15043, 3),
(15044, 2),
(15045, 2),
(15046, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `controles_practicos`
--

CREATE TABLE `controles_practicos` (
  `cod_practica` int(15) NOT NULL,
  `titulo` varchar(70) NOT NULL,
  `niv_dificultad` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `controles_practicos`
--

INSERT INTO `controles_practicos` (`cod_practica`, `titulo`, `niv_dificultad`) VALUES
(9741, 'Bachiller', 'Medio'),
(14790, 'Tecnico', 'Facil'),
(3456789, 'Ingeniero', 'Facil'),
(12345678, 'Ingeniero', 'Facil'),
(87654321, 'Tecnologo', 'Medio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `controles_practicos_profesores`
--

CREATE TABLE `controles_practicos_profesores` (
  `controles_practicos_cod_practica` int(15) NOT NULL,
  `profesores_dni` varchar(15) NOT NULL,
  `fecha_diseño` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `controles_practicos_profesores`
--

INSERT INTO `controles_practicos_profesores` (`controles_practicos_cod_practica`, `profesores_dni`, `fecha_diseño`) VALUES
(9741, 'UNI-1024', '2021-05-06'),
(14790, 'UNI-1025', '2021-05-05'),
(12345678, 'UNI-1026', '2021-05-03'),
(87654321, 'UNI-1027', '2021-05-04'),
(3456789, 'UNI-1028', '2021-05-05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `msn`
--

CREATE TABLE `msn` (
  `nombre` varchar(100) DEFAULT NULL,
  `Asunto` text NOT NULL,
  `envio` text DEFAULT NULL,
  `respuesta` text DEFAULT NULL,
  `id_alumno` int(11) NOT NULL,
  `estado` int(11) DEFAULT NULL,
  `fecha` varchar(20) DEFAULT NULL,
  `id_profe` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `msn`
--

INSERT INTO `msn` (`nombre`, `Asunto`, `envio`, `respuesta`, `id_alumno`, `estado`, `fecha`, `id_profe`) VALUES
('ADRIANA CAROLINA HERNANDEZ MONTERROZA', 'asdfg', 'zsdfghj', 'En Proceso', 100070012, 1, '2021-05-12', 'UNI-1020'),
('ADRIANA CAROLINA HERNANDEZ MONTERROZA', 'NOTA', 'MENSAJE De PRUEBA', 'En Proceso', 100070012, 0, '2021-05-12', 'UNI-1020'),
('ADRIANA CAROLINA HERNANDEZ MONTERROZA', 'CORREGIR NOTA', 'CORREGIR NOTA CRV', 'En Proceso', 100070012, 0, '2021-05-13', 'UNI-1020'),
('ADRIANA CAROLINA HERNANDEZ MONTERROZA', 'ASUNTO', 'Cordial saludo', 'En Proceso', 100070012, 0, '2021-05-14', 'UNI-1020');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `id` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `puntos` decimal(4,0) NOT NULL,
  `controles_escritos_no_control` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id`, `descripcion`, `puntos`, `controles_escritos_no_control`) VALUES
(34562, 'Una base de datos es:', '1', 15037),
(34563, 'Un SGBD es?', '1', 15037),
(34564, 'Uno de los principales objetivos de un sistema manejador de Base de datos SGBD ES?', '1', 15037),
(34565, 'Garantizar la coherencia de los datos almacenados', '1', 15037),
(34566, 'La integridad en Base de datos hace referencia?', '1', 15037),
(34567, 'Campo particular dentro del registro', '1', 15037),
(34568, 'Escriba un query que regrese todos los departamentos en la table (sin duplicados).', '1', 15037),
(34569, 'Escriba una query que regrese el nombre y salario del profesor con el salario m?s alto.', '1', 15037),
(34570, 'Una entidad es toda cosa u objeto significativo (real ? imaginario) del cual se requiere conocer ? almacenar informaci?n.', '1', 15037),
(34571, 'El comando Alter table se utiliza para crear una nueva tabla en la base de datos', '1', 15037);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `dni` varchar(15) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`dni`, `nombre`, `apellido`) VALUES
('UNI-1020', 'MONICA ALEXANDRA', 'CAMACHO AMAYA'),
('UNI-1021', 'JOSE GUILLERMO', 'MARIN ZUBIETA'),
('UNI-1022', 'HUGO ANDR?S', 'CAMARGO VARGAS'),
('UNI-1023', 'INGRID ROCIO', 'GUERRERO PENAGOS'),
('UNI-1024', 'IVAN DAVID', 'CORAL BURBANO '),
('UNI-1025', 'IVONNE JOULIETTE', 'BARRERA LOPEZ'),
('UNI-1026', 'JENNY FERNANDA', 'SANCHEZ ARENAS'),
('UNI-1027', 'JENNY VIVIANA', 'MONCALEANO PRECIADO'),
('UNI-1028', 'JORGE ESTEBAN', 'REY BOTERO'),
('UNI-1029', 'JORGE MARIO ', 'OROZCO DUSSAN'),
('UNI-1030', 'MONICA NATALIA', 'CAMARGO MENDOZA'),
('UNI-1031', 'NATALIA ANDREA', 'GUTIERREZ VELASCO'),
('UNI-1032', 'NATALIA MELISSA', 'BARRERO FORERO'),
('UNI-1033', 'NATALIA VIVY', 'CASAS PAEZ'),
('UNI-1034', 'OLGA VIVIANA', 'OVALLE SOLANO'),
('UNI-1035', 'OSCAR DAVID', 'COLMENARES BARBUDO'),
('UNI-1036', 'OSCAR JULIAN', 'ULLOA ORJUELA'),
('UNI-1037', 'PABLO', 'URIBE ANTIA'),
('UNI-1038', 'SANDRA XIMENA', 'ALVAREZ CASTILLO'),
('UNI-1039', 'SANDRA XIMENA', 'SANDRA XIMENA'),
('UNI-1040', 'SEBASTIAN', 'BORDA MELGUIZO'),
('UNI-1041', 'YIRIAM LILIAM ', 'OCHOA SABOGAL'),
('UNI-1042', 'YURANY CATALINA', 'CIFUENTES MENDEZ'),
('UNI-1043', 'YURI CATALINA ', 'SALAZAR ARISTIZABAL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas`
--

CREATE TABLE `respuestas` (
  `id` int(11) NOT NULL,
  `respuesta` text CHARACTER SET utf8 NOT NULL,
  `correcta` tinyint(1) NOT NULL,
  `preguntas_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `respuestas`
--

INSERT INTO `respuestas` (`id`, `respuesta`, `correcta`, `preguntas_id`) VALUES
(1, 'Representaci?n simb?lica (num?rica alfab?tica algor?tmica etc.) de un atributo o una caracter?stica de una entidad', 0, 34562),
(2, 'Colecci?n de datos y objetos estructurados e interrelacionados sobre un tema o prop?sito espec?fico.', 1, 34562),
(3, 'Conjunto de programas para acceder a datos.', 0, 34562),
(4, 'Aplicaci?n utilizada para capturar informaci?n.', 0, 34562),
(5, ' Es una relaci?n de datos relacionados interrelacionados y un conjunto de programas para acceder a dichos datos', 1, 34563),
(6, 'Es aquel que permite tener acceso a los usuarios de datos organizados mediante el modelo de datos', 0, 34563),
(7, 'Una serie Datos no relacionados que se pueden modificar', 0, 34563),
(8, 'Es un programa de Software que no se puede modificar', 0, 34563),
(9, 'Realizar la Representaci?n simb?lica (num?rica alfab?tica algor?tmica etc.) de un atributo o una caracter?stica de una entidad', 0, 34564),
(10, 'Acceder a toda la informaci?n de la base de datos', 0, 34564),
(11, 'Disponer de datos para ser compartidos por diferentes usuarios y aplicaciones', 1, 34564),
(12, 'Generar redundancia de los datos', 0, 34564),
(13, 'VERDADERO', 1, 34565),
(14, 'FALSO', 0, 34565),
(15, 'La informaci?n almacenada en la base de datos est? libre de errores', 1, 34566),
(16, 'Solo las personas autorizadas accedan a la informaci?n.', 0, 34566),
(17, ' Los datos sean numericos', 0, 34566),
(18, 'Las tablas tengan llaves primarias.', 0, 34566),
(19, ' Primary Key', 1, 34567),
(20, 'Clave for?nea', 0, 34567),
(21, 'Relaci?n', 0, 34567),
(22, 'Dato', 0, 34567),
(23, 'Select department from salaries where salary=0;', 0, 34568),
(24, 'SELECT DISTINCT Department FROM SALARIES;', 1, 34568),
(25, ' SELECT all Department FROM SALARIES;', 0, 34568),
(26, ' SELECT DISTINC Department FROM SALARIES;', 0, 34568),
(27, 'SELECT Professor_Name', 0, 34569),
(28, ' SELECT Professor_Name', 0, 34569),
(29, ' SELECT Professor_Name', 0, 34569),
(30, 'SELECT Professor_Name', 0, 34569),
(31, ' Verdadero', 1, 34570),
(32, 'FALSO', 0, 34570),
(33, 'VERDADERO', 0, 34571),
(34, 'FALSO', 1, 34571);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistaacesso`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistaacesso` (
`codigo` varchar(50)
,`nombre` varchar(50)
,`password` varchar(50)
,`rol` varchar(40)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistaalmunoscontrolesescritos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistaalmunoscontrolesescritos` (
`fecha` date
,`calificacion` float
,`alumnos_no_matricula` int(30)
,`controles_escritos_no_control` int(15)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistaalumnos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistaalumnos` (
`no_matricula` int(30)
,`nombre` varchar(30)
,`grupo_clase` varchar(30)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistaalumnoscontrolespracticos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistaalumnoscontrolespracticos` (
`fecha` date
,`calificacion` float
,`alumnos_no_matricula` int(30)
,`controles_practicos_cod_practica` int(15)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistaprofesores`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistaprofesores` (
`dni` varchar(15)
,`nombre` varchar(20)
,`apellido` varchar(20)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vistaacesso`
--
DROP TABLE IF EXISTS `vistaacesso`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vistaacesso`  AS  select `acceso`.`codigo` AS `codigo`,`acceso`.`nombre` AS `nombre`,`acceso`.`password` AS `password`,`acceso`.`rol` AS `rol` from `acceso` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistaalmunoscontrolesescritos`
--
DROP TABLE IF EXISTS `vistaalmunoscontrolesescritos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vistaalmunoscontrolesescritos`  AS  select `alumnos_controles_escritos`.`fecha` AS `fecha`,`alumnos_controles_escritos`.`calificacion` AS `calificacion`,`alumnos_controles_escritos`.`alumnos_no_matricula` AS `alumnos_no_matricula`,`alumnos_controles_escritos`.`controles_escritos_no_control` AS `controles_escritos_no_control` from `alumnos_controles_escritos` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistaalumnos`
--
DROP TABLE IF EXISTS `vistaalumnos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vistaalumnos`  AS  select `alumnos`.`no_matricula` AS `no_matricula`,`alumnos`.`nombre` AS `nombre`,`alumnos`.`grupo_clase` AS `grupo_clase` from `alumnos` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistaalumnoscontrolespracticos`
--
DROP TABLE IF EXISTS `vistaalumnoscontrolespracticos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vistaalumnoscontrolespracticos`  AS  select `alumnos_controles_practicos`.`fecha` AS `fecha`,`alumnos_controles_practicos`.`calificacion` AS `calificacion`,`alumnos_controles_practicos`.`alumnos_no_matricula` AS `alumnos_no_matricula`,`alumnos_controles_practicos`.`controles_practicos_cod_practica` AS `controles_practicos_cod_practica` from `alumnos_controles_practicos` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistaprofesores`
--
DROP TABLE IF EXISTS `vistaprofesores`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vistaprofesores`  AS  select `profesores`.`dni` AS `dni`,`profesores`.`nombre` AS `nombre`,`profesores`.`apellido` AS `apellido` from `profesores` ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`no_matricula`),
  ADD KEY `idx_alumnos_controles_escritos` (`no_matricula`);

--
-- Indices de la tabla `alumnos_controles_escritos`
--
ALTER TABLE `alumnos_controles_escritos`
  ADD KEY `fk_alumnos_controles_escritos` (`alumnos_no_matricula`),
  ADD KEY `fk_controles_escritos_alumnos` (`controles_escritos_no_control`);

--
-- Indices de la tabla `alumnos_controles_practicos`
--
ALTER TABLE `alumnos_controles_practicos`
  ADD KEY `fk_alumnos_controles_practicos` (`alumnos_no_matricula`),
  ADD KEY `fk_controles_practicos_alumnos` (`controles_practicos_cod_practica`);

--
-- Indices de la tabla `controles_escritos`
--
ALTER TABLE `controles_escritos`
  ADD PRIMARY KEY (`no_control`);

--
-- Indices de la tabla `controles_practicos`
--
ALTER TABLE `controles_practicos`
  ADD PRIMARY KEY (`cod_practica`);

--
-- Indices de la tabla `controles_practicos_profesores`
--
ALTER TABLE `controles_practicos_profesores`
  ADD KEY `fk_controles_practicos_profesores` (`controles_practicos_cod_practica`),
  ADD KEY `fk_profesores_controles_practicos` (`profesores_dni`);

--
-- Indices de la tabla `msn`
--
ALTER TABLE `msn`
  ADD KEY `fk_msn_alumno` (`id_alumno`);

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_controles_escritos_preguntas` (`controles_escritos_no_control`);

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`dni`);

--
-- Indices de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_preguntas_respuestas` (`preguntas_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `controles_practicos`
--
ALTER TABLE `controles_practicos`
  MODIFY `cod_practica` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87654322;

--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34572;

--
-- AUTO_INCREMENT de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumnos_controles_escritos`
--
ALTER TABLE `alumnos_controles_escritos`
  ADD CONSTRAINT `fk_alumnos_controles_escritos` FOREIGN KEY (`alumnos_no_matricula`) REFERENCES `alumnos` (`no_matricula`),
  ADD CONSTRAINT `fk_controles_escritos_alumnos` FOREIGN KEY (`controles_escritos_no_control`) REFERENCES `controles_escritos` (`no_control`);

--
-- Filtros para la tabla `alumnos_controles_practicos`
--
ALTER TABLE `alumnos_controles_practicos`
  ADD CONSTRAINT `fk_alumnos_controles_practicos` FOREIGN KEY (`alumnos_no_matricula`) REFERENCES `alumnos` (`no_matricula`),
  ADD CONSTRAINT `fk_controles_practicos_alumnos` FOREIGN KEY (`controles_practicos_cod_practica`) REFERENCES `controles_practicos` (`cod_practica`);

--
-- Filtros para la tabla `controles_practicos_profesores`
--
ALTER TABLE `controles_practicos_profesores`
  ADD CONSTRAINT `fk_controles_practicos_profesores` FOREIGN KEY (`controles_practicos_cod_practica`) REFERENCES `controles_practicos` (`cod_practica`),
  ADD CONSTRAINT `fk_profesores_controles_practicos` FOREIGN KEY (`profesores_dni`) REFERENCES `profesores` (`dni`);

--
-- Filtros para la tabla `msn`
--
ALTER TABLE `msn`
  ADD CONSTRAINT `fk_msn_alumno` FOREIGN KEY (`id_alumno`) REFERENCES `alumnos` (`no_matricula`);

--
-- Filtros para la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD CONSTRAINT `fk_controles_escritos_preguntas` FOREIGN KEY (`controles_escritos_no_control`) REFERENCES `controles_escritos` (`no_control`);

--
-- Filtros para la tabla `respuestas`
--
ALTER TABLE `respuestas`
  ADD CONSTRAINT `respuestas_ibfk_1` FOREIGN KEY (`preguntas_id`) REFERENCES `preguntas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
