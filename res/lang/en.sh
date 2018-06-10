#!/bin/sh


# INDEX
##################

index_raddle="/f/libertybsd on <a href='https://raddle.me'>raddle</a> &#x1f44d;"
index_reddit="/r/libertybsd on <a href='https://reddit.com'>reddit</a> &#x1f44e;"
index_freenode="#libertybsd on <a href='https://freenode.net'>Freenode</a> &#x2605;"


index_p1="<a href='https://openbsd.org'>OpenBSD</a> is universally known as an operating
system designed with security in mind, proudly being able to say that it has had
&ldquo;Only two remote holes in the default install, in a heck of a long time!&rdquo;"

index_p2="However, OpenBSD ships with
<a href='https://cvsweb.openbsd.org/cgi-bin/cvsweb/src/sys/dev/microcode'>several pieces of
non-free, binary only firmware</a> in the base system, and depending on the hardware
detected, by default
<a href='https://cvsweb.openbsd.org/cgi-bin/cvsweb/src/distrib/miniroot/install.sub.diff?r1=1.653&r2=1.654&f=h'>
a script will download more at first boot</a>, without informing the user."

index_p3="While there may be some good reasons for including this firmware, with a
default installation you might end up running some of these non-free blobs without even
knowing it."

index_p4="LibertyBSD is a 'deblobbed' version of OpenBSD. The non-free blobs in OpenBSD
have been purged from LibertyBSD, so you can enjoy the benefits of OpenBSD without
sacrificing your freedom."




# DOWNLOADS
##################

download_downloads="Downloads"
download_host="Host"
download_type="Type"
download_location="Location"
download_protocols="Protocols"
download_current_mirrors="Current Mirrors"
download_old_mirrors="Old Mirrors"
download_last_version="Last Version"
download_full="Full"
download_install_only="Install-only"


location_chiba_japan="Chiba, Japan"
location_usa="USA"
location_texas_usa="Texas, USA"
