#!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(       "master" )
versions=(   "current" )
labels=(     "current" )
maintained=( "true"   )

repository="data-hub-ci-hub"
outputPath="/docs/data-hub-ci-hub"

configFilePath="../config"
configFileBaseName="data-hub-ci-hub"
configFileDefault="data-hub-ci-hub.json"

additionalPrepareConfigs="--copy-root-readme"

