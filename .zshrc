# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

#BAT_CHARGE="~/bin/batcharge.py"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="shadowphoenix"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

for sd_cmd in systemctl systemd-analyze systemd-run; do 
	alias $sd_cmd='DBUS_SESSION_BUS_ADDRESS="unix:path=$XDG_RUNTIME_DIR/bus" '$sd_cmd 
done


eval $(keychain --eval --quiet id_ed25519)

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(rails ruby git gem python rails3 rake rvm svn zsh-syntax-highlighting zsh-history-substring-search zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

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
