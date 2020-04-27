#!/usr/bin/env bash

echo $(curl \
  localhost:8080/skills \
  -s \
  -X POST \
  -H "Content-Type: application/json" \
  -d ' { "query": "query {\n    allSKills {\n        id\n        title\n        description\n    }\n}", "variables": null } ')
