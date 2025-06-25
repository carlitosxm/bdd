--tabla productos
drop table if EXISTS productos;

CREATE TABLE productos(
	codigo int not null, 
	nombre varchar(50) not null,
	descripcion varchar(200),
	precio money not null,
	stock int not null,
	CONSTRAINT producto_pk PRIMARY KEY (codigo)	
);

-------insert reto 23
INSERT INTO productos (codigo, nombre, descripcion, precio, stock) 
VALUES (1, 'Impresora', 'Impresora multifuncional', 150.00, 10);

INSERT INTO productos (codigo, nombre, descripcion, precio, stock) 
VALUES (2, 'Monitor', 'Monitor LED 24 pulgadas', 120.00, 15);

INSERT INTO productos (codigo, nombre, descripcion, precio, stock) 
VALUES (3, 'Mouse', 'Mouse inalámbrico', 18.50, 30);

INSERT INTO productos (codigo, nombre, descripcion, precio, stock) 
VALUES (4, 'Teclado', 'Teclado mecánico retroiluminado', 35.00, 20);

-- Descripción NULL
INSERT INTO productos (codigo, nombre, descripcion, precio, stock) 
VALUES (5, 'Cable HDMI', NULL, 8.75, 50);

INSERT INTO productos (codigo, nombre, descripcion, precio, stock) 
VALUES (6, 'Webcam', 'Cámara web HD', 45.00, 12);

INSERT INTO productos (codigo, nombre, descripcion, precio, stock) 
VALUES (7, 'Laptop', 'Laptop 15 pulgadas, 8GB RAM', 580.00, 8);

INSERT INTO productos (codigo, nombre, descripcion, precio, stock) 
VALUES (8, 'Memoria USB', 'Memoria de 64GB', 12.00, 100);

INSERT INTO productos (codigo, nombre, descripcion, precio, stock) 
VALUES (9, 'Tablet', 'Tablet Android 10"', 210.00, 6);

INSERT INTO productos (codigo, nombre, descripcion, precio, stock) 
VALUES (10, 'Cámara', 'Cámara digital compacta', 300.00, 5);
----------------

INSERT INTO productos (codigo, nombre, descripcion, precio, stock) VALUES
(1, 'Laptop', 'Laptop de 15 pulgadas con SSD', 850.00, 10),
(2, 'Mouse', 'Mouse óptico inalámbrico', 15.99, 50),
(3, 'Teclado', 'Teclado mecánico retroiluminado', 45.50, 30),
(4, 'Monitor', 'Monitor LED de 24 pulgadas Full HD', 130.00, 20),
(5, 'Impresora', 'Impresora multifuncional Wi-Fi', 120.75, 15);

insert into productos (codigo,nombre,precio,stock) values
(6, 'Webcam', 60.00, 25),
(7, 'Auriculares', 35.50, 40),
(8, 'Disco Duro', 75.99, 18),
(9, 'Memoria USB', 12.25, 200),
(10, 'Tablet', 210.00, 12);

--select * from productos;

select * from productos where nombre Like 'Q%';
select * from productos WHERE descripcion is null;
select * from productos where precio BETWEEN money(2) and money(3);


update productos set stock = 0 where descripcion is null;


delete from productos where descripcion is null;