#!/bin/bash

set -ex

# all paths relative to pimcore-docs/bin

tags=(       "v10.6.1" "v10.5.23" "v10.4.6" "v10.3.6"        "v10.2.10"   "v10.1.5"     "v10.0.9"     "6.9"     "v6.8.12" "v6.7.3"  "v6.6.11" "v6.5.3" "v6.4.2" "v6.3.6" "v6.2.2" "v6.1.2" "v6.0.5" "v5.8.9" "4.6.5" )
versions=(   "10.6"    "10.5"     "10.4"    "10.3"           "10.2"       "10.1"        "10.0"        "6.9"     "6.8"     "6.7"     "6.6"     "6.5"    "6.4"    "6.3"    "6.2"    "6.1"    "6.0"    "5.8"    "4.6"   )
labels=(     "10.6"    "10.5"     "10.4"    "10.3"           "10.2"       "10.1"        "10.0"        "6.9"     "6.8"     "6.7"     "6.6"     "6.5"    "6.4"    "6.3"    "6.2"    "6.1"    "6.0"    "5.8"    "4.6"   )
maintained=( "true"    "false"    "false"   "false"          "false"      "false"       "false"       "false"   "false"   "false"   "false"   "false"  "false"  "false"  "false"  "false"  "false"  "false"  "false" )

gitRepository="https://github.com/pimcore/pimcore.git"
repository="pimcore"
outputPath="/docs/pimcore"

configFilePath="../config"
versionSwitchPathPrefix="/docs"
configFileBaseName="pimcore"
configFileDefault="pimcore-6.json"

additionalPrepareConfigs=""

