#!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(      "main"    "1.0"          )
versions=(  "main"    "current"      )
labels=(    "main"    "1.0 (current)")
maintained=("true"    "true"         )


repository="data-importer"
outputPath="/docs/data-importer"

configFilePath="../config"
configFileBaseName="data-importer"
configFileDefault="data-importer.json"

additionalPrepareConfigs="--copy-root-readme"
