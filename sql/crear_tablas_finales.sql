
-- crear_tablas_finales.sql

CREATE TABLE inflacion (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pais VARCHAR(50),
    anio INT,
    valor DECIMAL(5,2)
);

CREATE TABLE pib (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pais VARCHAR(50),
    anio INT,
    valor DECIMAL(10,2)
);

CREATE TABLE terrorismo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pais VARCHAR(50),
    anio INT,
    indice DECIMAL(5,2)
);

CREATE TABLE gasto_militar (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pais VARCHAR(50),
    anio INT,
    porcentaje_pib DECIMAL(5,2)
);
