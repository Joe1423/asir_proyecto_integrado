#!/bin/sh

gitlab-runner register -n \
  --url $GITLAB_URL \
  --registration-token $TOKEN \
  --executor docker \
  --description "My Docker Runner" \
  --docker-image "docker:latest" \
  --docker-volumes /var/run/docker.sock:/var/run/docker.sock