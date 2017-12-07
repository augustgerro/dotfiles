#   -----------------------------
#   1.  MAKE TERMINAL BETTER
#   -----------------------------

cd() { builtin cd "$@"; ll; }               # Always list directory contents upon 'cd'
mcd () { mkdir -p "$1" && cd "$1"; }        # mcd:          Makes new Dir and jumps inside
trash () { command mv "$@" ~/.Trash ; }     # trash:        Moves a file to the MacOS trash
ql () { qlmanage -p "$*" >& /dev/null; }    # ql:           Opens any file in MacOS Quicklook Preview

#   ---------------------------------------
#   2.  WEB DEVELOPMENT
#   ---------------------------------------

httpHeaders () { /usr/bin/curl -I -L $@ ; }             # httpHeaders:      Grabs headers from web page

#   httpDebug:  Download a web page and show info on what took time
#   -------------------------------------------------------------------
httpDebug () { /usr/bin/curl $@ -o /dev/null -w "dns: %{time_namelookup} connect: %{time_connect} pretransfer: %{time_pretransfer} starttransfer: %{time_starttransfer} total: %{time_total}\n" ; }


# Remove pesky .DS_Store files from a given directory
rds() { find "$@" -name '*.DS_Store' -type f -delete }

#   ---------------------------------------
#   2.  GIT
#   ---------------------------------------

gs() {
    git fetch -p;
    git status;
    git branch -av;
}