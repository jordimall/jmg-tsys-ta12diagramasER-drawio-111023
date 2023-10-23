drop database if exists vuelos;

create database if not exists vuelos;

use vuelos;

CREATE TABLE cliente (
    dni VARCHAR(9),
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50),
    direccion VARCHAR(100),
    telefono VARCHAR(9),
    num_tarjeta_credito VARCHAR(16),
    PRIMARY KEY (dni)
);

CREATE TABLE tarjeta_embarque (
    fila_asiento INT,
    columna_asiento VARCHAR(1),
    piso_asiento INT,
    cliente VARCHAR(9),
    FOREIGN KEY (cliente)
        REFERENCES cliente (dni)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (fila_asiento , columna_asiento , piso_asiento)
);

CREATE TABLE avion (
    codigo_avion varchar(10),
    num_plazas int,
    PRIMARY KEY (codigo_avion)
);

CREATE TABLE aeropuerto (
    codigo_aeropuerto VARCHAR(10),
    nombre VARCHAR(50) NOT NULL,
    localidad VARCHAR(50),
    pais VARCHAR(50),
    PRIMARY KEY (codigo_aeropuerto)
);

CREATE TABLE vuelo (
    codigo_vuelo INT AUTO_INCREMENT,
    fecha_salida date,
    hora_salida time,
    fecha_llegada date,
    hora_llegada time,
    avion VARCHAR(10),
    aeropuerto_salida VARCHAR(10),
    aeropuerto_llegada VARCHAR(10),
    FOREIGN KEY (avion)
        REFERENCES avion (codigo_avion)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (aeropuerto_salida)
        REFERENCES aeropuerto (codigo_aeropuerto)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (aeropuerto_llegada)
        REFERENCES aeropuerto (codigo_aeropuerto)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (codigo_vuelo)
);

create table reserva (
	cliente VARCHAR(9),
    tarjeta_fila int,
    tarjeta_columna VARCHAR(1),
    tarjeta_piso int,
    num_reserva int,
    fecha_reserva date,
    FOREIGN KEY (cliente)
        REFERENCES cliente (dni)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (tarjeta_fila, tarjeta_columna, tarjeta_piso)
        REFERENCES tarjeta_embarque (fila_asiento, columna_asiento, piso_asiento)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (cliente, tarjeta_fila, tarjeta_columna, tarjeta_piso)
);

CREATE TABLE embarca (
    tarjeta_fila INT,
    tarjeta_columna VARCHAR(1),
    tarjeta_piso INT,
    vuelo INT,
    FOREIGN KEY (tarjeta_fila , tarjeta_columna , tarjeta_piso)
        REFERENCES tarjeta_embarque (fila_asiento , columna_asiento , piso_asiento)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (vuelo)
        REFERENCES vuelo (codigo_vuelo)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (tarjeta_fila , tarjeta_columna , tarjeta_piso , vuelo)
);