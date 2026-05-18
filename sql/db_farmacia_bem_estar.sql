CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

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
    marca VARCHAR(50) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    quantidade INT NOT NULL,
    categoria_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nomeCategoria, tipoProduto, descricao) VALUES
('Medicamentos', 'Controlado', 'Remédios com prescrição médica.'),
('Cosméticos', 'Beleza', 'Produtos para cuidados pessoais e estética.'),
('Vitaminas', 'Suplemento', 'Suplementos vitamínicos e minerais.'),
('Higiene', 'Pessoal', 'Produtos de higiene diária.'),
('Infantil', 'Cuidados', 'Produtos voltados para crianças e bebês.');

INSERT INTO tb_produtos (nome, marca, preco, quantidade, categoria_id) VALUES
('Paracetamol 500mg', 'Medley', 12.00, 100, 1),
('Ibuprofeno 400mg', 'Neo Química', 18.00, 80, 1),
('Shampoo Anticaspa', 'Clear', 55.00, 50, 2),
('Creme Hidratante', 'Nivea', 60.00, 40, 2),
('Vitamina C 1000mg', 'Sundown', 75.00, 30, 3),
('Sabonete Líquido', 'Protex', 25.00, 60, 4),
('Pomada para Assadura', 'Hipoglós', 35.00, 45, 5),
('Protetor Solar FPS 50', 'La Roche-Posay', 95.00, 25, 2);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT tb_produtos.nome, tb_produtos.marca, tb_produtos.preco, tb_produtos.quantidade, 
       tb_categorias.nomeCategoria, tb_categorias.tipoProduto
FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

SELECT tb_produtos.nome, tb_produtos.marca, tb_produtos.preco, tb_produtos.quantidade, 
       tb_categorias.nomeCategoria, tb_categorias.tipoProduto
FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.nomeCategoria = 'Cosméticos';
