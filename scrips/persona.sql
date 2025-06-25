DROP TABLE IF EXISTS persona;

CREATE TABLE persona (
    cedula CHAR(10) PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    estatura DECIMAL(10,2),
    fecha_nacimiento DATE NOT NULL,
    hora_nacimiento TIME,
    cantidad_ahorrada MONEY,
    numero_hijos INT
);

INSERT INTO persona (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos)
VALUES 
('0102030405', 'Sean', 'Ramirez', 1.75, '1990-06-15', '08:30', 1200.50, 2),
('0203040506', 'Ana', 'Martinez', 1.62, '1985-03-20', '10:15', 850.00, 1),
('0304050607', 'Luis', 'Gomez', 1.80, '1992-11-05', '09:45', 450.75, 0),
('0405060708', 'Maria', 'Lopez', 1.68, '1988-07-12', '07:50', 950.25, 3),
('0506070809', 'Carlos', 'Perez', 1.70, '1995-01-28', '06:40', 600.00, 1);