CREATE VIEW historico_reproducao_usuarios AS
SELECT usu.name AS usuario, son.title AS nome
FROM histories his
INNER JOIN users AS usu ON usu.user_id = his.user_id
INNER JOIN songs AS son ON son.song_id = his.song_id
ORDER BY usuario, nome;
