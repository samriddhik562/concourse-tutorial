#!/bin/sh

set -e # fail fast
set -x # print commands

git config --global --add safe.directory /tmp/build/cc4f7a9f/resource-gist/.git
git clone resource-gist updated-gist

cd updated-gist
date > bumpme

git config --global user.email "nobody@concourse-ci.org"
git config --global user.name "Concourse"

git add .
git commit -m "Bumped date"
