module.exports = (grunt) ->
  grunt.initConfig
    dill:
      options:
        features: 'features'
        steps: 'steps'
        widgets: 'widgets'
        format: 'pretty'
        driver: 'phantomjs'
        preventBrowserReload: true

  grunt.registerTask 'test', 'dill'

  grunt.loadTasks 'tasks'
