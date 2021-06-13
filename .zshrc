# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.scripts:$HOME/.local/bin:$PATH

PROMPT="%{$fg[red]%} »  %{$reset_color%}"
# RPROMPT="%B%{$fg[black]%}%~%{$reset_color%}"

# Path to your oh-my-zsh installation.
export ZSH="/home/localhost/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Extra many types of compressed packages
# Credit: http://nparikh.org/notes/zshrc.txt
function extract() {
    if [ -f "$1" ] ; then
        case "$1" in
            *.tar.bz2)   tar xvjf "$1"                    ;;
            *.tar.gz)    tar xvzf "$1"                    ;;
            *.bz2)       bunzip2 "$1"                     ;;
            *.rar)       unrar x "$1"                     ;;
            *.gz)        gunzip "$1"                      ;;
            *.tar)       tar xvf "$1"                     ;;
            *.tbz2)      tar xvjf "$1"                    ;;
            *.tgz)       tar xvzf "$1"                    ;;
            *.zip)       unzip "$1"                       ;;
            *.ZIP)       unzip "$1"                       ;;
            *.pax)       cat "$1" | pax -r                ;;
            *.pax.Z)     uncompress "$1" —stdout | pax -r ;;
            *.Z)         uncompress "$1"                  ;;
            *.7z)        7z x "$1"                        ;;
            *)           echo "don't know how to extract '$1'..." ;;
        esac
    else
        echo "extract: error: $1 is not valid"
    fi
}

conf() {
	case $1 in
		bspwm)		vim ~/.config/bspwm/bspwmrc ;;
		sxhkd)		vim ~/.config/sxhkd/sxhkdrc ;;
		polybar)	vim ~/.config/polybar/config ;;
		picom)		vim ~/.config/picom/picom.conf ;;
		conky)		vim ~/conky.conf ;;
		mpd)		vim ~/.mpd/mpd.conf ;;
		ncmpcpp)	vim ~/.ncmpcpp/config ;;
		ranger)		vim ~/.config/ranger/rc.conf ;;
		tmux)		vim ~/.tmux.conf ;;
		vim)		vim ~/.vimrc ;;
		profile)	vim ~/.profile && source ~/.profile ;;
		xresources)	vim ~/.Xresources && xrdb ~/.Xresources ;;
		gtk3)		vim ~/.config/gtk-3.0/settings.ini ;;
		bash)		vim ~/.bashrc && source ~/.bashrc ;;
		hosts)		sudoedit /etc/hosts ;;
		*)			echo "Unknown application: $1" ;;
	esac
}

# Shortcuts
alias rmi='rm -i'
alias hg='history | grep '
alias lg='ls | grep '
alias ch='chmod 755 '
alias ~='urxvtc' #Open new terminals in current working directory
alias ~~='urxvtc && urxvtc'
alias ..='cd ..'
alias ...='cd ../..'
alias ll='ls -alF'
alias vi='vim'
alias xup='xrdb ~/.Xresources'

#alias mkdir and cd
function mkdircd () { mkdir -p "$@" && eval cd "\"\$$#\""; }
function cdl () { cd "$@" && ls; }

# enable color support of ls
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
