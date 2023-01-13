SELECT elis.nome_artista AS artista,
alb.album_nome AS album FROM SpotifyClone.artista AS elis
INNER JOIN SpotifyClone.album AS alb
ON elis.artista_id = alb.artista_id AND elis.nome_artista = 'Elis Regina'; 