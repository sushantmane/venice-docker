#!/bin/bash

key=$1
storeName=test-store2
router=http://venice-router.dc-1.venicedb.io:7777

jar=bin/venice-thin-client-all.jar

java -jar $jar $storeName $router $key
java -jar bin/venice-thin-client-all.jar $storeName $key $router false ""
