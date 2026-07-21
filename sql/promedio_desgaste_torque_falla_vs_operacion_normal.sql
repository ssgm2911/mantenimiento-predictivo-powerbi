SELECT 
    Estado_Falla_Label,
    ROUND(AVG(Tool_wear_min), 1) AS Promedio_Desgaste_Min,
    ROUND(AVG(Torque_Nm), 2) AS Promedio_Torque_Nm,
    ROUND(AVG(Rotational_speed_rpm), 0) AS Promedio_RPM
FROM vw_lecturas_procesadas
GROUP BY Estado_Falla_Label;