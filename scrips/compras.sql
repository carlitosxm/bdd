drop table if exists compras;

create table compras(
id_compra int,
cedula char(10) not null,
fecha_compra date not null,
monto DECIMAL(10,2) not null,
CONSTRAINT id_compra_pk primary key (id_compra),
CONSTRAINT cedula_fk FOREIGN KEY (cedula) REFERENCES clientes(cedula)
);


INSERT INTO compras (id_compra, cedula, fecha_compra, monto)
VALUES (1, '1723456789', '2024-06-01', 100.50);

INSERT INTO compras (id_compra, cedula, fecha_compra, monto)
VALUES (2, '0912345678', '2024-06-02', 250.00);

INSERT INTO compras (id_compra, cedula, fecha_compra, monto)
VALUES (3, '0807654321', '2024-06-03', 75.25);

INSERT INTO compras (id_compra, cedula, fecha_compra, monto)
VALUES (4, '0607098765', '2024-06-04', 180.99);

INSERT INTO compras (id_compra, cedula, fecha_compra, monto)
VALUES (5, '0954321765', '2024-06-05', 320.00);
