#!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(      "1.x"          "1.3"            "v1.2.1" )
versions=(  "1.4"          "current"        "1.2"    )
labels=(    "1.4 (dev)"    "1.3 (current)"  "1.2"    )
maintained=("true"         "true"           "false"  )

gitRepository="https://github.com/pimcore/perspective-editor.git"
repository="perspective-editor"
outputPath="/docs/perspective-editor"

configFilePath="../config"
configFileBaseName="perspective-editor"
configFileDefault="perspective-editor.json"

additionalPrepareConfigs="--copy-root-readme"
