USE EJ15;

/* plato */

INSERT INTO plato (descripcio, nombre, tipo) VALUES
('descripción1', 'nombre1', 'tipo1'),
('descripción2', 'nombre2', 'tipo2'),
('descripción3', 'nombre3', 'tipo3'),
('descripción4', 'nombre4', 'tipo4'),
('descripción5', 'nombre5', 'tipo5'),
('descripción6', 'nombre6', 'tipo6'),
('descripción7', 'nombre7', 'tipo7'),
('descripción8', 'nombre8', 'tipo8'),
('descripción9', 'nombre9', 'tipo9'),
('descripción10', 'nombre10', 'tipo10');

/* menu */

INSERT INTO menu (contarPersonas) VALUES
(1), 
(2), 
(3), 
(4), 
(5), 
(6), 
(7), 
(8), 
(9), 
(10);


/* componer */

INSERT INTO componer (IDPlato, IDMenu) VALUES
(9, 9),
(8, 8),
(7, 7),
(6, 6),
(5, 5),
(4, 4),
(3, 3),
(2, 2),
(1, 1);


/* dia */

INSERT INTO dia (fecha, temperatura) VALUES
('2023-01-01', 15.5),
('2023-01-02', 16.2),
('2023-01-03', 17.1),
('2023-01-04', 16.7),
('2023-01-05', 15.8),
('2023-01-06', 16.0),
('2023-01-07', 15.9),
('2023-01-08', 16.4),
('2023-01-09', 16.1),
('2023-01-10', 15.6);


/* ofrecer */

INSERT INTO ofrecer (IDMenu, IDDia, cantidad) VALUES
(1, 1, 10),
(2, 2, 20),
(3, 3, 30),
(4, 4, 40),
(5, 5, 50),
(6, 6, 60),
(7, 7, 70),
(8, 8, 80),
(9, 9, 90),
(10, 10, 100);

-- SELECT:

SELECT * FROM plato WHERE tipo = 'tipo1';
SELECT * FROM menu WHERE contarPersonas = 2;
SELECT * FROM plato p JOIN componer c ON p.ID = c.IDPlato WHERE c.IDMenu = 1;
SELECT * FROM dia WHERE temperatura = 15.5;
SELECT * FROM menu m JOIN ofrecer o ON m.ID = o.IDMenu WHERE o.IDDia = 1;

-- UPDATE: 

UPDATE plato SET descripcio = 'Nueva descripción' WHERE ID = 1;
UPDATE menu SET contarPersonas = 3 WHERE ID = 1;
UPDATE componer SET IDMenu = 2 WHERE IDPlato = 1 AND IDMenu = 1;
UPDATE dia SET temperatura = 16.0 WHERE ID = 1;
UPDATE ofrecer SET cantidad = 20 WHERE IDMenu = 1 AND IDDia = 1;

-- DELETE: 

DELETE FROM plato WHERE ID = 1;
DELETE FROM menu WHERE ID = 1;
DELETE FROM componer WHERE IDPlato = 1 AND IDMenu = 1;
DELETE FROM dia WHERE ID = 1;
DELETE FROM ofrecer WHERE IDMenu = 1 AND IDDia = 1;
