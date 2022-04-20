-- criar banco de dados
create database db_escola;

-- uso do banco de dados
use db_escola;

-- criar tabela
create table tb_alunos(
 id bigint auto_increment,
 nome varchar(255) not null,
 RA int not null,
 rg int not null,
 turma int not null,
 nota float not null,
 primary key(id)
);

-- registro 
insert into tb_alunos (nome,RA,rg,turma,nota) values ("Dayana Tito", 2359,875365734, 1, 9.6);
insert into tb_alunos (nome,RA,rg,turma,nota) values ("Heloisa Silva", 9873,423778642, 1, 8.6);
insert into tb_alunos (nome,RA,rg,turma,nota) values ("Nathalia Santos", 8974,892374927, 1, 7.5);
insert into tb_alunos (nome,RA,rg,turma,nota) values ("Thais Calvacante", 4324,879423847, 1, 8.3);
insert into tb_alunos (nome,RA,rg,turma,nota) values ("Isabella B", 8827,879423874, 1, 6.6);
insert into tb_alunos (nome,RA,rg,turma,nota) values ("Mariana P", 7898,884238492, 1, 5.2);
insert into tb_alunos (nome,RA,rg,turma,nota) values ("Sergio Felie", 4284,847923478, 1, 8.9);
insert into tb_alunos (nome,RA,rg,turma,nota) values ("Miguel Angel", 8239,847923743, 1, 9.9);

-- tabela 
select * from tb_alunos;

alter table tb_alunos change cpf RA int not null;

select nome from tb_alunos where nota > 7;
select nome from tb_alunos where nota < 7;

