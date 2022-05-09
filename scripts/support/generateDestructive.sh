#!/bin/sh

mkdir ./output
cd ./output
echo 'Generating SHA first commit:' $(git merge-base $1 develop) 
sfdx sgd:source:delta --to HEAD --from $(git merge-base $1 develop) --output . -d -r ../../../ --ignore-destructive ../../../devops/.ignoreDestructive
rm -rf ./package
#teste