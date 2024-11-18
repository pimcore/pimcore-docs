#!/bin/bash

set -ex

# all paths relative to pimcore-docs/bin

tags=(       "v1.6.0" "v1.5.2"  "v1.4.3"  "v1.3.1" "v1.2.2" )
versions=(   "1.6"    "1.5"     "1.4"     "1.3"    "1.2"    )
labels=(     "1.6"    "1.5"     "1.4"     "1.3"    "1.2"    )
maintained=( "false"  "false"   "false"   "false"  "false"  )

gitRepository="git@github.com:pimcore/data-hub-file-export.git"
repository="data-hub-file-export"
outputPath="/data-hub-file-export"

configFilePath="../config"
configFileBaseName="data-hub-file-export"
configFileDefault="data-hub-file-export.json"

additionalPrepareConfigs="--copy-root-readme"
