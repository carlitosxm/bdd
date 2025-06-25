drop table if exists plataformas;

create table plataformas(
id_plataformas int,
nombre_plataforma varchar(50) not null,
codigo_videojuego int,
CONSTRAINT id_plataformas_pk primary key (id_plataformas),
CONSTRAINT codigo_videojuego_pk FOREIGN KEY (codigo_videojuego) REFERENCES videojuegos(codigo)
);

INSERT INTO plataformas (id_plataformas, nombre_plataforma, codigo_videojuego) VALUES
(1, 'PlayStation 5', 1),
(2, 'Xbox Series X', 2),
(3, 'PC', 3),
(4, 'PlayStation 4', 4),
(5, 'Nintendo Switch', 5),
(6, 'PC', 6),
(7, 'PlayStation 5', 7),
(8, 'Xbox Series X', 8),
(9, 'PC', 9),
(10, 'PlayStation 4', 10);