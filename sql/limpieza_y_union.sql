
-- limpieza_y_union.sql

-- Limpieza básica
SELECT * FROM inflacion WHERE valor IS NOT NULL;
SELECT * FROM terrorismo WHERE indice IS NOT NULL;

-- Unión de tablas con años y países coincidentes
SELECT 
    i.pais, i.anio, i.valor AS inflacion,
    p.valor AS pib, 
    t.indice AS terrorismo,
    g.porcentaje_pib AS gasto_militar
FROM inflacion i
JOIN pib p ON i.pais = p.pais AND i.anio = p.anio
JOIN terrorismo t ON i.pais = t.pais AND i.anio = t.anio
JOIN gasto_militar g ON i.pais = g.pais AND i.anio = g.anio;
