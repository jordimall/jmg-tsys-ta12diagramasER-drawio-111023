drop database if exists recetasCocina;

create database if not exists recetasCocina;

use recetasCocina;

CREATE TABLE receta (
    id_receta INT AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    tipo VARCHAR(20),
    dificultad VARCHAR(10),
    PRIMARY KEY (id_receta)
);

CREATE TABLE paso (
    id_paso INT AUTO_INCREMENT,
    descripcion VARCHAR(200) NOT NULL,
    PRIMARY KEY (id_paso)
);

CREATE TABLE utensilio (
    id_utensilio INT AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_utensilio)
);

CREATE TABLE tipo_ingrediente (
    id_tipo INT AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_tipo)
);

CREATE TABLE ingrediente (
    id_ingrediente INT AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    tipo INT,
    FOREIGN KEY (tipo)
        REFERENCES tipo_ingrediente (id_tipo)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (id_ingrediente)
);

CREATE TABLE requerir (
    receta INT,
    paso INT,
    FOREIGN KEY (receta)
        REFERENCES receta (id_receta)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (paso)
        REFERENCES paso (id_paso)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (receta , paso)
);

CREATE TABLE utilizar (
    paso INT,
    utensilio INT,
    FOREIGN KEY (paso)
        REFERENCES paso (id_paso)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (utensilio)
        REFERENCES utensilio (id_utensilio)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (paso , utensilio)
);

CREATE TABLE necesitar (
    paso INT,
    ingrediente INT,
    tipo_medida VARCHAR(10),
    cantidad DOUBLE,
    FOREIGN KEY (paso)
        REFERENCES paso (id_paso)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ingrediente)
        REFERENCES ingrediente (id_ingrediente)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (paso , ingrediente)
);
