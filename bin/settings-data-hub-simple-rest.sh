#!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(       "master"  "1.2"           )
versions=(   "master"  "current"       )
labels=(     "master"  "1.2 (current)" )
maintained=( "true"    "true"          )

repository="data-hub-simple-rest"
outputPath="/docs/data-hub-simple-rest"

configFilePath="../config"
configFileBaseName="data-hub-simple-rest"
configFileDefault="data-hub-simple-rest.json"

additionalPrepareConfigs="--copy-root-readme"

