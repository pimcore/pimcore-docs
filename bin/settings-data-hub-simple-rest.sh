#!/bin/bash

set -ex

# all paths relative to pimcore-docs/bin

tags=(       "v1.7.2"    "v1.6.1"  "v1.5.4" "v1.4.0" "v1.3.2")
versions=(   "1.7"       "1.6"     "1.5"    "1.4"    "1.3")
labels=(     "1.7"       "1.6"     "1.5"    "1.4"    "1.3")
maintained=( "false"     "false"   "false"  "false"  "false")

gitRepository="git@github.com:pimcore/data-hub-simple-rest.git"
repository="data-hub-simple-rest"
outputPath="/data-hub-simple-rest"

configFilePath="../config"
configFileBaseName="data-hub-simple-rest"
configFileDefault="data-hub-simple-rest.json"

additionalPrepareConfigs="--copy-root-readme"

