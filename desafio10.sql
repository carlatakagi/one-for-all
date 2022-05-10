SELECT mus.musica_nome AS 'nome', 
	COUNT(historico_reproducao.musica_id) AS 'reproducoes'
FROM SpotifyClone.musicas mus
JOIN SpotifyClone.historico_reproducao
ON mus.musica_id = historico_reproducao.musica_id
JOIN SpotifyClone.usuario us
ON us.usuario_id = historico_reproducao.usuario_id
JOIN SpotifyClone.plano pl
ON pl.plano_id = us.plano_id
WHERE pl.plano_nome = 'gratuito' OR pl.plano_nome = 'pessoal'
GROUP BY mus.musica_nome
ORDER BY mus.musica_nome;