#!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(       "1.x"        "1.3"           )
versions=(   "1.4"        "current"       )
labels=(     "1.4 (dev)"  "1.3 (current)" )
maintained=( "true"       "true"          )

gitRepository="git@github.com:pimcore/data-hub-simple-rest.git"
repository="data-hub-simple-rest"
outputPath="/docs/data-hub-simple-rest"

configFilePath="../config"
configFileBaseName="data-hub-simple-rest"
configFileDefault="data-hub-simple-rest.json"

additionalPrepareConfigs="--copy-root-readme"

