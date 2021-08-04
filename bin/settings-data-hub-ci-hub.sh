#!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(       "1.x"       "1.0" )
versions=(   "1.1"       "current" )
labels=(     "1.1 (dev)" "1.0 (current)" )
maintained=( "true"      "true"   )

gitRepository="git@github.com:pimcore/data-hub-ci-hub.git"
repository="data-hub-ci-hub"
outputPath="/docs/data-hub-ci-hub"

configFilePath="../config"
configFileBaseName="data-hub-ci-hub"
configFileDefault="data-hub-ci-hub.json"

additionalPrepareConfigs="--copy-root-readme"

