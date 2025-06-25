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


select * from usuario;