#!/bin/sh

alias mlsh=/htdocs/libertybsd.net/res/bin/ml.sh
footer="$(cat /htdocs/libretybsd.net/res/footer.html)"
lang="$1"

echo "$footer" \
| sed 's% LICENSE %'"$(mlsh $lang footer_license)"'%g'
