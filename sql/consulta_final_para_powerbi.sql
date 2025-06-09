
-- consulta_final_para_powerbi.sql

-- Datos listos para visualización en Power BI
SELECT 
    pais, anio, 
    inflacion.valor AS inflacion,
    pib.valor AS pib,
    terrorismo.indice AS terrorismo,
    gasto_militar.porcentaje_pib AS gasto_militar
FROM inflacion
JOIN pib ON inflacion.pais = pib.pais AND inflacion.anio = pib.anio
JOIN terrorismo ON inflacion.pais = terrorismo.pais AND inflacion.anio = terrorismo.anio
JOIN gasto_militar ON inflacion.pais = gasto_militar.pais AND inflacion.anio = gasto_militar.anio
WHERE inflacion.anio BETWEEN 2010 AND 2021;
