#!/bin/bash

# all paths relative to pimcore-docs/bin


tags=(       "1.x"        "1.2"           "v1.1.0" )
versions=(   "1.3"        "current"       "1.1" )
labels=(     "1.3 (dev)"  "1.2 (current)" "1.1" )
maintained=( "true"       "true"          "false" )

gitRepository="git@github.com:pimcore/direct-edit.git"
repository="direct-edit"
outputPath="/docs/direct-edit"

configFilePath="../config"
configFileBaseName="direct-edit"
configFileDefault="direct-edit.json"

additionalPrepareConfigs="--copy-root-readme"
