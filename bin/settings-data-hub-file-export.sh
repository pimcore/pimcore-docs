#!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(       "1.x"       "1.4"           "v1.3.1" "v1.2.2" )
versions=(   "1.5"       "current"       "1.3"    "1.2"    )
labels=(     "1.5 (dev)" "1.4 (current)" "1.3"    "1.2"    )
maintained=( "true"      "true"          "false"  "false"  )

gitRepository="git@github.com:pimcore/data-hub-file-export.git"
repository="data-hub-file-export"
outputPath="/docs/data-hub-file-export"

configFilePath="../config"
configFileBaseName="data-hub-file-export"
configFileDefault="data-hub-file-export.json"

additionalPrepareConfigs="--copy-root-readme"
