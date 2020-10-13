#!/usr/bin/env bash

# will be run from loofah-tooling's parent directory

source ./config.sh

cd ../..
for java_repo in "${java_repos[@]}"
do
    cd "${java_repo}"
    mvn clean install
    cd ..
done

cd ./loofah-tooling/docker
docker-compose -f docker-compose-loofah.yml up --build

