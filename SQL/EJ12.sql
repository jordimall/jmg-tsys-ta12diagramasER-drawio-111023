CREATE DATABASE EJ12;
USE EJ12;

CREATE TABLE empresa (
    CIF VARCHAR(9),
    nombre VARCHAR(20) NOT NULL,
    telefono VARCHAR(9),
    direccion VARCHAR(20),
    codigo_interno VARCHAR(20) UNIQUE,
    PRIMARY KEY (CIF)
);

CREATE TABLE proyecto (
    ID VARCHAR(10),
    fecha_inicio DATE NOT NULL,
    fecha_prevista DATE NOT NULL,
    fecha_real DATE,
    cliente VARCHAR(9),
    PRIMARY KEY (ID),
    FOREIGN KEY (cliente)
        REFERENCES empresa (CIF)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE profesion (
    Codigo INT AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    estado BOOLEAN DEFAULT FALSE,
    PRIMARY KEY (Codigo)
);

CREATE TABLE trabajador (
    DNI VARCHAR(9),
    nombre VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100),
    codigo_trabajador VARCHAR(50) NOT NULL UNIQUE,
    PRIMARY KEY (DNI)
);

CREATE TABLE desempenar (
    ProyectoId VARCHAR(10),
    ProfesionCodigo INT,
    TrabajadorDNI VARCHAR(9),
    horas_trabajadas DOUBLE,
    PRIMARY KEY (ProyectoId , ProfesionCodigo , TrabajadorDNI),
    FOREIGN KEY (ProyectoId)
        REFERENCES proyecto (ID)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ProfesionCodigo)
        REFERENCES profesion (Codigo)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (TrabajadorDNI)
        REFERENCES trabajador (DNI)
        ON DELETE CASCADE ON UPDATE CASCADE
);