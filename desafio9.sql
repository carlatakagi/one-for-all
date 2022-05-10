SELECT COUNT(historico_reproducao.musica_id) AS 'quantidade_musicas_no_historico'
FROM SpotifyClone.historico_reproducao
JOIN SpotifyClone.usuario us
ON us.usuario_id = historico_reproducao.usuario_id
WHERE us.usuario_nome = 'Bill';