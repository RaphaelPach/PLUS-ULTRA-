SELECT usuario AS usuario,
IF(YEAR(MAX(data_reproducao)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM SpotifyClone.usuario, SpotifyClone.historico
WHERE SpotifyClone.usuario.usuario_id = SpotifyClone.historico.usuario_id
GROUP BY usuario
ORDER BY usuario;