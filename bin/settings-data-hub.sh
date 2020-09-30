#!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(       "master" )
versions=(   "master" )
labels=(     "master" )
maintained=( "true"   )

repository="data-hub"
outputPath="/docs/data-hub"

configFilePath="./pimcore-docs/config"
configFileBaseName="data-hub"
configFileDefault="data-hub.json"

additionalPrepareConfigs="--copy-root-readme"

