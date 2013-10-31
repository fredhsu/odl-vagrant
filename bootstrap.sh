#!/usr/bin/env bash

apt-get update
apt-get install -y maven git openjdk-7-jre openjdk-7-jdk unzip
wget https://jenkins.opendaylight.org/controller/job/controller-merge/lastSuccessfulBuild/artifact/opendaylight/distribution/opendaylight/target/distribution.opendaylight-osgipackage.zip
unzip distribution.opendaylight-osgipackage.zip
cd opendaylight
export JAVA_HOME=/usr/lib/jvm/java-1.7.0-openjdk-amd64
##Add to ~/.bashrc for persistence through a reboot##
echo "export JAVA_HOME=/usr/lib/jvm/java-1.7.0-openjdk-amd64" >> ~/.bashrc
./run.sh -start 8090
# To load mininet
# apt-get install -y mininet/precise-backports
