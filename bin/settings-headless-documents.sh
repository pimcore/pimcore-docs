#!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(       "1.x"        "1.0"  )
versions=(   "1.1"        "current"   )
labels=(     "1.1 (dev)"  "1.0 (current)" )
maintained=( "true"       "true" )

gitRepository="git@github.com:pimcore/headless-documents.git"
repository="headless-documents"
outputPath="/docs/headless-documents"

configFilePath="../config"
configFileBaseName="headless-documents"
configFileDefault="headless-documents.json"

additionalPrepareConfigs="--copy-root-readme"
