#!/bin/bash

# Auto increment - make sure to keep the COUNT= at line 5 or
# change the sed command accordingly
COUNT=14
sed  -i  ''  -e  "5s/COUNT.*/COUNT=$((COUNT+1))/g" submit_training.sh
JOB_NAME="yolo_keras_$COUNT"
JOB_DIR="gs://champop2/yolo-keras/job_dir_aiplat"

gcloud beta ai-platform jobs submit training $JOB_NAME \
        --stream-logs \
        --runtime-version 1.4 \
        --job-dir $JOB_DIR \
        --package-path trainer \
        --module-name trainer.task \
        --region us-central1 \
        --runtime-version 1.14 \
        --python-version 3.5 \
        --scale-tier premium-1
        --scale-tier custom \
        --master-machine-type large_model_v100 \
        --worker-machine-type large_model_v100 \


