#!/usr/bin/env bash
gcloud pubsub topics create topic1
gcloud pubsub subscriptions create sub1 --topic topic1
gcloud pubsub subscriptions create sub2 --topic topic1
