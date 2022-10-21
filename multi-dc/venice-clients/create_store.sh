#!/bin/bash

# controller
url=http://venice-controller.dc-parent.venicedb.io:5555
clusterName=venice-cluster0

storeName=test-store
keySchema=sample-data/schema/keySchema.avsc
valueSchema=sample-data/schema/valueSchema.avsc

jar=bin/venice-admin-tool-all.jar

# create store
java -jar $jar --new-store --url $url --cluster $clusterName  --store $storeName --key-schema-file $keySchema --value-schema-file $valueSchema

# update quota and enabled incremental push
java -jar $jar --update-store --url $url --cluster $clusterName  --store $storeName --storage-quota -1 --incremental-push-enabled true
