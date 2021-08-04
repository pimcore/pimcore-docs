#!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(       "1.x"       "1.1" )
versions=(   "1.2"       "current" )
labels=(     "1.2 (dev)" "1.1 (current)")
maintained=( "true"      "true")

gitRepository="git@github.com:pimcore/data-hub-file-export.git"
repository="data-hub-file-export"
outputPath="/docs/data-hub-file-export"

configFilePath="../config"
configFileBaseName="data-hub-file-export"
configFileDefault="data-hub-file-export.json"

additionalPrepareConfigs="--copy-root-readme"
