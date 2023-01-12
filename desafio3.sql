SELECT usuario AS usuario,
 COUNT(data_reproducao) AS qt_de_musicas_ouvidas, ROUND(SUM(duracao) / 60, 2) AS total_minutos FROM SpotifyClone.usuario, SpotifyClone.historico, SpotifyClone.cancoes
WHERE SpotifyClone.usuario.usuario_id = SpotifyClone.historico.usuario_id AND SpotifyClone.historico.cancoes_id = SpotifyClone.cancoes.cancoes_id
GROUP BY usuario
ORDER BY usuario;