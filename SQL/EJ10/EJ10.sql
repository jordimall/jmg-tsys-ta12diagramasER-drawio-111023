drop database if exists futbol;
create database if not exists futbol;
use futbol;

CREATE TABLE equipo (
    id_equipo INT AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    localidad VARCHAR(50),
    PRIMARY KEY (id_equipo)
);

CREATE TABLE jugador (
    ficha VARCHAR(20),
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50),
    equipo INT,
    FOREIGN KEY (equipo)
        REFERENCES equipo (id_equipo)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (ficha)
);

CREATE TABLE partido (
    id_partido INT AUTO_INCREMENT,
    estadio VARCHAR(50),
    hora TIME,
    fecha DATE,
    resultado VARCHAR(50),
    PRIMARY KEY (id_partido)
);

CREATE TABLE evento (
    id_evento INT AUTO_INCREMENT,
    tipo VARCHAR(20),
    PRIMARY KEY (id_evento)
);

CREATE TABLE provocar (
    jugador VARCHAR(20),
    evento INT,
    FOREIGN KEY (jugador)
        REFERENCES jugador (ficha)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (evento)
        REFERENCES evento (id_evento)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (jugador , evento)
);

CREATE TABLE ocurrir (
    evento INT,
    partido INT,
    minuto TIME,
    FOREIGN KEY (evento)
        REFERENCES evento (id_evento)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (partido)
        REFERENCES partido (id_partido)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (evento , partido)
);

CREATE TABLE participar (
    equipo INT,
    partido INT,
    FOREIGN KEY (equipo)
        REFERENCES equipo (id_equipo)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (partido)
        REFERENCES partido (id_partido)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (equipo , partido)
);