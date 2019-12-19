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

# Remove pesky .DS_Store files from a given directory
rds() { find "$@" -name '*.DS_Store' -type f -delete }

# Init node.js package boilerplate
node-project() {
  git init
  npm init yo generator-nm
  npx license $(npm get init.license) -o "$(npm get init.author.name)" > LICENSE
  npx gitignore node
  npx covgen "$(npm get init.author.email)"
  npx readme-md-generator
  npx eslint-prettier-init
  npm init -y
  git add -A
  git commit -m "Initial commit"
}

#   ---------------------------------------
#   2.  GIT
#   ---------------------------------------

gs() {
    git fetch -p;
    git status;
    git branch -av;
}
