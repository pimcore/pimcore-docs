#!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(       "2.x"        "2.2" )
versions=(   "2.3"        "current" )
labels=(     "2.3 (dev)"  "2.2 (current)")
maintained=( "true"       "true")

gitRepository="git@github.com:pimcore/translations-provider-interfaces.git"
repository="translations-provider-interfaces"
outputPath="/docs/translations-provider-interfaces"

configFilePath="../config"
configFileBaseName="translations-provider-interfaces"
configFileDefault="translations-provider-interfaces.json"

additionalPrepareConfigs="--copy-root-readme"
