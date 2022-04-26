-- criar banco de dados
create database db_generation_game_online;

-- usar o banco de dados
USE db_generation_game_online;

-- criando tabela mãe (1)
create table tb_classes(
id BIGINT auto_increment,
funcao VARCHAR (255) not null,
dano float not null,
defesa float not null,
PRIMARY KEY (id)
);

-- REGISTO
insert into tb_classes (funcao,dano,defesa) values ("Duelista", 2000, 1500);
insert into tb_classes (funcao,dano,defesa) values ("Controlador", 800,1500);
insert into tb_classes (funcao,dano,defesa) values ("Sentinela", 700,1500);
insert into tb_classes (funcao,dano,defesa) values ("Iniciador", 1000,1500);
insert into tb_classes (funcao,dano,defesa) values ("Controlador 2", 800,1500);

-- criar tabela (N)
create table tb_personagens(
id BIGINT auto_increment,
nome VARCHAR (255) NOT NULL,
habilidade VARCHAR (255) NOT NULL,
ult VARCHAR (255) NOT NULL,
jogadores int NOT NULL,
classes_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (classes_id) REFERENCES tb_classes(id)
);

-- registro 

insert into tb_personagens (nome, habilidade, ult, jogadores,classes_id) values ("Viper", "Cortina tóxica", "Poço peçonhento", 5,2);
insert into tb_personagens (nome, habilidade, ult, jogadores,classes_id) values ("Phoenix", "Mãos quentes", "Renascimento", 5,1);
insert into tb_personagens (nome, habilidade, ult, jogadores,classes_id) values ("Sova", "Flecha", "Fúria do caçador", 5,4);
insert into tb_personagens (nome, habilidade, ult, jogadores,classes_id) values ("Sage", "Orbe curativo", "Ressurreição", 5,3);
insert into tb_personagens (nome, habilidade, ult, jogadores,classes_id) values ("Raze", "Cartuchos de tinta", "Estraga-prazeres", 5,1);
insert into tb_personagens (nome, habilidade, ult, jogadores,classes_id) values ("Omen", "Manto sombrio", "Salto das sombras", 5,2);
insert into tb_personagens (nome, habilidade, ult, jogadores,classes_id) values ("Neon", "Equipamento voltaico", "Sobrecarga", 5,1);
insert into tb_personagens (nome, habilidade, ult, jogadores,classes_id) values ("Chamber", "Rendezvous", "Tour de force", 5,3);

-- seleção dano maior que 2000
SELECT * FROM tb_classes WHERE dano >2000;

-- seleção defesa entre 1000 e 2000
SELECT * FROM tb_classes WHERE defesa BETWEEN 1000 AND 2000;

-- Seleção de personagens com a letra C

SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

select * from tb_classes inner join tb_personagens
on tb_classes.id = tb_personagens.classes_id;

select * from tb_classes inner join tb_personagens
on tb_classes.id = tb_personagens.classes_id WHERE tb_classes.funcao = "Duelista";
