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