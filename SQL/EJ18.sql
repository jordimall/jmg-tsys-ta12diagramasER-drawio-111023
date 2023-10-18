CREATE DATABASE EJ18;
USE EJ18;

CREATE TABLE persona (
    DNI VARCHAR(9),
    nombre VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100),
    telefono_fijo VARCHAR(9),
    movil VARCHAR(9),
    PRIMARY KEY (DNI)
);

CREATE TABLE trabajador (
    codigo_personal VARCHAR(10),
    personaDni VARCHAR(9),
    PRIMARY KEY (codigo_personal),
    FOREIGN KEY (personaDni)
        REFERENCES persona (DNI)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE cliente (
    codigo_personal VARCHAR(10),
    personaDni VARCHAR(9),
    PRIMARY KEY (codigo_personal),
    FOREIGN KEY (personaDni)
        REFERENCES persona (DNI)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE inmueble (
    Codigo_inmueble VARCHAR(20),
    direccion VARCHAR(100) NOT NULL,
    descripcion VARCHAR(100) NOT NULL,
    metros DOUBLE,
    PRIMARY KEY (Codigo_inmueble)
);

CREATE TABLE piso (
    Codigo_inmueble VARCHAR(20),
    codigo_especial VARCHAR(9),
    PRIMARY KEY (Codigo_inmueble),
    FOREIGN KEY (Codigo_inmueble)
        REFERENCES inmueble (Codigo_inmueble)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE garaje (
    Codigo_inmueble VARCHAR(20),
    numero INT NOT NULL,
    planta VARCHAR(20),
    codigo_piso VARCHAR(20),
    PRIMARY KEY (Codigo_inmueble),
    FOREIGN KEY (Codigo_inmueble)
        REFERENCES inmueble (Codigo_inmueble)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (codigo_piso)
        REFERENCES piso (Codigo_inmueble)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE local (
    Codigo_inmueble VARCHAR(20),
    uso VARCHAR(50) NOT NULL,
    servicio BOOLEAN DEFAULT FALSE,
    PRIMARY KEY (Codigo_inmueble),
    FOREIGN KEY (Codigo_inmueble)
        REFERENCES inmueble (Codigo_inmueble)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE propiedad (
    codigo_de_compra VARCHAR(20),
    valor INT,
    fecha DATE,
    codigo_inmueble VARCHAR(20),
    PRIMARY KEY (codigo_de_compra),
    FOREIGN KEY (Codigo_inmueble)
        REFERENCES inmueble (Codigo_inmueble)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE adquirir (
    Codigo_personal_cliente VARCHAR(10),
    Codigo_de_compra VARCHAR(20),
    PRIMARY KEY (Codigo_personal_cliente , Codigo_de_compra),
    FOREIGN KEY (Codigo_personal_cliente)
        REFERENCES cliente (Codigo_personal)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (Codigo_de_compra)
        REFERENCES propiedad (codigo_de_compra)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE alquirer (
    ID VARCHAR(20),
    numero_alquiler INT,
    codigo_inmueble VARCHAR(20),
    Codigo_personal_cliente VARCHAR(10),
    Codigo_personal_trabajador VARCHAR(10),
    PRIMARY KEY (ID),
    FOREIGN KEY (Codigo_personal_cliente)
        REFERENCES cliente (Codigo_personal)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (Codigo_personal_trabajador)
        REFERENCES trabajador (Codigo_personal)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (Codigo_inmueble)
        REFERENCES inmueble (Codigo_inmueble)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE pago_alquiler (
    ID INT AUTO_INCREMENT,
    valor_pago DOUBLE,
    mes INT,
    año INT,
    IDAlquiler VARCHAR(20),
    PRIMARY KEY (ID),
    FOREIGN KEY (IDAlquiler)
        REFERENCES alquirer (ID)
        ON DELETE CASCADE ON UPDATE CASCADE
)

