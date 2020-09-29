#!/usr/bin/env bash

echo $(curl \
  localhost:8080 \
  -s \
  -X POST \
  -H "Content-Type: application/json" \
  -d '{"query":"{\n    allSkills {\n        title\n        description\n    }\n}"}')
