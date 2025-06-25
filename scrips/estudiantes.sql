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

-------------reto 23
INSERT INTO estudiantes (cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor) VALUES
('1234567890', 'Carlos', 'Núñez', 'carlos@example.com', '2000-01-15', 1),
('0987654321', 'Ana', 'Mendoza', 'ana@example.com', '1999-05-20', 2),
('1112233445', 'Luis', 'Fernández', 'luis@example.com', '2001-07-10', 1),
('5556677889', 'María', 'González', 'maria@example.com', '2002-09-25', 3),
('2223334445', 'Jorge', 'Sánchez', 'jorge@example.com', '2000-11-30', 4),
('3334445556', 'Lucía', 'Pérez', 'lucia@example.com', '1998-12-05', 2),
('4445556667', 'Pedro', 'Ramírez', 'pedro@example.com', '1997-08-17', 5),
('5556667778', 'Sofía', 'López', 'sofia@example.com', '2001-03-14', 3),
('6667778889', 'Andrés', 'Vargas', 'andres@example.com', '2000-06-22', 4),
('7778889990', 'Mónica', 'Torres', 'monica@example.com', '1999-02-28', 11);
--------------

-----agregar columna relacion tabla profesor
ALTER TABLE estudiantes
ADD COLUMN codigo_profesor INT;

ALTER TABLE estudiantes
ADD CONSTRAINT codigo_profesor_fk
FOREIGN KEY (codigo_profesor) REFERENCES profesores(codigo);
---------------------

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