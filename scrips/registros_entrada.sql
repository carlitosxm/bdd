--  tabla registros_entrada
drop table if exists registros_entrada;

create table registros_entrada(
	codigo_registro int not null,
	cedula_empleado char (10) not null,
	fecha date not null,
	hora time not null,
	CONSTRAINT registro_entrada primary key (codigo_registro)
);
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