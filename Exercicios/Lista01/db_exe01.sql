/*create database db_exe01;                                     ------- Criação da database

use db_exe01;*/                                                -- ----- Uso da Tabela

/*create table tb_funcionarios (                               ------- Criação da tabela
	id int not null auto_increment,
    nome varchar (20) not null,
    idade int not null,
	ativo boolean,
    salario decimal(10,2) not null,
    
    primary key (id)
);*/

/*insert into tb_funcionarios (nome,idade,ativo,salario)      ------- populando dados
values
 ("Felipe",28,true,4000.00),
 ("Paula",25,true,4200.00),
 ("Ana",22,true,1800.00),
 ("Pedro",18,true,1500.00),
 ("Clara",35,true,5000.00);
 
 
 select * from tb_funcionarios where salario > 2000.00;        -- Select 1 solicitado
 
 select * from tb_funcionarios where salario < 2000.00;        -- Select 2 solicitado
 
 */
 
 update tb_funcionarios set salario = 3000.00, ativo = true where id = 1;     -- Atualização de dados
 