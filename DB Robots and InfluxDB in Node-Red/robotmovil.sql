-- ------------------------------------------------------
-- Script de creación de base de datos y tabla para RobotMovil
-- ------------------------------------------------------

-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS RobotMovil;

-- Usar la base de datos
USE RobotMovil;

-- Crear la tabla 'metricas'
CREATE TABLE IF NOT EXISTS metricas (
  Id INT NOT NULL AUTO_INCREMENT,
  Fecha_hora DATETIME DEFAULT CURRENT_TIMESTAMP,
  Referencia VARCHAR(50),
  Nombre VARCHAR(100),
  NivBateria FLOAT,
  RvMI FLOAT,
  RvMD FLOAT,
  DistOb FLOAT,
  ColisionIR BOOLEAN,
  PRIMARY KEY (Id)
);

-- (Opcional) Insertar datos de ejemplo
INSERT INTO metricas (Referencia, Nombre, NivBateria, RvMI, RvMD, DistOb, ColisionIR)
VALUES
('RBT-01', 'Robot Alfa', 78.5, 12.3, 12.0, 35.8, 0),
('RBT-02', 'Robot Beta', 62.7, 10.1, 9.8, 28.3, 1),
('RBT-03', 'Robot Gamma', 80.2, 11.0, 11.0, 40.0, 0);
