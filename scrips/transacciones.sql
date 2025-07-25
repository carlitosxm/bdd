-- tabla transacciones
drop table if exists transacciones;

create table transacciones(
	codigo int not null,
	numero_cuenta char (5)not null,
	monto money not null,
	tipo char (1) not null,
	fecha date ,
	hora time ,
	constraint transacciones_codigo_pk primary key (codigo)
);
------------reto 23
INSERT INTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) VALUES
(1, '22001', 200.00, 'C', '2024-01-15', '10:00'),    
(2, '22002', 150.00, 'C', '2024-02-10', '11:30'),    
(3, '22003', 100.00, 'C', '2024-03-05', '09:45'),    
(4, '22005', 80.00,  'D', '2024-04-01', '13:20'),
(5, '22006', 60.00,  'D', '2024-04-05', '14:00'),
(6, '22007', 120.00, 'D', '2024-05-01', '08:50'),
(7, '22008', 500.00, 'D', '2024-05-10', '12:15'),
(8, '22009', 300.00, 'C', '2024-06-01', '15:30'),
(9, '22010', 250.00, 'D', '2024-06-15', '10:10'),
(10, '22011', 90.00, 'D', '2024-07-01', '09:00');
------------



INSERT INTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) VALUES
(1, 'A1234', 1500.00, 'c', '2025-06-01', '10:30:00'),
(2, 'B5678', 500.50, 'd', '2025-08-01', '14:15:00'),
(3, 'C4321', 1200.00, 'c', '2025-06-02', '09:45:00'),
(4, 'D8765', 100.00, 'd', '2025-06-02', '14:20:00'),
(5, 'E1357', 750.25, 'c', '2025-06-03', '16:00:00'),
(6, 'F2468', 450.75, 'd', '2025-08-03', '17:30:00'),
(7, 'G9753', 2000.00, 'c', '2025-06-04', '08:10:00'),
(8, 'H8642', 600.00, 'd', '2025-09-04', '12:00:00'),
(9, 'I7531', 1000.00, 'c', '2025-06-05', '13:50:00'),
(10, 'J6420', 350.00, 'd', '2025-09-05', '15:25:00');



--select * from transacciones;
select * from transacciones where tipo ='d';
select * from transacciones where monto between money(200) and  money(2000);
select codigo,monto, tipo, fecha from transacciones where fecha is not null;



update transacciones set tipo = 'T' where (monto > money(100) and monto < money(500)) and (fecha BETWEEN '2025-09-01' and '2025-09-30') and (hora BETWEEN '14:00' and '20:00'); 


delete from transacciones where (fecha between '2025-08-01' and '2025-08-31') and (hora between '14:00:00' and '18:00:00' );