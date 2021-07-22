/*create database db_exe02;                                     ------- Criação da database

use db_exe02;                                                   ------- Uso da tabela

create table tb_produtos (                                      ------- Criação da tabela
	id int not null auto_increment,
    nome varchar(20) not null,
    preco decimal(10,2) not null,
    marca varchar (20) not null,
    estoque int not null,
    
    primary key (id)

);*/

/*insert into tb_produtos (nome, preco, marca, estoque) values   ------- populando dados
("Chinela", 30.00, "Havainnas",30),
("PrayStation5", 5000.00, "PSP",10),
("Pc Gaimer", 3000.00, "Raizon",5),
("Bolsa", 550.00, "Luis Vinton",40),
("Fone", 90.00, "Shing",120),
("Calça", 80.00, "Rering",200),
("Chapeu", 120.00, "Avuar",50),
("Camiseta", 40.00, "Lizona",200);


 select * from tb_produtos where preco > 500.00;        -- Select 1 solicitado
 
 select * from tb_produtos where preco < 500.00;        -- Select 2 solicitado
 */
 update tb_produtos set preco = 50.00 where id = 1;     -- Atualização de dados
