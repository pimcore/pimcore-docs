#!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(       "1.x"        "1.7"           "v1.6.1"  "v1.5.4" "v1.4.0" "v1.3.2")
versions=(   "1.8"        "current"       "1.6"     "1.5"    "1.4"    "1.3")
labels=(     "1.8 (dev)"  "1.7 (current)" "1.6"     "1.5"    "1.4"    "1.3")
maintained=( "true"       "true"          "false"   "false"  "false"  "false")

gitRepository="git@github.com:pimcore/data-hub-simple-rest.git"
repository="data-hub-simple-rest"
outputPath="/docs/data-hub-simple-rest"

configFilePath="../config"
configFileBaseName="data-hub-simple-rest"
configFileDefault="data-hub-simple-rest.json"

additionalPrepareConfigs="--copy-root-readme"

