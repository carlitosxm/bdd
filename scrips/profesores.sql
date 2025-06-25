drop table if exists profesor;

create table profesores (
codigo int,
nombre varchar(50) not null,
CONSTRAINT codigo_pk primary key (codigo)
);


INSERT INTO profesores (codigo, nombre) VALUES
(11, 'Francisco'),
(12, 'Ana'),
(13, 'Luis'),
(14, 'María'),
(15, 'Jorge');

select * from profesores