#!/bin/bash

tags=(      "master" )
versions=(  "master" )
labels=(    "master" )
maintained=("true"   )


repository="advanced-object-search"
outputPath="/docs/advanced-object-search"

configFilePath="../config"
configFileBaseName="advanced-object-search"
configFileDefault="advanced-object-search.json"

additionalPrepareConfigs="--copy-root-readme"

source ./do-generate.sh
