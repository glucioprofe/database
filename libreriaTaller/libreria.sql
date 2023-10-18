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
    FOREIGN KEY (idpedido) REFERENCES pedido(id),
    FOREIGN KEY (idlibro) REFERENCES libro(id)
);

INSERT INTO cliente (id, nombre) VALUES (NULL, "Ana"), (NULL, "Pedro"), (NULL, "Maria"), (NULL, "Juan");   
INSERT INTO libro (id, titulo) VALUES (NULL, "Hojarasca"), (NULL, "Introduccion a Word"), (NULL, "100 años de Soledad"), (NULL, "Calculo de Leyton");   
INSERT INTO pedido (id, idcliente) VALUES (NULL, 3), (NULL, 3), (NULL, 4);   
--Error
INSERT INTO pedido (id, idcliente) VALUES (NULL, 5);   

INSERT INTO itempedido (id, idpedido, idlibro) VALUES (NULL, 1, 1), (NULL, 1, 2), (NULL, 1, 4), (NULL, 2, 1), (NULL, 3, 1);   

SELECT cliente.nombre, pedido.id, libro.titulo
FROM cliente, pedido, itempedido, libro
WHERE cliente.id = pedido.idcliente AND pedido.id = itempedido.idpedido AND itempedido.idlibro = libro.id ORDER BY libro.titulo DESC, cliente.nombre;

SELECT cliente.nombre, pedido.id, libro.titulo
FROM cliente, pedido, itempedido, libro
WHERE cliente.id = pedido.idcliente AND pedido.id = itempedido.idpedido AND itempedido.idlibro = libro.id 
AND NOT cliente.nombre = "Maria"
ORDER BY libro.titulo DESC, cliente.nombre;

SELECT COUNT(pedido.id)
FROM pedido;

SELECT COUNT(pedido.id), cliente.nombre
FROM pedido, cliente 
WHERE pedido.idcliente = cliente.id
GROUP BY cliente.id;

SELECT pedido.id as Pedido, COUNT(itempedido.idlibro) as Cantidad
FROM itempedido, pedido 
WHERE itempedido.idpedido = pedido.id
GROUP BY pedido.id;

ALTER TABLE libro
ADD precio INT;

UPDATE libro SET precio = 10000 WHERE id = 1;
UPDATE libro SET precio = 20000 WHERE id = 2;
UPDATE libro SET precio = 35000 WHERE id = 3;
UPDATE libro SET precio = 45000 WHERE id = 4;

SELECT pedido.id as Pedido, COUNT(itempedido.idlibro) as Cantidad
FROM itempedido, pedido 
WHERE itempedido.idpedido = pedido.id
GROUP BY pedido.id;

SELECT cliente.nombre as Cliente, SUM(libro.precio) as Total 
FROM cliente, pedido, itempedido, libro
WHERE cliente.id = pedido.idcliente AND pedido.id = itempedido.idpedido AND itempedido.idlibro = libro.id
GROUP BY cliente.id;

SELECT c.nombre as Cliente, SUM(libro.precio) as Total 
FROM cliente as c, pedido as p, itempedido, libro
WHERE c.id = p.idcliente AND p.id = itempedido.idpedido AND itempedido.idlibro = libro.id
GROUP BY c.id;

SELECT AVG(libro.precio)
FROM libro;

SELECT libro.titulo
FROM libro;

SELECT * FROM libro WHERE titulo LIKE '%C%';

SELECT libro.titulo, COUNT(itempedido.id)
FROM libro, itempedido
WHERE libro.id = itempedido.idlibro 
GROUP BY libro.id;