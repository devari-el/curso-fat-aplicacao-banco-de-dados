create database DB_SDE20_ARIEL_RANDIS;

use DB_SDE20_ARIEL_RANDIS;

create table PRODUTOS
	(id_produto INT auto_increment PRIMARY KEY,
    nome_produto VARCHAR(100),
    preco_produto FLOAT
    );
    
create table VENDAS
	(id_venda INT auto_increment PRIMARY KEY,
    id_produto INT,
    preco_venda FLOAT,
    data_venda DATE,
    FOREIGN KEY (id_produto) REFERENCES PRODUTOS(id_produto)
    );
    
create table FORNECEDORES
	(id_fornecedor INT auto_increment PRIMARY KEY,
    nome_fornecedor VARCHAR(100),
    email_fornecedor VARCHAR(50),
    nome_responsavel VARCHAR(100)
    );
    
INSERT INTO PRODUTOS (nome_produto, preco_produto) VALUES
('Notebook Gamer X', 5500.00),
('Smartphone Ultra Pro', 3200.00),
('Monitor LED 27 polegadas', 1250.00),
('Teclado Mecânico RGB', 450.00),
('Mouse Sem Fio Ergonômico', 180.00),
('Webcam Full HD', 299.90),
('Fone de Ouvido Bluetooth', 350.00),
('SSD 1TB NVMe', 680.00),
('Roteador Wi-Fi 6', 520.00),
('Impressora Multifuncional', 890.00);

INSERT INTO FORNECEDORES (nome_fornecedor, email_fornecedor, nome_responsavel) VALUES
('TechSuprimentos S.A.', 'contato@techsuprimentos.com.br', 'Ana Paula Costa'),
('Eletronica Global Ltda.', 'vendas@eglobal.com', 'Roberto Almeida'),
('InfoComponentes Dist.', 'comercial@infocomp.net', 'Carla Mendes'),
('Conectividade Total', 'atendimento@conetotal.com', 'Fernando Souza'),
('Perifericos Premium', 'sac@peripremium.com.br', 'Juliana Lima'),
('Solucoes Digitais Inc.', 'info@soldigital.com', 'Pedro Henrique'),
('Mundo Tech Distribuidora', 'distrib@mundotech.com', 'Mariana Gomes'),
('Hardware Express', 'contato@hardexp.net', 'Ricardo Barros'),
('Redes e Cia', 'comercial@redesecia.com', 'Patrícia Nunes'),
('Office Max Suprimentos', 'vendas@officemax.com', 'Gustavo Santos');

INSERT INTO VENDAS (id_produto, preco_venda, data_venda) VALUES
(1, 5500.00, '2024-05-01'),
(2, 3100.00, '2024-05-02'),
(3, 1250.00, '2024-05-03'),
(4, 450.00, '2024-05-04'),
(5, 180.00, '2024-05-05'),
(1, 5300.00, '2024-05-06'),
(7, 350.00, '2024-05-07'),
(8, 680.00, '2024-05-08'),
(2, 3200.00, '2024-05-09'),
(10, 890.00, '2024-05-10');

SELECT nome_produto, preco_produto FROM PRODUTOS WHERE preco_produto < 300;

CREATE USER 'ALUNO_ARIEL_RANDIS'@'%' IDENTIFIED BY '190@Banco';

SELECT User, authentication_string FROM mysql.user WHERE USER = 'ALUNO_ARIEL_RANDIS';

GRANT ALL PRIVILEGES ON DB_SDE20_ARIEL_RANDIS.FORNECEDORES TO 'ALUNO_ARIEL_RANDIS'@'%';
GRANT ALL PRIVILEGES ON DB_SDE20_ARIEL_RANDIS.PRODUTOS TO 'ALUNO_ARIEL_RANDIS'@'%';
GRANT ALL PRIVILEGES ON DB_SDE20_ARIEL_RANDIS.VENDAS TO 'ALUNO_ARIEL_RANDIS'@'%';

FLUSH PRIVILEGES;