DROP DATABASE if exists EJ14;

CREATE DATABASE EJ14;

USE EJ14;

CREATE TABLE usuario (
    email VARCHAR(50),
    password VARCHAR(50) NOT NULL,
    tipo BOOLEAN DEFAULT FALSE,
    PRIMARY KEY (email)
);

CREATE TABLE bloquear (
    EmailUsuario VARCHAR(50),
    EmailUsuarioBloqueado VARCHAR(50),
    PRIMARY KEY (EmailUsuario , EmailUsuarioBloqueado),
    FOREIGN KEY (EmailUsuario)
        REFERENCES usuario (email)
        ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (EmailUsuarioBloqueado)
        REFERENCES usuario (email)
        ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE infoUsuario (
    ID INT AUTO_INCREMENT,
    nombre VARCHAR(20) NOT NULL,
    apellidos VARCHAR(100),
    direccion VARCHAR(200),
    foto VARCHAR(500),
    email VARCHAR(50),
    PRIMARY KEY (ID),
    FOREIGN KEY (email)
        REFERENCES usuario (email)
        ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE numTelefono (
    ID INT AUTO_INCREMENT,
    telefono VARCHAR(9) NOT NULL,
    IDUsuario INT,
    PRIMARY KEY (ID),
    FOREIGN KEY (IDUsuario)
        REFERENCES infoUsuario (ID)
        ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE contacto (
    ID INT AUTO_INCREMENT,
    comentario VARCHAR(1000),
    PRIMARY KEY (ID)
);

CREATE TABLE agregar (
    EmailUsuario VARCHAR(50),
    IDContacto INT,
    PRIMARY KEY (EmailUsuario , IDContacto),
    FOREIGN KEY (EmailUsuario)
        REFERENCES usuario (email)
        ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (IDContacto)
        REFERENCES contacto (ID)
        ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE grupo (
    ID INT AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    EmailUsuario VARCHAR(50),
    PRIMARY KEY (ID),
    FOREIGN KEY (EmailUsuario)
        REFERENCES usuario (email)
        ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE contener (
    IDContacto INT,
    IDGrupo INT,
    PRIMARY KEY (IDContacto , IDGrupo),
    FOREIGN KEY (IDContacto)
        REFERENCES contacto (id)
        ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (IDGrupo)
        REFERENCES grupo (id)
        ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE comentario (
    ID INT AUTO_INCREMENT,
    texto VARCHAR(1000),
    imagen VARCHAR(50),
    EmailUsuario VARCHAR(50),
    PRIMARY KEY (ID),
    FOREIGN KEY (EmailUsuario)
        REFERENCES usuario (Email)
        ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE tipoVisibilidad (
    ID INT AUTO_INCREMENT,
    tipo VARCHAR(50) DEFAULT 'Global',
    PRIMARY KEY (ID)
);

CREATE TABLE otorgar (
    IDComentario INT,
    IDVisibilidad INT,
    PRIMARY KEY (IDComentario , IDVisibilidad),
    FOREIGN KEY (IDComentario)
        REFERENCES comentario (ID)
        ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (IDVisibilidad)
        REFERENCES tipoVisibilidad (ID)
        ON UPDATE CASCADE ON DELETE CASCADE
);