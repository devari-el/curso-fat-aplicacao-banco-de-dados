use aula1;

-- Exibir o nome dos produtos e o nome do fornecedor de cada um
select p.nome, f.nome
from produtos p
join fornecedores f
on f.id = p.id_fornecedor;

-- Listar os produtos vendidos com suas quantidades e data da venda
select p.nome, v.quantidade, v.data_venda
from produtos p
join vendas v
on p.id = v.id_produto
order by v.quantidade desc;

-- Ver o nome do produto, valor total da venda e nome do fornecedor
select p.nome as nome_produto,
(p.preco * v.quantidade) as total_vendido,
f.nome as nome_fornecedor
from produtos p
join vendas v
on p.id = v.id_produto
join fornecedores f
on p.id_fornecedor = f.id
order by total_vendido desc;

-- Exibir produtos com estoque abaixo de 101 unidades e seus fornecedores
select p.id as codigo_produto,
p.nome as nome_produto,
p.estoque as estoque_atual,
f.nome as nome_fornecedor
from produtos p
join fornecedores f
on p.id_fornecedor = f.id
where p.estoque <= 100
order by p.estoque;
