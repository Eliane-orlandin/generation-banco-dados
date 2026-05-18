CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT,
    nomeCategoria VARCHAR(50) NOT NULL,
    tipoProduto VARCHAR(50) NOT NULL,
    descricao VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    peso DECIMAL(6,2) NOT NULL,
    origem VARCHAR(50),
    categoria_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nomeCategoria, tipoProduto, descricao) VALUES
('Aves', 'Carne Branca', 'Produtos derivados de frango e peru.'),
('Bovinos', 'Carne Vermelha', 'Cortes de carne bovina.'),
('Suínos', 'Carne Vermelha', 'Produtos derivados de porco.'),
('Peixes', 'Carne Branca', 'Peixes frescos e congelados.'),
('Frutas', 'Vegetal', 'Frutas frescas e tropicais.');

INSERT INTO tb_produtos (nome, preco, peso, origem, categoria_id) VALUES
('Filé de Frango', 35.00, 1.00, 'Granja Boa Vista', 1),
('Picanha Bovina', 120.00, 1.20, 'Fazenda Rio Verde', 2),
('Costela Suína', 80.00, 1.50, 'Sítio São João', 3),
('Tilápia Fresca', 55.00, 1.00, 'Pesqueiro Azul', 4),
('Banana Prata', 10.00, 1.00, 'Plantação Tropical', 5),
('Maçã Fuji', 12.00, 1.00, 'Pomar Feliz', 5),
('Linguiça Toscana', 50.00, 1.00, 'Sítio São João', 3),
('Alcatra Bovina', 95.00, 1.00, 'Fazenda Rio Verde', 2);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT tb_produtos.nome, tb_produtos.preco, tb_produtos.peso, tb_produtos.origem,
       tb_categorias.nomeCategoria, tb_categorias.tipoProduto
FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

SELECT tb_produtos.nome, tb_produtos.preco, tb_produtos.peso, tb_produtos.origem,
       tb_categorias.nomeCategoria, tb_categorias.tipoProduto
FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.nomeCategoria = 'Aves';
