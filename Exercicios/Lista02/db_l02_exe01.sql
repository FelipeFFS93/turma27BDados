/*create database db_generation_game_online;     ----Criação Banco de Dados

use db_generation_game_online;                   ----Uso da tabelo

;

create table tb_classes(                         ----Criação da tabela classes
	id int(5) not null auto_increment,
    raca varchar(10) not null,
    classe varchar(10) not null,
    
    primary key (id)
);


create table tb_personagens(                     ----Criação da tabela personagem
	id int(5) not null auto_increment,
    nome varchar (20) not null,
    ataque int(10) not null,
    defesa int(10) not null,
    hp int(10) not null,
    habilidade varchar(40) not null,
	classe_id int not null,
    
	primary key (id),
    foreign key (classe_id) references tb_classes(id)  
);


insert into tb_classes (raca, classe)           ----Criação da tabela personagem
values
("Humano","Clerigo"),
("Elfo","Arqueiro"),
("Orc","Berseker"),
("Humano","MagoBranco"),
("Anão","Ferreiro");


insert into tb_personagens (nome, ataque, defesa, hp, habilidade,classe_id) --- Populando dados
values
("Valmir",2000,1000,5000,"Curar",6),
("Lucas",3500,1500,7000,"Tiro Perfurante",7),
("Gedione",5000,1800,3000,"Grito de furia",8),
("Clara",3000,1000,5000,"Raio de Luz",9),
("Felipe",3500,2100,7000,"Construir",10),
("Janaina",2000,1000,5000,"Reviver",9),
("Pedro",3500,1500,7000,"Flechar",7),
("Maria",3500,2100,5000,"Destruir",10);

select * from tb_personagens where ataque > 2000;                ---- 1º select solicitado

select * from tb_personagens where defesa between 1000 and 2000; ---- 2º select solicitado

select * from tb_personagens where nome like "%C%";              ---- 3º select solicitado

select * from tb_personagens                                            ---- 4º select solicitado
    inner join tb_classes on tb_classes.id = tb_personagens.classe_id;


select * from tb_personagens                                          ---- 5º select solicitado
    inner join tb_classes on tb_classes.id = tb_personagens.classe_id
    where classe = "Arqueiro";
    
*/   