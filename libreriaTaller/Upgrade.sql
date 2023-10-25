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



















INSERT INTO `itempedido` (`idpedido`,`idlibro`,`precio`,`fecha_compra`)
VALUES
  (8,4,2,"2020-12-06"),
  (24,14,2,"2020-12-31"),
  (1,14,3,"2019-07-05"),
  (22,15,5,"2019-12-15"),
  (2,3,4,"2020-04-03"),
  (21,6,4,"2020-08-11"),
  (22,11,2,"2019-08-17"),
  (12,10,3,"2021-02-17"),
  (11,5,2,"2018-12-17"),
  (5,14,1,"2018-11-30");
INSERT INTO `itempedido` (`idpedido`,`idlibro`,`precio`,`fecha_compra`)
VALUES
  (6,14,1,"2021-01-16"),
  (20,13,3,"2020-11-12"),
  (15,4,4,"2019-08-20"),
  (24,9,2,"2019-06-06"),
  (18,2,3,"2020-01-25"),
  (11,2,5,"2021-02-07"),
  (9,4,2,"2019-06-18"),
  (7,13,2,"2020-06-22"),
  (15,11,5,"2018-12-01"),
  (4,15,2,"2020-01-30");
INSERT INTO `itempedido` (`idpedido`,`idlibro`,`precio`,`fecha_compra`)
VALUES
  (4,15,1,"2020-02-29"),
  (5,4,2,"2020-07-19"),
  (2,15,3,"2019-05-07"),
  (7,10,2,"2020-07-27"),
  (8,2,3,"2020-12-09"),
  (8,6,2,"2019-05-21"),
  (19,6,3,"2019-10-06"),
  (18,14,3,"2020-04-25"),
  (13,13,3,"2019-10-19"),
  (7,5,4,"2019-04-23");
INSERT INTO `itempedido` (`idpedido`,`idlibro`,`precio`,`fecha_compra`)
VALUES
  (24,11,2,"2019-02-25"),
  (21,9,5,"2020-11-12"),
  (8,7,4,"2018-11-11"),
  (6,12,3,"2020-08-30"),
  (6,2,4,"2019-07-31"),
  (17,11,1,"2019-02-19"),
  (9,2,4,"2019-07-03"),
  (3,10,4,"2020-12-24"),
  (17,4,3,"2020-11-23"),
  (15,6,3,"2020-03-27");
INSERT INTO `itempedido` (`idpedido`,`idlibro`,`precio`,`fecha_compra`)
VALUES
  (18,9,4,"2020-12-11"),
  (8,15,4,"2020-06-29"),
  (11,13,1,"2018-12-11"),
  (14,8,2,"2021-01-19"),
  (25,9,3,"2018-12-24"),
  (9,2,4,"2019-06-13"),
  (22,14,3,"2018-12-11"),
  (14,11,3,"2019-07-31"),
  (6,2,4,"2020-02-26"),
  (10,8,5,"2019-04-22");
INSERT INTO `itempedido` (`idpedido`,`idlibro`,`precio`,`fecha_compra`)
VALUES
  (4,5,4,"2019-07-15"),
  (1,7,4,"2020-01-15"),
  (3,10,3,"2019-12-06"),
  (7,9,2,"2020-08-25"),
  (4,10,2,"2020-01-13"),
  (6,12,4,"2020-06-19"),
  (19,8,5,"2019-08-05"),
  (21,2,5,"2019-10-25"),
  (2,2,4,"2021-01-04"),
  (25,5,2,"2020-12-24");
INSERT INTO `itempedido` (`idpedido`,`idlibro`,`precio`,`fecha_compra`)
VALUES
  (9,12,5,"2020-05-23"),
  (23,10,4,"2020-11-12"),
  (13,1,4,"2020-03-04"),
  (3,2,2,"2019-07-01"),
  (24,1,2,"2019-07-12"),
  (16,4,1,"2021-01-07"),
  (10,8,3,"2020-05-15"),
  (1,11,3,"2019-02-02"),
  (16,7,3,"2020-03-02"),
  (12,5,2,"2019-10-01");
INSERT INTO `itempedido` (`idpedido`,`idlibro`,`precio`,`fecha_compra`)
VALUES
  (3,7,2,"2020-01-19"),
  (2,14,3,"2020-11-02"),
  (3,14,3,"2020-12-02"),
  (17,2,1,"2019-01-10"),
  (14,11,2,"2019-09-03"),
  (10,13,2,"2020-04-07"),
  (19,14,4,"2020-12-19"),
  (15,15,4,"2019-11-18"),
  (3,7,2,"2019-05-27"),
  (12,10,2,"2018-12-02");
INSERT INTO `itempedido` (`idpedido`,`idlibro`,`precio`,`fecha_compra`)
VALUES
  (20,2,3,"2021-01-28"),
  (2,10,2,"2020-04-11"),
  (8,4,3,"2020-09-04"),
  (10,3,5,"2018-12-11"),
  (1,4,2,"2020-10-14"),
  (22,11,3,"2020-08-09"),
  (8,6,3,"2018-11-29"),
  (4,5,4,"2018-11-22"),
  (9,6,1,"2020-01-06"),
  (12,8,1,"2019-07-18");
