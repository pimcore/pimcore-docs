#!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(       "master" "1.1" )
versions=(   "master" "current" )
labels=(     "master" "1.1 (current)")
maintained=( "true"   "true")

repository="data-hub-file-export"
outputPath="/docs/data-hub-file-export"

configFilePath="../config"
configFileBaseName="data-hub-file-export"
configFileDefault="data-hub-file-export.json"

additionalPrepareConfigs="--copy-root-readme"
