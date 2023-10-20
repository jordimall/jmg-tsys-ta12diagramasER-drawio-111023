drop database recetasCocina;

create database recetasCocina;

use recetasCocina;

CREATE TABLE receta (
    id_receta VARCHAR(20),
    nombre VARCHAR(50) NOT NULL,
    tipo VARCHAR(20),
    dificultad VARCHAR(10),
    PRIMARY KEY (id_receta)
);

CREATE TABLE paso (
    id_paso VARCHAR(20),
    descripcion VARCHAR(200) NOT NULL,
    PRIMARY KEY (id_paso)
);

CREATE TABLE utensilio (
    id_utensilio VARCHAR(20),
    nombre VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_utensilio)
);

CREATE TABLE tipo_ingrediente (
    id_tipo VARCHAR(20),
    nombre VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_tipo)
);

CREATE TABLE ingrediente (
    id_ingrediente VARCHAR(20),
    nombre VARCHAR(50) NOT NULL,
    tipo VARCHAR(20),
    FOREIGN KEY (tipo)
        REFERENCES tipo_ingrediente (id_tipo)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (id_ingrediente)
);

CREATE TABLE requerir (
    receta VARCHAR(20),
    paso VARCHAR(20),
    FOREIGN KEY (receta)
        REFERENCES receta (id_receta)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (paso)
        REFERENCES paso (id_paso)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (receta, paso)
);

CREATE TABLE utilizar (
    paso VARCHAR(20),
    utensilio VARCHAR(20),
    FOREIGN KEY (paso)
        REFERENCES paso (id_paso)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (utensilio)
        REFERENCES utensilio (id_utensilio)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (paso, utensilio)
);

CREATE TABLE necesitar (
    paso VARCHAR(20),
    ingrediente VARCHAR(20),
    tipo_medida VARCHAR(10),
    cantidad DOUBLE,
    FOREIGN KEY (paso)
        REFERENCES paso (id_paso)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ingrediente)
        REFERENCES ingrediente (id_ingrediente)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (paso, ingrediente)
);
