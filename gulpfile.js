var gulp = require('gulp');
var path = require('path');
var shell = require('gulp-shell');


gulp.task('default', ['watch']);

gulp.task('watch', function(){
  gulp.watch('./**/*.ly', ['build']);
});

gulp.task('build', function () {
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
})