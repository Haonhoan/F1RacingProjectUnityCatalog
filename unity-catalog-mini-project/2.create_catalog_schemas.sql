-- Databricks notebook source
-- MAGIC %md
-- MAGIC ### Create Catalog and Schemas
-- MAGIC 1. Catalog - formula1dev (without managed location)
-- MAGIC 2. Schemas - bronze, silver, gold (with managed locations)

-- COMMAND ----------

CREATE CATALOG IF NOT EXISTS formula1_dev;

-- COMMAND ----------

USE CATALOG formula1_dev;
CREATE SCHEMA IF NOT EXISTS bronze
  MANAGED LOCATION 'abfss://bronze@databrickscourseucextdl9.dfs.core.windows.net/'

-- COMMAND ----------

CREATE SCHEMA IF NOT EXISTS silver
  MANAGED LOCATION 'abfss://silver@databrickscourseucextdl9.dfs.core.windows.net/'

-- COMMAND ----------

CREATE SCHEMA IF NOT EXISTS gold
  MANAGED LOCATION 'abfss://gold@databrickscourseucextdl9.dfs.core.windows.net/'

-- COMMAND ----------

SHOW SCHEMAS;

-- COMMAND ----------


