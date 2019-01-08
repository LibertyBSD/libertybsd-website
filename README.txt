===============================================================================
LIBERTYBSD-WEBSITE                                      Pretty self-explanatory
===============================================================================

The LBSD site is written as simple HTML-- no fancy Markdown or whatever.
You can find the raw HTML in base/*.shtml

----------------------------------------
USAGE
----------------------------------------
To generate the full HTML for every version (in their own directories) run
	`sh gen.sh`
with the repo as your CWD.


----------------------------------------
EDITING
----------------------------------------
When editing the HTML, make sure to edit the file in "base/*.shtml".
When (if) you are adding a new string that can possibly be translated, make
sure to add a variable for it in "res/lang/en.sh" (at least), and to add
the string properly:

	<!--ml.sh LL your_strings_variable_name"-->

Of course, replace "your_strings_variable_name" with whatever variable-name
you wrote it as in "res/lang/en.sh".


----------------------------------------
MULTI-LANG
----------------------------------------
Multi-lang is handled by embedded server-side includes in the HTML-- every
place a string would ordinarily go is replaced by a call to the script
"res/bin/ml.sh" with two arguments:
	* lang-code
	* string-name

That call, in the HTML, looks like mentioned above in EDITING.

All strings are stored as shell variables in "res/lang/" under their
respective langcode.


----------------------------------------
CREDITS
----------------------------------------
Spanish translation by jorgesumle,
Esperanto translation mainly by Tirifto,
various contributions by Jimmybot.


----------------------------------------
BORING STUFF
----------------------------------------
Maintainer is Jaidyn Levesque <jadedctrl@teknik.io>,
license is CC 0,
and sauce is at https://git.eunichx.us/libertybsd-website
