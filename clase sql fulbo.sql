-- drop database juanH where ...;
create database juanH;
use juanH;


CREATE TABLE equipos (
    idEquipo INT AUTO_INCREMENT PRIMARY KEY,
    nombreEquipo VARCHAR(50),
    ciudad VARCHAR(50),
    añoFundacion DATE
);

CREATE TABLE arbitros (
    idArbitro INT AUTO_INCREMENT PRIMARY KEY,
    nombreArbitro VARCHAR(50),
    apellidoArbitro VARCHAR(50),
    añoLicencia DATE
);

CREATE TABLE jugadores (
    idJugador INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(45),
    apellido VARCHAR(45),
    fechaNacimiento DATE,
    posicion VARCHAR(35),
    idEquipo INT,
    FOREIGN KEY (idEquipo) REFERENCES equipos(idEquipo)
);

CREATE TABLE partidos (
    idPartido INT AUTO_INCREMENT PRIMARY KEY,
    fechaPartido DATE,
    idEquipo INT,
    idArbitro INT,
    FOREIGN KEY (idEquipo) REFERENCES equipos(idEquipo),
    FOREIGN KEY (idArbitro) REFERENCES arbitros(idArbitro)
);

CREATE TABLE plantillas (
    idPlantilla INT AUTO_INCREMENT PRIMARY KEY,
    idEquipo INT,
    idJugador INT,
    posicion VARCHAR(35),
    FOREIGN KEY (idEquipo) REFERENCES equipos(idEquipo),
    FOREIGN KEY (idJugador) REFERENCES jugadores(idJugador)
);


-- /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
-- /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
-- /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



INSERT INTO equipos (nombreEquipo, ciudad, añoFundacion) VALUES
('Los Tigres', 'Monterrey', '1990-01-15'),
('Las Águilas', 'Ciudad de México', '1970-07-11'),
('Los Leones', 'Guadalajara', '1985-03-22'),
('Los Halcones', 'Veracruz', '1993-09-09'),
('Los Dragones', 'Torreón', '1991-11-18'),
('Los Guerreros', 'Durango', '1994-05-25'),
('Las Panteras', 'Puebla', '1996-08-30'),
('Los Caballeros', 'Querétaro', '1988-02-14'),
('Los Lobos', 'Oaxaca', '1997-04-20'),
('Los Zorros', 'Chiapas', '1996-12-10'),
('Los Pumas', 'Tlaxcala', '1999-12-01'),
('Los Jinetes', 'San Luis Potosí', '1991-06-16'),
('Los Titanes', 'Hidalgo', '1992-08-28'),
('Las Estrellas', 'Aguascalientes', '1995-10-10'),
('Los Cazadores', 'Yucatán', '1998-04-20'),
('Los Reyes', 'Sinaloa', '1988-12-23'),
('Las Serpientes', 'Coahuila', '1993-07-04'),
('Los Gladiadores', 'Nayarit', '1996-08-13'),
('Los Ángeles', 'Chihuahua', '1995-05-22'),
('Los Diablos Rojos', 'Veracruz', '1986-03-17'),
('Las Centellas', 'Morelia', '1997-10-10'),
('Los Guerreros Azules', 'Tabasco', '1999-01-01'),
('Las Águilas Rojas', 'Durango', '1989-04-14'),
('Los Pinguinos', 'Quintana Roo', '1990-02-10'),
('Los Ángeles del Norte', 'Sonora', '1994-11-30'),
('Los Reyes de la Selva', 'Guerrero', '1985-06-12'),
('Los Tigres de Oro', 'Tlaxcala', '1991-12-18'),
('Las Panteras Rosa', 'San Luis Potosí', '1993-08-28'),
('Los Tornados', 'Puebla', '1996-09-15'),
('Los Halcones Negros', 'Chiapas', '1998-05-01'),
('Los Guerreros del Sol', 'Morelos', '1997-12-22'),
('Los Ángeles Verdes', 'Hidalgo', '1989-01-03'),
('Las Serpientes del Norte', 'Tamaulipas', '1992-03-08'),
('Los Titanes del Caribe', 'Veracruz', '1990-04-05'),
('Las Estrellas del Mar', 'Quintana Roo', '1996-08-30'),
('Los Lobos de Mar', 'Guerrero', '1993-10-10'),
('Los Jinetes de la Noche', 'Aguascalientes', '1994-11-11'),
('Las Panteras del Norte', 'Coahuila', '1995-02-14'),
('Los Reyes de la Noche', 'Durango', '1988-11-09'),
('Los Tigres del Bosque', 'Sonora', '1992-07-20'),
('Las Águilas del Sur', 'Guerrero', '1996-08-18'),
('Los Caballeros de la Luz', 'Morelos', '1990-01-01');

