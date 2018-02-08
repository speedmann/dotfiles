source /usr/local/share/antigen/antigen.zsh
antigen use oh-my-zsh

# plugins from default library (oh-my-zsh)
plugins=(git fasd z tmux tmuxinator)
for plugin in $plugins
do
  antigen bundle $plugin
done

export LC_ALL="en_US.utf8"

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

export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK="${HOME}/.gnupg/S.gpg-agent.ssh"
gpgconf --launch gpg-agent
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
