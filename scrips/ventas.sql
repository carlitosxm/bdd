drop table  if exists ventas;

create table ventas(
id_ventas int,
codigo_producto int not null,
fecha_venta date not null,
cantidad int,
CONSTRAINT id_ventas_pk PRIMARY KEY (id_ventas),
CONSTRAINT codigo_producto_fk FOREIGN KEY (codigo_producto) REFERENCES productos(codigo)
);


INSERT INTO ventas (id_ventas, codigo_producto, fecha_venta, cantidad) VALUES (1, 1, '2024-06-01', 2);
INSERT INTO ventas (id_ventas, codigo_producto, fecha_venta, cantidad) VALUES (2, 3, '2024-06-02', 1);
INSERT INTO ventas (id_ventas, codigo_producto, fecha_venta, cantidad) VALUES (3, 5, '2024-06-03', 5); 
INSERT INTO ventas (id_ventas, codigo_producto, fecha_venta, cantidad) VALUES (4, 2, '2024-06-04', 3);
INSERT INTO ventas (id_ventas, codigo_producto, fecha_venta, cantidad) VALUES (5, 6, '2024-06-05', 4);
INSERT INTO ventas (id_ventas, codigo_producto, fecha_venta, cantidad) VALUES (6, 4, '2024-06-06', 1);
INSERT INTO ventas (id_ventas, codigo_producto, fecha_venta, cantidad) VALUES (7, 7, '2024-06-07', 2);
INSERT INTO ventas (id_ventas, codigo_producto, fecha_venta, cantidad) VALUES (8, 9, '2024-06-08', 3);
INSERT INTO ventas (id_ventas, codigo_producto, fecha_venta, cantidad) VALUES (9, 10, '2024-06-09', 2);
INSERT INTO ventas (id_ventas, codigo_producto, fecha_venta, cantidad) VALUES (10, 8, '2024-06-10', 1);