#!/bin/bash

# all paths relative to pimcore-docs/bin


tags=(       "master" "1.2"           "v1.1.0" )
versions=(   "master" "current"       "1.1" )
labels=(     "master" "1.2 (current)" "1.1" )
maintained=( "true"   "true"          "false" )


repository="direct-edit"
outputPath="/docs/direct-edit"

configFilePath="../config"
configFileBaseName="direct-edit"
configFileDefault="direct-edit.json"

additionalPrepareConfigs="--copy-root-readme"
