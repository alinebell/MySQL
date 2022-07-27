CREATE DATABASE db_recursosHumanos;

USE db_recursosHumanos;

CREATE TABLE tb_funcionario(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_funcionario VARCHAR(255),
setor VARCHAR(255),
salario INT
);

ALTER TABLE tb_funcionario 
ADD qt_filhes INT;

INSERT INTO tb_funcionario(nome_funcionario,setor, salario, qt_filhes) VALUES("Anna Karenina","RH",2500,5);
INSERT INTO tb_funcionario(nome_funcionario,setor, salario, qt_filhes) VALUES("Fenty Rihanna","Cozinha",1800,1);
INSERT INTO tb_funcionario(nome_funcionario,setor, salario, qt_filhes) VALUES("Beyonce Knowles","Recepção",1600,0);
INSERT INTO tb_funcionario(nome_funcionario,setor, salario, qt_filhes) VALUES("Elis Regina","Chão de Fábrica",1400,2);
INSERT INTO tb_funcionario(nome_funcionario,setor, salario, qt_filhes) VALUES("Queen Latifah","Gerência",5000,3);

SELECT salario FROM tb_funcionario WHERE salario>2000;
SELECT nome_funcionario,salario FROM tb_funcionario WHERE salario>2000;
SELECT nome_funcionario,salario FROM tb_funcionario WHERE salario<2000;

UPDATE tb_funcionario SET nome_funcionario="Doja Cat" WHERE id=1;