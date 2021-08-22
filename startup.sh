#!/bin/bash

maxHeap="2048"
serverJar="server.jar"

usage()
{
  echo
  echo "Command usage: $0 -s serverName -m maxHeapSize"
  echo -e "\t-s Server to be started"
  echo -e "\t-m Max heap size the JVM can use"
  echo
  exit 1
}

