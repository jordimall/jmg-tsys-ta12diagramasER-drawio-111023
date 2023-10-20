USE EJ18;

/* persona */

INSERT INTO persona (DNI, nombre, apellidos, telefono_fijo, movil) VALUES 
('11111111A', 'Jordi', 'Melo', '977485215', '685412596'),
('22222222Z', 'David', 'Mallafré', '965587421', '685345441'),
('33333333C', 'Oriol', 'Maza', '977485215', '685417551'),
('44444444D', 'Adrian', 'Gallego', '945862148', '627125985'),
('55555555E', 'Antoni', 'Andreu', '985143652', '685419328'),
('66666666F', 'Asier', 'González', '965125698', '659412387'),
('77777777G', 'María', 'López', '912345678', '635987412'),
('88888888H', 'Carlos', 'Martínez', '945632189', '677123456'),
('99999999I', 'Elena', 'Fernández', '981234567', '622987654'),
('10101010J', 'Pedro', 'Ramírez', '965487123', '666555444');

SELECT * FROM persona;

/* Trabajador */

INSERT INTO trabajador (codigo_personal, persona_dni) VALUES 
('T-5212', '22222222Z'),
('T-5213', '33333333C'),
('T-5214', '11111111A'),
('T-5215', '77777777G'),
('T-5216', '88888888H'),
('T-5217', '99999999I'),
('T-5218', '10101010J');

SELECT * FROM trabajador;

/* cliente */

INSERT INTO cliente (codigo_personal, persona_dni) VALUES
('C-5212', '22222222Z'),
('C-5213', '33333333C'),
('C-5214', '11111111A'),
('C-5215', '77777777G'),
('C-5216', '88888888H'),
('C-5217', '99999999I'),
('C-5218', '10101010J');

SELECT * FROM cliente;

INSERT INTO inmueble (Codigo_inmueble, direccion, descripcion, metros) VALUES
('PI-01', 'Calle 123', 'Apartamento espacioso', 85.5),
('PI-02', 'Avenida Principal', 'Casa con jardín', 150.3),
('PI-03', 'Calle Peatonal', 'Estudio moderno', 45.2),
('PI-04', 'Avenida Central', 'Penthouse de lujo', 200.0),
('PI-05', 'Calle Comercial', 'Piso céntrico', 68.9),
('GA-01', 'Calle Tranquila', 'Casa de campo', 300.8),
('GA-02', 'Avenida Comercial', 'Apartamento céntrico', 75.6),
('GA-03', 'Calle Residencial', 'Loft industrial', 65.0),
('GA-04', 'Calle Residencial', 'Piso moderno', 92.7),
('GA-05', 'Avenida Peatonal', 'Casa de lujo', 320.6),
('LO-01', 'Calle Principal', 'Casa tradicional', 120.5),
('LO-02', 'Avenida Moderna', 'Piso luminoso', 95.7),
('LO-03', 'Avenida Principal', 'Apartamento luminoso', 70.1),
('LO-04', 'Calle Tranquila', 'Casa rústica', 160.8),
('LO-05', 'Calle Moderna', 'Loft urbano', 78.0),
('IN-01', 'Calle Pequeña', 'Casa adosada', 180.4),
('IN-02', 'Avenida Moderna', 'Dúplex elegante', 125.9),
('IN-03', 'Calle Pequeña', 'Penthouse con vistas', 185.0),
('IN-04', 'Calle Comercial', 'Piso con jardín', 115.2),
('IN-05', 'Avenida Principal', 'Ático luminoso', 95.4);

SELECT * FROM inmueble;

INSERT INTO piso (Codigo_inmueble, codigo_especial) VALUES
('PI-01', 'ESPEC001'),
('PI-02', 'ESPEC002'),
('PI-03', 'ESPEC003'),
('PI-04', 'ESPEC004'),
('PI-05', 'ESPEC005');

SELECT * FROM piso;

INSERT INTO garaje (Codigo_inmueble, numero, planta, codigo_piso) VALUES
('GA-01', 1, 0, 'PI-01'),
('GA-02', 2, 3, 'PI-01'),
('GA-03', 10, 1, null),
('GA-04', 25, 2, 'PI-04'),
('GA-05', 1, 0, null);

