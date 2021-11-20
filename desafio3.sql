CREATE VIEW historico_reproducao_usuarios 
AS
SELECT u.nome AS usuario, m.nome AS nome
FROM SpotifyClone.historico AS h
INNER JOIN SpotifyClone.usuario AS u ON u.usuario_id = h.usuario_id
INNER JOIN SpotifyClone.musica AS m ON m.musica_id = h.musica_id
ORDER BY usuario, nome;
