#!/bin/bash

###############################################
# Author: ravi
# date : 2026
# version : v1
# this script will rport the aws resource usage
#################################################

# aws s3
# aws ec2
# aws lamda
# aws IAM Users

# list the s3 buckets
echo " print the list of s3 buckets"
aws s3 ls > resourceTracker

# list ec2 instances 
echo " print list of ec2-instnces "
aws ec2 descibe-instances > resourceTracker

# list lambda
echo " print list of lambda function"
aws lambda lsit-functions > resourceTracker

#list IAM user
echo " print list of IAM users"
aws iam list-Users > resourceTracker
