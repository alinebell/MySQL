CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE categoria(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    medicamento VARCHAR(255),
    preco INT
);

ALTER TABLE categoria DROP COLUMN preco;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(255),
    quantidade INT, 
    valor DECIMAL(8,2),
    catego_id BIGINT, 
    
    FOREIGN KEY(catego_id)REFERENCES categoria(id)
);

INSERT INTO categoria(medicamento)VALUES("Ansiolítico");
INSERT INTO categoria(medicamento)VALUES("Antibiótico");
INSERT INTO categoria(medicamento)VALUES("Antidepressivo");
INSERT INTO categoria(medicamento)VALUES("Antipirético");
INSERT INTO categoria(medicamento)VALUES("Antiácido");

INSERT INTO tb_produtos(nome_produto,quantidade,valor)VALUES("Alprazolam",10,15.00);
INSERT INTO tb_produtos(nome_produto,quantidade,valor)VALUES("Clonazepam",5,30.00);
INSERT INTO tb_produtos(nome_produto,quantidade,valor)VALUES("Estazolam",3,75.00);
INSERT INTO tb_produtos(nome_produto,quantidade,valor)VALUES("Nitrazolam",2,80.00);
INSERT INTO tb_produtos(nome_produto,quantidade,valor)VALUES("Diazepam",4,20.00);

