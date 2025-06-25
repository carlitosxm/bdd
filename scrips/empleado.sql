drop table if exists empleado;
create table empleado(
codigo_empleado int not null,
nombre varchar(25) not null,
fecha date not null,
hora time not null,
CONSTRAINT codigo_empleado_pk primary key (codigo_empleado)
);

INSERT INTO empleado (codigo_empleado, nombre, fecha, hora) VALUES
(2201, 'Carlos', '2023-08-15', '08:30:00'),
(2202, 'Ana', '2023-09-10', '09:15:00'),
(2203, 'Luis', '2023-10-01', '10:00:00'),
(2204, 'María', '2023-11-20', '11:45:00'),
(2205, 'Jorge', '2023-12-05', '12:00:00'),
(2206, 'Sofia', '2023-08-22', '08:45:00'),
(2207, 'Diego', '2023-09-30', '09:30:00'),
(2208, 'Elena', '2023-10-18', '10:15:00'),
(2209, 'Mateo', '2023-11-12', '11:00:00'),
(2210, 'Luisa', '2023-12-28', '12:30:00');


select * from empleado