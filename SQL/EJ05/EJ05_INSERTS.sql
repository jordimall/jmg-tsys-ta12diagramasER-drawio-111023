
INSERT INTO almacenes (descripcion, direccion) VALUES
('Almacén 1', '123 Main Street'),
('Almacén 2', '456 Elm Avenue'),
('Almacén 3', '789 Oak Lane'),
('Almacén 4', '101 Maple Road'),
('Almacén 5', '202 Pine Drive'),
('Almacén 6', '303 Cedar Street'),
('Almacén 7', '404 Birch Avenue'),
('Almacén 8', '505 Walnut Lane'),
('Almacén 9', '606 Willow Road'),
('Almacén 10', '707 Poplar Drive');

INSERT INTO estanteria (nombre, almacen_id) VALUES
('Estantería A', 1),
('Estantería B', 1),
('Estantería C', 2),
('Estantería D', 2),
('Estantería E', 3),
('Estantería F', 3),
('Estantería G', 4),
('Estantería H', 4),
('Estantería I', 5),
('Estantería J', 5);

INSERT INTO pieza (tipo, descripcion, precio, estanteria) VALUES
('A', 'Pieza tipo A', 10, 1),
('B', 'Pieza tipo B', 20, 2),
('C', 'Pieza tipo C', 15, 3),
('D', 'Pieza tipo D', 25, 4),
('E', 'Pieza tipo E', 30, 5),
('F', 'Pieza tipo F', 12, 6),
('G', 'Pieza tipo G', 18, 7),
('H', 'Pieza tipo H', 22, 8),
('I', 'Pieza tipo I', 14, 9),
('J', 'Pieza tipo J', 28, 10);


INSERT INTO compuesta (r_num, r_tipo, comp_num, comp_tipo) VALUES
(1, 'A', 2, 'B'),
(3, 'C', 4, 'D'),
(5, 'E', 6, 'F'),
(7, 'G', 8, 'H'),
(9, 'I', 10, 'J'),
(2, 'B', 3, 'C'),
(4, 'D', 5, 'E'),
(6, 'F', 7, 'G'),
(8, 'H', 9, 'I'),
(10, 'J', 1, 'A');

UPDATE almacenes
SET direccion = 'Nueva Dirección 123'
WHERE descripcion = 'Almacén 1';

DELETE FROM compuesta
WHERE r_num = 3 AND r_tipo = 'C' AND comp_num = 4 AND comp_tipo = 'D';

SELECT * FROM almacenes;
SELECT * FROM pieza
WHERE precio > 20;

DELETE FROM estanteria
WHERE nombre = 'Estantería I' AND almacen_id = 5;

DELETE FROM estanteria
WHERE id = 5;
