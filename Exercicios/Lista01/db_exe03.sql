/*create database db_exe03;                                 ------- Criação da database

use db_exe03;                                               ------- Uso da tabela

create table estudantes(                                    ------- Criação da tabela
	id int not null auto_increment,
    nome varchar (20) not null,
    idade int not null,
    turma int not null,
    nota decimal (4,2),
    
    primary key (id)
);

insert into estudantes (nome, idade, turma, nota) values      ------- populando dados
("Felipe",15,1,9),
("Joana",17,3,7),
("Maria",15,1,10),
("Rafael",16,2,6),
("Joao",16,2,8),
("Ana",15,1,9.5),
("Pedro",17,3,6),
("Clara",17,3,7);

*/

 select * from estudantes where nota >= 7.00;        -- Select 1 solicitado
 
 select * from estudantes where nota < 7.00;        -- Select 2 solicitado
