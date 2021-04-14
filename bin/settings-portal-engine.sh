#!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(      "main"  "2.0"           "v1.0.4" )
versions=(  "main"  "current"       "1.0" )
labels=(    "main"  "current (2.0)" "1.0" )
maintained=("true"  "true"          "false" )


repository="portal-engine"
outputPath="/docs/portal-engine"

configFilePath="../config"
configFileBaseName="portal-engine"
configFileDefault="portal-engine.json"

additionalPrepareConfigs="--copy-root-readme"
