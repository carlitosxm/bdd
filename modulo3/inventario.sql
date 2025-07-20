-- Eliminar tablas
DROP TABLE IF EXISTS detalle_ventas;
DROP TABLE IF EXISTS cabecera_ventas;
DROP TABLE IF EXISTS historial_stock;
DROP TABLE IF EXISTS detalle_pedidos;
DROP TABLE IF EXISTS cabecera_pedidos;
DROP TABLE IF EXISTS estado_pedidos;
DROP TABLE IF EXISTS productos;
DROP TABLE IF EXISTS categorias;
DROP TABLE IF EXISTS unidades_medidas;
DROP TABLE IF EXISTS categoria_unidad_medida;
DROP TABLE IF EXISTS proveedores;
DROP TABLE IF EXISTS tipo_documentos;

-- tabla categoria_unidad_medida
CREATE TABLE categoria_unidad_medida (
    codigo CHAR(1) NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    CONSTRAINT pk_categoria_unidad_medida PRIMARY KEY (codigo)
);

-- tabla unidades_medidas
CREATE TABLE unidades_medidas (
    codigo_udm VARCHAR(10) NOT NULL,
    descripcion VARCHAR(50) NOT NULL,
    categoria_udm CHAR(1) NOT NULL,
    CONSTRAINT pk_unidades_medidas PRIMARY KEY (codigo_udm),
    CONSTRAINT fk_categoria_udm FOREIGN KEY (categoria_udm) REFERENCES categoria_unidad_medida(codigo)
);

-- tabla categorias
CREATE TABLE categorias (
    codigo_cat SERIAL NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    categoria_padre INT,
    CONSTRAINT pk_categorias PRIMARY KEY (codigo_cat),
    CONSTRAINT fk_categoria_padre FOREIGN KEY (categoria_padre) REFERENCES categorias(codigo_cat)
);

-- tabla productos
CREATE TABLE productos (
    codigo SERIAL NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    udm VARCHAR(10) NOT NULL,
    precio_venta MONEY NOT NULL,
    tiene_iva BOOLEAN NOT NULL,
    coste MONEY NOT NULL,
    categoria INT NOT NULL,
    stock INT NOT NULL,
    CONSTRAINT pk_productos PRIMARY KEY (codigo),
    CONSTRAINT fk_udm FOREIGN KEY (udm) REFERENCES unidades_medidas(codigo_udm),
    CONSTRAINT fk_categoria FOREIGN KEY (categoria) REFERENCES categorias(codigo_cat)
);

-- tabla tipo_documentos
CREATE TABLE tipo_documentos (
    codigo CHAR(1) NOT NULL,
    descripcion VARCHAR(100) NOT NULL,
    CONSTRAINT pk_tipo_documentos PRIMARY KEY (codigo)
);

-- tabla proveedores
CREATE TABLE proveedores (
    identificador VARCHAR(13) NOT NULL,
    id_tipo_documento CHAR(1) NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(10) NOT NULL,
    correo VARCHAR(50) NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    CONSTRAINT pk_proveedores PRIMARY KEY (identificador),
    CONSTRAINT fk_tipo_documento FOREIGN KEY (id_tipo_documento) REFERENCES tipo_documentos(codigo)
);

-- tabla estado_pedidos
CREATE TABLE estado_pedidos (
    codigo CHAR(1) NOT NULL,
    descripcion VARCHAR(100) NOT NULL,
    CONSTRAINT pk_estado_pedidos PRIMARY KEY (codigo)
);

-- tabla cabecera_pedidos
CREATE TABLE cabecera_pedidos (
    numero SERIAL NOT NULL,
    id_proveedor VARCHAR(13) NOT NULL,
    fecha DATE NOT NULL,
    id_estado CHAR(1) NOT NULL,
    CONSTRAINT pk_cabecera_pedidos PRIMARY KEY (numero),
    CONSTRAINT fk_proveedor FOREIGN KEY (id_proveedor) REFERENCES proveedores(identificador),
    CONSTRAINT fk_estado FOREIGN KEY (id_estado) REFERENCES estado_pedidos(codigo)
);

-- tabla detalle_pedidos
CREATE TABLE detalle_pedidos (
    codigo SERIAL NOT NULL,
    id_cabecera_pedido INT NOT NULL,
    id_producto INT NOT NULL,
    cantidad INT NOT NULL,
    subtotal MONEY NOT NULL,
    cantidad_recibida INT NOT NULL,
    CONSTRAINT pk_detalle_pedidos PRIMARY KEY (codigo),
    CONSTRAINT fk_cabecera_pedido FOREIGN KEY (id_cabecera_pedido) REFERENCES cabecera_pedidos(numero),
    CONSTRAINT fk_producto FOREIGN KEY (id_producto) REFERENCES productos(codigo)
);

-- tabla historial_stock
CREATE TABLE historial_stock (
    codigo SERIAL NOT NULL,
    fecha TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    referencia VARCHAR(100) NOT NULL,
    id_producto INT NOT NULL,
    cantidad INT NOT NULL,
    CONSTRAINT pk_historial_stock PRIMARY KEY (codigo),
    CONSTRAINT fk_historial_producto FOREIGN KEY (id_producto) REFERENCES productos(codigo)
);

