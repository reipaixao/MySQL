CREATE VIEW top_2_hits_do_momento
AS
SELECT m.nome AS cancao, COUNT(*) AS reproducoes
FROM SpotifyClone.historico AS h
INNER JOIN SpotifyClone.musica AS m ON m.musica_id = h.musica_id
GROUP BY m.nome
ORDER BY reproducoes DESC, cancao LIMIT 2;
