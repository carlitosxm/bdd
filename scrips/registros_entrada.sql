--  tabla registros_entrada

create table registros_entrada(
	codigo_registro int not null,
	cedula_empleado char (10) not null,
	fecha date not null,
	hora time not null,
	CONSTRAINT registro_entrada primary key (codigo_registro)
);