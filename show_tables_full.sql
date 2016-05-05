SELECT TABLE_SCHEMA, table_name, engine, sum( data_length + index_length ) / 1024 / 1024 "Data Base Size in MB", table_rows, (data_free/data_length) * 100 "Fragmentacao"
FROM information_schema.TABLES where TABLE_SCHEMA = 'dbname'
GROUP BY table_name order by 4;
