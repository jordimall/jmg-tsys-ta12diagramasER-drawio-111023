INSERT INTO persona (dni, codigo_socio, direccion, nombre, telefono)
VALUES ('123456789', 'CS003', 'Calle Secundaria 789', 'Juan Pérez', 666890234);
INSERT INTO persona (dni, codigo_socio, direccion, nombre, telefono)
VALUES ('012345678', 'CS004', 'Avenida Diagonal 1011', 'Ana García', 777901234);
INSERT INTO persona (dni, codigo_socio, direccion, nombre, telefono)
VALUES ('999876543', 'CS005', 'Calle Sin Nombre 1234', 'Pedro López', 888912345);
INSERT INTO persona (dni, codigo_socio, direccion, nombre, telefono)
VALUES ('888765432', 'CS006', 'Avenida del Mar 5678', 'Luisa Sánchez', 999923456);
INSERT INTO persona (dni, codigo_socio, direccion, nombre, telefono)
VALUES ('777654321', 'CS007', 'Calle de la Paz 9012', 'David Martínez', 111934567);
INSERT INTO persona (dni, codigo_socio, direccion, nombre, telefono)
VALUES ('666543210', 'CS008', 'Avenida de la Luz 1345', 'Carmen Gómez', 222945678);
INSERT INTO persona (dni, codigo_socio, direccion, nombre, telefono)
VALUES ('555432100', 'CS009', 'Calle de la Luna 1456', 'José Fernández', 333956789);
INSERT INTO persona (dni, codigo_socio, direccion, nombre, telefono)
VALUES ('444432100', 'CS010', 'Avenida del Sol 1567', 'María José González', 444967890);
INSERT INTO persona (dni, codigo_socio, direccion, nombre, telefono)
VALUES ('333432100', 'CS011', 'Calle de las Estrellas 1678', 'Juan Antonio Pérez', 555978901);


INSERT INTO volumen (id, estado)
VALUES ('VOL002', 3);
INSERT INTO volumen (id, estado)
VALUES ('VOL003', 4);
INSERT INTO volumen (id, estado)
VALUES ('VOL004', 5);
INSERT INTO volumen (id, estado)
VALUES ('VOL005', 1);
INSERT INTO volumen (id, estado)
VALUES ('VOL006', 2);
INSERT INTO volumen (id, estado)
VALUES ('VOL007', 3);
INSERT INTO volumen (id, estado)
VALUES ('VOL008', 4);
INSERT INTO volumen (id, estado)
VALUES ('VOL009', 5);
INSERT INTO volumen (id, estado)
VALUES ('VOL010', 1);


INSERT INTO libro (isbn, editorial, any_escritura, autor, titulo, any_edicion, ref_volumen)
VALUES ('978-84-322-1316-1', 'Ediciones Destino', 1942, 'Ernest Hemingway', 'For Whom the Bell Tolls', 1962, 'VOL003');
INSERT INTO libro (isbn, editorial, any_escritura, autor, titulo, any_edicion, ref_volumen)
VALUES ('978-84-322-1316-2', 'Penguin Classics', 1899, 'Oscar Wilde', 'The Picture of Dorian Gray', 1998, 'VOL004');
INSERT INTO libro (isbn, editorial, any_escritura, autor, titulo, any_edicion, ref_volumen)
VALUES ('978-84-322-1316-3', 'Alfaguara', 1952, 'Gabriel García Márquez', 'Cien años de soledad', 2012, 'VOL005');
INSERT INTO libro (isbn, editorial, any_escritura, autor, titulo, any_edicion, ref_volumen)
VALUES ('978-84-322-1316-4', 'Penguin Classics', 1960, 'Harper Lee', 'To Kill a Mockingbird', 2002, 'VOL006');
INSERT INTO libro (isbn, editorial, any_escritura, autor, titulo, any_edicion, ref_volumen)
VALUES ('978-84-322-1316-5', 'Tusquets Editores', 1962, 'Julio Cortázar', 'Rayuela', 2015, 'VOL007');
INSERT INTO libro (isbn, editorial, any_escritura, autor, titulo, any_edicion, ref_volumen)
VALUES ('978-84-322-1316-6', 'Random House', 1973, 'Michael Crichton', 'Jurassic Park', 1990, 'VOL008');
INSERT INTO libro (isbn, editorial, any_escritura, autor, titulo, any_edicion, ref_volumen)
VALUES ('978-84-322-1316-7', 'Ediciones Destino', 1984, 'George R.R. Martin', 'A Game of Thrones', 2002, 'VOL009');
INSERT INTO libro (isbn, editorial, any_escritura, autor, titulo, any_edicion, ref_volumen)
VALUES ('978-84-322-1316-8', 'HarperCollins', 1997, 'J.K. Rowling', 'Harry Potter and the Sorcerer''s Stone', 2001, 'VOL010');
INSERT INTO libro (isbn, editorial, any_escritura, autor, titulo, any_edicion, ref_volumen)
VALUES ('978-84-322-1316-9', 'Anagrama', 2005, 'Orhan Pamuk', 'My Name Is Red', 2006, 'VOL002');


