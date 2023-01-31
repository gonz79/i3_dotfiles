
alias ls='exa --icons --color-scale'
alias ll='ls -lagh --group-directories-first'
alias l='ls -lagh --group-directories-first'

alias py="python"
alias ..="cd .."
alias ...="cd ../.."
alias got="gotop -c nord -s"
alias fm6="fm6000 -r -c random"
#alias ping="grc ping"
#alias du="grc du -hd 1"
alias shun="shutdown now"

## Functions ##
ex() {
  if [[ -f $1 ]] ; then
    case $1 in
        *.tar.bz2)  tar xjf    $1  ;;
        *.tar.gz)   tar xzf    $1  ;;
        *.bz2)      bunzip2    $1  ;;
        *.rar)      rar x      $1  ;;
        *.gz)       gunzip     $1  ;;
        *.tar)      tar xf     $1  ;;
        *.tbz2)     tar xjf    $1  ;;
        *.tgz)      tar xzf    $1  ;;
        *.zip)      unzip      $1  ;;
        *.Z)        uncompress $1  ;;
        *.7z)       7z x       $1  ;;
        *)          echo "${bold_red}\"$1\" cannot be extracted via extract().${end}" ;;
    esac
  else
    echo -e "${bold_red}\"$1\" is not a valid file.${end}"
  fi
}
