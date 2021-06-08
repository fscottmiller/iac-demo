#!/bin/bash


# create/update the prerequisite underlying resources with terraform
terraform plan -o myplan
terraform apply -auto-approve myplan

# deploy the function
func azure functionapp publish my-resource-group-function-app

# make sure it's working
curl https://my-resource-group-function-app.azurewebsites.net/api/python-hello-example?name=Scott