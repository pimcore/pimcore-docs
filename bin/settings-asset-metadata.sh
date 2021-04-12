#!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(      "master"  "1.1"            "v1.0.2")
versions=(  "master"  "current"        "1.0")
labels=(    "master"  "1.1 (current)"  "1.0")
maintained=("true"    "true"           "false")


repository="asset-metadata-class-definitions"
outputPath="/docs/asset-metadata"

configFilePath="../config"
configFileBaseName="asset-metadata"
configFileDefault="asset-metadata.json"

additionalPrepareConfigs="--copy-root-readme"
