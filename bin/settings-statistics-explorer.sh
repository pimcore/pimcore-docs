#!/bin/bash

set -ex

# all paths relative to pimcore-docs/bin


tags=(       "v1.4.2" "v1.3.2" "v1.2.0" )
versions=(   "1.4"    "1.3"    "1.2" )
labels=(     "1.4"    "1.3"    "1.2" )
maintained=( "false"  "false"  "false" )

gitRepository="git@github.com:pimcore/statistics-explorer.git"
repository="statistics-explorer"
outputPath="/statistics-explorer"

configFilePath="../config"
configFileBaseName="statistics-explorer"
configFileDefault="statistics-explorer.json"

additionalPrepareConfigs="--copy-root-readme"

