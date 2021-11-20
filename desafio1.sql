DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

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
