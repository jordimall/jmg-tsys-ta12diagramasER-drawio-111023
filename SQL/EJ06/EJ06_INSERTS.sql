
INSERT INTO socio (dni, codigo_socio, direccion, nombre, apellido, telefono) VALUES
('123456789A', 'SOC001', 'Calle A, Ciudad A', 'Juan', 'Pérez', 123456789),
('987654321B', 'SOC002', 'Calle B, Ciudad B', 'María', 'García', 987654321),
('567890123C', 'SOC003', 'Calle C, Ciudad C', 'Carlos', 'López', 567890123),
('345678901D', 'SOC004', 'Calle D, Ciudad D', 'Ana', 'Martínez', 345678901),
('111222333E', 'SOC005', 'Calle E, Ciudad E', 'Pedro', 'Sánchez', 111222333),
('444555666F', 'SOC006', 'Calle F, Ciudad F', 'Laura', 'Rodríguez', 444555666),
('777888999G', 'SOC007', 'Calle G, Ciudad G', 'Javier', 'Fernández', 777888999),
('222333444H', 'SOC008', 'Calle H, Ciudad H', 'Isabel', 'López', 222333444),
('999000111I', 'SOC009', 'Calle I, Ciudad I', 'Miguel', 'Gómez', 999000111),
('666777888J', 'SOC010', 'Calle J, Ciudad J', 'Elena', 'Díaz', 666777888);

INSERT INTO autor (nombre, pais) VALUES
('Gabriel García Márquez', 'Colombia'),
('J.K. Rowling', 'Reino Unido'),
('George Orwell', 'Reino Unido'),
('Albert Camus', 'Francia'),
('Harper Lee', 'Estados Unidos'),
('J.R.R. Tolkien', 'Reino Unido'),
('Mark Twain', 'Estados Unidos'),
('Fyodor Dostoevsky', 'Rusia'),
('Jane Austen', 'Reino Unido'),
('Leo Tolstoy', 'Rusia');


INSERT INTO deterioro (id, comentario, estado) VALUES
(1, 'Leve desgaste en la portada', 5),
(2, 'Páginas dobladas', 3),
(3, 'Tapa rota', 2),
(4, 'Páginas faltantes', 1),
(5, 'Desgaste severo en la cubierta', 4),
(6, 'Manchas de tinta en páginas', 6),
(7, 'Páginas sueltas', 3),
(8, 'Tapa desprendida', 2),
(9, 'Páginas amarillentas', 7),
(10, 'Portada arrancada', 1);


INSERT INTO articulo (id, nombre, sipnosis, anio, estado, creador) VALUES
(1, 'Cien Años de Soledad', 'La historia de los Buendía en Macondo.', 1967, 1, 'Gabriel García Márquez'),
(2, 'Harry Potter y la Piedra Filosofal', 'Harry descubre su verdadera identidad.', 1997, 3, 'J.K. Rowling'),
(3, '1984', 'El Gran Hermano y la vigilancia totalitaria.', 1949, 5, 'George Orwell'),
(4, 'El Extranjero', 'La indiferencia del protagonista Meursault.', 1942, 2, 'Albert Camus'),
(5, 'Matar a un Ruiseñor', 'La lucha contra el racismo en el sur de EE. UU.', 1960, 4, 'Harper Lee'),
(6, 'El Señor de los Anillos', 'La búsqueda del Anillo Único.', 1954, 2, 'J.R.R. Tolkien'),
(7, 'Las Aventuras de Tom Sawyer', 'Travesuras de Tom y Huck Finn.', 1876, 6, 'Mark Twain'),
(8, 'Crimen y Castigo', 'La culpa y el castigo de Raskolnikov.', 1866, 1, 'Fyodor Dostoevsky'),
(9, 'Orgullo y Prejuicio', 'La historia de Elizabeth Bennet y Mr. Darcy.', 1813, 7, 'Jane Austen'),
(10, 'Guerra y Paz', 'La Rusia napoleónica en la obra maestra de Tolstoy.', 1869, 2, 'Leo Tolstoy');


INSERT INTO libro (num_paginas) VALUES
(400),
(320),
(328),
(123),
(285),
(117),
(284),
(511),
(416),
(122);


INSERT INTO cd (num_canciones) VALUES
(12),
(14),
(10),
(8),
(16),
(11),
(9),
(13),
(15),
(17);


INSERT INTO pelicula (duracion) VALUES
(120),
(152),
(110),
(95),
(137),
(115),
(103),
(141),
(162),
(118);


INSERT INTO prestamo (fecha_devolucion, fecha_devolucion_real, fecha_prestamo, prestado, id_articulo) VALUES
('2023-10-30', NULL, '2023-10-15', '123456789A', 1),
('2023-10-30', NULL, '2023-10-15', '987654321B', 2),
('2023-10-30', NULL, '2023-10-15', '567890123C', 3),
('2023-10-30', NULL, '2023-10-15', '345678901D', 4),
('2023-10-30', NULL, '2023-10-15', '111222333E', 5),
('2023-10-30', NULL, '2023-10-15', '444555666F', 6),
('2023-10-30', NULL, '2023-10-15', '777888999G', 7),
('2023-10-30', NULL, '2023-10-15', '222333444H', 8),
('2023-10-30', NULL, '2023-10-15', '999000111I', 9),
('2023-10-30', NULL, '2023-10-15', '666777888J', 10);

DELETE FROM socio 
WHERE dni = '123456789A';

UPDATE socio 
SET telefono = 555555555 
WHERE dni = '987654321B';

SELECT * FROM articulo 
WHERE creador = 'Gabriel García Márquez';

DELETE FROM 
articulo WHERE id = 3;
UPDATE socio 
SET direccion = 'Nueva Dirección'
WHERE dni = '567890123C';

SELECT * FROM
pelicula WHERE duracion > 140;