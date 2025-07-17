USE DB_SDE20_ARIEL_RANDIS;

create table produtos_padaria(
	id int auto_increment primary key,
    nome varchar(30) not null,
    preco numeric(10,2) not null
);

insert into produtos_padaria(nome, preco)
values
	('Teclado Gamer','59.99'),
    ('Mouse Preto','32.33'),
    ('Monitor LG','289.99'),
    ('Fone','41.77'),
    ('Relógio Patek Phillip','800250.00'),
    ('Nike TN Air Max Plus','1499.99');
    
select * from produtos_padaria;
    
select upper(nome) from produtos_padaria; -- upper(): Maiúsculas

select length(nome) from produtos_padaria order by length(nome) asc; -- legth(): Conta letras

select left(nome, 5) from produtos_padaria; -- left(coluna, 5): 5 Letras iniciais

select right(nome, 5) from produtos_padaria;  -- right(coluna, 5): 5 Letras finais

select round(preco) from produtos_padaria; -- round(coluna): Arredonda

select round(preco, 1) from produtos_padaria; -- round(coluna, 1): Arredonda exibindo 1 casa depois da vírgula

select nome, current_date() from produtos_padaria; -- mostra a data atual do sistema

select nome as NomeOriginalNaTabela, -- coluna as apelidoColuna: Exibe colunas com nome alterados temporáriamente
upper(nome) as NomeMaíusculoNaTabela
from produtos_padaria;

select left(nome, 4) as QuatroPrimeirasLetras,
right(nome, 4) as QuatroUltimasLetras
from produtos_padaria;

select nome as Palavra,
length(nome) as QuantosCaracteresTem
from produtos_padaria
order by length(nome) asc;