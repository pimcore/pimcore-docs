#!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(      "1.x"       "1.5"            "v1.1.5" "v1.0.1" )
versions=(  "1.6"       "current"        "1.1"    "1.0")
labels=(    "1.6 (dev)" "1.5 (current)"  "1.1"    "1.0")
maintained=("true"      "true"           "false"  "false")

gitRepository="https://github.com/pimcore/data-importer.git"
repository="data-importer"
outputPath="/docs/data-importer"

configFilePath="../config"
configFileBaseName="data-importer"
configFileDefault="data-importer.json"

additionalPrepareConfigs="--copy-root-readme"
