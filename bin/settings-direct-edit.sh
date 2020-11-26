#!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(      "master" )
versions=(  "current" )
labels=(    "current" )
maintained=("true"   )


repository="direct-edit"
outputPath="/docs/direct-edit"

configFilePath="../config"
configFileBaseName="direct-edit"
configFileDefault="direct-edit.json"

additionalPrepareConfigs="--copy-root-readme"
