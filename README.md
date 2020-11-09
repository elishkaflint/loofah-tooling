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

### Seeding Loofah dummy data

We have a loofah-db-init project which seeds our mongo db with a set of skills. Because our repos are currently public, we don't keep the data on Github and you will need to add it to your local project.

Please follow the "get started" instructions in the loofah-db-init project before trying to run all microservices. 

### Running all microservices

Loofah Tooling includes a docker-compose file which can be used to run all Loofah's components as a network of docker containers.

To run Loofah, either:

- build any java microservices individually (navigate to microservice root directory and run `mvn clean install`)
- then navigate to `loofah-tooling/docker` and run `docker-compose -f docker-compose-loofah.yml up --build`

or:

- navigate to `loofah-tooling/scripts` and run `./runLoofah.sh` (will build any java microservices automatically)

## Creating new Loofah components

The github location of any new components should be added to `scripts/config.sh` to ensure they are included in the setup script going forward. 


