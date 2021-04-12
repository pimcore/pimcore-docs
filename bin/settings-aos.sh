#!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(      "master"    "4.0"             "v3.3.1" )
versions=(  "master"    "current"         "3.1"    )
labels=(    "master"    "4.0 (current)"   "3.1"    )
maintained=("true"      "true"            "false"  )


repository="advanced-object-search"
outputPath="/docs/advanced-object-search"

configFilePath="../config"
configFileBaseName="advanced-object-search"
configFileDefault="advanced-object-search.json"

additionalPrepareConfigs="--copy-root-readme"
