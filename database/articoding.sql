-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 12-02-2024 a las 22:13:33
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

DROP DATABASE IF EXISTS articoding;
CREATE DATABASE articoding;
USE articoding;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `articoding`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `access`
--

CREATE TABLE `access` (
  `user` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `mode` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `assigned`
--

CREATE TABLE `assigned` (
  `group` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `name`, `description`) VALUES
(1, 'Introducción', 'Comienza a jugar y aprende como funciona la aplicación.'),
(2, 'Variables', 'Aprende a almacenar y usar datos. Crea nuevas variables y utilízalas en tu código.'),
(3, 'Tipos de datos', 'Aprende a usar distintos tipos de datos en tu código como números, letras o palabras.'),
(4, 'Operadores básicos', 'Aprende las distintas operaciones que puedes hacer con los distintos tipos de datos.'),
(5, 'Bucles', 'Aprende a programar código que se repetirá un número determinado de veces concreto o mientras se cumpla una condición.'),
(6, 'Condiciones', 'Utiliza el tipo lógico visto anteriormente para crear código condicional.'),
(7, 'Funciones', 'Aprende a organizar tu código con el uso de funciones.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `group`
--

CREATE TABLE `group` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `group`
--

INSERT INTO `group` (`id`, `name`) VALUES
(15, 'Grupo 5'),
(16, 'Grupo 5'),
(17, 'A:K');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `level`
--

CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `self` int(11) DEFAULT NULL,
  `title` varchar(50) NOT NULL,
  `data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `level`
--

INSERT INTO `level` (`id`, `user`, `category`, `self`, `title`, `data`) VALUES
(1, 5, 1, 1, 'Movement', '{"phaser":{"width":5,"height":3,"theme":"default","layers":{"background":{"spriteSheet":"background","spriteSheetType":"multi","objects":[{"x":"0","y":"0","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"2","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"3","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"4","y":"0","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"1","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"2","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"3","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"4","y":"1","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"2","spriteIndex":"3","properties":{"collides":true}},{"x":"1","y":"2","spriteIndex":"4","properties":{"collides":true}},{"x":"2","y":"2","spriteIndex":"4","properties":{"collides":true}},{"x":"3","y":"2","spriteIndex":"4","properties":{"collides":true}},{"x":"4","y":"2","spriteIndex":"5","properties":{"collides":true}},{"x":"0","y":"3","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"3","spriteIndex":"6","properties":{"collides":false}},{"x":"2","y":"3","spriteIndex":"6","properties":{"collides":false}},{"x":"3","y":"3","spriteIndex":"6","properties":{"collides":false}},{"x":"4","y":"3","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"4","spriteIndex":"3","properties":{"collides":true}},{"x":"1","y":"4","spriteIndex":"4","properties":{"collides":true}},{"x":"2","y":"4","spriteIndex":"4","properties":{"collides":true}},{"x":"3","y":"4","spriteIndex":"4","properties":{"collides":true}},{"x":"4","y":"4","spriteIndex":"5","properties":{"collides":true}}],"depth":0},"objects":[{"spriteSheet":"exit","spriteSheetType":"img","objects":[{"x":"3","y":"1","type":"exit"}],"depth":1}],"players":{"spriteSheet":"player","spriteSheetType":"multi","objects":[{"x":"1","y":"1"}],"depth":2}}},"blockly":{"maxInstances":{"start":1},"workspaceBlocks":[{"id":"movement","opts":{"isDeletable":false}},{"id":"math_number","opts":{"isDeletable":false}}]}}'),
(2, 5, 1, 2, 'Movement - 2', '{"phaser":{"width":5,"height":5,"theme":"default","layers":{"background":{"spriteSheet":"background","spriteSheetType":"multi","objects":[{"x":"0","y":"0","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"2","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"3","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"4","y":"0","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"1","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"2","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"3","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"4","y":"1","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"2","spriteIndex":"3","properties":{"collides":true}},{"x":"1","y":"2","spriteIndex":"4","properties":{"collides":true}},{"x":"2","y":"2","spriteIndex":"7","properties":{"collides":true}},{"x":"3","y":"2","spriteIndex":"6","properties":{"collides":false}},{"x":"4","y":"2","spriteIndex":"2","properties":{"collides":true}},{"x":"2","y":"3","spriteIndex":"0","properties":{"collides":true}},{"x":"3","y":"3","spriteIndex":"6","properties":{"collides":false}},{"x":"4","y":"3","spriteIndex":"2","properties":{"collides":true}},{"x":"2","y":"4","spriteIndex":"3","properties":{"collides":true}},{"x":"3","y":"4","spriteIndex":"4","properties":{"collides":true}},{"x":"4","y":"4","spriteIndex":"5","properties":{"collides":true}}],"depth":0},"objects":[{"spriteSheet":"exit","spriteSheetType":"img","objects":[{"x":"3","y":"3","type":"exit"}],"depth":1}],"players":{"spriteSheet":"player","spriteSheetType":"multi","objects":[{"x":"1","y":"1"}],"depth":2}}},"blockly": {
        "toolbox": {
            "kind": "categoryToolbox",
            "contents": [
                {
                    "kind": "category",
                    "name": "variable",
                    "colour": "#b100cd",
                    "contents": [
                        {
                            "type": "variables_get_panda",
                            "kind": "block",
                            "icons": {
                                "comment": {
                                    "text": "This block allows you to get a variable and use it for your blocks!",
                                    "pinned": false,
                                    "height": 80,
                                    "width": 160
                                }
                            }
                        },
                        {
                            "type": "variables_set_panda",
                            "kind": "block",
                            "icons": {
                                "comment": {
                                    "text": "With this awesome block you can set the value of any variable of your choice!",
                                    "pinned": false,
                                    "height": 80,
                                    "width": 160
                                }
                            }
                        }
                    ]
                },
                    {
                    "kind": "category",
                    "name": "Actions",
                    "colour": "#745ba5",
                    "contents": [
                        {
                            "type": "movement",
                            "kind": "block",
                            "icons": {
                                "comment": {
                                    "text": "This block allows you to move in any direction, any number of blocks",
                                    "pinned": false,
                                    "height": 80,
                                    "width": 160
                                }
                            }
                        },
                        {
                            "type": "rotate",
                            "kind": "block",
                            "icons": {
                                "comment": {
                                    "text": "This block allows you to rotate clockwise or counterclockwise (left or right)",
                                    "pinned": false,
                                    "height": 80,
                                    "width": 160
                                }
                            }
                        },
                        {
                            "type": "changeStatus",
                            "kind": "block",
                            "icons": {
                                "comment": {
                                    "text": "You can change the status of a block with this (on or off, for example)",
                                    "pinned": false,
                                    "height": 80,
                                    "width": 160
                                }
                            }
                        }
                    ]
                },
                {
                    "kind": "category",
                    "name": "Text",
                    "colour": "#e13030",
                    "contents": [
                        {
                            "type": "text",
                            "kind": "block"
                        }
                    ]
                },
                {
                    "kind": "category",
                    "name": "Numbers",
                    "colour": "#0d44ba",
                    "contents": [
                        {
                            "type": "math_number",
                            "kind": "block"
                        }
                    ]
                },
                {
                    "kind": "category",
                    "name": "Loops",
                    "colour": "#5ba55b",
                    "contents": [
                        {
                            "type": "for_X_times",
                            "kind": "block"
                        },
                        {
                            "type": "while_do",
                            "kind": "block"
                        }
                    ]
                },
                {
                    "kind": "category",
                    "name": "Logic",
                    "colour": "#5b80a5",
                    "contents": [
                        {
                            "type": "if_do",
                            "kind": "block"
                        },
                        {
                            "type": "if_else_do",
                            "kind": "block"
                        },
                        {
                            "type": "and_or",
                            "kind": "block"
                        },
                        {
                            "type": "comparator",
                            "kind": "block"
                        }
                    ]
                }
            ]
        },
        "maxInstances": {
            "start": 1
        },
        "workspaceBlocks": []
    }}'),
(3, 5, 1, 3, 'Trap', '{"phaser":{"width":5,"height":4,"theme":"default","layers":{"background":{"spriteSheet":"background","spriteSheetType":"multi","objects":[{"x":"0","y":"0","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"2","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"3","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"4","y":"0","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"1","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"2","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"3","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"4","y":"1","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"2","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"2","spriteIndex":"6","properties":{"collides":false}},{"x":"2","y":"2","spriteIndex":"6","properties":{"collides":false}},{"x":"3","y":"2","spriteIndex":"6","properties":{"collides":false}},{"x":"4","y":"2","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"3","spriteIndex":"3","properties":{"collides":true}},{"x":"1","y":"3","spriteIndex":"4","properties":{"collides":true}},{"x":"2","y":"3","spriteIndex":"4","properties":{"collides":true}},{"x":"3","y":"3","spriteIndex":"4","properties":{"collides":true}},{"x":"4","y":"3","spriteIndex":"5","properties":{"collides":true}}],"depth":0},"objects":[{"spriteSheet":"trap","spriteSheetType":"multi","objects":[{"x":"2","y":"1","type":"trap","properties":{"enabled":true}}],"depth":1},{"spriteSheet":"exit","spriteSheetType":"img","objects":[{"x":"3","y":"1","type":"exit"}],"depth":1}],"players":{"spriteSheet":"player","spriteSheetType":"multi","objects":[{"x":"1","y":"1"}],"depth":2}}},"blockly":{"toolbox":{"kind":"categoryToolbox","contents":[{"kind":"category","name":"Actions","colour":"#745ba5","contents":[{"type":"movement","kind":"block"},{"type":"rotate","kind":"block"},{"type":"changeStatus","kind":"block"}]},{"kind":"category","name":"Text","colour":"#e13030","contents":[{"type":"text","kind":"block"}]},{"kind":"category","name":"Numbers","colour":"#0d44ba","contents":[{"type":"math_number","kind":"block"}]},{"kind":"category","name":"Loops","colour":"#5ba55b","contents":[{"type":"for_X_times","kind":"block"},{"type":"while_do","kind":"block"}]},{"kind":"category","name":"Logic","colour":"#5b80a5","contents":[{"type":"if_do","kind":"block"},{"type":"if_else_do","kind":"block"},{"type":"and_or","kind":"block"},{"type":"comparator","kind":"block"}]}]},"maxInstances":{"start":1},"workspaceBlocks":[]}}'),
(4, 5, 1, 4, 'Trap - 2', '{"phaser":{"width":7,"height":5,"theme":"default","layers":{"background":{"spriteSheet":"background","spriteSheetType":"multi","objects":[{"x":"0","y":"0","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"2","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"3","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"4","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"5","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"6","y":"0","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"1","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"2","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"3","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"4","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"5","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"6","y":"1","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"2","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"2","spriteIndex":"6","properties":{"collides":false}},{"x":"2","y":"2","spriteIndex":"6","properties":{"collides":false}},{"x":"3","y":"2","spriteIndex":"6","properties":{"collides":false}},{"x":"4","y":"2","spriteIndex":"6","properties":{"collides":false}},{"x":"5","y":"2","spriteIndex":"6","properties":{"collides":false}},{"x":"6","y":"2","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"3","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"3","spriteIndex":"6","properties":{"collides":false}},{"x":"2","y":"3","spriteIndex":"6","properties":{"collides":false}},{"x":"3","y":"3","spriteIndex":"6","properties":{"collides":false}},{"x":"4","y":"3","spriteIndex":"6","properties":{"collides":false}},{"x":"5","y":"3","spriteIndex":"6","properties":{"collides":false}},{"x":"6","y":"3","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"4","spriteIndex":"3","properties":{"collides":true}},{"x":"1","y":"4","spriteIndex":"4","properties":{"collides":true}},{"x":"2","y":"4","spriteIndex":"4","properties":{"collides":true}},{"x":"3","y":"4","spriteIndex":"4","properties":{"collides":true}},{"x":"4","y":"4","spriteIndex":"4","properties":{"collides":true}},{"x":"5","y":"4","spriteIndex":"4","properties":{"collides":true}},{"x":"6","y":"4","spriteIndex":"5","properties":{"collides":true}}],"depth":0},"objects":[{"spriteSheet":"trap","spriteSheetType":"multi","objects":[{"x":"2","y":"1","type":"trap","properties":{"enabled":true}},{"x":"4","y":"1","type":"trap","properties":{"enabled":true}},{"x":"4","y":"3","type":"trap","properties":{"enabled":true}}],"depth":1},{"spriteSheet":"exit","spriteSheetType":"img","objects":[{"x":"5","y":"1","type":"exit"}],"depth":1},{"spriteSheet":"wall","spriteSheetType":"img","objects":[{"x":"2","y":"2","type":"wall"}],"depth":1}],"players":{"spriteSheet":"player","spriteSheetType":"multi","objects":[{"x":"1","y":"1"}],"depth":2}}},"blockly":{"toolbox":{"kind":"categoryToolbox","contents":[{"kind":"category","name":"Actions","colour":"#745ba5","contents":[{"type":"movement","kind":"block"},{"type":"rotate","kind":"block"},{"type":"changeStatus","kind":"block"}]},{"kind":"category","name":"Text","colour":"#e13030","contents":[{"type":"text","kind":"block"}]},{"kind":"category","name":"Numbers","colour":"#0d44ba","contents":[{"type":"math_number","kind":"block"}]},{"kind":"category","name":"Loops","colour":"#5ba55b","contents":[{"type":"for_X_times","kind":"block"},{"type":"while_do","kind":"block"}]},{"kind":"category","name":"Logic","colour":"#5b80a5","contents":[{"type":"if_do","kind":"block"},{"type":"if_else_do","kind":"block"},{"type":"and_or","kind":"block"},{"type":"comparator","kind":"block"}]}]},"maxInstances":{"start":1},"workspaceBlocks":[]}}'),
(5, 5, 1, 5, 'Enemy', '{"phaser":{"width":5,"height":4,"theme":"default","layers":{"background":{"spriteSheet":"background","spriteSheetType":"multi","objects":[{"x":"0","y":"0","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"2","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"3","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"4","y":"0","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"1","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"2","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"3","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"4","y":"1","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"2","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"2","spriteIndex":"6","properties":{"collides":false}},{"x":"2","y":"2","spriteIndex":"6","properties":{"collides":false}},{"x":"3","y":"2","spriteIndex":"6","properties":{"collides":false}},{"x":"4","y":"2","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"3","spriteIndex":"3","properties":{"collides":true}},{"x":"1","y":"3","spriteIndex":"4","properties":{"collides":true}},{"x":"2","y":"3","spriteIndex":"4","properties":{"collides":true}},{"x":"3","y":"3","spriteIndex":"4","properties":{"collides":true}},{"x":"4","y":"3","spriteIndex":"5","properties":{"collides":true}},{"x":"0","y":"4","spriteIndex":"3","properties":{"collides":true}},{"x":"1","y":"4","spriteIndex":"4","properties":{"collides":true}},{"x":"2","y":"4","spriteIndex":"4","properties":{"collides":true}},{"x":"3","y":"4","spriteIndex":"4","properties":{"collides":true}}],"depth":0},"objects":[{"spriteSheet":"enemy","spriteSheetType":"multi","objects":[{"x":"2","y":"1","type":"enemy"}],"depth":1},{"spriteSheet":"exit","spriteSheetType":"img","objects":[{"x":"3","y":"1","type":"exit"}],"depth":1}],"players":{"spriteSheet":"player","spriteSheetType":"multi","objects":[{"x":"1","y":"1"}],"depth":2}}},"blockly":{"toolbox":{"kind":"categoryToolbox","contents":[{"kind":"category","name":"Actions","colour":"#745ba5","contents":[{"type":"movement","kind":"block"},{"type":"rotate","kind":"block"},{"type":"changeStatus","kind":"block"}]},{"kind":"category","name":"Text","colour":"#e13030","contents":[{"type":"text","kind":"block"}]},{"kind":"category","name":"Numbers","colour":"#0d44ba","contents":[{"type":"math_number","kind":"block"}]},{"kind":"category","name":"Loops","colour":"#5ba55b","contents":[{"type":"for_X_times","kind":"block"},{"type":"while_do","kind":"block"}]},{"kind":"category","name":"Logic","colour":"#5b80a5","contents":[{"type":"if_do","kind":"block"},{"type":"if_else_do","kind":"block"},{"type":"and_or","kind":"block"},{"type":"comparator","kind":"block"}]}]},"maxInstances":{"start":1},"workspaceBlocks":[]}}'),
(6, 5, 1, 6, 'Enemy - 2', '{"phaser":{"width":6,"height":5,"theme":"default","layers":{"background":{"spriteSheet":"background","spriteSheetType":"multi","objects":[{"x":"0","y":"0","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"2","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"3","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"4","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"5","y":"0","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"1","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"2","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"3","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"4","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"5","y":"1","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"2","spriteIndex":"3","properties":{"collides":true}},{"x":"1","y":"2","spriteIndex":"4","properties":{"collides":true}},{"x":"2","y":"2","spriteIndex":"7","properties":{"collides":true}},{"x":"3","y":"2","spriteIndex":"6","properties":{"collides":false}},{"x":"4","y":"2","spriteIndex":"8","properties":{"collides":true}},{"x":"5","y":"2","spriteIndex":"5","properties":{"collides":true}},{"x":"2","y":"3","spriteIndex":"0","properties":{"collides":true}},{"x":"3","y":"3","spriteIndex":"6","properties":{"collides":false}},{"x":"4","y":"3","spriteIndex":"2","properties":{"collides":true}},{"x":"2","y":"4","spriteIndex":"3","properties":{"collides":true}},{"x":"3","y":"4","spriteIndex":"4","properties":{"collides":true}},{"x":"4","y":"4","spriteIndex":"5","properties":{"collides":true}}],"depth":0},"objects":[{"spriteSheet":"enemy","spriteSheetType":"multi","objects":[{"x":"3","y":"1","type":"enemy"}],"depth":1},{"spriteSheet":"exit","spriteSheetType":"img","objects":[{"x":"4","y":"1","type":"exit"}],"depth":1}],"players":{"spriteSheet":"player","spriteSheetType":"multi","objects":[{"x":"1","y":"1"}],"depth":2}}},"blockly":{"toolbox":{"kind":"categoryToolbox","contents":[{"kind":"category","name":"Actions","colour":"#745ba5","contents":[{"type":"movement","kind":"block"},{"type":"rotate","kind":"block"},{"type":"changeStatus","kind":"block"}]},{"kind":"category","name":"Text","colour":"#e13030","contents":[{"type":"text","kind":"block"}]},{"kind":"category","name":"Numbers","colour":"#0d44ba","contents":[{"type":"math_number","kind":"block"}]},{"kind":"category","name":"Loops","colour":"#5ba55b","contents":[{"type":"for_X_times","kind":"block"},{"type":"while_do","kind":"block"}]},{"kind":"category","name":"Logic","colour":"#5b80a5","contents":[{"type":"if_do","kind":"block"},{"type":"if_else_do","kind":"block"},{"type":"and_or","kind":"block"},{"type":"comparator","kind":"block"}]}]},"maxInstances":{"start":1},"workspaceBlocks":[]}}'),
(7, 5, 1, 7, 'Chest', '{"phaser":{"width":5,"height":4,"theme":"default","layers":{"background":{"spriteSheet":"background","spriteSheetType":"multi","objects":[{"x":"0","y":"0","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"2","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"3","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"4","y":"0","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"1","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"2","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"3","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"4","y":"1","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"2","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"2","spriteIndex":"6","properties":{"collides":false}},{"x":"2","y":"2","spriteIndex":"6","properties":{"collides":false}},{"x":"3","y":"2","spriteIndex":"6","properties":{"collides":false}},{"x":"4","y":"2","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"3","spriteIndex":"3","properties":{"collides":true}},{"x":"1","y":"3","spriteIndex":"4","properties":{"collides":true}},{"x":"2","y":"3","spriteIndex":"4","properties":{"collides":true}},{"x":"3","y":"3","spriteIndex":"4","properties":{"collides":true}},{"x":"4","y":"3","spriteIndex":"5","properties":{"collides":true}}],"depth":0},"objects":[{"spriteSheet":"exit","spriteSheetType":"img","objects":[{"x":"3","y":"1","type":"exit"}],"depth":1},{"spriteSheet":"chest","spriteSheetType":"img","objects":[{"x":"2","y":"2","type":"chest"}],"depth":1}],"players":{"spriteSheet":"player","spriteSheetType":"multi","objects":[{"x":"1","y":"1"}],"depth":2}}},"blockly":{"toolbox":{"kind":"categoryToolbox","contents":[{"kind":"category","name":"Actions","colour":"#745ba5","contents":[{"type":"movement","kind":"block"},{"type":"rotate","kind":"block"},{"type":"changeStatus","kind":"block"}]},{"kind":"category","name":"Text","colour":"#e13030","contents":[{"type":"text","kind":"block"}]},{"kind":"category","name":"Numbers","colour":"#0d44ba","contents":[{"type":"math_number","kind":"block"}]},{"kind":"category","name":"Loops","colour":"#5ba55b","contents":[{"type":"for_X_times","kind":"block"},{"type":"while_do","kind":"block"}]},{"kind":"category","name":"Logic","colour":"#5b80a5","contents":[{"type":"if_do","kind":"block"},{"type":"if_else_do","kind":"block"},{"type":"and_or","kind":"block"},{"type":"comparator","kind":"block"}]}]},"maxInstances":{"start":1},"workspaceBlocks":[]}}'),
(8, 5, 1, 8, 'Test', '{"phaser":{"width":6,"height":6,"theme":"default","layers":{"background":{"spriteSheet":"background","spriteSheetType":"multi","objects":[{"x":"0","y":"0","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"2","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"3","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"4","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"5","y":"0","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"1","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"2","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"3","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"4","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"5","y":"1","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"2","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"2","spriteIndex":"6","properties":{"collides":false}},{"x":"2","y":"2","spriteIndex":"6","properties":{"collides":false}},{"x":"3","y":"2","spriteIndex":"6","properties":{"collides":false}},{"x":"4","y":"2","spriteIndex":"6","properties":{"collides":false}},{"x":"5","y":"2","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"3","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"3","spriteIndex":"6","properties":{"collides":false}},{"x":"2","y":"3","spriteIndex":"6","properties":{"collides":false}},{"x":"3","y":"3","spriteIndex":"6","properties":{"collides":false}},{"x":"4","y":"3","spriteIndex":"6","properties":{"collides":false}},{"x":"5","y":"3","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"4","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"4","spriteIndex":"6","properties":{"collides":false}},{"x":"2","y":"4","spriteIndex":"6","properties":{"collides":false}},{"x":"3","y":"4","spriteIndex":"6","properties":{"collides":false}},{"x":"4","y":"4","spriteIndex":"6","properties":{"collides":false}},{"x":"5","y":"4","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"5","spriteIndex":"3","properties":{"collides":true}},{"x":"1","y":"5","spriteIndex":"4","properties":{"collides":true}},{"x":"2","y":"5","spriteIndex":"4","properties":{"collides":true}},{"x":"3","y":"5","spriteIndex":"4","properties":{"collides":true}},{"x":"4","y":"5","spriteIndex":"4","properties":{"collides":true}},{"x":"5","y":"5","spriteIndex":"5","properties":{"collides":true}}],"depth":0},"objects":[{"spriteSheet":"wall","spriteSheetType":"img","objects":[{"x":"2","y":"1","type":"wall"},{"x":"3","y":"1","type":"wall"},{"x":"2","y":"2","type":"wall"},{"x":"3","y":"2","type":"wall"}],"depth":1},{"spriteSheet":"exit","spriteSheetType":"img","objects":[{"x":"4","y":"1","type":"exit"}],"depth":1},{"spriteSheet":"trap","spriteSheetType":"multi","objects":[{"x":"2","y":"3","type":"trap","properties":{"enabled":true}}],"depth":1},{"spriteSheet":"chest","spriteSheetType":"img","objects":[{"x":"3","y":"3","type":"chest"}],"depth":1}],"players":{"spriteSheet":"player","spriteSheetType":"multi","objects":[{"x":"1","y":"1"}],"depth":2}}},"blockly":{"toolbox":{"kind":"categoryToolbox","contents":[{"kind":"category","name":"Actions","colour":"#745ba5","contents":[{"type":"movement","kind":"block"},{"type":"rotate","kind":"block"},{"type":"changeStatus","kind":"block"}]},{"kind":"category","name":"Text","colour":"#e13030","contents":[{"type":"text","kind":"block"}]},{"kind":"category","name":"Numbers","colour":"#0d44ba","contents":[{"type":"math_number","kind":"block"}]},{"kind":"category","name":"Loops","colour":"#5ba55b","contents":[{"type":"for_X_times","kind":"block"},{"type":"while_do","kind":"block"}]},{"kind":"category","name":"Logic","colour":"#5b80a5","contents":[{"type":"if_do","kind":"block"},{"type":"if_else_do","kind":"block"},{"type":"and_or","kind":"block"},{"type":"comparator","kind":"block"}]}]},"maxInstances":{"start":1},"workspaceBlocks":[]}}'),
(9, 5, 1, 9, 'Test - 2', '{"phaser":{"width":6,"height":6,"theme":"default","layers":{"background":{"spriteSheet":"background","spriteSheetType":"multi","objects":[{"x":"0","y":"0","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"2","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"3","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"4","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"5","y":"0","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"1","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"2","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"3","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"4","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"5","y":"1","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"2","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"2","spriteIndex":"6","properties":{"collides":false}},{"x":"2","y":"2","spriteIndex":"6","properties":{"collides":false}},{"x":"3","y":"2","spriteIndex":"6","properties":{"collides":false}},{"x":"4","y":"2","spriteIndex":"6","properties":{"collides":false}},{"x":"5","y":"2","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"3","spriteIndex":"3","properties":{"collides":true}},{"x":"1","y":"3","spriteIndex":"7","properties":{"collides":true}},{"x":"2","y":"3","spriteIndex":"6","properties":{"collides":false}},{"x":"3","y":"3","spriteIndex":"6","properties":{"collides":false}},{"x":"4","y":"3","spriteIndex":"6","properties":{"collides":false}},{"x":"5","y":"3","spriteIndex":"2","properties":{"collides":true}},{"x":"1","y":"4","spriteIndex":"3","properties":{"collides":true}},{"x":"2","y":"4","spriteIndex":"7","properties":{"collides":true}},{"x":"3","y":"4","spriteIndex":"6","properties":{"collides":false}},{"x":"4","y":"4","spriteIndex":"6","properties":{"collides":false}},{"x":"5","y":"4","spriteIndex":"2","properties":{"collides":true}},{"x":"2","y":"5","spriteIndex":"3","properties":{"collides":true}},{"x":"3","y":"5","spriteIndex":"4","properties":{"collides":true}},{"x":"4","y":"5","spriteIndex":"4","properties":{"collides":true}},{"x":"5","y":"5","spriteIndex":"5","properties":{"collides":true}}],"depth":0},"objects":[{"spriteSheet":"enemy","spriteSheetType":"multi","objects":[{"x":"3","y":"1","type":"enemy"}],"depth":1},{"spriteSheet":"exit","spriteSheetType":"img","objects":[{"x":"1","y":"2","type":"exit"}],"depth":1},{"spriteSheet":"wall","spriteSheetType":"img","objects":[{"x":"2","y":"2","type":"wall"}],"depth":1},{"spriteSheet":"chest","spriteSheetType":"img","objects":[{"x":"2","y":"3","type":"chest"}],"depth":1}],"players":{"spriteSheet":"player","spriteSheetType":"multi","objects":[{"x":"4","y":"3"}],"depth":2}}},"blockly":{"toolbox":{"kind":"categoryToolbox","contents":[{"kind":"category","name":"Actions","colour":"#745ba5","contents":[{"type":"movement","kind":"block"},{"type":"rotate","kind":"block"},{"type":"changeStatus","kind":"block"}]},{"kind":"category","name":"Text","colour":"#e13030","contents":[{"type":"text","kind":"block"}]},{"kind":"category","name":"Numbers","colour":"#0d44ba","contents":[{"type":"math_number","kind":"block"}]},{"kind":"category","name":"Loops","colour":"#5ba55b","contents":[{"type":"for_X_times","kind":"block"},{"type":"while_do","kind":"block"}]},{"kind":"category","name":"Logic","colour":"#5b80a5","contents":[{"type":"if_do","kind":"block"},{"type":"if_else_do","kind":"block"},{"type":"and_or","kind":"block"},{"type":"comparator","kind":"block"}]}]},"maxInstances":{"start":1},"workspaceBlocks":[]}}'),
(10, 5, 2, 1, 'Movement Variable', '{"phaser":{"width":5,"height":5,"theme":"default","layers":{"background":{"spriteSheet":"background","spriteSheetType":"multi","objects":[{"x":"0","y":"0","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"2","y":"0","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"1","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"2","y":"1","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"2","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"2","spriteIndex":"6","properties":{"collides":false}},{"x":"2","y":"2","spriteIndex":"1","properties":{"collides":true}},{"x":"3","y":"2","spriteIndex":"1","properties":{"collides":true}},{"x":"4","y":"2","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"3","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"3","spriteIndex":"6","properties":{"collides":false}},{"x":"2","y":"3","spriteIndex":"6","properties":{"collides":false}},{"x":"3","y":"3","spriteIndex":"6","properties":{"collides":false}},{"x":"4","y":"3","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"4","spriteIndex":"3","properties":{"collides":true}},{"x":"1","y":"4","spriteIndex":"4","properties":{"collides":true}},{"x":"2","y":"4","spriteIndex":"4","properties":{"collides":true}},{"x":"3","y":"4","spriteIndex":"4","properties":{"collides":true}},{"x":"4","y":"4","spriteIndex":"5","properties":{"collides":true}}],"depth":0},"objects":[{"spriteSheet":"exit","spriteSheetType":"img","objects":[{"x":"3","y":"3","type":"exit"}],"depth":1}],"players":{"spriteSheet":"player","spriteSheetType":"multi","objects":[{"x":"1","y":"1"}],"depth":2}}},"blockly":{"toolbox":{"kind":"categoryToolbox","contents":[{"kind":"category","name":"Actions","colour":"#745ba5","contents":[{"type":"movement","kind":"block"},{"type":"rotate","kind":"block"},{"type":"changeStatus","kind":"block"}]},{"kind":"category","name":"Text","colour":"#e13030","contents":[{"type":"text","kind":"block"}]},{"kind":"category","name":"Numbers","colour":"#0d44ba","contents":[{"type":"math_number","kind":"block"}]},{"kind":"category","name":"Loops","colour":"#5ba55b","contents":[{"type":"for_X_times","kind":"block"},{"type":"while_do","kind":"block"}]},{"kind":"category","name":"Logic","colour":"#5b80a5","contents":[{"type":"if_do","kind":"block"},{"type":"if_else_do","kind":"block"},{"type":"and_or","kind":"block"},{"type":"comparator","kind":"block"}]}]},"maxInstances":{"start":1},"workspaceBlocks":[]}}'),
(11, 5, 2, 2, 'Movement Variable - 2', '{"phaser":{"width":6,"height":5,"theme":"default","layers":{"background":{"spriteSheet":"background","spriteSheetType":"multi","objects":[{"x":"0","y":"0","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"2","y":"0","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"1","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"2","y":"1","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"2","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"2","spriteIndex":"6","properties":{"collides":false}},{"x":"2","y":"2","spriteIndex":"1","properties":{"collides":true}},{"x":"3","y":"2","spriteIndex":"1","properties":{"collides":true}},{"x":"4","y":"2","spriteIndex":"1","properties":{"collides":true}},{"x":"5","y":"2","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"3","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"3","spriteIndex":"6","properties":{"collides":false}},{"x":"2","y":"3","spriteIndex":"6","properties":{"collides":false}},{"x":"3","y":"3","spriteIndex":"6","properties":{"collides":false}},{"x":"4","y":"3","spriteIndex":"6","properties":{"collides":false}},{"x":"5","y":"3","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"4","spriteIndex":"3","properties":{"collides":true}},{"x":"1","y":"4","spriteIndex":"4","properties":{"collides":true}},{"x":"2","y":"4","spriteIndex":"4","properties":{"collides":true}},{"x":"3","y":"4","spriteIndex":"4","properties":{"collides":true}},{"x":"4","y":"4","spriteIndex":"4","properties":{"collides":true}},{"x":"5","y":"4","spriteIndex":"5","properties":{"collides":true}}],"depth":0},"objects":[{"spriteSheet":"exit","spriteSheetType":"img","objects":[{"x":"4","y":"3","type":"exit"}],"depth":1}],"players":{"spriteSheet":"player","spriteSheetType":"multi","objects":[{"x":"1","y":"1"}],"depth":2}}},"blockly":{"toolbox":{"kind":"categoryToolbox","contents":[{"kind":"category","name":"Actions","colour":"#745ba5","contents":[{"type":"movement","kind":"block"},{"type":"rotate","kind":"block"},{"type":"changeStatus","kind":"block"}]},{"kind":"category","name":"Text","colour":"#e13030","contents":[{"type":"text","kind":"block"}]},{"kind":"category","name":"Numbers","colour":"#0d44ba","contents":[{"type":"math_number","kind":"block"}]},{"kind":"category","name":"Loops","colour":"#5ba55b","contents":[{"type":"for_X_times","kind":"block"},{"type":"while_do","kind":"block"}]},{"kind":"category","name":"Logic","colour":"#5b80a5","contents":[{"type":"if_do","kind":"block"},{"type":"if_else_do","kind":"block"},{"type":"and_or","kind":"block"},{"type":"comparator","kind":"block"}]}]},"maxInstances":{"start":1},"workspaceBlocks":[]}}'),
(12, 5, 2, 3, 'Movement Variable - 3', '{"phaser":{"width":9,"height":6,"theme":"default","layers":{"background":{"spriteSheet":"background","spriteSheetType":"multi","objects":[{"x":"0","y":"0","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"2","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"3","y":"0","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"1","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"2","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"3","y":"1","spriteIndex":"1","properties":{"collides":true}},{"x":"4","y":"1","spriteIndex":"1","properties":{"collides":true}},{"x":"5","y":"1","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"2","spriteIndex":"3","properties":{"collides":true}},{"x":"1","y":"2","spriteIndex":"7","properties":{"collides":true}},{"x":"2","y":"2","spriteIndex":"6","properties":{"collides":false}},{"x":"3","y":"2","spriteIndex":"6","properties":{"collides":false}},{"x":"4","y":"2","spriteIndex":"6","properties":{"collides":false}},{"x":"5","y":"2","spriteIndex":"2","properties":{"collides":true}},{"x":"1","y":"3","spriteIndex":"3","properties":{"collides":true}},{"x":"2","y":"3","spriteIndex":"4","properties":{"collides":true}},{"x":"3","y":"3","spriteIndex":"7","properties":{"collides":true}},{"x":"4","y":"3","spriteIndex":"6","properties":{"collides":false}},{"x":"5","y":"3","spriteIndex":"1","properties":{"collides":true}},{"x":"6","y":"3","spriteIndex":"1","properties":{"collides":true}},{"x":"7","y":"3","spriteIndex":"1","properties":{"collides":true}},{"x":"8","y":"3","spriteIndex":"2","properties":{"collides":true}},{"x":"3","y":"4","spriteIndex":"0","properties":{"collides":true}},{"x":"4","y":"4","spriteIndex":"6","properties":{"collides":false}},{"x":"5","y":"4","spriteIndex":"6","properties":{"collides":false}},{"x":"6","y":"4","spriteIndex":"6","properties":{"collides":false}},{"x":"7","y":"4","spriteIndex":"6","properties":{"collides":false}},{"x":"8","y":"4","spriteIndex":"2","properties":{"collides":true}},{"x":"3","y":"5","spriteIndex":"3","properties":{"collides":true}},{"x":"4","y":"5","spriteIndex":"4","properties":{"collides":true}},{"x":"5","y":"5","spriteIndex":"4","properties":{"collides":true}},{"x":"6","y":"5","spriteIndex":"4","properties":{"collides":true}},{"x":"7","y":"5","spriteIndex":"4","properties":{"collides":true}},{"x":"8","y":"5","spriteIndex":"5","properties":{"collides":true}}],"depth":0},"objects":[{"spriteSheet":"exit","spriteSheetType":"img","objects":[{"x":"7","y":"4","type":"exit"}],"depth":1}],"players":{"spriteSheet":"player","spriteSheetType":"multi","objects":[{"x":"1","y":"1"}],"depth":2}}},"blockly":{"toolbox":{"kind":"categoryToolbox","contents":[{"kind":"category","name":"Actions","colour":"#745ba5","contents":[{"type":"movement","kind":"block"},{"type":"rotate","kind":"block"},{"type":"changeStatus","kind":"block"}]},{"kind":"category","name":"Text","colour":"#e13030","contents":[{"type":"text","kind":"block"}]},{"kind":"category","name":"Numbers","colour":"#0d44ba","contents":[{"type":"math_number","kind":"block"}]},{"kind":"category","name":"Loops","colour":"#5ba55b","contents":[{"type":"for_X_times","kind":"block"},{"type":"while_do","kind":"block"}]},{"kind":"category","name":"Logic","colour":"#5b80a5","contents":[{"type":"if_do","kind":"block"},{"type":"if_else_do","kind":"block"},{"type":"and_or","kind":"block"},{"type":"comparator","kind":"block"}]}]},"maxInstances":{"start":1},"workspaceBlocks":[]}}'),
(13, 5, 2, 4, 'Multi Variables', '{"phaser":{"width":12,"height":11,"theme":"default","layers":{"background":{"spriteSheet":"background","spriteSheetType":"multi","objects":[{"x":"5","y":"0","spriteIndex":"0","properties":{"collides":true}},{"x":"6","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"7","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"8","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"9","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"10","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"11","y":"0","spriteIndex":"2","properties":{"collides":true}},{"x":"5","y":"1","spriteIndex":"0","properties":{"collides":true}},{"x":"6","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"7","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"8","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"9","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"10","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"11","y":"1","spriteIndex":"2","properties":{"collides":true}},{"x":"5","y":"2","spriteIndex":"0","properties":{"collides":true}},{"x":"6","y":"2","spriteIndex":"6","properties":{"collides":false}},{"x":"7","y":"2","spriteIndex":"8","properties":{"collides":true}},{"x":"8","y":"2","spriteIndex":"4","properties":{"collides":true}},{"x":"9","y":"2","spriteIndex":"4","properties":{"collides":true}},{"x":"10","y":"2","spriteIndex":"4","properties":{"collides":true}},{"x":"11","y":"2","spriteIndex":"5","properties":{"collides":true}},{"x":"5","y":"3","spriteIndex":"0","properties":{"collides":true}},{"x":"6","y":"3","spriteIndex":"6","properties":{"collides":false}},{"x":"7","y":"3","spriteIndex":"1","properties":{"collides":true}},{"x":"8","y":"3","spriteIndex":"1","properties":{"collides":true}},{"x":"9","y":"3","spriteIndex":"1","properties":{"collides":true}},{"x":"10","y":"3","spriteIndex":"1","properties":{"collides":true}},{"x":"11","y":"3","spriteIndex":"2","properties":{"collides":true}},{"x":"5","y":"4","spriteIndex":"0","properties":{"collides":true}},{"x":"6","y":"4","spriteIndex":"6","properties":{"collides":false}},{"x":"7","y":"4","spriteIndex":"6","properties":{"collides":false}},{"x":"8","y":"4","spriteIndex":"6","properties":{"collides":false}},{"x":"9","y":"4","spriteIndex":"6","properties":{"collides":false}},{"x":"10","y":"4","spriteIndex":"6","properties":{"collides":false}},{"x":"11","y":"4","spriteIndex":"2","properties":{"collides":true}},{"x":"5","y":"5","spriteIndex":"3","properties":{"collides":true}},{"x":"6","y":"5","spriteIndex":"4","properties":{"collides":true}},{"x":"7","y":"5","spriteIndex":"4","properties":{"collides":true}},{"x":"8","y":"5","spriteIndex":"4","properties":{"collides":true}},{"x":"9","y":"5","spriteIndex":"7","properties":{"collides":true}},{"x":"10","y":"5","spriteIndex":"6","properties":{"collides":false}},{"x":"11","y":"5","spriteIndex":"2","properties":{"collides":true}},{"x":"9","y":"6","spriteIndex":"0","properties":{"collides":true}},{"x":"10","y":"6","spriteIndex":"6","properties":{"collides":false}},{"x":"11","y":"6","spriteIndex":"2","properties":{"collides":true}},{"x":"9","y":"7","spriteIndex":"0","properties":{"collides":true}},{"x":"10","y":"7","spriteIndex":"6","properties":{"collides":false}},{"x":"11","y":"7","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"8","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"8","spriteIndex":"1","properties":{"collides":true}},{"x":"2","y":"8","spriteIndex":"1","properties":{"collides":true}},{"x":"3","y":"8","spriteIndex":"1","properties":{"collides":true}},{"x":"4","y":"8","spriteIndex":"1","properties":{"collides":true}},{"x":"5","y":"8","spriteIndex":"1","properties":{"collides":true}},{"x":"6","y":"8","spriteIndex":"1","properties":{"collides":true}},{"x":"7","y":"8","spriteIndex":"1","properties":{"collides":true}},{"x":"8","y":"8","spriteIndex":"1","properties":{"collides":true}},{"x":"9","y":"8","spriteIndex":"1","properties":{"collides":true}},{"x":"10","y":"8","spriteIndex":"6","properties":{"collides":false}},{"x":"11","y":"8","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"9","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"9","spriteIndex":"6","properties":{"collides":false}},{"x":"2","y":"9","spriteIndex":"6","properties":{"collides":false}},{"x":"3","y":"9","spriteIndex":"6","properties":{"collides":false}},{"x":"4","y":"9","spriteIndex":"6","properties":{"collides":false}},{"x":"5","y":"9","spriteIndex":"6","properties":{"collides":false}},{"x":"6","y":"9","spriteIndex":"6","properties":{"collides":false}},{"x":"7","y":"9","spriteIndex":"6","properties":{"collides":false}},{"x":"8","y":"9","spriteIndex":"6","properties":{"collides":false}},{"x":"9","y":"9","spriteIndex":"6","properties":{"collides":false}},{"x":"10","y":"9","spriteIndex":"6","properties":{"collides":false}},{"x":"11","y":"9","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"10","spriteIndex":"3","properties":{"collides":true}},{"x":"1","y":"10","spriteIndex":"4","properties":{"collides":true}},{"x":"2","y":"10","spriteIndex":"4","properties":{"collides":true}},{"x":"3","y":"10","spriteIndex":"4","properties":{"collides":true}},{"x":"4","y":"10","spriteIndex":"4","properties":{"collides":true}},{"x":"5","y":"10","spriteIndex":"4","properties":{"collides":true}},{"x":"6","y":"10","spriteIndex":"4","properties":{"collides":true}},{"x":"7","y":"10","spriteIndex":"4","properties":{"collides":true}},{"x":"8","y":"10","spriteIndex":"4","properties":{"collides":true}},{"x":"9","y":"10","spriteIndex":"4","properties":{"collides":true}},{"x":"10","y":"10","spriteIndex":"4","properties":{"collides":true}},{"x":"11","y":"10","spriteIndex":"5","properties":{"collides":true}}],"depth":0},"objects":[{"spriteSheet":"exit","spriteSheetType":"img","objects":[{"x":"8","y":"1","type":"exit"}],"depth":1}],"players":{"spriteSheet":"player","spriteSheetType":"multi","objects":[{"x":"1","y":"9"}],"depth":2}}},"blockly":{"toolbox":{"kind":"categoryToolbox","contents":[{"kind":"category","name":"Actions","colour":"#745ba5","contents":[{"type":"movement","kind":"block"},{"type":"rotate","kind":"block"},{"type":"changeStatus","kind":"block"}]},{"kind":"category","name":"Text","colour":"#e13030","contents":[{"type":"text","kind":"block"}]},{"kind":"category","name":"Numbers","colour":"#0d44ba","contents":[{"type":"math_number","kind":"block"}]},{"kind":"category","name":"Loops","colour":"#5ba55b","contents":[{"type":"for_X_times","kind":"block"},{"type":"while_do","kind":"block"}]},{"kind":"category","name":"Logic","colour":"#5b80a5","contents":[{"type":"if_do","kind":"block"},{"type":"if_else_do","kind":"block"},{"type":"and_or","kind":"block"},{"type":"comparator","kind":"block"}]}]},"maxInstances":{"start":1},"workspaceBlocks":[]}}'),
(14, 5, 2, 5, 'Recycle', '{"phaser":{"width":6,"height":6,"theme":"default","layers":{"background":{"spriteSheet":"background","spriteSheetType":"multi","objects":[{"x":"0","y":"0","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"2","y":"0","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"1","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"2","y":"1","spriteIndex":"2","properties":{"collides":true}},{"x":"3","y":"1","spriteIndex":"1","properties":{"collides":true}},{"x":"4","y":"1","spriteIndex":"1","properties":{"collides":true}},{"x":"5","y":"1","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"2","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"2","spriteIndex":"6","properties":{"collides":false}},{"x":"2","y":"2","spriteIndex":"2","properties":{"collides":true}},{"x":"3","y":"2","spriteIndex":"6","properties":{"collides":false}},{"x":"4","y":"2","spriteIndex":"6","properties":{"collides":false}},{"x":"5","y":"2","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"3","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"3","spriteIndex":"6","properties":{"collides":false}},{"x":"2","y":"3","spriteIndex":"1","properties":{"collides":true}},{"x":"3","y":"3","spriteIndex":"1","properties":{"collides":true}},{"x":"4","y":"3","spriteIndex":"6","properties":{"collides":false}},{"x":"5","y":"3","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"4","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"4","spriteIndex":"6","properties":{"collides":false}},{"x":"2","y":"4","spriteIndex":"6","properties":{"collides":false}},{"x":"3","y":"4","spriteIndex":"6","properties":{"collides":false}},{"x":"4","y":"4","spriteIndex":"6","properties":{"collides":false}},{"x":"5","y":"4","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"5","spriteIndex":"3","properties":{"collides":true}},{"x":"1","y":"5","spriteIndex":"4","properties":{"collides":true}},{"x":"2","y":"5","spriteIndex":"4","properties":{"collides":true}},{"x":"3","y":"5","spriteIndex":"4","properties":{"collides":true}},{"x":"4","y":"5","spriteIndex":"4","properties":{"collides":true}},{"x":"5","y":"5","spriteIndex":"5","properties":{"collides":true}}],"depth":0},"objects":[{"spriteSheet":"exit","spriteSheetType":"img","objects":[{"x":"3","y":"2","type":"exit"}],"depth":1}],"players":{"spriteSheet":"player","spriteSheetType":"multi","objects":[{"x":"1","y":"1"}],"depth":2}}},"blockly":{"toolbox":{"kind":"categoryToolbox","contents":[{"kind":"category","name":"Actions","colour":"#745ba5","contents":[{"type":"movement","kind":"block"},{"type":"rotate","kind":"block"},{"type":"changeStatus","kind":"block"}]},{"kind":"category","name":"Text","colour":"#e13030","contents":[{"type":"text","kind":"block"}]},{"kind":"category","name":"Numbers","colour":"#0d44ba","contents":[{"type":"math_number","kind":"block"}]},{"kind":"category","name":"Loops","colour":"#5ba55b","contents":[{"type":"for_X_times","kind":"block"},{"type":"while_do","kind":"block"}]},{"kind":"category","name":"Logic","colour":"#5b80a5","contents":[{"type":"if_do","kind":"block"},{"type":"if_else_do","kind":"block"},{"type":"and_or","kind":"block"},{"type":"comparator","kind":"block"}]}]},"maxInstances":{"start":1},"workspaceBlocks":[]}}'),
(15, 5, 2, 6, 'Recycle - 2', '{"phaser":{"width":10,"height":9,"theme":"default","layers":{"background":{"spriteSheet":"background","spriteSheetType":"multi","objects":[{"x":"0","y":"0","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"2","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"3","y":"0","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"1","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"2","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"3","y":"1","spriteIndex":"1","properties":{"collides":true}},{"x":"4","y":"1","spriteIndex":"1","properties":{"collides":true}},{"x":"5","y":"1","spriteIndex":"1","properties":{"collides":true}},{"x":"6","y":"1","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"2","spriteIndex":"3","properties":{"collides":true}},{"x":"1","y":"2","spriteIndex":"7","properties":{"collides":true}},{"x":"2","y":"2","spriteIndex":"6","properties":{"collides":false}},{"x":"3","y":"2","spriteIndex":"6","properties":{"collides":false}},{"x":"4","y":"2","spriteIndex":"6","properties":{"collides":false}},{"x":"5","y":"2","spriteIndex":"6","properties":{"collides":false}},{"x":"6","y":"2","spriteIndex":"2","properties":{"collides":true}},{"x":"1","y":"3","spriteIndex":"3","properties":{"collides":true}},{"x":"2","y":"3","spriteIndex":"4","properties":{"collides":true}},{"x":"3","y":"3","spriteIndex":"4","properties":{"collides":true}},{"x":"4","y":"3","spriteIndex":"7","properties":{"collides":true}},{"x":"5","y":"3","spriteIndex":"6","properties":{"collides":false}},{"x":"6","y":"3","spriteIndex":"1","properties":{"collides":true}},{"x":"7","y":"3","spriteIndex":"1","properties":{"collides":true}},{"x":"8","y":"3","spriteIndex":"1","properties":{"collides":true}},{"x":"9","y":"3","spriteIndex":"2","properties":{"collides":true}},{"x":"4","y":"4","spriteIndex":"0","properties":{"collides":true}},{"x":"5","y":"4","spriteIndex":"6","properties":{"collides":false}},{"x":"6","y":"4","spriteIndex":"6","properties":{"collides":false}},{"x":"7","y":"4","spriteIndex":"6","properties":{"collides":false}},{"x":"8","y":"4","spriteIndex":"6","properties":{"collides":false}},{"x":"9","y":"4","spriteIndex":"2","properties":{"collides":true}},{"x":"4","y":"5","spriteIndex":"3","properties":{"collides":true}},{"x":"5","y":"5","spriteIndex":"4","properties":{"collides":true}},{"x":"6","y":"5","spriteIndex":"4","properties":{"collides":true}},{"x":"7","y":"5","spriteIndex":"7","properties":{"collides":true}},{"x":"8","y":"5","spriteIndex":"6","properties":{"collides":false}},{"x":"9","y":"5","spriteIndex":"2","properties":{"collides":true}},{"x":"7","y":"6","spriteIndex":"0","properties":{"collides":true}},{"x":"8","y":"6","spriteIndex":"6","properties":{"collides":false}},{"x":"9","y":"6","spriteIndex":"2","properties":{"collides":true}},{"x":"7","y":"7","spriteIndex":"0","properties":{"collides":true}},{"x":"8","y":"7","spriteIndex":"6","properties":{"collides":false}},{"x":"9","y":"7","spriteIndex":"2","properties":{"collides":true}},{"x":"7","y":"8","spriteIndex":"3","properties":{"collides":true}},{"x":"8","y":"8","spriteIndex":"4","properties":{"collides":true}},{"x":"9","y":"8","spriteIndex":"5","properties":{"collides":true}}],"depth":0},"objects":[{"spriteSheet":"exit","spriteSheetType":"img","objects":[{"x":"8","y":"7","type":"exit"}],"depth":1}],"players":{"spriteSheet":"player","spriteSheetType":"multi","objects":[{"x":"1","y":"1"}],"depth":2}}},"blockly":{"toolbox":{"kind":"categoryToolbox","contents":[{"kind":"category","name":"Actions","colour":"#745ba5","contents":[{"type":"movement","kind":"block"},{"type":"rotate","kind":"block"},{"type":"changeStatus","kind":"block"}]},{"kind":"category","name":"Text","colour":"#e13030","contents":[{"type":"text","kind":"block"}]},{"kind":"category","name":"Numbers","colour":"#0d44ba","contents":[{"type":"math_number","kind":"block"}]},{"kind":"category","name":"Loops","colour":"#5ba55b","contents":[{"type":"for_X_times","kind":"block"},{"type":"while_do","kind":"block"}]},{"kind":"category","name":"Logic","colour":"#5b80a5","contents":[{"type":"if_do","kind":"block"},{"type":"if_else_do","kind":"block"},{"type":"and_or","kind":"block"},{"type":"comparator","kind":"block"}]}]},"maxInstances":{"start":1},"workspaceBlocks":[]}}'),
(16, 5, 2, 7, 'Chests!', '{"phaser":{"width":11,"height":10,"theme":"default","layers":{"background":{"spriteSheet":"background","spriteSheetType":"multi","objects":[{"x":"0","y":"0","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"2","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"3","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"4","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"5","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"6","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"7","y":"0","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"1","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"2","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"3","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"4","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"5","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"6","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"7","y":"1","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"2","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"2","spriteIndex":"6","properties":{"collides":false}},{"x":"2","y":"2","spriteIndex":"8","properties":{"collides":true}},{"x":"3","y":"2","spriteIndex":"4","properties":{"collides":true}},{"x":"4","y":"2","spriteIndex":"4","properties":{"collides":true}},{"x":"5","y":"2","spriteIndex":"7","properties":{"collides":true}},{"x":"6","y":"2","spriteIndex":"6","properties":{"collides":false}},{"x":"7","y":"2","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"3","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"3","spriteIndex":"6","properties":{"collides":false}},{"x":"2","y":"3","spriteIndex":"1","properties":{"collides":true}},{"x":"3","y":"3","spriteIndex":"1","properties":{"collides":true}},{"x":"4","y":"3","spriteIndex":"1","properties":{"collides":true}},{"x":"5","y":"3","spriteIndex":"1","properties":{"collides":true}},{"x":"6","y":"3","spriteIndex":"6","properties":{"collides":false}},{"x":"7","y":"3","spriteIndex":"1","properties":{"collides":true}},{"x":"8","y":"3","spriteIndex":"1","properties":{"collides":true}},{"x":"9","y":"3","spriteIndex":"1","properties":{"collides":true}},{"x":"10","y":"3","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"4","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"4","spriteIndex":"6","properties":{"collides":false}},{"x":"2","y":"4","spriteIndex":"6","properties":{"collides":false}},{"x":"3","y":"4","spriteIndex":"6","properties":{"collides":false}},{"x":"4","y":"4","spriteIndex":"6","properties":{"collides":false}},{"x":"5","y":"4","spriteIndex":"6","properties":{"collides":false}},{"x":"6","y":"4","spriteIndex":"6","properties":{"collides":false}},{"x":"7","y":"4","spriteIndex":"6","properties":{"collides":false}},{"x":"8","y":"4","spriteIndex":"6","properties":{"collides":false}},{"x":"9","y":"4","spriteIndex":"6","properties":{"collides":false}},{"x":"10","y":"4","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"5","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"5","spriteIndex":"6","properties":{"collides":false}},{"x":"2","y":"5","spriteIndex":"6","properties":{"collides":false}},{"x":"3","y":"5","spriteIndex":"4","properties":{"collides":true}},{"x":"4","y":"5","spriteIndex":"4","properties":{"collides":true}},{"x":"5","y":"5","spriteIndex":"4","properties":{"collides":true}},{"x":"6","y":"5","spriteIndex":"4","properties":{"collides":true}},{"x":"7","y":"5","spriteIndex":"4","properties":{"collides":true}},{"x":"8","y":"5","spriteIndex":"4","properties":{"collides":true}},{"x":"9","y":"5","spriteIndex":"6","properties":{"collides":false}},{"x":"10","y":"5","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"6","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"6","spriteIndex":"6","properties":{"collides":false}},{"x":"2","y":"6","spriteIndex":"6","properties":{"collides":false}},{"x":"3","y":"6","spriteIndex":"6","properties":{"collides":false}},{"x":"4","y":"6","spriteIndex":"6","properties":{"collides":false}},{"x":"5","y":"6","spriteIndex":"6","properties":{"collides":false}},{"x":"6","y":"6","spriteIndex":"6","properties":{"collides":false}},{"x":"7","y":"6","spriteIndex":"6","properties":{"collides":false}},{"x":"8","y":"6","spriteIndex":"6","properties":{"collides":false}},{"x":"9","y":"6","spriteIndex":"6","properties":{"collides":false}},{"x":"10","y":"6","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"7","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"7","spriteIndex":"6","properties":{"collides":false}},{"x":"2","y":"7","spriteIndex":"6","properties":{"collides":false}},{"x":"3","y":"7","spriteIndex":"6","properties":{"collides":false}},{"x":"4","y":"7","spriteIndex":"6","properties":{"collides":false}},{"x":"5","y":"7","spriteIndex":"6","properties":{"collides":false}},{"x":"6","y":"7","spriteIndex":"8","properties":{"collides":true}},{"x":"7","y":"7","spriteIndex":"4","properties":{"collides":true}},{"x":"8","y":"7","spriteIndex":"4","properties":{"collides":true}},{"x":"9","y":"7","spriteIndex":"4","properties":{"collides":true}},{"x":"10","y":"7","spriteIndex":"5","properties":{"collides":true}},{"x":"0","y":"8","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"8","spriteIndex":"6","properties":{"collides":false}},{"x":"2","y":"8","spriteIndex":"6","properties":{"collides":false}},{"x":"3","y":"8","spriteIndex":"6","properties":{"collides":false}},{"x":"4","y":"8","spriteIndex":"6","properties":{"collides":false}},{"x":"5","y":"8","spriteIndex":"6","properties":{"collides":false}},{"x":"6","y":"8","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"9","spriteIndex":"3","properties":{"collides":true}},{"x":"1","y":"9","spriteIndex":"4","properties":{"collides":true}},{"x":"2","y":"9","spriteIndex":"4","properties":{"collides":true}},{"x":"3","y":"9","spriteIndex":"4","properties":{"collides":true}},{"x":"4","y":"9","spriteIndex":"4","properties":{"collides":true}},{"x":"5","y":"9","spriteIndex":"4","properties":{"collides":true}},{"x":"6","y":"9","spriteIndex":"5","properties":{"collides":true}}],"depth":0},"objects":[{"spriteSheet":"chest","spriteSheetType":"img","objects":[{"x":"1","y":"1","type":"chest"},{"x":"6","y":"1","type":"chest"},{"x":"5","y":"8","type":"chest"}],"depth":1},{"spriteSheet":"wall","spriteSheetType":"img","objects":[{"x":"2","y":"5","type":"wall"},{"x":"3","y":"5","type":"wall"},{"x":"4","y":"5","type":"wall"},{"x":"5","y":"5","type":"wall"},{"x":"6","y":"5","type":"wall"},{"x":"7","y":"5","type":"wall"},{"x":"8","y":"5","type":"wall"},{"x":"2","y":"6","type":"wall"},{"x":"2","y":"7","type":"wall"},{"x":"4","y":"7","type":"wall"}],"depth":1},{"spriteSheet":"exit","spriteSheetType":"img","objects":[{"x":"3","y":"6","type":"exit"}],"depth":1}],"players":{"spriteSheet":"player","spriteSheetType":"multi","objects":[{"x":"1","y":"6"}],"depth":2}}},"blockly":{"toolbox":{"kind":"categoryToolbox","contents":[{"kind":"category","name":"Actions","colour":"#745ba5","contents":[{"type":"movement","kind":"block"},{"type":"rotate","kind":"block"},{"type":"changeStatus","kind":"block"}]},{"kind":"category","name":"Text","colour":"#e13030","contents":[{"type":"text","kind":"block"}]},{"kind":"category","name":"Numbers","colour":"#0d44ba","contents":[{"type":"math_number","kind":"block"}]},{"kind":"category","name":"Loops","colour":"#5ba55b","contents":[{"type":"for_X_times","kind":"block"},{"type":"while_do","kind":"block"}]},{"kind":"category","name":"Logic","colour":"#5b80a5","contents":[{"type":"if_do","kind":"block"},{"type":"if_else_do","kind":"block"},{"type":"and_or","kind":"block"},{"type":"comparator","kind":"block"}]}]},"maxInstances":{"start":1},"workspaceBlocks":[]}}'),
(17, 5, 3, 1, 'Trap', '{"phaser":{"width":6,"height":3,"theme":"default","layers":{"background":{"spriteSheet":"background","spriteSheetType":"multi","objects":[{"x":"0","y":"0","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"2","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"3","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"4","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"5","y":"0","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"1","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"2","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"3","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"4","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"5","y":"1","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"2","spriteIndex":"3","properties":{"collides":true}},{"x":"1","y":"2","spriteIndex":"4","properties":{"collides":true}},{"x":"2","y":"2","spriteIndex":"4","properties":{"collides":true}},{"x":"3","y":"2","spriteIndex":"4","properties":{"collides":true}},{"x":"4","y":"2","spriteIndex":"4","properties":{"collides":true}},{"x":"5","y":"2","spriteIndex":"5","properties":{"collides":true}}],"depth":0},"objects":[{"spriteSheet":"trap","spriteSheetType":"multi","objects":[{"x":"2","y":"1","type":"trap","properties":{"enabled":true}},{"x":"3","y":"1","type":"trap","properties":{"enabled":false}}],"depth":1},{"spriteSheet":"exit","spriteSheetType":"img","objects":[{"x":"4","y":"1","type":"exit"}],"depth":1}],"players":{"spriteSheet":"player","spriteSheetType":"multi","objects":[{"x":"1","y":"1"}],"depth":2}}},"blockly":{"toolbox":{"kind":"categoryToolbox","contents":[{"kind":"category","name":"Actions","colour":"#745ba5","contents":[{"type":"movement","kind":"block"},{"type":"rotate","kind":"block"},{"type":"changeStatus","kind":"block"}]},{"kind":"category","name":"Text","colour":"#e13030","contents":[{"type":"text","kind":"block"}]},{"kind":"category","name":"Numbers","colour":"#0d44ba","contents":[{"type":"math_number","kind":"block"}]},{"kind":"category","name":"Loops","colour":"#5ba55b","contents":[{"type":"for_X_times","kind":"block"},{"type":"while_do","kind":"block"}]},{"kind":"category","name":"Logic","colour":"#5b80a5","contents":[{"type":"if_do","kind":"block"},{"type":"if_else_do","kind":"block"},{"type":"and_or","kind":"block"},{"type":"comparator","kind":"block"}]}]},"maxInstances":{"start":1},"workspaceBlocks":[]}}'),
(18, 5, 3, 2, 'Trap - 2', '{"phaser":{"width":7,"height":4,"theme":"default","layers":{"background":{"spriteSheet":"background","spriteSheetType":"multi","objects":[{"x":"0","y":"0","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"2","y":"0","spriteIndex":"2","properties":{"collides":true}},{"x":"4","y":"0","spriteIndex":"0","properties":{"collides":true}},{"x":"5","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"6","y":"0","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"1","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"2","y":"1","spriteIndex":"1","properties":{"collides":true}},{"x":"3","y":"1","spriteIndex":"1","properties":{"collides":true}},{"x":"4","y":"1","spriteIndex":"1","properties":{"collides":true}},{"x":"5","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"6","y":"1","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"2","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"2","spriteIndex":"6","properties":{"collides":false}},{"x":"2","y":"2","spriteIndex":"6","properties":{"collides":false}},{"x":"3","y":"2","spriteIndex":"6","properties":{"collides":false}},{"x":"4","y":"2","spriteIndex":"6","properties":{"collides":false}},{"x":"5","y":"2","spriteIndex":"6","properties":{"collides":false}},{"x":"6","y":"2","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"3","spriteIndex":"3","properties":{"collides":true}},{"x":"1","y":"3","spriteIndex":"4","properties":{"collides":true}},{"x":"2","y":"3","spriteIndex":"4","properties":{"collides":true}},{"x":"3","y":"3","spriteIndex":"4","properties":{"collides":true}},{"x":"4","y":"3","spriteIndex":"4","properties":{"collides":true}},{"x":"5","y":"3","spriteIndex":"4","properties":{"collides":true}},{"x":"6","y":"3","spriteIndex":"5","properties":{"collides":true}}],"depth":0},"objects":[{"spriteSheet":"exit","spriteSheetType":"img","objects":[{"x":"5","y":"1","type":"exit"}],"depth":1},{"spriteSheet":"trap","spriteSheetType":"multi","objects":[{"x":"2","y":"2","type":"trap","properties":{"enabled":true}},{"x":"3","y":"2","type":"trap","properties":{"enabled":false}},{"x":"4","y":"2","type":"trap","properties":{"enabled":true}}],"depth":1}],"players":{"spriteSheet":"player","spriteSheetType":"multi","objects":[{"x":"1","y":"1"}],"depth":2}}},"blockly":{"toolbox":{"kind":"categoryToolbox","contents":[{"kind":"category","name":"Actions","colour":"#745ba5","contents":[{"type":"movement","kind":"block"},{"type":"rotate","kind":"block"},{"type":"changeStatus","kind":"block"}]},{"kind":"category","name":"Text","colour":"#e13030","contents":[{"type":"text","kind":"block"}]},{"kind":"category","name":"Numbers","colour":"#0d44ba","contents":[{"type":"math_number","kind":"block"}]},{"kind":"category","name":"Loops","colour":"#5ba55b","contents":[{"type":"for_X_times","kind":"block"},{"type":"while_do","kind":"block"}]},{"kind":"category","name":"Logic","colour":"#5b80a5","contents":[{"type":"if_do","kind":"block"},{"type":"if_else_do","kind":"block"},{"type":"and_or","kind":"block"},{"type":"comparator","kind":"block"}]}]},"maxInstances":{"start":1},"workspaceBlocks":[]}}'),
(19, 5, 3, 3, 'Player', '{"phaser":{"width":5,"height":5,"theme":"default","layers":{"background":{"spriteSheet":"background","spriteSheetType":"multi","objects":[{"x":"0","y":"0","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"2","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"3","y":"0","spriteIndex":"1","properties":{"collides":true}},{"x":"4","y":"0","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"1","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"2","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"3","y":"1","spriteIndex":"6","properties":{"collides":false}},{"x":"4","y":"1","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"2","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"2","spriteIndex":"6","properties":{"collides":false}},{"x":"2","y":"2","spriteIndex":"6","properties":{"collides":false}},{"x":"3","y":"2","spriteIndex":"6","properties":{"collides":false}},{"x":"4","y":"2","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"3","spriteIndex":"0","properties":{"collides":true}},{"x":"1","y":"3","spriteIndex":"6","properties":{"collides":false}},{"x":"2","y":"3","spriteIndex":"6","properties":{"collides":false}},{"x":"3","y":"3","spriteIndex":"6","properties":{"collides":false}},{"x":"4","y":"3","spriteIndex":"2","properties":{"collides":true}},{"x":"0","y":"4","spriteIndex":"3","properties":{"collides":true}},{"x":"1","y":"4","spriteIndex":"4","properties":{"collides":true}},{"x":"2","y":"4","spriteIndex":"4","properties":{"collides":true}},{"x":"3","y":"4","spriteIndex":"4","properties":{"collides":true}},{"x":"4","y":"4","spriteIndex":"5","properties":{"collides":true}}],"depth":0},"objects":[{"spriteSheet":"wall","spriteSheetType":"img","objects":[{"x":"1","y":"2","type":"wall"},{"x":"2","y":"2","type":"wall"}],"depth":1},{"spriteSheet":"exit","spriteSheetType":"img","objects":[{"x":"3","y":"2","type":"exit"}],"depth":1}],"players":{"spriteSheet":"player","spriteSheetType":"multi","objects":[{"x":"1","y":"1"},{"x":"1","y":"3"}],"depth":2}}},"blockly":{"toolbox":{"kind":"categoryToolbox","contents":[{"kind":"category","name":"Actions","colour":"#745ba5","contents":[{"type":"movement","kind":"block"},{"type":"rotate","kind":"block"},{"type":"changeStatus","kind":"block"}]},{"kind":"category","name":"Text","colour":"#e13030","contents":[{"type":"text","kind":"block"}]},{"kind":"category","name":"Numbers","colour":"#0d44ba","contents":[{"type":"math_number","kind":"block"}]},{"kind":"category","name":"Loops","colour":"#5ba55b","contents":[{"type":"for_X_times","kind":"block"},{"type":"while_do","kind":"block"}]},{"kind":"category","name":"Logic","colour":"#5b80a5","contents":[{"type":"if_do","kind":"block"},{"type":"if_else_do","kind":"block"},{"type":"and_or","kind":"block"},{"type":"comparator","kind":"block"}]}]},"maxInstances":{"start":1},"workspaceBlocks":[]}}');
-- (20, 5, 3, 4, 'Player - 2', ''),
-- (21, 5, 3, 5, 'Boolean', ''),
-- (22, 5, 3, 6, 'Boolean Variable', '');


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `play`
--

CREATE TABLE `play` (
  `user` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `stars` int(11) NOT NULL,
  `attempts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `set`
--

CREATE TABLE `set` (
  `group` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `role` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `set`
--

INSERT INTO `set` (`group`, `user`, `role`) VALUES
(15, 3, 'Miembro'),
(15, 4, 'Anfitrión'),
(16, 4, 'Anfitrión'),
(17, 3, 'Anfitrión');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `role` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `name`, `role`, `password`) VALUES
(1, 'Diego', 'Estudiante', '1234'),
(2, 'Samuel', 'Admin', '12345'),
(3, 'abcd', 'Estudiante', '$2b$11$nB8ZtM/0MGOwISU4fmbpJu/pmT7QhZqak5ZTo3tlwyvDI4kHAlLye'),
(4, 'prueba', 'Estudiante', '$2b$11$HBfvRL4YVYSD5KdtWAmKQOq0SQQn2TC/GEQNoN0iaWwvsGESY1Ejm'),
(5, 'BlockLeap', 'Admin', '$2b$11$o5RezMu.bSkDldrmyyvV6ew8N7khRHu4UZDJj3zwHl1xF2HAU01Pi');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `access`
--
ALTER TABLE `access`
  ADD KEY `user` (`user`,`level`),
  ADD KEY `level` (`level`);

--
-- Indices de la tabla `assigned`
--
ALTER TABLE `assigned`
  ADD KEY `group` (`group`,`level`),
  ADD KEY `level` (`level`);

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`user`,`category`),
  ADD KEY `category` (`category`),
  ADD KEY `self` (`self`);

--
-- Indices de la tabla `play`
--
ALTER TABLE `play`
  ADD KEY `user` (`user`,`level`),
  ADD KEY `level` (`level`);

--
-- Indices de la tabla `set`
--
ALTER TABLE `set`
  ADD PRIMARY KEY (`group`,`user`),
  ADD KEY `user` (`user`),
  ADD KEY `group` (`group`) USING BTREE;

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `group`
--
ALTER TABLE `group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `level`
--
ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `access`
--
ALTER TABLE `access`
  ADD CONSTRAINT `access_ibfk_1` FOREIGN KEY (`level`) REFERENCES `level` (`id`),
  ADD CONSTRAINT `access_ibfk_2` FOREIGN KEY (`user`) REFERENCES `user` (`id`);

--
-- Filtros para la tabla `assigned`
--
ALTER TABLE `assigned`
  ADD CONSTRAINT `assigned_ibfk_1` FOREIGN KEY (`group`) REFERENCES `group` (`id`),
  ADD CONSTRAINT `assigned_ibfk_2` FOREIGN KEY (`level`) REFERENCES `level` (`id`);

--
-- Filtros para la tabla `level`
--
ALTER TABLE `level`
  ADD CONSTRAINT `level_ibfk_1` FOREIGN KEY (`user`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `level_ibfk_2` FOREIGN KEY (`category`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `level_ibfk_3` FOREIGN KEY (`self`) REFERENCES `level` (`id`);

--
-- Filtros para la tabla `play`
--
ALTER TABLE `play`
  ADD CONSTRAINT `play_ibfk_1` FOREIGN KEY (`user`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `play_ibfk_2` FOREIGN KEY (`level`) REFERENCES `level` (`id`);

--
-- Filtros para la tabla `set`
--
ALTER TABLE `set`
  ADD CONSTRAINT `set_ibfk_1` FOREIGN KEY (`group`) REFERENCES `group` (`id`),
  ADD CONSTRAINT `set_ibfk_2` FOREIGN KEY (`user`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
