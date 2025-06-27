drop table if exists usuarios;
create table usuarios(
id int not null,
nombre varchar (25) not null,
apellido varchar (25) not null,
fecha_nacimiento date,
CONSTRAINT usuario_pk primary key (id)
);


drop table if exists grupo;
create table grupo(
id int not null,
nombre varchar (25) not null,
descripcion varchar (75) not null,
fecha_creacion date,
CONSTRAINT grupo_pk primary key (id)
);


drop table if exists usuario_grupo;
create table usuario_grupo(
us_id int not null,
gr_id int not null,
CONSTRAINT us_id_fk FOREIGN key (us_id) REFERENCES usuarios(id),
CONSTRAINT gr_id_fk FOREIGN key (gr_id) REFERENCES grupo(id),
CONSTRAINT usuario_grupo_pk PRIMARY key(us_id,gr_id)
);





----------------habitaciones huespedes

drop table if exists habitaciones;
create table habitaciones(
habitacion_numero int not null,
precio_por_noche decimal not null,
piso int not null,
max_personas int,
CONSTRAINT habitacion_numero_pk primary key (habitacion_numero)
);

drop table if exists huespedes;
create table huespedes(
id int not null,
nombre varchar(45),
apellido varchar(45),
direccion varchar(45),
cuidad varchar(45),
pais varchar(45),
constraint id_pk primary key (id)
);

drop table if exists reservas;
create table reservas(
inicio_fecha date not null,
fin_fecha date not null,
id_habitacion int not null,
id_huesped int not null,
constraint id_habitacion_fk foreign key (id_habitacion) references habitaciones(habitacion_numero),
constraint id_huesped_fk foreign key (id_huesped) references huespedes(id),
constraint reservas_pk primary key (id_habitacion,id_huesped)
);

----------------------municipio proyectos
drop table if exists ciudad;
create table ciudad(
id int,
nombre varchar (45) not null,
CONSTRAINT id_ciudad_pk primary key (id)
);

drop table if exists municipio;
create table municipio(
id int,
nombre varchar (45),
ciudad_id int,
constraint id_municipio_pk PRIMARY key (id),
constraint ciudad_id_fk foreign key (ciudad_id) REFERENCES ciudad(id)
);

drop table if exists proyecto;
create table proyecto(
id int,
proyecto varchar(50) not null,
monto money not null,
fecha_inicio date,
fecha_fin date,
constraint id_proyecto_pk primary key (id)
);


drop table if exists proyecto_municipio;
create table proyecto_municipio(
proyecto_id int not null,
municipio_id int not null,
constraint municipio_id_fk foreign key (municipio_id) references municipio(id),
constraint proyecto_id_pk foreign key (proyecto_id) references proyecto(id),
constraint proyecto_municipio_pk primary key (proyecto_id,municipio_id)
);


