#!/bin/bash

# Purpose: EMR bootstrap script


# update and install some useful yum packages
sudo yum install -y jq

# set region for boto3
# https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-identity-documents.html
aws configure set region \
  "$(curl --silent http://169.254.169.254/latest/dynamic/instance-identity/document | jq -r .region)"

# install some useful python packages
sudo python3 -m pip install boto3 ec2-metadata awswrangler
