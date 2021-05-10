#!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(      "main"    "1.0"          )
versions=(  "main"    "current"      )
labels=(    "main"    "1.0 (current)")
maintained=("true"    "true"         )


repository="perspective-editor"
outputPath="/docs/perspective-editor"

configFilePath="../config"
configFileBaseName="perspective-editor"
configFileDefault="perspective-editor.json"

additionalPrepareConfigs="--copy-root-readme"