INSERT INTO prestamo (id, fecha_inicio, fecha_final_prestamo, fecha_real_entrega, ref_persona, isbn)
VALUES ('PR002', '2023-10-20', '2023-10-27', '2023-10-29', '123456789', '978-84-322-1316-1');
INSERT INTO prestamo (id, fecha_inicio, fecha_final_prestamo, fecha_real_entrega, ref_persona, isbn)
VALUES ('PR003', '2023-10-21', '2023-10-28', '2023-10-30', '012345678', '978-84-322-1316-2');
INSERT INTO prestamo (id, fecha_inicio, fecha_final_prestamo, fecha_real_entrega, ref_persona, isbn)
VALUES ('PR004', '2023-10-22', '2023-10-29', '2023-11-28', '999876543', '978-84-322-1316-3');
INSERT INTO prestamo (id, fecha_inicio, fecha_final_prestamo, fecha_real_entrega, ref_persona, isbn)
VALUES ('PR005', '2023-10-23', '2023-10-30', '2023-11-29', '888765432', '978-84-322-1316-5');
INSERT INTO prestamo (id, fecha_inicio, fecha_final_prestamo, fecha_real_entrega, ref_persona, isbn)
VALUES ('PR006', '2023-10-24', '2023-10-31', '2023-11-30', '777654321', '978-84-322-1316-6');
INSERT INTO prestamo (id, fecha_inicio, fecha_final_prestamo, fecha_real_entrega, ref_persona, isbn)
VALUES ('PR007', '2023-10-25', '2023-11-01', '2023-12-31', '666543210', '978-84-322-1316-7');
INSERT INTO prestamo (id, fecha_inicio, fecha_final_prestamo, fecha_real_entrega, ref_persona, isbn)
VALUES ('PR008', '2023-10-26', '2023-11-02', '2023-12-01', '555432100', '978-84-322-1316-8');
INSERT INTO prestamo (id, fecha_inicio, fecha_final_prestamo, fecha_real_entrega, ref_persona, isbn)
VALUES ('PR009', '2023-10-27', '2023-11-03', '2023-12-02', '444432100', '978-84-322-1316-9');
INSERT INTO prestamo (id, fecha_inicio, fecha_final_prestamo, fecha_real_entrega, ref_persona, isbn)
VALUES ('PR010', '2023-10-28', '2023-11-03', '2023-12-02', '333432100', '978-84-322-1316-4');


-- Actualizar el nombre y la dirección de una persona con DNI '123456789'
UPDATE persona
SET nombre = 'Luisa Sánchez', direccion = 'Calle nueva'
WHERE dni = '123456789';

-- Buscar todas las personas con el nombre 'Juan Pérez'
SELECT * FROM persona
WHERE nombre = 'Luisa Sánchez';

-- Borrar la persona con DNI '123456789'
DELETE FROM persona
WHERE dni = '123456789';

-- Actualizar el estado de un volumen con ID 'VOL002' al estado 6
UPDATE volumen
SET estado = 6
WHERE id = 'VOL002';

-- Buscar el dato actuliazado
SELECT * FROM volumen
WHERE id = 'VOL002';

-- Borrar el volumen con ID 'VOL002'
DELETE FROM volumen
WHERE id = 'VOL002';