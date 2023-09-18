#!/bin/bash
DIR=utils

source ./${DIR}/env_vars.sh

TAG=${TAG}
MESSAGE=${MESSAGE}

# Deleting existing tag
git tag -d ${TAG}
git push --delete origin ${TAG}

# Creating tag
git tag -a ${TAG} -m "${MESSAGE}"
git push -f origin --tags