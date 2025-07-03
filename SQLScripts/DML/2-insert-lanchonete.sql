USE DB_SDE20_ARIEL_RANDIS;

-- Inserindo dados na tabela LANCHONETE_PRODUTOS (10 linhas)
INSERT INTO LANCHONETE_PRODUTOS (NOME, PRECO) VALUES
('Hambúrguer Clássico', 25.50),
('Batata Frita Média', 12.00),
('Refrigerante Lata', 7.00),
('Milkshake de Chocolate', 18.00),
('Sanduíche de Frango', 22.00),
('Salada Caesar', 30.00),
('Suco de Laranja Natural', 10.50),
('Pizza Pequena Calabresa', 40.00),
('Açaí com Granola', 15.00),
('Pudim de Leite', 8.50);

-- Inserindo dados na tabela LANCHONETE_CLIENTES (10 linhas)
INSERT INTO LANCHONETE_CLIENTES (NOME, TELEFONE) VALUES
('Mariana Santos', '11987654321'),
('João Oliveira', '21998765432'),
('Fernanda Lima', '31976543210'),
('Pedro Almeida', '41965432109'),
('Camila Rodrigues', '51954321098'),
('Lucas Fernandes', '61943210987'),
('Isabela Costa', '71932109876'),
('Gabriel Pereira', '81921098765'),
('Sofia Martins', '91910987654'),
('Rafael Gomes', '11909876543');

-- Inserindo dados na tabela LANCHONETE_FORNECEDORES (10 linhas)
INSERT INTO LANCHONETE_FORNECEDORES (NOME, TELEFONE) VALUES
('Carnes Nobres Ltda.', '1130001000'),
('Pães Frescos S.A.', '2140002000'),
('Bebidas Geladas Dist.', '3150003000'),
('Laticínios da Fazenda', '4160004000'),
('Hortifruti Verde', '5170005000'),
('Grãos e Cereais', '6180006000'),
('Doces e Confeitos', '7190007000'),
('Embalagens Seguras', '8110008000'),
('Congelados Rápidos', '9120009000'),
('Temperos do Mundo', '1130010000');

-- Inserindo dados na tabela LANCHONETE_PEDIDOS (10 linhas)
-- IDs de PRODUTO e CLIENTE devem corresponder aos IDs gerados nas tabelas acima
INSERT INTO LANCHONETE_PEDIDOS (ID_PRODUTO, ID_CLIENTE, QUANTIDADE, DATA_PEDIDO) VALUES
(1, 1, 1, '2024-07-01'),   -- Hambúrguer Clássico para Mariana
(2, 3, 2, '2024-07-01'),   -- Batata Frita para Fernanda
(3, 2, 3, '2024-07-02'),   -- Refrigerante para João
(4, 5, 1, '2024-07-02'),   -- Milkshake para Camila
(1, 4, 2, '2024-07-03'),   -- Hambúrguer Clássico para Pedro
(5, 6, 1, '2024-07-03'),   -- Sanduíche de Frango para Lucas
(7, 8, 2, '2024-07-04'),   -- Suco de Laranja para Gabriel
(8, 7, 1, '2024-07-04'),   -- Pizza para Isabela
(9, 10, 1, '2024-07-05'),  -- Açaí para Rafael
(10, 9, 2, '2024-07-05');  -- Pudim para Sofia