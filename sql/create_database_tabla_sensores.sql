-- 1. Crear la base de datos para el proyecto
CREATE DATABASE IF NOT EXISTS mantenimiento_predictivo;
USE mantenimiento_predictivo;

-- 2. Crear la tabla principal
CREATE TABLE IF NOT EXISTS lecturas_sensores (
    UDI INT PRIMARY KEY,
    Product_ID VARCHAR(20),
    Type VARCHAR(5),
    Air_temperature_K DECIMAL(5,2),
    Process_temperature_K DECIMAL(5,2),
    Rotational_speed_rpm INT,
    Torque_Nm DECIMAL(5,2),
    Tool_wear_min INT,
    Target INT,
    Failure_Type VARCHAR(50)
);