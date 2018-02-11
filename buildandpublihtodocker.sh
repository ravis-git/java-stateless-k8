#!/usr/bin/env bash

# generate an executable jar
./gradlew clean build

# for development, use the minikube docker settings for the docker deamon to publish to the minikube registry
eval $(minikube docker-env)

# build & tag the image -- Add the image to the docker registry
docker build -f src/devops/Dockerfile -t k8s-spring .
docker tag k8s-spring localhost:5000/k8s-spring
docker push localhost:5000/k8s-spring

kubectl delete -f src/devops/svc.yaml
kubectl create -f src/devops/svc.yaml

