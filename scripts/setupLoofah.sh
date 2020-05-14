#!/usr/bin/env bash

source config.sh

cd ../..
for repo_location in "${repo_locations[@]}"; do git clone ${repo_location}; done
cd ./loofah-tooling


