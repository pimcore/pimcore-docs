#!/bin/bash

set -ex

# all paths relative to pimcore-docs/bin

tags=(       "1.x"        "1.2"            "v1.1.3"            "v1.0.6")
versions=(   "1.3"        "current"        "1.1"               "1.0" )
labels=(     "1.3 (dev)"  "1.2 (current)"  "1.1"               "1.0" )
maintained=( "true"       "true"           "false"             "false" )

gitRepository="git@github.com:pimcore/headless-documents.git"
repository="headless-documents"
outputPath="/docs/headless-documents"

configFilePath="../config"
configFileBaseName="headless-documents"
configFileDefault="headless-documents.json"

additionalPrepareConfigs="--copy-root-readme"
