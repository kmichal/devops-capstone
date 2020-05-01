# Udacity Capstone DevOps Nanodegree

## Introduction

This project is the Capstone project at [Cloud DevOps Engineer Nanodegree](https://www.udacity.com/course/cloud-dev-ops-nanodegree--nd9991). The project requires to set up a Kubernetes cluster hosted at AWS EKS, and deploy the Docker image using Jenkins Pipeline.

## Setup

* Spin up an EC2 instance on AWS with SSH access and run `./setup_jenkins.sh` on it and setup jenkins one all packages are installed
* SSH back into your jenkins server and run `./setup_aws.sh`. This will run eksctl utility which will generate CloudFomation scrips and run them in your AWS account
* Once CouldFormation is finished deploying run `./setup_kubernetes.sh` which will create a deployment in the Kubernetes cluster

