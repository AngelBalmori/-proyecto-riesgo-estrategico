-- Consulta final exportada a Power BI

SELECT 
    pais,
    anio,
    inflacion,
    inversion_extranjera,
    terrorismo,
    militarizacion,
    paz_interna,
    pib,
    deuda_externa
FROM riesgo_estrategico_2030
WHERE anio BETWEEN 2010 AND 2023
ORDER BY pais, anio;
