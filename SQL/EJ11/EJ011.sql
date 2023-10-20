drop database accidentesGeograficos;

create database accidentesGeograficos;

use accidentesGeograficos;

CREATE TABLE accidente_geografico (
    id_accidente VARCHAR(20),
    nombre VARCHAR(50) NOT NULL,
    eje_horizontal DOUBLE,
    eje_vertical DOUBLE,
    PRIMARY KEY (id_accidente)
);

CREATE TABLE pais (
    nombre VARCHAR(50),
    poblacion DOUBLE,
    extension DOUBLE,
    PRIMARY KEY (nombre)
);

CREATE TABLE localidad (
    id_localidad VARCHAR(20),
    nombre VARCHAR(50) NOT NULL,
    extension DOUBLE,
    PRIMARY KEY (id_localidad)
);

CREATE TABLE montana (
    id_accidente VARCHAR(20),
    altura DOUBLE,
    FOREIGN KEY (id_accidente)
        REFERENCES accidente_geografico (id_accidente)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (id_accidente)
);

CREATE TABLE lago (
    id_accidente VARCHAR(20),
    extension DOUBLE,
    FOREIGN KEY (id_accidente)
        REFERENCES accidente_geografico (id_accidente)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (id_accidente)
);

CREATE TABLE rio (
    id_accidente VARCHAR(20),
    longitud DOUBLE,
    FOREIGN KEY (id_accidente)
        REFERENCES accidente_geografico (id_accidente)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (id_accidente)
);

CREATE TABLE ubicar (
    accidente VARCHAR(20),
    pais VARCHAR(50),
    FOREIGN KEY (accidente)
        REFERENCES accidente_geografico (id_accidente)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (pais)
        REFERENCES pais (nombre)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (accidente , pais)
);

CREATE TABLE transcurrir (
    rio VARCHAR(20),
    localidad VARCHAR(20),
    FOREIGN KEY (rio)
        REFERENCES rio (id_accidente)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (localidad)
        REFERENCES localidad (id_localidad)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (rio , localidad)
);