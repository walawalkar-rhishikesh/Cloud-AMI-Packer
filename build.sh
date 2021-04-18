#!/bin/bash

packer build \
    --var 'aws_access_key=' \
    --var 'aws_secret_key=' \
    --var 'aws_region=us-east-1' \
    --var 'ami_users=567826654401' \
    --var 'source_ami=ami-085925f297f89fce1' \
    template/ami_ec2.json \