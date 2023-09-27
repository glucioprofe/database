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

-- Alterar Tabla
-- ADD 
-- DROP
-- MODIFY 
ALTER TABLE pais ADD PRIMARY KEY(id);
-- Eliminar Tablas
DROP TABLE pais; 

CREATE TABLE pais(
    id SMALLINT NOT NULL PRIMARY KEY,
    nombre VARCHAR(155) NOT NULL,
    nacionalidad VARCHAR(155) NULL
);

CREATE TABLE autor(
    id SMALLINT NOT NULL PRIMARY KEY,
    nombre VARCHAR(155) NOT NULL,
    idpais SMALLINT
);

-- Modifico Autor 
ALTER TABLE autor
ADD FOREIGN KEY autor(idpais)
REFERENCES pais(id);

-- Integridad Referencial 

