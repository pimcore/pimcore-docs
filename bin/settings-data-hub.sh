#!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(       "master"   "1.0" )
versions=(   "master"   "current" )
labels=(     "master"   "1.0 (current)" )
maintained=( "true"     "true" )

repository="data-hub"
outputPath="/docs/data-hub"

configFilePath="../config"
configFileBaseName="data-hub"
configFileDefault="data-hub.json"

additionalPrepareConfigs="--copy-root-readme"