INSERT INTO arbitros (nombreArbitro, apellidoArbitro, añoLicencia) VALUES
('Juan', 'Pérez', '2010-01-15'),
('María', 'González', '2011-03-20'),
('Luis', 'Hernández', '2009-07-11'),
('Ana', 'Martínez', '2012-09-09'),
('Carlos', 'López', '2015-05-22'),
('Sofía', 'Ramírez', '2014-11-30'),
('Diego', 'Torres', '2016-08-13'),
('Laura', 'Cruz', '2013-06-16'),
('Ricardo', 'Mendoza', '2011-10-10'),
('Valentina', 'Salazar', '2017-04-20'),
('Javier', 'Jiménez', '2012-02-14'),
('Patricia', 'Vargas', '2015-01-18'),
('Fernando', 'García', '2018-12-03'),
('Nadia', 'Sánchez', '2019-01-25'),
('Adrián', 'Morales', '2010-03-05'),
('Claudia', 'Ríos', '2011-08-30'),
('Alberto', 'Cordero', '2013-02-17'),
('Carmen', 'Alvarado', '2014-11-21'),
('Hugo', 'Serrano', '2015-06-11'),
('Yolanda', 'Castillo', '2016-10-14'),
('Cristian', 'Figueroa', '2012-05-28'),
('Silvia', 'Díaz', '2013-12-19'),
('Mónica', 'Cáceres', '2014-09-12'),
('Esteban', 'Valdés', '2015-03-09'),
('Karla', 'Paredes', '2016-01-07'),
('Pablo', 'Bravo', '2017-04-24'),
('Lucía', 'Maldonado', '2018-02-14'),
('Julián', 'Guzmán', '2010-11-05'),
('Marisol', 'Torres', '2011-07-20'),
('Benjamín', 'Salas', '2012-06-28'),
('Irma', 'Núñez', '2013-08-14'),
('Ramón', 'Ponce', '2014-10-30'),
('Fabián', 'Salinas', '2015-09-11'),
('Santiago', 'Montoya', '2016-12-01'),
('Sara', 'Rivas', '2017-05-18'),
('Óscar', 'Aguilar', '2018-03-22'),
('Tatiana', 'Romero', '2019-04-19'),
('Jorge', 'Pérez', '2010-02-20'),
('Verónica', 'Hernández', '2011-03-03'),
('Roberto', 'Martínez', '2012-08-15'),
('Natalia', 'Sánchez', '2013-11-11'),
('Diana', 'González', '2014-01-01'),
('Luis', 'Castillo', '2015-06-22'),
('Alejandro', 'Figueroa', '2016-10-18'),
('Clara', 'Vásquez', '2017-12-05'),
('Emilio', 'Hidalgo', '2018-09-30'),
('Luz', 'Acosta', '2019-08-15'),
('Arturo', 'Jiménez', '2010-07-24'),
('Mariana', 'Salazar', '2011-06-09'),
('Joaquín', 'Cruz', '2012-02-02'),
('Gisela', 'Moreno', '2013-12-17'),
('Felipe', 'Ramos', '2014-05-29'),
('Diana', 'Pérez', '2015-04-03'),
('Ricardo', 'Alba', '2016-08-22');

INSERT INTO jugadores (nombre, apellido, fechaNacimiento, posicion, idEquipo) VALUES
('Carlos', 'Hernández', '1995-04-15', 'Delantero', 1),
('Sofía', 'López', '1996-05-20', 'Defensa', 1),
('Miguel', 'Ramírez', '1994-06-10', 'Portero', 2),
('Laura', 'García', '1993-07-25', 'Centrocampista', 21),
('Andrés', 'Martínez', '1997-08-30', 'Delantero', 31),
('Ana', 'Pérez', '1998-09-10', 'Defensa', 3),
('Luis', 'González', '1992-10-05', 'Portero', 1),
('Jorge', 'Sánchez', '1990-11-20', 'Centrocampista', 2),
('Patricia', 'Cruz', '1991-12-15', 'Delantero', 32),
('Diego', 'Morales', '1989-01-22', 'Defensa', 1),
('Valentina', 'Núñez', '1995-02-18', 'Portero', 2),
('Ricardo', 'Salazar', '1996-03-12', 'Centrocampista', 3),
('Lucía', 'Torres', '1994-04-01', 'Delantero', 11),
('Fernando', 'Ramírez', '1993-05-28', 'Defensa', 2),
('Gabriela', 'Maldonado', '1992-06-14', 'Portero', 34),
('Cristian', 'Jiménez', '1990-07-30', 'Centrocampista', 1),
('Nadia', 'Vargas', '1997-08-27', 'Delantero', 2),
('Esteban', 'Cáceres', '1998-09-16', 'Defensa', 3),
('Mónica', 'Valdés', '1991-10-11', 'Portero', 15),
('Julián', 'Parra', '1993-11-08', 'Centrocampista', 2),
('Silvia', 'Salinas', '1995-12-03', 'Delantero', 3),
('Hugo', 'Serrano', '1994-01-21', 'Defensa', 18),
('Clara', 'Ríos', '1996-02-14', 'Portero', 28),
('Alberto', 'Pacheco', '1997-03-19', 'Centrocampista', 3),
('Fernanda', 'Bravo', '1992-04-25', 'Delantero', 1),
('Salvador', 'Cruz', '1988-05-10', 'Defensa', 22),
('Ricardo', 'Pérez', '1990-06-15', 'Portero', 3),
('Isabel', 'Díaz', '1991-07-22', 'Centrocampista', 1),
('Gonzalo', 'Castillo', '1993-08-30', 'Delantero', 2),
('Santiago', 'Torres', '1994-09-01', 'Defensa', 3),
('Tamara', 'Alvarado', '1995-10-10', 'Portero', 1),
('José', 'Figueroa', '1996-11-12', 'Centrocampista', 2),
('Nicolás', 'Cordero', '1998-12-13', 'Delantero', 3),
('Karen', 'Roldán', '1990-01-14', 'Defensa', 16),
('Emilio', 'Gonzalez', '1991-02-15', 'Portero', 2),
('Ricardo', 'López', '1992-03-16', 'Centrocampista', 3),
('Fabián', 'Gómez', '1993-04-17', 'Delantero', 41),
('Yolanda', 'Martinez', '1994-05-18', 'Defensa', 2),
('Adriana', 'Castro', '1995-06-19', 'Portero', 35),
('Mario', 'Cortez', '1996-07-20', 'Centrocampista', 4),
('Cristina', 'Alvarado', '1997-08-21','defensa',42);


