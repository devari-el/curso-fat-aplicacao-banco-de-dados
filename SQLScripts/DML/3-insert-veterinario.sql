USE DB_SDE20_ARIEL_RANDIS;

INSERT INTO VET_CLIENTES (NOME, TELEFONE, EMAIL, CIDADE, UF) VALUES
('Ana Silva', '(11) 98765-4321', 'ana.silva@email.com', 'São Paulo', 'SP'),
('Bruno Costa', '(21) 91234-5678', 'bruno.costa@email.com', 'Rio de Janeiro', 'RJ'),
('Carla Dias', '(11) 95555-1234', 'carla.dias@email.com', 'Campinas', 'SP'),
('Daniel Martins', '(31) 98888-7777', 'daniel.martins@email.com', 'Belo Horizonte', 'MG'),
('Eduarda Ferreira', '(21) 94321-8765', 'eduarda.ferreira@email.com', 'Niterói', 'RJ'),
('Fábio Souza', '(11) 97777-8888', 'fabio.souza@email.com', 'São José dos Campos', 'SP'),
('Gabriela Lima', '(41) 96543-2109', 'gabriela.lima@email.com', 'Curitiba', 'PR'),
('Heitor Oliveira', '(11) 91111-2222', 'heitor.oliveira@email.com', 'Santos', 'SP'),
('Isabela Pereira', '(21) 93333-4444', 'isabela.pereira@email.com', 'Duque de Caxias', 'RJ'),
('João Santos', '(31) 92222-3333', 'joao.santos@email.com', 'Uberlândia', 'MG');

INSERT INTO VET_PETS (NOME, TIPO_PET, IDADE, ID_CLIENTE) VALUES
('Thor', 'Cachorro', 5, 1),
('Mia', 'Gato', 2, 1),
('Loki', 'Gato', 3, 2),
('Nina', 'Cachorro', 7, 3),
('Fred', 'Cachorro', 1, 4),
('Luna', 'Gato', 4, 5),
('Bolinha', 'Cachorro', 6, 5),
('Simba', 'Gato', 2, 6),
('Mel', 'Cachorro', 8, 8),
('Zeca', 'Gato', 1, 9);

INSERT INTO VET_CONSULTAS (ID_ANIMAL, DATA_CONSULTA, MOTIVO, VALOR) VALUES
(1, '2024-05-10', 'Vacinação Anual', 150.00),
(1, '2024-06-22', 'Alergia na pele', 180.50),
(2, '2024-05-15', 'Check-up de rotina', 120.00),
(3, '2024-05-20', 'Problema digestivo', 200.00),
(3, '2024-07-01', 'Consulta de retorno', 100.00),
(4, '2024-06-05', 'Limpeza de tártaro', 250.75),
(5, '2024-06-11', 'Castração', 450.00),
(6, '2024-06-18', 'Exames de sangue', 220.00),
(6, '2024-06-30', 'Acompanhamento', 110.00),
(8, '2024-07-03', 'Corte de unhas e banho', 95.00);