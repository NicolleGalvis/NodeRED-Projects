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
