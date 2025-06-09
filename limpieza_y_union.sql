Script para limpieza básica y combinación de tablas

DELETE FROM inflacion WHERE valor IS NULL;
DELETE FROM terrorismo WHERE indice IS NULL;

SELECT i.pais, i.anio, i.valor AS inflacion, t.indice AS terrorismo
FROM inflacion i
JOIN terrorismo t ON i.pais = t.pais AND i.anio = t.anio;
