#!/bin/bash

PROJ_FOLDER=`dirname $0`

DD=${1:-src/main/resources/deploy/deploy_scnlp.xml} 
BROKER=${2:-tcp://mu.lti.cs.cmu.edu:61616}

export UIMA_JVM_OPTS="-Xms128M -Xmx4000M -XX:-UseGCOverheadLimit"
export UIMA_HOME=$PROJ_FOLDER/apache-uima-as-2.4.0/

export UIMA_CLASSPATH="$PROJ_FOLDER/target/classes:$PROJ_FOLDER/target/dependency"

$UIMA_HOME/bin/deployAsyncService.sh $DD -brokerURL $BROKER

