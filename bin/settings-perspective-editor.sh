#!/bin/bash

set -ex

# all paths relative to pimcore-docs/bin

tags=(       "v1.5.1"           "v1.4.2"        "v1.3.2" )
versions=(   "1.5"              "1.4"           "1.3"    )
labels=(     "1.5"              "1.4"           "1.3"    )
maintained=( "false"            "false"         "false"  )

gitRepository="https://github.com/pimcore/perspective-editor.git"
repository="perspective-editor"
outputPath="/docs/perspective-editor"

configFilePath="../config"
configFileBaseName="perspective-editor"
configFileDefault="perspective-editor.json"

additionalPrepareConfigs="--copy-root-readme"
