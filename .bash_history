us-central1 as default region
gcloud config set compute/region us-central1
google-compute-default-region
gcloud config set compute/region us-central1-a
gcloud config set compute/zone us-central1-a
gcloud default region -h
gcloud region -h
gcloud --region
py -3
gcloud py -3
/usr/bin/python /home/smsontakke11/csvgenerater.py
gcloud configlist
gcloud config list
gloud projects get-iam-policy sushant-sontakke-bootcamp
gcloud projects get-iam-policy sushant-sontakke-bootcamp
gcloud projects add-iam-policy-binding sushant-sontakke-bootcamp --member="serviceAccount:gcsadminsa@sushant-sontakke-bootcamp.iam.gserviceaccount.com" --role=roles/storage.admin
gcloud projects add-iam-policy-binding sushant-sontakke-bootcamp --member="serviceAccount:gcsadminsa@sushant-sontakke-bootcamp.iam.gserviceaccount.com" --role=roles/storage.admin
gcloud projects add-iam-policy-binding sushant-sontakke-bootcamp --member="serviceAccount:gcsadminsa@sushant-sontakke-bootcamp.iam.gserviceaccount.com" --role="roles/storage.admin"
gcloud projects add-iam-policy-binding sushant-sontakke-bootcamp --member='serviceAccount:gcsadminsa@sushant-sontakke-bootcamp.iam.gserviceaccount.com' --role='roles/storage.admin'
gcloud projects add-iam-policy-binding sushant-sontakke-bootcamp --member='serviceAccount:gcsadminsa@sushant-sontakke-bootcamp.iam.gserviceaccount.com' --role='roles/storage.admin'
gcloud iam service-accounts Keys create storagekey.json --iam-account=gcsadminsa@sushant-sontakke-bootcamp.iam.gserviceaccount.com
gcloud iam service-accounts keys create storagekey.json --iam-account=gcsadminsa@sushant-sontakke-bootcamp.iam.gserviceaccount.com
gcloud auth activate-service-account --key-file=storagekey.json
gsutil mb -c standard -l us-central1 gs://sushant-sontakke-fagcpbcmp
gcloud projects add-iam-policy-binding sushant-sontakke-bootcamp --member='serviceAccount:bqadminsa@sushant-sontakke-bootcamp.iam.gserviceaccount.com' --role='roles/bigquery.admin'
gcloud projects add-iam-binding sushant-sontakke-bootcamp --member='bqadminsa@sushant-sontakke-bootcamp.iam.gserviceaccount.com' --role='roles/bigquery.admin'
gcloud projects add-iam-policy-binding sushant-sontakke-bootcamp --member='bqadminsa@sushant-sontakke-bootcamp.iam.gserviceaccount.com' --role='roles/bigquery.admin'
gcloud config set project='sushant-sontakke-bootcamp'
gcloud config set project=sushant-sontakke-bootcamp
gcloud config set projectId=sushant-sontakke-bootcamp
gcloud auth list
gcloud auth revoke gcsadminsa@sushant-sontakke-bootcamp.iam.gserviceaccount.com
gcloud projects add-iam-policy-binding sushant-sontakke-bootcamp --member='bqadminsa@sushant-sontakke-bootcamp.iam.gserviceaccount.com' --role='roles/bigquery.admin'
gcloud projects add-iam-policy-binding sushant-sontakke-bootcamp --member='serviceAccount:bqadminsa@sushant-sontakke-bootcamp.iam.gserviceaccount.com' --role='roles/bigquery.admin'
gcloud iam service-accounts keys create bigquerykey.json --iam-accoount=bqadminsa@sushant-sontakke-bootcamp.iam.gserviceaccount.com
gcloud iam service-accounts keys create bigquerykey.json --iam-account=bqadminsa@sushant-sontakke-bootcamp.iam.gserviceaccount.com
gsutil versioning set on  gs://sushant-sontakke-fagcpbcmp
gsutil cp truefile/source1.csv gs://sushant-sontakke-fagcpbcmp
ls
ls truefile
gsutil cp truefile/sourcefile1.csv gs://sushant-sontakke-fagcpbcmp
gsutil cp workingfile/sourcefile1.csv gs://sushant-sontakke-fagcpbcmp
gsutil ls gs://sushant-sontakke-fagcpbcmp
mkdir gcsfile
gsutil ls -a gs://sushant-sontakke-fagcpbcmp
gsutil cp gs://sushant-sontakke-fagcpbcmp/sourcefile1.csv#1677073330253318 gcsfile/
ls gcsfile
md5sum truefile/sourcefile1.csv gcsfile/sourcefile1.csv
rm gcsfile/sourcefile1.csv
gsutil cp gs://sushant-sontakke-fagcpbcmp/sourcefile1.csv#1677073266326665 gcsfile/
md5sum truefile/sourcefile1.csv gcsfile/sourcefile1.csv
clear
md5sum truefile/sourcefile1.csv gcsfile/sourcefile1.csv
gcloud auth activate-service-account --key-file=bigquerykey.json
bq --location=US mk --default_table_expiration=25,92,000 partition_comp
bq --location=US mk --default_table_expiration=2592000 partition_comp
gsutil rm gs://sushant-sontakke-fagcpbcmp/sourcefile1.csv
gsutil cp truefile/sourcefile1.csv gs://sushant-sontakke-fagcpbcmp 
bq load --source_format=csv --autodetect partition_com.version1 gs://sushant-sontakke-fagcpbcmp/sourcefile1.csv
bq load --source_format=CSV --autodetect partition_com.version1 gs://sushant-sontakke-fagcpbcmp/sourcefile1.csv
gcloud auth list
bq load --source_format=CSV --autodetect partition_com.version1 gs://sushant-sontakke-fagcpbcmp/sourcefile1.csv
bq show
bq show sushant-sontakke-bootcamp
gcloud auth revoke bqadminsa@sushant-sontakke-bootcamp.iam.gserviceaccount.com
gcloud auth activate-service-account --key-file=bigquerykey.json
bq show sushant-sontakke-bootcamp
gsutil cp workingfile/sourcefile1.csv gs://sushant-sontakke-fagcpbcmp 
gcloud auth activate-service-account pubsubadmin@sushant-sontakke-bootcamp.iam.gserviceaccount.com  --key-file pubsubkey.json
gcloud iam service-accounts keys create pubsubkey.json     --iam-account=pubsubadmin@sushant-sontakke-bootcamp.iam.gserviceaccount.com
gcloud auth activate-service-account pubsubadmin@sushant-sontakke-bootcamp.iam.gserviceaccount.com  --key-file pubsubkey.json
ls
mkdir scripts
cd scripts/
nano pubsub1.sh
chmod +x pubsub1.sh
./pubsub1.sh
cd PubSub
/usr/bin/python /home/smsontakke11/PubSub/PubSub2.py
from google.cloud import pubsub_v1
sudo pip3 install google-cloud-pubsub
/usr/bin/python /home/smsontakke11/PubSub/PubSub2.py
ls
cat/usr/bin/python /home/smsontakke11/PubSub/pubsub3.py
/usr/bin/python /home/smsontakke11/PubSub/pubsub3.py
/usr/bin/python /home/smsontakke11/PubSub/pubsub4.py
/usr/bin/python /home/smsontakke11/PubSub/PubSub2.py
/usr/bin/python /home/smsontakke11/PubSub/pubsub3.py
ls
git
git status
git init
git status
git add .
git commit -m "Initial commit"
git config --global user.email "smsontakke111@gmail.com"
git add .
git commit -m "Initial commit"
git config --global user.name "smsontakke111"
git config --global user.email "smsontakke111@gmail.com"
git add .
git commit -m "Initial commit"
git status
git remote add origin git@github.com:smsontakke111/Bootcamp.git
git push origin master
ssh-keygen -t rsa -C "smsontakke111@gmail.com"
cat sshkay
ls
cat sshkay.pub
cat sshkey.pub
git push origin master
git remote add origin git@github.com:smsontakke111/Bootcamp.git
git push origin master
git status
git push origin master --force
git remote add origin git@github.com:smsontakke111/Bootcamp.git
git push origin master --force
rm Cloud_Composer
cd scripts
rm Cloud_Composer
python3 -m pip install avro
tar xvf avro-1.10.2.tar.gz
pip install avro==1.10.2
tar xvf avro-1.10.2.tar.gz
ls
cd lang/py/
gcloud auth activate-service-account --key-file=gcskey.json
ls
cd ..
ls
gcloud auth activate-service-account --key-file=storagekey.json
/usr/bin/python /home/smsontakke11/scripts/cloud_composer.py
rm users.avro
/usr/bin/python /home/smsontakke11/scripts/cloud_composer.py
rm users.avro
/usr/bin/python /home/smsontakke11/scripts/cloud_composer.py
rm users.avro
cd scripts
/usr/bin/python /home/smsontakke11/scripts/cloud_composer.py
rm users.avro
/usr/bin/python /home/smsontakke11/scripts/cloud_composer.py
rm users.avro
/usr/bin/python /home/smsontakke11/scripts/cloud_composer.py
rm users.avro
/usr/bin/python /home/smsontakke11/scripts/cloud_composer.py
rm users.avro
/usr/bin/python /home/smsontakke11/scripts/cloud_composer.py
cd ..
/usr/bin/python /home/smsontakke11/PubSub/PubSub2.py
cd PubSub
/usr/bin/python /home/smsontakke11/PubSub/PubSub2.py
pip show google-cloud-pubsub
pip install google-cloud-pubsub
pip show google-cloud-pubsub
/usr/bin/python /home/smsontakke11/PubSub/PubSub2.py
gcloud sql connect mypginstance--user=postgres
curl -o cloud-sql-proxy https://storage.googleapis.com/cloud-sql-connectors/cloud-sql-proxy/v2.0.0/cloud-sql-proxy.linux.amd64
chmod +x cloud-sql-proxy
ls
rm cloud-sql-proxy
ls
mkdir USER
cd USER
curl -o cloud-sql-proxy https://storage.googleapis.com/cloud-sql-connectors/cloud-sql-proxy/v2.0.0/cloud-sql-proxy.linux.amd64
chmod +x cloud-sql-proxy
./cloud-sql-proxy mypginstance &
cd workingfile
gcloud auth activate-service-account --key-file=storagekey.json
cd ..
gcloud auth activate-service-account --key-file=storagekey.json
cd workingfile
gsutil lifecycle get gs://sushant-sontakke-fagcpbcmp
gsutil lifecycle set object_lifecycle.json gs://sushant-sontakke-fagcpbcmp
gcloud sql connect mypginstance --user=postgres
gcloud auth activate-service-account --key-file=bigquerykey.json
/usr/bin/python /home/smsontakke11/bigquery2.py
python bigquery2.py
/usr/bin/python /home/smsontakke11/bigquery2.py
git status
ls
git add smsontakke11
