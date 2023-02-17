#!/bin/bash

set -ex

# all paths relative to pimcore-docs/bin

tags=(       "2.x"       "1.6"           "v1.5.2"  "v1.4.3"  "v1.3.1" "v1.2.2" )
versions=(   "2.0"       "current"       "1.5"     "1.4"     "1.3"    "1.2"    )
labels=(     "2.0 (dev)" "1.6 (current)" "1.5"     "1.4"     "1.3"    "1.2"    )
maintained=( "true"      "true"          "false"   "false"   "false"  "false"  )

gitRepository="git@github.com:pimcore/data-hub-file-export.git"
repository="data-hub-file-export"
outputPath="/docs/data-hub-file-export"

configFilePath="../config"
configFileBaseName="data-hub-file-export"
configFileDefault="data-hub-file-export.json"

additionalPrepareConfigs="--copy-root-readme"
