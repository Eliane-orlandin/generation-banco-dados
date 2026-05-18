CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    descricao VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    poderAtaque INT NOT NULL,
    poderDefesa INT NOT NULL,
    nivel INT NOT NULL,
    classeId BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (classeId) REFERENCES tb_classes(id)
);
ALTER TABLE tb_classes CHANGE COLUMN nome nomeClasse VARCHAR(50) NOT NULL;

INSERT INTO tb_classes (nomeClasse, tipo, descricao) VALUES
('Elétrico', 'Ataque Rápido', 'Pokémons que controlam raios e eletricidade.'),
('Fogo', 'Ataque Explosivo', 'Pokémons que dominam chamas e calor intenso.'),
('Água', 'Defesa Fluida', 'Pokémons que usam ataques aquáticos e cura.'),
('Planta', 'Regeneração', 'Pokémons que manipulam a natureza e energia vital.'),
('Psíquico', 'Controle Mental', 'Pokémons com poderes mentais e estratégicos.');

INSERT INTO tb_personagens (nome, poderAtaque, poderDefesa, nivel, classeId) VALUES
('Pikachu', 2200, 1500, 15, 1),
('Charizard', 3000, 1800, 25, 2),
('Squirtle', 1800, 1600, 10, 3),
('Bulbasaur', 1700, 1900, 12, 4),
('Mewtwo', 3500, 2000, 30, 5),
('Raichu', 2500, 1700, 20, 1),
('Vulpix', 2100, 1200, 14, 2),
('Gyarados', 2800, 2200, 28, 3);

SELECT * FROM tb_personagens WHERE poderAtaque > 2000;

SELECT * FROM tb_personagens WHERE poderDefesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT tb_personagens.nome, tb_personagens.nivel, tb_personagens.poderAtaque, tb_personagens.poderDefesa, tb_classes.nomeClasse, tb_classes.tipo, tb_classes.descricao
FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classeId = tb_classes.id;

SELECT tb_personagens.nome, tb_personagens.nivel, tb_personagens.poderAtaque, tb_personagens.poderDefesa, tb_classes.nomeClasse, tb_classes.tipo, tb_classes.descricao
FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classeId = tb_classes.id
WHERE tb_classes.nomeClasse = 'Elétrico';




