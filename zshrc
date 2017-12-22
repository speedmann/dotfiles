source /usr/local/share/antigen/antigen.zsh
antigen use oh-my-zsh

# plugins from default library (oh-my-zsh)
plugins=(git fasd vi-mode z tmux tmuxinator)
for plugin in $plugins
do
  antigen bundle $plugin
done

LANGUAGE="en_US:en"
LC_ALL="en_US"
LC_CTYPE="UTF-8"
LANG="en_US.UTF-8"

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle changyuheng/fz

#antigen theme risto # simple nice default
#antigen theme frisk
#antigen theme bira
#antigen theme jtriley
antigen theme ys
antigen apply

export EDITOR=vim
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f ~/.aliases ] && source ~/.aliases
ZSH_TMUX_AUTOSTART='true'

