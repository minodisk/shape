gulp = require 'gulp'
notify = require 'gulp-notify'
plumber = require 'gulp-plumber'
browserify = require 'gulp-browserify'
coffee = require 'gulp-coffee'
webserver = require 'gulp-webserver'
extReplace = require 'gulp-ext-replace'

gulp.task 'browserify', ->
  gulp
  .src 'src/shape.coffee', read: false
  .pipe plumber errorHandler: notify.onError '<%= error.message %>'
  .pipe browserify
    transform: [ 'coffeeify', 'debowerify' ]
    extensions: [ '.coffee' ]
  .pipe extReplace '.js'
  .pipe gulp.dest 'lib'

gulp.task 'coffee', ->
  gulp
  .src 'examples/**/*.coffee'
  .pipe plumber errorHandler: notify.onError '<%= error.message %>'
  .pipe coffee()
  .pipe extReplace '.js'
  .pipe gulp.dest 'examples'

gulp.task 'webserver', ->
  gulp
  .src [
    'examples'
    'lib'
  ]
  .pipe webserver
    host: '0.0.0.0'
    livereload: true
    directoryListing:
      enbled: true
      path: 'examples'

gulp.task 'watch', ->
  gulp.watch 'src/**/*.coffee', [
    'browserify'
  ]

gulp.task 'default', [
  'browserify'
  'watch'
  'webserver'
]
