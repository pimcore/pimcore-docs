var cssnano = require('cssnano'),
    gulp = require('gulp'),
    less = require('gulp-less'),
    rename = require('gulp-rename'),
    plumber = require('gulp-plumber'),
    postcss = require('gulp-postcss'),
    stylelint = require('gulp-stylelint'),
    concat = require('gulp-concat'),
    uglify = require('gulp-uglify');

var styles = {
    'pimcore-core': {
        source: "themes/pimcore/less/pimcore-core.less",
        dest: "themes/pimcore/css/"
    },
    'pimcore-generic': {
        source: "themes/pimcore/less/pimcore-generic.less",
        dest: "themes/pimcore/css/"
    }
};

var scripts = {
    pimcore: {
        filename: "pimcore.js",
        sources: [
            "vendor/daux/daux.io/themes/daux/js/jquery-1.11.3.min.js",
            "vendor/daux/daux.io/themes/daux/js/highlight.pack.js",
            "themes/pimcore/js/source/pimcore_code_section.js",
            "themes/pimcore/js/source/pimcore_video.js",
            "themes/pimcore/js/source/pimcore.js",
            "vendor/daux/daux.io/themes/daux/js/daux.js"
        ],
        dest: "themes/pimcore/js/build/"
    }
};

var stylelintRules = {
    "indentation": 4,
    "selector-list-comma-newline-after": "always-multi-line",
    "selector-max-id": 0,

    // Autoprefixer
    "at-rule-no-vendor-prefix": true,
    "media-feature-name-no-vendor-prefix": true,
    // "property-no-vendor-prefix": false,
    "selector-no-vendor-prefix": true,
    "value-no-vendor-prefix": true
};

var cssnanoOptions = {
    safe: true,           // Disable dangerous optimisations
    filterPlugins: false, // This does very weird stuff
    autoprefixer: {
        add: true,        // Add needed prefixes
        remove: true      // Remove unnecessary prefixes
    }
};

function createCSSTask(source, dest) {
    return function () {
        return gulp.src(source)
            .pipe(plumber())
            .pipe(less())
            .pipe(postcss([cssnano(cssnanoOptions)]))
            .pipe(rename({suffix: '.min'}))
            .pipe(gulp.dest(dest));
    }
}

function createScriptTask(filename, sources, destination) {
    return function () {
        return gulp.src(sources)
            .pipe(plumber())
            .pipe(concat(filename))
            .pipe(gulp.dest(destination))
            .pipe(uglify())
            .pipe(rename({suffix: '.min'}))
            .pipe(gulp.dest(destination));
    }
}

gulp.task('lint-css', function () {
    return gulp
        .src(['themes/**/less/**/*.less', '!themes/**/vendor/**/*.less'])
        .pipe(stylelint({
            failAfterError: true,
            config: {
                extends: 'stylelint-config-standard',
                rules: stylelintRules
            },
            syntax: 'less',
            reporters: [{
                formatter: 'string',
                console: true
            }],
            debug: true
        }));
});

var style_tasks = [];
for (var style in styles) {
    if (styles.hasOwnProperty(style)) {
        gulp.task('style_' + style, createCSSTask(styles[style].source, styles[style].dest));
        style_tasks.push('style_' + style);
    }
}

style_tasks.push('lint-css');

var script_tasks = [];
for (var script in scripts) {
    if (scripts.hasOwnProperty(script)) {
        gulp.task('script_' + script, createScriptTask(
            scripts[script].filename,
            scripts[script].sources,
            scripts[script].dest
        ));

        script_tasks.push('script_' + script);
    }
}

gulp.task("styles", gulp.series(style_tasks));
gulp.task("scripts", gulp.series(script_tasks));
gulp.task('default', gulp.series(['scripts', 'styles']));

gulp.task('watch', function () {
    // Watch .less files
    gulp.watch('themes/**/less/**/*.less', { ignoreInitial: false }, gulp.series(['styles']));

    // Watch .js files
    gulp.watch('themes/**/js/source/**/*.js', { ignoreInitial: false }, gulp.series(['scripts']));
});
