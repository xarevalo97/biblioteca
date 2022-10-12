-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 06-06-2022 a las 05:21:01
-- Versión del servidor: 10.5.15-MariaDB-cll-lve
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `u456244297_biblioteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE `autor` (
  `id` int(11) NOT NULL,
  `autor` varchar(150) NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `autor`
--

INSERT INTO `autor` (`id`, `autor`, `imagen`, `estado`) VALUES
(1, 'simeon marinkovic', 'default-avatar.png', 1),
(2, 'michelle medlock adams ', 'default-avatar.png', 1),
(3, 'panamericana ', 'default-avatar.png', 1),
(4, 'patricia iglecia torres ', 'default-avatar.png', 5),
(6, 'sigmar ', 'default-avatar.png', 1),
(7, 'david cherician ', 'default-avatar.png', 1),
(8, 'Andres pascuas cano ', 'default-avatar.png', 1),
(9, 'carolina micha  . Maria fernada rodrigo ', 'default-avatar.png', 1),
(10, 'maria alejandra daza ', 'default-avatar.png', 1),
(11, 'rocio parra parra', 'default-avatar.png', 1),
(12, ' eric carle ', 'default-avatar.png', 1),
(15, 'Prueba', 'default-avatar.png', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `categoria` varchar(45) DEFAULT NULL,
  `estado` int(11) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracion`
--

CREATE TABLE `configuracion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `direccion` text NOT NULL,
  `correo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `configuracion`
--

INSERT INTO `configuracion` (`id`, `nombre`, `telefono`, `direccion`, `correo`) VALUES
(1, 'Instituto Nacional de El Rosario', '2330-3252', '6a Calle Pte. El Rosario', 'iner@iner.edu.sv');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `editorial`
--

