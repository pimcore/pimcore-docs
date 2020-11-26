#!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(       "master" )
versions=(   "current" )
labels=(     "current" )
maintained=( "true"   )

repository="translations-provider-interfaces"
outputPath="/docs/translations-provider-interfaces"

configFilePath="../config"
configFileBaseName="translations-provider-interfaces"
configFileDefault="translations-provider-interfaces.json"

additionalPrepareConfigs="--copy-root-readme"
