#!/bin/bash

# all paths relative to pimcore-docs/bin


tags=(       "master" "1.1" )
versions=(   "master" "current" )
labels=(     "master" "1.1 (current)")
maintained=( "true"   "true")


repository="direct-edit"
outputPath="/docs/direct-edit"

configFilePath="../config"
configFileBaseName="direct-edit"
configFileDefault="direct-edit.json"

additionalPrepareConfigs="--copy-root-readme"
