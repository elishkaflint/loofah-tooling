#!/usr/bin/env bash

source ./config.sh

BRANCH=${1:-master}

cd ../..
for repo in "${all_repos[@]}"
do
    cd "${repo}"
    git fetch
    git checkout ${BRANCH} &> /dev/null
    if [ $? = 0 ] ; then
        git pull origin ${BRANCH}
        echo "------> Checked out ${BRANCH} in ${repo}"
    else
        echo "------> ${BRANCH} not available in ${repo}; checking out master"
        git checkout master
        git pull origin master
    fi
    cd ..
done