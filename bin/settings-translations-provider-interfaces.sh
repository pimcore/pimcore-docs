#!/bin/bash

set -ex

# all paths relative to pimcore-docs/bin

tags=(       "3.x"        "2.7"        "2.6"           "v2.5.2"   "v2.4.3"  "v2.3.1")
versions=(   "3.0"        "2.7"        "current"       "2.5"      "2.4"     "2.3")
labels=(     "3.0 (dev)"  "2.7 (dev)"  "2.6 (current)" "2.5"      "2.4"     "2.3")
maintained=( "true"       "true"       "true"          "false"    "false"   "false")

gitRepository="git@github.com:pimcore/translations-provider-interfaces.git"
repository="translations-provider-interfaces"
outputPath="/docs/translations-provider-interfaces"

configFilePath="../config"
configFileBaseName="translations-provider-interfaces"
configFileDefault="translations-provider-interfaces.json"

additionalPrepareConfigs="--copy-root-readme"
