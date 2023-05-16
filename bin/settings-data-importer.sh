#!/bin/bash

set -ex

# all paths relative to pimcore-docs/bin

tags=(      "v1.7.5" "v1.6.5"  "v1.5.1" "v1.4.6" "v1.3.6" "v1.2.2" "v1.1.5" "v1.0.1" )
versions=(  "1.7"    "1.6"     "1.5" "1.4" "1.3" "1.2" "1.1"    "1.0")
labels=(    "1.7"    "1.6"     "1.5" "1.4" "1.3" "1.2" "1.1"    "1.0")
maintained=("false"  "false"   "false" "false" "false" "false" "false"  "false")

gitRepository="https://github.com/pimcore/data-importer.git"
repository="data-importer"
outputPath="/docs/data-importer"

configFilePath="../config"
configFileBaseName="data-importer"
configFileDefault="data-importer.json"

additionalPrepareConfigs="--copy-root-readme"
