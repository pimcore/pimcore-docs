#!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(       "1.x"        "1.1"            "v1.0.6")
versions=(   "1.2"        "current"        "1.0" )
labels=(     "1.2 (dev)"  "1.1 (current)"  "1.0" )
maintained=( "true"       "true"           "false" )

gitRepository="git@github.com:pimcore/headless-documents.git"
repository="headless-documents"
outputPath="/docs/headless-documents"

configFilePath="../config"
configFileBaseName="headless-documents"
configFileDefault="headless-documents.json"

additionalPrepareConfigs="--copy-root-readme"
