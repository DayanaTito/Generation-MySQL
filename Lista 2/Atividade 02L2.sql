-- criar banco de dados
create database db_pizzaria_legal;

-- usar banco de dados
USE db_pizzaria_legal;


CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
DESCRICAO VARCHAR(255) NOT NULL,
VEGETARIANA VARCHAR(255),
PRIMARY KEY(id)
);

create table tb_pizzas(
id BIGINT AUTO_INCREMENT,
NOME VARCHAR(255) NOT NULL,
PRECO FLOAT NOT NULL,
TAMANHO VARCHAR (255) NOT NULL,
TIPO VARCHAR(255) NOT NULL,
categorias_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY(categorias_id) REFERENCES tb_categorias(id)
);

-- registro

INSERT INTO tb_categorias (DESCRICAO,VEGETARIANA) VALUES ("Molho de tomate, mussarela, calabresa fatiada, cebola e orégano.","Não"); 
INSERT INTO tb_categorias (DESCRICAO,VEGETARIANA) VALUES ("Molho picante, mussarela, calabresa ralada, pimenta calabresa, azeitonas e orégano.","Não");
INSERT INTO tb_categorias (DESCRICAO,VEGETARIANA) VALUES ("Molho de tomate, mussarela, frango desfiado, milho verde, azeitonas, catupiry e orégano.","Não");
INSERT INTO tb_categorias (DESCRICAO,VEGETARIANA) VALUES ("Molho de tomate, mussarela, tomates fatiados, azeitonas, manjericão e orégano.","Não");
INSERT INTO tb_categorias (DESCRICAO,VEGETARIANA) VALUES ("Molho de tomate, mussarela, tomate seco, azeitonas pretas, manjericão e orégano.","Sim");
INSERT INTO tb_categorias (DESCRICAO,VEGETARIANA) VALUES ("Molho de tomate, mussarela, milho verde, azeitona, catupiry e orégano.","Sim");
INSERT INTO tb_categorias (DESCRICAO,VEGETARIANA) VALUES ("Molho de tomate, camada dupla de mussarela e orégano.","Sim");
INSERT INTO tb_categorias (DESCRICAO,VEGETARIANA) VALUES ("Molho de tomate, mussarela, camada dupla de cheddar e orégano..","Sim");

SELECT * FROM tb_categorias;
SELECT * FROM tb_pizzas;
-- registro 

INSERT INTO tb_pizzas (nome,tipo,preco,tamanho,categorias_id) VALUES ("Calabresa","Salgada", 45.00, "Grande",1);
INSERT INTO tb_pizzas (nome,tipo,preco,tamanho,categorias_id) VALUES ("Baiana","Salgada", 35.00, "Média",2);
INSERT INTO tb_pizzas (nome,tipo,preco,tamanho,categorias_id) VALUES ("FRANGO COM CATUPIRY","Salgada", 30.00, "Pequena",3);
INSERT INTO tb_pizzas (nome,tipo,preco,tamanho,categorias_id) VALUES ("MILHO VERDE","Salgada", 55.00, "Grande",6);
INSERT INTO tb_pizzas (nome,tipo,preco,tamanho,categorias_id) VALUES ("MUSSARELA","Salgada", 35.00, "Média",4);
INSERT INTO tb_pizzas (nome,tipo,preco,tamanho,categorias_id) VALUES ("TOMATE SECO","Salgada", 30.00, "Pequena",6);
INSERT INTO tb_pizzas (nome,tipo,preco,tamanho,categorias_id) VALUES ("CHEDDAR","Salgada", 45.00, "Grande",8);
INSERT INTO tb_pizzas (nome,tipo,preco,tamanho,categorias_id) VALUES ("Baiana","Salgada", 45.00, "Grande",2);

SELECT * FROM tb_pizzas WHERE preco > 50;
SELECT * FROM tb_pizzas WHERE PRECO BETWEEN 50 AND 60;
SELECT * FROM tb_pizzas WHERE NOME LIKE "%N%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
on tb_pizzas.categorias_id = tb_categorias.id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
on tb_categorias.id = tb_pizzas.categorias_id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
on tb_categorias.id = tb_pizzas.categorias_id WHERE tb_categorias.VEGETARIANA = "Sim";



