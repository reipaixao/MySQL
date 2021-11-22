CREATE VIEW perfil_artistas
AS
SELECT
ar.nome AS artista,
al.nome AS album,
(SELECT COUNT(*) FROM seguidores WHERE artista_id = ar.artista_id) AS seguidores
FROM album AS al
INNER JOIN SpotifyClone.artista AS ar ON ar.artista_id = al.artista_id
ORDER BY seguidores DESC, artista ASC, album ASC;
