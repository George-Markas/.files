# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install

PROMPT="%F{203}[%f%F{222}%n%f%F{157}@%f%F{153}%m%f %F{175}%~%f%F{203}]%f%F{251}$%f "
alias ls='ls -a --color=auto'
alias grep='grep --color=auto'

# Plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh
