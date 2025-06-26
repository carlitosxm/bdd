DROP table IF EXISTS usuario;
create table usuario (
cedula char(5),
nombre varchar(25) not null,
apellido varchar(25) not null,
tipo_cuenta varchar(20),
limite_credito decimal(10,5),
CONSTRAINT usuario_cedula_pk  PRIMARY key (cedula)
)

insert into usuario (cedula,nombre,apellido)
values
('12345','Carlos','Tipan'),
('12346','Luis','Tipan'),
('12347','Ricardo','Tipan'),
('12348','Marco','Tipan'),
('12349','Martha','Tipan');


INSERT INTO usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) VALUES ('22345', 'Monica', 'Rojas', 'Corriente', 5000.12345);
INSERT INTO usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) VALUES ('23456', 'Carlos', 'Navarro', 'Ahorros', 3000.00000);
INSERT INTO usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) VALUES ('34567', 'Lucía', 'Mendoza', 'Corriente', 4500.54321);
INSERT INTO usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) VALUES ('45678', 'Sean', 'Paredes', 'Ahorros', 2500.12345);
INSERT INTO usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) VALUES ('56789', 'Daniel', 'Morales', 'Corriente', 6000.55555);
INSERT INTO usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) VALUES ('67890', 'Natalia', 'Cedeño', 'Ahorros', 3500.22222);
INSERT INTO usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) VALUES ('78901', 'Esteban', 'Torres', 'Corriente', 7000.77777);
INSERT INTO usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) VALUES ('89012', 'Andrea', 'Muñoz', 'Ahorros', 4200.11111);
INSERT INTO usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) VALUES ('90123', 'Kevin', 'Reyes', 'Corriente', 3800.99999);
INSERT INTO usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) VALUES ('01234', 'Isabel', 'Gómez', 'Ahorros', 2700.44444);

select * from usuario;