drop database if exists EJ17;

create database EJ17;

use EJ17;

CREATE TABLE aula (
    nombreAula VARCHAR(50),
    codigoAula INT,
    metro DOUBLE,
    PRIMARY KEY (nombreAula , codigoAula)
);
CREATE TABLE horario (
    ID INT AUTO_INCREMENT,
    dia DATE NOT NULL,
    hora VARCHAR(50) NOT NULL,
    PRIMARY KEY (ID)
);
CREATE TABLE ocupar (
    nombreAula VARCHAR(50),
    codigoAula INT,
    IDHorario INT,
    PRIMARY KEY (nombreAula , codigoAula , IDHorario),
    FOREIGN KEY (nombreAula , codigoAula)
        REFERENCES aula (nombreAula , codigoAula)
        ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (IDHorario)
        REFERENCES horario (ID)
        ON UPDATE CASCADE ON DELETE CASCADE
);
CREATE TABLE assignatura (
    codigoInterno VARCHAR(50),
    codigoEuropeo VARCHAR(50),
    nombre VARCHAR(50) NOT NULL,
    PRIMARY KEY (codigoInterno)
);
CREATE TABLE requiere (
    codigoInternoAssignatura VARCHAR(50),
    codigoInternoAssignaturaRequerida VARCHAR(50),
    PRIMARY KEY (codigoInternoAssignatura , codigoInternoAssignaturaRequerida),
    FOREIGN KEY (codigoInternoAssignatura)
        REFERENCES assignatura (codigoInterno)
        ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (codigoInternoAssignaturaRequerida)
        REFERENCES assignatura (codigoInterno)
        ON UPDATE CASCADE ON DELETE CASCADE
);
CREATE TABLE ciclo (
    codigoInterno INT AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    PRIMARY KEY (codigoInterno)
);
CREATE TABLE pertenecer (
    codigoInternoAssignatura VARCHAR(50),
    codigoInternoCiclo INT,
    PRIMARY KEY (codigoInternoAssignatura , codigoInternoCiclo),
    FOREIGN KEY (codigoInternoAssignatura)
        REFERENCES assignatura (codigoInterno)
        ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (codigoInternoCiclo)
        REFERENCES ciclo (codigoInterno)
        ON UPDATE CASCADE ON DELETE CASCADE
);
CREATE TABLE profesor (
    numSeguridadSocial VARCHAR(50),
    tiempoTutor DOUBLE DEFAULT 0,
    antiguedad INT DEFAULT 0,
    codigoInterno VARCHAR(20),
    codigoInternoAssignatura VARCHAR(50),
    PRIMARY KEY (numSeguridadSocial),
    FOREIGN KEY (codigoInternoAssignatura)
        REFERENCES assignatura (codigoInterno)
        ON UPDATE CASCADE ON DELETE CASCADE
);
CREATE TABLE infoLaboralInterna (
    ID INT AUTO_INCREMENT,
    fechaInicio DATE NOT NULL,
    fechaFin DATE,
    IDProfesor VARCHAR(50),
    PRIMARY KEY (ID),
    FOREIGN KEY (IDProfesor)
        REFERENCES profesor (numSeguridadSocial)
        ON UPDATE CASCADE ON DELETE CASCADE
);
CREATE TABLE infoProfesorN (
    DNI VARCHAR(9),
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(100),
    telefono VARCHAR(9),
    email VARCHAR(100),
    IDProfesor VARCHAR(50),
    PRIMARY KEY (DNI),
    FOREIGN KEY (IDProfesor)
        REFERENCES profesor (numSeguridadSocial)
        ON UPDATE CASCADE ON DELETE CASCADE
);
CREATE TABLE asignar (
    IDHorario INT,
    IDProfesor VARCHAR(50),
    PRIMARY KEY (IDHorario , IDProfesor),
    FOREIGN KEY (IDHorario)
        REFERENCES horario (ID)
        ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (IDProfesor)
        REFERENCES profesor (numSeguridadSocial)
        ON UPDATE CASCADE ON DELETE CASCADE
);
CREATE TABLE curso (
    ID INT AUTO_INCREMENT,
    nombre VARCHAR(200) NOT NULL,
    anio VARCHAR(100) NOT NULL,
    codigoInternoCiclo INT,
    PRIMARY KEY (ID),
    FOREIGN KEY (codigoInternoCiclo)
        REFERENCES ciclo (codigoInterno)
        ON UPDATE CASCADE ON DELETE CASCADE
);
CREATE TABLE tutorizar (
    IDCurso INT,
    IDProfesor VARCHAR(50),
    PRIMARY KEY (IDCurso , IDProfesor),
    FOREIGN KEY (IDCurso)
        REFERENCES curso (ID),
    FOREIGN KEY (IDProfesor)
        REFERENCES profesor (numSeguridadSocial)
        ON UPDATE CASCADE ON DELETE CASCADE
);
