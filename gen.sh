#!/bin/sh

# STRING STRING --> NIL
# Replaces the `ml.sh` shorthand w real thing, replace LL with langcode
function process_file
{
	local file="$1"
	local lang="$2"

	sed -i 's%<!--ml.sh LL%<!--#exec cmd="bash /var/www/htdocs/libertybsd.net/res/bin/ml.sh LL%g' $file
	sed -i 's% LL % '"$lang"' %g' $file
}

# STRING --> NIL
# Generate a language's SHTML in public/$LANG
function gen_lang_ver
{
	local lang="$1"
	mkdir public 2>/dev/null
	mkdir public/$lang
	cp -r base/* public/$lang/

	for file in ./public/$lang/*.shtml
	do
		process_file "$file" "$lang"
	done
}

# NIL --> NIL
# Generate all langauages' SHTML
function gen_all_langs
{
	for file in ./res/lang/*.sh
	do
		local lang_script="$file"
		local lang="$(basename "$lang_script" ".sh")"

		gen_lang_ver "$lang"
	done
}


gen_all_langs
