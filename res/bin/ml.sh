#!/usr/local/bin/bash

# name: multilang (ml.sh)
# main: jaidyn <jadedctrl@teknik.io>
# lisc: public domain
# desc: prints a specified variable in the specified language (from
#	user-defined language-files, etc). Useful for multi-lang
#	websites, especially in combination with server-side-includes.


case "$1" in
	"en") . /htdocs/libertybsd.net/http/res/lang/en.sh ;;
	"es") . /htdocs/libertybsd.net/http/res/lang/es.sh ;;
	"eo") . /htdocs/libertybsd.net/http/res/lang/eo.sh ;;
esac

var=$2

echo ${!var}
