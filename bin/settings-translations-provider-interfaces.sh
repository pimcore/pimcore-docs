#!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(       "master" "2.2" )
versions=(   "master" "current" )
labels=(     "master" "2.2 (current)")
maintained=( "true"   "true")

repository="translations-provider-interfaces"
outputPath="/docs/translations-provider-interfaces"

configFilePath="../config"
configFileBaseName="translations-provider-interfaces"
configFileDefault="translations-provider-interfaces.json"

additionalPrepareConfigs="--copy-root-readme"
