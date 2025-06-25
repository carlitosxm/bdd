drop table if exists banco;

create table banco(
codigo_banco int,
codigo_transaccion int,
detalle varchar(100),
CONSTRAINT codigo_banco_pk primary key (codigo_banco),
CONSTRAINT codigo_transaccion_fk foreign key (codigo_transaccion) references transacciones(codigo)
);


INSERT INTO banco (codigo_banco, codigo_transaccion, detalle) VALUES
(1001, 1, 'Depósito inicial'),
(1002, 3, 'Transferencia desde otro banco'),
(1003, 4, 'Pago de servicios'),
(1004, 7, 'Compra en línea'),
(1005, 10, 'Retiro en ventanilla');