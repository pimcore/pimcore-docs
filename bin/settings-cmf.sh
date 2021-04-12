##!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(       "master"  "3.0"           "2.6")
versions=(   "master"  "current"       "2.6")
labels=(     "master"  "3.0 (current)" "2.6")
maintained=( "true"    "true"          "false")

repository="customer-data-framework"
outputPath="/docs/customer-management-framework"

configFilePath="../config"
configFileBaseName="cmf"
configFileDefault="cmf.json"

additionalPrepareConfigs="--copy-root-readme"

