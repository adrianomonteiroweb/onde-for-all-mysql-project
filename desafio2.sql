CREATE VIEW estatisticas_musicais
AS
SELECT
(SELECT COUNT(song_id) FROM spotifyclone.songs) AS 'cancoes',
(SELECT COUNT(artist_id) FROM spotifyclone.artists) AS 'artistas',
(SELECT COUNT(album_id) FROM spotifyclone.albums) AS 'albuns';