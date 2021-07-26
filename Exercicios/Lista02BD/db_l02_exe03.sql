/*create database db_farmacia_do_bem;                     ----Criação da database

use db_farmacia_do_bem;                                   ----Uso da database

create table tb_categoria (                               ----Criação da tabela categoria
	id int not null auto_increment,
    tipo varchar (20) not null,
    receita boolean,
    
    primary key (id)
);

create table tb_produtos (                              ----Criação da tabela produto
	id int not null auto_increment,
	nome varchar(20) not null,
    valor decimal (6,2) not null,
	tarja varchar (20) not null,
    marca varchar (20) not null,
    categoria_id int not null,
    
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_categoria (tipo, receita)                          ----População de tabela
value
("Remedios",true),
("Remedios",false),
("Cosmeticos",false),
("Vitaminados",false),
("Higiene",false);

insert into tb_produtos (nome, valor,tarja,marca,categoria_id)   ----População de tabela
values
("ShampooAntiCaspa",20.00,"Sem","Hedeshouder",5),
("PastaDeDente",3.50,"Sem","Cougate",5),
("Ibuprofeno",11.00,"Vermelha","Generico",1),
("Forxiga",121.99,"Vermelha","Generico",1),
("Frauda",50.00,"Sem","Pampers",5),
("VitaxonC",22.90,"Sem","Vitaxon",4),
("Renew",59.90,"Sem","Avon",3),
("Benaleti",4.99,"Sem","Valda",2);

select * from tb_produtos where valor > 50.00;                      ---- 1º select

select * from tb_produtos where valor between 3.00 and 60.00;       ---- 2º select  

select * from tb_produtos where nome like "%B%";                    ---- 3º select  

select * from tb_produtos                                           ---- 4º select  
inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select * from tb_produtos                                           ---- 5º select  
inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id
where tb_categoria.tipo = "Higiene";

*/
