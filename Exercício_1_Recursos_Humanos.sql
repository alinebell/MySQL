CREATE DATABASE db_recursosHumanos;

USE db_recursosHumanos;

CREATE TABLE tb_funcionario(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_funcionario VARCHAR(255),
setor VARCHAR(255),
salario INT
);