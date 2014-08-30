gulp = require 'gulp'
browserify = require 'browserify'
source = require 'vinyl-source-stream'
notify = require 'gulp-notify'
plumber = require 'gulp-plumber'
coffee = require 'gulp-coffee'
webserver = require 'gulp-webserver'
extReplace = require 'gulp-ext-replace'

gulp.task 'browserify', ->
  # gulp
  # .src 'src/shape.coffee', read: false
  # .pipe plumber errorHandler: notify.onError '<%= error.message %>'
  # .pipe browserify
  #   transform: [ 'coffeeify', 'debowerify' ]
  #   extensions: [ '.coffee' ]
  #   require: [
  #     'svg.coffee'
  #   ]
  # .pipe extReplace '.js'
  # .pipe gulp.dest 'lib'

  browserify
    entries: [
      './src/shape.coffee'
    ]
    extensions: [
      '.coffee'
    ]
    standalone: 'shape'
  .bundle()
  .pipe plumber errorHandler: notify.onError '<%= error.message %>'
  .pipe source 'shape.js'
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
  gulp.watch 'examples/**/*.coffee', [
    'coffee'
  ]

gulp.task 'default', [
  'browserify'
  'coffee'
  'watch'
  'webserver'
]
