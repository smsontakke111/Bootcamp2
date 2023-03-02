import avro.schema
from avro.datafile import DataFileReader, DataFileWriter
from avro.io import DatumReader, DatumWriter
from google.cloud import storage
from random import randint

temp = '''{"namespace": "example.avro",
 "type": "record",
 "name": "User",
 "fields": [
     {"name": "name", "type": "string"},
     {"name": "favorite_number",  "type": ["int", "null"]}
 ]
}'''

schema = avro.schema.parse(temp)

writer = DataFileWriter(open("users.avro", "wb"), DatumWriter(), schema)
for i in range(20000):
    writer.append({"name": "text{}".format(i), "favorite_number": randint(10,100)})
writer.close()

def upload_blob(bucket_name, source_file_name, destination_blob_name):
    storage_client = storage.Client()
    bucket = storage_client.get_bucket(bucket_name)
    blob = bucket.blob("insert_transfer/" + destination_blob_name)
    blob.upload_from_filename(source_file_name)
    print('File {} uploaded to {}'.format(
        source_file_name,
        destination_blob_name
    ))

upload_blob('sushant-sontakke-composer', 'users.avro', 'users.avro')