var gulp = require('gulp');
var path = require('path');
var shell = require('gulp-shell');
var open = require('gulp-open');


gulp.task('default', ['watch']);

gulp.task('watch', function(){
  gulp.watch('./**/*.ly', ['openPdf']);
  //gulp.watch('./**/*.pdf', ['openPdf']);
});

gulp.task('buildPdf', function () {
   return gulp.src('*.ly', {read: false})
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
  gulp.src('./*.pdf')
  .pipe(open(options));
});
