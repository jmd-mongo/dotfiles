function cr {
    /Users/joseph.dougherty/codereview/cr "$@"
}

function reset-file-to-master {
    git checkout origin/master "$@"
}

function delete-remote-branch {
    git push origin --delete "$@"
}

function affected-files {
  term="$1"
  files=$(grep -irl "$term" $DOCSROOT)
  count=$(grep -ir "$term" $DOCSROOT | wc -l)
  echo "$files"
  echo "Total Occurrences:" "$count"
}

alias ll='ls -al'

alias branch='git branch --show-current'

# Backporting aliases
alias bp5.0='git checkout -b $(branch)-v5.0-backport upstream/v5.0'
alias bp4.4='git checkout -b $(branch)-v4.4-backport upstream/v4.4'
alias bp4.2='git checkout -b $(branch)-v4.2-backport upstream/v4.2'
alias bp4.0='git checkout -b $(branch)-v4.0-backport upstream/v4.0'

# Workflow aliases
alias add-commit='git add . && git commit --amend --no-edit '
alias stage='git push origin -f $( branch ) ; '

HOMEBIN=/Users/joseph.dougherty/bin

# vale configuration
VALEBIN=/Users/joseph.dougherty/repos/mongodb-vale/bin
VALEINI=/Users/joseph.dougherty/repos/mongodb-vale/.vale.ini
alias vale='vale --config $VALEINI'

# FINAL PATH
export PATH=$HOMEBIN:$VALEBIN:$PATH
export HISTTIMEFORMAT="%d/%m/%y %T "
