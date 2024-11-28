#!/bin/bash

set -ex

# all paths relative to pimcore-docs/bin

tags=(      "v4.3.4" "v4.2.8" "v4.1.0"  "v4.0.2"  "v3.3.1" )
versions=(  "4.3"    "4.2"    "4.1"     "4.0"     "3.3"    )
labels=(    "4.3"    "4.2"    "4.1"     "4.0"     "3.3"    )
maintained=("false"  "false"  "false"   "false"   "false"  )

gitRepository="https://github.com/pimcore/advanced-object-search.git"
repository="advanced-object-search"
outputPath="/advanced-object-search"

configFilePath="../config"
configFileBaseName="advanced-object-search"
configFileDefault="advanced-object-search.json"

additionalPrepareConfigs="--copy-root-readme"
