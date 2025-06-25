DROP table IF EXISTS personas;

CREATE TABLE IF NOT EXISTS personas (
    cedula CHAR(10) not null,
    nombre VARCHAR(50) not null,
    apellido VARCHAR(50) not null,
    estatura NUMERIC,
    fecha_nacimiento DATE,
    hora_nacimientos TIME WITH TIME ZONE,
    cantidad_ahorrada MONEY,
    numero_hijos INTEGER,
	CONSTRAINT cedula_pk PRIMARY KEY (cedula)
);

ALTER TABLE personas
add column estado_civil_codigo char(1) not null


alter table personas
add constraint persona_estado_civil_fk 
FOREIGN key (estado_civil_codigo)
REFERENCES estado_civil(codigo);


insert into personas (cedula, nombre, apellido,estado_civil_codigo)
values ('1721949756','Carlos','Tipan','U');

select * from personas;