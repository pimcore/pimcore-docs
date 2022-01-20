#!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(       "1.x"        "1.2"           "v1.1.7" "v1.0.11" )
versions=(   "1.3"        "current"       "1.1"    "1.0" )
labels=(     "1.3 (dev)"  "1.2 (current)" "1.1"    "1.0" )
maintained=( "true"       "true"          "false"  "false" )

gitRepository="https://github.com/pimcore/data-hub.git"
repository="data-hub"
outputPath="/docs/data-hub"

configFilePath="../config"
configFileBaseName="data-hub"
configFileDefault="data-hub.json"

additionalPrepareConfigs="--copy-root-readme"

