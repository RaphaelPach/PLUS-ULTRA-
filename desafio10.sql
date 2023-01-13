SELECT DISTINCT song.cancoes AS nome, COUNT(song.cancoes) AS reproducoes FROM SpotifyClone.cancoes AS song
INNER JOIN SpotifyClone.plano AS plan
ON plan.plano = "gratuito" OR plan.plano = "pessoal"
INNER JOIN SpotifyClone.usuario AS menber
ON plan.plano_id = menber.plano_id 
INNER JOIN SpotifyClone.historico AS hist
ON menber.usuario_id = hist.usuario_id
WHERE song.cancoes_id = hist.cancoes_id 
GROUP BY song.cancoes
ORDER BY nome;