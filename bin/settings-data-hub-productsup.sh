#!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(       "1.x"        "1.1" )
versions=(   "1.2"        "current" )
labels=(     "1.2 (dev)"  "1.1 (current)")
maintained=( "true"       "true")

repository="data-hub-productsup"
outputPath="/docs/data-hub-productsup"

configFilePath="../config"
configFileBaseName="data-hub-productsup"
configFileDefault="data-hub-productsup.json"

additionalPrepareConfigs="--copy-root-readme"

