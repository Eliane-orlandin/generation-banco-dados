CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

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
    preco DECIMAL(7,2) NOT NULL,
    quantidade INT NOT NULL,
    categoria_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nomeCategoria, tipoProduto, descricao) VALUES
('Hidráulica', 'Tubos e conexões', 'Produtos para instalações hidráulicas.'),
('Elétrica', 'Fios e cabos', 'Produtos para instalações elétricas.'),
('Ferramentas', 'Manuais e elétricas', 'Ferramentas para construção e reparo.'),
('Madeiras', 'Estrutural', 'Madeiras para obras e acabamentos.'),
('Tintas', 'Acabamento', 'Tintas e materiais de pintura.');

INSERT INTO tb_produtos (nome, marca, preco, quantidade, categoria_id) VALUES
('Cano PVC 100mm', 'Tigre', 120.00, 50, 1),
('Joelho PVC 50mm', 'Amanco', 15.00, 200, 1),
('Fio Elétrico 2,5mm', 'Pirelli', 80.00, 100, 2),
('Interruptor Simples', 'Schneider', 25.00, 150, 2),
('Martelo de Unha', 'Tramontina', 70.00, 75, 3),
('Serra Circular', 'Bosch', 350.00, 20, 3),
('Madeira Pinus 2x4', 'Madeireira Sul', 95.00, 40, 4),
('Tinta Acrílica 18L', 'Suvinil', 150.00, 30, 5);

SELECT * FROM tb_produtos WHERE preco > 100.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT tb_produtos.nome, tb_produtos.marca, tb_produtos.preco, tb_produtos.quantidade,
       tb_categorias.nomeCategoria, tb_categorias.tipoProduto
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT tb_produtos.nome, tb_produtos.marca, tb_produtos.preco, tb_produtos.quantidade,
       tb_categorias.nomeCategoria, tb_categorias.tipoProduto
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.nomeCategoria = 'Hidráulica';
