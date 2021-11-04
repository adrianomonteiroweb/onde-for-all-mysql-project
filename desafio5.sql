CREATE VIEW top_2_hits_do_momento AS
SELECT son.title AS cancao, COUNT(*) AS reproducoes FROM `history` AS his
INNER JOIN song AS s ON son.song_id = his.song_id
GROUP BY son.title
ORDER BY reproducoes DESC, cancao LIMIT 2;
