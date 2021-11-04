CREATE VIEW top_3_artistas AS
SELECT art.name AS artista, COUNT(*) AS seguidores FROM followers AS fol
INNER JOIN artist AS art ON art.artist_id = fol.artist_id
GROUP BY art.name
ORDER BY seguidores DESC, artista ASC LIMIT 3;
