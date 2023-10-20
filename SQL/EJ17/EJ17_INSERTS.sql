use EJ17;

/* aula */

INSERT INTO aula (nombreAula, codigoAula, metro) VALUES
('Aula1', 1, 35.5),
('Aula2', 2, 40.0),
('Aula3', 3, 45.5),
('Aula4', 4, 50.0),
('Aula5', 5, 55.5),
('Aula6', 6, 60.0),
('Aula7', 7, 65.5),
('Aula8', 8, 70.0),
('Aula9', 9, 75.5),
('Aula10', 10, 80.0);

/* horario */

INSERT INTO horario (dia, hora) VALUES
('2023-10-20', '08:00'),
('2023-10-20', '09:00'),
('2023-10-20', '10:00'),
('2023-10-20', '11:00'),
('2023-10-20', '12:00'),
('2023-10-20', '13:00'),
('2023-10-20', '14:00'),
('2023-10-20', '15:00'),
('2023-10-20', '16:00'),
('2023-10-20', '17:00');

/*ocupar*/

INSERT INTO ocupar (nombreAula, codigoAula, IDHorario) VALUES
('Aula1', 1, 1),
('Aula2', 2, 2),
('Aula3', 3, 3),
('Aula4', 4, 4),
('Aula5', 5, 5),
('Aula6', 6, 6),
('Aula7', 7, 7),
('Aula8', 8, 8),
('Aula9', 9, 9),
('Aula10', 10, 10);

/* assignatura */

INSERT INTO assignatura (codigoInterno, codigoEuropeo, nombre) VALUES
('INT1', 'EU1', 'Matemáticas'),
('INT2', 'EU2', 'Física'),
('INT3', 'EU3', 'Química'),
('INT4', 'EU4', 'Biología'),
('INT5', 'EU5', 'Informática'),
('INT6', 'EU6', 'Historia'),
('INT7', 'EU7', 'Geografía'),
('INT8', 'EU8', 'Filosofía'),
('INT9', 'EU9', 'Arte'),
('INT10', 'EU10', 'Música');

/* requiere */

INSERT INTO requiere (codigoInternoAssignatura, codigoInternoAssignaturaRequerida) VALUES
('INT1', 'INT2'),
('INT2', 'INT3'),
('INT3', 'INT4'),
('INT4', 'INT5'),
('INT5', 'INT6'),
('INT6', 'INT7'),
('INT7', 'INT8'),
('INT8', 'INT9'),
('INT9', 'INT10'),
('INT10', 'INT1');

/* ciclo */

INSERT INTO ciclo (nombre) VALUES
('Ciclo1'),
('Ciclo2'),
('Ciclo3'),
('Ciclo4'),
('Ciclo5'),
('Ciclo6'),
('Ciclo7'),
('Ciclo8'),
('Ciclo9'),
('Ciclo10');

/* pertenecer */

INSERT INTO pertenecer (codigoInternoAssignatura, codigoInternoCiclo) VALUES
('INT1', 1),
('INT2', 2),
('INT3', 3),
('INT4', 4),
('INT5', 5),
('INT6', 6),
('INT7', 7),
('INT8', 8),
('INT9', 9),
('INT10', 10);

 /* profesor */
 
INSERT INTO profesor (numSeguridadSocial, tiempoTutor, antiguedad, codigoInterno, codigoInternoAssignatura) VALUES
('SS1', 10.0, 5, 'PROF1', 'INT1'),
('SS2', 15.0, 10, 'PROF2', 'INT2'),
('SS3', 20.0, 15, 'PROF3', 'INT3'),
('SS4', 25.0, 20, 'PROF4', 'INT4'),
('SS5', 30.0, 25, 'PROF5', 'INT5'),
('SS6', 35.0, 30, 'PROF6', 'INT6'),
('SS7', 40.0, 35, 'PROF7', 'INT7'),
('SS8', 45.0, 40, 'PROF8', 'INT8'),
('SS9', 50.0, 45, 'PROF9', 'INT9'),
('SS10', 55.0, 50, 'PROF10', 'INT10');

