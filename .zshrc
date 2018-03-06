# Path to your oh-my-zsh configuration.
source /usr/share/zsh/share/antigen.zsh

antigen use oh-my-zsh
antigen bundle git
antigen bundle ruby
antigen bundle gem
antigen bundle rails
antigen bundle python
antigen bundle rake
antigen bundle rvm
antigen bundle svn
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle sudo
antigen bundle git-extras

antigen theme https://github.com/denysdovhan/spaceship-prompt spaceship

antigen apply

for sd_cmd in systemctl systemd-analyze systemd-run; do 
	alias $sd_cmd='DBUS_SESSION_BUS_ADDRESS="unix:path=$XDG_RUNTIME_DIR/bus" '$sd_cmd 
done


eval $(keychain --eval --quiet id_ed25519)

unset GREP_OPTIONS
alias grep="grep --color=auto"
alias sudo="sudo -E"
alias hgpu="hg pull; hg update"
alias config='/usr/bin/git --git-dir=$HOME/.cfg --work-tree=$HOME'

function chpwd() {
  ls
}

export EDITOR='vim'

export MAKEFLAGS="-j16"

# Customize to your needs...
export PATH="/usr/local/bin:/home/mtindal/bin:/usr/local/narwhal/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:$PATH"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
