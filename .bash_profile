## .bash_profile template - Feb 11, 2018

# Git Branch Parsing Function
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Shell Prompt Template
# <username> <directory_name> (<git branch>) $
# e.g.: osamasidat oosidat.github.io (master) $
export PS1="\u \[\033[32m\]\W\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

