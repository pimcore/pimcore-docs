#!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(       "1.x"        "1.3"           "v1.2.0" "v1.1.1")
versions=(   "1.4"        "current"       "1.2"    "1.1")
labels=(     "1.4 (dev)"  "1.3 (current)" "1.2"    "1.1")
maintained=( "true"       "true"          "false"  "false")

gitRepository="git@github.com:pimcore/data-hub-productsup.git"
repository="data-hub-productsup"
outputPath="/docs/data-hub-productsup"

configFilePath="../config"
configFileBaseName="data-hub-productsup"
configFileDefault="data-hub-productsup.json"

additionalPrepareConfigs="--copy-root-readme"

