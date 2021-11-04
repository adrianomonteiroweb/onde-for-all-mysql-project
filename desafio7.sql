CREATE VIEW perfil_artistas AS
SELECT
art.name AS artista,
alb.title AS album,
(SELECT COUNT(*) FROM followers WHERE artist_id = art.artist_id) AS seguidores
FROM album AS alb
INNER JOIN artist AS art ON art.artist_id = alb.artist_id
ORDER BY seguidores DESC, artista ASC, album ASC;
