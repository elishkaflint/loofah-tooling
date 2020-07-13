#!/usr/bin/env bash

repo_locations=(
    "https://github.com/elishkaflint/loofah-graph-api.git"
    "https://github.com/Caitlin-cooling/loofah-frontend.git"
)

mvn_repos=(
    "loofah-graph-api"
)

npm_repos=(
    "loofah-frontend"
)

other_repos=(
    "loofah-tooling"
)

all_repos=( "${mvn_repos[@]}" "${npm_repos[@]}" "${other_repos[@]}")
