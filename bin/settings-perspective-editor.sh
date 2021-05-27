#!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(      "1.x"          "1.0"          )
versions=(  "1.1"          "current"      )
labels=(    "1.1 (dev)"    "1.0 (current)")
maintained=("true"         "true"         )


repository="perspective-editor"
outputPath="/docs/perspective-editor"

configFilePath="../config"
configFileBaseName="perspective-editor"
configFileDefault="perspective-editor.json"

additionalPrepareConfigs="--copy-root-readme"
