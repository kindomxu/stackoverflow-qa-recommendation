#!/bin/bash
rm -r results
hadoop fs -mkdir files
hadoop fs -mkdir files/input
hadoop fs -put posts.xml files/input/.
hadoop jar SOURCE/qarecommender.jar SODriver /user/amadamsh/files/ input output
mkdir results
hadoop fs -get files/* results/.
hadoop fs -rmr files

