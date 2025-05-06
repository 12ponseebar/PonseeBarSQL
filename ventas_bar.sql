-- Crear base de datos 'ventas_bar.db' si no existe
-- Este código crea las tablas necesarias en la base de datos SQLite.

-- Crear tabla de productos
CREATE TABLE IF NOT EXISTS productos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,  -- ID del producto (clave primaria, autoincrementable)
    nombre TEXT NOT NULL,                  -- Nombre del producto
    precio REAL NOT NULL                   -- Precio del producto
);

-- Crear tabla de historial de compras
CREATE TABLE IF NOT EXISTS historial_cliente (
    id INTEGER PRIMARY KEY AUTOINCREMENT,  -- ID de la venta (clave primaria, autoincrementable)
    nombre_cliente TEXT NOT NULL,          -- Nombre del cliente
    productos TEXT NOT NULL,               -- Lista de productos comprados (como texto)
    total REAL NOT NULL,                   -- Total de la compra
    fecha TEXT NOT NULL                    -- Fecha de la compra
);

-- Crear tabla de clientes
CREATE TABLE IF NOT EXISTS clientes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,  -- ID del cliente (clave primaria, autoincrementable)
    nombre_cliente TEXT NOT NULL,          -- Nombre del cliente
    correo_cliente TEXT                    -- Correo electrónico del cliente (opcional)
);

-- Crear tabla de logs (para registrar acciones y errores)
CREATE TABLE IF NOT EXISTS logs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,  -- ID del log
    mensaje TEXT NOT NULL,                 -- Mensaje del log
    fecha TEXT NOT NULL                    -- Fecha y hora del log
);

-- Insertar algunos productos de ejemplo (opcional)
INSERT INTO productos (nombre, precio) VALUES ('Cerveza', 5000);
INSERT INTO productos (nombre, precio) VALUES ('Ron', 6000);
INSERT INTO productos (nombre, precio) VALUES ('Gaseosa', 3000);
INSERT INTO productos (nombre, precio) VALUES ('Tequila', 7000);
INSERT INTO productos (nombre, precio) VALUES ('Vino', 8000);
