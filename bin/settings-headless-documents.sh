#!/bin/bash

set -ex

# all paths relative to pimcore-docs/bin

tags=(       "2.x"       "1.3"        "1.2"            "v1.1.3")
versions=(   "2.0"       "1.3"        "current"        "1.1")
labels=(     "2.0 (dev)" "1.3 (dev)"  "1.2 (current)"  "1.1")
maintained=( "true"      "true"       "true"           "false")

gitRepository="git@github.com:pimcore/headless-documents.git"
repository="headless-documents"
outputPath="/docs/headless-documents"

configFilePath="../config"
configFileBaseName="headless-documents"
configFileDefault="headless-documents.json"

additionalPrepareConfigs="--copy-root-readme"
