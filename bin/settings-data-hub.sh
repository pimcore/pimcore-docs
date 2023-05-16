#!/bin/bash

set -ex

# all paths relative to pimcore-docs/bin

tags=(       "v1.5.7"  "v1.4.5" "v1.3.2" "v1.2.6" "v1.1.7" "v1.0.11" )
versions=(   "1.5"     "1.4" "1.3" "1.2"    "1.1"    "1.0" )
labels=(     "1.5"     "1.4" "1.3" "1.2"    "1.1"    "1.0" )
maintained=( "false"   "false" "false" "false"  "false"  "false" )

gitRepository="https://github.com/pimcore/data-hub.git"
repository="data-hub"
outputPath="/docs/data-hub"

configFilePath="../config"
configFileBaseName="data-hub"
configFileDefault="data-hub.json"

additionalPrepareConfigs="--copy-root-readme"

