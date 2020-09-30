#!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(      "master" )
versions=(  "current" )
labels=(    "current" )
maintained=("true"   )


repository="advanced-object-search"
outputPath="/docs/advanced-object-search"

configFilePath="../config"
configFileBaseName="advanced-object-search"
configFileDefault="advanced-object-search.json"

additionalPrepareConfigs="--copy-root-readme"
