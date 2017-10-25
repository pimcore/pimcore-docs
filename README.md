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

Alter files in `themes/pimcore`, run `gulp` to build CSS and JS files and commit generated files back to the repository. To continously build assets you can use `gulp watch` to watch styles and scripts and automatically rebuild assets.
