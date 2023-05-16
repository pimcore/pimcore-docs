#!/bin/bash

set -ex

# all paths relative to pimcore-docs/bin


tags=(       "v1.2.6" "v1.1.0" )
versions=(   "1.2"    "1.1" )
labels=(     "1.2"    "1.1" )
maintained=( "false"   "false" )

gitRepository="git@github.com:pimcore/direct-edit.git"
repository="direct-edit"
outputPath="/docs/direct-edit"

configFilePath="../config"
configFileBaseName="direct-edit"
configFileDefault="direct-edit.json"

additionalPrepareConfigs="--copy-root-readme"
