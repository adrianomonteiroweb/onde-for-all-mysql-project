CREATE VIEW historico_reproducao_usuarios AS
SELECT usu.name AS usuario, son.title AS nome
FROM history AS his
INNER JOIN user AS usu ON usu.user_id = his.user_id
INNER JOIN song AS son ON son.song_id = his.song_id
ORDER BY usuario, nome;
