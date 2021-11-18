#!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(       "1.x"       )
versions=(   "1.1"       )
labels=(     "1.1 (dev)" )
maintained=( "true"      )

gitRepository="git@github.com:pimcore/headless-documents.git"
repository="headless-documents"
outputPath="/docs/headless-documents"

configFilePath="../config"
configFileBaseName="headless-documents"
configFileDefault="headless-documents.json"

additionalPrepareConfigs="--copy-root-readme"
