#!/bin/bash
set -e
branch=$(git status | sed -n 1p | cut -d " " -f 3)
git fetch origin master
git merge master
git push origin $branch:master
