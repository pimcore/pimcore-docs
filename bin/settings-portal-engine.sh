#!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(      "2.x"        "2.2"           "v2.1.8" "v2.0.5" "v1.0.4" )
versions=(  "2.3"        "current"       "2.1"    "2.0"    "1.0" )
labels=(    "2.3 (dev)"  "2.2 (current)" "2.1"    "2.0"    "1.0" )
maintained=("true"       "true"          "false"  "false"  "false" )

gitRepository="git@github.com:pimcore/portal-engine.git"
repository="portal-engine"
outputPath="/docs/portal-engine"

configFilePath="../config"
configFileBaseName="portal-engine"
configFileDefault="portal-engine.json"

additionalPrepareConfigs="--copy-root-readme"
