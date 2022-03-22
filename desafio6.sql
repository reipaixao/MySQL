CREATE VIEW faturamento_atual
AS
SELECT
ROUND(MIN(p.preco), 2) AS faturamento_minimo,
ROUND(MAX(p.preco), 2) AS faturamento_maximo,
ROUND(AVG(p.preco), 2) AS faturamento_medio,
ROUND(SUM(p.preco), 2) AS faturamento_total
FROM usuario AS u
INNER JOIN plano AS p ON p.plano_id = u.plano_id;
