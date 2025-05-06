-- Crear tabla productos
CREATE TABLE IF NOT EXISTS productos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT NOT NULL,
    precio REAL NOT NULL
);

-- Insertar productos ejemplo
INSERT INTO productos (nombre, precio) VALUES
('Cerveza', 5.0),
('Vino', 10.0),
('Tequila', 15.0),
('Ron', 12.0),
('Whisky', 20.0),
('Vodka', 18.0),
('Cóctel Mojito', 8.0),
('Cóctel Margarita', 9.0),
('Cóctel Piña Colada', 10.0),
('Limonada', 4.0),
('Agua', 2.0),
('Papas Fritas', 3.0),
('Nachos', 4.5),
('Sándwich', 7.0),
('Hamburguesa', 10.0);
