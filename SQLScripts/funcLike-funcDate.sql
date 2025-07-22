use aula;

create table PedidosKarrot(
	id int auto_increment primary key,
	cliente varchar(50),
	produto varchar(50),
	data_pedido date,
	hora_pedido time,
	preco numeric(10,2),
	observacao varchar(100)
);

INSERT INTO PedidosKarrot (cliente, produto, data_pedido, hora_pedido, preco, observacao) VALUES
('Ana Paula', 'Café Espresso', '2025-07-19', '08:10:00', 6.50, 'Com açúcar'),
('Bruno Costa', 'Cappuccino', '2025-07-19', '08:35:00', 8.00, 'Leite vegetal'),
('Carla Dias', 'Latte', '2025-07-19', '09:05:00', 7.50, 'Sem espuma'),
('Daniela Souza', 'Croissant', '2025-07-18', '10:15:00', 5.00, 'Com queijo'),
('Eduardo Lima', 'Chá Gelado', '2025-07-18', '11:20:00', 6.00, 'Com limão'),
('Fernanda Alves', 'Café Espresso', '2025-07-17', '14:30:00', 6.50, 'Sem açúcar'),
('Gabriel Silva', 'Pão de Queijo', '2025-07-16', '08:50:00', 4.00, 'Quentinho'),
('Heloísa Martins', 'Café Espresso', '2025-07-15', '07:45:00', 6.50, 'Com leite'),
('Igor Monteiro', 'Latte', '2025-07-14', '09:20:00', 7.50, 'Espuma extra'),
('Juliana Mendes', 'Cappuccino', '2025-07-14', '10:50:00', 8.00, 'Com canela'),
('Karen Rocha', 'Café Gelado', '2025-07-13', '16:00:00', 6.00, 'Com caramelo'),
('Lucas Prado', 'Chá Verde', '2025-07-13', '17:25:00', 6.00, 'Bem quente'),
('Mariana Borges', 'Pão de Queijo', '2025-07-13', '08:15:00', 4.00, 'Sem sal'),
('Nicolas Duarte', 'Croissant', '2025-07-12', '12:45:00', 5.00, 'Simples'),
('Olívia Ribeiro', 'Cappuccino', '2025-07-12', '13:00:00', 8.00, 'Com leite'),
('Paulo Vitor', 'Café Espresso', '2025-07-11', '08:05:00', 6.50, 'Forte'),
('Quésia Freitas', 'Latte', '2025-07-10', '11:40:00', 7.50, 'Com baunilha'),
('Rodrigo Lopes', 'Chá Gelado', '2025-07-10', '12:10:00', 6.00, 'Com hortelã'),
('Sara Oliveira', 'Café Espresso', '2025-07-10', '09:55:00', 6.50, 'Duplo'),
('Thiago Nunes', 'Cappuccino', '2025-07-10', '10:15:00', 8.00, 'Meio amargo');

select * from PedidosKarrot;

-- 🔎 Parte 1 – LIKE
-- Listar os clientes cujo nome começa com a letra 'C':
select id, cliente from PedidosKarrot
where cliente like 'C%';

-- Listar os produtos que terminam com "ino":
select id, produto from PedidosKarrot
where produto like '%ino';

-- Encontrar observações que contenham a palavra “leite” (em qualquer lugar):
select * from PedidosKarrot
where produto like '%latte%'
or observacao like '%leite%';

-- Clientes cujo nome termina com "a":
select id,cliente from PedidosKarrot
where cliente like '%a';

-- ⏰ Parte 2 – Funções de Data e Hora
-- Retornar da tabela de pedidos os campos cliente, produto, hora atual, data atual, data/hora atual;
select id, produto,
	curdate() as data_atual,
	curtime() as hora_atial,
	now() as data_hora_atual
from PedidosKarrot limit 5;

-- Adicione 7 dias à data do pedido (ex: previsão de entrega futura);
select id, produto, data_pedido, date_add(data_pedido, interval 7 day) as data_entrega
from PedidosKarrot
order by data_entrega asc;

-- Mostrar a diferença em dias entre hoje e o pedido (simulando dias de atraso);
select id, date_add(data_pedido, interval 7 day) as data_entrega,
datediff(date_add(data_pedido, interval 7 day), curdate()) as dias_atraso
from PedidosKarrot;





