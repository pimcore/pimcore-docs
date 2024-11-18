#!/bin/bash

set -ex

# all paths relative to pimcore-docs/bin

tags=(       "v1.0.4" )
versions=(   "1.0" )
labels=(     "1.0")
maintained=( "false")

gitRepository="git@github.com:pimcore/workflow-designer.git"
repository="workflow-designer"
outputPath="/workflow-designer"

configFilePath="../config"
configFileBaseName="workflow-designer"
configFileDefault="workflow-designer.json"

additionalPrepareConfigs="--copy-root-readme"
