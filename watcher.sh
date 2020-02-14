#!/bin/bash
# lilypond file watcher and compiler
echo What lilypond file are you working on?

read filename
#filename=ikml.ly
file_trimmed="${filename%%.*}"

docker run --rm -v $(pwd):/app -w /app gpit2286/lilypond lilypond $file_trimmed.ly

open -a Skim $file_trimmed.pdf

ls $file_trimmed.ly | entr docker run --rm -v $(pwd):/app -w /app gpit2286/lilypond lilypond $file_trimmed.ly
