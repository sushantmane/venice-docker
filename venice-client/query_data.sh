#!/bin/bash

key=$1
storeName=venice-store
router=http://venice-router:7777

jar=bin/venice-thin-client-all.jar

java -jar $jar $storeName $router $key
java -jar bin/venice-thin-client-all.jar $storeName $key $router false ""
