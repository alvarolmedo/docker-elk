#!/bin/bash

echo "=========="
echo "Smoke test"
echo "=========="

echo Check Kibana
nc -vz 172.16.0.1 5601
if [ $? == 0 ];then
	echo 
	echo OK
else
	echo
	echo Fail in Kibana
	exit 1
fi


echo Check Elasticsearch
nc -vz 172.16.0.1 9200
if [ $? == 0 ];then
	echo 
	echo OK
else
	echo
	echo Fail in Elasticsearch
	exit 1
fi

echo Check Logstash
nc -vz 172.16.0.1 5000
if [ $? == 0 ];then
	echo 
	echo OK
else
	echo
	echo Fail in Logstash
	exit 1
fi