var gulp = require('gulp');
var path = require('path');
var shell = require('gulp-shell');
var open = require('gulp-open');
var argv   = require('yargs').argv;


var lilypondSource = argv.watch;
var _pdf = lilypondSource.replace('.ly', '.pdf');
console.log(lilypondSource);
console.log(_pdf);


gulp.task('default', ['watch']);

gulp.task('watch', function(){
  //gulp.watch('./**/*.ly', ['openPdf']);
  gulp.watch(lilypondSource, ['openPdf']);
});

gulp.task('buildPdf', function () {
   return gulp.src(lilypondSource, {read: false})
  .pipe(shell([
    'lilypond <%= f(file.path) %>',
  ], {
    templateData: {
      f: function (s) {
        return path.basename(s);
        //return s.replace(/$/, '.bak')
      },
    }
  }))
});

gulp.task('openPdf', ['buildPdf'], function(){
  var options = {
  //app: '/Applications/Google\ Chrome.app'
  app: '/Applications/Preview.app'
  };
  gulp.src(_pdf)
  .pipe(open(options));
});
