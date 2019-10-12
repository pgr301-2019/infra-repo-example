#!/usr/bin/env bash

cd infra/terraform
wget https://releases.hashicorp.com/terraform/0.12.10/terraform_0.12.10_linux_amd64.zip
unzip terraform_0.12.10_linux_amd64.zip
chmod +x terraform

./terraform init
./terraform validate

if [[ $TRAVIS_BRANCH == 'master' ]]
then
    ./terraform apply -auto-approve
fi
