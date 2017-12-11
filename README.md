# Pimcore Documentation

Pimcore documentation generator built on [daux.io](http://daux.io/). It uses daux as composer dependency instead of forking and altering the daux repo itself. 


## Usage

After running a `composer install` you can build the documentation with the following steps:

1. Prepare rendering with the `prepare` command. This will copy the documentation files from the Pimcore repository, rename `README.md` files to `_index.md` (and fix internal links) and create config file for the selected Pimcore version. The path is the path to the `doc` directory in the Pimcore repository. 
   
    ```
    $ bin/console prepare <path to pimcore checkout>/doc
    ```
   
2. View in live mode (optional). You can use live mode to quickly test changes. If you change a documentation file in the Pimcore repository make sure you run `prepare` again.

    ```
    $ bin/console serve
    ```
    
3. Generate static files

    ```
    $ bin/console generate
    ```
    
Generated files will be written to `build/static`.


## Select the config version to use

There are multiple configuration files in the `config` directory which will be merged with [`default.json`](./config/default.json)
during the `prepare` command. You can choose which version to use by passing the `--config` option. For example, if you build Pimcore 4 docs:

```
$ bin/console prepare --config 4.x.x
```


## Theme development

Install prerequisites:

* NodeJS
* Yarn
* Install dependencies: `yarn`

Alter files in `themes/pimcore`, run `gulp` to build CSS and JS files and commit generated files back to the repository. You can use `gulp watch` to watch styles and scripts and automatically rebuild assets.


## Using generator for Pimcore bundle documentations

This tool can be used for generating docs of any Pimcore bundle documentation. To do so, follow these steps: 

* Add a config.json in your documentation directory at `.daux/<CONFIGNAME>/config.json`
* Use the `pimcore-generic` template by setting `"theme": "pimcore-generic"` in the `config.json`
* Update/Overwrite all needed config options of your `config.json`
   * config merge order is `/config/default.json` -> `/config/<CONFIGNAME>/config.json` -> `YOUR-DOC-REPOSITORY/.daux/<CONFIGNAME>/config.json` 
   * use notation `::delete::` to remove entries from `default.json` your config, e.g. `"Download": "::delete::",`
   * following additional config options are introduced by the `pimcore-generic` template: 
      * `include_disqus`: true/false
      * `disqus_url_prefix`: url prefix for including disqus, e.g. `https://pimcore.org/docs/latest`


## Releasing a new version

There is a [RMT](https://github.com/liip/RMT) [config file](./.rmt.yml) which allows you to release a new version quickly.
Please note that the docs build process relies on the latest annotated tag version, so releasing a version as annotated
tag is mandatory. RMT takes care of that for you:

```bash
$ RMT release

# or release a specific type
$ RMT release --type minor
```
