#!/bin/bash

usage()
{
  echo
  echo "Command usage: $0 -s serverName -m maxHeapSize"
  echo -e "\t-s Server to be started"
  echo -e "\t-m Max heap size the JVM can use"
  echo
  exit 1
}

while getopts "s:m:" opt
do
  case "$opt" in
    s ) server="$OPTARG" ;;
    m ) heap="$OPTARG" ;;
    ? ) usage ;;
  esac
done

if [ -z "$server" ]
then
  echo "Missing server name"
  usage
fi

if [ -z "$heap" ]
then
  echo "Missing max heap size"
  usage
fi

echo
echo "Server: $server"
echo "Heap: $heap"
echo
