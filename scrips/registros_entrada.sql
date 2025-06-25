--  tabla registros_entrada
drop table if exists registros_entrada;

create table registros_entrada(
	codigo_registro int not null,
	cedula_empleado char (10) not null,
	fecha date not null,
	hora time not null,
	CONSTRAINT registro_entrada primary key (codigo_registro)
);
-------------agregar relacion empleado
alter table registros_entrada
add column codigo_empleado int not null;


alter table registros_entrada
add constraint codigo_empleado_fk
FOREIGN KEY (codigo_empleado) references empleado(codigo_empleado);

--------reto 23
INSERT INTO registros_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado) VALUES
(1, '0912345678', '2023-08-10', '08:15', 2201),
(2, '0923456789', '2023-08-12', '09:00', 2202),
(3, '0934567890', '2023-09-01', '08:45', 2203),
(4, '0945678901', '2023-09-15', '10:20', 2204),
(5, '0956789012', '2023-10-05', '11:10', 2205),
(6, '0967890123', '2023-10-18', '12:30', 2206),
(7, '0978901234', '2023-11-02', '08:05', 2207),
(8, '0989012345', '2023-11-15', '09:45', 2208),
(9, '0990123456', '2023-12-01', '10:50', 2209),
(10,'0901234567', '2023-12-20', '11:55', 2210);
---------------


INSERT INTO registros_entrada (codigo_registro, cedula_empleado, fecha, hora) VALUES
(1, '1000000001', '2025-06-01', '08:01:00'),
(2, '1000000002', '2025-06-01', '07:59:00'),
(3, '1000000003', '2025-06-01', '08:10:00'),
(4, '1000000004', '2025-06-01', '08:00:00'),
(5, '1000000005', '2025-06-01', '08:05:00'),
(6, '1000000006', '2025-06-01', '08:02:30'),
(7, '1000000007', '2025-06-01', '07:55:00'),
(8, '1000000008', '2025-06-01', '08:15:00'),
(9, '1000000009', '2025-06-01', '08:03:00'),
(10,'1000000010', '2025-08-01', '16:07:00');

--select* from registros_entrada;

select cedula_empleado, fecha, hora from registros_entrada;
select * from registros_entrada where hora BETWEEN '7:00' and '14:00';
select * from registros_entrada where hora > '8:00';


update registros_entrada set cedula_empleado = '082345679' where fecha BETWEEN '2025-08-01' and '2025-08-31';


delete from registros_entrada where fecha BETWEEN '2025-06-01' and '2025-06-30';