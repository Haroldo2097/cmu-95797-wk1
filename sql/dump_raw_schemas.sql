Parser Error: syntax error at or near "duckdb"Parser Error: syntax error at or near "duckdb"Parser Error: syntax error at or near "duckdb"echo on

SHOW ALL TABLES --- Grabbed ALL TABLES FROM https://duckdb.org/docs/guides/meta/list_tables 
DESCRIBE "bike_data";
DESCRIBE "central_park_weather";
DESCRIBE "fhv_bases";
DESCRIBE "fhv_tripdata";
DESCRIBE "fhvhv_tripdata";
DESCRIBE "green_tripdata";
DESCRIBE "yellow_tripdata";

.read sql/dump_raw_schemas.sql > ~/answers/raw.schemas.txt  --https://askubuntu.com/questions/420981/how-do-i-save-terminal-output-to-a-file
