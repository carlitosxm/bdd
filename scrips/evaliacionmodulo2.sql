drop table if exists autores;
CREATE table autores (
	id serial not null,
	nombre VARCHAR(25) not null,
	fecha_nacimiento Date not null,
	nacionalidad varchar(25) not null,
	CONSTRAINT id_autor_pk PRIMARY key (id)
);

insert into autores (nombre,fecha_nacimiento,nacionalidad) values
('Jose Pelaes',	'18/12/1998',	'Ecuador'),
('Mario Losa',	'18/12/1990',	'Ecuador'),
('Autor 3',	'18/12/1990',	'Ecuador'),
('Autor 4',	'18/12/1990',	'Ecuador'),
('Autor 5',	'18/12/1990',	'Ecuador');

select * from autores;

drop table if exists generos;
CREATE table generos (
	id serial not null,
	nombre VARCHAR(25) not null,
	CONSTRAINT id_genero_pk PRIMARY key (id)
);

insert into generos (nombre) values
('DRAMA'),
('POESIA'),
('GENERO 3'),
('GENERO 4'),
('GENERO 5');
select * from generos;


drop table if exists libros;
CREATE table libros (
	id serial not null,
	titulo VARCHAR(25) not null,
	autor_id int not null,
	genero_id int not null,
	anio_publicacion Date not null,
	esta_disponibilidad boolean not null,
	CONSTRAINT id_libro_pk PRIMARY key (id),
	constraint autor_id_fk foreign key (autor_id) references autores(id),
	constraint genero_id_fk foreign key (genero_id) references generos(id)
);

insert into libros (titulo,autor_id,genero_id,anio_publicacion,esta_disponibilidad) values
('DRAMAS DE LA VIDA','1','1','18/12/1995',TRUE),
('POESIA DE LA VIDA','2','2','18/10/1995',FALSE),
('LIBRO 3','3','3','18/8/1995',TRUE),
('LIBRO 4','4','4','18/6/1995',TRUE),
('LIBRO 5','5','5','18/4/1995',TRUE),
('LIBRO 6','1','1','18/2/1995',TRUE),
('LIBRO 7','2','2','18/12/1994',TRUE),
('LIBRO 8','3','3','18/10/1994',TRUE),
('LIBRO 9','4','4','18/8/1994',FALSE),
('LIBRO 10','5','5','18/6/1994',FALSE);

select * from libros;


drop table if exists usuarios;
CREATE table usuarios (
	id serial not null,
	nombre varchar (25) not null,
	CONSTRAINT id_usuario_pk PRIMARY key (id)
);

insert into usuarios (id,nombre) values
('Carlos Tipan'),
('Miguel Rubio');

select * from usuarios;

drop table if exists prestamos;
CREATE table prestamos (
	id serial not null,
	libro_id int not null,
	usuario_id int not null,
	fecha_prestamo Date not null,
	fecha_devolicion Date not null,
	CONSTRAINT id_prestamo_pk PRIMARY key (id),
	constraint libro_id_fk foreign key (libro_id) references libros(id),
	constraint usuario_id_fk foreign key (usuario_id) references usuarios(id)
);


insert into prestamos (libro_id,usuario_id,fecha_prestamo,fecha_devolicion) values
(1,1,'12/12/2020','2/1/2021'),
(2,2,'15/8/2020','20/11/2020'),
(3,1,'18/4/2020','8/10/2020'),
(4,2,'21/12/2019','26/8/2020'),
(5,1,'24/8/2019','14/7/2020'),
(6,1,'27/4/2019','1/6/2020'),
(7,2,'29/12/2018','19/4/2020'),
(8,2,'1/9/2018','7/3/2020'),
(9,1,'5/5/2018','24/1/2020'),
(10,2,'6/1/2018','12/12/2019');

select * from prestamos;