SELECT * FROM garaje;

INSERT INTO local (Codigo_inmueble, uso, servicio) VALUES
('LO-01', 'Spa', true),
('LO-02', 'Tienda de Ropa', true),
('LO-03', 'Oficina', false),
('LO-04', 'Cafetería', true),
('LO-05', 'Farmacia', false);

SELECT * FROM local;

INSERT INTO propiedad (codigo_de_compra, valor, fecha, codigo_inmueble) VALUES
('COMP-001', 150000, '2023-10-10', 'PI-01'),
('COMP-002', 300000, '2023-10-12', 'PI-02'),
('COMP-003', 80000, '2023-10-15', 'PI-03'),
('COMP-004', 500000, '2023-10-18', 'PI-04'),
('COMP-005', 120000, '2023-10-20', 'GA-01'),
('COMP-006', 250000, '2023-10-22', 'GA-02'),
('COMP-007', 75000, '2023-10-25', 'GA-03'),
('COMP-008', 220000, '2023-10-28', 'GA-04'),
('COMP-009', 600000, '2023-10-30', 'LO-01'),
('COMP-010', 280000, '2023-11-02', 'LO-02');

SELECT * FROM propiedad;

INSERT INTO adquirir (Codigo_personal_cliente, Codigo_de_compra) VALUES
('C-5212', 'COMP-001'),
('C-5213', 'COMP-001'),
('C-5214', 'COMP-002'),
('C-5214', 'COMP-003'),
('C-5215', 'COMP-004'),
('C-5216', 'COMP-005'),
('C-5217', 'COMP-006'),
('C-5218', 'COMP-007'),
('C-5212', 'COMP-008'),  
('C-5213', 'COMP-009'),  
('C-5215', 'COMP-010'); 

SELECT * FROM adquirir;

INSERT INTO alquirer (ID, numero_alquiler, codigo_inmueble, codigo_personal_cliente, codigo_personal_trabajador) VALUES
('ALQ-001', 1, 'PI-01', 'C-5212', 'T-5218'),
('ALQ-002', 2, 'PI-02', 'C-5213', 'T-5212'),
('ALQ-003', 3, 'PI-03', 'C-5214', 'T-5216'),
('ALQ-004', 4, 'PI-04', 'C-5215', 'T-5212'),
('ALQ-005', 5, 'PI-05', 'C-5216', 'T-5217'),
('ALQ-006', 6, 'GA-01', 'C-5217', 'T-5218'),
('ALQ-007', 7, 'GA-02', 'C-5218', 'T-5212'),
('ALQ-008', 8, 'GA-03', 'C-5212', 'T-5213'),
('ALQ-009', 9, 'GA-04', 'C-5213', 'T-5214'),
('ALQ-010', 10, 'LO-01', 'C-5214', 'T-5215');

SELECT * FROM alquirer;

INSERT INTO pago_alquiler (valor_pago, mes, anio, IDAlquiler) VALUES
(120.00, 1, 2023, 'ALQ-001'),
(1450.50, 2, 2023, 'ALQ-002'),
(900.00, 1, 2023, 'ALQ-003'),
(1800.00, 4, 2023, 'ALQ-004'),
(850.00, 5, 2023, 'ALQ-005'),
(2500.00, 6, 2023, 'ALQ-006'),
(1300.75, 12, 2023, 'ALQ-007'),
(1600.00, 8, 2023, 'ALQ-008'),
(1750.25, 8, 2023, 'ALQ-009'),
(1100.50, 10, 2023, 'ALQ-010');

SELECT * FROM pago_alquiler;

/* Persona */

SELECT * FROM persona;
SELECT * FROM persona WHERE DNI IN('11111111A', '22222222Z', '33333333C');

UPDATE persona SET apellidos='Mallafré' WHERE DNI='11111111A';
UPDATE persona SET apellidos='Maza' WHERE DNI='22222222Z';
UPDATE persona SET apellidos='Melo' WHERE DNI='33333333C';

SELECT * FROM persona WHERE DNI IN('11111111A', '22222222Z', '33333333C');

