SELECT us.usuario_nome AS 'usuario',
IF(
	YEAR(MAX(historico_reproducao.data_reproducao)) = 2021, 'Usuário ativo', 'Usuário inativo'
) AS 'condicao_usuario'
FROM SpotifyClone.usuario us
JOIN SpotifyClone.historico_reproducao
ON historico_reproducao.usuario_id = us.usuario_id
GROUP BY us.usuario_nome ORDER BY us.usuario_nome;