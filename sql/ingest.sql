.echo on

--Not the cleanest and probably could use a macro and list to make this much easier, but sturggling to get files to work.
-- Grabbed the base code from the lecture videos and just extrapolated with some hungting online for csv
create table bike_data as select * from read_csv_auto('./data/citibike-tripdata.csv.gz',--Pull in citibike data as bike_data. Had to move files to data folder as zip extract was having issues
union_by_name=True, filename=True);

create table central_park_weather as select * from
read_csv_auto('./data/central_park_weather.csv',
union_by_name=True, filename=True);

create table fhv_bases as select * from
read_csv_auto('./data/fhv_bases.csv',
union_by_name=True, filename=True);

create table fhv_tripdata as select * from
read_parquet('./data/taxi/fhv_tripdata*.parquet',
union_by_name=True, filename=True);

create table fhvhv_tripdata as select * from
read_parquet('./data/taxi/fhvhv_tripdata*.parquet',
union_by_name=True, filename=True);

create table green_tripdata as select * from
read_parquet('./data/taxi/green_tripdata*.parquet',
union_by_name=True, filename=True);

create table yellow_tripdata as select * from
read_parquet('./data/taxi/yellow_tripdata*.parquet',
union_by_name=True, filename=True);
