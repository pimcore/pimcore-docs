##!/bin/bash

set -ex

# all paths relative to pimcore-docs/bin

tags=(       "4.x"        "3.3"           "v3.2.14" "v3.1.1" "v3.0.3")
versions=(   "4.0"        "current"       "3.2"     "3.1"    "3.0")
labels=(     "4.0 (dev)"  "3.3 (current)" "3.2"     "3.1"    "3.0")
maintained=( "true"       "true"          "false"   "false"  "false")

gitRepository="https://github.com/pimcore/customer-data-framework.git"
repository="customer-data-framework"
outputPath="/docs/customer-management-framework"

configFilePath="../config"
configFileBaseName="cmf"
configFileDefault="cmf.json"

additionalPrepareConfigs="--copy-root-readme"

