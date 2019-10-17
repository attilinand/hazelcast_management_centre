#!/bin/sh

java -cp hazelcast-mancenter-3.12.war com.hazelcast.webmonitor.cli.MCConfCommandLine "$@"
