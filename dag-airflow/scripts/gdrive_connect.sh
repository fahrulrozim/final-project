#!/bin/bash
fileid="1Ty1MrhKWi0Y66xsGZLLC7db4O6j7MnnX"
filename="fraud_dataset_final.csv"
html=`curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}"`
curl -Lb ./cookie "https://drive.google.com/uc?export=download&`echo ${html}|grep -Po '(confirm=[a-zA-Z0-9\-_]+)'`&id=${fileid}" -o "/opt/airflow/${filename}"