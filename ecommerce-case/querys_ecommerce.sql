select * from clientes;
select * from detalhes_pedido;
select * from pedidos;
select * from produtos;

-- 1. Quais clientes mais compraram no pix(em valor total)?
select
	c.nome,
	p.valor_total,
	p.metodo_pagamento
from
	clientes c
join
	pedidos p
on
	c.cliente_id = p.cliente_id
and
	p.metodo_pagamento = 'PIX'
order by
	p.valor_total desc;

-- 2. Quais clientes estão inativos (sem pedidos desde 05/09/2025)?
select
	c.nome,
	c.email,
	p.data_pedido
from
	clientes c
join 
	pedidos p
on
	c.cliente_id = p.cliente_id
and
	p.data_pedido <= '2024-09-05 23:59:59'
order by 
	p.data_pedido asc;


-- 3. Qual o número total de clientes por estado ou cidade?
select 
	estado, count(*) as total_clientes
from 
	clientes
group by 
	estado
order by 
	total_clientes desc;

-- 4. Qual o produto mais apareceu nos pedidos?
select 
	p.nome_produto,
	count(*) as numero_vendas
from 
	detalhes_pedido d
join 
	produtos p
on
	p.produto_id = d.produto_id
group by 
	d.produto_id
order by
	numero_vendas desc;

-- 5. Qual os produtos mais vendidos?
select 
	p.nome_produto,
	sum(d.quantidade) as numero_vendas
from 
	detalhes_pedido d
join 
	produtos p
on
	p.produto_id = d.produto_id
group by 
	d.produto_id
order by
	numero_vendas desc;

-- 6. Quem são os clientes que mais compram em volume (quantidade de itens)?
select 
	c.nome,
	sum(d.quantidade) as quantidade_comprada
from 
	detalhes_pedido d
join 
	pedidos p 
on 
	d.pedido_id  = p.pedido_id
join
	clientes c
on
	c.cliente_id = p.cliente_id
group by 
	c.nome
order by
	quantidade_comprada desc;


-- 7. Quem fez o primeiro pedido do sistema? E o mais recente?
select 
	'Ultimo cliente a Comprar' as classificacao,
	c.nome, c.email, p.data_pedido from clientes c
join 
	pedidos p on p.cliente_id = c.cliente_id
order by 
	p.data_pedido desc 
limit 1;

select 
	'Primeiro cliente a Comprar' as classificacao,
	c.nome, c.email, p.data_pedido from clientes c
join 
	pedidos p on p.cliente_id = c.cliente_id
order by 
	p.data_pedido asc 
limit 1;

-- ticket medio
select avg(valor_total) as ticket_medio
from pedidos;

-- soma da coluna valor_total
select sum(valor_total) as total_faturamento
from pedidos;	

-- 🔹 Pedidos
-- Qual o valor total de pedidos por mês?
-- Qual a média de valor dos pedidos por cliente?
-- Quais métodos de pagamento são mais usados?
-- Quantos pedidos estão em cada status (pendente, entregue, cancelado etc)?
-- Quantos pedidos foram feitos por dia/semana/mês?

-- 🔹 Produtos
-- Quais são os produtos mais vendidos (quantidade total)?
-- Quais são os produtos que mais geram receita (subtotal)?
-- Quais produtos estão com estoque baixo (ex: menor que 10 unidades)?
-- Quais categorias de produtos vendem mais?
-- Qual o ticket médio por produto (preço médio de venda)?

-- 🔹 Detalhes do Pedido
-- Qual é o preço médio dos itens vendidos por pedido?
-- Qual é o item mais vendido em cada pedido?
-- Qual é o total de produtos vendidos por dia/mês?
-- Quais produtos nunca foram vendidos?
-- Quais pedidos têm o maior número de itens diferentes?

-- 🔧 Bônus: Perguntas que envolvem múltiplas tabelas
-- Quanto cada cliente gastou em cada categoria de produto?
-- Quais cidades geram mais receita?
-- Quais produtos são populares entre os clientes de São Paulo, por exemplo?
-- Qual foi o maior pedido (em valor) e quais produtos estavam nele?
-- Qual é a variação do volume de pedidos por tipo de pagamento ao longo dos meses?
	
	
	
	
	
	
	