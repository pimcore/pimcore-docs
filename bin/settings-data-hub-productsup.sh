#!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(       "master" )
versions=(   "current" )
labels=(     "current" )
maintained=( "true"   )

repository="data-hub-productsup"
outputPath="/docs/data-hub-productsup"

configFilePath="../config"
configFileBaseName="data-hub-productsup"
configFileDefault="data-hub-productsup.json"

additionalPrepareConfigs="--copy-root-readme"

