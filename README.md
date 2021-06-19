# LOOFAH TOOLING

This repository can be used to set up everything you need for Loofah.

## Getting started

To pull down all Loofah's code, create a new parent directory, clone this repo and then run the `setupLoofah` script:

```
mkdir loofah-parent-directory
cd loofah-parent-directory
git clone git@github.com:elishkaflint/loofah-tooling.git
cd loofah-tooling/scripts
./setupLoofah.sh
```

Navigate back to the parent directory and it should now include all Loofah repositories.

## Running Loofah

### Seeding Loofah data

Loofah data is stored in markdown files in loofah-data. Note that this is a private repository.

When running up Loofah using the runLoofah.sh script, loofah-tooling converts the files in loofah-data into json, copies
 the json files into loofah-db-init, which seeds the data in our MongoDB when we run all the services via docker-compose. 
 
Responsibilities have been kept in different repos so that we can pick the bits we need when moving over to AWS.

### Running all microservices

Loofah Tooling includes a docker-compose file which can be used to run all Loofah's components as a network of docker containers.

To run Loofah, either:

- build any java microservices individually (navigate to microservice root directory and run `mvn clean install`)
- then navigate to `loofah-tooling/docker` and run `docker-compose -f docker-compose-loofah.yml up --build`

or:

- navigate to `loofah-tooling/scripts` and run `./runLoofah.sh` (will build any java microservices automatically)

## Creating new Loofah components

The github location of any new components should be added to `scripts/config.sh` to ensure they are included in the setup script going forward. 


