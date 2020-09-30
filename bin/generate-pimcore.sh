#!/bin/bash

tags=(       "master"  "v6.7.2"        "v6.6.11" "v6.5.3" "v6.4.2" "v6.3.6" "v6.2.2" "v6.1.2" "v6.0.5" "v5.8.9" "4.6.5" )
versions=(   "master"  "current"       "6.6"     "6.5"    "6.4"    "6.3"    "6.2"    "6.1"    "6.0"    "5.8"    "4.6"   )
labels=(     "master"  "6.7 (current)" "6.6"     "6.5"    "6.4"    "6.3"    "6.2"    "6.1"    "6.0"    "5.8"    "4.6"   )
maintained=( "true"    "true"          "false"   "false"  "false"  "false"  "false"  "false"  "false"  "false"  "false" )

#tags=(     "master" "v6.7.0" )
#versions=( "master" "6.7"    )

repository="pimcore"
outputPath="/docs"

configFilePath="../config"
versionSwitchPathPrefix="/docs"
configFileBaseName="pimcore"
configFileDefault="pimcore-6.json"

additionalPrepareConfigs=""

source ./do-generate.sh

