#!/bin/sh

alias mlsh=/htdocs/libertybsd.net/http/res/bin/ml.sh
footer="$(cat /htdocs/libertybsd.net/http/res/footer.html)"
lang="$1"

echo "$footer" \
| sed 's%LICENSE%'"$(mlsh $lang footer_license)"'%g'
