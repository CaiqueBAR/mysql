-- INSERÇÕES PARA A TABELA USUARIOS
INSERT INTO USUARIOS (ID_USER, NOME_USER, CPF_USER, EMAIL, TELEFONE, DATA_NASC)
VALUES 
    (1, 'João das Neves', '123.456.789-00', 'joao.neves@example.com', '123456789', '1990-01-01'),
    (2, 'Maria do Céu', '987.654.321-00', 'maria.ceu@example.com', '987654321', '1995-05-15'),
    (3, 'Carlos Solares', '111.222.333-00', 'carlos.solares@example.com', '111222333', '1988-12-20'),
    (4, 'Ana do Mar', '444.555.666-00', 'ana.mar@example.com', '444555666', '1982-07-10'),
    (5, 'Pedro da Lua', '777.888.999-00', 'pedro.lua@example.com', '777888999', '1975-03-30');

-- INSERÇÕES PARA A TABELA CONTAS
INSERT INTO CONTAS (AGENCIA, CONTA, COD_BANCO, NOME_BNC, END_BNC, NUMEND_BNC, BAIRRO_BNC, CIDADE_BNC, UF_BNC, TELEFONE_BNC, EMAIL_BNC, USUARIO)
VALUES 
    ('1234', '567890', 1, 'Stars Bank', 'Rua do Cosmos', 100, 'Vila Astral', 'Céu Azul', 'AA', '111111111', 'contact@starsbank.com', 1),
    ('5678', '123456', 2, 'Winds Bank', 'Avenida dos Ventos', 200, 'Bairro dos Sussurros', 'Vento Livre', 'BB', '222222222', 'contact@windsbank.com', 2),
    ('9012', '345678', 3, 'Thunder Bank', 'Travessa dos Trovões', 300, 'Nuvens Douradas', 'Trovoada', 'CC', '333333333', 'contact@thunderbank.com', 3),
    ('3456', '789012', 4, 'Sun Bank', 'Rua Solar', 400, 'Bairro da Luminosidade', 'Luz do Dia', 'DD', '444444444', 'contact@sunbank.com', 4),
    ('7890', '123456', 5, 'Night Bank', 'Alameda Lunar', 500, 'Cidade Lunar', 'Sombra Lunar', 'EE', '555555555', 'contact@nightbank.com', 5);

-- INSERÇÕES PARA A TABELA TRANSACOES
INSERT INTO TRANSACOES (ID_TRANS, VALOR, NATUREZA, USUARIO, AGENCIA, CONTA, COD_BANCO)
VALUES 
    (1, 100.00, 'CREDITO', 1, '1234', '567890', 1),
    (2, 50.00, 'DEBITO', 2, '5678', '123456', 2),
    (3, 75.00, 'CREDITO', 3, '9012', '345678', 3),
    (4, 25.00, 'DEBITO', 4, '3456', '789012', 4),
    (5, 200.00, 'CREDITO', 5, '7890', '123456', 5);

-- INSERÇÕES PARA A TABELA SALDOS
INSERT INTO SALDOS (AGENCIA, CONTA, COD_BANCO, DATA_SALDO, HORA_SALDO)
VALUES 
    ('1234', '567890', 1, '2024-05-01', '14:30:00'),
    ('5678', '123456', 2, '2024-05-01', '17:00:00'),
    ('9012', '345678', 3, '2024-05-02', '19:30:00'),
    ('3456', '789012', 4, '2024-05-02', '21:00:00'),
    ('7890', '123456', 5, '2024-05-03', '14:00:00');

-- ATUALIZAÇÕES PARA A TABELA USUARIOS
UPDATE USUARIOS SET NOME_USER = 'João Neves' WHERE ID_USER = 1;
UPDATE USUARIOS SET EMAIL = 'joao.neves@newexample.com' WHERE ID_USER = 2;

-- ATUALIZAÇÕES PARA A TABELA CONTAS
UPDATE CONTAS SET NOME_BNC = 'Stars Banking' WHERE COD_BANCO = 1;
UPDATE CONTAS SET EMAIL_BNC = 'contact@starsbanking.com' WHERE COD_BANCO = 2;

-- ATUALIZAÇÕES PARA A TABELA TRANSACOES
UPDATE TRANSACOES SET VALOR = 120.00 WHERE ID_TRANS = 1;
UPDATE TRANSACOES SET NATUREZA = 'CREDIT' WHERE ID_TRANS = 2;

-- ATUALIZAÇÕES PARA A TABELA SALDOS
UPDATE SALDOS SET DATA_SALDO = '2024-05-05' WHERE AGENCIA = '1234' AND CONTA = '567890' AND COD_BANCO = 1;
UPDATE SALDOS SET HORA_SALDO = '15:00:00' WHERE AGENCIA = '5678' AND CONTA = '123456' AND COD_BANCO = 2;

SET FOREIGN_KEY_CHECKS = 0; #USADO APENAS PARA FINS DE APRENDIZADO - LIBERA AS RESTRIÇÕES DE CHAVE ESTRANGEIRA

-- EXCLUSÕES PARA A TABELA USUARIOS
DELETE FROM USUARIOS WHERE ID_USER = 3;
DELETE FROM USUARIOS WHERE ID_USER = 5;

-- EXCLUSÕES PARA A TABELA CONTAS
DELETE FROM CONTAS WHERE COD_BANCO = 3;
DELETE FROM CONTAS WHERE COD_BANCO = 5;

-- EXCLUSÕES PARA A TABELA TRANSACOES
DELETE FROM TRANSACOES WHERE ID_TRANS = 3;
DELETE FROM TRANSACOES WHERE ID_TRANS = 5;

-- EXCLUSÕES PARA A TABELA SALDOS
DELETE FROM SALDOS WHERE AGENCIA = '9012' AND CONTA = '345678' AND COD_BANCO = 3;
DELETE FROM SALDOS WHERE AGENCIA = '7890' AND CONTA = '123456' AND COD_BANCO = 5;

SET FOREIGN_KEY_CHEKS =  1;