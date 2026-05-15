CREATE DATABASE db_RH_empresa; -- cria o banco de dados

USE db_RH_empresa; -- indica qual banco de dados vamos manipular

CREATE TABLE Colaboradores (
    id_colaborador INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    cargo VARCHAR(50),
    departamento VARCHAR(50),
    salario DECIMAL(10,2),
    data_admissao DATE
);

INSERT INTO Colaboradores (nome, cargo, departamento, salario, data_admissao)
VALUES
("Ana Souza", "Analista de RH", "Recursos Humanos", 3500.00, "2022-03-15"),
("Carlos Lima", "Desenvolvedor", "TI", 4800.00, "2021-07-01"),
("Mariana Alves", "Assistente Administrativo", "Administração", 2500.00, "2023-01-10"),
("João Pereira", "Gerente de Projetos", "TI", 7200.00, "2020-09-20"),
("Fernanda Costa", "Contadora", "Financeiro", 4000.00, "2022-11-05");

SELECT * FROM Colaboradores WHERE salario > 3000.00;

SELECT * FROM Colaboradores WHERE salario < 3000.00;

UPDATE Colaboradores SET salario = 8000.00 WHERE id_colaborador = 4;

SELECT * FROM Colaboradores;