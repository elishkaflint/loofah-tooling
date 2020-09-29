#!/usr/bin/env bash

echo $(curl \
  -s \
  -X POST \
  http://localhost:8080 \
  -H 'Content-Type: application/json' \
  -H 'cache-control: no-cache' \
  -d '{ "query": "{allCategories{id, title, skills{id}}}"}')
