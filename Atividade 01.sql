create database db_empresa_rh;

-- para acessar o  banco de dados

use db_empresa_rh;

-- criando tabela
create table tb_colaboradores(
id bigint auto_increment,
nome varchar(255) not null,
idade int not null,
salario float not null,
funcao varchar(255) not null,
banco_horas float not null,
primary key(id)
);

-- registro

insert into tb_colaboradores(nome,idade,salario,funcao,banco_horas) values ("Dayana Tito",24, 4000,"DesenvolvedoraJr",8);
insert into tb_colaboradores(nome,idade,salario,funcao,banco_horas) values ("Nataly Tito",32, 8000,"Desenvolvedora Pleno",8);
insert into tb_colaboradores(nome,idade,salario,funcao,banco_horas) values ("Miguel Tito",28, 4000,"DesenvolvedoraJr",8);
insert into tb_colaboradores(nome,idade,salario,funcao,banco_horas) values ("Kawai Tito",20, 4000,"DesenvolvedoraJr",8);
insert into tb_colaboradores(nome,idade,salario,funcao,banco_horas) values ("Sergio Santiago", 32, 10000,"Desenvolvedora Senior",8);

-- deletar 
delete from tb_colaboradores where id = 1;

-- Tabela
select * from tb_colaboradores;

select nome from tb_colaboradores where salario > 2000;
select nome from tb_colaboradores where salario < 2000;
update tb_colaboradores set nome = "Dayana Tito" WHERE id = 2;
