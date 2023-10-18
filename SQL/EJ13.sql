CREATE DATABASE EJ13;

USE EJ13;

CREATE TABLE empleado (
    DNI VARCHAR(9),
    nombre VARCHAR(20) NOT NULL,
    apellido VARCHAR(100),
    telefonoFijo VARCHAR(9),
    telefonoMovil VARCHAR(9),
    numSeguridadSocial VARCHAR(20) NOT NULL,
    PRIMARY KEY (DNI)
);

CREATE TABLE pinche (
    DNI VARCHAR(9),
    fecha_nacimiento DATE,
    FOREIGN KEY (DNI)
        REFERENCES empleado (DNI)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (DNI)
);

CREATE TABLE cocinero (
    DNI VARCHAR(9),
    aniosServicio INT,
    PRIMARY KEY (DNI),
    FOREIGN KEY (DNI)
        REFERENCES empleado (DNI)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE ayudar (
    DNICocinero VARCHAR(9),
    DNIPinche VARCHAR(9),
    PRIMARY KEY (DNICocinero , DNIPinche),
    FOREIGN KEY (DNICocinero)
        REFERENCES cocinero (DNI)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (DNIPinche)
        REFERENCES pinche (DNI)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE plato (
    ID INT,
    precio DOUBLE NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(200),
    PRIMARY KEY (ID)
);

CREATE TABLE preparar (
    DNICocinero VARCHAR(9),
    IDPlato INT,
    PRIMARY KEY (DNICocinero , IDPlato),
    FOREIGN KEY (DNICocinero)
        REFERENCES cocinero (DNI)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (IDPlato)
        REFERENCES plato (ID)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE almacen (
    NumAlmacen INT AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(500),
    PRIMARY KEY (NumAlmacen)
);

CREATE TABLE estante (
    ID INT AUTO_INCREMENT,
    identificador INT,
    tamanio DOUBLE,
    NumAlmacen INT,
    PRIMARY KEY (ID),
    FOREIGN KEY (NumAlmacen)
        REFERENCES almacen (NumAlmacen)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE ingrediente (
    ID INT AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    totalIngredientes DOUBLE NOT NULL DEFAULT 0,
    IDEstanteria INT,
    PRIMARY KEY (ID),
    FOREIGN KEY (IDEstanteria)
        REFERENCES estante (ID)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE necesitar (
    IDPlato INT,
    IDIngrediente INT,
    PRIMARY KEY (IDPlato , IDIngrediente),
    FOREIGN KEY (IDPlato)
        REFERENCES plato (ID)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (IDIngrediente)
        REFERENCES ingrediente (ID)
        ON DELETE CASCADE ON UPDATE CASCADE
);