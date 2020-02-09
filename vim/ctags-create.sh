#!/bin/sh
set -e -x

PATH="/usr/local/bin:$PATH"
trap "rm -f .git/tags.$$" EXIT
ctags --tag-relative=yes -Rf tags.$$ --languages={c++,python,yaml}
mv tags.$$ tags.txt
