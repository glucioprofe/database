CREATE DATABASE biblioteca;
USE biblioteca;
CREATE TABLE pais(
    id SMALLINT NOT NULL,
    nombre VARCHAR(155) NOT NULL,
    nacionalidad VARCHAR(155) NULL
);

-- Chequear la estructura de algunas cosas

SHOW DATABASES; -- Mostrar las bases de datos del SGBD
SHOW TABLES; -- Ver Tablas de la base de datos que estamos usando
DESC pais;-- Estructura de la Tabla

