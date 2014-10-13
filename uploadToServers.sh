#!/usr/bin/env bash

for host in diw1@gold.lti.cs.cmu.edu kingwangdi@ur.lti.cs.cmu.edu diw1@mu.lti.cs.cmu.edu; 
do
	rsync -avz --update ./ $host:~/workspace/scnlp
done
