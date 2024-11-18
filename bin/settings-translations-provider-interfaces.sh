#!/bin/bash

set -ex

# all paths relative to pimcore-docs/bin

tags=(       "v2.7.0" "v2.6.3" "v2.5.2"   "v2.4.3"  "v2.3.1")
versions=(   "2.7"    "2.6"    "2.5"      "2.4"     "2.3")
labels=(     "2.7"    "2.6"    "2.5"      "2.4"     "2.3")
maintained=( "true"   "false"  "false"    "false"   "false")

gitRepository="git@github.com:pimcore/translations-provider-interfaces.git"
repository="translations-provider-interfaces"
outputPath="/translations-provider-interfaces"

configFilePath="../config"
configFileBaseName="translations-provider-interfaces"
configFileDefault="translations-provider-interfaces.json"

additionalPrepareConfigs="--copy-root-readme"
