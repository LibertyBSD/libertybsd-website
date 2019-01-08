#!/usr/local/bin/bin/bash

# name: multilang (ml.sh)
# main: jaidyn <jadedctrl@teknik.io>
# lisc: public domain
# desc: prints a specified variable in the specified language (from
#	user-defined language-files, etc). Useful for multi-lang
#	websites, especially in combination with server-side-includes.


case "$1" in
	"en") . /var/www/htdocs/libertybsd.net/res/lang/en.sh ;;
	"eo") . /var/www/htdocs/libertybsd.net/res/lang/eo.sh ;;
esac

var=$2

echo ${!var}
