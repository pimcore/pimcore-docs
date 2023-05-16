##!/bin/bash

set -ex

# all paths relative to pimcore-docs/bin

tags=(       "v3.4.0"   "v3.3.10"  "v3.2.14" "v3.1.1" "v3.0.3")
versions=(   "3.4"      "3.3"      "3.2"     "3.1"    "3.0")
labels=(     "3.4"      "3.3"      "3.2"     "3.1"    "3.0")
maintained=( "false"    "false"    "false"   "false"  "false")

gitRepository="https://github.com/pimcore/customer-data-framework.git"
repository="customer-data-framework"
outputPath="/docs/customer-management-framework"

configFilePath="../config"
configFileBaseName="cmf"
configFileDefault="cmf.json"

additionalPrepareConfigs="--copy-root-readme"

