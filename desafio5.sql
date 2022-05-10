SELECT mus.musica_nome AS 'cancao',
	COUNT(historico_reproducao.data_reproducao) AS 'reproducoes'
FROM SpotifyClone.musicas mus
JOIN SpotifyClone.historico_reproducao
ON historico_reproducao.musica_id = mus.musica_id
GROUP BY historico_reproducao.musica_id
ORDER BY reproducoes DESC, mus.musica_nome
LIMIT 2;