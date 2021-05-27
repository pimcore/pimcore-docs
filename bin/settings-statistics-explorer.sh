#!/bin/bash

# all paths relative to pimcore-docs/bin


tags=(       "1.x"        "1.3"           "v1.2.0" )
versions=(   "1.4"        "current"       "1.2" )
labels=(     "1.4 (dev)"  "1.3 (current)" "1.2" )
maintained=( "true"       "true"          "false" )

repository="statistics-explorer"
outputPath="/docs/statistics-explorer"

configFilePath="../config"
configFileBaseName="statistics-explorer"
configFileDefault="statistics-explorer.json"

additionalPrepareConfigs="--copy-root-readme"