-- tabla cabecera_ventas
CREATE TABLE cabecera_ventas (
    codigo SERIAL NOT NULL,
    fecha TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    total_sin_iva MONEY NOT NULL,
    total_con_iva MONEY NOT NULL,
    total MONEY NOT NULL,
    CONSTRAINT pk_cabecera_ventas PRIMARY KEY (codigo)
);

-- tabla detalle_ventas
CREATE TABLE detalle_ventas (
    codigo SERIAL NOT NULL,
    id_cabecera_ventas INT NOT NULL,
    id_producto INT NOT NULL,
    cantidad INT NOT NULL,
    precio_venta MONEY NOT NULL,
    subtotal_con_iva MONEY NOT NULL,
    CONSTRAINT pk_detalle_ventas PRIMARY KEY (codigo),
    CONSTRAINT fk_cabecera_ventas FOREIGN KEY (id_cabecera_ventas) REFERENCES cabecera_ventas(codigo),
    CONSTRAINT fk_detalle_producto FOREIGN KEY (id_producto) REFERENCES productos(codigo)
);

-- insert categoria_unidad_medida
INSERT INTO categoria_unidad_medida (codigo, nombre) VALUES
('U', 'UNIDAD'),
('V', 'VOLUMEN'),
('P', 'Peso'),
('L', 'Longitud');

-- insert unidades_medidas
INSERT INTO unidades_medidas (codigo_udm, descripcion, categoria_udm) VALUES
('ml', 'MILILITROS', 'V'),
('l', 'LITROS', 'V'),
('u', 'UNIDAD', 'U'),
('d', 'DOCENA', 'U'),
('g', 'GRAMOS', 'P'),
('kg', 'KILOGRAMOS', 'P'),
('lb', 'LIBRAS', 'P');

-- insert categorias
INSERT INTO categorias (codigo_cat, nombre, categoria_padre) VALUES
(1, 'Materia prima', NULL),
(2, 'Proteina', 1),
(3, 'Salsas', 1),
(4, 'Punto de Venta', NULL),
(5, 'Bebidas', 4),
(6, 'Con alcohol', 5),
(7, 'Sin alcohol', 5);

-- insert productos
INSERT INTO productos (codigo, nombre, udm, precio_venta, tiene_iva, coste, categoria, stock) VALUES
(1, 'COCA COLA PEQUEÑA', 'u', 0.5804, TRUE, 0.3729, 7, 105),
(2, 'SALSA DE TOMATE', 'kg', 0.95, TRUE, 0.8736, 3, 0),
(3, 'MOSTAZA', 'kg', 0.89, TRUE, 0.8736, 3, 0),
(4, 'Fuze tea', 'u', 0.8, TRUE, 0.7, 7, 49);

-- insert tipo_documentos
INSERT INTO tipo_documentos (codigo, descripcion) VALUES
('C', 'CEDULA'),
('R', 'RUC');

-- insert proveedores
INSERT INTO proveedores (identificador, id_tipo_documento, nombre, telefono, correo, direccion) VALUES
('1723460000000', 'R', 'XXX XXX', '999999999', 'O@O.COM', 'XXX'),
('1723457899', 'C', 'XXX XXX', '999999999', 'O@O.COM', 'XXX');

-- insert estado_pedidos
INSERT INTO estado_pedidos (codigo, descripcion) VALUES
('S', 'Solicitado'),
('R', 'Recibido');

-- insert cabecera_pedidos
INSERT INTO cabecera_pedidos (numero, id_proveedor, fecha, id_estado) VALUES
(1, '1723460000000', '2020-08-30', 'R'),
(2, '1723460000000', '2020-08-30', 'R');

-- insert detalle_pedidos
INSERT INTO detalle_pedidos (codigo, id_cabecera_pedido, id_producto, cantidad, subtotal, cantidad_recibida) VALUES
(1, 1, 1, 100, 37.29, 100),
(2, 1, 4, 50, 11.8, 50),
(3, 2, 1, 10, 3.73, 10);

-- insert historial_stock
INSERT INTO historial_stock (codigo, fecha, referencia, id_producto, cantidad) VALUES
(1, '2020-11-20', 'PEDIDO 1', 1, 100),
(2, '2020-11-20', 'PEDIDO 1', 4, 50),
(3, '2020-11-20', 'PEDIDO 2', 1, 10),
(4, '2020-11-20', 'VENTA 1', 1, -5),
(5, '2020-11-20', 'VENTA 1', 4, -1);

-- insert cabecera_ventas
INSERT INTO cabecera_ventas (codigo, fecha, total_sin_iva, total_con_iva, total) VALUES
(1, '2020-11-20', 3.26, 0.39, 3.65);

-- insert detalle_ventas
INSERT INTO detalle_ventas (codigo, id_cabecera_ventas, id_producto, cantidad, precio_venta, subtotal_con_iva) VALUES
(1, 1, 1, 5, 0.58, 3.25),
(2, 1, 4, 1, 0.36, 0.40);




SELECT * FROM categoria_unidad_medida;

SELECT * FROM unidades_medidas;

SELECT * FROM categorias;

SELECT * FROM productos;

SELECT * FROM tipo_documentos;

SELECT * FROM proveedores;

SELECT * FROM estado_pedidos;

SELECT * FROM cabecera_pedidos;

SELECT * FROM detalle_pedidos;

SELECT * FROM historial_stock;

SELECT * FROM cabecera_ventas;

SELECT * FROM detalle_ventas;