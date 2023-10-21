drop database if exists organigrama;

create database if not exists organigrama;

use organigrama;

CREATE TABLE empleado (
    dni VARCHAR(9),
    nombre VARCHAR(20) NOT NULL,
    apellidos VARCHAR(40),
    direccion VARCHAR(50),
    num_SS VARCHAR(12),
    codigo_trabajador VARCHAR(20) NOT NULL UNIQUE,
    telefono VARCHAR(9),
    jefe VARCHAR(9),
    FOREIGN KEY (jefe)
        REFERENCES empleado (dni)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (dni)
);

CREATE TABLE departamento (
    id_departamento INT AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    coordinador VARCHAR(9),
    FOREIGN KEY (coordinador)
        REFERENCES empleado (dni)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (id_departamento)
);

CREATE TABLE contrato (
    id_contrato INT AUTO_INCREMENT,
    categoria VARCHAR(50),
    fecha_inicio DATE,
    fecha_final DATE,
    empleado VARCHAR(9),
    FOREIGN KEY (empleado)
        REFERENCES empleado (dni)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (id_contrato)
);

CREATE TABLE nomina (
    id_nomina INT AUTO_INCREMENT,
    fecha DATE,
    salario INT,
    contrato INT,
    FOREIGN KEY (contrato)
        REFERENCES contrato (id_contrato)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (id_nomina)
);

CREATE TABLE trabaja (
    empleado VARCHAR(9),
    departamento INT,
    FOREIGN KEY (empleado)
        REFERENCES empleado (dni)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (departamento)
        REFERENCES departamento (id_departamento)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (empleado , departamento)
);