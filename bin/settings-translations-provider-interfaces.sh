#!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(       "2.x"        "2.4"            "v2.3.1" "v2.2.3")
versions=(   "2.5"        "current"        "2.3" "2.2" )
labels=(     "2.5 (dev)"  "2.4 (current)"  "2.3" "2.2")
maintained=( "true"       "true"           "false" "false")

gitRepository="git@github.com:pimcore/translations-provider-interfaces.git"
repository="translations-provider-interfaces"
outputPath="/docs/translations-provider-interfaces"

configFilePath="../config"
configFileBaseName="translations-provider-interfaces"
configFileDefault="translations-provider-interfaces.json"

additionalPrepareConfigs="--copy-root-readme"
