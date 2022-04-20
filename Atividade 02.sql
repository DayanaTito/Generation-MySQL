-- criar banco de dados
create database db_ecommerce;

-- uso do banco de dados
use db_ecommerce;

-- criar tabela
create table tb_produtos(
id bigint auto_increment,
produto varchar (255) not null,
valor float not null,
estoque int not null,
cor varchar (255) not null,
marca varchar(255) not null,
codigo_produto int not null,
primary key(id)
); 

-- registro 
insert into tb_produtos(produto,valor,estoque,cor,codigo_produto,marca) values ("Galaxy Note 10+", 3000, 10, "Branco", 1232,"SAMSUNG" );
insert into tb_produtos(produto,valor,estoque,cor,codigo_produto,marca) values ("Televisão 32", 2000, 3, "Azul", 4324, "SONY");
insert into tb_produtos(produto,valor,estoque,cor,codigo_produto,marca) values ("Notebook", 5000, 5, "Cinza", 4242, "HP");
insert into tb_produtos(produto,valor,estoque,cor,codigo_produto,marca) values ("Headset", 700, 2, "Branco", 4322, "RAZER");
insert into tb_produtos(produto,valor,estoque,cor,codigo_produto,marca) values ("Carregador", 200, 9, "Branco", 9872, "SAMSUNG");
insert into tb_produtos(produto,valor,estoque,cor,codigo_produto,marca) values ("Drone", 500, 1, "Vermelho", 7839, "DJI");
insert into tb_produtos(produto,valor,estoque,cor,codigo_produto,marca) values ("Placa de Video", 2000, 1, "Verde", 4231, "NVIDIA");
insert into tb_produtos(produto,valor,estoque,cor,codigo_produto,marca) values ("Placa Mãe", 600, 2, "Vermelho", 8767, "ASUS");

-- tabela
select * from tb_produtos;

-- seleção de dados
select produto from tb_produtos Where valor > 500;
select produto from tb_produtos Where valor < 500;

-- atualização
update tb_produtos set valor = 199.99 where id = 5;