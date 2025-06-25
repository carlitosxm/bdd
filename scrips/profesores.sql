drop table if exists profesor;

create table profesores (
codigo int,
nombre varchar(50) not null,
CONSTRAINT codigo_pk primary key (codigo)
);


INSERT INTO profesores (codigo, nombre) VALUES
(1, 'Francisco'),
(2, 'Ana'),
(3, 'Luis'),
(4, 'María'),
(5, 'Jorge');