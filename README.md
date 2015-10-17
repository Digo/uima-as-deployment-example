UIMA-AS Service Deployment Example (Stanford CoreNLP)
=============

This repository contains an [UIMA-AS](http://uima.apache.org/doc-uimaas-what.html) deployment example of Stanford CoreNLP UIMA annotator from ClearTK.


Prerequisite
----------
- Follow the tutorial in the UIMA-AS [README](https://github.com/Digo/uima-as-deployment-example/blob/master/apache-uima-as-2.4.0/README) and understand the basics of UIMA-AS command-line tools.
- A running UIMA-AS broker.

Installation
-----------
```sh
mvn install
```
Above mvn command will also copy all dependency jars to target/dependency folder.


If you don't have a broker running, use following commands to start a broker locally:
```sh
cd ./apache-uima-as-2.4.0
./startBroker_localhost.sh
```

Usage
-----

Deploy scnlp service to localhost on port 61616:
```sh
mvn install && ./deployScnlpAs.sh
```
custom deployment with non-default descriptor and broker url
```sh
./deployScnlpAs.sh PATH_TO_DEPLOYMENT_DESC.XML BROKER_URL:PORT 
```	

To test the deployed service, try:
```sh
mvn compile exec:java -Dexec.mainClass=edu.cmu.lti.oaqa.annotators.scnlp.StanfordCoreNLPExample
```	

License
----

Apache 2.0
