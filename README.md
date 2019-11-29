# lilypondScores

## Running from Docker
```docker run --rm -v $(pwd):/app -w /app gpit2286/lilypond lilypond [filename]```

```docker run --rm -v $(pwd):/app -w /app gpit2286/lilypond abc2ly [filename]```

## Watch file and compile on change
### requires 'entr'
```brew install entr```
### watch command:
```ls [filename] | entr docker run --rm -v $(pwd):/app -w /app gpit2286/lilypond lilypond [filename]```

## Reload PDF
The solution is to use Skim, an open source PDF viewer for Mac.

This app has the ability to automatically detect changes to an open file and reload it. You can open Skim from the command line using:

```$ open -a Skim filename.pdf```

Note that it doesn’t work straight out of the box… Open Skim and set the Preferences => Sync => Check for file changes setting. It will then look for changes to the file on disk when running.

However… it brings up an annoying dialog when it detects a file change! There’s a hidden preference to disable this, so run this from the command line:

```$ defaults write -app Skim SKAutoReloadFileUpdate -boolean true```

And then it works as we’d hope.
