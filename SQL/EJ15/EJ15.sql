DROP DATABASE if exists EJ15;

CREATE DATABASE EJ15;

USE EJ15;

CREATE TABLE plato (
    ID INT AUTO_INCREMENT,
    descripcio VARCHAR(500),
    nombre VARCHAR(100) not null,
    tipo VARCHAR(50) not null,
    PRIMARY KEY (ID)
);
CREATE TABLE menu (
    ID INT AUTO_INCREMENT,
    contarPersonas INT,
    PRIMARY KEY (ID)
);
CREATE TABLE componer (
    IDPlato INT,
    IDMenu INT,
    PRIMARY KEY (IDPlato , IDMenu),
    FOREIGN KEY (IDPlato)
        REFERENCES plato (ID)
        ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (IDMenu)
        REFERENCES menu (ID)
        ON UPDATE CASCADE ON DELETE CASCADE
);
CREATE TABLE dia (
    ID INT AUTO_INCREMENT,
    fecha DATE,
    temperatura DOUBLE,
    PRIMARY KEY (ID)
);
CREATE TABLE ofrecer (
    IDMenu INT,
    IDDia INT,
    cantidad INT,
    PRIMARY KEY (IDMenu , IDDia),
    FOREIGN KEY (IDMenu)
        REFERENCES menu (ID)
        ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (IDDia)
        REFERENCES dia (ID)
        ON UPDATE CASCADE ON DELETE CASCADE
);
