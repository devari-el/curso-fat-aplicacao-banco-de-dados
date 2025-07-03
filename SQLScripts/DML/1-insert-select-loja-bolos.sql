USE DB_SDE20_ARIEL_RANDIS;

INSERT INTO LOJA_BOLOS_PRODUTOS(NOME, PRECO) VALUES
	('Bolo de Chocolate Clássico', 45.00),
	('Bolo de Cenoura com Cobertura de Chocolate', 55.50),
	('Bolo de Morango com Chantilly', 62.00),
	('Bolo Red Velvet', 70.00),
	('Mini Bolo de Limão', 25.00)
;
INSERT INTO LOJA_BOLOS_CLIENTES(NOME, TELEFONE, ENDERECO) VALUES
	('Ana Silva', '11987654321', 'Rua das Flores, 123, São Paulo'),
	('Bruno Costa', '21998765432', 'Av. Principal, 456, Rio de Janeiro'),
	('Carla Dias', '31976543210', 'Travessa da Paz, 789, Belo Horizonte'),
	('Daniela Souza', '41965432109', 'Rua do Sol, 101, Curitiba'),
	('Eduardo Pereira', '51954321098', 'Av. da Liberdade, 202, Porto Alegre')
;
INSERT INTO LOJA_BOLOS_FORNECEDORES(NOME_FORNECEDOR, TELEFONE) VALUES
	('Doces & Cia', '1130001000'),
	('Farinhas Puras', '2140002000'),
	('Laticínios Frescos', '3150003000'),
	('Embalagens Brilhantes', '4160004000'),
	('Frutas Tropicais LTDA', '5170005000')
;
INSERT INTO LOJA_BOLOS_VENDAS(ID_PRODUTO, ID_CLIENTE, QUANTIDADE, DATA_VENDA) VALUES
	(1, 1, 1, '2024-07-01'), -- Bolo de Chocolate para Ana Silva
	(2, 3, 2, '2024-07-01'), -- Bolo de Cenoura para Carla Dias
	(3, 2, 1, '2024-07-02'), -- Bolo de Morango para Bruno Costa
	(4, 5, 1, '2024-07-02'), -- Bolo Red Velvet para Eduardo Pereira
	(1, 4, 3, '2024-07-03'); -- Bolo de Chocolate para Daniela Souza
;

SELECT * FROM LOJA_BOLOS_PRODUTOS;
SELECT * FROM LOJA_BOLOS_CLIENTES;
SELECT * FROM LOJA_BOLOS_FORNECEDORES;
SELECT * FROM LOJA_BOLOS_VENDAS;