DELETE FROM persona WHERE DNI='44444444D';
DELETE FROM persona WHERE DNI='55555555E';
DELETE FROM persona WHERE DNI='66666666F';

SELECT * FROM persona WHERE DNI IN('44444444D', '55555555E', '66666666F');

/* Trabajador */

SELECT * FROM trabajador;
SELECT * FROM trabajador WHERE persona_dni='22222222Z';

UPDATE trabajador SET codigo_personal='T-5155' WHERE persona_dni='22222222Z';
UPDATE persona SET DNI='22222222B' WHERE DNI='22222222Z';

SELECT * FROM trabajador WHERE codigo_personal='T-5155';

DELETE FROM trabajador WHERE codigo_personal='T-5213';
DELETE FROM trabajador WHERE codigo_personal='T-5214';
DELETE FROM trabajador WHERE codigo_personal='T-5218';

SELECT * FROM trabajador WHERE codigo_personal IN('T-5213', 'T-5214', 'T-5218');

/* Cliente */

SELECT * FROM cliente;
SELECT * FROM cliente WHERE persona_dni IN('22222222B', '11111111A');

UPDATE cliente SET codigo_personal='T-5155' WHERE persona_dni='22222222B';
UPDATE persona SET DNI='01020304L' WHERE DNI='11111111A';

SELECT * FROM cliente WHERE persona_dni IN('22222222B', '01020304L');

DELETE FROM cliente WHERE codigo_personal='T-5155';
DELETE FROM cliente WHERE codigo_personal='C-5218';

SELECT * FROM cliente WHERE codigo_personal IN('T-5155', 'C-5218');

/* Inmueble */

SELECT * FROM inmueble;
SELECT * FROM inmueble WHERE Codigo_inmueble IN('PI-05', 'LO-03');

UPDATE inmueble SET direccion='Avinguda Maria Cristina' WHERE Codigo_inmueble='PI-05';
UPDATE inmueble SET metros=200 WHERE Codigo_inmueble='LO-03';

SELECT * FROM inmueble WHERE Codigo_inmueble IN('PI-05', 'LO-03');

DELETE FROM inmueble WHERE Codigo_inmueble='GA-05';
DELETE FROM inmueble WHERE Codigo_inmueble='IN-05';

SELECT * FROM inmueble WHERE Codigo_inmueble IN('GA-05', 'IN-05');

/* Piso */

SELECT * FROM piso;
SELECT * FROM piso WHERE Codigo_inmueble IN('PI-03', 'PI-04');

UPDATE piso SET codigo_especial = 'ESPEC006' WHERE Codigo_inmueble = 'PI-03';
UPDATE piso SET codigo_especial = 'ESPEC007' WHERE Codigo_inmueble = 'PI-04';

SELECT * FROM piso WHERE Codigo_inmueble IN('PI-03', 'PI-04');

DELETE FROM piso WHERE Codigo_inmueble = 'PI-01'; 
DELETE FROM piso WHERE Codigo_inmueble = 'PI-05';

SELECT * FROM piso WHERE Codigo_inmueble IN('PI-01', 'PI-05');

/* Garaje */

SELECT * FROM garaje;
SELECT * FROM garaje WHERE Codigo_inmueble IN('GA-03', 'GA-04');

UPDATE garaje SET numero = 15, planta = 2 WHERE Codigo_inmueble = 'GA-03';
UPDATE garaje SET numero = 2, planta = 1 WHERE Codigo_inmueble = 'GA-04';

SELECT * FROM garaje WHERE Codigo_inmueble IN('GA-03', 'GA-04');

DELETE FROM garaje WHERE Codigo_inmueble = 'GA-02';
DELETE FROM garaje WHERE Codigo_inmueble = 'GA-04';

SELECT * FROM garaje WHERE Codigo_inmueble IN('GA-02', 'GA-04');

/* Local */

SELECT * FROM local;
SELECT * FROM local WHERE Codigo_inmueble IN('LO-03', 'LO-05');

UPDATE local SET uso = 'Restaurante', servicio = true WHERE Codigo_inmueble = 'LO-03';
UPDATE local SET uso = 'Supermercado', servicio = true WHERE Codigo_inmueble = 'LO-05';

