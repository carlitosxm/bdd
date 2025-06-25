DROP TABLE IF EXISTS prestamo;

CREATE TABLE prestamo (
    cedula CHAR(10) NOT NULL,
    monto MONEY,
    fecha_prestamo DATE,
    hora_prestamo TIME,
    garante VARCHAR(40),
    CONSTRAINT fk_cedula FOREIGN KEY (cedula) REFERENCES persona(cedula)
);

INSERT INTO prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante)
VALUES 
('0102030405', 500.00, '2024-03-10', '09:00', 'Pedro Valdez'),
('0203040506', 850.00, '2024-04-12', '10:20', 'Lucia Torres'),
('0304050607', 1500.00, '2024-02-28', '11:15', 'Mario Castillo'),
('0405060708', 300.00, '2024-05-05', '08:40', 'Andrea Suarez'),
('0506070809', 950.00, '2024-06-01', '12:05', 'Diego Romero');