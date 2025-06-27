drop table if exists productos;
create table productos(
codigo int not null,
nombre varchar (50) not null,
strock int not null,
CONSTRAINT productos_pk primary key (codigo)
);

insert into productos (codigo,nombre,strock) values
(100,'Doritos',100),
(200,'Kchitos',200),
(300,'Papas',300),
(400,'Takis',0);



drop table if exists proveedores;
create table proveedores(
codigo int not null,
nombre varchar (50) not null,
telefono char (10) not null,
CONSTRAINT proveedore_pk PRIMARY key (codigo)
);

insert into proveedores (codigo,nombre,telefono) values
(1,'Snacks SA','0999999999'),
(2,'Distrisnacks','0999999988');


drop table if exists productos_por_proveedor;
create table productos_por_proveedor(
pp_codigo_producto int not null,
pp_codigo_proveedor int not null,
pp_precio money not null,
CONSTRAINT producto_fk FOREIGN key (pp_codigo_producto) REFERENCES productos(codigo),
CONSTRAINT proveedor_fk FOREIGN key (pp_codigo_proveedor) REFERENCES proveedores(codigo),
CONSTRAINT productos_por_proveedor_pk PRIMARY key(pp_codigo_producto,pp_codigo_proveedor)
);
insert into productos_por_proveedor(pp_codigo_producto,pp_codigo_proveedor,pp_precio) values
(300,1,0.48),
(300,2,0.49),
(100,1,0.50),
(200,1,0.51),
(400,2,0.50);

select prod.codigo,prod.nombre,prov.nombre,pp.pp_precio 
from productos prod, proveedores prov,productos_por_proveedor pp
where prod.codigo = pp.pp_codigo_producto
and prov.codigo = pp.pp_codigo_proveedor
and prod.codigo =300