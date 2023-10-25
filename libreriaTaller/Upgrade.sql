/*
La base de datos "libreria" consta de las siguientes tablas:

cliente:

Esta tabla almacena información sobre los clientes de la librería.
Cada cliente se identifica por un ID único.
Se registra el nombre del cliente.
libro:

Esta tabla registra detalles sobre los libros disponibles en la librería.
Cada libro tiene un ID único y un título.
pedido:

La tabla "pedido" registra los pedidos realizados por los clientes.
Cada pedido tiene un ID único.
Se asocia cada pedido a un cliente a través de su ID de cliente mediante una clave foránea (foreign key).
itempedido:

Esta tabla almacena los detalles de los libros incluidos en cada pedido.
Cada ítem de pedido tiene un ID único y está vinculado a un pedido y a un libro mediante claves foráneas.
compra:

La tabla "compra" registra las compras de libros realizadas por los clientes.
Cada compra tiene un ID único y está asociada a un cliente y a un libro mediante claves foráneas.
Se almacena el precio de compra y la fecha de la compra.
valoracionlibro:

Esta tabla permite a los clientes dar valoraciones a los libros que han adquirido.
Cada valoración tiene un ID único y está vinculada a un libro y a un cliente a través de claves foráneas.
Se registra la valoración como un número decimal
*/

CREATE DATABASE libreria;
CREATE TABLE cliente 
(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(250) NOT NULL
);

CREATE TABLE libro 
(
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(250) NOT NULL
);
CREATE TABLE pedido 
(
    id INT PRIMARY KEY AUTO_INCREMENT,
    idcliente INT NOT NULL,
    FOREIGN KEY (idcliente) REFERENCES cliente(id)
);
CREATE TABLE itempedido 
(
    id INT PRIMARY KEY AUTO_INCREMENT,
    idpedido INT NOT NULL,
    idlibro INT NOT NULL,
    precio INT NOT NULL,
    fecha_compra DATE NOT NULL,
    FOREIGN KEY (idpedido) REFERENCES pedido(id),
    FOREIGN KEY (idlibro) REFERENCES libro(id)
);

CREATE TABLE valoracionlibro
(
    id INT PRIMARY KEY AUTO_INCREMENT,
    idlibro INT NOT NULL,
    idcliente INT NOT NULL,
    valoracion DECIMAL(3, 2) NOT NULL,
    FOREIGN KEY (idlibro) REFERENCES libro(id),
    FOREIGN KEY (idcliente) REFERENCES cliente(id)
);


insert into cliente (id, nombre) values (1, 'Aidan Rolfi');
insert into cliente (id, nombre) values (2, 'Elmer Du Plantier');
insert into cliente (id, nombre) values (3, 'Bobbi Hebard');
insert into cliente (id, nombre) values (4, 'Vladamir Tavner');
insert into cliente (id, nombre) values (5, 'Peadar Brimilcome');
insert into cliente (id, nombre) values (6, 'Marline Chezelle');
insert into cliente (id, nombre) values (7, 'Aretha Diwell');
insert into cliente (id, nombre) values (8, 'Dannel Rack');
insert into cliente (id, nombre) values (9, 'Cathe Windas');
insert into cliente (id, nombre) values (10, 'Cary Heaysman');
insert into cliente (id, nombre) values (11, 'Logan Ricks');
insert into cliente (id, nombre) values (12, 'Maximilien Vanner');
insert into cliente (id, nombre) values (13, 'Tedd Jerman');
insert into cliente (id, nombre) values (14, 'Welch Breache');
insert into cliente (id, nombre) values (15, 'Andriette Tamburo');
insert into cliente (id, nombre) values (16, 'Annabel Siverns');
insert into cliente (id, nombre) values (17, 'Cosetta Courtois');
insert into cliente (id, nombre) values (18, 'Isahella Jagielski');
insert into cliente (id, nombre) values (19, 'Max Schwartz');
insert into cliente (id, nombre) values (20, 'Billie St. Louis');
insert into cliente (id, nombre) values (21, 'Jesus Bingle');
insert into cliente (id, nombre) values (22, 'Isidora Whithalgh');
insert into cliente (id, nombre) values (23, 'Loni Ivanusyev');
insert into cliente (id, nombre) values (24, 'Randal Blew');
insert into cliente (id, nombre) values (25, 'Agneta Broomfield');

