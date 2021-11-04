DELIMITER $$
CREATE PROCEDURE albuns_do_artista (IN artist_name VARCHAR(40))
BEGIN
SELECT art.name artista, alb.title album
FROM album alb
INNER JOIN artist art ON art.artist_id = alb.artist_id WHERE art.`name` = artist_name
ORDER BY album;
END $$
DELIMITER ;
