# ALIASES

alias gof="cd /Users/dle/Documents/Flutter"

# FUNCTIONS

push() {
if [ $# -eq 0 ];
then
  echo "No arguments supplied. Example : push \"initial commit\"  [remote : origin and froggit by default]";
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
      branch="master";
    else
      branch=$2
    fi
      echo "\ngit push origin $branch;\n";
      git push origin $branch;
      echo "\ngit push froggit $branch;\n";
      git push froggit $branch;
      echo "\ngit push numberly $branch;\n";
      git push numberly $branch;
  fi
fi
}


# PATH

export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH="$PATH:/Applications/Sublime Text.app/Contents/SharedSupport/bin"
export PATH="$PATH:/Users/dle/Documents/Flutter/Software/flutter/bin"

# DEFAULT ZSHRC STUFF

...