create database aula1;
use aula1;

create table fornecedores(
	id int auto_increment primary key,
	nome varchar(30) not null
);

create table produtos(
	id int auto_increment primary key,
	id_fornecedor int not null,
	nome varchar(30) not null,
	preco numeric(10,2) not null,
	estoque int not null,
	foreign key (id_fornecedor) references fornecedores(id)
);

create table vendas(
	id int auto_increment primary key,
	id_produto int not null,
	quantidade int not null,
	data_venda date,
	foreign key (id_produto) references produtos(id)
);

drop table vendas, produtos, fornecedores;