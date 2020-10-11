#!/usr/bin/env bash

echo $(curl -X POST \
  http://localhost:8080 \
  -H 'Content-Type: application/json' \
  -d '{
    "query": "{skillsByGrade(gradeId : \"2\"){id, gradeId, description}}"
}')