#!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(      "2.x"        "2.1"           "v2.0.5" "v1.0.4" )
versions=(  "2.2"        "current"       "2.0"    "1.0" )
labels=(    "2.2 (dev)"  "2.1 (current)" "2.0"    "1.0" )
maintained=("true"       "true"          "false"  "false" )

gitRepository="git@github.com:pimcore/portal-engine.git"
repository="portal-engine"
outputPath="/docs/portal-engine"

configFilePath="../config"
configFileBaseName="portal-engine"
configFileDefault="portal-engine.json"

additionalPrepareConfigs="--copy-root-readme"
