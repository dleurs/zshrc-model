# ALIASES

alias gof="cd /Users/dle/Documents/Flutter"
alias goh="cd /Users/dle/Documents/haskell"
alias rm="echo 'FAILURE : better user rmtrash, or /bin/rm'"
alias k="kubectl"
alias d="docker"
alias sublzsh="subl ~/.zshrc"
#alias activate-rvm='source /Users/dle/.rvm/scripts/rvm;rvm use 2.7.0;'
#alias deactivate-rvm='rvm use system'
alias flutter='fvm flutter'
alias dart='fvm dart'
alias ddevtools='dart pub global run devtools'
alias helloworld='git fetch; git pull; git status;'

# FUNCTIONS


push() {
if [ $# -eq 0 ];
then
  echo "No arguments supplied. Example : push \"initial commit\" ";
else
  commitMessage=$1
  if [ "$commitMessage" = "" ]; 
  then
    echo "No commit message";
  else
    echo "\ngit add -A;\n";
    git add -A;
    echo "\ngit commit -m \"${commitMessage}\";\n";
    git commit -m $commitMessage;
    if [ $# -eq 1 ]; 
    then
      branch=$(git branch --show-current);
    else
      branch=$2
    fi
    for remote in $(git remote)
    do
      echo "\ngit push $remote $branch;\n";
      git push $remote $branch;
    done
  fi
fi
}

apush() { # Amend push
if [ $# -eq 0 ];
then
  commitMessage=$(git log -1 --pretty=%s | cat)  
  echo "No arguments supplied. Using lastest \"${commitMessage}\"";
else
  commitMessage=$1
fi
if [ "$commitMessage" = "" ]; 
then
  echo "No commit message";
else
  echo "\ngit add -A;\n";
  git add -A;
  echo "\ngit commit --amend -m \"${commitMessage}\";\n";
  git commit --amend -m $commitMessage;
  branch=$(git branch --show-current);
  for remote in $(git remote)
  do
    echo "\ngit push $remote $branch --force;\n";
    git push $remote $branch --force;
  done
fi
}


# PATH

# code for Visual Studio Code
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
# subl for Sublime Text
export PATH="$PATH:/Applications/Sublime Text.app/Contents/SharedSupport/bin"
# export PATH="$PATH:/Users/dle/Documents/Flutter/Software/flutter/bin" not needed, using fvm instead

# KEYS

GITHUB_ACCESS_TOKEN="" 

# DEFAULT ZSHRC STUFF

...
