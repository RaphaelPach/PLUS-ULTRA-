SELECT COUNT(nome.usuario) AS quantidade_musicas_no_historico FROM SpotifyClone.usuario AS nome
INNER JOIN SpotifyClone.historico AS hist
ON nome.usuario_id = hist.usuario_id AND nome.usuario = 'Barbara liskov';
