# ALIASES

alias gof="cd /Users/dle/Documents/Flutter"

# FUNCTIONS

if [ $# -eq 0 ];
then
  echo "No arguments supplied. You should use push \"initial commit\"  [origin by default, else origin-froggit for both]";
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
      echo "\ngit push origin master;\n";
      git push origin master;
      echo "\ngit push froggit master;\n";
      git push froggit master;
    else
      if [ "$2" = "origin" ];
      then
       echo "\ngit push origin master;\n";
       git push origin master;
      fi
    fi
  fi
fi
}

# PATH

export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH="$PATH:/Applications/Sublime Text.app/Contents/SharedSupport/bin"
export PATH="$PATH:/Users/dle/Documents/Flutter/Software/flutter/bin"

# DEFAULT ZSHRC STUFF

...