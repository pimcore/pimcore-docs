#!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(      "1.x"        "1.1"            "v1.0.2")
versions=(  "1.2"        "current"        "1.0")
labels=(    "1.2 (dev)"  "1.1 (current)"  "1.0")
maintained=("true"       "true"           "false")

gitRepository="git@github.com:pimcore/asset-metadata-class-definitions.git"
repository="asset-metadata-class-definitions"
outputPath="/docs/asset-metadata"

configFilePath="../config"
configFileBaseName="asset-metadata"
configFileDefault="asset-metadata.json"

additionalPrepareConfigs="--copy-root-readme"
