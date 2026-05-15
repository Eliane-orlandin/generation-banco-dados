CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR(100),
    categoria VARCHAR(50),
    preco DECIMAL(8,2),
    estoque INT
);

INSERT INTO tb_produtos (nome_produto, categoria, preco, estoque)
VALUES
("Smartphone Galaxy S23", "Eletrônicos", 4999.90, 25),
("Notebook Dell Inspiron", "Informática", 3899.00, 15),
("Fone Bluetooth JBL", "Acessórios", 299.90, 50),
("Camiseta Nike Dry-Fit", "Vestuário", 129.90, 100),
("Tênis Adidas Ultraboost", "Calçados", 699.90, 40),
("Relógio Smartwatch Amazfit", "Eletrônicos", 499.00, 30),
("Mouse Gamer Logitech", "Informática", 159.90, 60),
("Teclado Mecânico Redragon", "Informática", 289.90, 35),
("Monitor LG 24 Polegadas", "Eletrônicos", 899.00, 20),
("Caixa de Som Bluetooth Sony", "Eletrônicos", 349.90, 45),
("Jaqueta Jeans Levi’s", "Vestuário", 249.90, 25),
("Bolsa Feminina Couro", "Acessórios", 199.90, 40),
("Sandália Havaianas", "Calçados", 49.90, 200),
("Carregador Portátil Xiaomi", "Eletrônicos", 159.90, 70),
("Tablet Samsung Galaxy Tab A9", "Eletrônicos", 1299.00, 18),
("Headset Gamer HyperX", "Acessórios", 499.90, 22),
("Cadeira Gamer ThunderX3", "Móveis", 1199.00, 10),
("Ventilador Arno Turbo", "Eletrodomésticos", 249.90, 35),
("Liquidificador Philips Walita", "Eletrodomésticos", 299.90, 28),
("Smart TV LG 50 Polegadas", "Eletrônicos", 2799.00, 12);

SELECT * FROM tb_produtos WHERE preco > 500.00;

SELECT * FROM tb_produtos WHERE preco < 500.00;

UPDATE tb_produtos SET preco = 389.90 WHERE id_produto = 8;
UPDATE tb_produtos SET nome_produto = "Smartphone Galaxy S23 Maxx" WHERE id_produto = 1;
UPDATE tb_produtos SET estoque = 42 WHERE id_produto = 6;

SELECT * FROM tb_produtos

