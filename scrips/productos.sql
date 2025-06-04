--tabla productos

CREATE TABLE productos(
	codigo int not null, 
	nombre varchar(50) not null,
	descripcion varchar(200),
	precio money not null,
	stock int not null,
	CONSTRAINT producto_pk PRIMARY KEY (codigo)	
);