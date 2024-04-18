CREATE TABLE livro.editora(
	cd_editora int NOT NULL PRIMARY KEY,
    nome_editora char(50) NOT NULL
);

CREATE TABLE livro.genero(
	cd_genero int NOT NULL PRIMARY KEY,
    nome_genero char(50) NOT NULL
);

CREATE TABLE livro.titulo(
	isbn bigint NOT NULL PRIMARY KEY,
	titulo char(50) NOT NULL,
	cd_editora int NOT NULL,
	cd_genero int NOT NULL,
	preco decimal(15,2) NOT NULL,
	KEY cd_editora (cd_editora),
	KEY cd_genero (cd_genero),
	CONSTRAINT cd_editora FOREIGN KEY (cd_editora) REFERENCES editora (cd_editora),
	CONSTRAINT cd_genero FOREIGN KEY (cd_genero) REFERENCES genero (cd_genero)
);

INSERT INTO livro.editora (cd_editora, nome_editora)
VALUES
(1, 'Companhia da Letras'),
(2, 'Aleph'),
(3, 'Suma'),
(4, 'Editora Intrínseca'),
(5, 'Grupo Editorial Record'),
(6, 'Editora Rocco'),
(7, 'Globo Livros'),
(8, 'Darkside Books'),
(9, 'Harper Collins'),
(10, 'Editora Arqueiro');

SELECT *
FROM livro.editora;

INSERT INTO livro.genero (cd_genero, nome_genero)
VALUES
(1, 'Religioso'),
(2, 'Conto'),
(3, 'Romance'),
(4, 'Didático'),
(5, 'Infantis'),
(6, 'Gibi'),
(7, 'Poesia'),
(8, 'Autobiografia'),
(9, 'Policial'),
(10, 'Ficção');

SELECT *
FROM livro.genero;

INSERT INTO livro.titulo (isbn, titulo, cd_editora, cd_genero, preco)
VALUES
('9788535932790', 'Dom Casmurro', 1, 3, 29.90),
('9788576574717', '1984', 2, 10, 39.90),
('9788541002203', 'It - A Coisa', 4, 9, 49.90),
('9788532529517', 'O Pequeno Príncipe', 5, 5, 19.90),
('9788573027220', 'O Guia do Mochileiro das Galáxias', 6, 10, 34.90),
('9788532530841', 'A Cabana', 3, 3, 39.90),
('9788595083088', 'A Revolução dos Bichos', 5, 10, 29.90),
('9788580418334', 'O Poder do Hábito', 9, 4, 44.90),
('9788535909877', 'O Hobbit', 7, 10, 49.90),
('9788535912501', 'O Silmarillion', 7, 3, 59.90);

SELECT *
FROM livro.titulo;
