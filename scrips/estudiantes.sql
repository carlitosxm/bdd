--  tabla estudiantes
DROP TABLE IF EXISTS estudiantes;

create table estudiantes(
	cedula char (10) not null,
	nombre varchar(50)not null,
	apellido varchar(50)not null,
	email varchar(50)not null,
	fecha_nacimiento date not null,
	CONSTRAINT estudiante_pk PRIMARY key (cedula)
);

INSERT INTO estudiantes (cedula, nombre, apellido, email, fecha_nacimiento) VALUES
('1000000001', 'Juan','Pérez','juan.perez@email.com',     '1995-05-12'),
('1000000002', 'María','Gómez','maria.gomez@email.com',    '1998-11-03'),
('1000000003', 'Luis','Martínez','luis.martinez@email.com',  '1989-02-20'),
('1000000004', 'Ana', 'López', 'ana.lopez@email.com',      '2002-07-19'),
('1000000005', 'Carlos','Ramírez', 'carlos.ramirez@email.com', '1984-01-08'),
('1000000006', 'Lucía', 'Torres',  'lucia.torres@email.com',   '1997-06-30'),
('1000000007', 'Pedro', 'Sánchez','pedro.sanchez@email.com',  '1991-03-15'),
('1700000010', 'Valentina','Ríos','valentina.rios@email.com','2000-04-05');

--select * from estudiantes;
select nombre,cedula from estudiantes;
select nombre,cedula from estudiantes where cedula like '17%';
select nombre||' '||apellido as nombre_completo from estudiantes where nombre like 'A%';



update estudiantes set apellido = 'Hernández' where cedula like '17%';

delete from estudiantes where cedula like '%05';