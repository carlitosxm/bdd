drop table if exists categorias;
CREATE table categorias (
	id char (4) not null,
	nombre VARCHAR(25) not null,
	CONSTRAINT id_categoria_pk PRIMARY key (id)
);

INSERT into categorias (id,nombre) values
('C001','Bebidas'),
('C002','Snacks'),
('C003','Golosinas');

drop table if exists productos;
CREATE table productos (
	id char (5) not null,
	nombre varchar (25),
	precio_compra money,
	precio_venta money,
	id_categoria char (5),
	CONSTRAINT id_producto_pk primary key (id),
	CONSTRAINT id_categeoria_fk foreign key (id_categoria) references categorias(id)
);
insert into productos (id,nombre,precio_compra,precio_venta,id_categoria) values
('P0001','Coca cola 300ml',0.7,0.55,'C001'),
('P0002','Coca cola 1000ml',0.7,0.55,'C001'),
('P0003','Doritos 50g',0.7,0.55,'C002'),
('P0004','Manicho',0.7,0.55,'C003'),
('P0005','Tango',0.7,0.55,'C003')
;


drop table if exists historial_movimientos;
CREATE table historial_movimientos (
	id serial not null,
	id_producto char(5),
	cantidad int,
	fecha_movimiento TIMESTAMP,
	constraint id_hm_pf primary key (id),
	constraint id_producto_fk foreign key (id_producto) references productos(id)
);
insert into historial_movimientos (id_producto,cantidad,fecha_movimiento) values
('P0001',10,'28/10/2020 9:45'),
('P0002',-3,'28/10/2020 10:45'),
('P0003',5,'28/10/2020 12:23')
;


drop table if exists historial_movimientos;
drop table if exists productos;
drop table if exists categorias;



select * from categorias;
select * from productos;
select * from historial_movimientos;