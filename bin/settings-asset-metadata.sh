#!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(      "master" )
versions=(  "current" )
labels=(    "current" )
maintained=("true"   )


repository="asset-metadata-class-definitions"
outputPath="/docs/asset-metadata"

configFilePath="../config"
configFileBaseName="asset-metadata"
configFileDefault="asset-metadata.json"

additionalPrepareConfigs="--copy-root-readme"
