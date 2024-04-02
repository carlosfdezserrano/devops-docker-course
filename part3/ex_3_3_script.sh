#!/bin/bash

github_repo_1=$1
github_repo_2=$2
image_name=$3

#Clone the repository
git clone "https://github.com/$github_repo_1/$github_repo_2"
cd $github_repo_2

#Build and push the image
docker login -u $DOCKER_USER -p $DOCKER_PWD
docker build . -t $image_name
docker push $image_name

#Remove cloned folder
cd ..
rm -r $github_repo_2