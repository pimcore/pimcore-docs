#!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(       "master" "1.1" )
versions=(   "master" "current" )
labels=(     "master" "1.1 (current)")
maintained=( "true"   "true")

repository="data-hub-productsup"
outputPath="/docs/data-hub-productsup"

configFilePath="../config"
configFileBaseName="data-hub-productsup"
configFileDefault="data-hub-productsup.json"

additionalPrepareConfigs="--copy-root-readme"

