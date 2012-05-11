if [ "$PS1" != "" ]; then
  UNAME="`uname -o 2>/dev/null || uname -s`"
  for f in ~/.bash/plugins/*; do
    echo -n "."
    source $f
  done
  [ -f "~/.bash/os/$UNAME" ] && source "~/.bash/os/$UNAME"
  echo 
  
  shopt -s histappend
fi
