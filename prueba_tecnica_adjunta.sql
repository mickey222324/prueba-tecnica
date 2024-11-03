-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-11-2024 a las 13:52:21
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba_tecnica_adjunta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `categoria` int(100) NOT NULL,
  `imagen` int(250) NOT NULL,
  `titulo` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `development_skill`
--

CREATE TABLE `development_skill` (
  `id` int(11) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `porcentaje` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `development_skill`
--

INSERT INTO `development_skill` (`id`, `nombre`, `porcentaje`) VALUES
(1, 'HTML', 85),
(2, 'CSS', 80),
(3, 'JAVASCRIPT', 90),
(4, 'SOFTWARE', 75),
(5, 'PLUGIN', 70);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrevista laboral`
--

CREATE TABLE `entrevista laboral` (
  `id` int(11) NOT NULL,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` varchar(250) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `calificacion` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrevista_compañia`
--

CREATE TABLE `entrevista_compañia` (
  `id` int(11) NOT NULL,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` varchar(250) NOT NULL,
  `caracteristicas` varchar(250) NOT NULL,
  `calificacion` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo_de_trabajo`
--

CREATE TABLE `equipo_de_trabajo` (
  `id` int(11) NOT NULL,
  `titulo` varchar(250) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `logo` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `equipo_de_trabajo`
--

INSERT INTO `equipo_de_trabajo` (`id`, `titulo`, `descripcion`, `logo`) VALUES
(1, 'Project Manager', 'Soy un profesional encargado de planificar, ejecutar y cerrar proyectos.', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\" class=\"feather feather-menu\"><line x1=\"3\" y1=\"12\" x2=\"21\" y2=\"12\"></line><line x1=\"3\" y1=\"6\" x2=\"21\" y2=\"6\"></line><line x1=\"3\" y1=\"18\" x2=\"21\" y2=\"18\"></line></svg>'),
(2, 'Desarrollo de Aplicaciones', 'Un desarrollo de aplicaciones es el encargado de crear software que permite a los usuarios realizar tareas específicas en dispositivos como computadoras, teléfonos inteligentes o tabletas.', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\" class=\"feather feather-menu\"><line x1=\"3\" y1=\"12\" x2=\"21\" y2=\"12\"></line><line x1=\"3\" y1=\"6\" x2=\"21\" y2=\"6\"></line><line x1=\"3\" y1=\"18\" x2=\"21\" y2=\"18\"></line></svg>'),
(3, 'CEO Marqueting', 'Me encargo de optimizar la visibilidad de un sitio web en los motores de búsqueda.', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\" class=\"feather feather-wifi\"><path d=\"M5 12.55a11 11 0 0 1 14.08 0\"></path><path d=\"M1.42 9a16 16 0 0 1 21.16 0\"></path><path d=\"M8.53 16.11a6 6 0 0 1 6.95 0\"></path><line x1=\"12\" y1=\"20\" x2=\"12.01\" y2=\"20\"></line></svg>'),
(4, 'Desarrollador de Aplicaciones Móviles', 'Me especializo en crear software para dispositivos móviles, como smartphones y tabletas.', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\" class=\"feather feather-book-open\"><path d=\"M2 3h6a4 4 0 0 1 4 4v14a3 3 0 0 0-3-3H2z\"></path><path d=\"M22 3h-6a4 4 0 0 0-4 4v14a3 3 0 0 1 3-3h7z\"></path></svg>'),
(5, 'Diseñadora', 'Me dedico a crear y conceptualizar visualmente productos, experiencias o soluciones.', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\" class=\"feather feather-twitch\"><path d=\"M21 2H3v16h5v4l4-4h5l4-4V2zm-10 9V7m5 4V7\"></path></svg>'),
(6, 'Programador Sr.', 'Realizo Desarrollo de software, Arquitectura de sistemas, Resolución de problemas, Revisión de código, etc.', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\" class=\"feather feather-slack\"><path d=\"M14.5 10c-.83 0-1.5-.67-1.5-1.5v-5c0-.83.67-1.5 1.5-1.5s1.5.67 1.5 1.5v5c0 .83-.67 1.5-1.5 1.5z\"></path><path d=\"M20.5 10H19V8.5c0-.83.67-1.5 1.5-1.5s1.5.67 1.5 1.5-.67 1.5-1.5 1.5z\"></path><path d=\"M9.5 14c.83 0 1.5.67 1.5 1.5v5c0 .83-.67 1.5-1.5 1.5S8 21.33 8 20.5v-5c0-.83.67-1.5 1.5-1.5z\"></path><path d=\"M3.5 14H5v1.5c0 .83-.67 1.5-1.5 1.5S2 16.33 2 15.5 2.67 14 3.5 14z\"></path><path d=\"M14 14.5c0-.83.67-1.5 1.5-1.5h5c.83 0 1.5.67 1.5 1.5s-.67 1.5-1.5 1.5h-5c-.83 0-1.5-.67-1.5-1.5z\"></path><path d=\"M15.5 19H14v1.5c0 .83.67 1.5 1.5 1.5s1.5-.67 1.5-1.5-.67-1.5-1.5-1.5z\"></path><path d=\"M10 9.5C10 8.67 9.33 8 8.5 8h-5C2.67 8 2 8.67 2 9.5S2.67 11 3.5 11h5c.83 0 1.5-.67 1.5-1.5z\"></path><path d=\"M8.5 5H10V3.5C10 2.67 9.33 2 8.5 2S7 2.67 7 3.5 7.67 5 8.5 5z\"></path></svg>'),
(7, 'Creador de Contenido', 'Produzco y comparte material informativo, entretenido o educativo en diversas plataformas, como blogs, redes sociales, YouTube, podcasts y más.', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\" class=\"feather feather-tv\"><rect x=\"2\" y=\"7\" width=\"20\" height=\"15\" rx=\"2\" ry=\"2\"></rect><polyline points=\"17 2 12 7 7 2\"></polyline></svg>'),
(8, 'Encargado de RSS', 'Me encargo de gestionar y desarrollar la presencia de una marca o empresa en plataformas de redes sociales. Su trabajo implica una combinación de estrategias de marketing, comunicación y análisis', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\" class=\"feather feather-wifi\"><path d=\"M5 12.55a11 11 0 0 1 14.08 0\"></path><path d=\"M1.42 9a16 16 0 0 1 21.16 0\"></path><path d=\"M8.53 16.11a6 6 0 0 1 6.95 0\"></path><line x1=\"12\" y1=\"20\" x2=\"12.01\" y2=\"20\"></line></svg>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencia_educacion`
--

CREATE TABLE `experiencia_educacion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `fecha` varchar(250) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `calificacion` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `experiencia_educacion`
--

INSERT INTO `experiencia_educacion` (`id`, `nombre`, `fecha`, `descripcion`, `calificacion`) VALUES
(1, 'Portafolio Personal', 'University of DVI (1997 - 2001)', 'La percepción y las interacciones que un usuario tiene al navegar por un sitio web. Esto incluye aspectos como el diseño, la usabilidad, la velocidad de carga, la accesibilidad y la calidad del contenido.', '4.30/5\n'),
(2, 'Examples Of Personal Portfolio', 'College of Studies (2000 - 2002)', 'Maecenas finibus nec sem ut imperdiet. Ut tincidunt est ac dolor aliquam sodales. Phasellus sed mauris hendrerit, laoreet sem in, lobortis mauris hendrerit ante.', '4.50/5'),
(3, 'Tips For Personal Portfolio', 'University of Studies (1997 - 2001)', 'If you are going to use a passage. Ut tincidunt est ac dolor aliquam sodales. Phasellus sed mauris hendrerit, laoreet sem in, lobortis mauris hendrerit ante.', '4.80/5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencia_laboral`
--

CREATE TABLE `experiencia_laboral` (
  `id` int(11) NOT NULL,
  `fecha` varchar(250) NOT NULL,
  `titulo` varchar(250) NOT NULL,
  `descripción` varchar(250) NOT NULL,
  `calificacion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `experiencia_laboral`
--

INSERT INTO `experiencia_laboral` (`id`, `fecha`, `titulo`, `descripción`, `calificacion`) VALUES
(1, 'BSE In CSE (2004 - 2008)\n', 'Diploma in Web Development\n', 'Contrary to popular belief. Ut tincidunt est ac dolor aliquam sodales. Phasellus sed mauris hendrerit, laoreet sem in, lobortis mauris hendrerit ante.\n\n', '4.70/5'),
(2, 'Job at Rainbow-Themes (2008 - 2016)', 'The Personal Portfolio Mystery\n', 'Generate Lorem Ipsum which looks. Ut tincidunt est ac dolor aliquam sodales. Phasellus sed mauris hendrerit, laoreet sem in, lobortis mauris hendrerit ante.\n\n', '4.95/5'),
(3, 'Works at Plugin Development (2016 - 2020)', 'Diploma in Computer Science', 'Maecenas finibus nec sem ut imperdiet. Ut tincidunt est ac dolor aliquam sodales. Phasellus sed mauris hendrerit, laoreet sem in, lobortis mauris hendrerit ante.', '5.00/5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habilidades`
--

CREATE TABLE `habilidades` (
  `id` int(11) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `porcentaje` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `habilidades`
--

INSERT INTO `habilidades` (`id`, `nombre`, `porcentaje`) VALUES
(1, 'Photoshop', 100),
(2, 'Figma', 95),
(3, 'Adobe XD', 60),
(4, 'Adobe Illustrator', 70),
(5, 'Design', 90);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `portafolio`
--

CREATE TABLE `portafolio` (
  `id` int(11) NOT NULL,
  `titulo` varchar(250) NOT NULL,
  `categoria` varchar(250) NOT NULL,
  `imagen` varchar(250) NOT NULL,
  `calificacion` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `portafolio`
--

INSERT INTO `portafolio` (`id`, `titulo`, `categoria`, `imagen`, `calificacion`) VALUES
(1, 'Dashboard para la creaci?n de Gr?ficas', 'Desarrollor', 'https://localhost/prueba-tecnica-adjunta-mvs/template/portfolio-01.jpg', 600),
(2, 'Menú en línea digital de los productos o servicios que ofrece un restaurante, café, bar u otro tipo de establecimiento de comida y bebida.', 'Web', 'https://localhost/prueba-tecnica-adjunta-mvs/template/portfolio-02.jpg', 750),
(3, 'Diseño de Logo Creativo', 'Diseño', 'https://localhost/prueba-tecnica-adjunta-mvs/template/portfolio-03.jpg', 630),
(4, 'Desarrollo de Aplicación Móvil', 'Aplicación', 'https://localhost/prueba-tecnica-adjunta-mvs/template/portfolio-04.jpg', 360),
(5, 'Diseño de Aplicaciones', 'Diseño', 'https://localhost/prueba-tecnica-adjunta-mvs/template/portfolio-05.jpg', 280),
(6, 'App de Tecnología y Servicios', 'Diseño Web', 'https://localhost/prueba-tecnica-adjunta-mvs/template/portfolio-06.jpg', 690);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `precios`
--

CREATE TABLE `precios` (
  `id` int(11) NOT NULL,
  `titulo` varchar(250) NOT NULL,
  `categoria` varchar(250) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `costo` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(250) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `imagen` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`id`, `titulo`, `categoria`, `imagen`) VALUES
(1, 'zzzz', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `pass` varchar(250) NOT NULL,
  `rol` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `pass`, `rol`) VALUES
(1, 'miguel', 'miguel2288', 'Administrador'),
(2, 'carlos', 'carlos2025', 'Visor');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `development_skill`
--
ALTER TABLE `development_skill`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `entrevista laboral`
--
ALTER TABLE `entrevista laboral`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `entrevista_compañia`
--
ALTER TABLE `entrevista_compañia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `equipo_de_trabajo`
--
ALTER TABLE `equipo_de_trabajo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `experiencia_educacion`
--
ALTER TABLE `experiencia_educacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `experiencia_laboral`
--
ALTER TABLE `experiencia_laboral`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `habilidades`
--
ALTER TABLE `habilidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `portafolio`
--
ALTER TABLE `portafolio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `precios`
--
ALTER TABLE `precios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
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
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `development_skill`
--
ALTER TABLE `development_skill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `entrevista laboral`
--
ALTER TABLE `entrevista laboral`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `entrevista_compañia`
--
ALTER TABLE `entrevista_compañia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `equipo_de_trabajo`
--
ALTER TABLE `equipo_de_trabajo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `experiencia_educacion`
--
ALTER TABLE `experiencia_educacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `experiencia_laboral`
--
ALTER TABLE `experiencia_laboral`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `habilidades`
--
ALTER TABLE `habilidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `portafolio`
--
ALTER TABLE `portafolio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `precios`
--
ALTER TABLE `precios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
