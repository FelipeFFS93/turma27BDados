/*create database db_cidade_das_carnes;                       ----Criação da Database

use db_cidade_das_carnes;                                     ----Uso da Database

create table tb_categoria (                                   ----Criação tabela categoria
	id int not null auto_increment,
    animal varchar (20) not null,
    tipo_corte varchar (20) not null,
        
	primary key (id)
);

create table tb_produto (                                      ----Criação tabela produto
	id int not null auto_increment,
    nome varchar (20) not null,
    valor decimal (6,2) not null,
    quantidade int not null,
    categoria_id int,
    
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_categoria (animal,tipo_corte)                          ----População da tabela categoria
values
("Suino","Pertences"),
("Suino","Miudos"),
("Bovino","Miudos"),
("Bovino","Nobres"),
("Galináceos","Pertences");

insert into tb_produto (nome,valor,quantidade,categoria_id)           ----População da tabela categoria
values
("Alcatra",39.00,1,4),
("PéDePorco",10.50,1,1),
("FiléMignhon",60.00,2,4),
("Mocoto",11.00,1,3),
("LinguiçaPorco",22.00,5,2),
("FiléDeFrango",17.00,2,5),
("Ovos",15,30,5),
("Fraudinha",29.90,2,4);

select * from tb_produto where valor > 50.00;                                   ---- 1º select solicitado

select * from tb_produto where valor between 3.00 and 60.00;                    ---- 2º select solicitado

select * from tb_produto where nome like "%C%";                                 ---- 3º select solicitado

select * from tb_produto                                                        ---- 4º select solicitado
	inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
    
select * from tb_produto                                                        ---- 5º select solicitado
	inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id
    where tb_categoria.animal = "Bovino";
    
*/