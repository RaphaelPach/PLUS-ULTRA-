SELECT art.nome_artista AS artista, alb.album_nome AS album, COUNT(art.artista_id) AS seguidores FROM SpotifyClone.album As alb
LEFT JOIN SpotifyClone.artista AS art
ON art.artista_id = alb.artista_id
LEFT JOIN SpotifyClone.seguindo_artistas AS follow
ON follow.artista_id = art.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album; 