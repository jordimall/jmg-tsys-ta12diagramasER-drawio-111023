drop database organigrama;

create database organigrama;

use organigrama;

CREATE TABLE empleado (
    DNI VARCHAR(9),
    nombre VARCHAR(20) not null,
    apellidos VARCHAR(40),
    direccion VARCHAR(50),
    num_SS VARCHAR(12),
    codigo_trabajador VARCHAR(20) not null unique,
    telefono VARCHAR(9),
    jefe VARCHAR(9),
    FOREIGN KEY (jefe)
        REFERENCES empleado (DNI)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (DNI)
);

CREATE TABLE departamento (
    ID_departamento int auto_increment,
    nombre VARCHAR(20) not null,
    coordinador VARCHAR(9),
    FOREIGN KEY (coordinador)
        REFERENCES empleado (DNI)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (ID_departamento)
);

CREATE TABLE contrato (
    ID_contrato int auto_increment,
    categoria VARCHAR(20),
    fecha_inicio date,
    fecha_final date,
    empleado VARCHAR(9),
    FOREIGN KEY (empleado)
        REFERENCES empleado (DNI)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (ID_contrato)
);

CREATE TABLE nomina (
    ID_nomina int auto_increment,
    fecha date,
    salario int,
    contrato int,
    FOREIGN KEY (contrato)
        REFERENCES contrato (ID_contrato)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (ID_nomina)
);

CREATE TABLE trabaja (
    empleado varchar(9),
    departamento int,
    FOREIGN KEY (empleado)
        REFERENCES empleado (DNI)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (departamento)
        REFERENCES departamento (ID_departamento)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (empleado, departamento)
);