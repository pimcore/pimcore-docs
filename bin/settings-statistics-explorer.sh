#!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(       "master" )
versions=(   "current" )
labels=(     "current" )
maintained=( "true"   )

repository="statistics-explorer"
outputPath="/docs/statistics-explorer"

configFilePath="../config"
configFileBaseName="statistics-explorer"
configFileDefault="statistics-explorer.json"

additionalPrepareConfigs="--copy-root-readme"

