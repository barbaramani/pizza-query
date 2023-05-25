-- Databricks notebook source
-- SELECIONE TODAS AS COLUNAS (*) DA TABELA silver.pizza_query.item_pedido

SELECT *
FROM silver.pizza_query.item_pedido

-- COMMAND ----------

SELECT descItem,
      vlPreco,
      21+21 AS vl42
      
FROM silver.pizza_query.produto
