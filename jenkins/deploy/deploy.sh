#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -o StrictHostKeyChecking=no -i /opt/id_rsa /tmp/.auth ec2-user@13.233.137.66:/tmp/.auth
scp -o StrictHostKeyChecking=no  -i /opt/id_rsa ./jenkins/deploy/publish ec2-user@13.233.137.66:/tmp/publish
ssh -o StrictHostKeyChecking=no -i /opt/id_rsa  ec2-user@13.233.137.66 "/tmp/publish"
