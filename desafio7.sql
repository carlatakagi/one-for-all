SELECT art.artista_nome AS 'artista', alb.album_nome AS 'album',
	COUNT(usuario_seguindo_artista.artista_id) AS 'seguidores'
FROM SpotifyClone.artista art
JOIN SpotifyClone.album alb
ON art.artista_id = alb.artista_id
JOIN SpotifyClone.usuario_seguindo_artista
ON usuario_seguindo_artista.artista_id = alb.artista_id
GROUP BY art.artista_nome, alb.album_nome
ORDER BY seguidores DESC, artista, album;