#!/bin/sh

mkdir ./output
cd ./output
echo 'Generating SHA first commit: ' $(git merge-base $1 develop) 
sfdx sgd:source:delta --to $(git merge-base $1 develop) --from  HEAD  --output . --loglevel error -r ../../../
rm -rf ./package