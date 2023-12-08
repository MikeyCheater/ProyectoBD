CREATE DATABASE IF NOT EXISTS VETERINARIA;

USE VETERINARIA;

CREATE TABLE IF NOT EXISTS clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    celular VARCHAR(15) NOT NULL,
    dni VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL
);

CREATE TABLE IF NOT EXISTS mascotas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    especie VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS adopciones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    mascota_id INT,
    fecha_adopcion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id),
    FOREIGN KEY (mascota_id) REFERENCES mascotas(id)
);

CREATE TABLE IF NOT EXISTS compras (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    producto_id INT,
    cantidad INT NOT NULL,
    fecha_compra TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id),
    FOREIGN KEY (producto_id) REFERENCES productos(id)
);

INSERT INTO productos (nombre, precio) VALUES ('Juguete para Gato', 15.99);
INSERT INTO productos (nombre, precio) VALUES ('Correa para Perro', 12.50);
INSERT INTO productos (nombre, precio) VALUES ('Comida para Pájaros', 8.99);
INSERT INTO productos (nombre, precio) VALUES ('Champú para Perro', 9.75);

INSERT INTO mascotas (nombre, especie) VALUES ('Bobby', 'Perro');
INSERT INTO mascotas (nombre, especie) VALUES ('Whiskers', 'Gato');
INSERT INTO mascotas (nombre, especie) VALUES ('Chato', 'Loro');
INSERT INTO mascotas (nombre, especie) VALUES ('Sam', 'Pez');


