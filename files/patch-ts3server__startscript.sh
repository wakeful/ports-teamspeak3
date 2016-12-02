--- ts3server_startscript.sh.orig	2016-12-02 18:39:25 UTC
+++ ts3server_startscript.sh
@@ -4,7 +4,7 @@
 
 COMMANDLINE_PARAMETERS="${2}" #add any command line parameters you want to pass here
 D1=$(readlink -f "$0")
-BINARYPATH="$(dirname "${D1}")"
+BINARYPATH="/usr/local/teamspeak3/"
 cd "${BINARYPATH}"
 LIBRARYPATH="$(pwd)"
 BINARYNAME="ts3server"
