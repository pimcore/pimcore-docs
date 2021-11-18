#!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(       "1.x"       "1.0" )
versions=(   "1.1"       "current" )
labels=(     "1.1 (dev)" "1.0 (current)")
maintained=( "true"      "true")

gitRepository="git@github.com:pimcore/openid-connect.git"
repository="openid-connect"
outputPath="/docs/openid-connect"

configFilePath="../config"
configFileBaseName="openid-connect"
configFileDefault="openid-connect.json"

additionalPrepareConfigs="--copy-root-readme"
