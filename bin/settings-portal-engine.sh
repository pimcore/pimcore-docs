#!/bin/bash

set -ex

# all paths relative to pimcore-docs/bin

tags=(      "v2.5.0"     "v2.4.12"  "v2.3.2" "v2.2.6" "v2.1.8" "v2.0.5" "v1.0.4" )
versions=(  "2.5"        "2.4"      "2.3"    "2.2"    "2.1"    "2.0"    "1.0" )
labels=(    "2.5"        "2.4"      "2.3"    "2.2"    "2.1"    "2.0"    "1.0" )
maintained=("true"       "false"     "false"  "false"  "false"  "false"  "false" )

gitRepository="git@github.com:pimcore/portal-engine.git"
repository="portal-engine"
outputPath="/portal-engine"

configFilePath="../config"
configFileBaseName="portal-engine"
configFileDefault="portal-engine.json"

additionalPrepareConfigs="--copy-root-readme"
