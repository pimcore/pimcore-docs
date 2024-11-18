#!/bin/bash

set -ex

# all paths relative to pimcore-docs/bin

tags=(       "v1.4.0"    "v1.3.2" "v1.2.1"      "v1.1.3")
versions=(   "1.4"       "1.3"    "1.2"         "1.1")
labels=(     "1.4"       "1.3"    "1.2"         "1.1")
maintained=( "true"      "false"  "false"       "false")

gitRepository="git@github.com:pimcore/headless-documents.git"
repository="headless-documents"
outputPath="/headless-documents"

configFilePath="../config"
configFileBaseName="headless-documents"
configFileDefault="headless-documents.json"

additionalPrepareConfigs="--copy-root-readme"
