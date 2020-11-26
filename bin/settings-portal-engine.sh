#!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(      "main" )
versions=(  "current" )
labels=(    "current" )
maintained=("true"   )


repository="portal-engine"
outputPath="/docs/portal-engine"

configFilePath="../config"
configFileBaseName="portal-engine"
configFileDefault="portal-engine.json"

additionalPrepareConfigs="--copy-root-readme"
