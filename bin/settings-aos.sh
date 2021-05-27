#!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(      "4.x"        "4.0"             "v3.3.1" )
versions=(  "4.1"        "current"         "3.1"    )
labels=(    "4.1 (dev)"  "4.0 (current)"   "3.1"    )
maintained=("true"       "true"            "false"  )


repository="advanced-object-search"
outputPath="/docs/advanced-object-search"

configFilePath="../config"
configFileBaseName="advanced-object-search"
configFileDefault="advanced-object-search.json"

additionalPrepareConfigs="--copy-root-readme"
