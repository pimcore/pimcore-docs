#!/bin/bash

set -ex

# all paths relative to pimcore-docs/bin

tags=(       "v1.1.1" "v1.0.3")
versions=(   "1.1"    "1.0")
labels=(     "1.1"    "1.0")
maintained=( "false"  "false")

gitRepository="git@github.com:pimcore/data-hub-ci-hub.git"
repository="data-hub-ci-hub"
outputPath="/docs/data-hub-ci-hub"

configFilePath="../config"
configFileBaseName="data-hub-ci-hub"
configFileDefault="data-hub-ci-hub.json"

additionalPrepareConfigs="--copy-root-readme"

