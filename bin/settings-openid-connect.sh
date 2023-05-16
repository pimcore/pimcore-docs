#!/bin/bash

set -ex

# all paths relative to pimcore-docs/bin

tags=(       "v1.0.9" )
versions=(   "1.0" )
labels=(     "1.0")
maintained=( "false")

gitRepository="git@github.com:pimcore/openid-connect.git"
repository="openid-connect"
outputPath="/docs/openid-connect"

configFilePath="../config"
configFileBaseName="openid-connect"
configFileDefault="openid-connect.json"

additionalPrepareConfigs="--copy-root-readme"
