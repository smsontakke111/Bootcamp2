from concurrent.futures import TimeoutError
from google.cloud import pubsub_v1
from json.decoder import JSONDecodeError
import json

project_id = "sushant-sontakke-bootcamp"
subscription_id = "sub2"
tout = 5.0          

subscriber = pubsub_v1.SubscriberClient()
subscription_path = subscriber.subscription_path(project_id, subscription_id)

mess_list = []

def callback(message: pubsub_v1.subscriber.message.Message) -> None:
    
    mess = message.data
    print(f"Received {mess}.")

    # Converting bytes type to dictionary using json.loads() and appending messages to list
    try:
      mess_dict = json.loads(mess) 
      mess_list.append(mess_dict)
    except JSONDecodeError:
        print(f"Malformed message: {mess}")  

streaming_pull_future = subscriber.subscribe(subscription_path, callback=callback)
print(f"Listening for messages on {subscription_path}..\n") 

# Wrap subscriber in a 'with' block to automatically call close() when done.

with subscriber:
    try:
        streaming_pull_future.result(timeout=tout)
    except TimeoutError:
        streaming_pull_future.cancel()  # Trigger the shutdown.
        streaming_pull_future.result()  # Block until the shutdown is complete.

# Writing message data to json file
with open('msg_from_sub2.json', 'a') as f:
        json.dump(mess_list, f) 

