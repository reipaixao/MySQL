CREATE VIEW top_3_artistas
AS
SELECT a.nome AS artista, COUNT(*) AS seguidores 
FROM SpotifyClone.seguidores AS s
INNER JOIN SpotifyClone.artista AS a ON a.artista_id = s.artista_id
GROUP BY a.nome
ORDER BY seguidores DESC, artista ASC LIMIT 3;