SELECT * FROM local WHERE Codigo_inmueble IN('LO-03', 'LO-05');

DELETE FROM local WHERE Codigo_inmueble = 'LO-01';
DELETE FROM local WHERE Codigo_inmueble = 'LO-02';

SELECT * FROM local WHERE Codigo_inmueble IN('LO-01', 'LO-02');

/* Propiedad */

SELECT * FROM propiedad;
SELECT * FROM propiedad WHERE codigo_de_compra IN('COMP-003', 'COMP-005');

UPDATE propiedad SET valor = 90000, fecha = '2023-10-17' WHERE codigo_de_compra = 'COMP-003';
UPDATE propiedad SET valor = 130000, fecha = '2023-10-21' WHERE codigo_de_compra = 'COMP-005';

SELECT * FROM propiedad WHERE codigo_de_compra IN('COMP-003', 'COMP-005');

DELETE FROM propiedad WHERE codigo_de_compra = 'COMP-007';
DELETE FROM propiedad WHERE codigo_de_compra = 'COMP-010';

SELECT * FROM propiedad WHERE codigo_de_compra IN('COMP-007', 'COMP-010');

/* Adquirir */

SELECT * FROM adquirir;
SELECT * FROM adquirir WHERE codigo_de_compra IN('COMP-002', 'COMP-005');

UPDATE adquirir SET Codigo_de_compra = 'COMP-004' WHERE Codigo_personal_cliente = 'C-5214' AND Codigo_de_compra = 'COMP-002';
UPDATE adquirir SET Codigo_de_compra = 'COMP-009' WHERE Codigo_personal_cliente = 'C-5216' AND Codigo_de_compra = 'COMP-005';

SELECT * FROM adquirir WHERE codigo_de_compra IN('COMP-004', 'COMP-009', 'COMP-002', 'COMP-005');

DELETE FROM adquirir WHERE Codigo_personal_cliente = 'C-5213' AND Codigo_de_compra = 'COMP-009';
DELETE FROM adquirir WHERE Codigo_personal_cliente = 'C-5214' AND Codigo_de_compra = 'COMP-004';

SELECT * FROM adquirir WHERE codigo_de_compra IN('COMP-009', 'COMP-007');

/* Alquiler */

SELECT * FROM alquirer;
SELECT * FROM alquirer WHERE ID IN('ALQ-004', 'ALQ-010');

UPDATE alquirer SET numero_alquiler = 7 WHERE ID = 'ALQ-004';
UPDATE alquirer SET numero_alquiler = 11 WHERE ID = 'ALQ-010';

SELECT * FROM alquirer WHERE ID IN('ALQ-004', 'ALQ-010');

DELETE FROM alquirer WHERE ID = 'ALQ-002';
DELETE FROM alquirer WHERE ID = 'ALQ-007';

SELECT * FROM alquirer WHERE ID IN('ALQ-002', 'ALQ-007');

/* Pago Alquiler */

SELECT * FROM pago_alquiler;
SELECT * FROM pago_alquiler WHERE IDAlquiler IN('ALQ-003', 'ALQ-004', 'ALQ-005');

UPDATE pago_alquiler SET valor_pago = 950.00, mes = 3, anio = 2024 WHERE IDAlquiler = 'ALQ-003';
UPDATE pago_alquiler SET valor_pago = 200.00 WHERE IDAlquiler = 'ALQ-004';
UPDATE pago_alquiler SET mes = -1 WHERE IDAlquiler = 'ALQ-005';
UPDATE pago_alquiler SET anio = 3000 WHERE IDAlquiler = 'ALQ-005';

SELECT * FROM pago_alquiler WHERE IDAlquiler IN('ALQ-003', 'ALQ-004', 'ALQ-005');

DELETE FROM pago_alquiler WHERE IDAlquiler = 'ALQ-003';
DELETE FROM pago_alquiler WHERE IDAlquiler = 'ALQ-004';

SELECT * FROM pago_alquiler WHERE IDAlquiler IN('ALQ-003', 'ALQ-004');