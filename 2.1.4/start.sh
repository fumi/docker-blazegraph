#!/bin/bash

MAX_MEMORY=$1

java -server -Xmx${MAX_MEMORY} -Dbigdata.propertFile=/RWStore.properties -jar /blazegraph.jar
