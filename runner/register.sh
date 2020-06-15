#!/bin/sh

gitlab-runner register \
  --non-interactive \
  --url $GITLAB_URL \
  --registration-token $TOKEN \
  --executor docker \
  --docker-image "docker:latest" \
  --docker-volumes /var/run/docker.sock:/var/run/docker.sock \
  --name $RUNNER_NAME \
  --docker-privileged=false \


