#!/bin/bash

# all paths relative to pimcore-docs/bin


tags=(       "master" "1.3"           "v1.2.0" )
versions=(   "master" "current"       "1.2" )
labels=(     "master" "1.3 (current)" "1.2" )
maintained=( "true"   "true"          "false" )

repository="statistics-explorer"
outputPath="/docs/statistics-explorer"

configFilePath="../config"
configFileBaseName="statistics-explorer"
configFileDefault="statistics-explorer.json"

additionalPrepareConfigs="--copy-root-readme"

