#!/bin/bash

set -ex

# all paths relative to pimcore-docs/bin


tags=(       "2.x"        "1.4"           "v1.3.2" "v1.2.0" )
versions=(   "2.0"        "current"       "1.3"    "1.2" )
labels=(     "2.0 (dev)"  "1.4 (current)" "1.3"    "1.2" )
maintained=( "true"       "true"          "false"  "false" )

gitRepository="git@github.com:pimcore/statistics-explorer.git"
repository="statistics-explorer"
outputPath="/docs/statistics-explorer"

configFilePath="../config"
configFileBaseName="statistics-explorer"
configFileDefault="statistics-explorer.json"

additionalPrepareConfigs="--copy-root-readme"

