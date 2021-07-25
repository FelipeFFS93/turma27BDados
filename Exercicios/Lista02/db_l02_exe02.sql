/*create database db_pizzaria_legal;                    ---Criação da database

use db_pizzaria_legal;

create table tb_categoria(                              ---Criação da tabela
	id int not null auto_increment,
    tipo varchar (20) not null,
	tamanho varchar (20) not null,
	
primary key (id)
);

create table tb_pizza (                                ---Criação da tabela
	id int not null auto_increment,
	valor decimal (3,2) not null,
    sabor varchar (10) not null,
	massa varchar (10) not null,
    adicional boolean,
    borda boolean,
	tipo_id int not null,
    
    primary key (id),
    foreign key (tipo_id) references tb_categoria (id)
);

insert into tb_categoria (tipo, tamanho)                   ----População de tabela
value
("Salgada","Grande"),
("Doce","Media"),
("Meio a Meio","Grande"),
("Salgada","Broto"),
("Vegetariana","Grande");

insert into tb_pizza (valor,sabor,massa,adicional,borda,tipo_id)  ----População de tabela
values
(34.00,"Calabressa","Fina",false,false,1),
(70.00,"Camarão","Média",false,false,1),
(28.00,"Mussarela","Fina",true,false,4),
(50.00,"Chocolate","Grossa",false,false,2),
(57.00,"Prestigio","Grossa",true,false,2),
(38.00,"RuculToma","Média",false,false,5),
(42.00,"FrangoCatu","Média",true,true,1),
(50.00,"Cala/Mussa","Fina",false,true,3);

select * from tb_pizza where valor > 45.00;                        ----1º select solicitado

select * from tb_pizza where valor between 29.00 and 60.00;        ----2º select solicitado

select * from tb_pizza where sabor like "%C%";                     ----3º select solicitado

select * from tb_pizza                                             ----4º select solicitado
  inner join tb_categoria on tb_categoria.id = tb_pizza.tipo_id;

select * from tb_pizza                                             ----5º select solicitado
  inner join tb_categoria on tb_categoria.id = tb_pizza.tipo_id
  where tb_categoria.tipo = "Doce";
  
*/

