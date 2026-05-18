CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT,
    nomeCategoria VARCHAR(50) NOT NULL,
    tipoMassa VARCHAR(50) NOT NULL,
    descricao VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    tamanho VARCHAR(20) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    ingredientes VARCHAR(255),
    categoriaId BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoriaId) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nomeCategoria, tipoMassa, descricao) VALUES
('Tradicional', 'Fina', 'Pizzas clássicas com sabores populares.'),
('Premium', 'Grossa', 'Pizzas especiais com ingredientes nobres.'),
('Vegetariana', 'Integral', 'Pizzas sem carne, com vegetais frescos.'),
('Doce', 'Fina', 'Pizzas doces com frutas e chocolate.'),
('Vegana', 'Integral', 'Pizzas sem produtos de origem animal.');

INSERT INTO tb_pizzas (nome, tamanho, preco, ingredientes, categoriaId) VALUES
('Calabresa', 'Grande', 45.00, 'Calabresa, cebola, mussarela', 1),
('Frango com Catupiry', 'Grande', 55.00, 'Frango, catupiry, milho', 1),
('Quatro Queijos', 'Média', 60.00, 'Mussarela, parmesão, gorgonzola, provolone', 2),
('Marguerita', 'Média', 40.00, 'Tomate, manjericão, mussarela', 1),
('Chocolate', 'Média', 50.00, 'Chocolate ao leite, morango', 4),
('Brócolis com Alho', 'Grande', 65.00, 'Brócolis, alho, azeite, mussarela', 3),
('Vegana Especial', 'Grande', 70.00, 'Tomate seco, rúcula, tofu', 5),
('Banana com Canela', 'Média', 48.00, 'Banana, canela, leite condensado', 4);

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT tb_pizzas.nome, tb_pizzas.tamanho, tb_pizzas.preco, tb_categorias.nomeCategoria, tb_categorias.tipoMassa
FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoriaId = tb_categorias.id;

SELECT tb_pizzas.nome, tb_pizzas.tamanho, tb_pizzas.preco, tb_categorias.nomeCategoria, tb_categorias.tipoMassa
FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoriaId = tb_categorias.id
WHERE tb_categorias.nomeCategoria = 'Doce';






