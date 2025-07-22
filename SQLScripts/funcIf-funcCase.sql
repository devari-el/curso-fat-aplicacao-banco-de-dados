use aula;

select * from PedidosKarrot;

-- Criando exibição de colunas a partir de IF e CASE

select cliente, produto,
	if(produto = 'Cafe Espresso', 'Clássico', 'Outros') as categoria
from PedidosKarrot;
	
select produto, preco,
	case
		when produto like '%Café%' then 'Bebida Quente'
		when produto like '%Chá%' then 'Bebida Leve'
		when produto like '%Pão%' or produto like '%Croissant%' then 'Comida'
		else 'Outros'
	end as tipo_produto
from PedidosKarrot;
	
	
/*
 Situação: A gerência quer classificar os pedidos em categorias e verificar quais foram feitos no turno da manhã.

🧾 Enunciado do exercício:

Crie uma nova coluna chamada turno, onde:

Se a hora_pedido for antes de 12h, exiba 'Manhã'

Caso contrário, exiba 'Tarde'

Crie outra coluna chamada categoria_produto, onde:

Se o produto for 'Café Espresso' ou 'Cappuccino', exiba 'Cafés'

Se for 'Chá Gelado' ou 'Chá Verde', exiba 'Chás'

Se for 'Croissant' ou 'Pão de Queijo', exiba 'Lanches'

Para os demais, exiba 'Outros'
 */

alter table PedidosKarrot add column turno varchar(20);

update PedidosKarrot
set turno = if(hora_pedido < '12:00:00', 'Manhã', 'Tarde');

alter table PedidosKarrot add column categoria_produto varchar(20);

update PedidosKarrot
set categoria_produto = case
	when produto like '%Café Espresso%'
		or produto like '%Cappuccino%' then 'Cafés'
	when  produto like '%Chá Gelado%' 
		or produto like '%Chá Verde%' then 'Chás'
	when produto like '%Croissant%'
		or produto like '%Pão de Queijo%' then 'Lanches'
	else 'Outros'
end;

select produto, categoria_produto from PedidosKarrot;


-- Alguns exemplos de Group By
select count(*) as contagem_registros
from PedidosKarrot;

select produto,
	count(*) as total_pedidos
from PedidosKarrot
group by produto;

select produto,
	sum(preco) as valor_vendido
from PedidosKarrot
group by produto
order by valor_vendido desc;


