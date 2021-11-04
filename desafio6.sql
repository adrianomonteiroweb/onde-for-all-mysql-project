CREATE VIEW faturamento_atual AS
SELECT
ROUND(MIN(acc.price), 2) AS faturamento_minimo,
ROUND(MAX(acc.price), 2) AS faturamento_maximo,
ROUND(AVG(acc.price), 2) AS faturamento_medio,
ROUND(SUM(acc.price), 2) AS faturamento_total
FROM `user` AS us
INNER JOIN account_plan AS acc ON acc.account_id = us.account_id;
