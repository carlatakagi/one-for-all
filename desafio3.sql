SELECT us.usuario_nome AS 'usuario', 
	COUNT(historico_reproducao.musica_id) AS 'qtde_musicas_ouvidas',
  ROUND(SUM(musicas.duracao_segundos)/60, 2) AS 'total_minutos'
FROM SpotifyClone.usuario us
JOIN SpotifyClone.historico_reproducao
ON us.usuario_id = historico_reproducao.usuario_id
JOIN SpotifyClone.musicas
ON historico_reproducao.musica_id = musicas.musica_id
GROUP BY us.usuario_nome ORDER BY us.usuario_nome;
 