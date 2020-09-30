# Pimcore Documentation

Pimcore documentation generator built on [daux.io](http://daux.io/). It uses daux as composer dependency instead of forking
and altering the daux repo itself. 


## Usage

After running a `composer install` you can build the documentation with the following steps:

1. Prepare rendering with the `prepare` command. This will copy the documentation files from the Pimcore repository, rename
   `README.md` files to `_index.md` (and fix internal links) and create config file for the selected Pimcore version. The
   path is the path to the `doc` directory in the Pimcore repository. 
   
   Required options are: 
     - config-file: The config file to use.
     - repository-version: The version of the documentation.
     - repository-version-label: The name of version of the documentation, e.g. current (6.8).
     - repository-version-maintained: If version is maintained, 'true' or 'false')
     - version-map-file: Path to version map file for building version switch.
     - version-switch-path-prefix: Url prefix that is added to version switch urls, following schema '<PREFIX>/<VERSION>/_index.html'.
   
    ```
    $ bin/console prepare \ 
       --config-file=./config/pimcore6.json \
       --repository-version=master \
       --repository-version-label=master \
       --repository-version-maintained=true \
       --version-map-file=./versionmaps/pimcore.json \
       --version-switch-path-prefix=<build_path> \
       <path to pimcore checkout>/doc <build_path>/master
    ```
   
2. View in live mode (optional). You can use live mode to quickly test changes. If you change a documentation file in the
   Pimcore repository make sure you run `prepare` again.

    ```
    $ bin/console serve
    ```
    
3. Generate static files

    ```
    $ bin/console generate --source <build_path>/master --configuration-file <build_path>/master/config.json  
    ```
    
Generated files will be written to `build/static`.

## Version Switch 
Version switch information is generated into a version map file and based on file names. If in different versions the 
same documentation (same name) file exists, then a version switch is possible for that documentation page.
The version switch is visible when there are other versions to switch to of the current file.  

Since prepare command populates the version map file, it might be necessary to run the 
prepare command for all versions twice, so that version map file can be fully populated. 
Only then the version switch is visible on all possible pages. 


## Using `pimcore-docs` for other package's documentations

This tool can be used for generating docs of any package (e.g. for a Pimcore Bundle). To do so, follow these steps:

* Add a config.json in your documentation directory e.g. `doc/config.json`. Take a look at the [config/](./config) directory
  and at the [Daux docs](https://dauxio.github.io/Configuration/index.html) to get started.
* Use the `pimcore-generic` template variant by setting `"theme": "pimcore-generic"` in the `config.json`. You can also
  specify a custom theme dir to the `serve` and `generate` commands and use a completely custom theme and theme dir (see
  Daux docs for details on themes).

You can now use your custom config file by just passing the config file to the prepare command:

```shell
$ bin/console prepare ../my-bundle/doc -c ../my-bundle/doc/config.json
```

If you want to use a completely custom theme directory make sure to pass it to the `serve` and `generate` commands:

```shell
$ bin/console serve -t ../my-bundle/themes
$ bin/console generate -t ../my-bundle/themes
```

## Highlighting Special Docs
It is possible to add a ribbon and a subtitle to the documentation header. The ribbon is shown
on right side of the logo in the navigation header, the subtext blow the logo. 

Subtitle and ribbon text are defined in the config-file as follows: 

```json 
{
    "title": "some special enterprise bundle for Pimcore",
    "sub_title": "Special bundle",
    "html": {
        "ribbon_text": "Enterprise"
    }
}
``` 


## Theme development

Install prerequisites:

* NodeJS
* Yarn
* Install dependencies: `yarn`

Alter files in `themes/pimcore`, run `gulp` to build CSS and JS files and commit generated files back to the repository.
You can use `gulp watch` to watch styles and scripts and automatically rebuild assets.


## Generating Pimcore Docs
In this bundle there are a couple of bash scripts to generate docs of Pimcore and its 
highlight extensions for multiple versions based on the configuration files shipped with 
the repository. They are all located under `/bin` and executed as follows: 

`./do-generate.sh settings-pimcore.sh `

In settings files there are all necessary settings for versions, repositories, etc. 
```bash
#!/bin/bash

# all paths relative to pimcore-docs/bin

tags=(       "master"  "v6.7.2"        "v6.6.11" "v6.5.3" "v6.4.2" "v6.3.6" "v6.2.2" "v6.1.2" "v6.0.5" "v5.8.9" "4.6.5" )
versions=(   "master"  "current"       "6.6"     "6.5"    "6.4"    "6.3"    "6.2"    "6.1"    "6.0"    "5.8"    "4.6"   )
labels=(     "master"  "6.7 (current)" "6.6"     "6.5"    "6.4"    "6.3"    "6.2"    "6.1"    "6.0"    "5.8"    "4.6"   )
maintained=( "true"    "true"          "false"   "false"  "false"  "false"  "false"  "false"  "false"  "false"  "false" )

repository="pimcore"
outputPath="/docs/pimcore"

configFilePath="../config"
versionSwitchPathPrefix="/docs"
configFileBaseName="pimcore"
configFileDefault="pimcore-6.json"

additionalPrepareConfigs=""
```

To add a new bundle for generation, just have a look at existing configuration files and
create a new one and pass it as parameter to the `do-generate.sh` script. 
