module.exports = (grunt) ->
  grunt.initConfig
    dill:
      options:
        features: 'features'
        steps: 'steps'
        widgets: 'widgets'
        format: 'pretty'

  grunt.registerTask 'test', 'dill'

  grunt.loadTasks 'tasks'
