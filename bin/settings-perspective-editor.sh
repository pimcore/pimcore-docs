#!/bin/bash

set -ex

# all paths relative to pimcore-docs/bin

tags=(       "1.x"            "1.5"              "v1.4.2"        "v1.3.2" )
versions=(   "1.6"            "current"          "1.4"           "1.3"    )
labels=(     "1.6 (dev=)"     "1.5 (current)"    "1.4"           "1.3"    )
maintained=( "true"           "true"             "false"         "false"  )

gitRepository="https://github.com/pimcore/perspective-editor.git"
repository="perspective-editor"
outputPath="/docs/perspective-editor"

configFilePath="../config"
configFileBaseName="perspective-editor"
configFileDefault="perspective-editor.json"

additionalPrepareConfigs="--copy-root-readme"
