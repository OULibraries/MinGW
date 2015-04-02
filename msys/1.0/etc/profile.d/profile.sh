#!/bin/sh
## Added python3.4 and git bash. --Jason Sherman
if [ $MSYSTEM == MINGW32 ]; then
  export PATH=".:/usr/local/bin:/mingw/bin:/bin:/c/Program Files (x86)/Git/bin:/C/Python34:$PATH"
else
  export PATH=".:/usr/local/bin:/bin:/mingw/bin:/c/Program Files (x86)/Git/bin:/C/Python34:$PATH"
fi

## Change the default behaviour so that we keep our windows home directory. --Jason Sherman
if [ ! -d "$HOME" ]; then
  mkdir -p $HOME
  mount "C:/Users/$LOGNAME/" /home/$LOGNAME
fi

if ! mount | grep "$HOME" ; then
  mount "C:/Users/$LOGNAME/" /home/$LOGNAME
  echo "mounting C:/Users/$LOGNAME/ to /home/$LOGNAME"
fi


## Stick more default stuff in the profile. --Jason Sherman
if [ ! -f "$HOME/.minttyrc" ]; then
  cp /etc/profile.d/minttyrc.default $HOME/.minttyrc
  echo "Mintty configured. Please restart terminal."
fi

## Make windows python work interactively from the shell, if we have some python.
alias py='py -i'
