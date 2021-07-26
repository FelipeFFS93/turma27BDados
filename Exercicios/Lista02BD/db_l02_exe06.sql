/*create database db_cursoDaMinhaVida;                      ----Criação da database

use db_cursoDaMinhaVida;                                    ----Uso da database

create table tb_categoria (                                 ----Criação da tabela categoria
	id int not null auto_increment,
	curso varchar (20) not null,
    professor varchar (20) not null,
    
    primary key (id)
);

create table tb_curso (                                     ----Criação da tabela curso
	id int not null auto_increment,
    aluno varchar (20)not null,
    periodo varchar (20) not null,
    valor decimal (6,2) not null,
    categoria_id int,
    
	primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_categoria (curso, professor)                ----População da tabela categoria
values
("JAVA","Jess"),
("POO","Marcelo"),
("HTML","Ed"),
("CSS","Lucas"),
("JS","Camila"),
("SPRING","Julia"),
("MySQL","Pedro"),
("PYTHON","Amanda");

insert into tb_curso (aluno,periodo,valor,categoria_id)          ----População da tabela curso
values
("Felipe","Noturno",90.00,1),
("Jaqueline","Matutino",50.00,2),
("Barbara","Vespertino",60.00,3),
("Lucas","Noturno",80.00,4),
("Carol","Vespertino",60.00,5),
("Julia","Matutino",50.00,1),
("Pedro","Noturno",90.00,2),
("Larissa","Noturno",90.00,3);
 
select * from tb_curso where valor > 50.00;                                       ----- 1º select solicitado

select * from tb_curso where valor between 30.00 and 60.00;                       ----- 2º select solicitado

select * from tb_categoria where curso like "%J%" ;                               ----- 3º select solicitado

select * from tb_curso                                                            ----- 4º select solicitado
	inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;

select * from tb_curso                                                            ----- 5º select solicitado
	inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id
    where tb_categoria.curso = "Java";
    
*/