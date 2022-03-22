DELIMITER $$
CREATE PROCEDURE albuns_do_artista (IN artista VARCHAR(30))
BEGIN
SELECT ar.nome AS artista, al.nome AS album
FROM album AS al
INNER JOIN artista AS ar ON ar.artista_id = al.artista_id WHERE ar.nome = artista
ORDER BY album;
END $$
DELIMITER ;
