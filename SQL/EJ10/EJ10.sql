drop database futbol;
create database futbol;
use futbol;

CREATE TABLE equipo (
    id_equipo VARCHAR(20),
    nombre VARCHAR(50) NOT NULL,
    localidad VARCHAR(50),
    PRIMARY KEY (id_equipo)
);

CREATE TABLE jugador (
    ficha VARCHAR(20),
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50),
    equipo VARCHAR(20),
    FOREIGN KEY (equipo)
        REFERENCES equipo (id_equipo)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (ficha)
);

CREATE TABLE partido (
    id_partido VARCHAR(20),
    estadio VARCHAR(50),
    hora TIME,
    fecha DATE,
    resultado VARCHAR(50),
    PRIMARY KEY (id_partido)
);

CREATE TABLE evento (
    id_evento VARCHAR(20),
    tipo VARCHAR(20),
    minuto TIME,
    PRIMARY KEY (id_evento)
);

CREATE TABLE provocar (
    jugador VARCHAR(20),
    evento VARCHAR(20),
    FOREIGN KEY (jugador)
        REFERENCES jugador (ficha)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (evento)
        REFERENCES evento (id_evento)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (jugador, evento)
);

CREATE TABLE ocurrir (
    evento VARCHAR(20),
    partido VARCHAR(20),
    FOREIGN KEY (evento)
        REFERENCES evento (id_evento)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (partido)
        REFERENCES partido (id_partido)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (evento, partido)
);

CREATE TABLE participar (
    equipo VARCHAR(20),
    partido VARCHAR(20),
    FOREIGN KEY (equipo)
        REFERENCES equipo (id_equipo)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (partido)
        REFERENCES partido (id_partido)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (equipo, partido)
);