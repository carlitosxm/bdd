DROP table IF EXISTS estado_civil;

CREATE TABLE IF NOT EXISTS estado_civil (
    codigo CHAR(1) not null,
    descripcion VARCHAR(50) not null,
    apellido VARCHAR(50),
	CONSTRAINT estado_civil_pk PRIMARY KEY (codigo)
);


insert INTO estado_civil (codigo,descripcion)
values ('U','UNION LIBRE'),('C','CASADO'),('S','SOLTERO');