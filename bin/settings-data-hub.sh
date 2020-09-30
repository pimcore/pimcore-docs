#!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(       "master" )
versions=(   "current" )
labels=(     "current" )
maintained=( "true"   )

repository="data-hub"
outputPath="/docs/data-hub"

configFilePath="../config"
configFileBaseName="data-hub"
configFileDefault="data-hub.json"

additionalPrepareConfigs="--copy-root-readme"

