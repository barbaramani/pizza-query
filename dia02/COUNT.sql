-- Databricks notebook source
-- MAGIC %md
-- MAGIC - Comandos - executados resultam efeitos ( SELECT, INSERT, UPDATE, DELETE, CREATE,TABLE, GRANT) - funcionam sozinhos.
-- MAGIC - Clausulas - FROM, WHERE, GROUP BY

-- COMMAND ----------

SELECT count(*), --linhas não nulas
       count(1),  -- não tem diferença, pois verifica também linhas não nulas
       count(idPedido)
FROM silver.pizza_query.pedido

-- COMMAND ----------

SELECT count(*)

FROM silver.pizza_query.pedido

WHERE flKetchup IS NOT NULL

-- COMMAND ----------

SELECT descUF,
       count(*) AS qtdePedidos

FROM silver.pizza_query.pedido

WHERE descUF!= 'São Paulo'

GROUP BY descUF
ORDER BY qtdePedidos DESC

LIMIT 6

-- COMMAND ----------

SELECT * 
FROM silver.pizza_query.produto
WHERE descItem like '%suco%'

-- COMMAND ----------

SELECT descUF,
       count(*) AS qtdePedidos

FROM silver.pizza_query.pedido

WHERE descUF!= 'São Paulo'

GROUP BY descUF

HAVING qtdePedidos >= 75 -- HAVING = TENDO. Buscar os maiores que 75.

ORDER BY qtdePedidos DESC

LIMIT 5

-- COMMAND ----------

SELECT descUF,
        flKetchup, 
        count(*)

FROM silver.pizza_query.pedido

GROUP BY descUF, flKetchup
ORDER BY descUF, flKetchup