insert into libro (id, titulo) values (1, 'Decalogue, The (Dekalog)');
insert into libro (id, titulo) values (2, 'Mediterraneo');
insert into libro (id, titulo) values (3, 'New York Confidential');
insert into libro (id, titulo) values (4, 'Deathstalker');
insert into libro (id, titulo) values (5, 'Victor/Victoria');
insert into libro (id, titulo) values (6, 'Three Resurrected Drunkards (Kaette kita yopparai)');
insert into libro (id, titulo) values (7, 'Pretty Poison');
insert into libro (id, titulo) values (8, 'Jersey Girl');
insert into libro (id, titulo) values (9, 'This Woman Is Dangerous');
insert into libro (id, titulo) values (10, 'Nickelodeon');
insert into libro (id, titulo) values (11, 'Miss Firecracker');
insert into libro (id, titulo) values (12, 'Music of the Heart');
insert into libro (id, titulo) values (13, 'Passengers');
insert into libro (id, titulo) values (14, 'Bus Stop');
insert into libro (id, titulo) values (15, 'Far Cry');

INSERT INTO pedido (`idcliente`)
VALUES
  ("15"),
  ("5"),
  ("14"),
  ("24"),
  ("7"),
  ("10"),
  ("20"),
  ("23"),
  ("22"),
  ("17"),
  ("18"),
  ("25"),
  ("16"),
  ("20"),
  ("2"),
  ("9"),
  ("20"),
  ("24"),
  ("24"),
  ("22");
INSERT INTO pedido (`idcliente`)
VALUES
  ("4"),
  ("12"),
  ("6"),
  ("16"),
  ("22"),
  ("18"),
  ("16"),
  ("23"),
  ("18"),
  ("15"),
  ("17"),
  ("18"),
  ("9"),
  ("25"),
  ("7"),
  ("12"),
  ("3"),
  ("21"),
  ("12"),
  ("15"),
  ("23"),
  ("16"),
  ("24"),
  ("25"),
  ("15"),
  ("7"),
  ("2"),
  ("16"),
  ("14"),
  ("4");
INSERT INTO pedido (`idcliente`)
VALUES
  ("13"),
  ("24"),
  ("25"),
  ("25"),
  ("12"),
  ("22"),
  ("10"),
  ("16"),
  ("25"),
  ("17");









INSERT INTO `itempedido` (`idpedido`,`idlibro`)
VALUES
  ("50","4"),
  ("38","3"),
  ("6","13"),
  ("10","10"),
  ("9","7"),
  ("39","5"),
  ("32","11"),
  ("31","13"),
  ("15","2"),
  ("50","4");
INSERT INTO `itempedido` (`idpedido`,`idlibro`)
VALUES
  ("8","11"),
  ("24","5"),
  ("7","8"),
  ("6","6"),
  ("3","3"),
  ("17","5"),
  ("9","9"),
  ("13","9"),
  ("28","6"),
  ("11","4");
INSERT INTO `itempedido` (`idpedido`,`idlibro`)
VALUES
  ("19","9"),
  ("26","3"),
  ("39","5"),
  ("34","3"),
  ("12","11"),
  ("21","13"),
  ("37","1"),
  ("35","3"),
  ("43","5"),
  ("27","8");
INSERT INTO `itempedido` (`idpedido`,`idlibro`)
VALUES
  ("30","8"),
  ("18","9"),
  ("29","11"),
  ("5","7"),
  ("13","11"),
  ("15","10"),
  ("29","11"),
  ("27","4"),
  ("45","10"),
  ("16","11");
INSERT INTO `itempedido` (`idpedido`,`idlibro`)
VALUES
  ("48","12"),
  ("20","4"),
  ("28","7"),
  ("36","10"),
  ("6","2"),
  ("4","2"),
  ("16","1"),
  ("27","12"),
  ("41","5"),
  ("23","11");
INSERT INTO `itempedido` (`idpedido`,`idlibro`)
VALUES
  ("27","12"),
  ("21","7"),
  ("25","12"),
  ("11","4"),
  ("11","12"),
  ("40","12"),
  ("38","3"),
  ("2","2"),
  ("3","2"),
  ("16","13");
