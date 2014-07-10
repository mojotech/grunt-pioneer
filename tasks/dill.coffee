module.exports = (grunt) ->
  grunt.registerTask 'dill', 'Grunt task for running Dill.js', ->
    _ = grunt.util._

    {features, steps, widgets, format, coffee} = @options()

    execOptions = []

    if _.isEmpty(features)
      optionsString = JSON.stringify(@options(), null, '  ')
      grunt.fail.warn "'features' option is required -- not found in: \n\n#{optionsString}\n\n"
    else
      execOptions.push features

    unless _.isEmpty(steps)
      execOptions.push '--require'
      execOptions.push steps

    unless _.isEmpty(widgets)
      execOptions.push '--require'
      execOptions.push widgets

    unless _.isEmpty(format)
      execOptions.push '--format'
      execOptions.push format

    if coffee
      execOptions.push '--coffee'

    grunt.verbose.writeln 'Exec Options: ' + execOptions.join(' ')

    exec = require('child_process').execFile
    done = grunt.task.current.async()

    exec './node_modules/.bin/dill', execOptions, (error, stdout, stderr) ->
      grunt.log.writeln stdout
      done error
