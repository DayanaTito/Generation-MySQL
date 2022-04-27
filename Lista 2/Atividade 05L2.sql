
CREATE DATABASE db_construindo_vida;

USE db_construindo_vida;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
MARCA VARCHAR(255) NOT NULL,
DISPONIVEL VARCHAR (255) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
NOME VARCHAR (255) NOT NULL,
PRECO FLOAT NOT NULL,
QUANTIDADE FLOAT NOT NULL,
VENDIDO VARCHAR (255) NOT NULL,
categorias_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id) 
);

INSERT INTO tb_categorias (MARCA,DISPONIVEL) VALUES ("TIGRE","SIM");
INSERT INTO tb_categorias (MARCA,DISPONIVEL) VALUES ("AMANCO","SIM");
INSERT INTO tb_categorias (MARCA,DISPONIVEL) VALUES ("3M","SIM");
INSERT INTO tb_categorias (MARCA,DISPONIVEL) VALUES ("VOTORAN","SIM");
INSERT INTO tb_categorias (MARCA,DISPONIVEL) VALUES ("VIACHA","SIM");
INSERT INTO tb_categorias (MARCA,DISPONIVEL) VALUES ("VIACHA","SIM");

select * from tb_categorias;
INSERT INTO tb_produtos (nome,preco,quantidade,vendido,categorias_id) VALUES ("CIMENTO",40.0,100.0,"SIM",4);
INSERT INTO tb_produtos (nome,preco,quantidade,vendido,categorias_id) VALUES ("PVC",20.0,30.0,"SIM",6);
INSERT INTO tb_produtos (nome,preco,quantidade,vendido,categorias_id) VALUES ("CANO",30.0,50.0,"SIM",2);
INSERT INTO tb_produtos (nome,preco,quantidade,vendido,categorias_id) VALUES ("CIMENTO",20.0,10.0,"SIM",1);
INSERT INTO tb_produtos (nome,preco,quantidade,vendido,categorias_id) VALUES ("CIMENTO",24.0,30.0,"SIM",5);
INSERT INTO tb_produtos (nome,preco,quantidade,vendido,categorias_id) VALUES ("CIMENTO",2000.0,90.0,"SIM",4);
INSERT INTO tb_produtos (nome,preco,quantidade,vendido,categorias_id) VALUES ("ADEVISO",40.0,10.0,"SIM",3);
INSERT INTO tb_produtos (nome,preco,quantidade,vendido,categorias_id) VALUES ("CIMENTO",80.0,10.0,"SIM",3);

select * from tb_produtos;

SELECT nome,preco FROM tb_produtos WHERE preco > 100;

SELECT nome,preco FROM tb_produtos  WHERE preco BETWEEN 70 AND 150;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
on tb_categorias.id = tb_produtos.categorias_id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
on tb_categorias.id = tb_produtos.categorias_id WHERE tb_categorias.marca = "VOTORAN";