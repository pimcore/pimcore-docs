##!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(       "master" )
versions=(   "master" )
labels=(     "master" )
maintained=( "true"   )

repository="customer-data-framework"
outputPath="/docs/cmf"

configFilePath="../config"
configFileBaseName="cmf"
configFileDefault="cmf.json"

additionalPrepareConfigs="--copy-root-readme"

