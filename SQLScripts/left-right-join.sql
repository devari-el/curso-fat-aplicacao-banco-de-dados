create database if not exists aula2;

use aula2;

CREATE TABLE if not exists Clientes(
        id_cliente INT PRIMARY KEY,
        nome VARCHAR(50)
);
 
CREATE TABLE if not exists Produtos(
       id_produto INT PRIMARY KEY,
       nome_produto VARCHAR(50)
);

CREATE TABLE if not exists Pedidos(
       id_pedido INT PRIMARY KEY,
       id_cliente INT,
       id_produto INT
);

INSERT INTO Clientes (id_cliente, nome) VALUES
(1, 'Amanda'),
(2, 'Bernardo'),
(3, 'Camila');
 
INSERT INTO Produtos (id_produto, nome_produto) VALUES
(101, 'Notebook'),
(102, 'Mouse'),
(103, 'Teclado');
 
INSERT INTO Pedidos (id_pedido, id_cliente, id_produto) VALUES
(1, 1, 101), -- Amanda comprou Notebook
(2, 2, 102), -- Bernardo comprou Mouse
(3, 4, 101), -- Cliente inexistente
(4, 2, 105); -- Produto inexistente

select * from Clientes;
select * from Produtos;
select * from Pedidos;

-- Liste os pedidos com nome do cliente e nome do produto. Apenas pedidos válidos.
select
	pdd.id_pedido, 
	c.nome, 
	pdt.nome_produto
from Clientes c
join Pedidos pdd
on pdd.id_cliente = c.id_cliente
join Produtos pdt
on pdt.id_produto = pdd.id_produto;

-- Mostre todos os clientes, com os produtos que compraram (se compraram).
select 
	c.nome as nome_cliente,
	pdt.nome_produto
from Clientes c
left join Pedidos pdd
on c.id_cliente = pdd.id_cliente
left join Produtos pdt
on pdd.id_produto = pdt.id_produto;

-- Mostre todos os pedidos, mesmo os que não têm cliente na base.
select 
	c.nome,
	pdd.id_pedido
from Clientes c
right join Pedidos pdd
on pdd.id_cliente = c.id_cliente;

-- Quais clientes ainda não fizeram nenhum pedido?
select
	c.nome
from Clientes c
left join Pedidos pdd on pdd.id_cliente = c.id_cliente
where pdd.id_pedido is null;

-- Quais pedidos estão com produto inexistente?
select 
	pdd.id_pedido
from Pedidos pdd
left join Produtos pdt on pdd.id_produto = pdt.id_produto
where pdt.id_produto is null;

-- Quais produtos ainda não foram vendidos?
select
	pdt.nome_produto
from Produtos pdt
left join Pedidos pdd on pdt.id_produto = pdd.id_produto
where pdd.id_produto is null;






