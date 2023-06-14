-- Databricks notebook source
-- MAGIC %md
-- MAGIC #### Create External Locations
-- MAGIC 1. Bronze
-- MAGIC 2. Silver
-- MAGIC 3. Gold

-- COMMAND ----------

CREATE EXTERNAL LOCATION databrickscourseucextdl_bronze
    URL 'abfss://bronze@databrickscourseucextdl9.dfs.core.windows.net/'
    WITH (STORAGE CREDENTIAL `databrickscourse-ext-storage-credential`);

-- COMMAND ----------

desc external location databrickscourseucextdl_bronze;

-- COMMAND ----------

-- MAGIC %fs
-- MAGIC ls 'abfss://bronze@databrickscourseucextdl9.dfs.core.windows.net/'

-- COMMAND ----------

CREATE EXTERNAL LOCATION databrickscourseucextdl_silver
    URL 'abfss://silver@databrickscourseucextdl9.dfs.core.windows.net/'
    WITH (STORAGE CREDENTIAL `databrickscourse-ext-storage-credential`);

-- COMMAND ----------

CREATE EXTERNAL LOCATION databrickscourseucextdl_gold
    URL 'abfss://gold@databrickscourseucextdl9.dfs.core.windows.net/'
    WITH (STORAGE CREDENTIAL `databrickscourse-ext-storage-credential`);

-- COMMAND ----------


