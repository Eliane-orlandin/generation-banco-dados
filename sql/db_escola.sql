CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes (
    id_estudante INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    data_nascimento DATE,
    turma VARCHAR(20),
    nota DECIMAL(3,1),
    data_matricula DATE
);

INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota, data_matricula)
VALUES
("Ana Silva", "2008-03-15", "9ºA", 8.5, "2023-02-10"),
("Bruno Costa", "2009-07-22", "8ºB", 6.8, "2023-02-12"),
("Carla Mendes", "2007-11-05", "1ºA", 7.2, "2022-03-05"),
("Daniel Souza", "2008-01-30", "9ºB", 9.0, "2023-01-20"),
("Eduarda Lima", "2010-04-18", "7ºA", 5.9, "2023-02-18"),
("Felipe Rocha", "2006-09-25", "2ºB", 7.8, "2022-08-15"),
("Gabriela Torres", "2009-02-11", "8ºA", 6.5, "2023-02-25"),
("Henrique Alves", "2007-06-09", "1ºB", 8.0, "2022-03-10"),
("Isabela Martins", "2008-12-03", "9ºA", 9.3, "2023-02-14"),
("João Pereira", "2009-05-27", "8ºA", 7.0, "2023-02-22"),
("Larissa Gomes", "2010-08-19", "7ºB", 6.2, "2023-02-28"),
("Marcos Oliveira", "2006-10-10", "2ºA", 8.7, "2022-07-20"),
("Natália Ribeiro", "2007-01-05", "1ºA", 9.1, "2022-03-08"),
("Otávio Fernandes", "2008-09-12", "9ºB", 5.5, "2023-01-25"),
("Patrícia Santos", "2009-03-29", "8ºB", 7.6, "2023-02-16");

INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota, data_matricula)
VALUES
("Renata Soares", "1998-03-17", "6ºA", 7.0, "2011-02-10"),
("Felipe Costa", "2009-07-22", "8ºB", 6.8, "2023-02-12"),
("Vinicius Mendes", "2007-11-05", "1ºA", 6.9, "2022-03-05");

SELECT * FROM tb_estudantes WHERE nota >= 7.0;

SELECT * FROM tb_estudantes WHERE nota < 7.0;

ALTER TABLE tb_estudantes CHANGE turma sala VARCHAR(20);
ALTER TABLE tb_estudantes MODIFY sala VARCHAR(40);

SELECT * FROM tb_estudantes;

