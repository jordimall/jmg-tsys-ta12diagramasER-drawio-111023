drop database if exists accidentesGeograficos;

create database if not exists accidentesGeograficos;

use accidentesGeograficos;

CREATE TABLE accidente_geografico (
    id_accidente INT AUTO_INCREMENT,
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
    id_localidad INT AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    extension DOUBLE,
    PRIMARY KEY (id_localidad)
);

CREATE TABLE montana (
    id_accidente INT,
    altura DOUBLE,
    FOREIGN KEY (id_accidente)
        REFERENCES accidente_geografico (id_accidente)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (id_accidente)
);

CREATE TABLE lago (
    id_accidente INT,
    extension DOUBLE,
    FOREIGN KEY (id_accidente)
        REFERENCES accidente_geografico (id_accidente)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (id_accidente)
);

CREATE TABLE rio (
    id_accidente INT,
    longitud DOUBLE,
    FOREIGN KEY (id_accidente)
        REFERENCES accidente_geografico (id_accidente)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (id_accidente)
);

CREATE TABLE ubicar (
    accidente INT,
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
    rio INT,
    localidad INT,
    FOREIGN KEY (rio)
        REFERENCES rio (id_accidente)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (localidad)
        REFERENCES localidad (id_localidad)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (rio , localidad)
);