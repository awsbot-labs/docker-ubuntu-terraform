FROM ubuntu:14.04

# Install git and bash
RUN apt-get update && \
    apt-get install -y git curl unzip make python-pip && \
    pip install awscli

RUN curl -O https://releases.hashicorp.com/terraform/0.6.6/terraform_0.6.6_linux_amd64.zip && \
    unzip -d /usr/local/bin terraform_0.6.6_linux_amd64.zip
