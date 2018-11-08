# Portainer With ECR

This repo is used to auto build a [Portainer](https://portainer.io/) Docker image
 with the aws `awslabs/amazon-ecr-credential-helper`.

## Usage

`docker stack deploy -f docker-compose-portainer.yml portainer`

## Repos

 -  [Portainer GitHub](https://github.com/portainer/portainer)
 -  [awslabs/amazon-ecr-credential-helper](https://github.com/awslabs/amazon-ecr-credential-helper/)
