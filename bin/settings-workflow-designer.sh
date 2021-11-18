#!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(       "1.x"       "1.0" )
versions=(   "1.1"       "current" )
labels=(     "1.1 (dev)" "1.0 (current)")
maintained=( "true"      "true")

gitRepository="git@github.com:pimcore/workflow-designer.git"
repository="workflow-designer"
outputPath="/docs/workflow-designer"

configFilePath="../config"
configFileBaseName="workflow-designer"
configFileDefault="workflow-designer.json"

additionalPrepareConfigs="--copy-root-readme"
