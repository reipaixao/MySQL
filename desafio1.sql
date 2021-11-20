CREATE DATABASE IF NOT EXISTS SpotifyClone;

CREATE TABLE plano (
nome VARCHAR(30),
preco DECIMAL(4, 2),
plano_id INT PRIMARY KEY AUTO_INCREMENT
);

CREATE TABLE usuario (
nome VARCHAR(30),
idade INT,
plano_id INT,
usuario_id INT PRIMARY KEY AUTO_INCREMENT,
FOREIGN KEY (plano_id) REFERENCES plano(plano_id)
);

CREATE TABLE artista (
nome VARCHAR(30),
artista_id INT PRIMARY KEY AUTO_INCREMENT
);

CREATE TABLE album (
nome VARCHAR(30),
artista_id INT,
album_id INT PRIMARY KEY AUTO_INCREMENT,
FOREIGN KEY (artista_id) REFERENCES artista(artista_id)
);

CREATE TABLE musica (
nome VARCHAR(30),
album_id INT,
artista_id INT,
musica_id INT PRIMARY KEY AUTO_INCREMENT,
FOREIGN KEY (album_id) REFERENCES album(album_id),
FOREIGN KEY (artista_id) REFERENCES artista(artista_id)
);

CREATE TABLE historico (
usuario_id INT,
musica_id INT,
FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
FOREIGN KEY (musica_id) REFERENCES musica(musica_id)
);

CREATE TABLE seguidores (
usuario_id INT,
artista_id INT NOT NULL,
FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
FOREIGN KEY (artista_id) REFERENCES artista(artista_id)
);

INSERT INTO plano (nome, preco)
VALUES
('gratuito', 0),
('familiar', 7.99),
('universitário', 5.99);

INSERT INTO usuario (nome, idade, plano_id)
VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

INSERT INTO artista (nome)
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO album (nome, artista_id)
VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO musica (nome, album_id)
VALUES
('Soul For Us', 1),
('Reflections Of Magic', 1),
('Dance With Her Own', 1),
('Troubles Of My Inner Fire', 2),
('Time Fireworks', 2),
('Magic Circus', 3),
('Honey, So Do I', 3),
("Sweetie, Let's Go Wild", 3),
('She Knows', 3),
('Fantasy For Me', 4),
('Celebration Of More', 4),
('Rock His Everything', 4),
('Home Forever', 4),
('Diamond Power', 4),
("Honey, Let's Be Silly", 4),
('Thang Of Thunder', 5),
('Words Of Her Life', 5),
('Without My Streets', 5);

INSERT INTO historico (usuario_id, musica_id)
VALUES
(1, 1),
(1, 6),
(1, 14),
(1, 16),
(2, 13),
(2, 17),
(2, 2),
(2, 15),
(3, 4),
(3, 16),
(3, 6),
(4, 3),
(4, 18),
(4, 11);

INSERT INTO seguidores (usuario_id, artista_id)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);
