SELECT ROUND(MIN(valor), 2) AS faturamento_minimo,
MAX(valor) AS faturamento_maximo, ROUND(AVG(valor), 2 ) AS faturamento_medio, ROUND(SUM(valor), 2) AS faturamento_total FROM SpotifyClone.plano AS plan
INNER JOIN SpotifyClone.usuario AS menber
ON plan.plano_id = menber.plano_id; 
