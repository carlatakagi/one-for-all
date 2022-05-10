SELECT art.artista_nome AS 'artista', alb.album_nome AS 'album'
FROM SpotifyClone.artista art
JOIN SpotifyClone.album alb
ON alb.artista_id = art.artista_id
WHERE art.artista_nome = 'Walter Phoenix';