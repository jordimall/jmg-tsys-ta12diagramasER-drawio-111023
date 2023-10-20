INSERT INTO empresa (cif, nombre, direccion, telefono) VALUES
('E00123456', 'Empresa 1', 'Calle Principal 123', 123456789),
('E00987654', 'Empresa 2', 'Avenida Central 456', 987654321),
('E00321456', 'Empresa 3', 'Calle Comercial 789', 654321789),
('E00456789', 'Empresa 4', 'Avenida Industrial 101', 123456987),
('E00543210', 'Empresa 5', 'Calle Residencial 246', 987123654),
('E00678901', 'Empresa 6', 'Avenida Moderna 135', 321654987),
('E00798765', 'Empresa 7', 'Calle Tranquila 357', 456789321),
('E00812345', 'Empresa 8', 'Avenida Rural 579', 321987654),
('E00234567', 'Empresa 9', 'Calle Urbana 753', 654987321),
('E01065432', 'Empresa 10', 'Avenida Exclusiva 987', 789321654);

INSERT INTO alumno (dni, nombre, direccion, edad, telefono, trabaja) VALUES
('A123456789', 'Alumno 1', 'Calle Estudiosa 12', 18, 123456789, 'E00123456'),
('A987654321', 'Alumno 2', 'Avenida Científica 34', 20, 987654321, 'E00987654'),
('A654321789', 'Alumno 3', 'Calle Académica 56', 21, 654321789, 'E00321456'),
('A456789123', 'Alumno 4', 'Avenida Investigadora 78', 19, 123456987, 'E00456789'),
('A987123654', 'Alumno 5', 'Calle Innovadora 90', 22, 987123654, 'E00543210'),
('A321654987', 'Alumno 6', 'Avenida Creativa 14', 20, 321654987, 'E00678901'),
('A456789321', 'Alumno 7', 'Calle Tecnológica 36', 19, 456789321, 'E00798765'),
('A321987654', 'Alumno 8', 'Avenida Emprendedora 58', 21, 321987654, 'E00812345'),
('A654987321', 'Alumno 9', 'Calle Empresarial 70', 23, 654987321, 'E00234567'),
('A789321654', 'Alumno 10', 'Avenida Exitosa 92', 20, 789321654, 'E01065432');


INSERT INTO profesor (dni, nombre, apellido, direccion, telefono) VALUES
('P123456789', 'Profesor 1', 'Apellido 1', 'Calle Docente 12', 123456789),
('P987654321', 'Profesor 2', 'Apellido 2', 'Avenida Educativa 34', 987654321),
('P654321789', 'Profesor 3', 'Apellido 3', 'Calle Académica 56', 654321789),
('P456789123', 'Profesor 4', 'Apellido 4', 'Avenida Didáctica 78', 123456987),
('P987123654', 'Profesor 5', 'Apellido 5', 'Calle Pedagógica 90', 987123654),
('P321654987', 'Profesor 6', 'Apellido 6', 'Avenida Maestro 14', 321654987),
('P456789321', 'Profesor 7', 'Apellido 7', 'Calle Catedrático 36', 456789321),
('P321987654', 'Profesor 8', 'Apellido 8', 'Avenida Maestro 58', 321987654),
('P654987321', 'Profesor 9', 'Apellido 9', 'Calle Doctor 70', 654987321),
('P789321654', 'Profesor 10', 'Apellido 10', 'Avenida Investigador 92', 789321654);


INSERT INTO curso (codigo_curso, fecha_inicio, fecha_final, duracion, programa, titulo, profesor_curso) VALUES
('C001', '2023-01-10', '2023-03-15', 45, 'Programa 1', 'Curso 1', 'P123456789'),
('C002', '2023-02-15', '2023-04-20', 55, 'Programa 2', 'Curso 2', 'P987654321'),
('C003', '2023-03-20', '2023-05-25', 60, 'Programa 3', 'Curso 3', 'P654321789'),
('C004', '2023-04-25', '2023-06-30', 65, 'Programa 4', 'Curso 4', 'P456789123'),
('C005', '2023-05-30', '2023-07-05', 36, 'Programa 5', 'Curso 5', 'P987123654'),
('C006', '2023-06-05', '2023-08-10', 66, 'Programa 6', 'Curso 6', 'P321654987'),
('C007', '2023-07-10', '2023-09-15', 67, 'Programa 7', 'Curso 7', 'P456789321'),
('C008', '2023-08-15', '2023-10-20', 66, 'Programa 8', 'Curso 8', 'P321987654'),
('C009', '2023-09-20', '2023-11-25', 66, 'Programa 9', 'Curso 9', 'P654987321'),
('C010', '2023-10-25', '2023-12-30', 66, 'Programa 10', 'Curso 10', 'P789321654');


INSERT INTO asistir (alumno, curso, nota) VALUES
('A123456789', 'C001', 8.5),
('A987654321', 'C002', 7.8),
('A654321789', 'C003', 9.0),
('A456789123', 'C004', 8.2),
('A987123654', 'C005', 7.5),
('A321654987', 'C006', 9.3),
('A456789321', 'C007', 8.0),
('A321987654', 'C008', 7.7),
('A654987321', 'C009', 8.9),
('A789321654', 'C010', 7.0);

-- Actualizar el nombre y la dirección de la empresa con CIF 'E00123456'
UPDATE empresa
SET nombre = 'Nuevo Nombre Empresa', direccion = 'Nueva Dirección Empresa'
WHERE cif = 'E00123456';

-- Actualizar el nombre y la dirección del alumno con DNI 'A123456789'
UPDATE alumno
SET nombre = 'Nuevo Nombre Alumno', direccion = 'Nueva Dirección Alumno'
WHERE dni = 'A123456789';

-- Buscar todos los cursos con el título 'Curso 1'
SELECT * FROM curso
WHERE titulo = 'Curso 1';

-- Buscar todos los préstamos realizados por la persona con DNI 'A123456789'
SELECT * FROM asistir
WHERE alumno = 'A123456789';

-- Borrar el curso con código 'C001'
DELETE FROM curso
WHERE codigo_curso = 'C001';

-- Borrar la empresa con CIF 'E00123456'
DELETE FROM profesor
WHERE nombre = 'Profesor 1';