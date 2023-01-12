SELECT cancoes AS cancao, COUNT(his.cancoes_id) AS reproducoes FROM SpotifyClone.historico AS his
INNER JOIN SpotifyClone.cancoes AS songs
ON songs.cancoes_id = his.cancoes_id
GROUP BY his.cancoes_id
ORDER BY reproducoes DESC,cancoes LIMIT 2;