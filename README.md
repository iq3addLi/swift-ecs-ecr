# Deploy to AWS ECS from ECR via CircleCI 2.0(Example Project)
[![CircleCI](https://circleci.com/gh/iq3addLi/swift-ecs-ecr/tree/master.svg?style=shield))](https://circleci.com/gh/iq3addLi/swift-ecs-ecr/tree/master)
![Swift 3.1](https://img.shields.io/badge/Swift-3.1-orange.svg)
This is a "Hello World" Swift webapp that provides an example of how to build and test a Dockerized 
web application on [CircleCI](https://circleci.com), push to an AWS EC2 Container Registry, and then deploy to an AWS 
EC2 Container Service cluster.

## Prerequisites

This example utilizes AWS information that you wouldn't really want public. You'll need to 
configure a few CircleCI environment variables before the deploy script will work:

```
AWS_ACCOUNT_ID
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
```

Additionally, an EC2 Container Service cluster and EC2 Container Registry must already be set up 
on AWS. See the [EC2 Container Service Resources](https://aws.amazon.com/ecs/) and 
[ECS Container Registry Resources](https://aws.amazon.com/ecr/) to get started. You will also need to update the cluster and 
task family names in deploy.sh to match your cluster.
