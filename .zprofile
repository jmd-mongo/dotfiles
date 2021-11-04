
alias ll='ls -al'
alias less='less -SR' # -S turns on horizontal scroll. -R enables color support.

#=====================================================================#
# Start Workflow Functions and Aliases                                #
#=====================================================================#

DOCSROOT=/Users/joseph.dougherty/mongosource/docs/source

function cr {
    if [[ $1 == "" ]]; then
        read -rp "Are you sure you want to create a new CR item? Y/n " yn
    
        if [[ $yn == "y" || $yn == "Y" ]]; then
            /Users/joseph.dougherty/codereview/cr 
        fi

        return
    else
        /Users/joseph.dougherty/codereview/cr "$@"
    fi
}

function occurrences {
    while (( "$#" )); do
        term="$1"
        count=$(grep -ir "$term" $DOCSROOT | wc -l)
        echo "$term": "$count"
    shift
    done
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

alias branch='git branch --show-current'

# Backporting aliases
alias bp5.0='git checkout -b $( branch )-v5.0-backport upstream/v5.0'
alias bp4.4='git checkout -b $( branch )-v4.4-backport upstream/v4.4'
alias bp4.2='git checkout -b $( branch )-v4.2-backport upstream/v4.2'
alias bp4.0='git checkout -b $( branch )-v4.0-backport upstream/v4.0'

# Workflow aliases
alias add-commit='git add . && git commit --amend --no-edit '
alias stage='git push origin -f $( branch ) ; '

# vale configuration
VALEBIN=/Users/joseph.dougherty/repos/mongodb-vale/bin
VALEINI=/Users/joseph.dougherty/repos/mongodb-vale/.vale.ini
alias vale='vale --config $VALEINI'

#=====================================================================#
# End Workflow Functions and Aliases                                  #
#=====================================================================#

#=====================================================================#
# PATH                                                                #
#=====================================================================#

HOMEBIN=/Users/joseph.dougherty/bin
export PATH=$HOMEBIN:$VALEBIN:$PATH
export HISTTIMEFORMAT="%d/%m/%y %T "

