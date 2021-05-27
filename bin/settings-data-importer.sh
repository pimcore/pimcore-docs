#!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(      "1.x"       "1.1"           "v1.0.1" )
versions=(  "1.2"       "current"       "1.0")
labels=(    "1.2 (dev)" "1.1 (current)" "1.0")
maintained=("true"      "true"          "false")


repository="data-importer"
outputPath="/docs/data-importer"

configFilePath="../config"
configFileBaseName="data-importer"
configFileDefault="data-importer.json"

additionalPrepareConfigs="--copy-root-readme"
