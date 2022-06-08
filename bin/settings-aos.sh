#!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(      "4.x"        "4.3"             "v4.2.8" "v4.1.0"  "v4.0.2"  "v3.3.1" )
versions=(  "4.4"        "current"         "4.2"    "4.1"     "4.0"     "3.3"    )
labels=(    "4.4 (dev)"  "4.3 (current)"   "4.2"    "4.1"     "4.0"     "3.3"    )
maintained=("true"       "true"            "false"  "false"   "false"   "false"  )

gitRepository="https://github.com/pimcore/advanced-object-search.git"
repository="advanced-object-search"
outputPath="/docs/advanced-object-search"

configFilePath="../config"
configFileBaseName="advanced-object-search"
configFileDefault="advanced-object-search.json"

additionalPrepareConfigs="--copy-root-readme"