INSERT INTO `itempedido` (`idpedido`,`idlibro`)
VALUES
  ("32","10"),
  ("27","4"),
  ("15","8"),
  ("44","3"),
  ("7","9"),
  ("7","10"),
  ("39","12"),
  ("35","7"),
  ("47","2"),
  ("47","2");
INSERT INTO `itempedido` (`idpedido`,`idlibro`)
VALUES
  ("46","5"),
  ("48","7"),
  ("48","2"),
  ("20","10"),
  ("16","8"),
  ("24","8"),
  ("1","3"),
  ("26","12"),
  ("46","1"),
  ("39","13");
INSERT INTO `itempedido` (`idpedido`,`idlibro`)
VALUES
  ("30","2"),
  ("32","6"),
  ("49","8"),
  ("37","10"),
  ("26","1"),
  ("39","11"),
  ("34","1"),
  ("24","1"),
  ("45","8"),
  ("30","2");
INSERT INTO `itempedido` (`idpedido`,`idlibro`)
VALUES
  ("30","11"),
  ("29","11"),
  ("27","10"),
  ("7","7"),
  ("35","13"),
  ("2","10"),
  ("2","11"),
  ("26","2"),
  ("6","12"),
  ("8","2");
INSERT INTO `itempedido` (`idpedido`,`idlibro`)
VALUES
  ("38","11"),
  ("20","7"),
  ("2","1"),
  ("29","9"),
  ("36","12"),
  ("2","6"),
  ("8","3"),
  ("19","3"),
  ("32","8"),
  ("30","9");
INSERT INTO `itempedido` (`idpedido`,`idlibro`)
VALUES
  ("50","5"),
  ("19","1"),
  ("41","5"),
  ("24","11"),
  ("27","6"),
  ("20","1"),
  ("37","5"),
  ("21","9"),
  ("16","9"),
  ("5","10");
INSERT INTO `itempedido` (`idpedido`,`idlibro`)
VALUES
  ("33","1"),
  ("4","1"),
  ("36","4"),
  ("35","10"),
  ("7","5"),
  ("41","5"),
  ("1","13"),
  ("26","7"),
  ("41","13"),
  ("10","6");
INSERT INTO `itempedido` (`idpedido`,`idlibro`)
VALUES
  ("29","3"),
  ("10","11"),
  ("4","2"),
  ("25","10"),
  ("49","7"),
  ("7","10"),
  ("24","7"),
  ("11","11"),
  ("48","11"),
  ("48","5");
INSERT INTO `itempedido` (`idpedido`,`idlibro`)
VALUES
  ("24","13"),
  ("45","6"),
  ("49","7"),
  ("8","5"),
  ("6","2"),
  ("31","4"),
  ("12","3"),
  ("50","13"),
  ("3","10"),
  ("50","8");


INSERT INTO `valoracionlibro` (`idlibro`,`idcliente`,`valoracion`)
VALUES
  (11,3,1),
  (12,12,2),
  (14,9,5),
  (21,7,3),
  (10,11,2),
  (9,8,4),
  (14,1,3),
  (9,6,3),
  (13,10,3),
  (18,2,2);
INSERT INTO `valoracionlibro` (`idlibro`,`idcliente`,`valoracion`)
VALUES
  (22,5,4),
  (14,7,4),
  (25,9,3),
  (7,5,4),
  (13,13,4),
  (11,11,4),
  (21,9,1),
  (9,14,4),
  (23,14,5),
  (3,2,3);
INSERT INTO `valoracionlibro` (`idlibro`,`idcliente`,`valoracion`)
VALUES
  (3,14,4),
  (2,6,1),
  (18,4,4),
  (12,8,3),
  (15,3,1),
  (21,9,3),
  (22,6,3),
  (9,11,4),
  (3,12,4),
  (16,11,4);
INSERT INTO `valoracionlibro` (`idlibro`,`idcliente`,`valoracion`)
VALUES
  (7,7,4),
  (10,4,3),
  (6,10,1),
  (9,14,2),
  (22,11,1);
