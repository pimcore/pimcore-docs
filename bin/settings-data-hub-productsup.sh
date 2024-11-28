#!/bin/bash

set -ex

# all paths relative to pimcore-docs/bin

tags=(       "v1.3.4" "v1.2.0" "v1.1.1")
versions=(   "1.3"    "1.2"    "1.1")
labels=(     "1.3"    "1.2"    "1.1")
maintained=( "false"  "false"  "false")

gitRepository="git@github.com:pimcore/data-hub-productsup.git"
repository="data-hub-productsup"
outputPath="/data-hub-productsup"

configFilePath="../config"
configFileBaseName="data-hub-productsup"
configFileDefault="data-hub-productsup.json"

additionalPrepareConfigs="--copy-root-readme"

