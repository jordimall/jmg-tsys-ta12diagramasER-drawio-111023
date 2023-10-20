DROP DATABASE if exists EJ18;
CREATE DATABASE EJ18;
USE EJ18;

CREATE TABLE persona (
    DNI VARCHAR(9),
    nombre VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    telefono_fijo VARCHAR(9),
    movil VARCHAR(9) NOT NULL,
    PRIMARY KEY (DNI),
    UNIQUE (nombre , apellidos , movil)
);

CREATE TABLE trabajador (
    codigo_personal VARCHAR(10),
    persona_dni VARCHAR(9),
    PRIMARY KEY (codigo_personal),
    FOREIGN KEY (persona_dni)
        REFERENCES persona (DNI)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE cliente (
    codigo_personal VARCHAR(10),
    persona_dni VARCHAR(9),
    PRIMARY KEY (codigo_personal),
    FOREIGN KEY (persona_dni)
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
    planta TINYINT,
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
    valor INT NOT NULL,
    fecha DATE NOT NULL,
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
    numero_alquiler INT NOT NULL,
    codigo_inmueble VARCHAR(20),
    codigo_personal_cliente VARCHAR(10),
    codigo_personal_trabajador VARCHAR(10),
    PRIMARY KEY (ID),
    FOREIGN KEY (codigo_personal_cliente)
        REFERENCES cliente (Codigo_personal)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (codigo_personal_trabajador)
        REFERENCES trabajador (Codigo_personal)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (codigo_inmueble)
        REFERENCES inmueble (Codigo_inmueble)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE pago_alquiler (
    ID INT AUTO_INCREMENT,
    valor_pago DECIMAL(6 , 2 ) NOT NULL,
    mes INT NOT NULL,
    anio INT NOT NULL,
    IDAlquiler VARCHAR(20),
    PRIMARY KEY (ID),
    FOREIGN KEY (IDAlquiler)
        REFERENCES alquirer (ID)
        ON DELETE CASCADE ON UPDATE CASCADE,
    CHECK (mes >= 1 AND mes <= 12),
    CHECK (anio >= 2023 AND anio <= 2099)
);
