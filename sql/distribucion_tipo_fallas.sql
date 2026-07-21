SELECT 
    Tipo_Falla,
    COUNT(*) AS Cantidad
FROM vw_lecturas_procesadas
WHERE Estado_Falla_Num = 1
GROUP BY Tipo_Falla
ORDER BY Cantidad DESC;