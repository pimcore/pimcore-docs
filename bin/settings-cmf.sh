##!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(       "3.x"        "3.1"           "3.0"   "2.6")
versions=(   "3.2"        "current"       "3.0"   "2.6")
labels=(     "3.2 (dev)"  "3.1 (current)" "3.0"   "2.6")
maintained=( "true"       "true"          "false" "false")

repository="customer-data-framework"
outputPath="/docs/customer-management-framework"

configFilePath="../config"
configFileBaseName="cmf"
configFileDefault="cmf.json"

additionalPrepareConfigs="--copy-root-readme"

