#!/bin/bash

set -ex

# all paths relative to pimcore-docs/bin

tags=(      "1.2"     "v1.1.2"     "v1.0.2")
versions=(  "1.2"     "1.1"        "1.0")
labels=(    "1.2"     "1.1"        "1.0")
maintained=("false"   "false"      "false")

gitRepository="git@github.com:pimcore/asset-metadata-class-definitions.git"
repository="asset-metadata-class-definitions"
outputPath="/docs/asset-metadata"

configFilePath="../config"
configFileBaseName="asset-metadata"
configFileDefault="asset-metadata.json"

additionalPrepareConfigs="--copy-root-readme"
