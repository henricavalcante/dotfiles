#Path
export PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="/Applications/android-sdk-macosx/tools:$PATH"
export PATH="/Applications/android-sdk-macosx/build-tools:$PATH"
export PATH="/Applications/android-sdk-macosx/platform-tools:$PATH"
export GHC_DOT_APP="/Applications/ghc-7.8.4.app"
if [ -d "$GHC_DOT_APP" ]; then
    export PATH="${HOME}/.cabal/bin:${GHC_DOT_APP}/Contents/bin:${PATH}"
fi

#Some vars
export GREP_OPTIONS="--color=auto"
export GREP_COLOR="4;33"
export CLICOLOR="auto"
export ANDROID_HOME="/Applications/android-sdk-macosx"

#Aliases
alias ls="ls -Ga"
alias ll="ls -la"
alias restartcamera='sudo killall AppleCameraAssistant;sudo killall VDCAssistant'

#PS1
function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
GREY="\[\033[1;30m\]"
NO_COLOUR="\[\033[39m\]"
PS1="$GREEN\n[$RED\$(date +%H:%M:%S)$GREEN] $YELLOW\u@machine$NO_COLOUR:\w$YELLOW\$(parse_git_branch)\n$GREEN\$ $NO_COLOUR"

#Ubuntu pastebin
alias pastebinubuntu="pastebinit -a henricavalcante -b http://paste.ubuntu.com"

export TERM="xterm-256color"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

source ~/.bashrc
