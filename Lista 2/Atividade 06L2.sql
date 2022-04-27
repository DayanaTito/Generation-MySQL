CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
modelo VARCHAR(255) NOT NULL,
campus VARCHAR(255) not null,
PRIMARY KEY(id)
);

CREATE TABLE tb_cursos(
id BIGINT AUTO_INCREMENT,
NOME VARCHAR (255) NOT NULL,
preco int not null,
periodo VARCHAR (255) NOT NULL,
semestres int (255) NOT NULL,
area VARCHAR (255) NOT NULL,
categorias_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id) 
);

INSERT INTO tb_categorias (modelo,campus) VALUES ("Presencial","Higienópolis");
INSERT INTO tb_categorias (modelo,campus) VALUES ("EAD","Higienópolis");
INSERT INTO tb_categorias (modelo,campus) VALUES ("Semi- Presencial","Higienópolis");
INSERT INTO tb_categorias (modelo,campus) VALUES ("Presencial","Rio de Janeiro");
INSERT INTO tb_categorias (modelo,campus) VALUES ("EAD","Rio de Janeiro");
INSERT INTO tb_categorias (modelo,campus) VALUES ("Semi- Presencial","Rio de Janeiro");

INSERT INTO tb_cursos (nome,periodo,semestres,area,preco,categorias_id) VALUES ("Química","Noite", 8, "Exatas",900,1);
INSERT INTO tb_cursos (nome,periodo,semestres,area,preco,categorias_id) VALUES ("Engenharia Química","Noite", 10, "Exatas",1000,2);
INSERT INTO tb_cursos (nome,periodo,semestres,area,preco,categorias_id) VALUES ("Física","noite", 6, "Exatas",400,4);
INSERT INTO tb_cursos (nome,periodo,semestres,area,preco,categorias_id) VALUES ("Matemática"," Manhã", 8, "Exatas",4322,5);
INSERT INTO tb_cursos (nome,periodo,semestres,area,preco,categorias_id) VALUES ("Engenharia Civil","Vespertino", 8, "Exatas",5435,2);
INSERT INTO tb_cursos (nome,periodo,semestres,area,preco,categorias_id) VALUES ("Polímeros","Manhã", 6, "Exatas",1434,4);
INSERT INTO tb_cursos (nome,periodo,semestres,area,preco,categorias_id) VALUES ("Matemática","noite", 8, "Exatas",6541,6);
INSERT INTO tb_cursos (nome,periodo,semestres,area,preco,categorias_id) VALUES ("Engenharia Civil","noite", 8, "Exatas",3211,3);

SELECT nome,preco FROM tb_cursos WHERE preco > 500;

SELECT nome,preco FROM tb_cursos  WHERE preco BETWEEN 600 AND 1000;

SELECT * FROM tb_cursos WHERE nome LIKE "%j%";

SELECT * FROM tb_cursos INNER JOIN tb_categorias
on tb_categorias.id = tb_cursos.categorias_id;

SELECT * FROM tb_cursos INNER JOIN tb_categorias
on tb_categorias.id = tb_cursos.categorias_id WHERE tb_categorias.modelo = "Presencial";
