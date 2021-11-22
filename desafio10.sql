DELIMITER $$;
CREATE FUNCTION quantidade_musicas_no_historico(user_id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE result INT;
SELECT COUNT(*) FROM SpotifyClone.historico AS h
WHERE h.usuario_id = user_id INTO result;
RETURN result;
END $$;
DELIMITER ;
