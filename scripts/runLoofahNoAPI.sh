#!/usr/bin/env bash

# will be run from loofah-tooling's parent directory
pwd
cd ../docker
docker-compose -f docker-compose-loofah-noAPI.yml up --build

