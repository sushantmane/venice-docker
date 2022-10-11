#!/bin/bash

vpjJar=bin/hadoop-to-venice-bridge-all.jar
hadoopJar=bin/hadoop-mapreduce-client-core-2.3.0.jar:bin/hadoop-mapreduce-client-common-2.3.0.jar:bin/hadoop-common-2.3.0.jar
className=com.linkedin.venice.hadoop.VenicePushJob
java -cp "$hadoopJar:$vpjJar" $className sample-data/configs/inc-push-job.properties
