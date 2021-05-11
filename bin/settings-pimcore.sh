#!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(       "10.x"         "10.0"               "6.9"     "v6.8.12" "v6.7.3"  "v6.6.11" "v6.5.3" "v6.4.2" "v6.3.6" "v6.2.2" "v6.1.2" "v6.0.5" "v5.8.9" "4.6.5" )
versions=(   "10.1"         "current"            "6.9"     "6.8"     "6.7"     "6.6"     "6.5"    "6.4"    "6.3"    "6.2"    "6.1"    "6.0"    "5.8"    "4.6"   )
labels=(     "10.1 (dev)"   "10.0 (current)"     "6.9"     "6.8"     "6.7"     "6.6"     "6.5"    "6.4"    "6.3"    "6.2"    "6.1"    "6.0"    "5.8"    "4.6"   )
maintained=( "true"         "true"               "true"    "false"   "false"   "false"   "false"  "false"  "false"  "false"  "false"  "false"  "false"  "false" )

repository="pimcore"
outputPath="/docs/pimcore"

configFilePath="../config"
versionSwitchPathPrefix="/docs"
configFileBaseName="pimcore"
configFileDefault="pimcore-6.json"

additionalPrepareConfigs=""

