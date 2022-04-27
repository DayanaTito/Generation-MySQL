CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
TIPO VARCHAR(255) NOT NULL,
NOBRE VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
NOME VARCHAR (255) NOT NULL,
PRECO FLOAT NOT NULL,
PESO FLOAT NOT NULL,
PROMOCAO VARCHAR (255),
categorias_id BIGINT,
PRIMARY KEY(id),
FOREIGN KEY(categorias_id) REFERENCES tb_produtos(id)
);

INSERT INTO tb_categorias (TIPO,NOBRE) VALUES ("BOVINA", "SIM");
INSERT INTO tb_categorias (TIPO,NOBRE) VALUES ("FRANGO", "NÃO");
INSERT INTO tb_categorias (TIPO,NOBRE) VALUES ("PORCO", "NÃO");
INSERT INTO tb_categorias (TIPO,NOBRE) VALUES ("SOJA", "SIM");
INSERT INTO tb_categorias (TIPO,NOBRE) VALUES ("OUTROS", "NÃO");

INSERT INTO tb_produtos (nome,peso,preco,promocao,categorias_id) VALUES ("PICANHA", 5.900, 80.60, "Não", 1 );
INSERT INTO tb_produtos (nome,peso,preco,promocao,categorias_id) VALUES ("PEITO DE FRANGO", 2.500, 30.80, "Não", 2 );
INSERT INTO tb_produtos (nome,peso,preco,promocao,categorias_id) VALUES ("FRALDINHA", 3.900, 40.70, "Não", 1 );
INSERT INTO tb_produtos (nome,peso,preco,promocao,categorias_id) VALUES ("BISTECA", 2.900, 20.50, "SIM", 3 );
INSERT INTO tb_produtos (nome,peso,preco,promocao,categorias_id) VALUES ("CARNE DE SOJA", 2.0, 25.50, "SIM", 4 );
INSERT INTO tb_produtos (nome,peso,preco,promocao,categorias_id) VALUES ("PATA", 2.900, 19.50, "NÃO", 1 );
INSERT INTO tb_produtos (nome,peso,preco,promocao,categorias_id) VALUES ("PATA", 1.900, 18.50, "NÃO", 2 );
INSERT INTO tb_produtos (nome,peso,preco,promocao,categorias_id) VALUES ("ALCATRA", 4.900, 20.50, "NÃO", 1 );

SELECT nome,preco FROM tb_produtos WHERE preco > 50;

SELECT nome,preco FROM tb_produtos  WHERE preco BETWEEN 50 AND 150;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
on tb_categorias.id = tb_produtos.categorias_id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
on tb_categorias.id = tb_produtos.categorias_id WHERE tb_categorias.tipo = "BOVINA";



