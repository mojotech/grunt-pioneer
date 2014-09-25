module.exports = (grunt) ->
  grunt.initConfig
    pioneer:
      options:
        features: 'features'
        steps: 'steps'
        widgets: 'widgets'
        driver: 'phantomjs'
        format: 'pretty'

  grunt.registerTask 'test', 'pioneer'

  grunt.loadTasks 'tasks'
