from google.cloud import bigquery

# Set up BigQuery client
client = bigquery.Client()

# Define the source dataset and table you want to use
source_dataset_id = 'bigquery-public-data.austin_bikeshare'
source_table_id = 'bikeshare_trips'

# Define the new dataset and table you want to create
new_dataset_id = 'bikeshare'
new_table_id = 'hourly_summary_trips'

# Define the query to select the columns you're interested in
query = f"""
    SELECT 
        DATE(start_time) as start_date, EXTRACT(HOUR from start_time) as trip_start_hour, start_station_name, count(*) as trip_count, SUM(duration_minutes) as total_duration 
    FROM `{source_dataset_id}.{source_table_id}` group by start_station_name, start_date, trip_start_hour
"""

# Create the new table and set the schema based on the query results
table_ref = client.dataset(new_dataset_id).table(new_table_id)
job_config = bigquery.QueryJobConfig(destination=table_ref)
query_job = client.query(query, job_config=job_config)

# Wait for the query to complete and print the results
query_job.result()
print(f'Table {new_dataset_id}.{new_table_id} created successfully.')


query1 = f"""SELECT t1.start_date, t1.trip_start_hour, t1.start_station_name, t1.trip_count FROM `sushant-sontakke-bootcamp.bikeshare.hourly_summary_trips`  t1 JOIN (SELECT trip_start_hour, MAX(trip_count) AS max_trips FROM `sushant-sontakke-bootcamp.bikeshare.hourly_summary_trips` GROUP BY trip_start_hour) t2 ON t1.trip_start_hour = t2.trip_start_hour AND t1.trip_count = t2.max_trips  """

