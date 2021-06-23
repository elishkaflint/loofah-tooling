#!/usr/bin/env bash

# will be run from loofah-tooling's parent directory

docker rm $(docker ps -a -q)
source ./config.sh
cd ../..

echo "----------------------------"
echo "Converting data files in loofah-data into json and copying into loofah-db-init"
echo "----------------------------"

cd ./loofah-data
npm install
./bin/y2j data/skills -o ../loofah-db-init/data/skills.json -t gradeTitle
./bin/y2j data/categories -o ../loofah-db-init/data/categories.json
./bin/y2j data/crafts -o ../loofah-db-init/data/crafts.json
./bin/y2j data/grades -o ../loofah-db-init/data/grades.json
cd ..

echo "----------------------------"
echo "Building java repositories"
echo "----------------------------"

for java_repo in "${java_repos[@]}"
do
    cd "${java_repo}"
    mvn clean install
    cd ..
done


echo "----------------------------"
echo "Running loofah services in docker-compose"
echo "----------------------------"

docker rm -fv $(docker ps -aq)
cd ./loofah-tooling/docker
docker-compose -f docker-compose-loofah.yml up --build

