SELECT 
    Categoria_Producto,
    COUNT(*) AS Total_Lecturas,
    SUM(Estado_Falla_Num) AS Total_Fallas,
    ROUND((SUM(Estado_Falla_Num) / COUNT(*)) * 100, 2) AS Porcentaje_Falla
FROM vw_lecturas_procesadas
GROUP BY Categoria_Producto;