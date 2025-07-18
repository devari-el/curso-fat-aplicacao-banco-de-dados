USE DB_SDE20_ARIEL_RANDIS;

SELECT * FROM LANCHONETE_PRODUTOS;
SELECT * FROM LANCHONETE_PEDIDOS;
SELECT * FROM LANCHONETE_FORNECEDORES;
SELECT * FROM LANCHONETE_CLIENTES;

SELECT NOME, PRECO FROM LANCHONETE_PRODUTOS
WHERE PRECO <= '18.00';

/*TRAZ  O NOME E TELEFONE 
DA TABELA DE CLIENTES
QUE COMEÇAM COM DDD11*/
SELECT NOME, TELEFONE
FROM LANCHONETE_CLIENTES
WHERE TELEFONE 
LIKE '11%';

SELECT *
FROM LANCHONETE_FORNECEDORES
WHERE NOME = 'Hortifruti Verde';

SELECT *
FROM LANCHONETE_PEDIDOS
WHERE DATA_PEDIDO = '2024-07-04'
AND ID_CLIENTE = '7';

SELECT ID_CLIENTE, DATA_PEDIDO
FROM LANCHONETE_PEDIDOS
WHERE DATA_PEDIDO
BETWEEN '2024-07-01' AND '2024-07-03';