#!/bin/sh

alias mlsh=/htdocs/libertybsd.net/res/bin/ml.sh
header="$(cat /htdocs/libretybsd.net/res/header.html)"
lang="$1"
title_raw="$2"
title="$(mlsh $lang $title_raw)"

echo "$header" \
| sed 's% TT %'"$title"'%g' \
| sed 's% INDEX %'"$(mlsh $lang index)"'%g' \
| sed 's% INSTALL %'"$(mlsh $lang install)"'%g' \
| sed 's% FAQS %'"$(mlsh $lang faqs)"'%g' \
| sed 's% DOWNLOAD %'"$(mlsh $lang download)"'%g' \
| sed 's% GIT %'"$(mlsh $lang git)"'%g'
