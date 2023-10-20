drop database if exists EJ16;

create database EJ16;

use EJ16;

CREATE TABLE usuario (
    nombreUsuario VARCHAR(100),
    nombre VARCHAR(50) NOT NULL,
    password VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    fechaCreacion DATE,
    PRIMARY KEY (nombreUsuario)
);

CREATE TABLE seguir (
    IDUsuario VARCHAR(100),
    IDUsuarioSeguir VARCHAR(100),
    PRIMARY KEY (IDUsuario , IDUsuarioSeguir),
    FOREIGN KEY (IDUsuario)
        REFERENCES usuario (nombreUsuario)
        ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (IDUsuarioSeguir)
        REFERENCES usuario (nombreUsuario)
        ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE tweet (
    ID INT AUTO_INCREMENT,
    texto VARCHAR(1000),
    foto VARCHAR(100),
    vecesCompartido INT DEFAULT 0,
    numLike INT DEFAULT 0,
    fechaCreacion DATE,
    IDUsuario VARCHAR(100),
        PRIMARY KEY (ID),
    FOREIGN KEY (IDUsuario)
        REFERENCES usuario (nombreUsuario)
        ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE compartir (
    IDUsuario VARCHAR(100),
    IDTweet INT,
    PRIMARY KEY (IDUsuario , IDTweet),
    FOREIGN KEY (IDUsuario)
        REFERENCES usuario (nombreUsuario)
        ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (IDTweet)
        REFERENCES tweet (ID)
        ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE darLike (
    IDUsuario VARCHAR(100),
    IDTweet INT,
    FOREIGN KEY (IDUsuario)
        REFERENCES usuario (nombreUsuario)
        ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (IDTweet)
        REFERENCES tweet (ID)
        ON UPDATE CASCADE ON DELETE CASCADE,
    PRIMARY KEY (IDUsuario , IDTweet)
);

CREATE TABLE comentario (
    ID INT AUTO_INCREMENT,
    contenido VARCHAR(100) NOT NULL,
    fechaCreacion DATE NOT NULL,
    IDUsuario VARCHAR(100),
    IDTweet INT,
    PRIMARY KEY (ID),
    FOREIGN KEY (IDUsuario)
        REFERENCES usuario (nombreUsuario)
        ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (IDTweet)
        REFERENCES tweet (ID)
        ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE hashtag (
    ID INT AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    IDUsuario VARCHAR(100),
    PRIMARY KEY (ID),
    FOREIGN KEY (IDUsuario)
        REFERENCES usuario (nombreUsuario)
        ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE asociar (
    IDHasthag INT,
    IDTweet INT,
    PRIMARY KEY (IDHasthag , IDTweet),
    FOREIGN KEY (IDHasthag)
        REFERENCES hashtag (ID)
        ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (IDTweet)
        REFERENCES tweet (ID)
        ON UPDATE CASCADE ON DELETE CASCADE
);
