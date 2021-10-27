#!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(      "1.x"          "1.2"          )
versions=(  "1.3"          "current"      )
labels=(    "1.3 (dev)"    "1.2 (current)")
maintained=("true"         "true"         )

gitRepository="https://github.com/pimcore/perspective-editor.git"
repository="perspective-editor"
outputPath="/docs/perspective-editor"

configFilePath="../config"
configFileBaseName="perspective-editor"
configFileDefault="perspective-editor.json"

additionalPrepareConfigs="--copy-root-readme"