CREATE TABLE `editorial` (
  `id` int(11) NOT NULL,
  `editorial` varchar(150) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `editorial`
--

INSERT INTO `editorial` (`id`, `editorial`, `estado`) VALUES
(4, 'Panamericana', 1),
(5, 'Windy Hollow Books', 1),
(6, 'TRILLAS', 1),
(7, 'Longseller 2016', 1),
(8, 'Tiempo de leer', 1),
(9, 'Sigmar', 1),
(10, 'Nueva Editorial', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grado`
--

CREATE TABLE `grado` (
  `id` int(11) NOT NULL,
  `grado` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `grado`
--

INSERT INTO `grado` (`id`, `grado`, `estado`) VALUES
(1, 'Educacion Inicial', 1),
(2, 'Educacion Parvularia', 1),
(3, '1° GRADO', 1),
(4, '2° GRADO', 1),
(5, '3° GRADO', 1),
(6, '4° GRADO', 1),
(7, '5° GRADO', 1),
(8, '6° GRADO', 1),
(9, '7° GRADO', 1),
(10, '8° GRADO', 1),
(11, '9° GRADO', 1),
(12, '1° AÑO', 1),
(13, '2° AÑO', 1),
(14, '3° AÑO', 1),
(15, 'No Aplica', 1),
(16, 'Para uso general de C.E.', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `institucion`
--

CREATE TABLE `institucion` (
  `id` int(11) NOT NULL,
  `codigo` varchar(50) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `institucion` text COLLATE utf8_spanish_ci NOT NULL,
  `departamento` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `municipio` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `institucion`
--

INSERT INTO `institucion` (`id`, `codigo`, `institucion`, `departamento`, `municipio`, `estado`) VALUES
(1, '11922', 'CENTRO ESCOLAR EL CANTON ELPEDREGAL', 'LA PAZ', 'EL ROSARIO', 1),
(2, '11926', 'Centro Escolar Fabio Ignacio Magaña', 'la paz', 'El rosario', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `id` int(11) NOT NULL,
  `isbn` text NOT NULL,
  `titulo` text NOT NULL,
  `cantidad` int(11) NOT NULL,
  `id_autor` int(11) NOT NULL,
  `id_editorial` int(11) NOT NULL,
  `anio_edicion` date NOT NULL,
  `id_materia` int(11) DEFAULT NULL,
  `num_pagina` int(11) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `id_licencia` int(11) DEFAULT NULL,
  `tipo_libro` varchar(50) NOT NULL DEFAULT '',
  `imagen` varchar(100) DEFAULT NULL,
  `ruta_libro` varchar(100) DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`id`, `isbn`, `titulo`, `cantidad`, `id_autor`, `id_editorial`, `anio_edicion`, `id_materia`, `num_pagina`, `descripcion`, `id_categoria`, `id_licencia`, `tipo_libro`, `imagen`, `ruta_libro`, `estado`) VALUES
(34, '806', 'El mundo de gabriela vida sana ', 1, 1, 4, '2013-01-01', 5, 100, 'Buen Estado', NULL, NULL, 'fisico', 'default-avatar.png', NULL, 1),
(35, '339', 'My frist day of school ', 50, 2, 5, '2001-08-13', 3, 100, 'Buen Estado', NULL, NULL, 'fisico', 'default-avatar.png', NULL, 1),
(36, '339', 'mis primer numeros ', 30, 3, 4, '2013-01-01', 4, 100, 'Buen Estado', NULL, NULL, 'fisico', 'default-avatar.png', NULL, 1),
(37, '780', 'las vocales TANKA ', 50, 8, 8, '2014-01-01', 3, 100, 'Buen Estado', NULL, NULL, 'fisico', 'default-avatar.png', NULL, 1),
(38, '608', 'la familia TANK', 20, 8, 8, '2014-01-01', 3, 100, 'Buen Estado', NULL, NULL, 'fisico', 'default-avatar.png', NULL, 1),
(39, '608', 'la semana con TANK ', 50, 8, 8, '2014-01-01', 3, 100, 'Buen Estado', NULL, NULL, 'fisico', 'default-avatar.png', NULL, 1),
(40, '39', 'la oveja con anteojos ', 80, 6, 9, '2013-01-01', 1, 100, 'Buen Estado', NULL, NULL, 'fisico', 'default-avatar.png', NULL, 1),
(41, '38', 'la vaca timida ', 77, 6, 9, '2013-01-01', 1, 100, 'Buen Estado', NULL, NULL, 'fisico', 'default-avatar.png', NULL, 1),
(42, '02135', 'Este libro es de prueba', 11, 10, 7, '2022-06-06', 3, 20, 'Buen Estado', NULL, NULL, 'fisico', 'default-avatar.png', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `licencia`
--

CREATE TABLE `licencia` (
  `id` int(11) NOT NULL,
  `licencia` varchar(45) DEFAULT NULL,
  `estado` int(11) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `licencia`
--

INSERT INTO `licencia` (`id`, `licencia`, `estado`) VALUES
(1, 'creative commons', 1),
(2, 'Libre', 1),
(3, 'licencia', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `id` int(11) NOT NULL,
  `materia` text NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`id`, `materia`, `estado`) VALUES
(1, 'Recreativo', 1),
(2, 'Informarse e investigar', 1),
(3, 'Apoyo curricular y docente', 1),
(4, 'Practica de ingles', 1),
(5, 'Seleccionados por NN', 1),
(9, 'Tecnologia 1', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participante`
--

CREATE TABLE `participante` (
  `id` int(11) NOT NULL,
  `codigo` varchar(20) NOT NULL,
  `dni` varchar(20) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `edad` int(11) NOT NULL DEFAULT 0,
  `carrera` varchar(255) NOT NULL,
  `direccion` text NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `id_sexo` int(11) NOT NULL,
  `id_tipoparticipante` int(11) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `participante`
--

INSERT INTO `participante` (`id`, `codigo`, `dni`, `nombre`, `edad`, `carrera`, `direccion`, `telefono`, `id_sexo`, `id_tipoparticipante`, `estado`) VALUES
(23, '5', '061401093', 'Jose Manuel Castellanos Quitanilla', 18, '1ro General', 'Calle buena vista #16 El rosario la paz', '87321654', 1, 1, 1),
(24, '1', '55100570', 'Eduardo Alexander Arevalo Viera', 25, '2ro General', 'Reparto Montelimar olocuilta', '87654321', 1, 1, 1),
(25, '2', '56432103', 'Gabriela Alexandra Aguilar Cruz', 24, '1ro general', 'Residencial la herradura', '12345678', 2, 1, 1),
(26, '3', '55103983', 'Emilia Nohemy Perdomo Muñoz', 25, '2do general', 'Colonia buena vista', '12348765', 2, 1, 1),
(27, '4', '55238573', 'Ana Cristina Merino Jovel', 25, '2ro General', 'Reparto Buena esperanza', '78297070', 2, 1, 1),
(28, '6', '023154893', 'Mario Enrique Menjivar Garcia', 56, 'Licenciado', 'Reparto nuevo amanecer el rosario', '12387654', 1, 3, 1),
(29, '7', '022345678', 'Francisco Orlando Fuentes Flores', 45, 'Licenciado', 'Colonia nuevo amanecer El Rosario', '78784243', 1, 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamo`
--

CREATE TABLE `prestamo` (
  `id` int(11) NOT NULL,
  `id_participante` int(11) NOT NULL,
  `id_libro` int(11) NOT NULL,
  `fecha_prestamo` date NOT NULL,
  `fecha_devolucion` date NOT NULL,
  `cantidad` int(11) NOT NULL,
  `observacion` text NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `prestamo`
--

INSERT INTO `prestamo` (`id`, `id_participante`, `id_libro`, `fecha_prestamo`, `fecha_devolucion`, `cantidad`, `observacion`, `estado`) VALUES
(11, 23, 36, '2022-06-06', '2022-06-17', 1, '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamoexterno`
--

CREATE TABLE `prestamoexterno` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_institucion` int(11) NOT NULL,
  `id_grado` int(11) NOT NULL,
  `responsable` text NOT NULL,
  `fecha_prestamo` date NOT NULL,
  `fecha_devolucion` date NOT NULL,
  `id_libro` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `observacion` text NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `prestamoexterno`
--

INSERT INTO `prestamoexterno` (`id`, `id_usuario`, `id_institucion`, `id_grado`, `responsable`, `fecha_prestamo`, `fecha_devolucion`, `id_libro`, `cantidad`, `observacion`, `estado`) VALUES
(1, 23, 1, 3, 'coco peña', '2022-06-06', '2022-06-06', 34, 4, '', 1),
(2, 25, 2, 1, 'coco peña', '2022-06-06', '2022-06-06', 34, 6, '', 0),
(3, 29, 2, 9, 'Edgardo Sanchez', '2022-06-06', '2022-06-14', 34, 20, 'nuevos', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sexo`
--

CREATE TABLE `sexo` (
  `id` int(11) NOT NULL,
  `sexo` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `activo` varchar(50) COLLATE utf8_spanish_ci DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `sexo`
--

INSERT INTO `sexo` (`id`, `sexo`, `activo`) VALUES
(1, 'Hombre', '1'),
(2, 'Mujer', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoparticipante`
--

CREATE TABLE `tipoparticipante` (
  `id` int(11) NOT NULL,
  `tipoparticipante` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `activo` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `tipoparticipante`
--

INSERT INTO `tipoparticipante` (`id`, `tipoparticipante`, `activo`) VALUES
(1, 'Estudiante', 1),
(2, 'Docente', 1),
(3, 'Director', 1),
(4, 'Madre o Padre de Familia', 1),
(5, 'Miembro de la Comunidad', 1),
(6, 'Personal del MINED', 1),
(7, 'Otros', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `clave` varchar(100) NOT NULL,
  `rol` varchar(20) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `nombre`, `clave`, `rol`, `estado`) VALUES
(1, 'admin', 'Eduardo Arevalo', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', '1', 1),
(9, 'Francisco Fuentes', 'Francisco Orlando Fuentes Flores	', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', '1', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `editorial`
--
ALTER TABLE `editorial`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `grado`
--
ALTER TABLE `grado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `institucion`
--
ALTER TABLE `institucion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `licencia`
--
ALTER TABLE `licencia`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `participante`
--
ALTER TABLE `participante`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `prestamo`
--
ALTER TABLE `prestamo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `prestamoexterno`
--
ALTER TABLE `prestamoexterno`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `sexo`
--
ALTER TABLE `sexo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipoparticipante`
--
ALTER TABLE `tipoparticipante`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autor`
--
ALTER TABLE `autor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `editorial`
--
ALTER TABLE `editorial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `grado`
--
ALTER TABLE `grado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `institucion`
--
ALTER TABLE `institucion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `libro`
--
ALTER TABLE `libro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `licencia`
--
ALTER TABLE `licencia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `participante`
--
ALTER TABLE `participante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `prestamo`
--
ALTER TABLE `prestamo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `prestamoexterno`
--
ALTER TABLE `prestamoexterno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `sexo`
--
ALTER TABLE `sexo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipoparticipante`
--
ALTER TABLE `tipoparticipante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
