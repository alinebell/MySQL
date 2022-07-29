CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE categoria(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    medicamento VARCHAR(255)
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


-- insere categorias dos medicamentos
INSERT INTO categoria(medicamento)VALUES("Ansiolítico");
INSERT INTO categoria(medicamento)VALUES("Antibiótico");
INSERT INTO categoria(medicamento)VALUES("Antidepressivo");
INSERT INTO categoria(medicamento)VALUES("Antipirético");
INSERT INTO categoria(medicamento)VALUES("Antiácido");

--  insere ansiolíticos
INSERT INTO tb_produtos(nome_produto,quantidade,valor)VALUES("Alprazolam",10,15.00);
INSERT INTO tb_produtos(nome_produto,quantidade,valor)VALUES("Clonazepam",5,30.00);
INSERT INTO tb_produtos(nome_produto,quantidade,valor)VALUES("Estazolam",3,75.00);
INSERT INTO tb_produtos(nome_produto,quantidade,valor)VALUES("Nitrazolam",2,80.00);
INSERT INTO tb_produtos(nome_produto,quantidade,valor)VALUES("Diazepam",4,20.00);

SET SQL_SAFE_UPDATES=0; -- faz um safe update antes de dar update no que pedi
UPDATE tb_produtos SET catego_id=1;

-- insere antibioticos
INSERT INTO tb_produtos(nome_produto,quantidade,valor, catego_id)VALUES("Doxiciclina",10,25.00,2);
INSERT INTO tb_produtos(nome_produto,quantidade,valor, catego_id)VALUES("Amoxicilina",10,15.00,2);
INSERT INTO tb_produtos(nome_produto,quantidade,valor, catego_id)VALUES("Tetraciclina",10,35.00,2);
 -- insere antidepressivos
INSERT INTO tb_produtos(nome_produto,quantidade,valor, catego_id)VALUES("Venlafaxina",10,25.00,3);
INSERT INTO tb_produtos(nome_produto,quantidade,valor, catego_id)VALUES("Fluoxetina",10,15.00,3);
INSERT INTO tb_produtos(nome_produto,quantidade,valor, catego_id)VALUES("Sertralina",10,35.00,3);
 -- insere antipireticos
INSERT INTO tb_produtos(nome_produto,quantidade,valor, catego_id)VALUES("Dipirona",10,5.00,4);
INSERT INTO tb_produtos(nome_produto,quantidade,valor, catego_id)VALUES("Paracetamol",10,3.00,4);
INSERT INTO tb_produtos(nome_produto,quantidade,valor, catego_id)VALUES("Ibuprofeno",10,8.00,4);
 -- insere antiacidos
INSERT INTO tb_produtos(nome_produto,quantidade,valor, catego_id)VALUES("Estomazil",10,10.00,5);
INSERT INTO tb_produtos(nome_produto,quantidade,valor, catego_id)VALUES("Eno",10,12.00,5);
INSERT INTO tb_produtos(nome_produto,quantidade,valor, catego_id)VALUES("Omeprazol",10,9.00,5);

SELECT * FROM tb_produtos WHERE nome_produto LIKE "%c%";

SELECT * FROM tb_produtos WHERE valor>50.00;

SELECT * FROM tb_produtos WHERE valor>5.00 AND valor<60.00;

SELECT * FROM tb_produtos INNER JOIN categoria ON categoria.id = tb_produtos.catego_id;
-- inner join "cruza as tabelas da tabela categoria" ON "onde" o id da categoria será igual 
-- a catego_id que é a FK "chave estrangeira"

SELECT tb_produtos.nome_produto, tb_produtos.valor, categoria.medicamento FROM tb_produtos
INNER JOIN categoria ON categoria.id = tb_produtos.catego_id;
-- busca apenas o nome, preço e marca

SELECT * FROM tb_produtos 
INNER JOIN categoria ON categoria.id = tb_produtos.catego_id;

