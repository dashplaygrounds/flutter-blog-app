#!/bin/bash

DIR=utils

source ./${DIR}/env_vars.sh

TAG=${TAG}
MESSAGE=${MESSAGE}

# Adding and pushing commit
git add .; git commit -m "${MESSAGE}"; git push -f
source ./${DIR}/tag_release.sh