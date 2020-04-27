#!/usr/bin/env bash

echo $(curl \
  localhost:8080/skills \
  -s \
  -X POST \
  -H "Content-Type: application/json" \
  -d '{"query":"{\n    skill(id:\"1\") {\n        title\n        description\n    }\n}"}')