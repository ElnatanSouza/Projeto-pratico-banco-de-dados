-- CRIAÇÃO DO BANCO --

create database cadastro
default character set utf8
default collate utf8_general_ci;

-- CRIAÇÃO DA 1° TABELA --

create table pessoas (

    id int not null primary key auto_increment,
    nome varchar(50) not null,
    data_nasc date,
    cpf char(14) not null unique,
    sexo enum ('M', 'F'),
    nacionalidade varchar(20) default 'Brasil'

) default charset = utf8;

-- INSERÇÃO DE DADOS NA TABELA --

insert into pessoas (id, nome, data_nasc, cpf, sexo, nacionalidade)

	values 	(default, 'Felisbina Cortes', '1983/12/24', '050.848.960-13', 'F', default),
			(default, 'Rondisney Lava', '1966/06/17', '182.117.030-09', 'M', default),
        	(default, 'Winderson Munes', '1985/03/13', '064.629.660-41', 'M', default),
        	(default, 'Selestina Curisca', '1990/01/23', '219.986.610-67', 'F', 'Holanda'),
       		(default,'Crovys Froid', '1999/04/11', '650.767.900-31', 'M', 'Acre'), -- hahahhahahahhaha brinks --
        	(default,'Xuxa Blond', '2000/07/31', '506.452.220-70', 'F', 'Alemanha'),
        	(default,'Florentina de Gsuix', '1973/10/03', '636.845.510-15', 'F', default),
        	(default,'Mario Kart', '2008/04/10', '351.484.960-96', 'M', 'Japao'),
        	(default,'Elnatan Souza', '1993/06/08', '698.367.820-60', 'M', 'Europa'),
        	(default,'Guilherme Avelino', '1997/08/27', '429.311.920-58', 'M', default);

-- CRIAÇÃO DA 2° TABELA --

create table produtos (

    id int not null primary key auto_increment,
    descricao varchar(90) not null,
    preco char(20) not null, -- A unica forma que encontrei para aparecer as duas ultimas casas decimais dos preços foi com char -- 
    marca varchar(20)

) default charset = utf8;

-- INSERÇÃO DE DADOS NA TABELA --

insert into produtos values   -- Como a ordem é exatamente a mesma, optei por não inserir as propriedades de produtos igual fiz em pessoas --

        (default,'Geladeira/Refrigerador Side By Side Frost Free Inox - 127V (504L)', 'R$ 4.599,07', 'Electrolux'),
        (default,'Refrigerador Duplex DC35A - 127V (260L)', 'R$ 1.449,90', 'Electrolux'),
        (default,'Refrigerador Biplex - 127V (334L)', 'R$ 1.689,00', 'Consul'),
        (default,'Fogão 05 Bocas Mesa de Vidro - 127V', 'R$ 1.753,84', 'Electrolux'),
        (default,'Fogão 4 Bocas - Automático com Forno (70L)', 'R$ 1.357,67', 'Electrolux'),
        (default,'Forno de Micro-ondas - Prata - 127V (27 L)', 'R$ 493,28', 'Electrolux'),
        (default,'Micro-ondas - 127V (30L)', 'R$ 498,20', 'Philco'),
        (default,'Micro-ondas Inox - 127V (20L)', 'R$ 489,27', 'Brastemp'),
        (default,'Lavadora - Branca - 220V (13 Kg)', 'R$ 1.489,99', 'Electrolux'),
        (default,'Lavadora de Roupas com Turbo Agitação - 220V (11kg)', 'R$ 1.719,99', 'Brastemp'),
        (default,'Lava-Louças Inox 14 Serviços - 220V', 'R$ 2.233,25', 'Brastemp'),
        (default,'Lava-louças 8 Serviços Ative! - 220V', 'R$ 1.804,85', 'Brastemp');