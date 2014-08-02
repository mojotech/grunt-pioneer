grunt-pioneer
=============

Urgh! Pioneer

## Getting Started

#### Install the package.
`npm install grunt-pioneer --save-dev`

#### Load the `grunt-pioneer` plugin in your gruntfile.
`grunt.loadNpmTasks('grunt-pioneer')`

#### Configure the `pioneer` task in your gruntfile.
```coffee
pioneer:
  options:
    features: 'features'
    steps: 'steps'
    widgets: 'widgets'
    format: 'pretty'
    coffee: true
```

#### Run pioneer!
`grunt pioneer`


## Grunt Options
```coffee
features     Path containing your .feature files              'tests'
steps        Path containing your step definitions            'tests/steps'
widgets      Path containing your widgets                     'tests/widgets'
coffee       Print step definition snippets in coffescript    true/false
format       Available formats:
                 'pretty'  : prints the feature as is
                 'progress': prints one character per scenario
                 'json'    : prints the feature as JSON
                 'summary' : prints a summary only, after
                             all scenarios were executed
```
