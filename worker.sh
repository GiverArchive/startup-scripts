#!/bin/bash

maxHeap="2048"
serverJar="server.jar"

while true;
do
  echo
  echo "Starting server in 5 seconds."
  echo
  sleep 5
  java -Xmx$maxHeap -jar $serverJar
done
