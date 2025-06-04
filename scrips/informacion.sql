-- tabla informacion

create table cuentas(
	numero_cuenta char (5) not null,
	cedula_propietario char (5) not null,
	fecha_creacion date not null,
	saldo money not null,
	CONSTRAINT cuenta_pk PRIMARY key (numero_cuenta)
);