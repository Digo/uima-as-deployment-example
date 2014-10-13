UIMA-AS Service Deployment Example (Stanford CoreNLP)
=============

This repository contains an [UIMA-AS](http://uima.apache.org/doc-uimaas-what.html) deployment example of Stanford CoreNLP UIMA annotator from ClearTK.


Prerequisite
----------
- Follow the tutorial in the UIMA-AS [README](http://svn.apache.org/viewvc/uima/uima-as/tags/uima-as-1.4.0/README?view=co) and understand the basics of UIMA-AS command-line tools.
- A running UIMA-AS broker.

Installation
-----------
```sh
mvn install
```
Above mvn command will also copy all dependency jars to target/dependency folder.

Usage
-----

deply default scnlp to MU server on port 61616:
```sh
mvn install && ./deployScnlpAs.sh
```
custom deployment with non-default descriptor and broker url
```sh
./deployScnlpAs.sh PATH_TO_DELOYMENT.XML BROKER_URL:PORT 
```	

License
----

Apache 2.0
