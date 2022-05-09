#!/bin/sh

mkdir ./output
cd ./output
sfdx sgd:source:delta --to 784a92394e6955dda42099c6e6f42a5a28f0f56d --from  HEAD  --output . --loglevel error -r ../../../