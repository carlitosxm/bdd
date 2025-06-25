-- tabla videojuegos
drop table if exists videojuegos;

create table videojuegos(
	codigo int not null,
	nombre varchar (100) not null,
	descripcion varchar (300),
	valoracion int	not null,
	CONSTRAINT videojuego_pk primary key (codigo)
);

-------------Reto 23
INSERT INTO videojuegos (codigo, nombre, descripcion, valoracion) VALUES 
(1, 'Call of Duty', 'Juego de disparos ambientado en la guerra moderna', 9),
(2, 'Civilization VI', 'Estrategia por turnos sobre guerra y diplomacia', 8),
(3, 'Dark Souls', 'Juego de rol y acción en un mundo oscuro', 10),
(4, 'Dead Space', 'Terror espacial con combates intensos', 9),
(5, 'Crash Bandicoot', 'Plataformas clásico con desafíos divertidos', 8),
(6, 'Cyberpunk 2077', 'Juego futurista de rol y acción', 7),
(7, 'God of war', 'Mitología nórdica con elementos de guerra épica', 10),
(8, 'Gears of War', 'Juego de disparos centrado en la guerra contra los locust', 9),
(9, 'Destiny 2', 'Shooter multijugador con historia de guerra interplanetaria', 8),
(10, 'Control', 'Aventura de acción con poderes sobrenaturales', 8);
--------------------------------



INSERT INTO videojuegos (codigo, nombre, descripcion, valoracion) VALUES
(1, 'The Legend of Zelda', 'Juego de aventura y exploración', 9),
(2, 'Minecraft', 'Juego de construcción y supervivencia', 8),
(3, 'Fortnite', 'Battle Royale multijugador', 10),
(4, 'Among Us', 'Juego de deducción social', 6),
(5, 'Call of Duty', 'Shooter en primera persona', 8);

INSERT INTO videojuegos (codigo, nombre, valoracion) VALUES
(6, 'FIFA 21', 7),
(7, 'Cyberpunk 2077', 6),
(8, 'Animal Crossing', 9);


--select * from videojuegos;

select * from videojuegos where nombre like 'C%';
select * from videojuegos where valoracion between 9 and 10;
select * from videojuegos where descripcion is null;



update videojuegos set descripcion = 'Mejor puntuado' where valoracion > 9;



delete from videojuegos where videojuegos.valoracion < 7;