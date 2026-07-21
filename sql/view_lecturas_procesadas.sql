CREATE OR REPLACE VIEW vw_lecturas_procesadas AS
SELECT 
    UDI,
    Product_ID,
    -- Clasificación clara del tipo de maquinaria/producto
    CASE 
        WHEN Type = 'L' THEN 'Low (Baja Calidad - 50%)'
        WHEN Type = 'M' THEN 'Medium (Media Calidad - 30%)'
        WHEN Type = 'H' THEN 'High (Alta Calidad - 20%)'
        ELSE 'Desconocido'
    END AS Categoria_Producto,
    
    -- Conversión de Temperatura
    ROUND(Air_temperature_K - 273.15, 2) AS Temp_Ambiente_C,
    ROUND(Process_temperature_K - 273.15, 2) AS Temp_Proceso_C,
    ROUND((Process_temperature_K - Air_temperature_K), 2) AS Dif_Temperatura_C,
    
    -- Variables Mecánicas
    Rotational_speed_rpm,
    Torque_Nm,
    Tool_wear_min,
    
    -- Variables de Falla
    Target AS Estado_Falla_Num, -- 0 o 1
    CASE 
        WHEN Target = 1 THEN 'Falla'
        ELSE 'Operación Normal'
    END AS Estado_Falla_Label,
    
    Failure_Type AS Tipo_Falla
FROM lecturas_sensores;