INSERT INTO partidos (fechaPartido, idEquipo, idArbitro) VALUES
('2024-01-10', 1, 1),
('2024-01-15', 2, 2),
('2024-01-20', 3, 3),
('2024-01-25', 1, 4),
('2024-01-30', 2, 5),
('2024-02-05', 3, 6),
('2024-02-10', 1, 7),
('2024-02-15', 2, 8),
('2024-02-20', 3, 9),
('2024-02-25', 1, 10),
('2024-03-02', 2, 11),
('2024-03-07', 3, 12),
('2024-03-12', 1, 13),
('2024-03-17', 2, 14),
('2024-03-22', 3, 15),
('2024-03-27', 1, 16),
('2024-04-01', 2, 17),
('2024-04-06', 3, 18),
('2024-04-11', 1, 19),
('2024-04-16', 2, 20),
('2024-04-21', 3, 21),
('2024-04-26', 1, 22),
('2024-05-01', 2, 23),
('2024-05-06', 3, 24),
('2024-05-11', 1, 25),
('2024-05-16', 2, 26),
('2024-05-21', 3, 27),
('2024-05-26', 1, 28),
('2024-06-01', 2, 29),
('2024-06-06', 3, 30),
('2024-06-11', 1, 31),
('2024-06-16', 2, 32),
('2024-06-21', 3, 33),
('2024-06-26', 1, 34),
('2024-07-01', 2, 35),
('2024-07-06', 3, 36),
('2024-07-11', 1, 37),
('2024-07-16', 2, 38),
('2024-07-21', 3, 39),
('2024-07-26', 1, 40),
('2024-08-01', 2, 41),
('2024-08-06', 3, 42),
('2024-08-11', 1, 43),
('2024-08-16', 2, 44),
('2024-08-21', 3, 45),
('2024-08-26', 1, 46),
('2024-09-01', 2, 47),
('2024-09-06', 3, 48),
('2024-09-11', 1, 49),
('2024-09-16', 2, 50);

INSERT INTO plantillas (idEquipo, idJugador, posicion) VALUES
(1, 1, 'Delantero'),
(1, 2, 'Defensa'),
(2, 3, 'Centrocampista'),
(2, 4, 'Portero'),
(3, 5, 'Delantero'),
(3, 6, 'Defensa'),
(4, 7, 'Centrocampista'),
(4, 8, 'Delantero'),
(5, 9, 'Portero'),
(5, 10, 'Defensa'),
(6, 11, 'Centrocampista'),
(6, 12, 'Delantero'),
(7, 13, 'Defensa'),
(7, 14, 'Portero'),
(8, 15, 'Centrocampista'),
(8, 16, 'Delantero'),
(9, 17, 'Defensa'),
(9, 18, 'Centrocampista'),
(10, 19, 'Portero'),
(10, 20, 'Defensa'),
(11, 21, 'Delantero'),
(11, 22, 'Defensa'),
(12, 23, 'Centrocampista'),
(12, 24, 'Portero'),
(13, 25, 'Delantero'),
(13, 26, 'Defensa'),
(14, 27, 'Centrocampista'),
(14, 28, 'Delantero'),
(15, 29, 'Portero'),
(15, 30, 'Defensa'),
(16, 31, 'Centrocampista'),
(16, 32, 'Delantero'),
(17, 33, 'Defensa'),
(17, 34, 'Centrocampista'),
(18, 35, 'Portero'),
(18, 36, 'Defensa'),
(19, 37, 'Delantero'),
(19, 38, 'Centrocampista'),
(20, 39, 'Defensa');













