#!/bin/sh
IMAGE_NAME=duluca/ecs-cli
VERSION=lts
docker image build . -t $IMAGE_NAME:$VERSION-alpine
docker image tag $IMAGE_NAME:$VERSION-alpine $IMAGE_NAME:latest
docker image push $IMAGE_NAME:$VERSION-alpine
docker image push $IMAGE_NAME:latest

git push origin :refs/tags/$VERSION
git tag -fa $VERSION
git push origin master --tags