INSERT INTO `itempedido` (`idpedido`,`idlibro`,`precio`,`fecha_compra`)
VALUES
  (10,8,3,"2021-02-15"),
  (22,12,2,"2019-01-22"),
  (7,4,3,"2019-07-18"),
  (10,5,4,"2019-10-20"),
  (18,12,4,"2020-01-23"),
  (12,11,2,"2020-02-19"),
  (13,12,4,"2020-08-07"),
  (17,8,3,"2020-08-25"),
  (23,8,1,"2019-12-14"),
  (23,14,5,"2020-10-02");
INSERT INTO `itempedido` (`idpedido`,`idlibro`,`precio`,`fecha_compra`)
VALUES
  (7,2,4,"2019-03-22"),
  (24,4,3,"2019-05-20"),
  (11,9,1,"2019-11-06"),
  (19,1,2,"2019-02-10"),
  (21,14,4,"2020-01-26"),
  (19,9,1,"2021-02-12"),
  (19,2,2,"2020-11-08"),
  (3,2,5,"2020-01-18"),
  (4,8,3,"2020-11-09"),
  (3,12,1,"2020-03-02");
INSERT INTO `itempedido` (`idpedido`,`idlibro`,`precio`,`fecha_compra`)
VALUES
  (19,5,2,"2020-03-11"),
  (5,4,4,"2018-12-30"),
  (25,1,5,"2020-04-12"),
  (14,1,4,"2020-07-11"),
  (5,12,2,"2019-12-18"),
  (16,9,5,"2020-05-18"),
  (8,11,3,"2018-11-08"),
  (7,8,2,"2020-04-14"),
  (4,13,2,"2020-02-01"),
  (20,1,1,"2020-05-26");
INSERT INTO `itempedido` (`idpedido`,`idlibro`,`precio`,`fecha_compra`)
VALUES
  (5,14,3,"2019-12-03"),
  (5,7,1,"2019-06-30"),
  (12,3,3,"2019-02-24"),
  (8,6,5,"2019-02-03"),
  (11,13,5,"2019-02-17"),
  (9,14,5,"2020-03-08"),
  (6,1,1,"2019-01-27"),
  (20,2,2,"2020-07-03"),
  (10,15,5,"2018-12-08"),
  (8,1,4,"2019-11-13");
INSERT INTO `itempedido` (`idpedido`,`idlibro`,`precio`,`fecha_compra`)
VALUES
  (23,2,1,"2020-06-25"),
  (9,11,3,"2019-11-08"),
  (18,1,3,"2019-08-05"),
  (7,2,4,"2020-11-14"),
  (7,4,1,"2020-12-15"),
  (20,2,3,"2019-01-10"),
  (9,14,4,"2019-02-22"),
  (15,7,4,"2020-04-23"),
  (24,5,4,"2020-09-25"),
  (22,6,2,"2018-11-28");
INSERT INTO `itempedido` (`idpedido`,`idlibro`,`precio`,`fecha_compra`)
VALUES
  (5,10,2,"2021-01-22"),
  (4,6,2,"2020-04-10"),
  (12,7,1,"2019-02-21"),
  (10,9,2,"2019-01-03"),
  (15,3,3,"2019-12-02"),
  (18,9,2,"2020-07-19"),
  (19,11,1,"2019-08-21"),
  (15,6,4,"2020-12-05"),
  (3,9,2,"2019-07-27"),
  (17,9,4,"2019-08-22");

INSERT INTO `valoracionlibro` (`idlibro`,`idcliente`,`valoracion`)
VALUES
  (15,10,3),
  (9,14,3),
  (13,20,4),
  (14,5,4),
  (14,8,4),
  (11,16,4),
  (9,4,3),
  (14,6,5),
  (6,15,3),
  (11,23,5);
INSERT INTO `valoracionlibro` (`idlibro`,`idcliente`,`valoracion`)
VALUES
  (7,4,2),
  (4,4,4),
  (3,9,5),
  (12,1,2),
  (14,5,5),
  (7,22,2),
  (4,9,1),
  (4,22,1),
  (5,18,2),
  (4,8,3);
INSERT INTO `valoracionlibro` (`idlibro`,`idcliente`,`valoracion`)
VALUES
  (2,15,4),
  (2,5,2),
  (11,5,5),
  (8,5,1),
  (4,9,4),
  (11,13,4),
  (12,15,4),
  (7,1,5),
  (7,3,3),
  (3,24,1);
INSERT INTO `valoracionlibro` (`idlibro`,`idcliente`,`valoracion`)
VALUES
  (5,22,1),
  (10,23,3),
  (4,20,4),
  (1,18,4),
  (4,13,1);
