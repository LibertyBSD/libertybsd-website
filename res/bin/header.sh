#!/bin/sh

alias mlsh=/htdocs/libertybsd.net/res/bin/ml.sh
header="$(cat /htdocs/libertybsd.net/res/header.html)"
lang="$1"
title_raw="$2"
title="$(mlsh $lang $title_raw)"

echo "$header" \
| sed 's% LL %'"$lang"'%g' \
| sed 's% TT %'"$title"'%g' \
| sed 's% INDEX %'"$(mlsh $lang header_index)"'%g' \
| sed 's% INSTALL %'"$(mlsh $lang header_install)"'%g' \
| sed 's% FAQS %'"$(mlsh $lang header_faqs)"'%g' \
| sed 's% DOWNLOAD %'"$(mlsh $lang header_download)"'%g' \
| sed 's% GIT %'"$(mlsh $lang header_git)"'%g'
