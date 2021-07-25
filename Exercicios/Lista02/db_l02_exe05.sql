/* create database db_construindo_a_nossa_vida;                             ----Criação da Database

use db_construindo_a_nossa_vida;                                            ----Uso da Database

create table tb_categoria (                                                 ----Criação da tabela categoria
	id int not null auto_increment,
    departamento varchar (20),
	eletrico boolean,
    
    primary key (id)
);

create table tb_produto (                                           ----Criação da tabela produto
	id int not null auto_increment,
    nome varchar (20) not null,
    valor decimal (6,2) not null,
    estoque int not null,
    cartao boolean,
    categoria_id int,
    
    primary key (id),
	foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_categoria (departamento,eletrico)                             -----População da tabela categoria
value
("Construção",true),
("Construção",false),
("Iluminação",true),
("Segurança",true),
("Porcelanato",false);

insert into tb_produto (nome,valor,estoque,cartao,categoria_id)             -----População da tabela produto
value
("Lixa",3.50,300,false,2),
("Furadeira",250.00,50,true,1),
("Luminaria",90.00,100,false,3),
("Interfone",35.00,70,true,4),
("Piso",15.00,1000,true,5),
("CimentoCola",8.00,500,false,2),
("Janela",150.00,400,true,2),
("Lampada",11.90,700,false,3);

select * from tb_produto where valor > 50.00;                                     ----- 1º select solicitado

select * from tb_produto where valor between 3.00 and 60.00;                      ----- 2º select solicitado

select * from tb_produto where nome like "%C%";                                   ----- 3º select solicitado

select * from tb_produto                                                          ----- 4º select solicitado
	inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
    
select * from tb_produto                                                          ----- 5º select solicitado
	inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id
    where tb_categoria.departamento = "Construção";
    
    */