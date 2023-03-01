from google.cloud import pubsub_v1


project_id = "sushant-sontakke-bootcamp"
topic_id = "topic1"

publisher = pubsub_v1.PublisherClient()
topic_path = publisher.topic_path(project_id, topic_id)


m1 = '{ "id": 7, "name": "yyy"}'
m2 = '{ "id": 8, "name": "ccc"}'
m3 = '{ "id": 9, "name": "zzz"}'
m4 = '{ "id": 10, "name": "bbb"}'

# Data must be a bytestring
data1 = m1.encode("utf-8")
data2 = m2.encode("utf-8")
data3 = m3.encode("utf-8")
data4 = m4.encode("utf-8")
# Add two attributes, origin and username, to the message
future = publisher.publish(
    topic_path, data1, origin="python-sample", username="gcp"
)
print(future.result())

future = publisher.publish(
    topic_path, data2, origin="python-sample", username="gcp"
)
print(future.result())

future = publisher.publish(
    topic_path, data3, origin="python-sample", username="gcp"
)
print(future.result())

future = publisher.publish(
    topic_path, data4, origin="python-sample", username="gcp"
)
print(future.result())

    

print(f"Published messages with custom attributes to {topic_path}.")