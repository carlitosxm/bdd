drop table if EXISTS clientes;

create table clientes(
cedula char(10),
nombre varchar(50) not null,
apellido varchar(50) not null,
CONSTRAINT cedulo_pk primary key (cedula)
);


INSERT INTO clientes (cedula, nombre, apellido) VALUES ('1723456789', 'Carlos', 'Pérez');
INSERT INTO clientes (cedula, nombre, apellido) VALUES ('1109876543', 'Ana', 'López');
INSERT INTO clientes (cedula, nombre, apellido) VALUES ('0912345678', 'Monica', 'González');
INSERT INTO clientes (cedula, nombre, apellido) VALUES ('0807654321', 'Luis', 'Ramírez');
INSERT INTO clientes (cedula, nombre, apellido) VALUES ('0954321765', 'Pedro', 'Martínez');
INSERT INTO clientes (cedula, nombre, apellido) VALUES ('0607098765', 'Andrea', 'Castillo');
INSERT INTO clientes (cedula, nombre, apellido) VALUES ('1234567890', 'Julia', 'Morales');
INSERT INTO clientes (cedula, nombre, apellido) VALUES ('1712341234', 'Fernando', 'Vera');
INSERT INTO clientes (cedula, nombre, apellido) VALUES ('0911123456', 'Carla', 'Salazar');
INSERT INTO clientes (cedula, nombre, apellido) VALUES ('0808080707', 'Ricardo', 'Jiménez');
