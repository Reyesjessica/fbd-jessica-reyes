CREATE DATABASE IF NOT EXISTS tallermecanico;
CREATE TABLE  IF NOT EXISTS tallermecanico.Cliente(
    RFC INT,
    nombre VARCHAR(45),
    direccion VARCHAR(70) ,
    correo electronico VARCHAR(60)NOT NULL,
    telefono CHAR(12) NOT NULL,
PRIMARY KEY (RFC)
)
CREATE TABLE IF NOT EXISTS tallermecanico.Mecanico(
    id_mecanico INT,
    nombreVARCHAR (45)
    direccion VARCHAR(45),
    telefono CHAR(12) NOT NULL,
    costo DECIMAL,
    categoria VARCHAR (70),
    disponibilidad de tiempo DATETIME;
PRIMARY KEY (id_mecanico)
)
CREATE TABLE IF NOT EXISTS tallermecanico.Auto(
    matricula VARCHAR (9) NOT NULL,
    modelo VARCHAR (45),
    color CHAR(45),
    marca VARCHAR,
    fecha de entrada/salida DATE,
    hora de entrada/salida TIME,
    Cliente RFC INT;
PRIMARY KEY (matricula)
)

CREATE TABLE IF NOT EXISTS tallermecanico.Repuesto(
    id_Rep INT,
    descripcion VARCHAR(45),
    costounitario INT
    preciounitario INT
    IVA INT
    Hoja_de_parte id_Hoja INT ,
    Hoja_de_parte Mecanico id_mecanico INT,
PRIMARY KEY (id_Rep)
)
CREATE TABLE IF NOT EXISTS tallermecanico.Hoja_de_parte(
    id_Hoja INT,
    concepto VARCHAR(70),
    cantidad INT
    reparacion VARCHAR(50),
    Mecanico id_mecanico INT,
    PRIMARY KEY(id_Hoja)

)
CREATE TABLE IF NOT EXISTS tallermecanico.Factura(
    id_Fact INT,
    fecha DATETIME,
    IVA INT,
    RFC INT,
    PRIMARY KEY (id_Fact)
)