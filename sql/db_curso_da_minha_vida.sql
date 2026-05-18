CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT,
    nomeCategoria VARCHAR(50) NOT NULL,
    areaConhecimento VARCHAR(50) NOT NULL,
    descricao VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE tb_cursos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    duracao INT NOT NULL,
    preco DECIMAL(7,2) NOT NULL,
    instrutor VARCHAR(100),
    categoria_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nomeCategoria, areaConhecimento, descricao) VALUES
('Programação', 'Tecnologia', 'Cursos voltados para desenvolvimento de software.'),
('Design', 'Criatividade', 'Cursos de design gráfico e UX/UI.'),
('Marketing', 'Negócios', 'Cursos de marketing digital e estratégias de vendas.'),
('Idiomas', 'Comunicação', 'Cursos de idiomas para diferentes níveis.'),
('Finanças', 'Economia', 'Cursos sobre gestão financeira e investimentos.');

INSERT INTO tb_cursos (nome, duracao, preco, instrutor, categoria_id) VALUES
('Java Completo', 80, 950.00, 'Carlos Silva', 1),
('Python para Iniciantes', 60, 500.00, 'Ana Souza', 1),
('Design Gráfico com Photoshop', 40, 650.00, 'Mariana Lima', 2),
('UX/UI Avançado', 50, 850.00, 'João Mendes', 2),
('Marketing Digital', 45, 700.00, 'Fernanda Alves', 3),
('Inglês Intermediário', 60, 600.00, 'Lucas Pereira', 4),
('Finanças Pessoais', 30, 400.00, 'Roberta Costa', 5),
('Investimentos Inteligentes', 50, 1000.00, 'Paulo Andrade', 5);

SELECT * FROM tb_cursos WHERE preco > 500.00;

SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos WHERE nome LIKE '%J%';

SELECT tb_cursos.nome, tb_cursos.duracao, tb_cursos.preco, tb_cursos.instrutor,
       tb_categorias.nomeCategoria, tb_categorias.areaConhecimento
FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.categoria_id = tb_categorias.id;

SELECT tb_cursos.nome, tb_cursos.duracao, tb_cursos.preco, tb_cursos.instrutor,
       tb_categorias.nomeCategoria, tb_categorias.areaConhecimento
FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.categoria_id = tb_categorias.id
WHERE tb_categorias.nomeCategoria = 'Programação';