/* infoLaboralInterna */

INSERT INTO infoLaboralInterna (fechaInicio, fechaFin, IDProfesor) VALUES
('2023-01-01', NULL, 'SS1'),
('2023-02-01', NULL, 'SS2'),
('2023-03-01', NULL, 'SS3'),
('2023-04-01', NULL, 'SS4'),
('2023-05-01', NULL, 'SS5'),
('2023-06-01', NULL, 'SS6'),
('2023-07-01', NULL, 'SS7'),
('2023-08-01', NULL, 'SS8'),
('2023-09-01', NULL, 'SS9'),
('2023-10-01', NULL, 'SS10');

/* infoProfesorN */

INSERT INTO infoProfesorN (DNI, nombre, apellido, telefono, email, IDProfesor) VALUES
('12345678A', 'Juan', 'Pérez', '123456789', 'juan.perez@example.com', 'SS1'),
('23456789B', 'Ana', 'Gómez', '234567890', 'ana.gomez@example.com', 'SS2'),
('34567890C', 'Pedro', 'Martínez', '345678901', 'pedro.martinez@example.com', 'SS3'),
('45678901D', 'María', 'Rodríguez', '456789012', 'maria.rodriguez@example.com', 'SS4'),
('56789012E', 'Luis', 'García', '567890123', 'luis.garcia@example.com', 'SS5'),
('67890123F', 'Carmen', 'López', '678901234', 'carmen.lopez@example.com', 'SS6'),
('78901234G', 'Manuel', 'Torres', '789012345', 'manuel.torres@example.com', 'SS7'),
('89012345H', 'Teresa', 'Sánchez', '890123456', 'teresa.sanchez@example.com', 'SS8'),
('90123456I', 'José', 'Aguilar', '901234567', 'jose.aguilar@example.com', 'SS9'),
('01234567J', 'Laura', 'Ramírez', '012345678', 'laura.ramirez@example.com', 'SS10');

/* asignar */

INSERT INTO asignar (IDHorario, IDProfesor) VALUES
(1, 'SS1'),
(2, 'SS2'),
(3, 'SS3'),
(4, 'SS4'),
(5, 'SS5'),
(6, 'SS6'),
(7, 'SS7'),
(8, 'SS8'),
(9, 'SS9'),
(10, 'SS10');

/* curso */

INSERT INTO curso (nombre, anio, codigoInternoCiclo) VALUES
('Curso1','2023-2024' ,1),
('Curso2','2023-2024' ,2),
('Curso3','2023-2024' ,3),
('Curso4','2023-2024' ,4),
('Curso5','2023-2024' ,5),
('Curso6','2023-2024' ,6),
('Curso7','2023-2024' ,7),
('Curso8','2023-2024' ,8),
('Curso9','2023-2024' ,9),
('Curso10','2023-2024' ,10);

/* tutorizar */

INSERT INTO tutorizar (IDCurso, IDProfesor) VALUES
(1, 'SS1'),
(2, 'SS2'),
(3, 'SS3'),
(4, 'SS4'),
(5, 'SS5'),
(6, 'SS6'),
(7, 'SS7'),
(8, 'SS8'),
(9, 'SS9'),
(10, 'SS10');

/* SELECT */

SELECT * FROM aula;
SELECT * FROM horario;
SELECT * FROM assignatura;

/* UPDATE */

UPDATE aula SET metro = 40.0 WHERE nombreAula = 'Aula1';
UPDATE horario SET hora = '09:00' WHERE ID = 1;
UPDATE assignatura SET nombre = 'Calculo' WHERE codigoInterno = 'INT1';

/* DELETE */

DELETE FROM aula WHERE nombreAula = 'Aula10';
DELETE FROM horario WHERE ID = 10;
DELETE FROM assignatura WHERE codigoInterno = 'INT10';
