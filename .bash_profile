if [ "$PS1" != "" ]; then
  for f in ~/.bash/plugins/*; do
    echo -n "."
    source $f
  done
  UNAME="`uname -o 2>/dev/null || uname -s`"
  [ -f ~/.bash/os/$UNAME ] && source ~/.bash/os/$UNAME
  echo
  
  shopt -s histappend
fi

